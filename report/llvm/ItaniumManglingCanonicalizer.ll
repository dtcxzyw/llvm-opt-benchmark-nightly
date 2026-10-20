Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ItaniumManglingCanonicalizer?download=true
inline.NumInlined: 5264
inline.NumDeleted: 1583
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_8NameTypeEJRA26_KcEEEPNS0_4NodeEDpOT0_:bb.a
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle8NameTypeEJRA26_KcEEESt4pairIPNS3_4NodeEbEbDpOT0_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %.sroa.013.0.i.i.i.i, ptr %i.ae, align 8, !tbaa !94
  br label %_ZN12_GLOBAL__N_122CanonicalizerAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJRA26_KcEEEPNS3_4NodeEDpOT0_.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle8NameTypeEJRA26_KcEEESt4pairIPNS3_4NodeEbEbDpOT0_.exit.i.i.i
  %.not.i.i.i = icmp eq ptr %.sroa.013.0.i.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_122CanonicalizerAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJRA26_KcEEEPNS3_4NodeEDpOT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ag = load i32, ptr %i.af, align 8, !noalias !572
  %i.ah = and i32 %i.ag, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0      ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !572
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !572
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.an = load i32, ptr %i.am, align 8, !noalias !572
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.aj, ptr %i.ai
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.al, ptr %i.ao ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.an, i32 32 ; 2 uses
  %i.ap = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add i32 %.sink.i.i.i.i.i.i.i, -1        ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.013.0.i.i.i.i to i64
  %i.as = mul i64 %i.ar, -4658895280553007687     ; 2 uses
  %i.at = lshr i64 %i.as, 31
  %i.au = xor i64 %i.at, %i.as
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.aq, %i.av                    ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !72
  %i.bb = and i32 %i.aw, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i, !prof !114

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.l
  %i.be = phi i64 [ %i.bk, %bb.l ], [ %i.ax, %bb.k ]
  %.017.i.i.i.i.i = phi i32 [ %i.bj, %bb.l ], [ %i.aw, %bb.k ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bh = icmp eq ptr %.sroa.013.0.i.i.i.i, %i.bg
  br i1 %i.bh, label %bb.m, label %bb.l, !prof !99

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bi = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bj = and i32 %i.bi, %i.aq                    ; 3 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 5
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !72
  %i.bo = and i32 %i.bj, 31
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i, !prof !115

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i: ; preds = %bb.l, %bb.m, %bb.k, %bb.j
  %i.bt = phi ptr [ %i.bs, %bb.m ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bt, null
  %spec.select.i.i.i = select i1 %.not9.i.i.i, ptr %.sroa.013.0.i.i.i.i, ptr %i.bt ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !88
  %i.bw = icmp eq ptr %spec.select.i.i.i, %i.bv
  br i1 %i.bw, label %bb.n, label %_ZN12_GLOBAL__N_122CanonicalizerAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJRA26_KcEEEPNS3_4NodeEDpOT0_.exit

bb.n:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 1, ptr %i.bx, align 8, !tbaa !89
  br label %_ZN12_GLOBAL__N_122CanonicalizerAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJRA26_KcEEEPNS3_4NodeEDpOT0_.exit

_ZN12_GLOBAL__N_122CanonicalizerAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJRA26_KcEEEPNS3_4NodeEDpOT0_.exit: ; preds = %bb.h, %bb.i, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i, %bb.n
  %.sroa.02.1.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.n ], [ %spec.select.i.i.i, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i ], [ null, %bb.i ]
  ret ptr %.sroa.02.1.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 20 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %5 = alloca %"class.llvm::itanium_demangle::NodeArray", align 8 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.h = load ptr, ptr %0, align 8, !tbaa !92     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93   ; 10 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ult i64 %i.m, 2
  br i1 %i.n, label %.critedge83, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.o = load i16, ptr %i.h, align 1
  %i.p = icmp ne i16 %i.o, 29543
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0                      ; 3 uses
  br i1 %i.r, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread621

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread621: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  store i8 0, ptr %i.d, align 1, !tbaa !118
  br label %.preheader.i

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !92
  %.pre493.a = ptrtoint ptr %i.s to i64
  %.pre494 = sub i64 %i.k, %.pre493.a             ; 2 uses
  store i8 1, ptr %i.d, align 1, !tbaa !118
  %i.t = icmp ult i64 %.pre494, 2
  br i1 %i.t, label %.critedge83, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread621, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.u = phi i8 [ 0, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread621 ], [ 1, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.v = phi ptr [ %i.h, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread621 ], [ %i.s, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 33 uses
  %.pre-phi495625 = phi i64 [ %i.m, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread621 ], [ %.pre494, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.w = load i8, ptr %i.v, align 1, !tbaa !80    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread24.i, %.preheader.i
  %.031.i = phi i64 [ 62, %.preheader.i ], [ %i.aj, %.thread24.i ] ; 3 uses
  %.01030.i = phi i64 [ 0, %.preheader.i ], [ %i.ai, %.thread24.i ] ; 3 uses
  %i.y = add i64 %.01030.i, %.031.i
  %i.z = lshr i64 %i.y, 1                         ; 5 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E3OpsE, i64 %i.z ; 2 uses
  %.val15.i = load i8, ptr %i.aa, align 16, !tbaa !80 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 1
  %.val16.i = load i8, ptr %i.ab, align 1
  %i.ac = icmp slt i8 %.val15.i, %i.w
  br i1 %i.ac, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ad = add nuw nsw i64 %i.z, 1
  br label %.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp eq i8 %.val15.i, %i.w
  br i1 %i.ae, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i, label %.thread24.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i: ; preds = %bb.c
  %i.af = load i8, ptr %i.x, align 1, !tbaa !80
  %i.ag = icmp slt i8 %.val16.i, %i.af
  %cond.fr19.i = freeze i1 %i.ag                  ; 2 uses
  %i.ah = add nuw nsw i64 %i.z, 1
  %spec.select.i = select i1 %cond.fr19.i, i64 %i.ah, i64 %.01030.i
  %spec.select29.i = select i1 %cond.fr19.i, i64 %.031.i, i64 %i.z
  br label %.thread24.i

.thread24.i:                                      ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i, %bb.c, %.thread.i
  %i.ai = phi i64 [ %.01030.i, %bb.c ], [ %spec.select.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i ], [ %i.ad, %.thread.i ] ; 4 uses
  %i.aj = phi i64 [ %i.z, %bb.c ], [ %spec.select29.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i ], [ %.031.i, %.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.aj, %i.ai
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !4

bb.d:                                             ; preds = %.thread24.i
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E3OpsE, i64 %i.ai ; 17 uses
  %.val17.i = load i8, ptr %i.ak, align 16, !tbaa !80
  %i.al = icmp eq i8 %.val17.i, %i.w
  br i1 %i.al, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoneEPKc.exit.i, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoneEPKc.exit.i: ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.ak, i64 1
  %.val18.i = load i8, ptr %i.am, align 1
  %i.an = load i8, ptr %i.x, align 1, !tbaa !80
  %.not28.i = icmp eq i8 %.val18.i, %i.an
  br i1 %.not28.i, label %bb.e, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoneEPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 4 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ap = getelementptr i8, ptr %i.ak, i64 2
  %.val113 = load i8, ptr %i.ap, align 2, !tbaa !595
  %i.aq = getelementptr i8, ptr %i.ak, i64 8
  %.val114 = load ptr, ptr %i.aq, align 8, !tbaa !342 ; 4 uses
  %i.ar = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val114) #20 ; 3 uses
  %i.as = and i64 %i.ai, 1152921504606846975
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, 414331165718019679
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.val114, i64 8 ; 3 uses
  %i.aw = add i64 %i.ar, -8                       ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %bb.f
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !80
  %i.az = icmp eq i8 %i.ay, 32
  br i1 %i.az, label %bb.g, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit

bb.g:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val114, i64 9
  %i.bb = add i64 %i.ar, -9
  br label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit: ; preds = %bb.e, %bb.f, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %bb.g
  %.sroa.7.0.i = phi ptr [ %i.ba, %bb.g ], [ %i.av, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %.val114, %bb.e ], [ %i.av, %bb.f ] ; 6 uses
  %.sroa.0.0.i = phi i64 [ %i.bb, %bb.g ], [ %i.aw, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %i.ar, %bb.e ], [ 0, %bb.f ] ; 6 uses
  store i64 %.sroa.0.0.i, ptr %4, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.7.0.i, ptr %i.bc, align 8
  switch i8 %.val113, label %bb.em [
    i8 2, label %bb.h
    i8 0, label %bb.k
    i8 1, label %bb.m
    i8 3, label %bb.s
    i8 4, label %bb.v
    i8 5, label %bb.y
    i8 6, label %bb.bf
    i8 7, label %bb.bu
    i8 8, label %bb.ck
    i8 9, label %bb.dn
    i8 11, label %bb.dr
    i8 12, label %bb.du
    i8 10, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit
  ]

bb.h:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.bd = getelementptr i8, ptr %i.ak, i64 3
  %.val128 = load i8, ptr %i.bd, align 1
  %i.be = lshr i8 %.val128, 1
  %i.bf = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0), !inline_history !573 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0), !inline_history !573 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_10BinaryExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEESB_RNS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %i.bf, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.bh, i8 %i.be), !inline_history !573
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.k:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.bk = getelementptr i8, ptr %i.ak, i64 3
  %.val127 = load i8, ptr %i.bk, align 1
  %i.bl = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0), !inline_history !574 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = lshr i8 %.val127, 1
  %i.bo = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSE_4PrecEEEESF_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.bl, i8 %i.bn), !inline_history !574
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.m:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %.not.i197 = icmp eq ptr %i.ao, %i.j
  br i1 %.not.i197, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.bq = icmp eq i8 %i.bp, 95
  br i1 %i.bq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  store ptr %i.br, ptr %0, align 8, !tbaa !92
  %i.bs = getelementptr i8, ptr %i.ak, i64 3
  %.val126 = load i8, ptr %i.bs, align 1
  %i.bt = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0), !inline_history !574 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = lshr i8 %.val126, 1
  %i.bw = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSE_4PrecEEEESF_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.bt, i8 %i.bv), !inline_history !574
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.bx = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr i8, ptr %i.ak, i64 3
  %.val125 = load i8, ptr %i.bz, align 1
  %i.ca = lshr i8 %.val125, 1
  %i.cb = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_11PostfixExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEENS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 %i.ca)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.s:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.cc = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr i8, ptr %i.ak, i64 3
  %.val124 = load i8, ptr %i.cg, align 1
  %i.ch = lshr i8 %.val124, 1
  %i.ci = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_18ArraySubscriptExprEJRPNS0_4NodeESB_NS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %i.cc, ptr nonnull %i.ce, i8 %i.ch)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.v:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.cj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr i8, ptr %i.ak, i64 3
  %.val123 = load i8, ptr %i.cn, align 1
  %i.co = lshr i8 %.val123, 1
  %i.cp = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_10MemberExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEESB_NS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.cl, i8 %i.co)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.y:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25 ; 2 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !24
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit, %bb.y
  %i.cz = phi ptr [ %i.ea, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.cs, %bb.y ]
  %i.da = phi ptr [ %.pre490, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.j, %bb.y ]
  %i.db = phi ptr [ %.pre489.a, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.ao, %bb.y ] ; 3 uses
  %.not.i205 = icmp eq ptr %i.db, %i.da
  br i1 %.not.i205, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !80
  %i.dd = icmp eq i8 %i.dc, 95
  br i1 %i.dd, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.de = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %.not77 = icmp eq ptr %i.de, null
  br i1 %.not77, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %i.cr, align 8, !tbaa !25 ; 3 uses
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %bb.ad, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !24 ; 5 uses
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 6 uses
  %i.dm = ashr exact i64 %i.dl, 2
  %i.dn = icmp eq ptr %i.di, %i.cy
  %i.do = shl i64 %i.dl, 1                        ; 2 uses
  br i1 %i.dn, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #22 ; 5 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @abort() #23
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dr = icmp sgt i64 %i.dl, 8
  br i1 %i.dr, label %bb.ah, label %bb.ai, !prof !99

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.di, i64 %i.dl, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv:bb.a
_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit: ; preds = %bb.ac, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i
  %i.dz = phi ptr [ %i.dx, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i ], [ %i.df, %bb.ac ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  store ptr %i.ea, ptr %i.cr, align 8, !tbaa !25
  store ptr %i.de, ptr %i.dz, align 8, !tbaa !28
  %.pre489.a = load ptr, ptr %0, align 8, !tbaa !92
  %.pre490 = load ptr, ptr %i.i, align 8, !tbaa !93
  br label %bb.z, !llvm.loop !575

bb.am:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.eb, ptr %0, align 8, !tbaa !92
  %i.ec = load ptr, ptr %i.cq, align 8, !tbaa !24
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.cw ; 3 uses
  %i.ee = ptrtoint ptr %i.cz to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97 ; 2 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = add i64 %i.eg, %i.ej                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.em = load i64, ptr %i.el, align 8, !tbaa !98
  %i.en = icmp ult i64 %i.ek, %i.em
  br i1 %i.en, label %bb.an, label %bb.ao, !prof !99

bb.an:                                            ; preds = %bb.am
  %i.eo = inttoptr i64 %i.ek to ptr
  store ptr %i.eo, ptr %i.eh, align 8, !tbaa !97
  br label %_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ep = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(96) %i.eh, i64 noundef %i.eg, i64 noundef %i.eg, i8 3)
  br label %_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i

