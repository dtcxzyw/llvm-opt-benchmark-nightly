Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter11ChunksExactyENtNtNtNtBa_4iter6traits8iterator8Iterator4foldyNCINvNtNtBZ_8adapters3map8map_foldRSyyyNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB2p_26PrimitiveStructuralEncoder16encode_miniblocks8_0NCINvXsC_NtBX_5accumyNtB4u_3Sum3sumINtB1J_3MapB3_B2h_EE0E0EB2v_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !20422, !noundef !75 ; 4 uses
  %.promoted = load i64, ptr %i.a, align 8, !alias.scope !20422 ; 2 uses
  %.not.i15 = icmp ugt i64 %i.c, %.promoted
  br i1 %.not.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %.lr.ph.split.us, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB17_26PrimitiveStructuralEncoder16encode_miniblocks8_0NCINvXsC_NtNtB8_6traits5accumyNtB3c_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactyEBZ_EE0E0B1d_.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @835) #66, !noalias !20423
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB17_26PrimitiveStructuralEncoder16encode_miniblocks8_0NCINvXsC_NtNtB8_6traits5accumyNtB3c_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactyEBZ_EE0E0B1d_.exit: ; preds = %.lr.ph, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB17_26PrimitiveStructuralEncoder16encode_miniblocks8_0NCINvXsC_NtNtB8_6traits5accumyNtB3c_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactyEBZ_EE0E0B1d_.exit
  %i.d = phi i64 [ %i.e, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB17_26PrimitiveStructuralEncoder16encode_miniblocks8_0NCINvXsC_NtNtB8_6traits5accumyNtB3c_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactyEBZ_EE0E0B1d_.exit ], [ %.promoted, %.lr.ph ]
  %i.e = sub nuw i64 %i.d, %i.c                   ; 2 uses
  %.not.i = icmp ugt i64 %i.c, %i.e
  br i1 %.not.i, label %._crit_edge, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB17_26PrimitiveStructuralEncoder16encode_miniblocks8_0NCINvXsC_NtNtB8_6traits5accumyNtB3c_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactyEBZ_EE0E0B1d_.exit

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRSyyyNCNvMsP_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB17_26PrimitiveStructuralEncoder16encode_miniblocks8_0NCINvXsC_NtNtB8_6traits5accumyNtB3c_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter11ChunksExactyEBZ_EE0E0B1d_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldyNCNvMs8_NtNtNtNtBP_9encodings7logical9primitive6sparseNtB2Q_25SparseStructuralScheduler7try_news_0INtNtBa_6result6ResultyNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEBP_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !20436, !nonnull !75, !noundef !75 ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !alias.scope !20436 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread
  %.sroa.0.028 = phi i64 [ 1, %.lr.ph ], [ %i.w, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread ] ; 2 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !20436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20437
  call fastcc void @_RNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_25SparseStructuralScheduler13require_layer(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %i.h), !noalias !20437
  %i.j = load i8, ptr %i.a, align 8, !range !88, !noalias !20437, !noundef !75 ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.c, label %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread19

_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread19: ; preds = %bb.b
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.415.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.516.0.copyload.i = load ptr, ptr %i.f, align 8, !noalias !20437
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.621.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.617.0..sroa_idx.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20437
  %i.k = ptrtoint ptr %.sroa.516.0.copyload.i to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !noalias !20437, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20437
  %i.m = load i64, ptr %i.l, align 8, !range !165, !noalias !20437, !noundef !75 ; 2 uses
  %i.n = icmp ne i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.m, 17
  br i1 %i.o, label %bb.d, label %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.q = load i64, ptr %i.p, align 8, !noalias !20437, !noundef !75
  %i.r = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.028, i64 %i.q) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { i64, i1 } %i.r, 0
  br label %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread

_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit: ; preds = %bb.d
  call fastcc void @_RNCNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB9_25SparseStructuralScheduler7try_news_00Bh_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.b)
  %.pr = load i8, ptr %i.b, align 8, !alias.scope !20438, !noalias !20439 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20439)
  %.not.i7 = icmp eq i8 %.pr, -1
  %.pre = load i64, ptr %i.g, align 8, !alias.scope !20440 ; 2 uses
  br i1 %.not.i7, label %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread, label %.loopexit

._crit_edge:                                      ; preds = %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.w, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.u, align 8, !alias.scope !20441
  store i8 -1, ptr %0, align 8, !alias.scope !20441
  br label %bb.f

.loopexit:                                        ; preds = %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread19
  %.sroa.710.0.copyload12 = phi i64 [ %i.k, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread19 ], [ %.pre, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit ]
  %i.v = phi i8 [ %i.j, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread19 ], [ %.pr, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit ]
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx9, i64 7, i1 false)
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx13, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %i.v, ptr %0, align 8, !alias.scope !20442
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.710.0.copyload12, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20442
  br label %bb.f

_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit.thread: ; preds = %bb.e, %bb.c, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit
  %i.w = phi i64 [ %.pre, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler7try_news_0Bf_.exit ], [ %i.t, %bb.e ], [ %.sroa.0.028, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = icmp eq ptr %i.i, %i.d
  br i1 %i.x, label %._crit_edge, label %bb.b

bb.f:                                             ; preds = %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldyNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB1I_25SparseStructuralScheduler30validate_packed_value_encodings_0INtNtBa_6result6ResultyNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB1Q_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !20453, !nonnull !75, !noundef !75 ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !alias.scope !20453 ; 2 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit.thread
  %.sroa.0.023 = phi i64 [ 0, %.lr.ph ], [ %i.k, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit.thread ] ; 2 uses
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.g, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !20453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.f, align 8, !noundef !75
  %i.h = add i64 %.val, %.sroa.0.023              ; 2 uses
  %i.i = icmp ult i64 %i.h, %.sroa.0.023
  br i1 %i.i, label %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit, label %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit.thread, !prof !81

_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit: ; preds = %bb.b
  call fastcc void @_RNCNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB9_25SparseStructuralScheduler30validate_packed_value_encodings_00Bh_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.a)
  %.pr = load i8, ptr %i.a, align 8, !alias.scope !20454, !noalias !20455 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20455)
  %.not.i = icmp eq i8 %.pr, -1
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !20456 ; 2 uses
  br i1 %.not.i, label %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit.thread, label %bb.c

._crit_edge:                                      ; preds = %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit.thread, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit.thread ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.j, align 8, !alias.scope !20457
  store i8 -1, ptr %0, align 8, !alias.scope !20457
  br label %bb.d

bb.c:                                             ; preds = %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx8, i64 7, i1 false)
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx12, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %.pr, ptr %0, align 8, !alias.scope !20458
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20458
  br label %bb.d

_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit.thread: ; preds = %bb.b, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit
  %i.k = phi i64 [ %.pre, %_RNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_25SparseStructuralScheduler30validate_packed_value_encodings_0Bf_.exit ], [ %i.h, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp eq ptr %i.g, %i.c
  br i1 %i.l, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %._crit_edge, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iter8IntoIterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1j_4iter6traits8iterator8Iterator7collectINtNtBc_3vec3VecB1c_EECsjjpCCFGI3ul_14lance_encoding(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20519)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !20520, !noalias !20518 ; 8 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !20520, !noalias !20518 ; 15 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !20520, !noalias !20518 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !20520, !noalias !20518 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20522)
  %i.a = shl i64 %.sroa.8.0.copyload.i, 4         ; 4 uses
  %i.b = icmp ugt i64 %.sroa.8.0.copyload.i, 1152921504606846975
  %.not.i.i.i.i.i = icmp ugt i64 %i.a, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.b, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !20523
  %i.d = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, 17) 8) #63, !noalias !20523 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.a) #66
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !20524

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.d, %bb.c ] ; 11 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.sroa.8.0.copyload.i, %bb.c ] ; 2 uses
  %i.f = icmp samesign ule i64 %.sroa.8.0.copyload.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.g, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_Es_0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %_RINvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE12slice_rangesNtB19_9RangeFullECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i

_RINvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE12slice_rangesNtB19_9RangeFullECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.7.0.copyload.i, %.sroa.0.0.copyload.i
  %i.h = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 0, i64 %.sroa.0.0.copyload.i ; 2 uses
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = sub nuw i64 %.sroa.7.0.copyload.i, %i.h ; 4 uses
  %i.i = sub i64 %.sroa.0.0.copyload.i, %.sroa.04.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.not11.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.j = add i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, %.sroa.8.0.copyload.i
  %i.k = sub nuw i64 %.sroa.8.0.copyload.i, %i.i
  %i.l = shl nuw nsw i64 %i.k, 4
  %.sroa.523.0.i.i.i.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i, i64 %i.j ; 2 uses
  %.sroa.11.0.i.i.i.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i.i.i.i, i64 %i.l, i64 0 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload.i, i64 %.sroa.523.0.i.i.i.i.i.i.i.i
  %i.n = icmp samesign eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, %.sroa.523.0.i.i.i.i.i.i.i.i
  br i1 %i.n, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_E0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RINvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE12slice_rangesNtB19_9RangeFullECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i
  %i.o = getelementptr [16 x i8], ptr %.sroa.5.0.copyload.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.copyload.i, i64 %i.i)
  %i.q = add nuw nsw i64 %i.p, 1152921504606846975
  %i.r = and i64 %i.q, 1152921504606846975        ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %umin = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0.copyload.i, i64 %i.i) ; 2 uses
  %i.t = shl nuw i64 %umin, 4
  %scevgep = getelementptr i8, ptr %.sroa.10.0.i.i.i.i, i64 %i.t
  %i.u = add i64 %.sroa.7.0.copyload.i, %umin
  %i.v = sub i64 %i.u, %i.h
  %i.w = shl i64 %i.v, 4
  %scevgep6 = getelementptr i8, ptr %.sroa.5.0.copyload.i, i64 %i.w
  %bound0 = icmp ult ptr %.sroa.10.0.i.i.i.i, %scevgep6
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 2305843009213693950      ; 5 uses
  %i.x = shl i64 %n.vec, 4
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.z = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep7 = getelementptr i8, ptr %i.aa, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !20525, !noalias !20526
  %wide.load8 = load <2 x i64>, ptr %next.gep7, align 8, !alias.scope !20525, !noalias !20526
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %index
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %index
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %wide.load, ptr %i.ab, align 8, !alias.scope !20527, !noalias !20528
  store <2 x i64> %wide.load8, ptr %i.ad, align 8, !alias.scope !20527, !noalias !20528
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !20499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_E0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %.ph33 = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  %.ph34 = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.ak, %scalar.ph ], [ %.ph33, %scalar.ph.preheader ] ; 2 uses
  %i.ag = phi ptr [ %i.ah, %scalar.ph ], [ %.ph34, %scalar.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.af
  %i.aj = load <2 x i64>, ptr %i.ag, align 8, !noalias !20526
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !noalias !20529
  %i.ak = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.al = icmp eq ptr %i.ah, %i.m
  br i1 %i.al, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_E0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !20500

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_E0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i: ; preds = %scalar.ph, %middle.block, %_RINvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE12slice_rangesNtB19_9RangeFullECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE12slice_rangesNtB19_9RangeFullECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ], [ %i.ak, %scalar.ph ] ; 6 uses
  %i.am = getelementptr i8, ptr %.sroa.5.0.copyload.i, i64 %.sroa.11.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.an = icmp samesign eq i64 %.sroa.11.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_Es_0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader

.lr.ph.i11.i.i.i.i.i.i.i.i.preheader:             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_E0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i
  %i.ao = add nsw i64 %.sroa.11.0.i.i.i.i.i.i.i.i, -16 ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check17 = icmp ult i64 %i.ao, 144
  br i1 %min.iters.check17, label %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader31, label %vector.memcheck10

vector.memcheck10:                                ; preds = %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader
  %i.ar = shl i64 %.sroa.4.0.i.i.i.i.i.i, 4       ; 2 uses
  %scevgep11 = getelementptr i8, ptr %.sroa.10.0.i.i.i.i, i64 %i.ar
  %i.as = getelementptr i8, ptr %.sroa.10.0.i.i.i.i, i64 %.sroa.11.0.i.i.i.i.i.i.i.i
  %scevgep12 = getelementptr i8, ptr %i.as, i64 %i.ar
  %bound013 = icmp ult ptr %scevgep11, %i.am
  %bound114 = icmp ult ptr %.sroa.5.0.copyload.i, %scevgep12
  %found.conflict15 = and i1 %bound013, %bound114
  br i1 %found.conflict15, label %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader31, label %vector.ph18

