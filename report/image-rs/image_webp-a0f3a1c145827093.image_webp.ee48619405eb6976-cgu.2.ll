Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.2?download=true
inline.NumInlined: 108
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred:bb.a

_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = icmp samesign eq i64 %2, 0
  br i1 %i.h, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %wide.load = load <4 x i8>, ptr %i.i, align 1
  %wide.load80 = load <4 x i8>, ptr %i.j, align 1
  %i.k = zext <4 x i8> %wide.load to <4 x i32>
  %i.l = zext <4 x i8> %wide.load80 to <4 x i32>
  %i.m = add <4 x i32> %vec.phi, %i.k             ; 2 uses
  %i.n = add <4 x i32> %vec.phi79, %i.l           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit, label %.preheader.preheader85

.preheader.preheader85:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.p, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader85, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.t, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader85 ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %i.s, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader85 ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.0.i
  %.val.i = load i8, ptr %i.q, align 1, !noundef !4
  %i.r = zext i8 %.val.i to i32
  %i.s = add i32 %.sroa.02.0.i, %i.r              ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.u = icmp eq i64 %i.t, %2
  br i1 %i.u, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit, label %.preheader, !llvm.loop !133

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit: ; preds = %.preheader, %middle.block, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit
  %.sroa.0.0.i20 = phi i32 [ 0, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsksn9slvsHfS_10image_webp.exit ], [ %i.p, %middle.block ], [ %i.s, %.preheader ]
  %i.v = add i32 %.sroa.0.0.i20, %.sroa.0.026
  %i.w = add nuw nsw i32 %.sroa.03.124, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit
  %.sroa.03.2 = phi i32 [ %i.w, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit ], [ %i.b, %._crit_edge ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.v, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred0EB1J_.exit ], [ %.sroa.0.1.lcssa, %._crit_edge ]
  %i.x = add nsw i32 %.sroa.03.2, -1
  %i.y = shl nuw nsw i32 1, %i.x
  %i.z = add i32 %i.y, %.sroa.0.2
  %i.aa = lshr i32 %i.z, %.sroa.03.2
  %i.ab = trunc i32 %i.aa to i8
  br label %.thread28

.thread28:                                        ; preds = %.thread, %bb.d
  %storemerge = phi i8 [ %i.ab, %bb.d ], [ -128, %.thread ]
  %.not43 = icmp eq i64 %2, 0
  br i1 %.not43, label %._crit_edge41, label %.lr.ph40

._crit_edge41:                                    ; preds = %.lr.ph.i, %.thread28
  ret void

.lr.ph40:                                         ; preds = %.thread28, %.lr.ph.i
  %.sroa.012.039 = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.thread28 ]
  %i.ac = add nuw i64 %.sroa.012.039, 1           ; 3 uses
  %i.ad = mul i64 %i.ac, %3
  %i.ae = add i64 %i.ad, 1                        ; 4 uses
  %i.af = icmp ugt i64 %i.ae, %1
  br i1 %i.af, label %bb.f, label %bb.e, !prof !5

bb.e:                                             ; preds = %.lr.ph40
  %i.ag = sub nuw nsw i64 %1, %i.ae               ; 2 uses
  %.not = icmp ugt i64 %2, %i.ag
  br i1 %.not, label %bb.g, label %.lr.ph.i, !prof !11

bb.f:                                             ; preds = %.lr.ph40
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #13
  unreachable

.lr.ph.i:                                         ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ah, i8 %storemerge, i64 %2, i1 false), !alias.scope !139, !noalias !140
  %exitcond52.not = icmp eq i64 %i.ac, %2
  br i1 %exitcond52.not, label %._crit_edge41, label %.lr.ph40

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = zext i8 %i.aj to i32
  %i.al = add i32 %.sroa.0.138, %i.ak             ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = mul i64 %5, %4
  %i.c = add i64 %3, -1
  %i.d = add i64 %i.c, %i.b                       ; 8 uses
  %.not.i = icmp ugt i64 %i.d, %1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13, !noalias !156
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 3 uses
  %i.f = sub nuw nsw i64 %1, %i.d                 ; 3 uses
  %i.g = add i64 %4, -1
  %i.h = mul i64 %i.g, %5
  %i.i = add i64 %i.h, %3                         ; 4 uses
  %i.j = add i64 %i.i, -1                         ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  %i.n = zext i8 %i.m to i32
  %i.o = icmp samesign ugt i64 %i.i, %i.d
  br i1 %i.o, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #13
  unreachable