_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i = phi ptr [ %i.ei, %bb.an ], [ %i.ep, %bb.ao ] ; 3 uses
  %i.eq = icmp sgt i64 %i.eg, 8
  br i1 %i.eq, label %bb.ap, label %bb.aq, !prof !99

bb.ap:                                            ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i.i.i.i.i, ptr align 8 %i.ed, i64 %i.eg, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i
  %i.er = icmp eq i64 %i.eg, 8
  br i1 %i.er, label %bb.ar, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit

bb.ar:                                            ; preds = %bb.aq
  %i.es = load ptr, ptr %i.ed, align 8, !tbaa !28
  store ptr %i.es, ptr %.0.i.i.i.i.i, align 8, !tbaa !28
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit: ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.et = ashr exact i64 %i.eg, 3
  %i.eu = load ptr, ptr %i.cq, align 8, !tbaa !24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.cw
  store ptr %i.ev, ptr %i.cr, align 8, !tbaa !25
  %i.ew = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit
  %i.ey = load ptr, ptr %0, align 8, !tbaa !92    ; 6 uses
  %i.ez = load ptr, ptr %i.i, align 8, !tbaa !93  ; 3 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = icmp ult i64 %i.fc, 2
  br i1 %i.fd, label %.split446, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fe = load i16, ptr %i.ey, align 1
  %i.ff = icmp ne i16 %i.fe, 26992
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit679, label %.split446

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit679: ; preds = %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 2 uses
  store ptr %i.fi, ptr %0, align 8, !tbaa !92
  %i.fj = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.fk = load ptr, ptr %i.cq, align 8, !tbaa !24
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  br label %.split446.us.a

.split446.us.a:                                   ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit679, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit213.us
  %i.fo = phi ptr [ %i.ez, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit679 ], [ %.pre827, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit213.us ]
  %i.fp = phi ptr [ %i.fi, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit679 ], [ %.pre826.a, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit213.us ] ; 3 uses
  %.not.i208.us = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i208.us, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.split446.us.a
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !80
  %i.fr = icmp eq i8 %i.fq, 69
  br i1 %i.fr, label %.split448.us, label %bb.av

bb.av:                                            ; preds = %bb.au, %.split446.us.a
  %i.fs = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %.not76.us = icmp eq ptr %i.fs, null
  br i1 %.not76.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ft = load ptr, ptr %i.cr, align 8, !tbaa !25 ; 3 uses
  %i.fu = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %bb.ax, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit213.us

bb.ax:                                            ; preds = %bb.aw
  %i.fw = load ptr, ptr %i.cq, align 8, !tbaa !24 ; 5 uses
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 6 uses
  %i.ga = ashr exact i64 %i.fz, 2
  %i.gb = icmp eq ptr %i.fw, %i.cy
  %i.gc = shl i64 %i.fz, 1                        ; 2 uses
  br i1 %i.gb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gd = tail call ptr @realloc(ptr noundef %i.fw, i64 noundef %i.gc) #24 ; 3 uses
  store ptr %i.gd, ptr %i.cq, align 8, !tbaa !24
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.split451.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i211.us

bb.az:                                            ; preds = %bb.ax
  %i.gf = tail call noalias ptr @malloc(i64 noundef %i.gc) #22 ; 5 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %.split453.us, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gh = icmp sgt i64 %i.fz, 8
  br i1 %i.gh, label %bb.bd, label %bb.bb, !prof !99

bb.bb:                                            ; preds = %bb.ba
  %i.gi = icmp eq i64 %i.fz, 8
  br i1 %i.gi, label %bb.bc, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i212.us

bb.bc:                                            ; preds = %bb.bb
  %i.gj = load ptr, ptr %i.fw, align 8, !tbaa !28
  store ptr %i.gj, ptr %i.gf, align 8, !tbaa !28
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i212.us

