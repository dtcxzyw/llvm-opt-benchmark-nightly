Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.10?download=true
inline.NumInlined: 102
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorEBS_:bb.a
.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.09 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.0.09, %i.f
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = xor i64 %.sroa.0.09, -1
  %i.k = add i64 %4, %i.j                         ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.f, i64 %i.f, ptr nonnull align 8 @5) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.09 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.o = add nuw i64 %.sroa.0.09, 1               ; 2 uses
  %exitcond13.not = icmp eq i64 %i.o, %4
  br i1 %exitcond13.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.k, i64 %i.i, ptr nonnull align 8 @6) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEBS_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i64 %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State12split_at_mutBy_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %0, i64 %1, i64 %4, ptr nonnull align 8 @3) #25
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State12split_at_mutBy_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %2, i64 %3, i64 %4, ptr nonnull align 8 @4) #25
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.09 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.0.09, %i.e
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = xor i64 %.sroa.0.09, -1
  %i.j = add i64 %4, %i.i                         ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.e, i64 %i.e, ptr nonnull align 8 @5) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.0.09 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j ; 2 uses
  %i.n = load i64, ptr %i.l, align 8
  %i.o = load i64, ptr %i.m, align 8
  store i64 %i.o, ptr %i.l, align 8
  store i64 %i.n, ptr %i.m, align 8
  %i.p = add nuw i64 %.sroa.0.09, 1               ; 2 uses
  %exitcond13.not = icmp eq i64 %i.p, %4
  br i1 %exitcond13.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.j, i64 %i.h, ptr nonnull align 8 @6) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapRNtCsgSMwPvzVUxY_11proc_macro25IdentECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i64 %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSRNtCsgSMwPvzVUxY_11proc_macro25Ident12split_at_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %0, i64 %1, i64 %4, ptr nonnull align 8 @3) #25
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSRNtCsgSMwPvzVUxY_11proc_macro25Ident12split_at_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %2, i64 %3, i64 %4, ptr nonnull align 8 @4) #25
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.09 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.0.09, %i.e
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = xor i64 %.sroa.0.09, -1
  %i.j = add i64 %4, %i.i                         ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.e, i64 %i.e, ptr nonnull align 8 @5) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.0.09 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.m, align 8
  store ptr %i.o, ptr %i.l, align 8
  store ptr %i.n, ptr %i.m, align 8
  %i.p = add nuw i64 %.sroa.0.09, 1               ; 2 uses
  %exitcond13.not = icmp eq i64 %i.p, %4
  br i1 %exitcond13.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.j, i64 %i.h, ptr nonnull align 8 @6) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBR_5StateEEBT_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i64 %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBx_5StateE12split_at_mutBz_(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr align 8 %0, i64 %1, i64 %4, ptr nonnull align 8 @3) #25
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBx_5StateE12split_at_mutBz_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, i64 %3, i64 %4, ptr nonnull align 8 @4) #25
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.09 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.0.09, %i.f
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = xor i64 %.sroa.0.09, -1
  %i.k = add i64 %4, %i.j                         ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.f, i64 %i.f, ptr nonnull align 8 @5) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.0.09 ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.o = add nuw i64 %.sroa.0.09, 1               ; 2 uses
  %exitcond13.not = icmp eq i64 %i.o, %4
  br i1 %exitcond13.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.k, i64 %i.i, ptr nonnull align 8 @6) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen(ptr nofree align 8 captures(none) %0, i64 %1, ptr nofree align 8 captures(none) %2, i64 %3, i64 %4) unnamed_addr #1 {
bb.a:
  %.not.i = icmp ugt i64 %4, %1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @20, ptr nonnull inttoptr (i64 19 to ptr), ptr nonnull align 8 @3) #29
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  %.not.i7 = icmp ugt i64 %4, %3
  br i1 %.not.i7, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.preheader
  %i.a = getelementptr [16 x i8], ptr %2, i64 %4  ; 3 uses
  %i.b = icmp eq i64 %4, 1
  br i1 %i.b, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %4, -2
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @20, ptr nonnull inttoptr (i64 19 to ptr), ptr nonnull align 8 @4) #29
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11
  %lcmp.mod.not = trunc i64 %4 to i1
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge

_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.016.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.c = xor i64 %.sroa.0.016.epil.init, -1
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.epil.init ; 2 uses
  %i.e = getelementptr [16 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store <2 x ptr> %i.f, ptr %i.e, align 8
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge

_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.preheader
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11, %.lr.ph.preheader.new
  %.sroa.0.016 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11 ]
  %i.g = xor i64 %.sroa.0.016, -1
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016 ; 2 uses
  %i.i = getelementptr [16 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  store <2 x ptr> %i.j, ptr %i.i, align 8
  %i.k = xor i64 %.sroa.0.016, -2
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store <2 x ptr> %i.o, ptr %i.n, align 8
  %i.p = add nuw i64 %.sroa.0.016, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11._crit_edge.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_7FlatMapINtNtB8_10filter_map9FilterMapINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB1E_4path11PathSegmentENCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime0EIB1A_NtB2i_15GenericArgumentENCB2J_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4z_8for_each4callQB41_NCB2J_s0_0E0EB2P_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB21_4path11PathSegmentENCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime0ENCB36_s_0EIB1X_NtB2F_15GenericArgumentEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4t_uNCINvNvB5t_8for_each4callQB4y_NCB36_s0_0E0E0EB3c_(ptr nonnull align 8 %i.a) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvXsK_NtNtNtCskKLDkoKarTP_4core4iter6traits5accumjNtB6_3Sum3sumINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2SM5xCHwwDm_13logos_codegen5graph11ComparisonsENCNvMNtNtB1W_9generator4forkNtB2Q_9Generator15impl_fork_match0EEB1W_(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2SM5xCHwwDm_13logos_codegen5graph11ComparisonsENCNvMNtNtB1r_9generator4forkNtB2l_9Generator15impl_fork_match0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvXsK_NtB3j_5accumjNtB42_3Sum3sumBN_E0EB1r_(ptr %0, ptr %1, i64 0)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvXsK_NtNtNtCskKLDkoKarTP_4core4iter6traits5accumjNtB6_3Sum3sumINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs8UJyeeIGyGC_12regex_syntax3hir3HirENvMNtCs2SM5xCHwwDm_13logos_codegen7patternNtB2A_7Pattern10complexityEEB2C_(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8UJyeeIGyGC_12regex_syntax3hir3HirENvMNtCs2SM5xCHwwDm_13logos_codegen7patternNtB25_7Pattern10complexityENtNtNtBa_6traits8iterator8Iterator4foldjNCINvXsK_NtB3d_5accumjNtB3W_3Sum3sumBN_E0EB27_(ptr %0, ptr %1, i64 0)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB21_4path11PathSegmentENCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime0ENCB36_s_0EIB1X_NtB2F_15GenericArgumentEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4X_8for_each4callQB4y_NCB36_s0_0E0EB3c_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB21_4path11PathSegmentENCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime0ENCB36_s_0EIB1X_NtB2F_15GenericArgumentEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4t_uNCINvNvB5t_8for_each4callQB4y_NCB36_s0_0E0E0EB3c_(ptr align 8 %0) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RINvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB8_2ty4TypeNtNtB8_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1z_3num7nonzero7NonZerojENCNvXs_NvB1r_10advance_byB3_NtB39_13SpecAdvanceBy15spec_advance_by0INtNtB1z_6option6OptionB2v_EECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1P_14PrivateIterMutBK_B1e_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty4TypeE7or_elseNCNvXsB_NtBN_10punctuatedINtB1u_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.01.0, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi i64 [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RINvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB8_2ty9BareFnArgNtNtB8_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1E_3num7nonzero7NonZerojENCNvXs_NvB1w_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtB1E_6option6OptionB2A_EECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1U_14PrivateIterMutBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn2ty9BareFnArgE7or_elseNCNvXsB_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.01.0, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi i64 [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RINvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB8_4data7VariantNtNtB8_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1E_3num7nonzero7NonZerojENCNvXs_NvB1w_10advance_byB3_NtB3e_13SpecAdvanceBy15spec_advance_by0INtNtB1E_6option6OptionB2A_EECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn4data7VariantNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn4data7VariantNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB1U_14PrivateIterMutBK_B1j_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4data7VariantE7or_elseNCNvXsB_NtBN_10punctuatedINtB1z_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.01.0, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi i64 [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RINvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB8_4path15GenericArgumentNtNtB8_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1N_3num7nonzero7NonZerojENCNvXs_NvB1F_10advance_byB3_NtB3n_13SpecAdvanceBy15spec_advance_by0INtNtB1N_6option6OptionB2J_EECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.b = tail call align 8 ptr @_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBX_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25
  %i.c = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBO_5token5CommaEE3mapQBK_NCNvXsB_NtBO_10punctuatedINtB23_14PrivateIterMutBK_B1s_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.b) #25
  %i.d = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentE7or_elseNCNvXsB_NtBN_10punctuatedINtB1I_14PrivateIterMutBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr nonnull align 8 %i.a) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.01.0, -1
  %i.f = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCshx33xqnyVJN_3syn(i64 %i.e) #25 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @_RNvXsJ_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try11from_outputCshx33xqnyVJN_3syn(i64 %.sroa.01.0) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i64 @_RNvXsK_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualCshx33xqnyVJN_3syn() #25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi i64 [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i64 %.sroa.0.0
}

end_hunk_0
begin_hunk_1_@_RNvMNtCshx33xqnyVJN_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data7VariantNtNtB4_5token5CommaE8iter_mutCs2SM5xCHwwDm_13logos_codegen:bb.a
  %i.j = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCshx33xqnyVJN_3syn4data7VariantEE6as_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.i) #25
  %i.k = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCshx33xqnyVJN_3syn4data7VariantEE3mapQB1i_NvYBJ_INtNtB5_7convert5AsMutB1i_E6as_mutECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.j) #25
  %i.l = tail call align 8 ptr @_RNvXs8_NtCskKLDkoKarTP_4core6optionINtB5_6OptionQNtNtCshx33xqnyVJN_3syn4data7VariantENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.k) #25
  store ptr %i.g, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.n, align 8
  call void @_RNvMNtCshx33xqnyVJN_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_4data7VariantNtNtB4_5token5CommaEE3newCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.o = call ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs2SM5xCHwwDm_13logos_codegen(i64 8, i64 24) #25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @15, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCshx33xqnyVJN_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path15GenericArgumentNtNtB4_5token5CommaE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvXs9_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = tail call { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNtNtBz_5token5CommaE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.d, i64 %i.e) #25 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCshx33xqnyVJN_3syn4path15GenericArgumentEE6as_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.i) #25
  %i.k = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCshx33xqnyVJN_3syn4path15GenericArgumentEE3mapQB1i_NvYBJ_INtNtB5_7convert5AsMutB1i_E6as_mutECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.j) #25
  %i.l = tail call align 8 ptr @_RNvXs8_NtCskKLDkoKarTP_4core6optionINtB5_6OptionQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.k) #25
  store ptr %i.g, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.n, align 8
  call void @_RNvMNtCshx33xqnyVJN_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_4path15GenericArgumentNtNtB4_5token5CommaEE3newCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.o = call ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs2SM5xCHwwDm_13logos_codegen(i64 8, i64 24) #25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @17, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMNtCshx33xqnyVJN_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE3lenCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtCshx33xqnyVJN_3syn8generics12GenericParamNtNtBJ_5token5CommaEE3lenBJ_(ptr align 8 %0) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call zeroext i1 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCshx33xqnyVJN_3syn8generics12GenericParamEE7is_someB1k_(ptr nonnull align 8 %i.b) #25
  %. = zext i1 %i.c to i64
  %i.d = add i64 %i.a, %.
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCshx33xqnyVJN_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvXs9_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #25 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = tail call { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundNtNtBz_5token4PlusE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.d, i64 %i.e) #25 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = tail call align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundEE6as_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.i) #25
  %i.k = tail call align 8 ptr @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundEE3mapQB1i_NvYBJ_INtNtB5_7convert5AsMutB1i_E6as_mutECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.j) #25
  %i.l = tail call align 8 ptr @_RNvXs8_NtCskKLDkoKarTP_4core6optionINtB5_6OptionQNtNtCshx33xqnyVJN_3syn8generics14TypeParamBoundENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.k) #25
  store ptr %i.g, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.n, align 8
  call void @_RNvMNtCshx33xqnyVJN_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated14PrivateIterMutNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusEE3newCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.o = call ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCs2SM5xCHwwDm_13logos_codegen(i64 8, i64 24) #25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.o, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @19, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5error12SpannedError4iterBy_(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs2SM5xCHwwDm_13logos_codegen5error12SpannedErrorE3newBS_(ptr align 8 %0, i64 %1) #25
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBz_5token5CommaE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_7IterMutTNtNtCshx33xqnyVJN_3syn2ty4TypeNtNtBW_5token5CommaEE3newCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) #25
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBz_5token5CommaE8iter_mutCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_7IterMutTNtNtCshx33xqnyVJN_3syn2ty9BareFnArgNtNtBW_5token5CommaEE3newCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) #25
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @20, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE14swap_uncheckedCs2SM5xCHwwDm_13logos_codegen(ptr nofree align 8 captures(none) %0, i64 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE18split_at_uncheckedCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE22split_at_mut_uncheckedCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE4iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTRAbj100_RjEE3newCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) #25
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE6chunksCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @21, ptr nonnull inttoptr (i64 55 to ptr), ptr align 8 %4) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE7reverseCs2SM5xCHwwDm_13logos_codegen(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 5 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.c = icmp eq i64 %i.a, 1
  br i1 %i.c, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.a, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i, %.lr.ph.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.m, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i ]
  %i.d = xor i64 %.sroa.0.016.i, -1
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i ; 2 uses
  %i.f = getelementptr [16 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store <2 x ptr> %i.g, ptr %i.f, align 8
  %i.h = xor i64 %.sroa.0.016.i, -2
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr [16 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.j, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  store <2 x ptr> %i.l, ptr %i.k, align 8
  %i.m = add nuw nsw i64 %.sroa.0.016.i, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i

_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i
  %lcmp.mod.not = trunc i64 %i.a to i1
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i.epil.preheader, label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.m, %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.n = xor i64 %.sroa.0.016.i.epil.init, -1
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.epil.init ; 2 uses
  %i.p = getelementptr [16 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.o, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  store <2 x ptr> %i.q, ptr %i.p, align 8
  br label %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit

_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE12split_at_mutCs2SM5xCHwwDm_13logos_codegen.exit11.i.epil.preheader, %_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRAbj100_RjEECs2SM5xCHwwDm_13logos_codegen.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE8split_atCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @20, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSj4iterCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterjE3newCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) #25
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB2_5Input5startCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB2_5Input8earliestCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree align 8 captures(none) initializes((40, 41)) %1, i1 zeroext %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = zext i1 %2 to i8
  store i8 %i.b, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB2_5Input9set_startCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.a, align 8
  tail call void @_RINvMNtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanEB7_(ptr align 8 %0, i64 %1, i64 %.val1) #25
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen(i64 %0, i64 %1, i1 zeroext %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 %1, i64 %0) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = tail call ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 %1, i64 %0) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %1, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global19shrink_impl_runtimeCs2SM5xCHwwDm_13logos_codegen(ptr nofree readnone captures(none) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i1 zeroext %6) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %5, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, %4
  br i1 %i.c, label %bb.f, label %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.d = inttoptr i64 %4 to ptr
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr %1, i64 %3, i64 %2) #30
  br label %bb.d