._crit_edge:                                      ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, %bb.e
  ret void

bb.g:                                             ; preds = %.lr.ph, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit
  %.sroa.01.018 = phi i64 [ 0, %.lr.ph ], [ %i.t, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit ] ; 2 uses
  %i.t = add nuw i64 %.sroa.01.018, 1             ; 2 uses
  %i.u = mul i64 %.sroa.01.018, %5                ; 4 uses
  %i.v = icmp ult i64 %i.u, %i.f
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !noundef !4
  %i.y = zext i8 %i.x to i32
  %i.z = sub nsw i32 %i.y, %i.n                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = add nuw nsw i64 %i.u, 1                 ; 2 uses
  %i.ab = sub nuw nsw i64 %i.f, %i.aa             ; 2 uses
  %.not = icmp ugt i64 %2, %i.ab
  br i1 %.not, label %bb.j, label %bb.k, !prof !11

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #13
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull readonly %i.p, ptr noundef nonnull readonly %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %.val.i = load i64, ptr %i.q, align 8, !alias.scope !157, !noalias !158, !noundef !4 ; 8 uses
  %.val6.i = load i64, ptr %i.r, align 8, !alias.scope !157, !noalias !158, !noundef !4 ; 3 uses
  %i.ae = sub i64 %.val6.i, %.val.i               ; 9 uses
  %.not.i14 = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i14, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !159, !noalias !158, !nonnull !4, !noundef !4 ; 6 uses
  %.val1.i.i = load ptr, ptr %i.s, align 8, !alias.scope !159, !noalias !158, !nonnull !4, !noundef !4 ; 6 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  %.val1.i.i44 = ptrtoaddr ptr %.val1.i.i to i64
  %.val.i.i43 = ptrtoaddr ptr %.val.i.i to i64
  %i.af = sub i64 %.val1.i.i44, %.val.i.i43
  %diff.check = icmp ugt i64 %i.af, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %index, %.val.i                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.ah
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !noalias !160
  %i.ak = zext <16 x i8> %wide.load to <16 x i32>
  %i.al = add nsw <16 x i32> %broadcast.splat, %i.ak
  %i.am = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.al, <16 x i32> zeroinitializer)
  %i.an = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.am, <16 x i32> splat (i32 255))
  %i.ao = trunc nuw <16 x i32> %i.an to <16 x i8>
  store <16 x i8> %i.ao, ptr %i.ai, align 1, !alias.scope !161, !noalias !160
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !162

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.ae, -4                    ; 3 uses
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = add i64 %index49, %.val.i               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.aq
  %wide.load50 = load <4 x i8>, ptr %i.as, align 1, !noalias !160
  %i.at = zext <4 x i8> %wide.load50 to <4 x i32>
  %i.au = add nsw <4 x i32> %broadcast.splat48, %i.at
  %i.av = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.au, <4 x i32> zeroinitializer)
  %i.aw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.av, <4 x i32> splat (i32 255))
  %i.ax = trunc nuw <4 x i32> %i.aw to <4 x i8>
  store <4 x i8> %i.ax, ptr %i.ar, align 1, !alias.scope !161, !noalias !160
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.ae, %n.vec46
  br i1 %cmp.n52, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 4 uses
  %i.az = xor i64 %.sroa.0.010.i.ph, -1
  %i.ba = add i64 %.val6.i, %i.az
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bb = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.bc = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.bc
  %.val8.i.prol = load i8, ptr %i.be, align 1, !noalias !160, !noundef !4
  %i.bf = zext i8 %.val8.i.prol to i32
  %i.bg = add nsw i32 %i.z, %i.bf
  %..i.i.i.i.prol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bg, i32 0)
  %i.bh = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i.prol, i32 255)
  %i.bi = trunc nuw i32 %i.bh to i8
  store i8 %i.bi, ptr %i.bd, align 1, !alias.scope !161, !noalias !160
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bb, %vec.epilog.scalar.ph.prol ]
  %i.bj = icmp eq i64 %i.ba, %.val.i
  br i1 %i.bj, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.br, %vec.epilog.scalar.ph ] ; 3 uses
  %i.bk = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.bk
  %.val8.i = load i8, ptr %i.bm, align 1, !noalias !160, !noundef !4
  %i.bn = zext i8 %.val8.i to i32
  %i.bo = add nsw i32 %i.z, %i.bn
  %..i.i.i.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %i.bp = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i, i32 255)
  %i.bq = trunc nuw i32 %i.bp to i8
  store i8 %i.bq, ptr %i.bl, align 1, !alias.scope !161, !noalias !160
  %i.br = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.reass
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %.reass
  %.val8.i.1 = load i8, ptr %i.bt, align 1, !noalias !160, !noundef !4
  %i.bu = zext i8 %.val8.i.1 to i32
  %i.bv = add nsw i32 %i.z, %i.bu
  %..i.i.i.i.1 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %..i.i.i.i.1, i32 255)
  %i.bx = trunc nuw i32 %i.bw to i8
  store i8 %i.bx, ptr %i.bs, align 1, !alias.scope !161, !noalias !160
  %exitcond.not.i.1 = icmp eq i64 %i.br, %i.ae
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit, label %vec.epilog.scalar.ph, !llvm.loop !155

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred0E0EB3e_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond.not = icmp eq i64 %i.t, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = icmp samesign ugt i64 %5, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 8, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  store i8 %i.d, ptr %0, align 1
  %i.e = icmp samesign ugt i64 %1, 8
  br i1 %i.e, label %.preheader, label %bb.f, !prof !6