bb.bd:                                            ; preds = %bb.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gf, ptr align 8 %i.fw, i64 %i.fz, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i212.us

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i212.us: ; preds = %bb.bd, %bb.bc, %bb.bb
  store ptr %i.gf, ptr %i.cq, align 8, !tbaa !24
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i211.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i211.us: ; preds = %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i212.us, %bb.ay
  %i.gk = phi ptr [ %i.gd, %bb.ay ], [ %i.gf, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i212.us ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.fz
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.ga
  store ptr %i.gm, ptr %i.cx, align 8, !tbaa !26
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit213.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit213.us: ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i211.us, %bb.aw
  %i.gn = phi ptr [ %i.gl, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i211.us ], [ %i.ft, %bb.aw ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.go, ptr %i.cr, align 8, !tbaa !25
  store ptr %i.fs, ptr %i.gn, align 8, !tbaa !28
  %.pre826.a = load ptr, ptr %0, align 8, !tbaa !92
  %.pre827 = load ptr, ptr %i.i, align 8, !tbaa !93
  br label %.split446.us.a, !llvm.loop !576

.split446:                                        ; preds = %bb.as, %bb.at
  %.not.i208 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i208, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.be

bb.be:                                            ; preds = %.split446
  %i.gp = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = load ptr, ptr %i.cq, align 8, !tbaa !24
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gq, %i.gs
  %i.gu = load i8, ptr %i.ey, align 1, !tbaa !80
  %i.gv = icmp eq i8 %i.gu, 69
  br i1 %i.gv, label %.split448.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

.split453.us:                                     ; preds = %bb.az
  tail call void @abort() #23
  unreachable

.split451.us:                                     ; preds = %bb.ay
  tail call void @abort() #23
  unreachable

.split448.us:                                     ; preds = %bb.au, %bb.be
  %.in741 = phi i64 [ %i.gt, %bb.be ], [ %i.fn, %bb.au ]
  %.us-phi449 = phi ptr [ %i.ey, %bb.be ], [ %i.fp, %bb.au ]
  %i.gw = ashr exact i64 %.in741, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %.us-phi449, i64 1
  store ptr %i.gx, ptr %0, align 8, !tbaa !92
  %i.gy = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm(ptr noundef nonnull align 8 dereferenceable(1456) %0, i64 noundef %i.gw) ; 2 uses
  %i.gz = extractvalue { ptr, i64 } %i.gy, 0
  %i.ha = extractvalue { ptr, i64 } %i.gy, 1
  %i.hb = getelementptr i8, ptr %i.ak, i64 3
  %.val140 = load i8, ptr %i.hb, align 1          ; 2 uses
  %i.hc = and i8 %.val140, 1
  %i.hd = lshr i8 %.val140, 1
  %i.he = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_7NewExprEJRNS0_9NodeArrayERPNS0_4NodeESA_RbbNSB_4PrecEEEESC_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr %.0.i.i.i.i.i, i64 %i.et, ptr nonnull %i.ew, ptr %i.gz, i64 %i.ha, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i8 %i.hc, i8 %i.hd)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bf:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.hf = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 3 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hh = getelementptr i8, ptr %i.ak, i64 3
  %.val139 = load i8, ptr %i.hh, align 1          ; 3 uses
  %i.hi = trunc i8 %.val139 to i1
  %i.hj = and i8 %.val139, 1
  %i.hk = lshr i8 %.val139, 1                     ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 921
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !76, !range !90, !noundef !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ho, ptr %3, align 8, !tbaa !73
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.hp, align 8, !tbaa !74
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 32, ptr %i.hq, align 4, !tbaa !75
  call fastcc void @_ZN12_GLOBAL__N_111profileCtorIJPN4llvm16itanium_demangle4NodeEbbNS3_4PrecEEEEvRNS1_16FoldingSetNodeIDENS3_4KindEDpT_(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull %i.hf, i1 noundef zeroext %i.r, i1 noundef zeroext %i.hi, i8 noundef zeroext %i.hk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.hs = call noundef ptr @_ZN4llvm14FoldingSetBase19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN12_GLOBAL__N_120FoldingNodeAllocator10NodeHeaderEE17getFoldingSetInfoEvE4Info) #20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hs, null       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  br label %bb.bl

.critedge.i.i.i.i.i:                              ; preds = %bb.bg
  %i.hu = trunc nuw i8 %i.hn to i1
  br i1 %i.hu, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %.critedge.i.i.i.i.i
  %i.hv = load ptr, ptr %i.hl, align 8, !tbaa !97 ; 2 uses
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = add i64 %i.hw, 40                       ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !98
  %i.ia = icmp ult i64 %i.hx, %i.hz
  br i1 %i.ia, label %bb.bj, label %bb.bk, !prof !99

bb.bj:                                            ; preds = %bb.bi
  %i.ib = inttoptr i64 %i.hx to ptr
  store ptr %i.ib, ptr %i.hl, align 8, !tbaa !97
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.ic = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(648) %i.hl, i64 noundef 40, i64 noundef 40, i8 3)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.hv, %bb.bj ], [ %i.ic, %bb.bk ] ; 8 uses
  store ptr null, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !101
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  store i8 65, ptr %i.ie, align 8, !tbaa !106
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 17 ; 2 uses
  %i.ig = load i16, ptr %i.if, align 1
  %i.ih = and i16 %i.ig, -4096
  %i.ii = zext nneg i8 %i.hk to i16
  %i.ij = or disjoint i16 %i.ih, %i.ii
  %i.ik = or i16 %i.ij, 1344
  store i16 %i.ik, ptr %i.if, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10DeleteExprE, i64 16), ptr %i.id, align 8, !tbaa !108
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 24
  store ptr %i.hf, ptr %i.il, align 8, !tbaa !308
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 32
  store i8 %i.u, ptr %i.im, align 8, !tbaa !309
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 33
  store i8 %i.hj, ptr %i.in, align 1, !tbaa !310
  %i.io = load ptr, ptr %i.c, align 8, !tbaa !87
  call void @_ZN4llvm14FoldingSetBase10InsertNodeEPNS0_4NodeEPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull %.0.i.i.i.i.i.i.i, ptr noundef %i.io, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN12_GLOBAL__N_120FoldingNodeAllocator10NodeHeaderEE17getFoldingSetInfoEvE4Info) #20
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.bh
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.id, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i ], [ %i.ht, %bb.bh ], [ null, %.critedge.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.ip = load ptr, ptr %3, align 8, !tbaa !73    ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ho
  br i1 %i.iq, label %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle10DeleteExprEJRPNS3_4NodeERbbNS5_4PrecEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef %i.ip) #20
  br label %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle10DeleteExprEJRPNS3_4NodeERbbNS5_4PrecEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i

_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle10DeleteExprEJRPNS3_4NodeERbbNS5_4PrecEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i: ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.not.i.i.i.i.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle10DeleteExprEJRPNS3_4NodeERbbNS5_4PrecEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.ir, align 8, !tbaa !94
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bo:                                            ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle10DeleteExprEJRPNS3_4NodeERbbNS5_4PrecEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.it = load i32, ptr %i.is, align 8, !noalias !596
  %i.iu = and i32 %i.it, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.iu, 0    ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !596
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !596
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ja = load i32, ptr %i.iz, align 8, !noalias !596
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %.sink2.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.iw, ptr %i.iv
  %.sink1.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.iy, ptr %i.jb ; 2 uses
  %.sink.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 %i.ja, i32 32 ; 2 uses
  %i.jc = icmp eq i32 %.sink.i.i.i.i.i.i.i.i, 0
  br i1 %i.jc, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jd = add i32 %.sink.i.i.i.i.i.i.i.i, -1      ; 2 uses
  %i.je = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  %i.jf = mul i64 %i.je, -4658895280553007687     ; 2 uses
  %i.jg = lshr i64 %i.jf, 31
  %i.jh = xor i64 %i.jg, %i.jf
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = and i32 %i.jd, %i.ji                    ; 3 uses
  %i.jk = zext i32 %i.jj to i64                   ; 2 uses
  %i.jl = lshr i64 %i.jk, 5
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !72
  %i.jo = and i32 %i.jj, 31
  %i.jp = lshr i32 %i.jn, %i.jo
  %i.jq = trunc i32 %i.jp to i1
  br i1 %i.jq, label %.lr.ph.i.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i, !prof !114

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bq, %bb.br
  %i.jr = phi i64 [ %i.jx, %bb.br ], [ %i.jk, %bb.bq ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.jw, %bb.br ], [ %i.jj, %bb.bq ]
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i.i.i, i64 %i.jr ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !28
  %i.ju = icmp eq ptr %.sroa.0.0.i.i.i.i.i, %i.jt
  br i1 %i.ju, label %bb.bs, label %bb.br, !prof !99

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.jv = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.jw = and i32 %i.jv, %i.jd                    ; 3 uses
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = lshr i64 %i.jx, 5
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !72
  %i.kb = and i32 %i.jw, 31
  %i.kc = lshr i32 %i.ka, %i.kb
  %i.kd = trunc i32 %i.kc to i1
  br i1 %i.kd, label %.lr.ph.i.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i, !prof !115

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !28
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i: ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bp
  %i.kg = phi ptr [ %i.kf, %bb.bs ], [ null, %bb.bp ], [ null, %bb.bq ], [ null, %bb.br ] ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.kg, null
  %spec.select.i.i.i.i = select i1 %.not12.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i, ptr %i.kg ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !88
  %i.kj = icmp eq ptr %spec.select.i.i.i.i, %i.ki
  br i1 %i.kj, label %bb.bt, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bt:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 1, ptr %i.kk, align 8, !tbaa !89
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bu:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.kl = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !25
  %i.kq = load ptr, ptr %i.kn, align 8, !tbaa !24
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = ashr exact i64 %i.kt, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit219, %bb.bv
  %i.kx = load ptr, ptr %0, align 8, !tbaa !92    ; 3 uses
  %i.ky = load ptr, ptr %i.i, align 8, !tbaa !93
  %.not.i214 = icmp eq ptr %i.kx, %i.ky
  br i1 %.not.i214, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kz = load i8, ptr %i.kx, align 1, !tbaa !80
  %i.la = icmp eq i8 %i.kz, 69
  br i1 %i.la, label %bb.cj, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.lb = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %.not75 = icmp eq ptr %i.lb, null
  br i1 %.not75, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lc = load ptr, ptr %i.ko, align 8, !tbaa !25 ; 3 uses
  %i.ld = load ptr, ptr %i.kv, align 8, !tbaa !26
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %bb.ca, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit219

bb.ca:                                            ; preds = %bb.bz
  %i.lf = load ptr, ptr %i.kn, align 8, !tbaa !24 ; 5 uses
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 6 uses
  %i.lj = ashr exact i64 %i.li, 2
  %i.lk = icmp eq ptr %i.lf, %i.kw
  %i.ll = shl i64 %i.li, 1                        ; 2 uses
  br i1 %i.lk, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.lm = tail call noalias ptr @malloc(i64 noundef %i.ll) #22 ; 5 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  tail call void @abort() #23
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.lo = icmp sgt i64 %i.li, 8
  br i1 %i.lo, label %bb.ce, label %bb.cf, !prof !99

bb.ce:                                            ; preds = %bb.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lm, ptr align 8 %i.lf, i64 %i.li, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i218

bb.cf:                                            ; preds = %bb.cd
  %i.lp = icmp eq i64 %i.li, 8
  br i1 %i.lp, label %bb.cg, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i218

bb.cg:                                            ; preds = %bb.cf
  %i.lq = load ptr, ptr %i.lf, align 8, !tbaa !28
  store ptr %i.lq, ptr %i.lm, align 8, !tbaa !28
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i218

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i218: ; preds = %bb.cg, %bb.cf, %bb.ce
  store ptr %i.lm, ptr %i.kn, align 8, !tbaa !24
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i217

bb.ch:                                            ; preds = %bb.ca
  %i.lr = tail call ptr @realloc(ptr noundef %i.lf, i64 noundef %i.ll) #24 ; 3 uses
  store ptr %i.lr, ptr %i.kn, align 8, !tbaa !24
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.ci, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i217

