inline.NumInlined: 622
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm2EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 256), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm3EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [384 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1536) %i.a, i8 0, i64 1536, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 384), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm4EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 512), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm5EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [640 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2560) %i.a, i8 0, i64 2560, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 640), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) #0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !23
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 16, !tbaa !90  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %2, ptr %i.f, align 8, !tbaa !108
  %i.g = sdiv i32 %i.c, 32
  %i.h = add nsw i32 %i.g, 1
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = add nsw i32 %i.c, 159
  %i.k = sdiv i32 %i.j, 32
  %i.l = mul nsw i32 %i.k, 11
  %i.m = sdiv i32 %i.l, 10
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !109
  %i.p = srem i32 %i.c, 32                        ; 2 uses
  %i.q = zext i64 %.sroa.2.0.copyload.i.i.i.i to i128
  %i.r = shl nuw i128 %i.q, 64
  %i.s = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128 ; 2 uses
  %i.t = or disjoint i128 %i.r, %i.s
  %i.u = zext nneg i32 %i.p to i128
  %i.v = shl i128 %i.s, %i.u
  %i.w = trunc i128 %i.v to i32
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.i
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  store i32 %i.w, ptr %i.y, align 4, !tbaa !3
  %i.z = sub nsw i32 32, %i.p
  %i.aa = zext nneg i32 %i.z to i128
  %i.ab = lshr i128 %i.t, %i.aa                   ; 2 uses
  %i.ac = trunc i128 %i.ab to i64                 ; 2 uses
  %i.ad = lshr i128 %i.ab, 64                     ; 2 uses
  %.not.i40.i.i.i.i.i = icmp ne i64 %i.ac, 0
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = or i1 %.not.i40.i.i.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph.preheader.i.i.i.i.i, label %.preheader39.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.ag = trunc nuw nsw i128 %i.ad to i64
  br label %.lr.ph.i.i.i.i.i

.preheader39.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.022.lcssa.i.i.i.i.i = phi i64 [ %i.i, %bb.a ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i64 %.022.lcssa.i.i.i.i.i, 0
  br i1 %.not46.i.i.i.i.i, label %.preheader39._crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader39._crit_edge.i.i.i.i.i:                ; preds = %.preheader39.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !3
  %i.ah = add nsw i64 %i.n, 1
  br label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.02243.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.8.042.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.030.041.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ai = trunc i64 %.sroa.030.041.i.i.i.i.i to i32
  %i.aj = add i64 %.02243.i.i.i.i.i, 1            ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02243.i.i.i.i.i
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !3
  %i.al = zext nneg i64 %.sroa.8.042.i.i.i.i.i to i128
  %i.am = shl nuw nsw i128 %i.al, 64
  %i.an = zext i64 %.sroa.030.041.i.i.i.i.i to i128
  %i.ao = or disjoint i128 %i.am, %i.an
  %i.ap = lshr i128 %i.ao, 32
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = lshr i64 %.sroa.8.042.i.i.i.i.i, 32     ; 2 uses
  %i.as = or i64 %i.ar, %i.aq
  %.not53.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not53.i.i.i.i.i, label %.preheader39.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !110

.preheader.i.i.i.i.i:                             ; preds = %.preheader39.i.i.i.i.i, %bb.b
  %i.at = phi i64 [ %i.az, %bb.b ], [ %i.n, %.preheader39.i.i.i.i.i ] ; 2 uses
  %.147.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.b ], [ %.022.lcssa.i.i.i.i.i, %.preheader39.i.i.i.i.i ] ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.au = trunc nuw nsw i64 %i.bj to i32          ; 2 uses
  %i.av = add i64 %.147.i.i.i.i.i, -1             ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = icmp eq i32 %i.ax, 0
  %spec.select.i.i.i.i.i = select i1 %i.ay, i64 %i.av, i64 %.147.i.i.i.i.i ; 2 uses
  %i.az = add i64 %i.at, -1                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az
  store i32 %i.au, ptr %i.ba, align 4, !tbaa !3
  %.not.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !111