_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.e = tail call ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 %5, i64 %4) #30 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.g = tail call ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr %1, i64 %3, i64 %2, i64 %5) #30
  br label %bb.i

bb.g:                                             ; preds = %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %1, i64 %5, i1 false)
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr %1, i64 %3, i64 %2) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen.exit, %bb.f, %bb.d
  %.sroa.6.0 = phi i64 [ 0, %bb.d ], [ %5, %bb.g ], [ %5, %bb.h ], [ %5, %bb.f ], [ undef, %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen.exit ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.d ], [ %i.e, %bb.g ], [ %i.e, %bb.h ], [ %i.g, %bb.f ], [ null, %_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global18alloc_impl_runtimeCs2SM5xCHwwDm_13logos_codegen.exit ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMsb_NtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB5_5Match3endCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  ret i64 %.val1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMsb_NtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB5_5Match5startCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %.val = load i64, ptr %0, align 8
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMsb_NtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB5_5Match8is_emptyCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %.val = load i64, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  %i.b = icmp uge i64 %.val, %.val1
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs36YJ3mR2EUy_5quote9to_tokensRNtNtCs2SM5xCHwwDm_13logos_codegen5error12SpannedErrorNtB2_8ToTokens9to_tokensBD_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXs_NtCs2SM5xCHwwDm_13logos_codegen5errorNtB4_12SpannedErrorNtNtCs36YJ3mR2EUy_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBQ_4path15GenericArgumentENtB2_12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters7flatten7FlatMapINtNtNtB8_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1N_5StateEEINtNtBQ_6cloned6ClonedIB1l_INtNtNtB8_3ops5range14RangeInclusivehEEENCNvMs1_B1N_NtB1N_9StateData9can_error0ENtB2_12IntoIterator9into_iterB1P_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

end_hunk_1