bb.ci:                                            ; preds = %bb.ch
  tail call void @abort() #23
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i217: ; preds = %bb.ch, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i218
  %i.lt = phi ptr [ %i.lr, %bb.ch ], [ %i.lm, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i218 ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.li
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.lj
  store ptr %i.lv, ptr %i.kv, align 8, !tbaa !26
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit219

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit219: ; preds = %bb.bz, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i217
  %i.lw = phi ptr [ %i.lu, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i217 ], [ %i.lc, %bb.bz ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr %i.lx, ptr %i.ko, align 8, !tbaa !25
  store ptr %i.lb, ptr %i.lw, align 8, !tbaa !28
  br label %bb.bw, !llvm.loop !581

bb.cj:                                            ; preds = %bb.bx
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store ptr %i.ly, ptr %0, align 8, !tbaa !92
  %i.lz = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm(ptr noundef nonnull align 8 dereferenceable(1456) %0, i64 noundef %i.ku) ; 2 uses
  %i.ma = extractvalue { ptr, i64 } %i.lz, 0
  %i.mb = extractvalue { ptr, i64 } %i.lz, 1
  %i.mc = getelementptr i8, ptr %i.ak, i64 3
  %.val138 = load i8, ptr %i.mc, align 1          ; 2 uses
  %i.md = and i8 %.val138, 1
  %i.me = lshr i8 %.val138, 1
  %i.mf = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_8CallExprEJRPNS0_4NodeENS0_9NodeArrayEbNS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %i.kl, ptr %i.ma, i64 %i.mb, i8 %i.md, i8 %i.me)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.ck:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !118, !range !90, !noundef !91
  store i8 0, ptr %i.mg, align 8, !tbaa !118
  %i.mi = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  store i8 %i.mh, ptr %i.mg, align 8, !tbaa !118
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !25 ; 3 uses
  %i.mn = load ptr, ptr %i.mk, align 8, !tbaa !24
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp                    ; 2 uses
  %i.mr = load ptr, ptr %0, align 8, !tbaa !92    ; 4 uses
  %i.ms = load ptr, ptr %i.i, align 8, !tbaa !93  ; 2 uses
  %.not.i220 = icmp eq ptr %i.mr, %i.ms
  br i1 %.not.i220, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mt = load i8, ptr %i.mr, align 1, !tbaa !80  ; 2 uses
  %i.mu = icmp eq i8 %i.mt, 95                    ; 2 uses
  br i1 %i.mu, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us.preheader, label %bb.cx

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us.preheader: ; preds = %bb.cm
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 1 ; 2 uses
  store ptr %i.mv, ptr %0, align 8, !tbaa !92
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us.preheader, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228.us
  %i.my = phi ptr [ %i.mm, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us.preheader ], [ %i.oa, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228.us ]
  %i.mz = phi ptr [ %i.ms, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us.preheader ], [ %.pre488, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228.us ]
  %i.na = phi ptr [ %i.mv, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us.preheader ], [ %.pre, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228.us ] ; 3 uses
  %.not.i223.us = icmp eq ptr %i.na, %i.mz
  br i1 %.not.i223.us, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !80
  %i.nc = icmp eq i8 %i.nb, 69
  br i1 %i.nc, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit225, label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us
  %i.nd = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nf = load ptr, ptr %i.ml, align 8, !tbaa !25 ; 3 uses
  %i.ng = load ptr, ptr %i.mw, align 8, !tbaa !26
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %bb.cq, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228.us

bb.cq:                                            ; preds = %bb.cp
  %i.ni = load ptr, ptr %i.mk, align 8, !tbaa !24 ; 5 uses
  %i.nj = ptrtoint ptr %i.nf to i64
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = sub i64 %i.nj, %i.nk                    ; 6 uses
  %i.nm = ashr exact i64 %i.nl, 2
  %i.nn = icmp eq ptr %i.ni, %i.mx
  %i.no = shl i64 %i.nl, 1                        ; 2 uses
  br i1 %i.nn, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.np = tail call ptr @realloc(ptr noundef %i.ni, i64 noundef %i.no) #24 ; 3 uses
  store ptr %i.np, ptr %i.mk, align 8, !tbaa !24
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %.split.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226.us

bb.cs:                                            ; preds = %bb.cq
  %i.nr = tail call noalias ptr @malloc(i64 noundef %i.no) #22 ; 5 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %.split445.us, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nt = icmp sgt i64 %i.nl, 8
  br i1 %i.nt, label %bb.cw, label %bb.cu, !prof !99

bb.cu:                                            ; preds = %bb.ct
  %i.nu = icmp eq i64 %i.nl, 8
  br i1 %i.nu, label %bb.cv, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227.us

bb.cv:                                            ; preds = %bb.cu
  %i.nv = load ptr, ptr %i.ni, align 8, !tbaa !28
  store ptr %i.nv, ptr %i.nr, align 8, !tbaa !28
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227.us

bb.cw:                                            ; preds = %bb.ct
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nr, ptr align 8 %i.ni, i64 %i.nl, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227.us

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227.us: ; preds = %bb.cw, %bb.cv, %bb.cu
  store ptr %i.nr, ptr %i.mk, align 8, !tbaa !24
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226.us: ; preds = %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227.us, %bb.cr
  %i.nw = phi ptr [ %i.np, %bb.cr ], [ %i.nr, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227.us ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nl
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nm
  store ptr %i.ny, ptr %i.mw, align 8, !tbaa !26
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228.us: ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226.us, %bb.cp
  %i.nz = phi ptr [ %i.nx, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226.us ], [ %i.nf, %bb.cp ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 2 uses
  store ptr %i.oa, ptr %i.ml, align 8, !tbaa !25
  store ptr %i.nd, ptr %i.nz, align 8, !tbaa !28
  %.pre = load ptr, ptr %0, align 8, !tbaa !92
  %.pre488 = load ptr, ptr %i.i, align 8, !tbaa !93
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.us

bb.cx:                                            ; preds = %bb.cm
  %i.ob = icmp eq i8 %i.mt, 69
  br i1 %i.ob, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit225, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.thread

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit225: ; preds = %bb.cn, %bb.cx
  %i.oc = phi ptr [ %i.mm, %bb.cx ], [ %i.my, %bb.cn ]
  %.us-phi = phi ptr [ %i.mr, %bb.cx ], [ %i.na, %bb.cn ]
  %i.od = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  store ptr %i.od, ptr %0, align 8, !tbaa !92
  br label %.thread387

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.thread: ; preds = %bb.cl, %bb.cx
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.og = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.thread
  %i.oi = load ptr, ptr %i.ml, align 8, !tbaa !25 ; 3 uses
  %i.oj = load ptr, ptr %i.oe, align 8, !tbaa !26
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %bb.cz, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228

bb.cz:                                            ; preds = %bb.cy
  %i.ol = load ptr, ptr %i.mk, align 8, !tbaa !24 ; 5 uses
  %i.om = ptrtoint ptr %i.oi to i64
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = sub i64 %i.om, %i.on                    ; 6 uses
  %i.op = ashr exact i64 %i.oo, 2
  %i.oq = icmp eq ptr %i.ol, %i.of
  %i.or = shl i64 %i.oo, 1                        ; 2 uses
  br i1 %i.oq, label %bb.da, label %bb.df

bb.da:                                            ; preds = %bb.cz
  %i.os = tail call noalias ptr @malloc(i64 noundef %i.or) #22 ; 5 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %.split445.us, label %bb.db

.split445.us:                                     ; preds = %bb.cs, %bb.da
  tail call void @abort() #23
  unreachable

bb.db:                                            ; preds = %bb.da
  %i.ou = icmp sgt i64 %i.oo, 8
  br i1 %i.ou, label %bb.dc, label %bb.dd, !prof !99

bb.dc:                                            ; preds = %bb.db
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.os, ptr align 8 %i.ol, i64 %i.oo, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227

bb.dd:                                            ; preds = %bb.db
  %i.ov = icmp eq i64 %i.oo, 8
  br i1 %i.ov, label %bb.de, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227

bb.de:                                            ; preds = %bb.dd
  %i.ow = load ptr, ptr %i.ol, align 8, !tbaa !28
  store ptr %i.ow, ptr %i.os, align 8, !tbaa !28
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227: ; preds = %bb.de, %bb.dd, %bb.dc
  store ptr %i.os, ptr %i.mk, align 8, !tbaa !24
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226

bb.df:                                            ; preds = %bb.cz
  %i.ox = tail call ptr @realloc(ptr noundef %i.ol, i64 noundef %i.or) #24 ; 3 uses
  store ptr %i.ox, ptr %i.mk, align 8, !tbaa !24
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %.split.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226

.split.us:                                        ; preds = %bb.cr, %bb.df
  tail call void @abort() #23
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226: ; preds = %bb.df, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227
  %i.oz = phi ptr [ %i.ox, %bb.df ], [ %i.os, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i227 ] ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.oo
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.op
  store ptr %i.pb, ptr %i.oe, align 8, !tbaa !26
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228: ; preds = %bb.cy, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226
  %i.pc = phi ptr [ %i.pa, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i226 ], [ %i.oi, %bb.cy ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  store ptr %i.pd, ptr %i.ml, align 8, !tbaa !25
  store ptr %i.og, ptr %i.pc, align 8, !tbaa !28
  br label %.thread387

.thread387:                                       ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit225
  %.0.i221629 = phi i1 [ false, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228 ], [ %i.mu, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit225 ]
  %i.pe = phi ptr [ %i.pd, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit228 ], [ %i.oc, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit225 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.pf = load ptr, ptr %i.mk, align 8, !tbaa !24
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 %i.mq ; 3 uses
  %i.ph = ptrtoint ptr %i.pe to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi                    ; 8 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !97 ; 2 uses
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = add i64 %i.pj, %i.pm                    ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !98
  %i.pq = icmp ult i64 %i.pn, %i.pp
  br i1 %i.pq, label %bb.dg, label %bb.dh, !prof !99

bb.dg:                                            ; preds = %.thread387
  %i.pr = inttoptr i64 %i.pn to ptr
  store ptr %i.pr, ptr %i.pk, align 8, !tbaa !97
  br label %_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i229

bb.dh:                                            ; preds = %.thread387
  %i.ps = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(96) %i.pk, i64 noundef %i.pj, i64 noundef %i.pj, i8 3)
  br label %_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i229

_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i229: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i.i230 = phi ptr [ %i.pl, %bb.dg ], [ %i.ps, %bb.dh ] ; 3 uses
  %i.pt = icmp sgt i64 %i.pj, 8
  br i1 %i.pt, label %bb.di, label %bb.dj, !prof !99

bb.di:                                            ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i229
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i.i.i.i.i230, ptr align 8 %i.pg, i64 %i.pj, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit233

bb.dj:                                            ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator17allocateNodeArrayEm.exit.i.i229
  %i.pu = icmp eq i64 %i.pj, 8
  br i1 %i.pu, label %bb.dk, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit233

bb.dk:                                            ; preds = %bb.dj
  %i.pv = load ptr, ptr %i.pg, align 8, !tbaa !28
  store ptr %i.pv, ptr %.0.i.i.i.i.i230, align 8, !tbaa !28
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit233

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit233: ; preds = %bb.di, %bb.dj, %bb.dk
  %i.pw = ashr exact i64 %i.pj, 3
  %i.px = load ptr, ptr %i.mk, align 8, !tbaa !24
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.mq
  store ptr %i.py, ptr %i.ml, align 8, !tbaa !25
  store ptr %.0.i.i.i.i.i230, ptr %5, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.pw, ptr %i.pz, align 8
  %.not74 = icmp eq i64 %i.pj, 8
  %or.cond = or i1 %.0.i221629, %.not74
  br i1 %or.cond, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit233
  %i.qa = getelementptr i8, ptr %i.ak, i64 3
  %.val119 = load i8, ptr %i.qa, align 1
  %i.qb = lshr i8 %.val119, 1
  %i.qc = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_14ConversionExprEJRPNS0_4NodeERNS0_9NodeArrayENS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %i.mi, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 %i.qb)
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit233, %bb.dl
  %.19 = phi ptr [ %i.qc, %bb.dl ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit233 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.dn:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.qd = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.qe = icmp eq ptr %i.qd, null
  br i1 %i.qe, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qf = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qh = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.qi = icmp eq ptr %i.qh, null
  br i1 %i.qi, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qj = getelementptr i8, ptr %i.ak, i64 3
  %.val118 = load i8, ptr %i.qj, align 1
  %i.qk = lshr i8 %.val118, 1
  %i.ql = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15ConditionalExprEJRPNS0_4NodeESB_SB_NS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %i.qd, ptr nonnull %i.qf, ptr nonnull %i.qh, i8 %i.qk)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.dr:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.qm = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.qn = icmp eq ptr %i.qm, null
  br i1 %i.qn, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qo = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qq = getelementptr i8, ptr %i.ak, i64 3
  %.val117 = load i8, ptr %i.qq, align 1
  %i.qr = lshr i8 %.val117, 1
  %i.qs = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_8CastExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeESG_NSE_4PrecEEEESF_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.qm, ptr nonnull %i.qo, i8 %i.qr)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.du:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.qt = getelementptr i8, ptr %i.ak, i64 3
  %.val137 = load i8, ptr %i.qt, align 1          ; 2 uses
  %6 = trunc i8 %.val137 to i1
  br i1 %6, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.qu = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1456) %0)
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.qv = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 8 dereferenceable(1456) %0)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.qw = phi ptr [ %i.qu, %bb.dv ], [ %i.qv, %bb.dw ] ; 3 uses
  %.not73 = icmp eq ptr %i.qw, null
  br i1 %.not73, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qx = lshr i8 %.val137, 1                     ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 921
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !76, !range !90, !noundef !91
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.rb, ptr %2, align 8, !tbaa !73
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.rc, align 8, !tbaa !74
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 32, ptr %i.rd, align 4, !tbaa !75
  call fastcc void @_ZN12_GLOBAL__N_111profileCtorIJSt17basic_string_viewIcSt11char_traitsIcEEPN4llvm16itanium_demangle4NodeENS7_4PrecEEEEvRNS5_16FoldingSetNodeIDENS7_4KindEDpT_(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 noundef zeroext 60, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr noundef nonnull %i.qw, i8 noundef zeroext %i.qx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.rf = call noundef ptr @_ZN4llvm14FoldingSetBase19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.re, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN12_GLOBAL__N_120FoldingNodeAllocator10NodeHeaderEE17getFoldingSetInfoEvE4Info) #20 ; 2 uses
  %.not.i.i.i.i.i234 = icmp eq ptr %i.rf, null    ; 2 uses
  br i1 %.not.i.i.i.i.i234, label %.critedge.i.i.i.i.i246, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  br label %bb.ed

