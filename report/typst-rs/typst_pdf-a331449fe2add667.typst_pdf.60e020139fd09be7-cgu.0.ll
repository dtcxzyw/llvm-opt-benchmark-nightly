Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22309
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.t:                                             ; preds = %bb.p, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.val20.i.i = load ptr, ptr %i.b, align 8, !noalias !22309, !nonnull !10, !noundef !10
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %.val20.i.i) #44
          to label %common.resume.i.i unwind label %bb.u, !noalias !22309

bb.u:                                             ; preds = %bb.t
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !22309
  unreachable

_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsh_NtCsidf7BFzONoc_6krilla9configureNtB5_18ConfigurationErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !64, !noundef !10
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @606, i64 noundef 34, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @605, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @603)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.f, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @604, i64 noundef 28, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @603)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !range !48, !noundef !10 ; 4 uses
  %.not = icmp eq i32 %i.c, -1                    ; 2 uses
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22331)
  %i.d = icmp samesign ugt i32 %i.c, 1
  %i.e = zext nneg i32 %i.c to i64
  %i.f = add nsw i64 %i.e, -1
  %i.g = select i1 %i.d, i64 %i.f, i64 0
  switch i64 %i.g, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = trunc i32 %i.c to i1
  br i1 %i.h, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i = load i64, ptr %i.i, align 8, !range !29, !alias.scope !22331, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val3.i = load ptr, ptr %i.j, align 8, !alias.scope !22331, !nonnull !10, !noundef !10 ; 2 uses
  %i.k = atomicrmw add ptr %.val3.i, i64 1 monotonic, align 8, !noalias !22332
  %i.l = icmp slt i64 %i.k, 0                     ; 3 uses
  switch i64 %.val.i, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.i, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.j, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.k, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.m = ptrtoint ptr %.val3.i to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.l:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !22331, !nonnull !10, !noundef !10 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !22332
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.r, label %bb.q

bb.m:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !22331, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !22332
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.01.0.copyload.i = load i32, ptr %i.v, align 4, !alias.scope !22331
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !22331
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.6.0.i = phi ptr [ %.sroa.6.0.pre.i, %bb.n ], [ %i.s, %bb.m ]
  %.sroa.5.0.i = phi i32 [ %.sroa.01.0.copyload.i, %bb.n ], [ undef, %bb.m ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.n ], [ 1, %bb.m ]
  %.sroa.7.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.i25 = load i64, ptr %.sroa.7.0.in.i, align 8, !alias.scope !22331
  %i.w = ptrtoint ptr %.sroa.6.0.i to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.l
  %i.x = ptrtoint ptr %i.o to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.r:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %bb.o, %bb.q
  %.sroa.10.0 = phi i64 [ %.sroa.7.0.i25, %bb.o ], [ %i.m, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.q ]
  %.sroa.7.0 = phi i64 [ %i.w, %bb.o ], [ %.val.i, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.x, %bb.q ]
  %.sroa.6.0 = phi i32 [ %.sroa.5.0.i, %bb.o ], [ undef, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.q ]
  %.sroa.0.024 = phi i32 [ %.sroa.0.0.i, %bb.o ], [ 2, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 3, %bb.q ]
  store i32 %.sroa.0.024, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  store i32 -1, ptr %i.a, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  %i.y = load i64, ptr %1, align 8, !range !19, !noundef !10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load double, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ab = load i8, ptr %i.aa, align 8, !range !70, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ad = load i8, ptr %i.ac, align 1, !range !70, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !range !38, !noundef !10 ; 2 uses
  %switch = icmp ugt i64 %i.af, -3
  br i1 %switch, label %.fold.split, label %bb.w

bb.u:                                             ; preds = %2
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.y

