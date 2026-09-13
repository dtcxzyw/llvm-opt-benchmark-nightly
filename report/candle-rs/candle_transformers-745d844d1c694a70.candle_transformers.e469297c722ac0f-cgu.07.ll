Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.07?download=true
begin_hunk_0
@switch.table._RNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion10schedulersNtB2_12BetaScheduleNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\06\0C\0F", align 8
@switch.table._RNvXNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion10schedulersNtB2_12BetaScheduleNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.88 = private unnamed_addr constant [3 x ptr] [ptr @309, ptr @310, ptr @311], align 8
@switch.table._RNvXs2_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion10schedulersNtB5_14PredictionTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\07\0B\06", align 8
@switch.table._RNvXs2_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion10schedulersNtB5_14PredictionTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.89 = private unnamed_addr constant [3 x ptr] [ptr @326, ptr @327, ptr @328], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !37
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noalias !37, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noalias !37, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !noalias !37
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #25, !noalias !37
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1dZk1kIfPhr_19candle_transformers.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !noalias !37, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1dZk1kIfPhr_19candle_transformers.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !38
  br label %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers.exit

_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1dZk1kIfPhr_19candle_transformers.exit.i.i.i, %bb.d
  store i64 %i.e, ptr %0, align 8, !alias.scope !39, !noalias !40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !39, !noalias !40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !39, !noalias !40
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1dZk1kIfPhr_19candle_transformers16object_detection23non_maximum_suppressionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB4_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, float noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a, %._crit_edge
  %.sroa.0.032 = phi ptr [ %i.f, %._crit_edge ], [ %0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48
  store ptr %i.a, ptr %i.b, align 8, !noalias !49
  %i.k = icmp samesign ult i64 %i.j, 2
  br i1 %i.k, label %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %.lr.ph34
  %i.l = icmp samesign ult i64 %i.j, 21
  br i1 %i.l, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCINvB12_23non_maximum_suppressionB20_E0E0INtNtB2S_3vec3VecBZ_EEB14_(ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef range(i64 0, 288230376151711744) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exitthread-pre-split

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvB1p_23non_maximum_suppressionB2n_E0E0EB1r_(ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef range(i64 0, 288230376151711744) %i.j, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exitthread-pre-split

_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exitthread-pre-split: ; preds = %bb.d, %bb.c
  %.pr = load i64, ptr %i.i, align 8
  br label %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exit

_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exit: ; preds = %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exitthread-pre-split, %.lr.ph34
  %i.m = phi i64 [ %.pr, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exitthread-pre-split ], [ %i.j, %.lr.ph34 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  %i.n = icmp ult i64 %i.m, 288230376151711744
  call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge35:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %.loopexit, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exit
  %.sroa.02.0.lcssa = phi i64 [ 0, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exit ], [ %.sroa.02.1, %.loopexit ]
  call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEE8truncateBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.032, i64 noundef %.sroa.02.0.lcssa)
  %i.o = icmp eq ptr %i.f, %i.d
  br i1 %i.o, label %._crit_edge35, label %.lr.ph34

.lr.ph:                                           ; preds = %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exit, %.loopexit
  %.sroa.02.031 = phi i64 [ %.sroa.02.1, %.loopexit ], [ 0, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exit ] ; 7 uses
  %.sroa.09.030 = phi i64 [ %i.p, %.loopexit ], [ 0, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_.exit ] ; 7 uses
  %i.p = add nuw nsw i64 %.sroa.09.030, 1         ; 2 uses
  %exitcond.not88 = icmp eq i64 %.sroa.02.031, 0
  br i1 %exitcond.not88, label %._crit_edge91, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = load i64, ptr %i.i, align 8, !noundef !5 ; 4 uses
  %i.s = icmp ult i64 %.sroa.09.030, %i.r
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.09.030 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %.lr.ph90

bb.e:                                             ; preds = %bb.l
  %exitcond.not = icmp eq i64 %i.w, %.sroa.02.031
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.e
  %.sroa.011.089 = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph90.preheader ] ; 4 uses
  %i.w = add i64 %.sroa.011.089, 1                ; 2 uses
  %i.x = icmp ult i64 %.sroa.011.089, %i.r
  br i1 %i.x, label %bb.j, label %bb.k

._crit_edge91:                                    ; preds = %bb.e, %.lr.ph
  %i.y = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = load i64, ptr %i.i, align 8, !noundef !5 ; 4 uses
  %i.aa = icmp ult i64 %.sroa.02.031, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

.loopexit:                                        ; preds = %bb.l, %bb.h
  %.sroa.02.1 = phi i64 [ %i.ae, %bb.h ], [ %.sroa.02.031, %bb.l ] ; 2 uses
  %exitcond51.not = icmp eq i64 %i.p, %i.m
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge91
  %i.ab = icmp ult i64 %.sroa.09.030, %i.z
  br i1 %i.ab, label %bb.h, label %bb.i

bb.g:                                             ; preds = %._crit_edge91
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.031, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.02.031 ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.09.030 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = add nuw i64 %.sroa.02.031, 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.030, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
  unreachable

bb.j:                                             ; preds = %.lr.ph90
  br i1 %i.s, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph90
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.011.089, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.011.089 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !alias.scope !50, !noalias !51 ; 3 uses
  %i.aj = load <2 x float>, ptr %i.ah, align 8, !alias.scope !50, !noalias !51 ; 3 uses
  %i.ak = load <2 x float>, ptr %i.u, align 8, !alias.scope !51, !noalias !50 ; 3 uses
  %i.al = load <2 x float>, ptr %i.v, align 8, !alias.scope !51, !noalias !50 ; 3 uses
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 0, i32 2>
  %i.an = shufflevector <2 x float> %i.aj, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.ao = fsub <2 x float> %i.am, %i.an
  %i.ap = fadd <2 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <2 x float> %i.aj, <2 x float> %i.al, <2 x i32> <i32 1, i32 3>
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = fadd <2 x float> %i.as, splat (float 1.000000e+00)
  %i.au = fmul <2 x float> %i.ap, %i.at           ; 2 uses
  %i.av = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.aj, <2 x float> %i.al)
  %i.aw = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.ai, <2 x float> %i.ak)
  %i.ax = fsub <2 x float> %i.aw, %i.av
  %i.ay = fadd <2 x float> %i.ax, splat (float 1.000000e+00)
  %i.az = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.ay, <2 x float> zeroinitializer) ; 2 uses
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.az, %shift ; 2 uses
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift93 = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop94 = fadd <2 x float> %i.au, %shift93
  %foldExtExtBinop96 = fsub <2 x float> %foldExtExtBinop94, %foldExtExtBinop
  %3 = extractelement <2 x float> %foldExtExtBinop96, i64 0
  %i.bb = fdiv float %i.ba, %3
  %i.bc = fcmp ogt float %i.bb, %2
  br i1 %i.bc, label %.loopexit, label %bb.e

