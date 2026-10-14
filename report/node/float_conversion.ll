Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/float_conversion?download=true
inline.NumInlined: 657
inline.NumDeleted: 259
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS_11FunctionRefIFvNS_4SpanIjEEEEE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %0, 127
  %i.c = lshr i64 %i.b, 7
  switch i64 %i.c, label %bb.i [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm1EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %1, ptr %2)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm2EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %1, ptr %2)
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm3EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %1, ptr %2)
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm4EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %1, ptr %2)
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm5EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %1, ptr %2)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 90, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS_11FunctionRefIFvNS_4SpanIjEEEEE) #19
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm1EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [128 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 128) #18, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm2EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 256) #18, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm3EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [384 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1536) %i.a, i8 0, i64 1536, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 384) #18, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm4EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 512) #18, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm5EEEvNS_11FunctionRefIFvNS_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [640 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2560) %i.a, i8 0, i64 2560, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 640) #18, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS_7uint128EiNS_11FunctionRefIFvS4_EEEEUlNS_4SpanIjEEE_vJSA_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) #0 {
bb.a:
  %3 = alloca %"class.absl::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 4 uses
  %4 = alloca %"class.absl::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 16             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %1, ptr %i.e, align 8
  %.sroa.224.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %2, ptr %.sroa.224.0..sroa_idx.i.i.i.i.i, align 8
  %i.f = sdiv i32 %i.c, 32
  %i.g = srem i32 %i.c, 32                        ; 2 uses
  %i.h = add nsw i32 %i.f, 1                      ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = add nsw i32 %i.c, 159
  %i.k = sdiv i32 %i.j, 32
  %i.l = mul nsw i32 %i.k, 11
  %i.m = sdiv i32 %i.l, 10
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = add nsw i64 %i.i, -1                     ; 2 uses
  %i.q = icmp ult i64 %i.p, %2
  br i1 %i.q, label %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4SpanIjEixEmENKUlvE_clEv) #19
  unreachable

_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i:             ; preds = %bb.a
  %i.r = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128 ; 2 uses
  %i.s = zext nneg i32 %i.g to i128
  %i.t = shl i128 %i.r, %i.s
  %i.u = trunc i128 %i.t to i32
  %i.v = zext i64 %.sroa.2.0.copyload.i.i.i.i to i128
  %i.w = shl nuw i128 %i.v, 64
  %i.x = or disjoint i128 %i.w, %i.r
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  store i32 %i.u, ptr %i.y, align 4
  %i.z = sub nsw i32 32, %i.g
  %i.aa = zext nneg i32 %i.z to i128
  %i.ab = lshr i128 %i.x, %i.aa                   ; 2 uses
  %i.ac = trunc i128 %i.ab to i64                 ; 2 uses
  %i.ad = lshr i128 %i.ab, 64                     ; 2 uses
  %.not.i52.i.i.i.i.i = icmp ne i64 %i.ac, 0
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = or i1 %.not.i52.i.i.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph.preheader.i.i.i.i.i, label %.preheader49.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i23 = icmp eq i64 %2, %i.i
  br i1 %exitcond.not.i.i.i.i23, label %.lr.ph.i.i.i.i.i._crit_edge, label %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i.lr.ph, !prof !55

_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i.lr.ph:     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ag = trunc nuw nsw i128 %i.ad to i64
  br label %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i

.preheader49.i.i.i.i.i:                           ; preds = %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i
  %.not58.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not58.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i.i.i.i._crit_edge, label %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i, !prof !56, !llvm.loop !50

.lr.ph.i.i.i.i.i._crit_edge:                      ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4SpanIjEixEmENKUlvE_clEv) #19
  unreachable

