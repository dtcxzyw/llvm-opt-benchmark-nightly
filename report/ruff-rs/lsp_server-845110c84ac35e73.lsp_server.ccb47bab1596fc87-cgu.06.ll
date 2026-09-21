Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/lsp_server-845110c84ac35e73.lsp_server.ccb47bab1596fc87-cgu.06?download=true
inline.NumInlined: 96
inline.NumDeleted: 62
begin_hunk_0_@_RNvXs2_NtCshzDG46PUpLf_10lsp_server5errorINtB5_12ExtractErrorNtNtB7_3msg7RequestENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCshzDG46PUpLf_10lsp_server, ptr %.sroa.43.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscvBHLZPbXnS_10serde_json5error5ErrorNtB6_7Display3fmtCshzDG46PUpLf_10lsp_server, ptr %.sroa.422.0..sroa_idx, align 8
  %i.j = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !6, !noundef !4
  %i.m = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !6, !noundef !4
  %i.q = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @19, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.m, %bb.b ], [ %i.q, %bb.c ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exactCshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !125, !noalias !126, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !125, !noalias !126, !noundef !4
  %i.e = sub nuw i64 %i.d, %i.b
  %.not.i.not = icmp ugt i64 %2, %i.e
  br i1 %.not.i.not, label %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exact0ECshzDG46PUpLf_10lsp_server.exit, label %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exact0ECshzDG46PUpLf_10lsp_server.exit.thread

_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exact0ECshzDG46PUpLf_10lsp_server.exit.thread: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !alias.scope !125, !noalias !126, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !125
  %i.h = add i64 %i.b, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !125, !noalias !126
  br label %bb.b

_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exact0ECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a
  %i.i = tail call noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io18default_read_exactINtNtNtB2_8buffered9bufreader9BufReaderNtNtNtB4_3net3tcp9TcpStreamEECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull %1, i64 noundef %2)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exact0ECshzDG46PUpLf_10lsp_server.exit.thread, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exact0ECshzDG46PUpLf_10lsp_server.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exact0ECshzDG46PUpLf_10lsp_server.exit ], [ null, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read10read_exact0ECshzDG46PUpLf_10lsp_server.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read11read_to_endCshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = sub nuw i64 %i.e, %i.c                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = tail call { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 1, i64 noundef 1)
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.f)
  %i.k = load i64, ptr %i.g, align 8, !alias.scope !129, !noundef !4 ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.e, %i.c
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !129, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.m, i64 %i.f, i1 false)
  %.pre.i = load i64, ptr %i.g, align 8, !alias.scope !129
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre.i, %bb.c ], [ %i.k, %bb.b ]
  %i.r = add i64 %i.q, %i.f
  store i64 %i.r, ptr %i.g, align 8, !alias.scope !129
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.t = tail call { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endNtNtNtB4_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.t, 1
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = trunc nuw i64 %i.u to i1
  %i.y = select i1 %i.x, i64 0, i64 %i.f
  %spec.select = add i64 %i.y, %i.w
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit, %bb.a
  %.sroa.4.0 = phi i64 [ %spec.select, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit ], [ 163208757251, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.u, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit ], [ 1, %bb.a ]
  %i.z = inttoptr i64 %.sroa.4.0 to ptr
  %i.aa = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ab = insertvalue { i64, ptr } %i.aa, ptr %i.z, 1
  ret { i64, ptr } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read13read_vectoredCshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1y_8adapters3map8map_foldRBQ_jjNCNvXs3_NtNtBS_8buffered9bufreaderINtB30_9BufReaderNtNtNtBU_3net3tcp9TcpStreamENtBS_4Read13read_vectored0NCINvXsK_NtB1w_5accumjNtB4I_3Sum3sumINtB2i_3MapBF_B2S_EE0E0ECshzDG46PUpLf_10lsp_server.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.d = and i64 %2, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub nsw i64 %2, %i.f                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec21 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec22 = shufflevector <4 x i64> %wide.vec21, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec22, %vec.phi20 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader25

.preheader.preheader25:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.n, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader25, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader25 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader25 ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !noundef !4
  %i.q = add i64 %.val.i, %.sroa.02.0.i           ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1y_8adapters3map8map_foldRBQ_jjNCNvXs3_NtNtBS_8buffered9bufreaderINtB30_9BufReaderNtNtNtBU_3net3tcp9TcpStreamENtBS_4Read13read_vectored0NCINvXsK_NtB1w_5accumjNtB4I_3Sum3sumINtB2i_3MapBF_B2S_EE0E0ECshzDG46PUpLf_10lsp_server.exit, label %.preheader, !llvm.loop !131

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1y_8adapters3map8map_foldRBQ_jjNCNvXs3_NtNtBS_8buffered9bufreaderINtB30_9BufReaderNtNtNtBU_3net3tcp9TcpStreamENtBS_4Read13read_vectored0NCINvXsK_NtB1w_5accumjNtB4I_3Sum3sumINtB2i_3MapBF_B2S_EE0E0ECshzDG46PUpLf_10lsp_server.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %3 = load i64, ptr %i.v, align 8, !noundef !4   ; 3 uses
  %4 = icmp ne i64 %i.u, %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %5, align 8                ; 2 uses
  %.not = icmp ult i64 %.sroa.0.0.i, %i.w
  %or.cond = select i1 %4, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1y_8adapters3map8map_foldRBQ_jjNCNvXs3_NtNtBS_8buffered9bufreaderINtB30_9BufReaderNtNtNtBU_3net3tcp9TcpStreamENtBS_4Read13read_vectored0NCINvXsK_NtB1w_5accumjNtB4I_3Sum3sumINtB2i_3MapBF_B2S_EE0E0ECshzDG46PUpLf_10lsp_server.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %.not.i = icmp ult i64 %i.u, %3
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !144, !noalias !145 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !146
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !146
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.y, align 8, !noalias !146
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 8, !noalias !146
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !10, !alias.scope !144, !noalias !145, !noundef !4
  store i8 %i.ac, ptr %i.aa, align 8, !noalias !146
  %i.ad = call noundef ptr @_RNvXs_NtNtCs2AWtUsOyxgP_3std3net3tcpNtB4_9TcpStreamNtNtB8_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !147 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !144, !noalias !145
  %i.ae = load i64, ptr %i.z, align 8, !noalias !146, !noundef !4 ; 2 uses
  store i64 %i.ae, ptr %i.v, align 8, !alias.scope !144, !noalias !145
  %i.af = load i8, ptr %i.aa, align 8, !range !10, !noalias !146, !noundef !4
  store i8 %i.af, ptr %i.ab, align 8, !alias.scope !144, !noalias !145
  %.not4.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i, label %bb.d, label %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit.thread

_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit.thread: ; preds = %bb.c
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
  br label %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit

_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.b, %bb.d
  %i.ah = phi i64 [ %3, %bb.b ], [ %i.ae, %bb.d ]
  %i.ai = phi i64 [ %i.u, %bb.b ], [ 0, %bb.d ]   ; 2 uses
  %i.aj = sub nuw i64 %i.ah, %i.ai                ; 2 uses
  %i.ak = icmp eq ptr %.pre.i, null
  br i1 %i.ak, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1y_8adapters3map8map_foldRBQ_jjNCNvXs3_NtNtBS_8buffered9bufreaderINtB30_9BufReaderNtNtNtBU_3net3tcp9TcpStreamENtBS_4Read13read_vectored0NCINvXsK_NtB1w_5accumjNtB4I_3Sum3sumINtB2i_3MapBF_B2S_EE0E0ECshzDG46PUpLf_10lsp_server.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.am = tail call { i64, ptr } @_RNvXs_NtNtCs2AWtUsOyxgP_3std3net3tcpNtB4_9TcpStreamNtNtB8_2io4Read13read_vectored(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.al, ptr noalias noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.k

bb.f:                                             ; preds = %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit.thread, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit
  %.sroa.610.013 = phi i64 [ %i.ag, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit.thread ], [ %i.aj, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit ]
  %i.an = inttoptr i64 %.sroa.610.013 to ptr
  %i.ao = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.an, 1
  br label %bb.k

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtBb_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.ap = icmp eq i64 %2, 0
  br i1 %i.ap, label %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read13read_vectored.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ai
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i, %.lr.ph
  %.sroa.01.0.i18 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i ]
  %.sroa.03.0.i17 = phi ptr [ %1, %.lr.ph ], [ %i.at, %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i ] ; 3 uses
  %i.ar = phi ptr [ %i.aq, %.lr.ph ], [ %i.ba, %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i ] ; 3 uses
  %i.as = phi i64 [ %i.aj, %.lr.ph ], [ %i.bb, %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 16 ; 2 uses
  %i.au = load ptr, ptr %.sroa.03.0.i17, align 8, !alias.scope !148, !noalias !149, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !148, !noalias !149, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 range(i64 0, -9223372036854775808) %i.aw) ; 6 uses
  %i.ax = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = load i8, ptr %i.ar, align 1, !noalias !151, !noundef !4
  store i8 %i.ay, ptr %i.au, align 1, !alias.scope !150, !noalias !152
  br label %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i

bb.j:                                             ; preds = %bb.h
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull %i.au, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26), !noalias !152
  br label %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i