bb.m:                                             ; preds = %bb.j
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.030, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3NyA1pFSltE_9candle_nn3ops7softmaxNtNtCsltEA4u8Pgfu_11candle_core5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef range(i64 0, 3) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 12 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 11 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 11 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @_RNvXs8_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_1DNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 7)
  %i.n = load i64, ptr %i.i, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.551.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.n, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %.sroa.453.0..sroa_idx, align 8
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor11reduce_impljECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.p, i1 noundef zeroext true, i8 noundef 2)
  %i.q = load i64, ptr %i.g, align 8, !range !9, !noundef !5 ; 2 uses
  %.not92 = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.563.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.560.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.q, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.462.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.s, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor13broadcast_sub(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.h unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit102: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104, %bb.k, %bb.g
  %.pn99 = phi { ptr, i32 } [ %i.w, %bb.g ], [ %.pn97, %bb.k ], [ %.pn97, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.t = load ptr, ptr %i.h, align 8, !alias.scope !121, !nonnull !5, !noundef !5
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !121
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit102
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.ad

bb.g:                                             ; preds = %bb.ae, %bb.aa, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit102

bb.h:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.e, align 8, !range !9, !noundef !5 ; 2 uses
  %.not93 = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  br i1 %.not93, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.572.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.569.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.x, ptr %0, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.471.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit117

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.z, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3exp(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.m unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108, %bb.p, %bb.l
  %.pn97 = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %.pn, %bb.p ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.aa = load ptr, ptr %i.f, align 8, !alias.scope !125, !nonnull !5, !noundef !5
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !125
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit102

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit102 unwind label %bb.ad

bb.l:                                             ; preds = %bb.z, %bb.t, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104

bb.m:                                             ; preds = %bb.j
  %i.ae = load i64, ptr %i.c, align 8, !range !9, !noundef !5 ; 2 uses
  %.not94 = icmp eq i64 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  br i1 %.not94, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.581.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.578.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ae, ptr %0, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %.sroa.480.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit106

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ag, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8sum_impljECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, i64 noundef %i.p, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108: ; preds = %bb.v, %bb.w, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.ar, %bb.w ], [ %i.ar, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !129, !nonnull !5, !noundef !5
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !129
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104 unwind label %bb.ad

bb.q:                                             ; preds = %bb.y, %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit108

bb.r:                                             ; preds = %bb.o
  %i.al = load i64, ptr %i.a, align 8, !range !9, !noundef !5 ; 2 uses
  %.not95 = icmp eq i64 %i.al, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  br i1 %.not95, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.590.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.587.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.al, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %.sroa.489.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
end_hunk_0
begin_hunk_1_@llvm.umin.i32
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsH_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt5floatfNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion10schedulers15TimestepSpacingNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8sum_implTjjEECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsixB2fhfFqiD_12regex_syntax5error5ErrorNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs9BYqgaV0uAw_14regex_automata4util8captures14GroupInfoErrorNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs9BYqgaV0uAw_14regex_automata4util4look24UnicodeWordBoundaryErrorNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7to_vec1xECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpTjjEE1iCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL0_NtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEp6OutputINtNtBQ_6result6ResultB1u_NtNtB1y_5error5ErrorENtNtBQ_6marker4SendNtB3a_4SyncEL_E9drop_slowCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs2ZSzJGZRtAv_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecfEE9drop_slowCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtB7_5boxed3BoxDNtBJ_13SimpleBackendEL_EEE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB7_6string6StringIBx_NtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEE9drop_slowCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models10modernbert15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models10starcoder215RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models15recurrent_gemma15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models17quantized_mistral15RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9deepseek225DeepSeekV2RotaryEmbeddingE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion24euler_ancestral_discrete37EulerAncestralDiscreteSchedulerConfigE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion4ddim19DDIMSchedulerConfigE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcRSfE9drop_slowCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsf3Ta7LF998c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout13is_contiguous(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape9from_dims(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4flux5modelNtB5_7EmbedNdNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4flux5model18timestep_embedding(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i8 noundef range(i8 0, 14)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpTNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullINtB1i_9RangeFromjEEE1iCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRfINtNtNtBa_5slice4iter4IterfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBd_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minimumnum.v2f32(<2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maximumnum.v2f32(<2 x float>, <2 x float>) #18

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn }
attributes #26 = { noinline }
attributes #27 = { noinline noreturn }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { cold }
attributes #30 = { nounwind }
attributes #31 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{i64 -1, i64 -9223372036854775764}
!10 = !{i8 0, i8 3}
!11 = !{i64 0, i64 3}
!12 = !{i64 -1, i64 3}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 1, i64 536870913}
!15 = !{i64 1, i64 0}
!16 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!17 = !{i64 0, i64 14}
!18 = !{i64 8}
!19 = !{i64 -1, i64 15}
!20 = !{i64 -2, i64 -9223372036854775808}
!21 = !{i64 -1, i64 -9223372036854775808}
!22 = !{i64 4}
!23 = !{i8 0, i8 2}
!24 = !{i8 0, i8 14}
!25 = !{i64 0, i64 15}
!26 = distinct !{!26, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers"}
!27 = distinct !{!27, !26, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!28 = distinct !{!28, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned"}
!29 = distinct !{!29, !28, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 0"}
!30 = distinct !{!30, !26, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 1"}
!31 = distinct !{!31, !28, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 1"}
!32 = distinct !{!32, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers"}
!33 = distinct !{!33, !32, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers: argument 1"}
!34 = distinct !{!34, !32, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!35 = !{!27}
!36 = !{!29}
!37 = !{!34, !33, !29, !31, !27, !30}
!38 = !{!34, !29, !27}
!39 = !{!29, !27}
!40 = !{!31, !30}
!41 = distinct !{!41, !"_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_"}
!42 = distinct !{!42, !41, !"_RINvMNtCsgCecv3eZDcN_5alloc5sliceSINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7sort_byNCINvBz_23non_maximum_suppressionB1x_E0EBB_: argument 0"}
!43 = distinct !{!43, !"_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMB2_SBH_7sort_byNCINvBK_23non_maximum_suppressionB1I_E0E0EBM_"}
!44 = distinct !{!44, !43, !"_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortINtNtCs1dZk1kIfPhr_19candle_transformers16object_detection4BboxNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMB2_SBH_7sort_byNCINvBK_23non_maximum_suppressionB1I_E0E0EBM_: argument 0"}
!45 = distinct !{!45, !"_RINvNtCs1dZk1kIfPhr_19candle_transformers16object_detection3iouNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB4_"}
!46 = distinct !{!46, !45, !"_RINvNtCs1dZk1kIfPhr_19candle_transformers16object_detection3iouNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB4_: argument 0"}
!47 = distinct !{!47, !45, !"_RINvNtCs1dZk1kIfPhr_19candle_transformers16object_detection3iouNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEB4_: argument 1"}
!48 = !{!42}
!49 = !{!44, !42}
!50 = !{!46}
!51 = !{!47}
!52 = distinct !{!52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!53 = distinct !{!53, !52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!54 = distinct !{!54, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!55 = distinct !{!55, !54, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!56 = distinct !{!56, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!57 = distinct !{!57, !56, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!58 = distinct !{!58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!59 = distinct !{!59, !58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!60 = distinct !{!60, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!61 = distinct !{!61, !60, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!62 = distinct !{!62, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!63 = distinct !{!63, !62, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!64 = distinct !{!64, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!65 = distinct !{!65, !64, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!66 = distinct !{!66, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!67 = distinct !{!67, !66, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!68 = distinct !{!68, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!69 = distinct !{!69, !68, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!70 = distinct !{!70, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!71 = distinct !{!71, !70, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!72 = distinct !{!72, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!73 = distinct !{!73, !72, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!74 = distinct !{!74, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!75 = distinct !{!75, !74, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!76 = distinct !{!76, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!77 = distinct !{!77, !76, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!78 = distinct !{!78, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!79 = distinct !{!79, !78, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!80 = distinct !{!80, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!81 = distinct !{!81, !80, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!82 = distinct !{!82, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!83 = distinct !{!83, !82, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!84 = distinct !{!84, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!85 = distinct !{!85, !84, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!86 = distinct !{!86, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!87 = distinct !{!87, !86, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!88 = distinct !{!88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!89 = distinct !{!89, !88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!90 = distinct !{!90, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!91 = distinct !{!91, !90, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!92 = distinct !{!92, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!93 = distinct !{!93, !92, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!94 = distinct !{!94, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!95 = distinct !{!95, !94, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!96 = distinct !{!96, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!97 = distinct !{!97, !96, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!98 = distinct !{!98, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!99 = distinct !{!99, !98, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!100 = distinct !{!100, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!101 = distinct !{!101, !100, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!102 = distinct !{!102, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!103 = distinct !{!103, !102, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!104 = distinct !{!104, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!105 = distinct !{!105, !104, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!106 = distinct !{!106, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!107 = distinct !{!107, !106, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!108 = distinct !{!108, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!109 = distinct !{!109, !108, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!110 = distinct !{!110, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!111 = distinct !{!111, !110, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!112 = distinct !{!112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!113 = distinct !{!113, !112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!114 = distinct !{!114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!115 = distinct !{!115, !114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!116 = distinct !{!116, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!117 = distinct !{!117, !116, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!118 = !{!53}
!119 = !{!55}
!120 = !{!57}
!121 = !{!57, !55, !53}
!122 = !{!59}
!123 = !{!61}
!124 = !{!63}
!125 = !{!63, !61, !59}
!126 = !{!65}
!127 = !{!67}
!128 = !{!69}
!129 = !{!69, !67, !65}
!130 = !{!71}
!131 = !{!73}
!132 = !{!75}
!133 = !{!75, !73, !71}
!134 = !{!81, !79, !77}
!135 = !{!87, !85, !83}
!136 = !{!89}
!137 = !{!91}
!138 = !{!93}
!139 = !{!93, !91, !89}
!140 = !{!95}
!141 = !{!97}
!142 = !{!99}
!143 = !{!99, !97, !95}
!144 = !{!101}
!145 = !{!103}
!146 = !{!105}
!147 = !{!105, !103, !101}
!148 = !{!107}
!149 = !{!109}
!150 = !{!111}
!151 = !{!111, !109, !107}
!152 = !{!113}
!153 = !{!115}
!154 = !{!117}
!155 = !{!117, !115, !113}
!156 = distinct !{!156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!157 = distinct !{!157, !156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!158 = distinct !{!158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!159 = distinct !{!159, !158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!160 = distinct !{!160, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!161 = distinct !{!161, !160, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!162 = distinct !{!162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!163 = distinct !{!163, !162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
end_hunk_1