.critedge.i.i.i.i.i246:                           ; preds = %bb.dy
  %i.rh = trunc nuw i8 %i.ra to i1
  br i1 %i.rh, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %.critedge.i.i.i.i.i246
  %i.ri = load ptr, ptr %i.qy, align 8, !tbaa !97 ; 2 uses
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = add i64 %i.rj, 64                       ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !98
  %i.rn = icmp ult i64 %i.rk, %i.rm
  br i1 %i.rn, label %bb.eb, label %bb.ec, !prof !99

bb.eb:                                            ; preds = %bb.ea
  %i.ro = inttoptr i64 %i.rk to ptr
  store ptr %i.ro, ptr %i.qy, align 8, !tbaa !97
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i247

bb.ec:                                            ; preds = %bb.ea
  %i.rp = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(648) %i.qy, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i247

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i247: ; preds = %bb.ec, %bb.eb
  %.0.i.i.i.i.i.i.i248 = phi ptr [ %i.ri, %bb.eb ], [ %i.rp, %bb.ec ] ; 9 uses
  store ptr null, ptr %.0.i.i.i.i.i.i.i248, align 8, !tbaa !101
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i248, i64 8 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i248, i64 16
  store i8 60, ptr %i.rr, align 8, !tbaa !106
  %i.rs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i248, i64 17 ; 2 uses
  %i.rt = load i16, ptr %i.rs, align 1
  %i.ru = and i16 %i.rt, -4096
  %i.rv = zext nneg i8 %i.qx to i16
  %i.rw = or disjoint i16 %i.ru, %i.rv
  %i.rx = or i16 %i.rw, 1344
  store i16 %i.rx, ptr %i.rs, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle13EnclosingExprE, i64 16), ptr %i.rq, align 8, !tbaa !108
  %i.ry = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i248, i64 24
  store i64 %.sroa.0.0.i, ptr %i.ry, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i248, i64 32
  store ptr %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !113
  %i.rz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i248, i64 40
  store ptr %i.qw, ptr %i.rz, align 8, !tbaa !296
  %i.sa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i248, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sa, i8 0, i64 16, i1 false)
  %i.sb = load ptr, ptr %i.b, align 8, !tbaa !87
  call void @_ZN4llvm14FoldingSetBase10InsertNodeEPNS0_4NodeEPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.re, ptr noundef nonnull %.0.i.i.i.i.i.i.i248, ptr noundef %i.sb, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN12_GLOBAL__N_120FoldingNodeAllocator10NodeHeaderEE17getFoldingSetInfoEvE4Info) #20
  br label %bb.ed