vector.ph18:                                      ; preds = %vector.memcheck10
  %n.vec19 = and i64 %i.aq, 2305843009213693950   ; 4 uses
  %i.at = add i64 %.sroa.4.0.i.i.i.i.i.i, %n.vec19 ; 2 uses
  %i.au = shl i64 %n.vec19, 4
  %i.av = getelementptr i8, ptr %.sroa.5.0.copyload.i, i64 %i.au
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph18
  %index21 = phi i64 [ 0, %vector.ph18 ], [ %index.next26, %vector.body20 ] ; 3 uses
  %i.aw = add nuw i64 %.sroa.4.0.i.i.i.i.i.i, %index21 ; 2 uses
  %i.ax = shl i64 %index21, 4                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %.sroa.5.0.copyload.i, i64 %i.ax
  %i.ay = getelementptr i8, ptr %.sroa.5.0.copyload.i, i64 %i.ax
  %next.gep23 = getelementptr i8, ptr %i.ay, i64 16
  %wide.load24 = load <2 x i64>, ptr %next.gep22, align 8, !alias.scope !20530, !noalias !20531
  %wide.load25 = load <2 x i64>, ptr %next.gep23, align 8, !alias.scope !20530, !noalias !20531
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.aw
  %i.ba = getelementptr [16 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.aw
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store <2 x i64> %wide.load24, ptr %i.az, align 8, !alias.scope !20532, !noalias !20533
  store <2 x i64> %wide.load25, ptr %i.bb, align 8, !alias.scope !20532, !noalias !20533
  %index.next26 = add nuw i64 %index21, 2         ; 2 uses
  %i.bc = icmp eq i64 %index.next26, %n.vec19
  br i1 %i.bc, label %middle.block27, label %vector.body20, !llvm.loop !20512

middle.block27:                                   ; preds = %vector.body20
  %cmp.n28 = icmp eq i64 %i.aq, %n.vec19
  br i1 %cmp.n28, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_Es_0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader31

.lr.ph.i11.i.i.i.i.i.i.i.i.preheader31:           ; preds = %vector.memcheck10, %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader, %middle.block27
  %.ph = phi i64 [ %.sroa.4.0.i.i.i.i.i.i, %vector.memcheck10 ], [ %.sroa.4.0.i.i.i.i.i.i, %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block27 ]
  %.ph32 = phi ptr [ %.sroa.5.0.copyload.i, %vector.memcheck10 ], [ %.sroa.5.0.copyload.i, %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block27 ]
  br label %.lr.ph.i11.i.i.i.i.i.i.i.i

.lr.ph.i11.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader31, %.lr.ph.i11.i.i.i.i.i.i.i.i
  %i.bd = phi i64 [ %i.bi, %.lr.ph.i11.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %i.be = phi ptr [ %i.bf, %.lr.ph.i11.i.i.i.i.i.i.i.i ], [ %.ph32, %.lr.ph.i11.i.i.i.i.i.i.i.i.preheader31 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.bd
  %i.bh = load <2 x i64>, ptr %i.be, align 8, !noalias !20531
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !noalias !20534
  %i.bi = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.bj = icmp eq ptr %i.bf, %i.am
  br i1 %i.bj, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_Es_0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i11.i.i.i.i.i.i.i.i, !llvm.loop !20513

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_Es_0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i11.i.i.i.i.i.i.i.i, %middle.block27, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_E0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i
  %.sroa.4.1.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_E0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i ], [ %i.at, %middle.block27 ], [ %i.bi, %.lr.ph.i11.i.i.i.i.i.i.i.i ]
  %i.bk = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.bk, label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtNtNtNtBN_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtB8_11collections9vec_deque9into_iter8IntoIterBG_EECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_Es_0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.bl = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !20535
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtNtNtNtBN_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtB8_11collections9vec_deque9into_iter8IntoIterBG_EECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.bm

bb.f:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.bo = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !20536
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtNtNtNtBN_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtB8_11collections9vec_deque9into_iter8IntoIterBG_EECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1i_8adapters3map12map_try_foldRBJ_BJ_uINtNtBa_6result6ResultuzENCINvXs0_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque9into_iterINtB3l_8IntoIterBJ_EB1c_8try_folduNCINvB3h_4folduNCINvNvB1c_8for_each4callBJ_NCINvMsj_NtB3r_3vecINtB5G_3VecBJ_E14extend_trustedB4i_E0E0E0B2N_Es_0QB4Q_E0B2N_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, %bb.e
  store i64 %.sroa.4.0.i.i.i.i, ptr %0, align 8, !alias.scope !20537, !noalias !20538
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !20537, !noalias !20538
  %.sroa.6.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx12.i.i.i, align 8, !alias.scope !20537, !noalias !20538
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse24SparseLayerDecompressorsENCNCNvXs9_B1j_NtB1j_25SparseStructuralSchedulerNtB1l_23StructuralPageScheduler10initializes_0s0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtB1j_25SparseStructuralLayerPlanENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB1r_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [112 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20575
  store i8 -1, ptr %i.f, align 8, !noalias !20575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !20577, !noalias !20578
  %.sroa.4.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx7.i.i, align 8, !alias.scope !20577, !noalias !20579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20581
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse24SparseLayerDecompressorsENCNCNvXs9_B1F_NtB1F_25SparseStructuralSchedulerNtB1H_23StructuralPageScheduler10initializes_0s0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1N_(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc.i.i unwind label %bb.f, !noalias !20575

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = load i64, ptr %i.c, align 8, !range !20582, !noalias !20581, !noundef !75
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, -1
  br i1 %.not.i.i.i.i.i.i, label %.thread.i, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse24SparseLayerDecompressorsENCNCNvXs9_B1F_NtB1F_25SparseStructuralSchedulerNtB1H_23StructuralPageScheduler10initializes_0s0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1N_.exit.i.i.i.i.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse24SparseLayerDecompressorsENCNCNvXs9_B1F_NtB1F_25SparseStructuralSchedulerNtB1H_23StructuralPageScheduler10initializes_0s0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1N_.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !20583
  %i.h = call noundef align 8 dereferenceable_or_null(448) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 448, i64 noundef range(i64 1, 17) 8) #63, !noalias !20583 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanEBL_(ptr noalias noundef align 8 dereferenceable(112) %i.c) #67, !noalias !20581
  br label %.body.i.i

bb.c:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse24SparseLayerDecompressorsENCNCNvXs9_B1F_NtB1F_25SparseStructuralSchedulerNtB1H_23StructuralPageScheduler10initializes_0s0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1N_.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 448) #66
          to label %.noexc.i.i.i.i.i.i unwind label %bb.b, !noalias !20581

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  unreachable

end_hunk_0
begin_hunk_1_@_RNCNvXsq_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_18MiniBlockSchedulerNtB7_23StructuralPageScheduler10initialize0Bd_:bb.a
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !range !76, !invariant.load !75, !alias.scope !29579, !noalias !29587 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %.body52.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i49.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i49.i.i: ; preds = %bb.dm
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !range !93, !invariant.load !75, !alias.scope !29579, !noalias !29587
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.li, i64 noundef range(i64 1, -9223372036854775807) %i.ll) #63, !noalias !29580
  br label %.body52.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i51.i.i, %bb.dl
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !29589
  store i64 0, ptr %i.ae, align 8, !alias.scope !29578, !noalias !29589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29580
  br label %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i

bb.dn:                                            ; preds = %.invoke.i.i
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = load ptr, ptr %.sroa.3.0.i.i, align 8, !invariant.load !75, !noalias !29587 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  invoke void %i.lo(ptr noundef nonnull %i.if)
          to label %bb.dp unwind label %bb.dq, !noalias !29587

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !range !76, !invariant.load !75, !noalias !29587 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %.body.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.dp
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !range !93, !invariant.load !75, !noalias !29587
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.lq, i64 noundef range(i64 1, -9223372036854775807) %i.lt) #63, !noalias !29587
  br label %.body.i

bb.dq:                                            ; preds = %bb.do
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !range !76, !invariant.load !75, !noalias !29587 ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %.body145.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.dq
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !range !93, !invariant.load !75, !noalias !29587
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.lw, i64 noundef range(i64 1, -9223372036854775807) %i.lz) #63, !noalias !29587
  br label %.body145.i

_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit.i.i
  %i.ma = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit54.i.i ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9WordsIterNCNvB1b_17build_chunk_index0EEB1h_.exit.i.i ]
  %.not98.i531 = icmp eq ptr %.sroa.11152.0, null
  %.not98.i = select i1 %.not.i70, i1 true, i1 %.not98.i531
  br i1 %.not98.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i
  %i.mb = and i64 %.sroa.15155.0, 7
  %i.mc = icmp eq i64 %i.mb, 0
  br i1 %i.mc, label %bb.dt, label %bb.fb, !prof !78

bb.ds:                                            ; preds = %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtB5_9WordsIterNCNvB5_17build_chunk_index0EEBb_.exit.i
  %i.md = trunc nuw i8 %.sroa.23.3225.i to i1
  br i1 %i.md, label %_RINvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB3_10PrefixSums11from_deltasINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1X_3ops5range5RangejENCNvB5_22flat_value_counts_iter0EEBb_.exit.i, label %bb.fh

bb.dt:                                            ; preds = %bb.dr
  %i.me = zext i16 %i.dj to i64                   ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7190.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !29591)
  %i.mg = lshr exact i64 %.sroa.15155.0, 3        ; 2 uses
  %i.mh = udiv i64 %i.mg, %i.mf                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29592
  %i.mi = add nuw nsw i64 %i.mh, 7                ; 2 uses
  %.sroa.05.0.i.i = lshr i64 %i.mi, 3             ; 4 uses
  %i.mj = and i64 %i.mi, 504
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %.split.i.i113.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %reass.sub.i.i.i = and i64 %.sroa.05.0.i.i, 288230376151711680
  %i.ml = add nuw nsw i64 %reass.sub.i.i.i, 64    ; 2 uses
  %i.mm = icmp samesign ult i64 %i.ml, %.sroa.05.0.i.i
  br i1 %i.mm, label %bb.dv, label %.split.thread.i.i.i, !prof !81

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc114.i unwind label %bb.fc, !noalias !29552

.noexc114.i:                                      ; preds = %bb.dv
  unreachable

.split.i.i113.i:                                  ; preds = %bb.dt
  %i.mn = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %i.mn, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i, label %.split.thread.i.i.i

.split.thread.i.i.i:                              ; preds = %.split.i.i113.i, %bb.du
  %.sroa.4.010.i.i.i = phi i64 [ %.sroa.05.0.i.i, %.split.i.i113.i ], [ %i.ml, %bb.du ] ; 3 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29593
  %i.mo = call noundef align 128 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.010.i.i.i, i64 noundef 128) #63, !noalias !29593 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.dw, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i, !prof !81

bb.dw:                                            ; preds = %.split.thread.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.010.i.i.i) #66
          to label %.noexc115.i unwind label %bb.fc, !noalias !29552

.noexc115.i:                                      ; preds = %bb.dw
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i: ; preds = %.split.thread.i.i.i, %.split.i.i113.i
  %.sroa.4.011.i.i.i = phi i64 [ 0, %.split.i.i113.i ], [ %.sroa.4.010.i.i.i, %.split.thread.i.i.i ]
  %.sroa.01.0.i.i.i = phi ptr [ inttoptr (i64 128 to ptr), %.split.i.i113.i ], [ %i.mo, %.split.thread.i.i.i ]
  store i64 128, ptr %i.i, align 16, !noalias !29592
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.4.011.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !29592
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store ptr %.sroa.01.0.i.i.i, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !noalias !29592
  %.sroa.641.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 6 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !29592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29592
  %i.mr = add nuw nsw i64 %i.mh, 1                ; 3 uses
  %.not.i.i103.i = icmp eq i64 %i.mh, 1152921504606846975
  br i1 %.not.i.i103.i, label %bb.dz, label %bb.dx, !prof !80