.fold.split:                                      ; preds = %bb.t, %.loopexit
  %.sroa.55.sroa.5.0 = phi double [ undef, %bb.t ], [ %.val.i17, %.loopexit ]
  %.sroa.55.sroa.4.0 = phi i64 [ undef, %bb.t ], [ %.val4.i, %.loopexit ]
  %.sroa.55.sroa.0.0 = phi ptr [ undef, %bb.t ], [ %.sroa.10.0.i33.i.i.i, %.loopexit ]
  %.sroa.03.0 = phi i64 [ %i.af, %bb.t ], [ %.val4.i, %.loopexit ]
  %i.ah = trunc nuw i64 %i.y to i1
  %.sroa.5.0 = select i1 %i.ah, double %.val, double undef
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !19, !noundef !10 ; 2 uses
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load double, ptr %i.al, align 8
  %.sroa.58.0 = select i1 %i.ak, double %i.am, double undef
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 %i.y, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.5.0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.ab, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.ad, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.03.0, ptr %i.ar, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.55.sroa.0.0, ptr %.sroa.55.0..sroa_idx6, align 8
  %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.55.sroa.4.0, ptr %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx6.sroa_idx, align 8
  %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.55.sroa.5.0, ptr %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx6.sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aj, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.58.0, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22333)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i16 = load ptr, ptr %i.au, align 8, !alias.scope !22333, !nonnull !10, !noundef !10 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i = load i64, ptr %i.av, align 8, !alias.scope !22333, !noundef !10 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22334)
  %i.aw = shl nuw nsw i64 %.val4.i, 4             ; 2 uses
  %i.ax = icmp eq i64 %.val4.i, 0
  br i1 %i.ax, label %.loopexit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.w
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !22335
  %i.ay = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.aw, i64 noundef range(i64 1, 17) 8) #41, !noalias !22335 ; 5 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %2, label %.lr.ph.preheader.i.i.i.a

2:                                                ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aw) #39
          to label %.noexc20 unwind label %bb.u

.noexc20:                                         ; preds = %2
  unreachable

.lr.ph.preheader.i.i.i.a:                         ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %3 = getelementptr inbounds nuw [16 x i8], ptr %.val3.i16, i64 %.val4.i
  %4 = and i64 %.val4.i, 1152921504606846975
  %5 = add i64 %.val4.i, -1
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 %5) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %6, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.a
  %n.vec = and i64 %6, 1152921504606846974        ; 4 uses
  %i.ba = shl nuw i64 %n.vec, 4
  %i.bb = getelementptr i8, ptr %.val3.i16, i64 %i.ba
  %7 = sub i64 %.val4.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.val3.i16, i64 %i.bc
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !alias.scope !22334, !noalias !22336 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bd = bitcast <4 x i64> %wide.vec to <4 x double>
  %i.be = shufflevector <4 x double> %i.bd, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.bf = trunc nuw <2 x i64> %strided.vec to <2 x i1>
  %i.bg = select <2 x i1> %i.bf, <2 x double> %i.be, <2 x double> undef
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %index
  %i.bi = bitcast <2 x i64> %strided.vec to <2 x double>
  %interleaved.vec = shufflevector <2 x double> %i.bi, <2 x double> %i.bg, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.bh, align 8, !noalias !22337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %.lr.ph.i.i.i.preheader, label %vector.body, !llvm.loop !22329