bb.c:                                             ; preds = %bb.c, %.preheader.i.i.i.i.i
  %.02345.i.i.i.i.i = phi i64 [ %.147.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.bb, %bb.c ]
  %.02444.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.bj, %bb.c ]
  %i.bb = add i64 %.02345.i.i.i.i.i, -1           ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %.02444.i.i.i.i.i, 32
  %i.bg = or disjoint i64 %i.bf, %i.be            ; 2 uses
  %i.bh = udiv i64 %i.bg, 1000000000
  %i.bi = trunc nuw i64 %i.bh to i32
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !3
  %i.bj = urem i64 %i.bg, 1000000000              ; 2 uses
  %.not26.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not26.i.i.i.i.i, label %bb.b, label %bb.c, !llvm.loop !112

._crit_edge.i.i.i.i.i:                            ; preds = %bb.b, %.preheader39._crit_edge.i.i.i.i.i
  %i.bk = phi i32 [ %.pre.i.i.i.i.i, %.preheader39._crit_edge.i.i.i.i.i ], [ %i.au, %bb.b ] ; 2 uses
  %i.bl = phi i64 [ %i.ah, %.preheader39._crit_edge.i.i.i.i.i ], [ %i.at, %bb.b ]
  store i64 %i.bl, ptr %4, align 8, !tbaa !113
  %.not2548.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not2548.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit, label %.lr.ph51.i.i.i.i.i

.lr.ph51.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph51.i.i.i.i.i
  %.049.i.i.i.i.i = phi i32 [ %i.bk, %.lr.ph51.i.i.i.i.i ], [ %i.bu, %bb.d ] ; 3 uses
  %i.bn = urem i32 %.049.i.i.i.i.i, 10
  %i.bo = trunc nuw nsw i32 %i.bn to i8
  %i.bp = or disjoint i8 %i.bo, 48
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !102 ; 2 uses
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.d, align 8, !tbaa !102
  %i.bs = sub i64 8, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs
  store i8 %i.bp, ptr %i.bt, align 1, !tbaa !12
  %i.bu = udiv i32 %.049.i.i.i.i.i, 10
  %.not25.i.i.i.i.i = icmp ult i32 %.049.i.i.i.i.i, 10
  br i1 %.not25.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit, label %bb.d, !llvm.loop !114