bb.dx:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i
  %i.ms = shl nuw nsw i64 %i.mr, 3                ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29594
  %i.mt = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ms, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29594 ; 4 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.dz, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i

.thread.i.i:                                      ; preds = %bb.ez, %bb.ey, %.body18.i.i, %bb.ef, %bb.ee, %bb.dy
  %.pn11.i.i = phi { ptr, i32 } [ %i.mv, %bb.dy ], [ %eh.lpad-body19.i.i, %.body18.i.i ], [ %i.oe, %bb.ef ], [ %i.oe, %bb.ee ], [ %lpad.phi.i.i, %bb.ey ], [ %lpad.phi.i.i, %bb.ez ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body117.i unwind label %bb.el, !noalias !29592

bb.dy:                                            ; preds = %bb.dz
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.dz:                                            ; preds = %bb.dx, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i
  %.sroa.10.0.ph.i.i = phi i64 [ %i.ms, %bb.dx ], [ undef, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ]
  %.sroa.443.0.ph.i.i = phi i64 [ 8, %bb.dx ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.443.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #66
          to label %bb.fa unwind label %bb.dy, !noalias !29592

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.dx
  store i64 %i.mr, ptr %i.h, align 8, !noalias !29592
  %i.mw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr %i.mt, ptr %i.mw, align 8, !noalias !29592
  %i.mx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.mt, align 8, !noalias !29592
  %invariant.op.i.i = add nsw i64 %.sroa.15155.0, -7
  store i64 1, ptr %i.mx, align 8, !noalias !29592
  %.not.i.not.i = icmp samesign ugt i64 %i.mg, %i.me
  br i1 %.not.i.not.i, label %.lr.ph.i104.preheader.i, label %._crit_edge.thread.i112.i

.lr.ph.i104.preheader.i:                          ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.my = shl nuw nsw i64 %i.mf, 3
  br label %.lr.ph.i104.i

._crit_edge.thread.i112.i:                        ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29592
  br label %bb.ea

._crit_edge.i109.i:                               ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i
  %.sroa.032.0.copyload.pre.i.i = load i64, ptr %i.h, align 8, !noalias !29592 ; 2 uses
  %.sroa.6.0.copyload.pre.i.i = load ptr, ptr %i.mw, align 8, !noalias !29592 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29592
  call void @llvm.experimental.noalias.scope.decl(metadata !29595)
  call void @llvm.experimental.noalias.scope.decl(metadata !29596)
  %.not.i16.i.i = icmp eq i64 %i.qg, 0
  br i1 %.not.i16.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.i109.i, %._crit_edge.thread.i112.i
  %.sroa.032.0.copyload106.i.i = phi i64 [ %i.mr, %._crit_edge.thread.i112.i ], [ %.sroa.032.0.copyload.pre.i.i, %._crit_edge.i109.i ] ; 5 uses
  %.sroa.6.0.copyload104.i.i = phi ptr [ %i.mt, %._crit_edge.thread.i112.i ], [ %.sroa.6.0.copyload.pre.i.i, %._crit_edge.i109.i ] ; 11 uses
  %.sroa.7.0.copyload102.i.i = phi i64 [ 1, %._crit_edge.thread.i112.i ], [ %i.qg, %._crit_edge.i109.i ] ; 7 uses
  %i.mz = getelementptr [8 x i8], ptr %.sroa.6.0.copyload104.i.i, i64 %.sroa.7.0.copyload102.i.i
  %i.na = getelementptr i8, ptr %i.mz, i64 -8
  %i.nb = load i64, ptr %i.na, align 8, !noalias !29597, !noundef !75
  %i.nc = icmp ult i64 %i.nb, 4294967296
  br i1 %i.nc, label %bb.eb, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.nd = icmp ult i64 %.sroa.7.0.copyload102.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.nd)
  %.idx9.i.i.i = shl nuw nsw i64 %.sroa.7.0.copyload102.i.i, 3 ; 3 uses
  %i.ne = getelementptr i8, ptr %.sroa.6.0.copyload104.i.i, i64 %.idx9.i.i.i ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.7.0.copyload102.i.i, 2 ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29598
  %i.nf = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx.i.i.i, i64 noundef range(i64 1, 17) 4) #63, !noalias !29598 ; 7 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.ec, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.eb
  %i.nh = add nsw i64 %.idx9.i.i.i, -8            ; 2 uses
  %i.ni = lshr exact i64 %i.nh, 3
  %i.nj = add nuw nsw i64 %i.ni, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.nh, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %3 = add nsw i64 %.idx9.i.i.i, -8
  %i.nk = lshr exact i64 %3, 1
  %i.nl = getelementptr i8, ptr %i.nf, i64 %i.nk
  %scevgep = getelementptr i8, ptr %i.nl, i64 4
  %bound0 = icmp ult ptr %i.nf, %i.ne
  %bound1 = icmp ult ptr %.sroa.6.0.copyload104.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nj, 4611686018427387900     ; 5 uses
  %i.nm = shl i64 %n.vec, 3
  %i.nn = getelementptr i8, ptr %.sroa.6.0.copyload104.i.i, i64 %i.nm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.no = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sroa.6.0.copyload104.i.i, i64 %i.no ; 2 uses
  %i.np = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !29599, !noalias !29600
  %wide.load662 = load <2 x i64>, ptr %i.np, align 8, !alias.scope !29599, !noalias !29600
  %i.nq = trunc <2 x i64> %wide.load to <2 x i32>
  %i.nr = trunc <2 x i64> %wide.load662 to <2 x i32>
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %index ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store <2 x i32> %i.nq, ptr %i.ns, align 4, !alias.scope !29601, !noalias !29602
  store <2 x i32> %i.nr, ptr %i.nt, align 4, !alias.scope !29601, !noalias !29602
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nu = icmp eq i64 %index.next, %n.vec
  br i1 %i.nu, label %middle.block, label %vector.body, !llvm.loop !29379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nj, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665

.lr.ph.i.i.i.i.i.i.i.i.i.preheader665:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph666 = phi ptr [ %.sroa.6.0.copyload104.i.i, %vector.memcheck ], [ %.sroa.6.0.copyload104.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.nn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %.idx.i.i.i) #66
          to label %.noexc.i.i.i.i unwind label %bb.ee, !noalias !29603