.lr.ph.i.i.i.preheader:                           ; preds = %vector.body, %.lr.ph.preheader.i.i.i.a
  %.sroa.016.025.i.i.i.ph = phi ptr [ %.val3.i16, %.lr.ph.preheader.i.i.i.a ], [ %i.bb, %vector.body ]
  %.sroa.7.024.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i.a ], [ %n.vec, %vector.body ]
  %.sroa.10.023.i.i.i.ph = phi i64 [ %.val4.i, %.lr.ph.preheader.i.i.i.a ], [ %7, %vector.body ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.x
  %.sroa.016.025.i.i.i.a = phi ptr [ %i.bm, %bb.x ], [ %.sroa.016.025.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.sroa.7.024.i.i.i.a = phi i64 [ %i.bl, %bb.x ], [ %.sroa.7.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.10.023.i.i.i.a = phi i64 [ %i.bk, %bb.x ], [ %.sroa.10.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %8 = icmp eq ptr %.sroa.016.025.i.i.i.a, %3
  br i1 %8, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = add nsw i64 %.sroa.10.023.i.i.i.a, -1   ; 2 uses
  %i.bl = add nuw nsw i64 %.sroa.7.024.i.i.i.a, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i.i.i.a, i64 16
  %.val12.i.i.i = load i64, ptr %.sroa.016.025.i.i.i.a, align 8, !range !19, !alias.scope !22334, !noalias !22336, !noundef !10 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.016.025.i.i.i.a, i64 8
  %.val13.i.i.i = load double, ptr %i.bn, align 8, !alias.scope !22334, !noalias !22336
  %i.bo = trunc nuw i64 %.val12.i.i.i to i1
  %.sroa.3.0.i.i.i.i = select i1 %i.bo, double %.val13.i.i.i, double undef
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.7.024.i.i.i.a ; 2 uses
  store i64 %.val12.i.i.i, ptr %i.bp, align 8, !noalias !22337
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store double %.sroa.3.0.i.i.i.i, ptr %i.bq, align 8, !noalias !22337
  %i.br = icmp eq i64 %i.bk, 0
  br i1 %i.br, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !22330

.loopexit:                                        ; preds = %bb.x, %.lr.ph.i.i.i, %bb.w
  %.sroa.10.0.i33.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.w ], [ %i.ay, %.lr.ph.i.i.i ], [ %i.ay, %bb.x ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i17 = load double, ptr %i.bs, align 8, !alias.scope !22333, !noundef !10
  br label %.fold.split

bb.y:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.u, %bb.v
  resume { ptr, i32 } %i.ag
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22377)
  %i.c = load i32, ptr %i.a, align 8, !range !48, !alias.scope !22376, !noundef !10 ; 3 uses
  %i.d = icmp ne i32 %i.c, -1                     ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !range !48, !alias.scope !22377, !noundef !10 ; 3 uses
  %i.f = icmp ne i32 %i.e, -1                     ; 2 uses
  %i.g = xor i1 %i.d, %i.f
  br i1 %i.g, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %brmerge.demorgan.i = and i1 %i.d, %i.f
  br i1 %brmerge.demorgan.i, label %bb.c, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22379)
  %i.h = icmp samesign ugt i32 %i.c, 1
  %i.i = zext nneg i32 %i.c to i64
  %i.j = add nsw i64 %i.i, -1
  %i.k = select i1 %i.h, i64 %i.j, i64 0          ; 2 uses
  %i.l = icmp samesign ult i32 %i.e, 2            ; 2 uses
  %i.m = zext nneg i32 %i.e to i64
  %i.n = add nsw i64 %i.m, -1
  %i.o = select i1 %i.l, i64 0, i64 %i.n
  %i.p = icmp eq i64 %i.k, %i.o
  br i1 %i.p, label %bb.d, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.d:                                             ; preds = %bb.c
  switch i64 %i.k, label %bb.e [
    i64 0, label %.split21
    i64 1, label %bb.f
    i64 2, label %bb.ap
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

.split21:                                         ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.l)
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #40
  br i1 %i.q, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load i64, ptr %i.r, align 8, !range !29, !alias.scope !22380, !noundef !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2.i.i = load ptr, ptr %i.t, align 8, !alias.scope !22380 ; 30 uses
  %.val3.i.i = load i64, ptr %i.s, align 8, !range !29, !alias.scope !22381, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val4.i.i = load ptr, ptr %i.u, align 8, !alias.scope !22381 ; 30 uses
  %i.v = icmp eq i64 %.val.i.i, %.val3.i.i
  br i1 %i.v, label %bb.g, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i), "nonnull"(ptr %.val4.i.i) ]
  %i.w = icmp eq ptr %.val2.i.i, %.val4.i.i       ; 3 uses
  switch i64 %.val.i.i, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  br i1 %i.w, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17, label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %i.w, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17, label %bb.s