_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i:           ; preds = %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i.lr.ph, %.lr.ph.i.i.i.i.i
  %.sroa.8.053.i.i.i.i.i26 = phi i64 [ %i.ag, %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i.lr.ph ], [ %i.aq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.041.054.i.i.i.i.i25 = phi i64 [ %i.ac, %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i.lr.ph ], [ %i.ap, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.02555.i.i.i.i.i24 = phi i64 [ %i.i, %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i.lr.ph ], [ %i.ah, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ah = add i64 %.02555.i.i.i.i.i24, 1          ; 3 uses
  %i.ai = trunc i64 %.sroa.041.054.i.i.i.i.i25 to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02555.i.i.i.i.i24
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = zext nneg i64 %.sroa.8.053.i.i.i.i.i26 to i128
  %i.al = shl nuw nsw i128 %i.ak, 64
  %i.am = zext i64 %.sroa.041.054.i.i.i.i.i25 to i128
  %i.an = or disjoint i128 %i.al, %i.am
  %i.ao = lshr i128 %i.an, 32
  %i.ap = trunc i128 %i.ao to i64                 ; 2 uses
  %i.aq = lshr i64 %.sroa.8.053.i.i.i.i.i26, 32   ; 2 uses
  %i.ar = or i64 %i.aq, %i.ap
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %.preheader.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i, !llvm.loop !50

.preheader.i.i.i.i.i.preheader:                   ; preds = %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i, %.preheader49.i.i.i.i.i
  %.159.i.i.i.i.i.ph = phi i64 [ %i.i, %.preheader49.i.i.i.i.i ], [ %i.ah, %_ZNK4absl4SpanIjEixEm.exit32.i.i.i.i.i ]
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %_ZNK4absl4SpanIjEixEm.exit39.i.i.i.i.i
  %i.as = phi i64 [ %i.ay, %_ZNK4absl4SpanIjEixEm.exit39.i.i.i.i.i ], [ %i.n, %.preheader.i.i.i.i.i.preheader ] ; 2 uses
  %.159.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %_ZNK4absl4SpanIjEixEm.exit39.i.i.i.i.i ], [ %.159.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.preheader ] ; 7 uses
  %i.at = add i64 %.159.i.i.i.i.i, -1             ; 4 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.at, %2
  br i1 %.first_iter.i.i.i.i, label %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader, label %bb.c, !prof !20

_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader: ; preds = %.preheader.i.i.i.i.i
  %xtraiter = and i64 %.159.i.i.i.i.i, 1
  %5 = icmp eq i64 %i.at, 0
  br i1 %5, label %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.epil.preheader, label %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader.new

_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader.new: ; preds = %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.159.i.i.i.i.i, -2
  br label %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i

_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i.unr-lcssa: ; preds = %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i, label %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.epil.preheader

_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.epil.preheader: ; preds = %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i.unr-lcssa, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader
  %.02657.i.i.i.i.i.epil.init = phi i64 [ %.159.i.i.i.i.i, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader ], [ %i.az, %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i.unr-lcssa ]
  %.02756.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader ], [ %i.bh, %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %.159.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %6 = getelementptr [4 x i8], ptr %1, i64 %.02657.i.i.i.i.i.epil.init
  %7 = getelementptr i8, ptr %6, i64 -4           ; 2 uses
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %.02756.i.i.i.i.i.epil.init, 32
  %11 = or disjoint i64 %10, %9                   ; 2 uses
  %12 = udiv i64 %11, 1000000000
  %13 = trunc nuw i64 %12 to i32
  store i32 %13, ptr %7, align 4
  %14 = urem i64 %11, 1000000000
  br label %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i

_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i:           ; preds = %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i.unr-lcssa, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.bh, %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i.unr-lcssa ], [ %14, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.epil.preheader ]
  %i.au = trunc nuw nsw i64 %.lcssa to i32
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, 0
  %spec.select.i.i.i.i.i = select i1 %i.ax, i64 %i.at, i64 %.159.i.i.i.i.i ; 3 uses
  %i.ay = add i64 %i.as, -1                       ; 4 uses
  %.not31.i.i.i.i.i = icmp eq i64 %i.as, %spec.select.i.i.i.i.i
  br i1 %.not31.i.i.i.i.i, label %bb.d, label %bb.e

_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i:           ; preds = %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader.new
  %.02657.i.i.i.i.i = phi i64 [ %.159.i.i.i.i.i, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader.new ], [ %i.az, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i ] ; 2 uses
  %.02657.i.i.i.i.i.a = phi i64 [ 0, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader.new ], [ %i.bh, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i ]
  %.02756.i.i.i.i.i = phi i64 [ 0, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i ]
  %15 = getelementptr [4 x i8], ptr %1, i64 %.02657.i.i.i.i.i
  %16 = getelementptr i8, ptr %15, i64 -4         ; 2 uses
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %.02657.i.i.i.i.i.a, 32
  %20 = or disjoint i64 %19, %18                  ; 2 uses
  %21 = udiv i64 %20, 1000000000
  %22 = trunc nuw i64 %21 to i32
  store i32 %22, ptr %16, align 4
  %23 = urem i64 %20, 1000000000
  %i.az = add i64 %.02657.i.i.i.i.i, -2           ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %23, 32
  %i.be = or disjoint i64 %i.bd, %i.bc            ; 2 uses
  %i.bf = udiv i64 %i.be, 1000000000
  %i.bg = trunc nuw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.ba, align 4
  %i.bh = urem i64 %i.be, 1000000000              ; 3 uses
  %niter.next.1 = add i64 %.02756.i.i.i.i.i, 2    ; 2 uses
  %.not30.i.i.i.i.i = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %.not30.i.i.i.i.i, label %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i.unr-lcssa, label %_ZNK4absl4SpanIjEixEm.exit38.i.i.i.i.i, !llvm.loop !51

bb.c:                                             ; preds = %.preheader.i.i.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4SpanIjEixEmENKUlvE_clEv) #19
  unreachable