bb.ed:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i247, %.critedge.i.i.i.i.i246, %bb.dz
  %.sroa.0.0.i.i.i.i.i235 = phi ptr [ %i.rq, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i247 ], [ %i.rg, %bb.dz ], [ null, %.critedge.i.i.i.i.i246 ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.sc = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.sd = icmp eq ptr %i.sc, %i.rb
  br i1 %i.sd, label %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS3_4NodeENSA_4PrecEEEESt4pairISB_bEbDpOT0_.exit.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @free(ptr noundef %i.sc) #20
  br label %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS3_4NodeENSA_4PrecEEEESt4pairISB_bEbDpOT0_.exit.i.i.i.i

_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS3_4NodeENSA_4PrecEEEESt4pairISB_bEbDpOT0_.exit.i.i.i.i: ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.not.i.i.i.i.i234, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS3_4NodeENSA_4PrecEEEESt4pairISB_bEbDpOT0_.exit.i.i.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %.sroa.0.0.i.i.i.i.i235, ptr %i.se, align 8, !tbaa !94
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.eg:                                            ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS3_4NodeENSA_4PrecEEEESt4pairISB_bEbDpOT0_.exit.i.i.i.i
  %.not.i.i.i.i236 = icmp eq ptr %.sroa.0.0.i.i.i.i.i235, null
  br i1 %.not.i.i.i.i236, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.sg = load i32, ptr %i.sf, align 8, !noalias !597
  %i.sh = and i32 %i.sg, 1
  %.not.i.i.i.i.i.i.i.i237 = icmp eq i32 %i.sh, 0 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !noalias !597
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.sl = load ptr, ptr %i.sk, align 8, !noalias !597
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.sn = load i32, ptr %i.sm, align 8, !noalias !597
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %.sink2.i.i.i.i.i.i.i.i238 = select i1 %.not.i.i.i.i.i.i.i.i237, ptr %i.sj, ptr %i.si
  %.sink1.i.i.i.i.i.i.i.i239 = select i1 %.not.i.i.i.i.i.i.i.i237, ptr %i.sl, ptr %i.so ; 2 uses
  %.sink.i.i.i.i.i.i.i.i240 = select i1 %.not.i.i.i.i.i.i.i.i237, i32 %i.sn, i32 32 ; 2 uses
  %i.sp = icmp eq i32 %.sink.i.i.i.i.i.i.i.i240, 0
  br i1 %i.sp, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i241, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.sq = add i32 %.sink.i.i.i.i.i.i.i.i240, -1   ; 2 uses
  %i.sr = ptrtoint ptr %.sroa.0.0.i.i.i.i.i235 to i64
  %i.ss = mul i64 %i.sr, -4658895280553007687     ; 2 uses
  %i.st = lshr i64 %i.ss, 31
  %i.su = xor i64 %i.st, %i.ss
  %i.sv = trunc i64 %i.su to i32
  %i.sw = and i32 %i.sq, %i.sv                    ; 3 uses
  %i.sx = zext i32 %i.sw to i64                   ; 2 uses
  %i.sy = lshr i64 %i.sx, 5
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i239, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !72
  %i.tb = and i32 %i.sw, 31
  %i.tc = lshr i32 %i.ta, %i.tb
  %i.td = trunc i32 %i.tc to i1
  br i1 %i.td, label %.lr.ph.i.i.i.i.i.i244, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i241, !prof !114

.lr.ph.i.i.i.i.i.i244:                            ; preds = %bb.ei, %bb.ej
  %i.te = phi i64 [ %i.tk, %bb.ej ], [ %i.sx, %bb.ei ]
  %.017.i.i.i.i.i.i245 = phi i32 [ %i.tj, %bb.ej ], [ %i.sw, %bb.ei ]
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i.i.i238, i64 %i.te ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !28
  %i.th = icmp eq ptr %.sroa.0.0.i.i.i.i.i235, %i.tg
  br i1 %i.th, label %bb.ek, label %bb.ej, !prof !99

bb.ej:                                            ; preds = %.lr.ph.i.i.i.i.i.i244
  %i.ti = add nuw i32 %.017.i.i.i.i.i.i245, 1
  %i.tj = and i32 %i.ti, %i.sq                    ; 3 uses
  %i.tk = zext i32 %i.tj to i64                   ; 2 uses
  %i.tl = lshr i64 %i.tk, 5
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i239, i64 %i.tl
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !72
  %i.to = and i32 %i.tj, 31
  %i.tp = lshr i32 %i.tn, %i.to
  %i.tq = trunc i32 %i.tp to i1
  br i1 %i.tq, label %.lr.ph.i.i.i.i.i.i244, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i241, !prof !115

bb.ek:                                            ; preds = %.lr.ph.i.i.i.i.i.i244
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !28
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i241

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i241: ; preds = %bb.ej, %bb.ek, %bb.ei, %bb.eh
  %i.tt = phi ptr [ %i.ts, %bb.ek ], [ null, %bb.eh ], [ null, %bb.ei ], [ null, %bb.ej ] ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.tt, null
  %spec.select.i.i.i.i242 = select i1 %.not11.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i235, ptr %i.tt ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !88
  %i.tw = icmp eq ptr %spec.select.i.i.i.i242, %i.tv
  br i1 %i.tw, label %bb.el, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.el:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i241
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 1, ptr %i.tx, align 8, !tbaa !89
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.em:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  unreachable

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit: ; preds = %bb.co, %bb.by, %bb.ab, %bb.av, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.thread, %.split446, %bb.be, %bb.dx, %bb.ef, %bb.eg, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i241, %bb.el, %bb.dr, %bb.ds, %bb.dt, %bb.dn, %bb.dq, %bb.dp, %bb.do, %bb.ck, %bb.dm, %bb.bu, %bb.cj, %bb.bf, %bb.bn, %bb.bo, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i, %bb.bt, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit, %.split448.us, %bb.v, %bb.w, %bb.x, %bb.s, %bb.t, %bb.u, %bb.r, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k, %bb.h, %bb.j, %bb.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %.28 = phi ptr [ null, %bb.w ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.o ], [ null, %bb.q ], [ null, %bb.t ], [ %spec.select.i.i.i.i242, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i241 ], [ null, %bb.av ], [ null, %bb.bo ], [ null, %bb.ab ], [ %.19, %bb.dm ], [ null, %bb.dp ], [ null, %bb.ds ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit ], [ null, %bb.h ], [ %i.bj, %bb.j ], [ %i.bo, %bb.l ], [ %i.bw, %bb.p ], [ %i.cb, %bb.r ], [ null, %bb.s ], [ %i.ci, %bb.u ], [ null, %bb.v ], [ %i.cp, %bb.x ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20popTrailingNodeArrayEm.exit ], [ null, %bb.by ], [ %i.he, %.split448.us ], [ null, %bb.bf ], [ %.sroa.0.0.i.i.i.i.i, %bb.bn ], [ %spec.select.i.i.i.i, %bb.bt ], [ %spec.select.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i ], [ null, %bb.bu ], [ %i.mf, %bb.cj ], [ null, %bb.ck ], [ null, %bb.eg ], [ null, %bb.dn ], [ null, %bb.do ], [ %i.ql, %bb.dq ], [ null, %bb.dr ], [ %i.qs, %bb.dt ], [ null, %bb.dx ], [ %.sroa.0.0.i.i.i.i.i235, %bb.ef ], [ %spec.select.i.i.i.i242, %bb.el ], [ null, %bb.be ], [ null, %.split446 ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9consumeIfEc.exit222.split.thread ], [ null, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge83

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit: ; preds = %bb.d, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoneEPKc.exit.i
  switch i8 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i266 [
    i8 76, label %bb.en
    i8 84, label %bb.eo
    i8 102, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit259
  ]

bb.en:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit
  %i.ty = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E16parseExprPrimaryEv(ptr noundef nonnull align 8 dereferenceable(1456) %0)
  br label %.critedge83

bb.eo:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit
  %i.tz = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E18parseTemplateParamEv(ptr noundef nonnull align 8 dereferenceable(1456) %0)
  br label %.critedge83

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit259: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit
  %i.ua = load i8, ptr %i.x, align 1, !tbaa !80   ; 2 uses
  %i.ub = icmp eq i8 %i.ua, 112
  br i1 %i.ub, label %bb.ep, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit262

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit262: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit259
  %i.uc = icmp eq i8 %i.ua, 76
  %.not.i263 = icmp ne i64 %.pre-phi495625, 2
  %or.cond408 = and i1 %.not.i263, %i.uc
  br i1 %or.cond408, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit265, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit265.thread
end_hunk_1
begin_hunk_2_@_ZNK4llvm16itanium_demangle10AbiTagAttr9printLeftERNS0_12OutputBufferE:bb.a
._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i15: ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit13
  %.phi.trans.insert.i16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i17 = load ptr, ptr %.phi.trans.insert.i16, align 8, !tbaa !340
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i18

bb.g:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit13
  %i.ap = add i64 %i.al, 993
  %i.aq = shl i64 %i.an, 1
  %spec.select.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ap) ; 2 uses
  store i64 %spec.select.i.i19, ptr %i.i, align 8, !tbaa !339
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !340
  %i.at = tail call ptr @realloc(ptr noundef %i.as, i64 noundef %spec.select.i.i19) #24 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !340
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i20

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i20: ; preds = %bb.g
  %.pre5.i21 = load i64, ptr %i.f, align 8, !tbaa !338
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i18

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #23
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i18: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i20, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i15
  %i.av = phi i64 [ %i.al, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i15 ], [ %.pre5.i21, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i20 ]
  %i.aw = phi ptr [ %.pre.i17, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i15 ], [ %i.at, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i20 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 93, ptr %i.ax, align 1
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !338
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.f, align 8, !tbaa !338
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, ptr } @_ZNK4llvm16itanium_demangle13QualifiedName11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(11) %i.b) #20
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle13QualifiedNameD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle13QualifiedName9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.b) #20, !inline_history !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.g = load i16, ptr %i.f, align 1
  %.mask3.i = and i16 %i.g, 192
  %.not.i = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.b) #20, !inline_history !5
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !338  ; 3 uses
  %i.m = add i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !339  ; 2 uses
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !340
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %i.q = add i64 %i.l, 994
  %i.r = shl i64 %i.o, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.q) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.n, align 8, !tbaa !339
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !340
  %i.u = tail call ptr @realloc(ptr noundef %i.t, i64 noundef %spec.select.i.i) #24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !340
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.c
  %.pre5.i = load i64, ptr %i.k, align 8, !tbaa !338
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #23
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.w = phi i64 [ %i.l, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.x = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.u, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i16 14906, ptr %i.y, align 1
  %i.z = load i64, ptr %i.k, align 8, !tbaa !338
  %i.aa = add i64 %i.z, 2
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.ac) #20, !inline_history !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 9
  %i.ah = load i16, ptr %i.ag, align 1
  %.mask3.i5 = and i16 %i.ah, 192
  %.not.i6 = icmp eq i16 %.mask3.i5, 64
  br i1 %.not.i6, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.ac) #20, !inline_history !5
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E17parseOperatorNameEPNS6_9NameStateE(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !92  ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load ptr, ptr %i.b, align 8, !tbaa !93 ; 9 uses
  %i.c = ptrtoint ptr %.val14.i to i64            ; 3 uses
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.g = load i8, ptr %.val.i, align 1, !tbaa !80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread24.i, %.preheader.i
  %.031.i = phi i64 [ 62, %.preheader.i ], [ %i.t, %.thread24.i ] ; 3 uses
  %.01030.i = phi i64 [ 0, %.preheader.i ], [ %i.s, %.thread24.i ] ; 3 uses
  %i.i = add i64 %.01030.i, %.031.i
  %i.j = lshr i64 %i.i, 1                         ; 5 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E3OpsE, i64 %i.j ; 2 uses
  %.val15.i = load i8, ptr %i.k, align 16, !tbaa !80 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 1
  %.val16.i = load i8, ptr %i.l, align 1
  %i.m = icmp slt i8 %.val15.i, %i.g
  br i1 %i.m, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.n = add nuw nsw i64 %i.j, 1
  br label %.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %.val15.i, %i.g
  br i1 %i.o, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i, label %.thread24.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i: ; preds = %bb.c
  %i.p = load i8, ptr %i.h, align 1, !tbaa !80
  %i.q = icmp slt i8 %.val16.i, %i.p
  %cond.fr19.i = freeze i1 %i.q                   ; 2 uses
  %i.r = add nuw nsw i64 %i.j, 1
  %spec.select.i = select i1 %cond.fr19.i, i64 %i.r, i64 %.01030.i
  %spec.select29.i = select i1 %cond.fr19.i, i64 %.031.i, i64 %i.j
  br label %.thread24.i

.thread24.i:                                      ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i, %bb.c, %.thread.i
  %i.s = phi i64 [ %.01030.i, %bb.c ], [ %spec.select.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i ], [ %i.n, %.thread.i ] ; 4 uses
  %i.t = phi i64 [ %i.j, %bb.c ], [ %spec.select29.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoltEPKc.exit.i ], [ %.031.i, %.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.t, %i.s
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !4

bb.d:                                             ; preds = %.thread24.i
  %i.u = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E3OpsE, i64 %i.s ; 4 uses
  %.val17.i = load i8, ptr %i.u, align 16, !tbaa !80
  %i.v = icmp eq i8 %.val17.i, %i.g
  br i1 %i.v, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoneEPKc.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoneEPKc.exit.i: ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.u, i64 1
  %.val18.i = load i8, ptr %i.w, align 1
  %i.x = load i8, ptr %i.h, align 1, !tbaa !80
  %.not28.i = icmp eq i8 %.val18.i, %i.x
  br i1 %.not28.i, label %bb.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoneEPKc.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.y, ptr %0, align 8, !tbaa !92
  %i.z = and i64 %i.s, 1152921504606846975        ; 2 uses
  %i.aa = icmp eq i64 %i.z, 13
  br i1 %i.aa, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !118, !range !90, !noundef !91
  store i8 0, ptr %i.ab, align 8, !tbaa !118
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !69, !range !90, !noundef !91 ; 2 uses
  %i.af = icmp ne ptr %1, null                    ; 2 uses
  %i.ag = zext i1 %i.af to i8
  %i.ah = or i8 %i.ae, %i.ag
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !118
  %i.ai = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1456) %0) ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %1, align 8, !tbaa !128
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %i.ai)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.013 = phi ptr [ %i.ak, %bb.i ], [ null, %bb.f ]
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !118
  store i8 %i.ac, ptr %i.ab, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.k:                                             ; preds = %bb.e
  %i.al = shl nuw i64 1, %i.z                     ; 2 uses
  %i.am = and i64 %i.al, 8809040871136756128
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %6, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