bb.j:                                             ; preds = %bb.g
  br i1 %i.w, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17, label %bb.af

bb.k:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22383)
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 96
  %i.aa = load i8, ptr %i.z, align 8, !range !11, !alias.scope !22382, !noalias !22384, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 96
  %i.ac = load i8, ptr %i.ab, align 8, !range !11, !alias.scope !22383, !noalias !22384, !noundef !10
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.l, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 80
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !22382, !noalias !22384, !noundef !10 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 80
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !22383, !noalias !22384, !noundef !10
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.m, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !22383, !noalias !22384, !nonnull !10, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !22382, !noalias !22384, !nonnull !10, !noundef !10
  %i.an = icmp eq i64 %i.af, 0
  br i1 %i.an, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.n:                                             ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %i.ao = add nuw i64 %.sroa.01.06.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ao, %i.af
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %bb.n
  %.sroa.01.06.i.i.i.i.i = phi i64 [ %i.ao, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.sroa.01.06.i.i.i.i.i ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %.sroa.01.06.i.i.i.i.i ; 2 uses
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq) #40, !noalias !22385
  br i1 %i.ar, label %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at), !noalias !22385
  br i1 %i.au, label %bb.n, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

.loopexit.i.i.i.i:                                ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 88
  %i.ax = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw), !noalias !22384
  br i1 %i.ax, label %bb.o, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.o:                                             ; preds = %.loopexit.i.i.i.i
  %i.ay = load i64, ptr %i.x, align 8, !range !30, !alias.scope !22382, !noalias !22384, !noundef !10
  %i.az = icmp ne i64 %i.ay, -1                   ; 2 uses
  %i.ba = load i64, ptr %i.y, align 8, !range !30, !alias.scope !22383, !noalias !22384, !noundef !10
  %i.bb = icmp eq i64 %i.ba, -1                   ; 3 uses
  %not..i.i.i.i = xor i1 %i.bb, true
  %i.bc = xor i1 %i.az, %i.bb
  br i1 %i.bc, label %bb.p, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.p:                                             ; preds = %bb.o
  br i1 %i.az, label %.split.i.i.i.i, label %bb.q

.split.i.i.i.i:                                   ; preds = %bb.p
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.bd = tail call fastcc noundef zeroext i1 @_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.y) #40, !noalias !22384
  br i1 %i.bd, label %bb.r, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.assume(i1 %i.bb)
  %i.be = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !range !33, !alias.scope !22382, !noalias !22384, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 24
  %i.bh = load i8, ptr %i.bg, align 8, !range !33, !alias.scope !22383, !noalias !22384, !noundef !10
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %bb.r, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.r:                                             ; preds = %bb.q, %.split.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 97
  %i.bk = load i8, ptr %i.bj, align 1, !range !64, !alias.scope !22382, !noalias !22384, !noundef !10 ; 2 uses
  %i.bl = icmp ne i8 %i.bk, 2                     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 97
  %i.bn = load i8, ptr %i.bm, align 1, !range !64, !alias.scope !22383, !noalias !22384, !noundef !10 ; 2 uses
  %i.bo = icmp ne i8 %i.bn, 2                     ; 2 uses
  %i.bp = xor i1 %i.bl, %i.bo
  br i1 %i.bp, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %.split

.split:                                           ; preds = %bb.r
  %.not.i.i.i.i = icmp ne i8 %i.bk, %i.bn
  %i.bq = and i1 %i.bo, %.not.i.i.i.i
  %spec.select.i.i.i.i.not = and i1 %i.bl, %i.bq
  br i1 %spec.select.i.i.i.i.not, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17

bb.s:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22387)
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 136
  %i.bu = load i8, ptr %i.bt, align 8, !range !11, !alias.scope !22386, !noalias !22384, !noundef !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 136
  %i.bw = load i8, ptr %i.bv, align 8, !range !11, !alias.scope !22387, !noalias !22384, !noundef !10
  %i.bx = icmp eq i8 %i.bu, %i.bw
  br i1 %i.bx, label %bb.t, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

