Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/span-7cadf1e4e9c34a5c.span.9c05c6af7d1e70b4-cgu.04?download=true
inline.NumInlined: 156
inline.NumDeleted: 102
begin_hunk_0_@_RNvMNtCsdovh4xi6v3I_4span3mapNtB2_7SpanMap4push:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsdovh4xi6v3I_4span3mapNtB2_7SpanMap5merge(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  %i.e = alloca [8 x i8], align 4                 ; 4 uses
  store i32 %1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %2, ptr %i.f, align 4
  store i32 %3, ptr %i.d, align 4
  call void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEE10retain_mutNCNvMNtB1n_3mapNtB24_7SpanMap5merge0EB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.j
  store ptr %i.h, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.m, align 8
  call void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterBG_ENCNvMNtB1o_3mapNtB3s_7SpanMap5merges_0EEB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66
  store ptr %i.a, ptr %i.b, align 8, !noalias !66
  %i.r = icmp samesign ult i64 %i.q, 2
  br i1 %i.r, label %_RINvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanE20sort_unstable_by_keyBw_NCNvMNtB1d_3mapNtB26_7SpanMap5merges0_0EB1d_.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.s = icmp samesign ult i64 %i.q, 21
  br i1 %i.s, label %bb.d, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanENCINvMB6_SBT_20sort_unstable_by_keyBU_NCNvMNtB1B_3mapNtB2H_7SpanMap5merges0_0E0EB1B_(ptr noalias nofree noundef nonnull align 4 %i.o, i64 noundef range(i64 0, 384307168202282326) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
  br label %_RINvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanE20sort_unstable_by_keyBw_NCNvMNtB1d_3mapNtB26_7SpanMap5merges0_0EB1d_.exit

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanENCINvMB8_SB1m_20sort_unstable_by_keyB1n_NCNvMNtB24_3mapNtB3c_7SpanMap5merges0_0E0EB24_(ptr noalias nofree noundef nonnull align 4 %i.o, i64 noundef range(i64 0, 384307168202282326) %i.q, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanE20sort_unstable_by_keyBw_NCNvMNtB1d_3mapNtB26_7SpanMap5merges0_0EB1d_.exit

_RINvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanE20sort_unstable_by_keyBw_NCNvMNtB1d_3mapNtB26_7SpanMap5merges0_0EB1d_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.t, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsdovh4xi6v3I_4span3mapNtB2_7SpanMap6finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.i
  store ptr %i.g, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  call void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEKj2_ENtNtNtNtB17_4iter6traits8iterator8Iterator4nextB2o_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
  %i.m = load ptr, ptr %i.a, align 8, !noalias !75, !noundef !5 ; 2 uses
  %.not7.not.i = icmp eq ptr %i.m, null
  br i1 %.not7.not.i, label %_RINvYINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEKj2_ENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB2P_3all5checkARB1C_B2L_NCNvMNtB2k_3mapNtB4f_7SpanMap6finish0E0INtNtNtB13_3ops12control_flow11ControlFlowuEEB2k_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi ptr [ %i.m, %.lr.ph.i ], [ %i.q, %bb.c ]
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !75, !nonnull !5, !noundef !5
  %i.o = load i32, ptr %i.n, align 4, !noalias !76, !noundef !5
  %i.p = load i32, ptr %.sroa.5.0.copyload.i, align 4, !noalias !76, !noundef !5
  %.not4.i = icmp ult i32 %i.o, %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  br i1 %.not4.i, label %bb.c, label %bb.e

_RINvYINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEKj2_ENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB2P_3all5checkARB1C_B2L_NCNvMNtB2k_3mapNtB4f_7SpanMap6finish0E0INtNtNtB13_3ops12control_flow11ControlFlowuEEB2k_.exit.thread: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  call void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEKj2_ENtNtNtNtB17_4iter6traits8iterator8Iterator4nextB2o_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
  %i.q = load ptr, ptr %i.a, align 8, !noalias !75, !noundef !5 ; 2 uses
  %.not.not.i = icmp eq ptr %i.q, null
  br i1 %.not.not.i, label %_RINvYINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEKj2_ENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB2P_3all5checkARB1C_B2L_NCNvMNtB2k_3mapNtB4f_7SpanMap6finish0E0INtNtNtB13_3ops12control_flow11ControlFlowuEEB2k_.exit.thread, label %bb.b

bb.d:                                             ; preds = %_RINvYINtNtCscFGNKo4Sl5v_9itertools10array_impl12ArrayWindowsINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEKj2_ENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB2P_3all5checkARB1C_B2L_NCNvMNtB2k_3mapNtB4f_7SpanMap6finish0E0INtNtNtB13_3ops12control_flow11ControlFlowuEEB2k_.exit.thread, %bb.g, %bb.f, %bb.e, %bb.h, %bb.i
  %i.r = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  %i.s = icmp ugt i64 %i.r, %i.i
  br i1 %i.s, label %bb.j, label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.t = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.v = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtCsdovh4xi6v3I_4span3mapNtB4_7SpanMap6finish10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.v, label %bb.g [
    i8 0, label %bb.d
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !77

bb.g:                                             ; preds = %bb.f
  %i.w = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtCsdovh4xi6v3I_4span3mapNtB4_7SpanMap6finish10___CALLSITE) #31 ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.g
  %.sroa.06.0 = phi i8 [ %i.w, %bb.g ], [ %i.v, %bb.f ], [ %i.v, %bb.f ]
  %i.y = load ptr, ptr @_RNvNvMNtCsdovh4xi6v3I_4span3mapNtB4_7SpanMap6finish10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5
  %i.z = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.y, i8 noundef %.sroa.06.0)
  br i1 %i.z, label %bb.i, label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr @_RNvNvMNtCsdovh4xi6v3I_4span3mapNtB4_7SpanMap6finish10___CALLSITE, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @10, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.ac, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @11, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.j:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ae = mul nuw i64 %i.r, 24                    ; 2 uses
  %i.af = icmp eq i64 %i.i, 0
  br i1 %i.af, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.j
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !80
  br label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsdovh4xi6v3I_4span.exit.thread

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsdovh4xi6v3I_4span.exit.thread: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit.i.i
  %storemerge.i = phi ptr [ inttoptr (i64 4 to ptr), %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i ], [ %i.ah, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit.i.i ]
  store ptr %storemerge.i, ptr %i.f, align 8, !alias.scope !80
  store i64 %i.i, ptr %0, align 8, !alias.scope !80
  br label %bb.k

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit.i.i: ; preds = %bb.j
  %i.ag = mul nuw i64 %i.i, 24                    ; 2 uses
  %i.ah = call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 4, i64 noundef %i.ag) #29, !noalias !80 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsdovh4xi6v3I_4span.exit.thread

bb.k:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsdovh4xi6v3I_4span.exit.thread, %bb.d
  ret void

bb.l:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit.i.i
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ag) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsdovh4xi6v3I_4span3mapNtB2_7SpanMap7span_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 7 uses
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.sroa.01.019.i.i, 1            ; 2 uses
  %i.f = add nuw nsw i64 %i.e, %.sroa.05.018.i.i  ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.d
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.f
  %.val12.i.i = load i32, ptr %i.h, align 4, !alias.scope !87, !noalias !88, !noundef !5
  %.not.i16.i.i = icmp ugt i32 %.val12.i.i, %2
  %i.i = select i1 %.not.i16.i.i, i64 %.sroa.05.018.i.i, i64 %i.f, !unpredictable !5 ; 2 uses
  %i.j = sub nuw nsw i64 %.sroa.01.019.i.i, %i.e  ; 2 uses
  %i.k = icmp ugt i64 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load i32, ptr %i.l, align 4, !alias.scope !87, !noalias !88, !noundef !5
  %.not.i.i.i = icmp ule i32 %.val14.i.i, %2
  %i.m = zext i1 %.not.i.i.i to i64
  %i.n = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.m ; 4 uses
  %i.o = icmp ule i64 %i.n, %i.d
  tail call void @llvm.assume(i1 %i.o)
  %3 = icmp ult i64 %i.n, %i.d
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.q, i64 20, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge.i.i
  %.sroa.4.0.i.i3 = phi i64 [ %i.n, %._crit_edge.i.i ], [ %i.d, %bb.a ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i3, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanE14swap_uncheckedB1c_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsdovh4xi6v3I_4span3mapNtB5_11RealSpanMap14span_for_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %3, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !5
  %.not = icmp ugt i32 %3, %i.f
  br i1 %.not, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXNtCsuAhG64lL82_9text_size4sizeNtB2_8TextSizeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 6 uses
  switch i64 %i.j, label %.lr.ph.i [
    i64 0, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjjE10unwrap_errCsdovh4xi6v3I_4span.exit.thread
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i32, ptr %i.k, align 4, !alias.scope !92, !noalias !93, !noundef !5 ; 2 uses
  %i.l = tail call i8 @llvm.ucmp.i8.i32(i32 %.val14.i, i32 %2)
  %i.m = icmp eq i32 %.val14.i, %2
  %spec.store.select.i.i = select i1 %i.m, i8 -1, i8 %i.l ; 2 uses
  %i.n = icmp eq i8 %spec.store.select.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjjE10unwrap_errCsdovh4xi6v3I_4span.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.01.017.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.05.016.i = phi i64 [ %i.t, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = lshr i64 %.sroa.01.017.i, 1              ; 2 uses
  %i.p = add nuw nsw i64 %i.o, %.sroa.05.016.i    ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.j
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p
  %.val12.i = load i32, ptr %i.r, align 4, !alias.scope !92, !noalias !93, !noundef !5
  %i.s = icmp ugt i32 %.val12.i, %2
  %i.t = select i1 %i.s, i64 %.sroa.05.016.i, i64 %i.p, !unpredictable !5 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.017.i, %i.o    ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.05.0.lcssa.i, ptr %i.a, align 8
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 46, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjjE10unwrap_errCsdovh4xi6v3I_4span.exit: ; preds = %._crit_edge.i
  %i.w = icmp eq i8 %spec.store.select.i.i, -1
  %i.x = zext i1 %i.w to i64
  %i.y = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.x ; 2 uses
  %i.z = icmp ule i64 %i.y, %i.j
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i64 %i.y, -1                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.j
  br i1 %i.ab, label %bb.e, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjjE10unwrap_errCsdovh4xi6v3I_4span.exit.thread

bb.e:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjjE10unwrap_errCsdovh4xi6v3I_4span.exit
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !5 ; 4 uses
  %i.ae = icmp ult i32 %2, %i.ad
  %i.af = icmp ult i32 %3, %i.ad
  %or.cond.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i, label %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_sub.exit, label %bb.f

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjjE10unwrap_errCsdovh4xi6v3I_4span.exit.thread: ; preds = %bb.c, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjjE10unwrap_errCsdovh4xi6v3I_4span.exit
  %.sroa.4.0.i.ph21 = phi i64 [ %i.aa, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultjjE10unwrap_errCsdovh4xi6v3I_4span.exit ], [ -1, %bb.c ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.ph21, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !5
  %i.ai = sub nuw i32 %2, %i.ad
  %i.aj = sub nuw i32 %3, %i.ad
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !noundef !5 ; 3 uses
  %i.am = lshr i32 %i.al, 23
  %i.an = and i32 %i.al, 2113929216
  %i.ao = icmp eq i32 %i.an, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = and i32 %i.am, 3
  %i.aq = sub nuw nsw i32 -253, %i.ap
  store i32 %i.ai, ptr %0, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aj, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.al, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ah, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.au, align 4
  ret void

_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_sub.exit: ; preds = %bb.e
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsdovh4xi6v3I_4span3mapNtB5_11RealSpanMap8absolute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.a = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #29 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 8) #30
  unreachable

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 -6341068275337658368, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.c, align 8
  store ptr %i.a, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %i.e, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEE11insert_fullCsdovh4xi6v3I_4span(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i32, ptr %1, align 4, !alias.scope !143, !noalias !144, !noundef !5 ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = mul i64 %i.d, -1065810590584100411
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !143, !noalias !144, !noundef !5 ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.e, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !143, !noalias !144, !noundef !5 ; 3 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 26) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !145, !noalias !146, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !145, !noalias !146, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !147, !noalias !148, !noundef !5
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE0ECsdovh4xi6v3I_4span.exit.i.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.y = tail call { i64, i64 } @_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE0EB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.r, i64 noundef %i.t, i1 noundef zeroext true) #31, !noalias !149 ; 0 uses
  br label %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE0ECsdovh4xi6v3I_4span.exit.i.i

_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuE0ECsdovh4xi6v3I_4span.exit.i.i: ; preds = %bb.b, %bb.a
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !150, !noalias !151, !nonnull !5, !noundef !5 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i.i = load i64, ptr %i.z, align 8, !alias.scope !150, !noalias !151, !noundef !5 ; 4 uses
  %i.aa = lshr i64 %i.p, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8           ; 3 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.ab, i64 0
end_hunk_0