_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit: ; preds = %bb.d, %._crit_edge.i.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %0, align 16, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  call void %.val5.i.i.i.i(ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !116
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = load i64, ptr %2, align 8, !tbaa !113
  %i.d = sub i64 %i.b, %i.c
  %i.e = mul i64 %i.d, 9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102  ; 8 uses
  %i.h = add i64 %i.e, %i.g
  %i.i = load ptr, ptr %0, align 8, !tbaa !117, !nonnull !119, !align !120 ; 8 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !29 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.k, align 8    ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = and i8 %i.m, 8
  %.not66.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not66.i.i.i.i, label %bb.b, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, %bb.a
  %i.o = add i64 %.val3.i.i.i.i, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i
  %i.p = phi i64 [ %i.o, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i ], [ 0, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i ]
  %i.q = add i64 %i.h, %i.p
  %i.r = load i8, ptr %i.i, align 8, !tbaa !24    ; 5 uses
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = zext i1 %.not.i.i.i.i to i64
  %i.t = add i64 %i.q, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14, !noalias !121 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %.not.i6.i.i.i.i = icmp ult i64 %i.t, %i.x
  br i1 %.not.i6.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = sub nuw nsw i64 %i.x, %i.t               ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7, !noalias !121 ; 2 uses
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i8 %i.aa, 16
  %.not1.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ah = add i64 %i.ag, %i.y
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1056 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 8 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.ak, %i.am                    ; 4 uses
  %i.ao = icmp ugt i64 %i.y, %i.an
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 8 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.as = sub nuw nsw i64 %i.y, %i.an             ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.peel.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 32, i64 %i.an, i1 false)
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !78
  %.pre.i.i.i.i.i = ptrtoint ptr %i.au to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.av = sub i64 %.pre-phi.i.i.i.i.i, %i.aq
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !80
  tail call void %i.aw(ptr noundef %i.ax, i64 %i.av, ptr nonnull %i.ap), !inline_history !124
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !78
  %i.ay = icmp samesign ugt i64 %i.as, 1024
  br i1 %i.ay, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.g, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.az, %.peel.next.i.i.i.i.i ], [ %i.as, %bb.g ]
  %i.az = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 32, i64 1024, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !78
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !80
  tail call void %i.ba(ptr noundef %i.bb, i64 1024, ptr nonnull %i.ap), !inline_history !124
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !78
  %i.bc = icmp ugt i64 %i.az, 1024
  br i1 %i.bc, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !83

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.g, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.y, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.as, %bb.g ], [ %i.az, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !78
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.pre75.i.i.i.i.a = load i8, ptr %.pre.i.i.i.i, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bf = phi i8 [ %.pre75.i.i.i.i.a, %._crit_edge.i.i.i.i.i ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.10.065.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.y, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.7.064.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ 0, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.not1.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not1.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !75
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78 ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i10.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !79
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !80
  tail call void %i.bs(ptr noundef %i.bt, i64 1024, ptr nonnull %i.bq), !inline_history !124
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !78
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i: ; preds = %.lr.ph.i10.i.i.i.i, %bb.h
  %.lcssa.i9.i.i.i.i = phi ptr [ %i.bo, %bb.h ], [ %i.bq, %.lr.ph.i10.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i9.i.i.i.i, i8 %i.bf, i64 1, i1 false)
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !78
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !78
  %.pre76.i.i.i.i.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bw = phi ptr [ %.pre76.i.i.i.i.a, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i ], [ %i.bg, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31 ; 8 uses
  %i.bz = icmp eq i64 %.sroa.7.064.i.i.i.i, 0
  br i1 %i.bz, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !75
  %i.cc = add i64 %i.cb, %.sroa.7.064.i.i.i.i
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !75
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1056 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 8 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !78 ; 4 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.cf, %i.ch                    ; 4 uses
  %i.cj = icmp ugt i64 %.sroa.7.064.i.i.i.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i20.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.lr.ph.i20.i.i.i.i:                               ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 8 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cn = sub nuw nsw i64 %.sroa.7.064.i.i.i.i, %i.ci ; 3 uses
  %.not.peel.i21.i.i.i.i = icmp eq ptr %i.cd, %i.cg
  br i1 %.not.peel.i21.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i20.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cg, i8 48, i64 %i.ci, i1 false)
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !78
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci ; 2 uses
  store ptr %i.cp, ptr %i.ce, align 8, !tbaa !78
  %.pre.i22.i.i.i.i = ptrtoint ptr %i.cp to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i20.i.i.i.i
  %.pre-phi.i23.i.i.i.i = phi i64 [ %.pre.i22.i.i.i.i, %bb.k ], [ %i.cf, %.lr.ph.i20.i.i.i.i ]
  %i.cq = sub i64 %.pre-phi.i23.i.i.i.i, %i.cl
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !79
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !80
  tail call void %i.cr(ptr noundef %i.cs, i64 %i.cq, ptr nonnull %i.ck), !inline_history !124
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !78
  %i.ct = icmp samesign ugt i64 %i.cn, 1024
  br i1 %i.ct, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.peel.next.i24.i.i.i.i:                           ; preds = %bb.l, %.peel.next.i24.i.i.i.i
  %.010.i25.i.i.i.i = phi i64 [ %i.cu, %.peel.next.i24.i.i.i.i ], [ %i.cn, %bb.l ]
  %i.cu = add i64 %.010.i25.i.i.i.i, -1024        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ck, i8 48, i64 1024, i1 false)
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !78
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !79
  %i.cw = load ptr, ptr %i.by, align 8, !tbaa !80
  tail call void %i.cv(ptr noundef %i.cw, i64 1024, ptr nonnull %i.ck), !inline_history !124
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !78
  %i.cx = icmp ugt i64 %i.cu, 1024
  br i1 %i.cx, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i, !llvm.loop !83

._crit_edge.i17.i.i.i.i:                          ; preds = %.peel.next.i24.i.i.i.i, %bb.l, %bb.j
  %.0.lcssa.i18.i.i.i.i = phi i64 [ %.sroa.7.064.i.i.i.i, %bb.j ], [ %i.cn, %bb.l ], [ %i.cu, %.peel.next.i24.i.i.i.i ] ; 2 uses
  %.lcssa.i19.i.i.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.ck, %bb.l ], [ %i.ck, %.peel.next.i24.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i19.i.i.i.i, i8 48, i64 %.0.lcssa.i18.i.i.i.i, i1 false)
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !78
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.0.lcssa.i18.i.i.i.i
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !78
  %.pre77.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !117
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre77.i.i.i.i, i64 24
  %.pre78.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !31
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i: ; preds = %._crit_edge.i17.i.i.i.i, %bb.i
  %3 = phi ptr [ %i.by, %bb.i ], [ %.pre78.i.i.i.i, %._crit_edge.i17.i.i.i.i ] ; 7 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 20
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 18
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.de = sub i64 9, %i.g
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 %i.de ; 2 uses
  %i.dg = icmp eq i64 %i.g, 0
  br i1 %i.dg, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.peel.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !75
  %i.dj = add i64 %i.di, %i.g
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !75
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !78 ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.dp = sub i64 %i.dn, %i.do
  %.not.i27.peel.i.i.i.i = icmp ult i64 %i.g, %i.dp
  br i1 %.not.i27.peel.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.do, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !79
  %i.dv = load ptr, ptr %3, align 8, !tbaa !80
  tail call void %i.du(ptr noundef %i.dv, i64 %i.ds, ptr nonnull %i.dq), !inline_history !125
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !78
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !79
  %i.dx = load ptr, ptr %3, align 8, !tbaa !80
  call void %i.dw(ptr noundef %i.dx, i64 %i.g, ptr nonnull %i.df), !inline_history !126
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.peel.i.i.i.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %i.df, i64 %i.g, i1 false)
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !78
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.g
  store ptr %i.dz, ptr %i.dl, align 8, !tbaa !78
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.peel.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.peel.i.i.i.i: ; preds = %bb.o, %bb.n, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.ea = load i64, ptr %2, align 8, !tbaa !113   ; 2 uses
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !109
  %.not.i28.peel.i.i.i.i = icmp ult i64 %i.ea, %i.eb
  br i1 %.not.i28.peel.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.a, label %.loopexit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.a: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.peel.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %.sink126.i.i.i.i = phi i64 [ %i.eq, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i ], [ %i.ea, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.peel.i.i.i.i ] ; 2 uses
  %i.ec = add nuw i64 %.sink126.i.i.i.i, 1
  store i64 %i.ec, ptr %2, align 8, !tbaa !113
  %i.ed = load ptr, ptr %i.da, align 8, !tbaa !107
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.sink126.i.i.i.i
  %storemerge.in.in.in.in.i.i.i.i = load i32, ptr %i.ee, align 4, !tbaa !3 ; 9 uses
  %storemerge121.in.in.i.i.i.i = urem i32 %storemerge.in.in.in.in.i.i.i.i, 10
  %storemerge121.in.i.i.i.i = trunc nuw nsw i32 %storemerge121.in.in.i.i.i.i to i8
  %storemerge121.i.i.i.i = or disjoint i8 %storemerge121.in.i.i.i.i, 48
  store i8 %storemerge121.i.i.i.i, ptr %i.db, align 8, !tbaa !12
  %storemerge120.in.in.in.i.i.i.i = udiv i32 %storemerge.in.in.in.in.i.i.i.i, 10
  %storemerge119.in.in.in.i.i.i.i = udiv i32 %storemerge.in.in.in.in.i.i.i.i, 100
  %storemerge118.in.in.in.i.i.i.i = udiv i32 %storemerge.in.in.in.in.i.i.i.i, 1000
  %storemerge117.in.in.in.i.i.i.i = udiv i32 %storemerge.in.in.in.in.i.i.i.i, 10000
  %7 = insertelement <4 x i32> poison, i32 %storemerge117.in.in.in.i.i.i.i, i64 0
  %8 = insertelement <4 x i32> %7, i32 %storemerge118.in.in.in.i.i.i.i, i64 1
  %9 = insertelement <4 x i32> %8, i32 %storemerge119.in.in.in.i.i.i.i, i64 2
  %i.ef = insertelement <4 x i32> %9, i32 %storemerge120.in.in.in.i.i.i.i, i64 3
  %10 = urem <4 x i32> %i.ef, splat (i32 10)
  %11 = trunc nuw nsw <4 x i32> %10 to <4 x i8>
  %12 = or disjoint <4 x i8> %11, splat (i8 48)
  store <4 x i8> %12, ptr %i.dc, align 4, !tbaa !12
  %storemerge116.in.in.in.in.i.i.i.i = udiv i32 %storemerge.in.in.in.in.i.i.i.i, 100000
  %storemerge116.in.in.in.i.i.i.i = trunc nuw i32 %storemerge116.in.in.in.in.i.i.i.i to i16
  %storemerge116.in.in.i.i.i.i = urem i16 %storemerge116.in.in.in.i.i.i.i, 10
  %storemerge116.in.i.i.i.i = trunc nuw nsw i16 %storemerge116.in.in.i.i.i.i to i8
  %storemerge116.i.i.i.i = or disjoint i8 %storemerge116.in.i.i.i.i, 48
  store i8 %storemerge116.i.i.i.i, ptr %5, align 1, !tbaa !12
  %storemerge115.in.in.in.in.i.i.i.i = udiv i32 %storemerge.in.in.in.in.i.i.i.i, 1000000
  %storemerge115.in.in.in.i.i.i.i = trunc nuw nsw i32 %storemerge115.in.in.in.in.i.i.i.i to i16
  %storemerge115.in.in.i.i.i.i = urem i16 %storemerge115.in.in.in.i.i.i.i, 10
  %storemerge115.in.i.i.i.i = trunc nuw nsw i16 %storemerge115.in.in.i.i.i.i to i8
  %storemerge115.i.i.i.i = or disjoint i8 %storemerge115.in.i.i.i.i, 48
  store i8 %storemerge115.i.i.i.i, ptr %i.dd, align 2, !tbaa !12
  %storemerge114.in.in.in.in.i.i.i.i = udiv i32 %storemerge.in.in.in.in.i.i.i.i, 10000000
  %storemerge114.in.in.in.i.i.i.i = trunc nuw nsw i32 %storemerge114.in.in.in.in.i.i.i.i to i16
  %storemerge114.in.in.i.i.i.i = urem i16 %storemerge114.in.in.in.i.i.i.i, 10
  %storemerge114.in.i.i.i.i = trunc nuw nsw i16 %storemerge114.in.in.i.i.i.i to i8
  %storemerge114.i.i.i.i = or disjoint i8 %storemerge114.in.i.i.i.i, 48
  store i8 %storemerge114.i.i.i.i, ptr %6, align 1, !tbaa !12
  %storemerge.in.in.in.i.i.i.i = udiv i32 %storemerge.in.in.in.in.i.i.i.i, 100000000
  %storemerge.in.in.i.i.i.i = trunc nuw nsw i32 %storemerge.in.in.in.i.i.i.i to i8
  %storemerge.in.i.i.i.i = urem i8 %storemerge.in.in.i.i.i.i, 10
  %storemerge.i.i.i.i = or disjoint i8 %storemerge.in.i.i.i.i, 48
  store i8 %storemerge.i.i.i.i, ptr %4, align 8, !tbaa !12
  store i64 9, ptr %i.f, align 8, !tbaa !102
  %13 = load ptr, ptr %0, align 8, !tbaa !117, !nonnull !119, !align !120
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !31     ; 7 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %17 = load i64, ptr %16, align 8, !tbaa !75
  %18 = add i64 %17, 9
  store i64 %18, ptr %16, align 8, !tbaa !75
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 1056
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %21 = load ptr, ptr %20, align 8, !tbaa !78     ; 2 uses
  %22 = ptrtoint ptr %19 to i64
  %23 = ptrtoint ptr %21 to i64                   ; 2 uses
  %24 = sub i64 %22, %23
  %.not.i27.i.i.i.i = icmp ugt i64 %24, 9
  br i1 %.not.i27.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.a
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %23, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !79
  %i.el = load ptr, ptr %15, align 8, !tbaa !80
  call void %i.ek(ptr noundef %i.el, i64 %i.ei, ptr nonnull %i.eg), !inline_history !125
  store ptr %i.eg, ptr %20, align 8, !tbaa !78
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !79
  %i.en = load ptr, ptr %15, align 8, !tbaa !80
  call void %i.em(ptr noundef %i.en, i64 9, ptr nonnull %4), !inline_history !126
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.q:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %21, ptr noundef nonnull align 8 dereferenceable(9) %4, i64 9, i1 false)
  %i.eo = load ptr, ptr %20, align 8, !tbaa !78
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 9
  store ptr %i.ep, ptr %20, align 8, !tbaa !78
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.eq = load i64, ptr %2, align 8, !tbaa !113   ; 2 uses
  %i.er = load i64, ptr %i.a, align 8, !tbaa !109
  %.not.i28.i.i.i.i = icmp ult i64 %i.eq, %i.er
  br i1 %.not.i28.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.a, label %.loopexit.i.i.i.i, !llvm.loop !127