.noexc.i.i.i.i:                                   ; preds = %bb.ec
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nv = phi i64 [ %i.ob, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665 ] ; 2 uses
  %i.nw = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph666, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader665 ] ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !noalias !29600, !noundef !75
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  %i.nz = trunc i64 %i.nx to i32
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nv
  store i32 %i.nz, ptr %i.oa, align 4, !noalias !29604
  %i.ob = add nuw nsw i64 %i.nv, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ny, %i.ne
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !29380

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i109.i
  %.sroa.032.0.copyload107.i.i = phi i64 [ %.sroa.032.0.copyload.pre.i.i, %._crit_edge.i109.i ], [ %.sroa.032.0.copyload106.i.i, %middle.block ], [ %.sroa.032.0.copyload106.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.copyload105.i.i = phi ptr [ %.sroa.6.0.copyload.pre.i.i, %._crit_edge.i109.i ], [ %.sroa.6.0.copyload104.i.i, %middle.block ], [ %.sroa.6.0.copyload104.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.0.copyload103.i.i = phi i64 [ 0, %._crit_edge.i109.i ], [ %.sroa.7.0.copyload102.i.i, %middle.block ], [ %.sroa.7.0.copyload102.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i21.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %._crit_edge.i109.i ], [ %i.nf, %middle.block ], [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i109.i ], [ %n.vec, %middle.block ], [ %i.ob, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.oc = icmp eq i64 %.sroa.032.0.copyload107.i.i, 0
  br i1 %i.oc, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.od = shl nuw i64 %.sroa.032.0.copyload107.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload105.i.i, i64 noundef %i.od, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29600
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.of = icmp eq i64 %.sroa.032.0.copyload106.i.i, 0
  br i1 %i.of, label %.thread.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.og = shl nuw i64 %.sroa.032.0.copyload106.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload104.i.i, i64 noundef %i.og, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29605
  br label %.thread.i.i

.lr.ph.i104.i:                                    ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i, %.lr.ph.i104.preheader.i
  %.sroa.0.068.i.i = phi i64 [ %i.qa, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ 0, %.lr.ph.i104.preheader.i ]
  %.sroa.02.067.i.i = phi i1 [ %i.pe, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ false, %.lr.ph.i104.preheader.i ]
  %.sroa.06.066.i.i = phi i64 [ %i.oh, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit30.i.i ], [ 0, %.lr.ph.i104.preheader.i ] ; 2 uses
  %i.oh = add nuw nsw i64 %.sroa.06.066.i.i, 1    ; 2 uses
  %i.oi = mul i64 %.sroa.06.066.i.i, %i.my        ; 5 uses
  %i.oj = or disjoint i64 %i.oi, 7
  %or.cond.not.i.i.i = icmp ult i64 %i.oj, %spec.select
  %i.ok = add i64 %i.oi, 8                        ; 4 uses
  br i1 %or.cond.not.i.i.i, label %bb.em, label %.invoke.i105.i, !prof !114

.invoke.i105.i:                                   ; preds = %.lr.ph.i104.i, %bb.en
  %i.ol = phi i64 [ %i.ok, %bb.en ], [ %i.oi, %.lr.ph.i104.i ]
  %i.om = phi i64 [ %i.pb, %bb.en ], [ %i.ok, %.lr.ph.i104.i ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.ol, i64 noundef %i.om, i64 noundef range(i64 0, -9223372036854775808) %spec.select, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1028) #66
          to label %.cont.i108.i unwind label %.loopexit.split-lp.i.i, !noalias !29592

.cont.i108.i:                                     ; preds = %.invoke.i105.i
  unreachable

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i: ; preds = %bb.ed, %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.ea
  %.sroa.7.0.copyload103.sink.i.i = phi i64 [ %.sroa.032.0.copyload106.i.i, %bb.ea ], [ %.sroa.7.0.copyload103.i.i, %bb.ed ], [ %.sroa.7.0.copyload103.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i21.i.i.sink.i.i = phi ptr [ %.sroa.6.0.copyload104.i.i, %bb.ea ], [ %.sroa.10.0.i21.i.i.i.i, %bb.ed ], [ %.sroa.10.0.i21.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i.sink.i.i = phi i64 [ %.sroa.7.0.copyload102.i.i, %bb.ea ], [ %.sroa.42.0.i.i.i.i.i.i.i.i, %bb.ed ], [ %.sroa.42.0.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %storemerge.i.i.i = phi i64 [ 1, %bb.ea ], [ 0, %bb.ed ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.7.0.copyload103.sink.i.i, ptr %i.on, align 8, !alias.scope !29606, !noalias !29592
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.10.0.i21.i.i.sink.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !alias.scope !29606, !noalias !29592
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.42.0.i.i.i.i.i.i.sink.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !alias.scope !29606, !noalias !29592
  store i64 %storemerge.i.i.i, ptr %i.g, align 8, !alias.scope !29595, !noalias !29607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29592
  call void @llvm.experimental.noalias.scope.decl(metadata !29608)
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !29608, !noalias !29609, !nonnull !75, !noundef !75 ; 2 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29608, !noalias !29609 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.540.0..sroa_idx.i.i, align 16, !alias.scope !29608, !noalias !29609
  store i64 0, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !alias.scope !29608, !noalias !29609
  %i.oo = load i64, ptr %i.mq, align 16, !alias.scope !29608, !noalias !29609, !noundef !75
  store i64 0, ptr %i.mq, align 16, !alias.scope !29608, !noalias !29609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29610
  store i64 1, ptr %i.d, align 8, !noalias !29610
  %i.op = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.op, align 8, !noalias !29610
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.oq, align 8, !noalias !29610
  %.sroa.42.0..sroa_idx.i.i110.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i110.i, align 8, !noalias !29610
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !29610
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.or = load <2 x i64>, ptr %i.i, align 16, !alias.scope !29608, !noalias !29609
  store i64 128, ptr %i.i, align 16, !alias.scope !29608, !noalias !29609
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !29608, !noalias !29609
  store <2 x i64> %i.or, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !29610
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !29611
  %i.os = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !29611 ; 3 uses
  %i.ot = icmp eq ptr %i.os, null
  %i.ou = ptrtoint ptr %.sroa.10.0.i21.i.i.sink.i.i to i64 ; 2 uses
  br i1 %i.ot, label %bb.eg, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !77

bb.eg:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i111.i unwind label %bb.eh, !noalias !29610

.noexc.i.i111.i:                                  ; preds = %bb.eg
  unreachable

bb.eh:                                            ; preds = %bb.eg
  %i.ov = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #67
          to label %.body18.i.i unwind label %bb.ei, !noalias !29610

bb.ei:                                            ; preds = %bb.eh
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !29610
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENCNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB2S_10PrefixSums11from_prefix0EE9from_iterB30_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.os, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !29610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29610
  store ptr %i.os, ptr %i.e, align 8, !noalias !29610
  %i.ox = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %i.ox, align 8, !noalias !29610
  %i.oy = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %i.oy, align 8, !noalias !29610
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %i.oo)
          to label %bb.ek unwind label %bb.ej, !noalias !29592

bb.ej:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i

.body18.i.i:                                      ; preds = %bb.ej, %bb.eh
  %eh.lpad-body19.i.i = phi { ptr, i32 } [ %i.oz, %bb.ej ], [ %i.ov, %bb.eh ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_index10PrefixSumsEBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #67, !noalias !29592
  br label %.thread.i.i

bb.ek:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7190.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !29612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29592
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %bb.fd unwind label %bb.fc, !noalias !29552

bb.el:                                            ; preds = %.thread.i.i
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !29592
  unreachable

end_hunk_1
begin_hunk_2_@_RNvMst_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_11MessageType10into_array:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMst_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_11MessageType15into_structural(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !99, !noundef !75
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.g, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2293, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2294) #66
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder11MessageTypeEBF_(ptr noalias noundef align 8 dereferenceable(48) %0) #67
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !75, !align !95, !noundef !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !75, !noundef !75
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 7) i32 @_RNvMsv_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB5_11RepDefLayer13from_str_name(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #28 {
bb.a:
  switch i64 %1, label %bb.i [
    i64 18, label %bb.b
    i64 21, label %bb.c
    i64 20, label %bb.e
    i64 26, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i128, ptr %0, align 1
  %i.b = xor i128 %i.a, 97398590418035824828284425945507448146
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i128
  %i.f = xor i128 %i.e, 17477
  %i.g = or i128 %i.b, %i.f
  %i.h = icmp ne i128 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = load i128, ptr %0, align 1
  %i.l = xor i128 %i.k, 90768088023738681832490644278007055698
  %i.m = getelementptr i8, ptr %0, i64 5
  %i.n = load i128, ptr %i.m, align 1
  %i.o = xor i128 %i.n, 102710533694223624629749434426643799878
  %i.p = or i128 %i.l, %i.o
  %i.q = icmp ne i128 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i128, ptr %0, align 1
  %i.u = xor i128 %i.t, 90768088023738681832490644278007055698
  %i.v = getelementptr i8, ptr %0, i64 5
  %i.w = load i128, ptr %i.v, align 1
  %i.x = xor i128 %i.w, 112087598951916370701293860158082998086
  %i.y = or i128 %i.u, %i.x
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ac = load i128, ptr %0, align 1
  %i.ad = xor i128 %i.ac, 126636474795203278974780171502142637394
  %i.ae = getelementptr i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = zext i32 %i.af to i128
  %i.ah = xor i128 %i.ag, 1296389193
  %i.ai = or i128 %i.ad, %i.ah
  %i.aj = icmp ne i128 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i128, ptr %0, align 1
  %i.an = xor i128 %i.am, 126636474795203278974780171502142637394
  %i.ao = getelementptr i8, ptr %0, i64 16
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = zext i32 %i.ap to i128
  %i.ar = xor i128 %i.aq, 1414744396
  %i.as = or i128 %i.an, %i.ar
  %i.at = icmp ne i128 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.aw = load i128, ptr %0, align 1
  %i.ax = xor i128 %i.aw, 92112690086918341425224983568456893778
  %i.ay = getelementptr i8, ptr %0, i64 5
  %i.az = load i128, ptr %i.ay, align 1
  %i.ba = xor i128 %i.az, 112087598951917593609746315006596964166
  %i.bb = or i128 %i.ax, %i.ba
  %i.bc = icmp ne i128 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.bf = load i128, ptr %0, align 1
  %i.bg = xor i128 %i.bf, 126631322993220339230868503368515470674
  %i.bh = getelementptr i8, ptr %0, i64 10
  %i.bi = load i128, ptr %i.bh, align 1
  %i.bj = xor i128 %i.bi, 112087598951941810164183961251212255052
  %i.bk = or i128 %i.bg, %i.bj
  %i.bl = icmp ne i128 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.b, %bb.a, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.i
  %.sroa.0.0 = phi i32 [ -1, %bb.i ], [ 5, %bb.g ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 6, %bb.h ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 129) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, label %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit

_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.c

_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.c = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #63 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !77

bb.b:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #66
  unreachable

bb.c:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #29 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @4, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs4XDKJNDGLq7_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #29 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvNtCs8i1Thb8U8hr_12futures_task10noop_waker10noop_clone(ptr nofree readnone captures(none) %0) unnamed_addr #29 {
bb.a:
  ret { ptr, ptr } { ptr @2316, ptr null }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs8i1Thb8U8hr_12futures_task10noop_waker4noop(ptr nofree readnone captures(none) %0) unnamed_addr #29 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 4, 89) %2) unnamed_addr #30 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 3 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  switch i64 %i.a, label %.preheader.preheader.new [
    i64 0, label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit
    i64 1, label %.preheader.epil.preheader
  ]

.preheader.preheader.new:                         ; preds = %bb.a
  %unroll_iter = and i64 %i.a, 14
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.0.04.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.f, %.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.c = or disjoint i64 %.sroa.0.04.i, 1         ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.i ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49871)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 1, !alias.scope !49870, !noalias !49871
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.e, align 1, !alias.scope !49871, !noalias !49870
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !49870, !noalias !49871
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !49871, !noalias !49870
  %i.f = add nuw nsw i64 %.sroa.0.04.i, 2         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49873)
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.g, align 1, !alias.scope !49872, !noalias !49873
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.h, align 1, !alias.scope !49873, !noalias !49872
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.g, align 1, !alias.scope !49872, !noalias !49873
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.h, align 1, !alias.scope !49873, !noalias !49872
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.unr-lcssa, label %.preheader

_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %i.i = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not, label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %bb.a, %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.unr-lcssa
  %.sroa.0.04.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.f, %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.i.epil.init ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49871)
  %.sroa.0.0.copyload.i.i.epil = load i64, ptr %i.j, align 1, !alias.scope !49870, !noalias !49871
  %.sroa.02.0.copyload.i.i.epil = load i64, ptr %i.k, align 1, !alias.scope !49871, !noalias !49870
  store i64 %.sroa.02.0.copyload.i.i.epil, ptr %i.j, align 1, !alias.scope !49870, !noalias !49871
  store i64 %.sroa.0.0.copyload.i.i.epil, ptr %i.k, align 1, !alias.scope !49871, !noalias !49870
  br label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.preheader.epil.preheader, %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.unr-lcssa, %bb.a
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit
  %i.l = and i64 %2, 120                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 4 uses
  %i.o = icmp samesign ult i64 %i.b, 4
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49875)
  %.sroa.0.0.copyload.i.i5 = load i32, ptr %i.m, align 1, !alias.scope !49874, !noalias !49875
  %.sroa.02.0.copyload.i.i6 = load i32, ptr %i.n, align 1, !alias.scope !49875, !noalias !49874
  store i32 %.sroa.02.0.copyload.i.i6, ptr %i.m, align 1, !alias.scope !49874, !noalias !49875
  store i32 %.sroa.0.0.copyload.i.i5, ptr %i.n, align 1, !alias.scope !49875, !noalias !49874
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.p = and i64 %2, 2
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49877)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.r, align 1, !alias.scope !49876, !noalias !49877
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.s, align 1, !alias.scope !49877, !noalias !49876
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.r, align 1, !alias.scope !49876, !noalias !49877
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.s, align 1, !alias.scope !49877, !noalias !49876
  %i.t = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = and i64 %2, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.1.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49879)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.w, align 1, !alias.scope !49878, !noalias !49879
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.x, align 1, !alias.scope !49879, !noalias !49878
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.w, align 1, !alias.scope !49878, !noalias !49879
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.x, align 1, !alias.scope !49879, !noalias !49878
  br label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjjpCCFGI3ul_14lance_encoding.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsjjpCCFGI3ul_14lance_encoding11compression13try_raw_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = load i64, ptr %1, align 8, !range !149, !noundef !75 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775800
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %i.d, -9223372036854775808
  %i.g = icmp slt i64 %i.d, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 8
  switch i64 %i.h, label %bb.b [
    i64 4, label %bb.c
    i64 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -2, ptr %i.i, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !75
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @2317, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i8, ptr %i.l, align 8, !noundef !75
  %i.n = zext i8 %i.m to i64
  store i32 -1, ptr %i.a, align 8
  store i64 0, ptr %i.b, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  invoke void @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6formatNtB5_15ProtobufUtils218variable(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.g, %bb.c, %bb.b
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding11compression15BlockCompressorEL_EEB1f_(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull @2318) #67
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.55.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @2318, ptr %.sroa.44.0..sroa_idx, align 8
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
begin_hunk_3_@_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding:bb.a
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noundef !75
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array8is_validCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94026)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !94027, !noundef !75
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !94026, !noundef !75
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #66, !noalias !94026
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !94026, !noundef !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !94026, !noundef !75
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !94026, !noundef !75
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  br label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit

_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.s, %bb.d ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array9map_array8MapArrayNtB6_5Array10null_countCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(200) %0) unnamed_addr #28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !94030, !noundef !75
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not.i, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array9map_array8MapArrayNtB6_5Array11is_nullableCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(200) %0) unnamed_addr #28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !94033, !noundef !75
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !94033
  %i.e = icmp ne i64 %i.d, 0
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array9map_array8MapArrayNtB6_5Array13logical_nullsCsjjpCCFGI3ul_14lance_encoding(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(200) %1) unnamed_addr #38 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !94036, !noundef !75 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !noundef !75
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.b, ptr %0, align 8
  %.sroa.02.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.02.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <2 x i64>, ptr %i.g, align 8
  store <2 x i64> %i.i, ptr %.sroa.02.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x i64>, ptr %i.h, align 8
  store <2 x i64> %i.j, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array9map_array8MapArrayNtB6_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(200) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !94039, !noundef !75
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i64, ptr %i.c, align 8, !noundef !75
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !78

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #66
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !noundef !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i64, ptr %i.h, align 8, !noundef !75
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noundef !75
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array9map_array8MapArrayNtB6_5Array8is_validCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(200) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94044)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !94045, !noundef !75
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array9map_array8MapArrayNtB6_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !94044, !noundef !75
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #66, !noalias !94044
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !94044, !noundef !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !94044, !noundef !75
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !94044, !noundef !75
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = xor i8 %i.m, -1
  %i.q = lshr i8 %i.p, %i.o
  %i.r = trunc i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  br label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array9map_array8MapArrayNtB6_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit

_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array9map_array8MapArrayNtB6_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.s, %bb.d ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsjjpCCFGI3ul_14lance_encoding(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #29 {
bb.a:
  ret { ptr, i64 } { ptr @4591, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCsjjpCCFGI3ul_14lance_encoding(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #29 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCsjjpCCFGI3ul_14lance_encoding(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #29 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsjjpCCFGI3ul_14lance_encoding(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #29 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsjjpCCFGI3ul_14lance_encoding(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @4592, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.117, %bb.j ] ; 3 uses
  %.sroa.6.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.115, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.6.041) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 11 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
  %i.h = ptrtoint ptr %i.f to i64                 ; 7 uses
  br i1 %i.g, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.f
  %.sroa.07.0 = phi ptr [ %.sroa.07.1, %bb.f ], [ null, %bb.a ], [ null, %bb.j ]
  ret ptr %.sroa.07.0

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.i
    i64 0, label %.split37
    i64 1, label %.split36
  ], !prof !107

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.6.041, %i.h
  br i1 %i.k, label %bb.g, label %bb.h, !prof !81

bb.f:                                             ; preds = %bb.i, %.split, %.split36, %.split37, %bb.d
  %.sroa.07.1 = phi ptr [ @4594, %bb.d ], [ %i.f, %.split37 ], [ %i.f, %.split36 ], [ %i.f, %.split ], [ %i.f, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %.sroa.6.041, i64 noundef %.sroa.6.041, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4595) #66
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %.sroa.6.041, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.h
  br label %bb.j

.split:                                           ; preds = %bb.c
  %.mask = and i64 %i.h, -4294967296
  %i.n = icmp eq i64 %.mask, 17179869184
  br i1 %i.n, label %.thread, label %bb.f

.split37:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !201, !noundef !75
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread, label %bb.f

.split36:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !201, !noundef !75
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread, label %bb.f

bb.i:                                             ; preds = %bb.c
  %i.u = lshr i64 %i.h, 32
  %i.v = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.u to i8
  %spec.select.i.i = select i1 %i.v, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.w = icmp ne i8 %spec.select.i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.x, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.i, %.split, %.split36, %.split37
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread
  %.sroa.0.117 = phi ptr [ %.sroa.0.042, %.thread ], [ %i.m, %bb.h ]
  %.sroa.6.115 = phi i64 [ %.sroa.6.041, %.thread ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = icmp eq i64 %.sroa.6.115, 0
  br i1 %i.y, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2713, i64 noundef 61)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blob16BlobFieldDecoderNtNtBa_7decoder18LogicalPageDecoder12accept_childBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(320) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1h_NtCscI6d9CVNmLh_4core3fmtQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blob16BlobFieldDecoderNtB6_5Debug3fmtBE_, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @4596, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12DecoderReadyEBF_(ptr noalias noundef align 8 dereferenceable(48) %2) #67
          to label %bb.d unwind label %bb.c

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 11, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @4597, ptr %.sroa.41.0..sroa_idx, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12DecoderReadyEBF_(ptr noalias noundef align 8 dereferenceable(48) %2)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvYNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blob16BlobFieldDecoderNtNtBa_7decoder18LogicalPageDecoder13rows_unloadedBa_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(320) %0) unnamed_addr #28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !94050, !noundef !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !94051, !noundef !75
  %i.e = sub i64 %i.b, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvYNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4blob16BlobFieldDecoderNtNtBa_7decoder18LogicalPageDecoder9rows_leftBa_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(320) %0) unnamed_addr #28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !94056, !noundef !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !94057, !noundef !75
  %i.e = sub i64 %i.b, %i.d
  ret i64 %i.e
}