_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i: ; preds = %bb.j, %bb.i
  %i.az = add i64 %.sroa.0.0.i.i.i, %.sroa.01.0.i18 ; 2 uses
  %.not.i7 = icmp ule i64 %i.as, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i.i.i
  %i.bb = sub nuw nsw i64 %i.as, %.sroa.0.0.i.i.i
  %i.bc = icmp eq ptr %i.at, %i.b
  %or.cond.a = select i1 %.not.i7, i1 true, i1 %i.bc
  br i1 %or.cond.a, label %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read13read_vectored.exit, label %bb.h

_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read13read_vectored.exit: ; preds = %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i, %bb.g
  %.sroa.01.1.i = phi i64 [ 0, %bb.g ], [ %i.az, %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read4read.exit.i ] ; 2 uses
  %i.bd = inttoptr i64 %.sroa.01.1.i to ptr
  %i.be = load i64, ptr %i.t, align 8, !noundef !4
  %i.bf = add i64 %i.be, %.sroa.01.1.i
  %i.bg = load i64, ptr %i.v, align 8, !noundef !4
  %.sroa.0.0.i8 = call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bf)
  store i64 %.sroa.0.0.i8, ptr %i.t, align 8
  %i.bh = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bd, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read13read_vectored.exit
  %.merged = phi { i64, ptr } [ %i.am, %bb.e ], [ %i.ao, %bb.f ], [ %i.bh, %_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5implsRShNtB7_4Read13read_vectored.exit ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exactCshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = sub i64 %i.b, %i.d                       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !160, !noalias !161, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !160, !noalias !161, !noundef !4
  %i.j = sub nuw i64 %i.i, %i.g
  %.not.i.not = icmp ugt i64 %i.e, %i.j
  br i1 %.not.i.not, label %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exact0ECshzDG46PUpLf_10lsp_server.exit, label %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exact0ECshzDG46PUpLf_10lsp_server.exit.thread

_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exact0ECshzDG46PUpLf_10lsp_server.exit.thread: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !alias.scope !160, !noalias !161, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load ptr, ptr %1, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !163
  store i64 %i.b, ptr %i.c, align 8, !noalias !164
  %i.o = add i64 %i.g, %i.e
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !160, !noalias !161
  br label %bb.b

_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exact0ECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.a
  %i.p = tail call noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtNtB2_8buffered9bufreader9BufReaderNtNtNtB4_3net3tcp9TcpStreamEECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exact0ECshzDG46PUpLf_10lsp_server.exit.thread, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exact0ECshzDG46PUpLf_10lsp_server.exit
  %.sroa.0.0 = phi ptr [ %i.p, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exact0ECshzDG46PUpLf_10lsp_server.exit ], [ null, %_RINvMNtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs3_B5_INtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_buf_exact0ECshzDG46PUpLf_10lsp_server.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB5_9BufReaderNtNtNtBb_3net3tcp9TcpStreamENtB9_4Read14read_to_stringCshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvXs3_NtNtB2_8buffered9bufreaderINtBP_9BufReaderNtNtNtB4_3net3tcp9TcpStreamENtB2_4Read14read_to_string0ECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store i64 0, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.m = load ptr, ptr %0, align 8, !alias.scope !172, !noalias !173, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !172, !noalias !173, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !172, !noalias !173, !noundef !4 ; 2 uses
  %i.r = sub nuw i64 %i.q, %i.o                   ; 5 uses
  %i.s = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.r, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %.not.i = icmp eq i64 %i.t, -1
  br i1 %.not.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.r)
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %bb.d
  %i.u = load i64, ptr %i.l, align 8, !alias.scope !174, !noalias !172, !noundef !4 ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  %.not.i.i = icmp eq i64 %i.q, %i.o
  br i1 %.not.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc11
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.x = load ptr, ptr %i.k, align 8, !alias.scope !174, !noalias !172, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %i.w, i64 %i.r, i1 false), !noalias !172
  %.pre.i.i = load i64, ptr %i.l, align 8, !alias.scope !174, !noalias !172
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit.i: ; preds = %bb.e, %.noexc11
  %i.z = phi i64 [ %.pre.i.i, %bb.e ], [ %i.u, %.noexc11 ]
  %i.aa = add i64 %i.z, %i.r
  store i64 %i.aa, ptr %i.l, align 8, !alias.scope !174, !noalias !172
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !alias.scope !172, !noalias !173
  %i.ac = invoke { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endNtNtNtB4_3net3tcp9TcpStreamECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 undef)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit.i, %bb.d, %bb.c, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(24) %i.b) #16
          to label %common.resume unwind label %bb.s

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshzDG46PUpLf_10lsp_server.exit.i
  %i.ae = extractvalue { i64, ptr } %i.ac, 0
  %i.af = extractvalue { i64, ptr } %i.ac, 1
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = trunc nuw i64 %i.ae to i1               ; 2 uses
  %i.ai = select i1 %i.ah, i64 0, i64 %i.r
  %spec.select.i = add i64 %i.ai, %i.ag
  br i1 %i.ah, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.ak = load i64, ptr %i.l, align 8, !noundef !4
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.am = trunc nuw i64 %i.al to i1
end_hunk_0