bb.d:                                             ; preds = %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef 221, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimalC2ENS_4SpanIjEENS_7uint128Ei) #19
  unreachable

bb.e:                                             ; preds = %_ZNK4absl4SpanIjEixEm.exit36.i.i.i.i.i
  %i.bi = icmp ult i64 %i.ay, %2
  br i1 %i.bi, label %_ZNK4absl4SpanIjEixEm.exit39.i.i.i.i.i, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4SpanIjEixEmENKUlvE_clEv) #19
  unreachable

_ZNK4absl4SpanIjEixEm.exit39.i.i.i.i.i:           ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  store i32 %i.au, ptr %i.bj, align 4
  %.not.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !52

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNK4absl4SpanIjEixEm.exit39.i.i.i.i.i, %.preheader49.i.i.i.i.i
  %i.bk = phi i64 [ %i.n, %.preheader49.i.i.i.i.i ], [ %i.ay, %_ZNK4absl4SpanIjEixEm.exit39.i.i.i.i.i ] ; 3 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %4, align 8
  %i.bm = icmp ult i64 %i.bk, %2
  br i1 %i.bm, label %_ZNK4absl4SpanIjEixEm.exit40.i.i.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4SpanIjEixEmENKUlvE_clEv) #19
  unreachable

_ZNK4absl4SpanIjEixEm.exit40.i.i.i.i.i:           ; preds = %._crit_edge.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %.not2960.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not2960.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_JS9_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit, label %.lr.ph62.i.i.i.i.i