.loopexit.i.i.i.i:                                ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.peel.i.i.i.i
  %i.es = load ptr, ptr %0, align 8, !tbaa !117, !nonnull !119, !align !120 ; 4 uses
  %i.et = getelementptr i8, ptr %i.es, i64 8
  %.val.i.i.i.i = load i64, ptr %i.et, align 8, !tbaa !29
  %.not.i29.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.eu = getelementptr i8, ptr %i.es, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !7
  %i.ex = and i8 %i.ew, 8
  %.not67.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not67.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, %.loopexit.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !31 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !75
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !75
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1056
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 24 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !78 ; 2 uses
  %i.fg = icmp eq ptr %i.fd, %i.ff
  br i1 %i.fg, label %.lr.ph.i34.i.i.i.i, label %bb.r

.lr.ph.i34.i.i.i.i:                               ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !79
  %i.fk = load ptr, ptr %i.ez, align 8, !tbaa !80
  call void %i.fj(ptr noundef %i.fk, i64 1024, ptr nonnull %i.fh), !inline_history !124
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !78
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.i34.i.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i
  %.lcssa.i33.i.i.i.i = phi ptr [ %i.ff, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i ], [ %i.fh, %.lr.ph.i34.i.i.i.i ]
  store i8 46, ptr %.lcssa.i33.i.i.i.i, align 1
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !78
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store ptr %i.fm, ptr %i.fe, align 8, !tbaa !78
  %.pre79.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert80.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre79.i.i.i.i, i64 8
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !tbaa !29 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre79.i.i.i.i, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !31 ; 8 uses
  %i.fp = icmp eq i64 %.pre81.i.i.i.i, 0
  br i1 %i.fp, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !75
  %i.fs = add i64 %i.fr, %.pre81.i.i.i.i
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !75
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 1056 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 24 ; 8 uses
  %i.fv = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !78 ; 4 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fv, %i.fx                    ; 4 uses
  %i.fz = icmp ugt i64 %.pre81.i.i.i.i, %i.fy
  br i1 %i.fz, label %.lr.ph.i44.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.lr.ph.i44.i.i.i.i:                               ; preds = %bb.s
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 8 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.gd = sub nuw i64 %.pre81.i.i.i.i, %i.fy      ; 3 uses
  %.not.peel.i45.i.i.i.i = icmp eq ptr %i.ft, %i.fw
  br i1 %.not.peel.i45.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i44.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.fw, i8 48, i64 %i.fy, i1 false)
  %i.ge = load ptr, ptr %i.fu, align 8, !tbaa !78
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fy ; 2 uses
  store ptr %i.gf, ptr %i.fu, align 8, !tbaa !78
  %.pre.i46.i.i.i.i = ptrtoint ptr %i.gf to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i44.i.i.i.i
  %.pre-phi.i47.i.i.i.i = phi i64 [ %.pre.i46.i.i.i.i, %bb.t ], [ %i.fv, %.lr.ph.i44.i.i.i.i ]
  %i.gg = sub i64 %.pre-phi.i47.i.i.i.i, %i.gb
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !79
  %i.gi = load ptr, ptr %i.fo, align 8, !tbaa !80
  call void %i.gh(ptr noundef %i.gi, i64 %i.gg, ptr nonnull %i.ga), !inline_history !124
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !78
  %i.gj = icmp ugt i64 %i.gd, 1024
  br i1 %i.gj, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.peel.next.i48.i.i.i.i:                           ; preds = %bb.u, %.peel.next.i48.i.i.i.i
  %.010.i49.i.i.i.i = phi i64 [ %i.gk, %.peel.next.i48.i.i.i.i ], [ %i.gd, %bb.u ]
  %i.gk = add i64 %.010.i49.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ga, i8 48, i64 1024, i1 false)
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !78
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !79
  %i.gm = load ptr, ptr %i.fo, align 8, !tbaa !80
  call void %i.gl(ptr noundef %i.gm, i64 1024, ptr nonnull %i.ga), !inline_history !124
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !78
  %i.gn = icmp ugt i64 %i.gk, 1024
  br i1 %i.gn, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i, !llvm.loop !83