end_hunk_0
begin_hunk_1_@_RNvXsm_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj20_ENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8jFhWeO2DFb_9typst_pdf:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42, !noalias !22439
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %bb.l, %bb.h, %bb.g, %bb.a
  %i.aa = phi i64 [ %i.g, %bb.a ], [ %.pre.i.i, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ %i.g, %bb.g ], [ %.sink10.i.i, %bb.l ], [ %i.g, %bb.h ]
  %i.ab = phi i64 [ %i.c, %bb.a ], [ %i.g, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ %i.c, %bb.g ], [ %i.p, %bb.l ], [ %i.c, %bb.h ] ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 32                  ; 2 uses
  %.sink10.i.i.i = select i1 %i.ac, i64 %i.aa, i64 %i.ab ; 3 uses
  %.not.i.i = icmp ugt i64 %.sink10.i.i, %.sink10.i.i.i
  br i1 %.not.i.i, label %bb.r, label %_RNvMse_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj20_E17extend_from_sliceCs8jFhWeO2DFb_9typst_pdf.exit, !prof !13

bb.r:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #42, !noalias !22439
  unreachable

_RNvMse_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj20_E17extend_from_sliceCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !22438, !nonnull !10
  %.sink10.i2.i.i = select i1 %i.ac, ptr %i.ad, ptr %0
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink10.i2.i.i, i64 %.sink10.i.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %2
  %i.ag = sub nuw i64 %.sink10.i.i.i, %.sink10.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.ae, i64 %i.ag, i1 false), !noalias !22436
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false)
  %i.ah = add i64 %.sink10.i.i.i, %2
  %i.ai = load i64, ptr %i.b, align 8, !alias.scope !22440, !noundef !10
  %i.aj = icmp ugt i64 %i.ai, 32
  %.sink9.i5.i.i = select i1 %i.aj, ptr %i.f, ptr %i.b
  store i64 %i.ah, ptr %.sink9.i5.i.i, align 8, !alias.scope !22441
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXsn_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke6StrokeENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #20 {
bb.a:
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke6StrokeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load i64, ptr %1, align 8, !range !29, !noundef !10 ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22461
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i32, ptr %i.c, align 8, !range !48, !alias.scope !22460, !noundef !10 ; 4 uses
  %.not.i = icmp eq i32 %i.d, -1                  ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22462)
  %i.e = icmp samesign ugt i32 %i.d, 1
  %i.f = zext nneg i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -1
  %i.h = select i1 %i.e, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = trunc i32 %i.d to i1
  br i1 %i.i, label %bb.n, label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i.i = load i64, ptr %i.j, align 8, !range !29, !alias.scope !22463, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val3.i.i = load ptr, ptr %i.k, align 8, !alias.scope !22463, !nonnull !10, !noundef !10 ; 2 uses
  %i.l = atomicrmw add ptr %.val3.i.i, i64 1 monotonic, align 8, !noalias !22464
  %i.m = icmp slt i64 %i.l, 0                     ; 3 uses
  switch i64 %.val.i.i, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  br i1 %i.m, label %bb.j, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.h:                                             ; preds = %bb.f
  br i1 %i.m, label %bb.k, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.f
  br i1 %i.m, label %bb.l, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.n = ptrtoint ptr %.val3.i.i to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.m:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !22463, !nonnull !10, !noundef !10 ; 2 uses
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !22464
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.s, label %bb.r