.lr.ph62.i.i.i.i.i:                               ; preds = %_ZNK4absl4SpanIjEixEm.exit40.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph62.i.i.i.i.i
  %.061.i.i.i.i.i = phi i32 [ %i.bo, %.lr.ph62.i.i.i.i.i ], [ %i.bx, %bb.h ] ; 3 uses
  %i.bq = urem i32 %.061.i.i.i.i.i, 10
  %i.br = trunc nuw nsw i32 %i.bq to i8
  %i.bs = or disjoint i8 %i.br, 48
  %i.bt = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.d, align 8
  %i.bv = sub i64 8, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bv
  store i8 %i.bs, ptr %i.bw, align 1
  %i.bx = udiv i32 %.061.i.i.i.i.i, 10
  %.not29.i.i.i.i.i = icmp ult i32 %.061.i.i.i.i.i, 10
  br i1 %.not29.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_JS9_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit, label %bb.h, !llvm.loop !53

_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_JS9_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit: ; preds = %bb.h, %_ZNK4absl4SpanIjEixEm.exit40.i.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %0, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  call void %.val5.i.i.i.i(ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %3) #18, !inline_history !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS_7uint128EiRKNS3_11FormatStateEE3$_0vJNS3_15BinaryToDecimalEEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 {
bb.a:
  %2 = alloca %"class.absl::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %2, align 8
  %i.d = sub i64 %i.b, %i.c
  %i.e = mul i64 %i.d, 9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.e, %i.g
  %i.i = load ptr, ptr %0, align 8, !nonnull !22, !align !23 ; 8 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.j, align 8    ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.k, align 8    ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 8
  %.not66.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not66.i.i.i.i, label %bb.b, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i: ; preds = %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, %bb.a
  %i.o = add i64 %.val3.i.i.i.i, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i
  %i.p = phi i64 [ %i.o, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i ], [ 0, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i ]
  %i.q = add i64 %i.h, %i.p
  %i.r = load i8, ptr %i.i, align 8               ; 5 uses
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = zext i1 %.not.i.i.i.i to i64
  %i.t = add i64 %i.q, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !noalias !63 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %.not.i6.i.i.i.i = icmp ult i64 %i.t, %i.x
  br i1 %.not.i6.i.i.i.i, label %bb.d, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = sub nuw nsw i64 %i.x, %i.t               ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !63 ; 2 uses
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i8 %i.aa, 16
  %.not1.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, %i.y
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1056 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 8 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.ak, %i.am                    ; 4 uses
  %i.ao = icmp ugt i64 %i.y, %i.an
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 8 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.as = sub nuw nsw i64 %i.y, %i.an             ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.peel.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 32, i64 %i.an, i1 false)
  %i.at = load ptr, ptr %i.aj, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  store ptr %i.au, ptr %i.aj, align 8
  %.pre.i.i.i.i.i = ptrtoint ptr %i.au to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.av = sub i64 %.pre-phi.i.i.i.i.i, %i.aq
  %i.aw = load ptr, ptr %i.ar, align 8
  %i.ax = load ptr, ptr %i.ae, align 8
  tail call void %i.aw(ptr noundef %i.ax, i64 %i.av, ptr nonnull %i.ap) #18, !inline_history !59
  store ptr %i.ap, ptr %i.aj, align 8
  %i.ay = icmp samesign ugt i64 %i.as, 1024
  br i1 %i.ay, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.g, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.az, %.peel.next.i.i.i.i.i ], [ %i.as, %bb.g ]
  %i.az = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 32, i64 1024, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ba = load ptr, ptr %i.ar, align 8
  %i.bb = load ptr, ptr %i.ae, align 8
  tail call void %i.ba(ptr noundef %i.bb, i64 1024, ptr nonnull %i.ap) #18, !inline_history !59
  store ptr %i.ap, ptr %i.aj, align 8
  %i.bc = icmp ugt i64 %i.az, 1024
  br i1 %i.bc, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !9

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.g, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.y, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i ], [ %i.as, %bb.g ], [ %i.az, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.bd = load ptr, ptr %i.aj, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.be, ptr %i.aj, align 8
  %.pre.i.i.i.i = load ptr, ptr %0, align 8       ; 2 uses
  %.pre74.i.i.i.i = load i8, ptr %.pre.i.i.i.i, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bf = phi i8 [ %.pre74.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
end_hunk_0