end_hunk_3
begin_hunk_4_@_RNvYNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse30SparseStructuralCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofBc_:bb.a
bb.b:                                             ; preds = %.preheader.i
  unreachable

bb.c:                                             ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !106, !alias.scope !94157, !noalias !94156, !noundef !75
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %bb.f, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanjjNCNvXs6_BX_NtBX_30SparseStructuralCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4J_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0B15_.exit.i.i

bb.d:                                             ; preds = %.preheader.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.q = load i64, ptr %i.p, align 8, !range !106, !alias.scope !94157, !noalias !94156, !noundef !75
  %i.r = icmp sgt i64 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.h

bb.e:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !106, !alias.scope !94157, !noalias !94156, !noundef !75
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.k, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanjjNCNvXs6_BX_NtBX_30SparseStructuralCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4J_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0B15_.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !94157, !noalias !94156, !noundef !75 ; 2 uses
  %i.x = icmp ult i64 %i.w, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = shl nuw nsw i64 %i.w, 3
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanjjNCNvXs6_BX_NtBX_30SparseStructuralCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4J_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0B15_.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !94157, !noalias !94156, !noundef !75 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = shl nuw nsw i64 %i.aa, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.ac, %bb.g ], [ 0, %bb.d ]
  %i.ad = icmp eq i64 %i.h, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !94157, !noalias !94156
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !94157, !noalias !94156
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = shl i64 %i.ai, 3
  %.sroa.02.0.i.i.i.i = select i1 %i.ad, i64 %i.aj, i64 0
  %i.ak = add i64 %.sroa.02.0.i.i.i.i, %.sroa.01.0.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.am = load i64, ptr %i.al, align 8, !range !106, !alias.scope !94157, !noalias !94156, !noundef !75
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !94157, !noalias !94156, !noundef !75 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = shl nuw nsw i64 %i.ap, 3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ar, %bb.i ], [ 0, %bb.h ]
  %i.as = add i64 %i.ak, %.sroa.03.0.i.i.i.i
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanjjNCNvXs6_BX_NtBX_30SparseStructuralCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4J_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0B15_.exit.i.i

bb.k:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !94157, !noalias !94156, !noundef !75 ; 2 uses
  %i.av = icmp ult i64 %i.au, 1152921504606846976
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = shl nuw nsw i64 %i.au, 3
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanjjNCNvXs6_BX_NtBX_30SparseStructuralCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4J_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0B15_.exit.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanjjNCNvXs6_BX_NtBX_30SparseStructuralCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4J_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0B15_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.aw, %bb.k ], [ %i.y, %bb.f ], [ %i.as, %bb.j ], [ 0, %bb.c ], [ 0, %bb.e ]
  %i.ax = add i64 %.sroa.0.0.i.i.i.i, %.sroa.02.0.i.i ; 2 uses
  %i.ay = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.e
  br i1 %i.az, label %.loopexit.loopexit, label %.preheader.i

