Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.15?download=true
inline.NumInlined: 1499
inline.NumDeleted: 696
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek15stream_positionCsltEA4u8Pgfu_11candle_core:bb.a
  %i.m = sub nuw i64 %i.j, %i.e
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.n, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #36
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.merged = phi { i64, ptr } [ %i.o, %bb.c ], [ %i.g, %bb.a ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seekCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef range(i64 0, 3) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !17
  %i.f = sub i64 %i.c, %i.e                       ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %2, i64 %i.f) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = tail call { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.i, i64 noundef %1, i64 noundef %2) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.m = trunc nuw i64 %i.k to i1
  br i1 %i.m, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i1 } %i.g, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = tail call { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.o, i64 noundef 2, i64 noundef %i.n) ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.s = trunc nuw i64 %i.q to i1
  br i1 %i.s, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = sub i64 0, %i.f
  %i.v = tail call { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.t, i64 noundef 2, i64 noundef %i.u) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = extractvalue { i64, ptr } %i.v, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.z = tail call { i64, ptr } @_RNvXsc_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.t, i64 noundef 2, i64 noundef %2) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.d
  %.sroa.028.0 = phi ptr [ %i.r, %bb.d ], [ %i.ab, %bb.g ], [ %i.l, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.d, %bb.f, %bb.h
  %.sroa.6.0 = phi ptr [ %i.y, %bb.f ], [ %i.r, %bb.d ], [ %.sroa.028.0, %bb.h ], [ %i.ab, %bb.g ], [ %i.l, %bb.c ]
  %.sroa.06.0 = phi i64 [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.c ]
  %i.ae = insertvalue { i64, ptr } poison, i64 %.sroa.06.0, 0
  %i.af = insertvalue { i64, ptr } %i.ae, ptr %.sroa.6.0, 1
  ret { i64, ptr } %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBV_6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2248, !noundef !17 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBQ_6TensorEE13drop_elementsBS_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !2249
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBE_6TensorEEBG_.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBE_6TensorEEBG_.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBE_6TensorEEBG_.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  %.not11.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2249 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted13.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2249
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !2249
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !2249
  br label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val79.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !2249
  %i.k = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -256 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !2249
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !2248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2255, !noalias !2248, !nonnull !17, !noundef !17
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !2256
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBE_6TensorEEBG_.exit.i

bb.d:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #35, !noalias !2248
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBE_6TensorEEBG_.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBE_6TensorEEBG_.exit.i: ; preds = %bb.d, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit.i
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBQ_6TensorEE13drop_elementsBS_.exit, label %bb.b

_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBQ_6TensorEE13drop_elementsBS_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBE_6TensorEEBG_.exit.i, %bb.a
  %i.z = load i64, ptr %0, align 8, !range !34, !noundef !17 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBQ_6TensorEE13drop_elementsBS_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !17 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !17, !noundef !17
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.z) #37
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.f, %bb.e, %_RNvMso_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_7RawIterTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBQ_6TensorEE13drop_elementsBS_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !17 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !17 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !17, !noundef !17
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.a) #37
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBP_6TensorNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 5 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val13.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !2262
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBR_6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBT_.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %2 = icmp slt i64 %.sroa.43.0.copyload, 1152921504606846975
  tail call void @llvm.assume(i1 %2)
  %i.b = shl i64 %.sroa.43.0.copyload, 4          ; 2 uses
  %3 = add i64 %i.b, 16                           ; 2 uses
  %4 = add nsw i64 %.sroa.43.0.copyload, 17
  %i.c = add i64 %4, %3                           ; 3 uses
  %5 = icmp uge i64 %i.c, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.c, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.d = sub nuw nsw i64 -16, %i.b
  %i.e = getelementptr inbounds i8, ptr %.sroa.02.0.copyload, i64 %i.d
  br label %_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBR_6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBT_.exit

_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBR_6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBT_.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.511.0.i = phi ptr [ undef, %bb.a ], [ %i.e, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.410.0.i = phi i64 [ undef, %bb.a ], [ %i.c, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.g = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.h = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.g, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 5 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 5 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8
  %.val13.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload, align 16, !noalias !2268
  %i.a = icmp eq i64 %.sroa.43.0.copyload, 0
  br i1 %i.a, label %_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsltEA4u8Pgfu_11candle_core.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.b = icmp slt i64 %.sroa.43.0.copyload, 4611686018427387900
  tail call void @llvm.assume(i1 %i.b)
  %i.c = shl i64 %.sroa.43.0.copyload, 2
  %i.d = and i64 %i.c, -16                        ; 2 uses
  %2 = add i64 %i.d, 16                           ; 2 uses
  %i.e = add nsw i64 %.sroa.43.0.copyload, 17
  %i.f = add i64 %i.e, %2                         ; 3 uses
  %3 = icmp uge i64 %i.f, %2
  tail call void @llvm.assume(i1 %3)
  %4 = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %4)
  %i.g = sub nuw nsw i64 -16, %i.d
  %i.h = getelementptr inbounds i8, ptr %.sroa.02.0.copyload, i64 %i.g
  br label %_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsltEA4u8Pgfu_11candle_core.exit

_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.514.0.i = phi ptr [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sroa.413.0.i = phi i64 [ undef, %bb.a ], [ %i.f, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.j = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.k = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.j, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.55.0.copyload, ptr %.sroa.101.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i64, ptr } @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBV_6TensorEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBX_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !2271, !noundef !17 ; 2 uses
  %.not11.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !2271 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.g, align 8, !alias.scope !2271
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !2271
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !2271
  br label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val79.i = load <16 x i8>, ptr %i.h, align 16, !noalias !2271
  %i.j = icmp sgt <16 x i8> %.val79.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -256 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !2271
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.v = load i64, ptr %i.u, align 8, !noundef !17
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !17, !noundef !17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit
  %.sroa.2.0 = phi ptr [ %i.x, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.v, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsltEA4u8Pgfu_11candle_core6tensor8TensorIdNtBX_6TensorEE9next_implKb0_EBZ_.exit ], [ undef, %bb.a ]
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.z = insertvalue { i64, ptr } %i.y, ptr %.sroa.2.0, 1
  ret { i64, ptr } %i.z
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTmuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !2274, !noundef !17 ; 2 uses
  %.not11.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !2274 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmuEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.g, align 8, !alias.scope !2274
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !2274
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !2274
  br label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmuEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val79.i = load <16 x i8>, ptr %i.h, align 16, !noalias !2274
  %i.j = icmp sgt <16 x i8> %.val79.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmuEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !2274
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !noundef !17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmuEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit
  %.sroa.3.0 = phi i32 [ %i.v, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmuEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmuEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit ], [ 0, %bb.a ]
  %i.w = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.x = insertvalue { i32, i32 } %i.w, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.x
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !2277, !noundef !17 ; 2 uses
  %.not11.i = icmp eq i16 %i.e, 0
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !2277 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.f, align 8, !alias.scope !2277
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !2277
  store ptr %i.j, ptr %0, align 8, !alias.scope !2277
  br label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.val79.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2277
  %i.i = icmp sgt <16 x i8> %.val79.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -512 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.i to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE9next_implKb0_ECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.b, %._crit_edge.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i
end_hunk_0