.preheader:                                       ; preds = %bb.d
  %exitcond.not = icmp samesign ult i64 %5, 18
  br i1 %exitcond.not, label %bb.s, label %bb.k

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nsw i64 %1, -1
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #13
  unreachable

bb.g:                                             ; preds = %bb.r
  %i.g = sub nuw nsw i64 %3, %i.bp                ; 2 uses
  %i.h = icmp samesign ugt i64 %i.g, 7
  br i1 %i.h, label %bb.j, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #13
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 81
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %i.l)
  %.sroa.021.0.copyload = load ptr, ptr %i.a, align 8 ; 9 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8 ; 9 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.524.0.copyload = load i64, ptr %.sroa.524.0..sroa_idx, align 8 ; 7 uses
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.725.0.copyload = load i64, ptr %.sroa.725.0..sroa_idx, align 8 ; 5 uses
  %i.m = icmp ult i64 %.sroa.524.0.copyload, %.sroa.725.0.copyload
  br i1 %i.m, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread

iter.check:                                       ; preds = %bb.j
  %.sroa.422.0.copyload57 = ptrtoaddr ptr %.sroa.422.0.copyload to i64
  %.sroa.021.0.copyload56 = ptrtoaddr ptr %.sroa.021.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.0.copyload) ]
  %i.n = sub nuw i64 %.sroa.725.0.copyload, %.sroa.524.0.copyload ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  %i.o = sub i64 %.sroa.422.0.copyload57, %.sroa.021.0.copyload56
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check58 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.n, 24
  %n.vec = and i64 %i.n, -32                      ; 4 uses
  %i.q = add i64 %.sroa.524.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = add nuw i64 %.sroa.524.0.copyload, %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1
  %wide.load59 = load <16 x i8>, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> %wide.load, ptr %i.s, align 1
  store <16 x i8> %wide.load59, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.n, -8                     ; 3 uses
  %i.x = add i64 %.sroa.524.0.copyload, %n.vec60
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %i.y = add nuw i64 %.sroa.524.0.copyload, %index61 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %i.y
  %wide.load62 = load <8 x i8>, ptr %i.aa, align 1
  store <8 x i8> %wide.load62, ptr %i.z, align 1
  %index.next63 = add nuw i64 %index61, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !164

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %i.n, %n.vec60
  br i1 %cmp.n64, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.524.039.ph = phi i64 [ %.sroa.524.0.copyload, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 4 uses
  %i.ac = sub i64 %.sroa.725.0.copyload, %.sroa.524.039.ph
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol
  %.sroa.524.039.prol = phi i64 [ %i.af, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ %.sroa.524.039.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsksn9slvsHfS_10image_webp.exit.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %.sroa.524.039.prol
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.sroa.524.039.prol
end_hunk_0