6:                                                ; preds = %bb.k
  %7 = and i64 %i.al, 1266637396770816
  %.not72 = icmp eq i64 %7, 0
  br i1 %.not72, label %bb.m, label %bb.l

bb.l:                                             ; preds = %6
  %8 = getelementptr i8, ptr %i.u, i64 3
  %.val22 = load i8, ptr %8, align 1
  %9 = trunc i8 %.val22 to i1
  br i1 %9, label %bb.m, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.m:                                             ; preds = %bb.l, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.an = getelementptr i8, ptr %i.u, i64 8
  %.val25 = load ptr, ptr %i.an, align 8, !tbaa !342 ; 2 uses
  %i.ao = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val25) #20
  store i64 %i.ao, ptr %5, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.val25, ptr %i.ap, align 8
  %i.aq = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E12OperatorInfoneEPKc.exit.i, %bb.d
  %i.ar = load i16, ptr %.val.i, align 1
  %i.as = icmp ne i16 %i.ar, 26988
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %.thread

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 2 ; 4 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !92
  %.not.i.not.i.i = icmp eq ptr %.val14.i, %i.av
  br i1 %.not.i.not.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i: ; preds = %bb.n
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ax = add i8 %i.aw, -58
  %or.cond30.i.i = icmp ult i8 %i.ax, -10
  br i1 %or.cond30.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i.preheader

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i.preheader: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 3 ; 4 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !92
  %i.az = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ba = sext i8 %i.az to i64
  %i.bb = add nsw i64 %i.ba, -48                  ; 2 uses
  %.not.i15.not.i.i127 = icmp eq ptr %.val14.i, %i.ay
  br i1 %.not.i15.not.i.i127, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i.lr.ph, !llvm.loop !1

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i.lr.ph: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i.preheader
  br label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i, !llvm.loop !1

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i.lr.ph, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i
  %i.bc = phi i64 [ %i.bb, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i.lr.ph ], [ %i.bk, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i ] ; 2 uses
  %i.bd = phi ptr [ %i.ay, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i.lr.ph ], [ %i.bg, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i ] ; 4 uses
  %.pr.i.i = load i8, ptr %i.bd, align 1, !tbaa !80
  %i.be = add i8 %.pr.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.be, 10
  br i1 %or.cond.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i
  %i.bf = mul i64 %i.bc, 10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !92
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !80
  %i.bi = sext i8 %i.bh to i64
  %i.bj = add i64 %i.bf, -48
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %.not.i15.not.i.i = icmp eq ptr %.val14.i, %i.bg
  br i1 %.not.i15.not.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i, !llvm.loop !1

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i, !llvm.loop !1

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i.preheader
  %.lcssa124.a = phi ptr [ %i.bg, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge ], [ %i.ay, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i.preheader ]
  %.lcssa122 = phi i64 [ %i.bk, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge ], [ %i.bb, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i.preheader ]
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i, !llvm.loop !1

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i
  %i.bl = phi ptr [ %.lcssa124.a, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i ], [ %i.bd, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i ] ; 5 uses
  %i.bm = phi i64 [ %.lcssa122, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i ], [ %i.bc, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i ] ; 4 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.c, %i.bn
  %i.bp = add i64 %i.bm, -1
  %or.cond.not.i = icmp ult i64 %i.bp, %i.bo
  br i1 %or.cond.not.i, label %bb.o, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.o:                                             ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 %i.bm, ptr %4, align 8, !tbaa !116
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bl, ptr %i.bq, align 8, !tbaa !117
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store ptr %i.br, ptr %0, align 8, !tbaa !92
  %i.bs = icmp ult i64 %i.bm, 10
  br i1 %i.bs, label %bb.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i27: ; preds = %bb.o
  %i.bt = load i64, ptr %i.bl, align 1
  %i.bu = xor i64 %i.bt, 6866935284887209823
  %i.bv = getelementptr i8, ptr %i.bl, i64 8
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i64
  %i.by = xor i64 %i.bx, 20063
  %i.bz = or i64 %i.bu, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i29, label %bb.p

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i29: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i27
  %i.cd = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_8NameTypeEJRA22_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr noundef nonnull align 1 dereferenceable(22) @.str.221)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit

bb.p:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i27, %bb.o
  %i.ce = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_8NameTypeEJRSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i29, %bb.p
  %.0.i = phi ptr [ %i.cd, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i29 ], [ %i.ce, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cf = icmp eq ptr %.0.i, null
  br i1 %i.cf, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 921
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !76, !range !90, !noundef !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.cj, ptr %3, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ck, align 8, !tbaa !74
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 32, ptr %i.cl, align 4, !tbaa !75
  call fastcc void @_ZN12_GLOBAL__N_111profileCtorIJPN4llvm16itanium_demangle4NodeEEEEvRNS1_16FoldingSetNodeIDENS3_4KindEDpT_(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 noundef zeroext 20, ptr noundef nonnull %.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.cn = call noundef ptr @_ZN4llvm14FoldingSetBase19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN12_GLOBAL__N_120FoldingNodeAllocator10NodeHeaderEE17getFoldingSetInfoEvE4Info) #20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.v

.critedge.i.i.i.i.i:                              ; preds = %bb.q
  %i.cp = trunc nuw i8 %i.ci to i1
  br i1 %i.cp, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.critedge.i.i.i.i.i
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !97 ; 2 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = add i64 %i.cr, 32                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !98
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.t, label %bb.u, !prof !99

bb.t:                                             ; preds = %bb.s
  %i.cw = inttoptr i64 %i.cs to ptr
  store ptr %i.cw, ptr %i.cg, align 8, !tbaa !97
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cx = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(648) %i.cg, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.t ], [ %i.cx, %bb.u ] ; 6 uses
  store ptr null, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !101
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  store i8 20, ptr %i.cz, align 8, !tbaa !106
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 17 ; 2 uses
  %i.db = load i16, ptr %i.da, align 1
  %i.dc = and i16 %i.db, -4096
  %i.dd = or disjoint i16 %i.dc, 1344
  store i16 %i.dd, ptr %i.da, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle15LiteralOperatorE, i64 16), ptr %i.cy, align 8, !tbaa !108
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 24
  store ptr %.0.i, ptr %i.de, align 8, !tbaa !165
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !87
  call void @_ZN4llvm14FoldingSetBase10InsertNodeEPNS0_4NodeEPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull %.0.i.i.i.i.i.i.i, ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN12_GLOBAL__N_120FoldingNodeAllocator10NodeHeaderEE17getFoldingSetInfoEvE4Info) #20
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i, %.critedge.i.i.i.i.i, %bb.r
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.cy, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i.i ], [ %i.co, %bb.r ], [ null, %.critedge.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.dg = load ptr, ptr %3, align 8, !tbaa !73    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cj
  br i1 %i.dh, label %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle15LiteralOperatorEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.dg) #20
  br label %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle15LiteralOperatorEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i