bb.n:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !22463, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !22464
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.w, align 4, !alias.scope !22463
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !22463
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.0.pre.i.i, %bb.o ], [ %i.t, %bb.n ]
  %.sroa.5.0.i.i = phi i32 [ %.sroa.01.0.copyload.i.i, %bb.o ], [ undef, %bb.n ]
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.o ], [ 1, %bb.n ]
  %.sroa.7.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.7.0.i28.i = load i64, ptr %.sroa.7.0.in.i.i, align 8, !alias.scope !22463
  %i.x = ptrtoint ptr %.sroa.6.0.i.i to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.y = ptrtoint ptr %i.p to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.r, %bb.p, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %.sroa.10.0.i = phi i64 [ %.sroa.7.0.i28.i, %bb.p ], [ %i.n, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.r ]
  %.sroa.7.0.i = phi i64 [ %i.x, %bb.p ], [ %.val.i.i, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.y, %bb.r ]
  %.sroa.6.027.i = phi i32 [ %.sroa.5.0.i.i, %bb.p ], [ undef, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.r ]
  %.sroa.0.026.i = phi i32 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.r ]
  store i32 %.sroa.0.026.i, ptr %i.a, align 8, !noalias !22461
  %.sroa.6.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.6.027.i, ptr %.sroa.6.0..sroa_idx22.i, align 4, !noalias !22461
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !22461
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !22461
  br label %bb.u

bb.t:                                             ; preds = %bb.b
  store i32 -1, ptr %i.a, align 8, !noalias !22461
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !alias.scope !22460
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i8, ptr %i.ab, align 8, !range !70, !alias.scope !22460, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.ae = load i8, ptr %i.ad, align 1, !range !70, !alias.scope !22460, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !range !38, !alias.scope !22460, !noundef !10 ; 2 uses
  %switch = icmp ugt i64 %i.ag, -3
  br i1 %switch, label %_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.x

bb.v:                                             ; preds = %bb.y
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.ab, !noalias !22461

bb.x:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22465)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !22466, !nonnull !10, !noundef !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val5.i.i = load i64, ptr %i.aj, align 8, !alias.scope !22466, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22467)
  %i.ak = mul nuw nsw i64 %.val5.i.i, 24          ; 2 uses
  %i.al = icmp eq i64 %.val5.i.i, 0
  br i1 %i.al, label %.loopexit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.x
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !22468
  %i.am = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ak, i64 noundef range(i64 1, 17) 8) #41, !noalias !22468 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.y, label %.lr.ph.preheader.i.i.i.i

bb.y:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ak) #39
          to label %.noexc21.i unwind label %bb.v, !noalias !22461