.loopexit.loopexit:                               ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanjjNCNvXs6_BX_NtBX_30SparseStructuralCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children0NCINvXsK_NtNtB8_6traits5accumjNtB4J_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0B15_.exit.i.i
  %i.ba = add i64 %i.ax, 88
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 88, %bb.a ], [ %i.ba, %.loopexit.loopexit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !94156, !noundef !75 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 384307168202282326
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !94156, !noundef !75
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.bg, align 8, !noundef !75 ; 4 uses
  %i.bh = icmp eq i64 %.val2, 0
  br i1 %i.bh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %.loopexit
  %i.bi = shl i64 %.val2, 3
  %i.bj = icmp slt i64 %.val2, 2305843009213693950
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = and i64 %i.bi, -16                      ; 2 uses
  %i.bl = add i64 %i.bk, 16                       ; 2 uses
  %i.bm = add nsw i64 %.val2, 17
  %i.bn = add i64 %i.bm, %i.bl                    ; 4 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl
  %i.bp = icmp ult i64 %i.bn, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bo)
  tail call void @llvm.assume(i1 %i.bp)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bq = icmp eq i64 %i.bn, 0
  br i1 %i.bq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.br = sub nuw nsw i64 -16, %i.bk
  %i.bs = getelementptr inbounds i8, ptr %.val, i64 %i.br
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 16) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.loopexit, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.l
  %i.bt = mul nuw nsw i64 %i.bc, 24
  %i.bu = shl i64 %i.bf, 3
  %i.bv = add i64 %.sroa.0.0.i.i, %i.bt
  %i.bw = add i64 %i.bv, %i.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.bw
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constant19CachedConstantStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofBc_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  %i.b = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val3 = load ptr, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val4 = load i64, ptr %i.d, align 8, !noundef !75
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding(ptr %.val3, i64 %.val4) #67
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !94160, !noundef !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !94160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !94160, !noundef !75
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !94160
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.m, align 8, !noundef !75 ; 4 uses
  %i.n = icmp eq i64 %.val2, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = shl i64 %.val2, 3
  %i.p = icmp slt i64 %.val2, 2305843009213693950
  tail call void @llvm.assume(i1 %i.p)
  %i.q = and i64 %i.o, -16                        ; 2 uses
  %i.r = add i64 %i.q, 16                         ; 2 uses
  %i.s = add nsw i64 %.val2, 17
  %i.t = add i64 %i.s, %i.r                       ; 4 uses
  %i.u = icmp uge i64 %i.t, %i.r
  %i.v = icmp ult i64 %i.t, 9223372036854775793
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.x = sub nuw nsw i64 -16, %i.q
  %i.y = getelementptr inbounds i8, ptr %.val, i64 %i.x
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 16) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.c, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.d
  %.not.i = icmp eq ptr %i.f, null
  %i.z = and i64 %i.h, -2
  %.sroa.0.0.i = select i1 %.not.i, i64 0, i64 %i.z
  %.not7.i = icmp eq ptr %i.j, null
  %i.aa = and i64 %i.l, -2
  %.sroa.03.0.i = select i1 %.not7.i, i64 0, i64 %i.aa
  %i.ab = add i64 %i.b, 64
  %i.ac = add i64 %i.ab, %.sroa.0.0.i
  %i.ad = add i64 %i.ac, %.sroa.03.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsjjpCCFGI3ul_14lance_encoding(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #29 {
bb.a:
  ret { ptr, i64 } { ptr @4591, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsjjpCCFGI3ul_14lance_encoding(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #29 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsjjpCCFGI3ul_14lance_encoding(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #29 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsjjpCCFGI3ul_14lance_encoding(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #29 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsjjpCCFGI3ul_14lance_encoding(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @4598, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvYNvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB8_13ArrayEncoding11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !128, !noundef !75 ; 3 uses
  %i.b = icmp slt i64 %i.a, -9223372036854775788
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.n
    i64 2, label %bb.r
    i64 3, label %bb.w
    i64 4, label %_RNvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB5_13ArrayEncoding11encoded_len.exit
    i64 5, label %bb.ac
    i64 6, label %bb.ai
    i64 7, label %bb.ao
    i64 8, label %bb.as
    i64 9, label %bb.ay
    i64 10, label %bb.bh
    i64 11, label %bb.bl
    i64 12, label %bb.bu
    i64 13, label %bb.bw
    i64 14, label %bb.by
    i64 15, label %bb.cc
    i64 16, label %bb.ce
    i64 17, label %bb.ch
    i64 18, label %bb.cj
    i64 19, label %bb.cl
    i64 20, label %bb.cs
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !94290, !noundef !75 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = or i64 %i.f, 1
  %i.i = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add nuw nsw i64 %i.m, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i18 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !range !180, !alias.scope !94290, !noundef !75
  %i.q = trunc nuw i32 %i.p to i1
  br i1 %i.q, label %bb.f, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb6BufferE6map_orjNCNvXs16_BL_NtBL_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val.i.i.i20 = load i32, ptr %i.r, align 4, !alias.scope !94291, !noundef !75 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5.i.i.i21 = load i32, ptr %i.s, align 8, !alias.scope !94291 ; 2 uses
  %i.t = icmp eq i32 %.val.i.i.i20, 0
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = or i32 %.val.i.i.i20, 1
  %i.v = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.u, i1 true)
  %i.w = xor i32 %i.v, 31
  %i.x = mul nuw nsw i32 %i.w, 9
  %i.y = add nuw nsw i32 %i.x, 73
  %i.z = lshr i32 %i.y, 6
  %narrow.i.i.i.i.i22 = add nuw nsw i32 %i.z, 3
  %i.aa = zext nneg i32 %narrow.i.i.i.i.i22 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i23 = phi i64 [ %i.aa, %bb.g ], [ 2, %bb.f ]
  %i.ab = icmp eq i32 %.val5.i.i.i21, 0
  br i1 %i.ab, label %_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0Bc_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = or i32 %.val5.i.i.i21, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = xor i64 %i.ae, 63
  %i.ag = mul nuw nsw i64 %i.af, 9
  %i.ah = add nuw nsw i64 %i.ag, 73
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = add nuw nsw i64 %i.ai, 1
  br label %_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0Bc_.exit.i.i.i

_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0Bc_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.01.0.i.i.i.i.i.i24 = phi i64 [ %i.aj, %bb.i ], [ 0, %bb.h ]
  %i.ak = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i.i24, %.sroa.0.0.i.i.i.i.i.i23
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb6BufferE6map_orjNCNvXs16_BL_NtBL_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb6BufferE6map_orjNCNvXs16_BL_NtBL_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i: ; preds = %_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0Bc_.exit.i.i.i, %bb.e
  %.sroa.02.0.i.i.i19 = phi i64 [ %i.ak, %_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0Bc_.exit.i.i.i ], [ 0, %bb.e ]
  %.not.i.i = icmp eq i64 %i.a, -1
  br i1 %.not.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb4FlatEB10_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb6BufferE6map_orjNCNvXs16_BL_NtBL_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !94292, !noundef !75 ; 4 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = or i64 %i.am, 1
  %i.aq = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %i.ar = xor i64 %i.aq, 63
  %i.as = mul nuw nsw i64 %i.ar, 9
  %i.at = add nuw nsw i64 %i.as, 73
  %i.au = lshr i64 %i.at, 6
  %i.av = add nuw i64 %i.am, 1
  %i.aw = add nuw i64 %i.av, %i.au
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i4.i.i = phi i64 [ %i.aw, %bb.k ], [ 0, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !range !180, !alias.scope !94292, !noundef !75
  %i.az = trunc nuw i32 %i.ay to i1
  br i1 %i.az, label %bb.m, label %_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lens_0Bc_.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.ba, align 4, !alias.scope !94293, !noundef !75
  %i.bb = or i32 %.val.i.i.i.i.i.i.i, 1
  %i.bc = sext i32 %i.bb to i64
  %i.bd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bc, i1 true)
  %i.be = xor i64 %i.bd, 63
  %i.bf = mul nuw nsw i64 %i.be, 9
  %i.bg = add nuw nsw i64 %i.bf, 73
  %i.bh = lshr i64 %i.bg, 6
  %i.bi = add nuw nsw i64 %i.bh, 1
  br label %_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lens_0Bc_.exit.i.i.i

_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lens_0Bc_.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.bi, %bb.m ], [ 0, %bb.l ]
  %i.bj = add nuw i64 %.sroa.02.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i4.i.i ; 2 uses
  %i.bk = or i64 %i.bj, 1
  %i.bl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bk, i1 true)
  %i.bm = xor i64 %i.bl, 63
  %i.bn = mul nuw nsw i64 %i.bm, 9
  %i.bo = add nuw nsw i64 %i.bn, 73
  %i.bp = lshr i64 %i.bo, 6
  %i.bq = add nuw i64 %i.bj, 1
  %i.br = add nuw i64 %i.bq, %i.bp
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb4FlatEB10_.exit

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb4FlatEB10_.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb6BufferE6map_orjNCNvXs16_BL_NtBL_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i, %_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lens_0Bc_.exit.i.i.i
  %.sroa.02.0.i5.i.i = phi i64 [ %i.br, %_RNCNvXs16_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB8_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_lens_0Bc_.exit.i.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb6BufferE6map_orjNCNvXs16_BL_NtBL_4FlatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i.i ]
  %i.bs = add nuw nsw i64 %.sroa.02.0.i.i.i19, %.sroa.0.0.i.i18
  %i.bt = add nuw i64 %i.bs, %.sroa.02.0.i5.i.i   ; 2 uses
  %i.bu = or i64 %i.bt, 1
  %i.bv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = xor i64 %i.bv, 63
  %i.bx = mul nuw nsw i64 %i.bw, 9
  %i.by = add nuw nsw i64 %i.bx, 73
  %i.bz = lshr i64 %i.by, 6
  %i.ca = add nuw i64 %i.bt, 1
  %i.cb = add nuw i64 %i.ca, %i.bz
  br label %_RNvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB5_13ArrayEncoding11encoded_len.exit

bb.n:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94294)
end_hunk_4