_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle15LiteralOperatorEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle15LiteralOperatorEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.di, align 8, !tbaa !94
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle15LiteralOperatorEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.dk = load i32, ptr %i.dj, align 8, !noalias !936
  %i.dl = and i32 %i.dk, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.dl, 0    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !936
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !936
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dr = load i32, ptr %i.dq, align 8, !noalias !936
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %.sink2.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.dn, ptr %i.dm
  %.sink1.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.dp, ptr %i.ds ; 2 uses
  %.sink.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 %i.dr, i32 32 ; 2 uses
  %i.dt = icmp eq i32 %.sink.i.i.i.i.i.i.i.i, 0
  br i1 %i.dt, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = add i32 %.sink.i.i.i.i.i.i.i.i, -1      ; 2 uses
  %i.dv = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  %i.dw = mul i64 %i.dv, -4658895280553007687     ; 2 uses
  %i.dx = lshr i64 %i.dw, 31
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.du, %i.dz                    ; 3 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = lshr i64 %i.eb, 5
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !72
  %i.ef = and i32 %i.ea, 31
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = trunc i32 %i.eg to i1
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i, !prof !114

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aa, %bb.ab
  %i.ei = phi i64 [ %i.eo, %bb.ab ], [ %i.eb, %bb.aa ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.en, %bb.ab ], [ %i.ea, %bb.aa ]
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i.i.i, i64 %i.ei ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !28
  %i.el = icmp eq ptr %.sroa.0.0.i.i.i.i.i, %i.ek
  br i1 %i.el, label %bb.ac, label %bb.ab, !prof !99

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.em = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.en = and i32 %i.em, %i.du                    ; 3 uses
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = lshr i64 %i.eo, 5
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !72
  %i.es = and i32 %i.en, 31
  %i.et = lshr i32 %i.er, %i.es
  %i.eu = trunc i32 %i.et to i1
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i, !prof !115

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !28
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i: ; preds = %bb.ab, %bb.ac, %bb.aa, %bb.z
  %i.ex = phi ptr [ %i.ew, %bb.ac ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ex, null
  %spec.select.i.i.i.i = select i1 %.not9.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i, ptr %i.ex ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !88
  %i.fa = icmp eq ptr %spec.select.i.i.i.i, %i.ez
  br i1 %i.fa, label %bb.ad, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.ad:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 1, ptr %i.fb, align 8, !tbaa !89
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

.thread:                                          ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.not.i30 = icmp eq ptr %.val.i, %.val14.i
  br i1 %.not.i30, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.fc = load i8, ptr %.val.i, align 1, !tbaa !80
  %i.fd = icmp eq i8 %i.fc, 118
  br i1 %i.fd, label %bb.af, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 3 uses
  store ptr %i.fe, ptr %0, align 8, !tbaa !92
  %.not.i32.not = icmp eq ptr %.val14.i, %i.fe
  br i1 %.not.i32.not, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit: ; preds = %bb.af
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !80
  %i.fg = add i8 %i.ff, -48
  %or.cond.a = icmp ult i8 %i.fg, 10
  br i1 %or.cond.a, label %bb.ag, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.ag:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i, i64 2 ; 4 uses
  store ptr %i.fh, ptr %0, align 8, !tbaa !92
  %.not.i.not.i.i39 = icmp eq ptr %.val14.i, %i.fh
  br i1 %.not.i.not.i.i39, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i40

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i40: ; preds = %bb.ag
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !80
  %i.fj = add i8 %i.fi, -58
  %or.cond30.i.i41 = icmp ult i8 %i.fj, -10
  br i1 %or.cond30.i.i41, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42.preheader

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42.preheader: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i40
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i, i64 3 ; 4 uses
  store ptr %i.fk, ptr %0, align 8, !tbaa !92
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !80
  %i.fm = sext i8 %i.fl to i64
  %i.fn = add nsw i64 %i.fm, -48                  ; 2 uses
  %.not.i15.not.i.i45129 = icmp eq ptr %.val14.i, %i.fk
  br i1 %.not.i15.not.i.i45129, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46.lr.ph, !llvm.loop !1

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46.lr.ph: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42.preheader
  br label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46, !llvm.loop !1

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46.lr.ph, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42
  %i.fo = phi i64 [ %i.fn, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46.lr.ph ], [ %i.fw, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42 ] ; 2 uses
  %i.fp = phi ptr [ %i.fk, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46.lr.ph ], [ %i.fs, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42 ] ; 4 uses
  %.pr.i.i47 = load i8, ptr %i.fp, align 1, !tbaa !80
  %i.fq = add i8 %.pr.i.i47, -48
  %or.cond.i.i48 = icmp ult i8 %i.fq, 10
  br i1 %or.cond.i.i48, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i49

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46
  %i.fr = mul i64 %i.fo, 10
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 4 uses
  store ptr %i.fs, ptr %0, align 8, !tbaa !92
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !80
  %i.fu = sext i8 %i.ft to i64
  %i.fv = add i64 %i.fr, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 2 uses
  %.not.i15.not.i.i45 = icmp eq ptr %.val14.i, %i.fs
  br i1 %.not.i15.not.i.i45, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56_crit_edge, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46, !llvm.loop !1

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56_crit_edge: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56, !llvm.loop !1

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56_crit_edge, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42.preheader
  %.lcssa118 = phi ptr [ %i.fs, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56_crit_edge ], [ %i.fk, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42.preheader ]
  %.lcssa = phi i64 [ %i.fw, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56_crit_edge ], [ %i.fn, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i.i42.preheader ]
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i49, !llvm.loop !1

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i49: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56
  %i.fx = phi ptr [ %.lcssa118, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56 ], [ %i.fp, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46 ] ; 5 uses
  %i.fy = phi i64 [ %.lcssa, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit_crit_edge.i56 ], [ %i.fo, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit17thread-pre-split.i.i46 ] ; 4 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.c, %i.fz
  %i.gb = add i64 %i.fy, -1
  %or.cond.not.i50 = icmp ult i64 %i.gb, %i.ga
  br i1 %or.cond.not.i50, label %bb.ah, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.ah:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i64 %i.fy, ptr %2, align 8, !tbaa !116
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fx, ptr %i.gc, align 8, !tbaa !117
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fy
  store ptr %i.gd, ptr %0, align 8, !tbaa !92
  %i.ge = icmp ult i64 %i.fy, 10
  br i1 %i.ge, label %bb.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i52: ; preds = %bb.ah
  %i.gf = load i64, ptr %i.fx, align 1
  %i.gg = xor i64 %i.gf, 6866935284887209823
  %i.gh = getelementptr i8, ptr %i.fx, i64 8
  %i.gi = load i16, ptr %i.gh, align 1
  %i.gj = zext i16 %i.gi to i64
  %i.gk = xor i64 %i.gj, 20063
  %i.gl = or i64 %i.gg, %i.gk
  %i.gm = icmp ne i64 %i.gl, 0
  %i.gn = zext i1 %i.gm to i32
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i55, label %bb.ai

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i55: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i52
  %i.gp = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_8NameTypeEJRA22_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr noundef nonnull align 1 dereferenceable(22) @.str.221)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit57

bb.ai:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i52, %bb.ah
  %i.gq = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_8NameTypeEJRSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit57

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit57: ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i55, %bb.ai
  %.0.i54 = phi ptr [ %i.gp, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i55 ], [ %i.gq, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.gr = icmp eq ptr %.0.i54, null
  br i1 %i.gr, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit57
  %i.gs = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr nonnull %.0.i54)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit: ; preds = %bb.ag, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i40, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i49, %bb.af, %.thread, %bb.ae, %bb.n, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i, %bb.k, %bb.m, %bb.l, %bb.j, %bb.aj, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit57, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit, %bb.x, %bb.y, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i, %bb.ad, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit
  %.4 = phi ptr [ null, %bb.n ], [ null, %.thread ], [ null, %bb.af ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit ], [ null, %bb.ag ], [ %.013, %bb.j ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit ], [ %.sroa.0.0.i.i.i.i.i, %bb.x ], [ %spec.select.i.i.i.i, %bb.ad ], [ %spec.select.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i.i ], [ null, %bb.y ], [ %i.gs, %bb.aj ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE.exit57 ], [ null, %bb.k ], [ %i.aq, %bb.m ], [ null, %bb.l ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i ], [ null, %bb.ae ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E20parsePositiveIntegerEPm.exit.i49 ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4lookEj.exit.i.i40 ]
  ret ptr %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle8DtorNameD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle8DtorName9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 3 uses
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !339  ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !340
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 993
  %i.h = shl i64 %i.e, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !339
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !340
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %spec.select.i.i) #24 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !340
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !338
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #23
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.m = phi i64 [ %i.b, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.n = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.k, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 126, ptr %i.o, align 1
  %i.p = load i64, ptr %i.a, align 8, !tbaa !338
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !338
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !232
  %i.t = load ptr, ptr %1, align 8, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_122CanonicalizerAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1456) %0, ptr %.0.val) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 921
  %i.d = load i8, ptr %i.c, align 1, !tbaa !76, !range !90, !noundef !91
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 32, ptr %i.g, align 4, !tbaa !75
  call fastcc void @_ZN12_GLOBAL__N_111profileCtorIJPN4llvm16itanium_demangle4NodeEEEEvRNS1_16FoldingSetNodeIDENS3_4KindEDpT_(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 noundef zeroext 4, ptr noundef %.0.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.i = call noundef ptr @_ZN4llvm14FoldingSetBase19FindNodeOrInsertPosERKNS_16FoldingSetNodeIDERPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN12_GLOBAL__N_120FoldingNodeAllocator10NodeHeaderEE17getFoldingSetInfoEvE4Info) #20 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.f

.critedge.i.i.i.i:                                ; preds = %bb.a
  %i.k = trunc nuw i8 %i.d to i1
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge.i.i.i.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, 32                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.p = load i64, ptr %i.o, align 8, !tbaa !98
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e, !prof !99

bb.d:                                             ; preds = %bb.c
  %i.r = inttoptr i64 %i.n to ptr
  store ptr %i.r, ptr %i.b, align 8, !tbaa !97
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(648) %i.b, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.s, %bb.e ] ; 6 uses
  store ptr null, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store i8 4, ptr %i.u, align 8, !tbaa !106
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 17 ; 2 uses
  %i.w = load i16, ptr %i.v, align 1
  %i.x = and i16 %i.w, -4096
  %i.y = or disjoint i16 %i.x, 1344
  store i16 %i.y, ptr %i.v, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle22ConversionOperatorTypeE, i64 16), ptr %i.t, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr %.0.val, ptr %i.z, align 8, !tbaa !139
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !87
  call void @_ZN4llvm14FoldingSetBase10InsertNodeEPNS0_4NodeEPvRKNS0_14FoldingSetInfoE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %.0.i.i.i.i.i.i, ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4llvm10FoldingSetIN12_GLOBAL__N_120FoldingNodeAllocator10NodeHeaderEE17getFoldingSetInfoEvE4Info) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i, %.critedge.i.i.i.i, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.t, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i ], [ %i.j, %bb.b ], [ null, %.critedge.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ab = load ptr, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.e
  br i1 %i.ac, label %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle22ConversionOperatorTypeEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.ab) #20
  br label %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle22ConversionOperatorTypeEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i

_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle22ConversionOperatorTypeEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle22ConversionOperatorTypeEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ad, align 8, !tbaa !94
  br label %_ZN12_GLOBAL__N_122CanonicalizerAllocator8makeNodeIN4llvm16itanium_demangle22ConversionOperatorTypeEJRPNS3_4NodeEEEES6_DpOT0_.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_120FoldingNodeAllocator15getOrCreateNodeIN4llvm16itanium_demangle22ConversionOperatorTypeEJRPNS3_4NodeEEEESt4pairIS6_bEbDpOT0_.exit.i.i.i
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_122CanonicalizerAllocator8makeNodeIN4llvm16itanium_demangle22ConversionOperatorTypeEJRPNS3_4NodeEEEES6_DpOT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.af = load i32, ptr %i.ae, align 8, !noalias !941
  %i.ag = and i32 %i.af, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ag, 0      ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !941
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !941
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.am = load i32, ptr %i.al, align 8, !noalias !941
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ai, ptr %i.ah
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ak, ptr %i.an ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.am, i32 32 ; 2 uses
  %i.ao = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add i32 %.sink.i.i.i.i.i.i.i, -1        ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64
  %i.ar = mul i64 %i.aq, -4658895280553007687     ; 2 uses
  %i.as = lshr i64 %i.ar, 31
  %i.at = xor i64 %i.as, %i.ar
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.ap, %i.au                    ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = and i32 %i.av, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_16itanium_demangle4NodeES4_Lj32ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E6lookupEPKS3_.exit.i.i.i, !prof !114

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.l
  %i.bd = phi i64 [ %i.bj, %bb.l ], [ %i.aw, %bb.k ]
  %.017.i.i.i.i.i = phi i32 [ %i.bi, %bb.l ], [ %i.av, %bb.k ]
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28
  %i.bg = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.bf
  br i1 %i.bg, label %bb.m, label %bb.l, !prof !99

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bh = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bi = and i32 %i.bh, %i.ap                    ; 3 uses
end_hunk_2