.noexc21.i:                                       ; preds = %bb.y
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  %2 = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i, i64 %.val5.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.014.035.i.i.i.i = phi ptr [ %i.ao, %_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ %.val4.i.i, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %.sroa.7.034.i.i.i.i = phi i64 [ %i.ap, %_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.10.033.i.i.i.i = phi i64 [ %3, %_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ %.val5.i.i, %.lr.ph.preheader.i.i.i.i ]
  %3 = add nsw i64 %.sroa.10.033.i.i.i.i, -1      ; 2 uses
  %4 = icmp eq ptr %.sroa.014.035.i.i.i.i, %2
  br i1 %4, label %.loopexit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.014.035.i.i.i.i, i64 24
  %i.ap = add nuw nsw i64 %.sroa.7.034.i.i.i.i, 1
  %i.aq = load i64, ptr %.sroa.014.035.i.i.i.i, align 8, !range !19, !alias.scope !22469, !noalias !22470, !noundef !10
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.aa, label %_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.014.035.i.i.i.i, i64 8
  %i.at = load <2 x double>, ptr %i.as, align 8, !alias.scope !22469, !noalias !22470
  br label %_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i

_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %storemerge.i.i.i.i.i.a = phi i64 [ 1, %bb.aa ], [ 0, %bb.z ]
  %i.au = phi <2 x double> [ %i.at, %bb.aa ], [ undef, %bb.z ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.sroa.7.034.i.i.i.i ; 2 uses
  store i64 %storemerge.i.i.i.i.i.a, ptr %i.av, align 8, !noalias !22471
  %.sroa.425.0..sroa_idx.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <2 x double> %i.au, ptr %.sroa.425.0..sroa_idx.i.i.i.i.a, align 8, !noalias !22471
  %i.aw = icmp eq i64 %3, 0
  br i1 %i.aw, label %.loopexit.i, label %.lr.ph.i.i.i.i

.loopexit.i:                                      ; preds = %_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %.lr.ph.i.i.i.i, %bb.x
  %.sroa.10.0.i43.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.x ], [ %i.am, %.lr.ph.i.i.i.i ], [ %i.am, %_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_10DashLengthNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !alias.scope !22466
  br label %_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit

bb.ab:                                            ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !22461
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.w, %bb.v
  resume { ptr, i32 } %i.ah

_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.u, %.loopexit.i
  %.sroa.55.sroa.4.0.i = phi i64 [ undef, %bb.u ], [ %.val5.i.i, %.loopexit.i ]
  %.sroa.55.sroa.0.0.i = phi ptr [ undef, %bb.u ], [ %.sroa.10.0.i43.i.i.i.i, %.loopexit.i ]
  %.sroa.03.0.i = phi i64 [ %i.ag, %bb.u ], [ %.val5.i.i, %.loopexit.i ]
  %i.ba = phi <2 x double> [ undef, %bb.u ], [ %i.ay, %.loopexit.i ]
  %i.bb = trunc i64 %i.b to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !range !19, !alias.scope !22460, !noundef !10 ; 2 uses
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load double, ptr %i.bf, align 8, !alias.scope !22460
  %.sroa.58.0.i = select i1 %i.be, double %i.bg, double undef
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22461
  store i64 %i.b, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = insertelement <2 x i1> poison, i1 %i.bb, i64 0
  %i.bi = shufflevector <2 x i1> %i.bh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x double> %i.aa, <2 x double> undef
  store <2 x double> %i.bj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bd, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.58.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.03.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.55.sroa.0.0.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.sroa.4.0.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.ba, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.ac, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.ae, ptr %.sroa.15.0..sroa_idx, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsp_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4textNtB5_16ResolvedTextDecoNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !64, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !64, !noundef !10
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !range !11, !noundef !10
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 4, !range !11, !noundef !10
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.m = load i8, ptr %i.l, align 1, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.o = load i8, ptr %i.n, align 1, !noundef !10
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.r = load i8, ptr %i.q, align 2, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = load i8, ptr %i.s, align 2, !noundef !10
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %.split, label %bb.h

.split:                                           ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.w = load i8, ptr %i.v, align 1, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.y = load i8, ptr %i.x, align 1, !noundef !10
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split, %bb.d
  %i.aa = load i32, ptr %0, align 4, !range !14, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = trunc nuw i32 %i.aa to i1
  %i.ad = load i32, ptr %1, align 4, !range !14, !noundef !10
  %i.ae = trunc nuw i32 %i.ad to i1               ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.h:                                             ; preds = %.split, %bb.i, %bb.a, %bb.d, %bb.c, %bb.e, %bb.f, %bb.j, %bb.k
  %.sroa.0.0 = phi i1 [ %i.aj, %bb.k ], [ false, %bb.a ], [ %i.af, %bb.j ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.i ], [ false, %.split ]
  ret i1 %.sroa.0.0

bb.i:                                             ; preds = %bb.g
  br i1 %i.ae, label %bb.k, label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.af = xor i1 %i.ae, true
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load float, ptr %i.ab, align 4, !noundef !10
  %i.ai = load float, ptr %i.ag, align 4, !noundef !10
  %i.aj = fcmp oeq float %i.ah, %i.ai
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22500)
  store i64 0, ptr %i.b, align 8, !alias.scope !22501, !noalias !22499
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !22501, !noalias !22499
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !22502, !noalias !22498
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !22503

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !22499
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !22504, !noalias !22499, !noundef !10 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !22504, !noalias !22499 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !22505, !noalias !22499 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !22498, !nonnull !10
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !22498 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22507)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !22498
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !22499
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !22498
  %i.k = add i64 %.promoted26.i, 1
end_hunk_1