._crit_edge.i41.i.i.i.i:                          ; preds = %.peel.next.i48.i.i.i.i, %bb.u, %bb.s
  %.0.lcssa.i42.i.i.i.i = phi i64 [ %.pre81.i.i.i.i, %bb.s ], [ %i.gd, %bb.u ], [ %i.gk, %.peel.next.i48.i.i.i.i ] ; 2 uses
  %.lcssa.i43.i.i.i.i = phi ptr [ %i.fw, %bb.s ], [ %i.ga, %bb.u ], [ %i.ga, %.peel.next.i48.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i43.i.i.i.i, i8 48, i64 %.0.lcssa.i42.i.i.i.i, i1 false)
  %i.go = load ptr, ptr %i.fu, align 8, !tbaa !78
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.0.lcssa.i42.i.i.i.i
  store ptr %i.gp, ptr %i.fu, align 8, !tbaa !78
  %.pre82.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !117
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i: ; preds = %._crit_edge.i41.i.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i
  %.sink127.i.i.i.i = phi ptr [ %.pre82.i.i.i.i, %._crit_edge.i41.i.i.i.i ], [ %i.es, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.sink127.i.i.i.i, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !31
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i, %bb.r
  %i.gs = phi ptr [ %i.fo, %bb.r ], [ %i.gr, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i ] ; 7 uses
  %i.gt = icmp eq i64 %.sroa.10.065.i.i.i.i, 0
  br i1 %i.gt, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !75
  %i.gw = add i64 %i.gv, %.sroa.10.065.i.i.i.i
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !75
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 1056 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 8 uses
  %i.gz = ptrtoint ptr %i.gx to i64               ; 2 uses
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !78 ; 4 uses
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = sub i64 %i.gz, %i.hb                    ; 4 uses
  %i.hd = icmp ugt i64 %.sroa.10.065.i.i.i.i, %i.hc
  br i1 %i.hd, label %.lr.ph.i54.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.lr.ph.i54.i.i.i.i:                               ; preds = %bb.v
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 32 ; 8 uses
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.hh = sub nuw nsw i64 %.sroa.10.065.i.i.i.i, %i.hc ; 3 uses
  %.not.peel.i55.i.i.i.i = icmp eq ptr %i.gx, %i.ha
  br i1 %.not.peel.i55.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i54.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ha, i8 32, i64 %i.hc, i1 false)
  %i.hi = load ptr, ptr %i.gy, align 8, !tbaa !78
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hc ; 2 uses
  store ptr %i.hj, ptr %i.gy, align 8, !tbaa !78
  %.pre.i56.i.i.i.i = ptrtoint ptr %i.hj to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i54.i.i.i.i
  %.pre-phi.i57.i.i.i.i = phi i64 [ %.pre.i56.i.i.i.i, %bb.w ], [ %i.gz, %.lr.ph.i54.i.i.i.i ]
  %i.hk = sub i64 %.pre-phi.i57.i.i.i.i, %i.hf
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !79
  %i.hm = load ptr, ptr %i.gs, align 8, !tbaa !80
  call void %i.hl(ptr noundef %i.hm, i64 %i.hk, ptr nonnull %i.he), !inline_history !124
  store ptr %i.he, ptr %i.gy, align 8, !tbaa !78
  %i.hn = icmp ugt i64 %i.hh, 1024
  br i1 %i.hn, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.peel.next.i58.i.i.i.i:                           ; preds = %bb.x, %.peel.next.i58.i.i.i.i
  %.010.i59.i.i.i.i = phi i64 [ %i.ho, %.peel.next.i58.i.i.i.i ], [ %i.hh, %bb.x ]
  %i.ho = add i64 %.010.i59.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.he, i8 32, i64 1024, i1 false)
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !78
  %i.hp = load ptr, ptr %i.hg, align 8, !tbaa !79
  %i.hq = load ptr, ptr %i.gs, align 8, !tbaa !80
  call void %i.hp(ptr noundef %i.hq, i64 1024, ptr nonnull %i.he), !inline_history !124
  store ptr %i.he, ptr %i.gy, align 8, !tbaa !78
  %i.hr = icmp ugt i64 %i.ho, 1024
  br i1 %i.hr, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i, !llvm.loop !83

._crit_edge.i51.i.i.i.i:                          ; preds = %.peel.next.i58.i.i.i.i, %bb.x, %bb.v
  %.0.lcssa.i52.i.i.i.i = phi i64 [ %.sroa.10.065.i.i.i.i, %bb.v ], [ %i.hh, %bb.x ], [ %i.ho, %.peel.next.i58.i.i.i.i ] ; 2 uses
  %.lcssa.i53.i.i.i.i = phi ptr [ %i.ha, %bb.v ], [ %i.he, %bb.x ], [ %i.he, %.peel.next.i58.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i53.i.i.i.i, i8 32, i64 %.0.lcssa.i52.i.i.i.i, i1 false)
  %i.hs = load ptr, ptr %i.gy, align 8, !tbaa !78
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.0.lcssa.i52.i.i.i.i
  store ptr %i.ht, ptr %i.gy, align 8, !tbaa !78
  br label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit": ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, %._crit_edge.i51.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) #0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::FractionalDigitGenerator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !23
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !23
end_hunk_0
