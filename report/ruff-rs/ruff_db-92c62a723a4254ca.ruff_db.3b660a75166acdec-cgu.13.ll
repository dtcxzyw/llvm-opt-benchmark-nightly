inline.NumInlined: 1158
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE6finishCs56aZGHL6Dc6_7ruff_db:bb.a
_RNvXs0_NtCsb9zoKkpXuBA_3zip5writeINtB5_14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtCs2AWtUsOyxgP_3std2io5Write5writeCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, ptr } [ %i.r, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  %i.t = extractvalue { i64, ptr } %.pn.i.i, 0
  %i.u = extractvalue { i64, ptr } %.pn.i.i, 1    ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = trunc nuw i64 %i.t to i1
  %.not = icmp eq ptr %i.u, null                  ; 2 uses
  br i1 %i.w, label %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #36
  unreachable

bb.g:                                             ; preds = %_RNvXs0_NtCsb9zoKkpXuBA_3zip5writeINtB5_14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtCs2AWtUsOyxgP_3std2io5Write5writeCs56aZGHL6Dc6_7ruff_db.exit.i
  br i1 %.not, label %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread13, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1125
  call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range7RangeTojEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.v)
  call void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainhENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1125
  %i.x = load i64, ptr %i.d, align 8, !alias.scope !1125, !noundef !3 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread, label %.lr.ph.i

_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs0_NtCsb9zoKkpXuBA_3zip5writeINtB5_14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtCs2AWtUsOyxgP_3std2io5Write5writeCs56aZGHL6Dc6_7ruff_db.exit.i
  br i1 %.not, label %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread, label %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread13

_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %bb.h, %bb.b, %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit
  %.val10 = load i64, ptr %i.i, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtCs81uqq5bi57K_6flate23zioNtNtB4_3mem8CompressNtB2_3Ops7run_vec(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef 4)
  %i.aa = load i8, ptr %i.b, align 8, !range !17, !noundef !3
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = call noundef nonnull ptr @_RNvXs7_NtCs81uqq5bi57K_6flate23memNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13CompressErrorE4from(ptr noalias noundef readonly captures(address, read_provenance) %i.ad, i64 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread13

bb.j:                                             ; preds = %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load i64, ptr %i.i, align 8, !noundef !3
  %i.ah = icmp eq i64 %.val10, %.val
  br i1 %i.ah, label %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread13, label %bb.b

_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit.thread13: ; preds = %bb.j, %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit, %bb.g, %bb.i
  %.sroa.0.0 = phi ptr [ inttoptr (i64 98784247811 to ptr), %bb.g ], [ %i.ag, %bb.i ], [ null, %bb.j ], [ %i.u, %_RNvMs2_NtCs81uqq5bi57K_6flate23zioINtB5_6WriterINtNtCsb9zoKkpXuBA_3zip5write14MaybeEncryptedQINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorQINtNtCscdodAO9FK5_5alloc3vec3VechEEENtNtB7_3mem8CompressE4dumpCs56aZGHL6Dc6_7ruff_db.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtCsiqiOkcJdymw_7similar4textINtB5_8TextDiffeE11grouped_opsCs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.g = load i64, ptr %i.a, align 8, !range !25, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !26, !noundef !3 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @_RNvNtCsiqiOkcJdymw_7similar6common14group_diff_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = mul i64 %i.f, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.d, i64 %i.q, i1 false)
  store i64 %i.f, ptr %i.p, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB4_19IndexedNodesBuilder4push(ptr noalias noundef align 8 dereferenceable(72) %0, i64 noundef range(i64 0, 27) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1134, !noundef !3 ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !range !41, !alias.scope !1134, !noundef !3
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefE8push_mutCs56aZGHL6Dc6_7ruff_db.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefE8grow_oneCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefE8push_mutCs56aZGHL6Dc6_7ruff_db.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefE8push_mutCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1134, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.c ; 2 uses
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %i.i, align 8
  %i.j = add nsw i64 %i.c, 1                      ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !1134
  %i.k = icmp slt i64 %i.c, 576460752303423487
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 64
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefE8push_mutCs56aZGHL6Dc6_7ruff_db.exit
  tail call fastcc void @_RNvMs_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB4_19IndexedNodesBuilder5flush(ptr noalias noundef align 8 dereferenceable(72) %0)
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefE8push_mutCs56aZGHL6Dc6_7ruff_db.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB4_19IndexedNodesBuilder5flush(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes17extend_from_nodes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.thread.i, %.lr.ph.i
  %.sroa.0.0110.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.ab, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.thread.i ] ; 8 uses
  %.sroa.5.0109.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.ac, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.thread.i ] ; 3 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.0109.i, i64 64) ; 8 uses
  %xtraiter = and i64 %.sroa.0.0.i.i.i, 1
  %i.l = icmp eq i64 %.sroa.5.0109.i, 1
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %.sroa.0.0.i.i.i, 126
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.011.0.i.i = phi i64 [ -1, %.new ], [ %.sroa.0.0.i.i.i.i.1, %bb.c ]
  %.sroa.614.0.i.i = phi i64 [ 0, %.new ], [ %.sroa.0.0.i1.i.i.i.1, %bb.c ]
  %.sroa.7.0.i.i = phi i1 [ true, %.new ], [ %narrow.i.i.i.1, %bb.c ]
  %.sroa.01.0.i.i = phi i64 [ 0, %.new ], [ %i.v, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0110.i, i64 %.sroa.01.0.i.i
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val10.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1142, !noalias !1144, !nonnull !3, !noundef !3
  %i.o = ptrtoint ptr %.val10.i.i to i64          ; 3 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.011.0.i.i)
  %.sroa.0.0.i1.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.sroa.614.0.i.i)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0110.i, i64 %.sroa.01.0.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %.val10.i.i.1 = load ptr, ptr %i.q, align 8, !alias.scope !1142, !noalias !1144, !nonnull !3, !noundef !3
  %i.r = ptrtoint ptr %.val10.i.i.1 to i64        ; 3 uses
  %.sroa.0.0.i.i.i.i.1 = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %.sroa.0.0.i.i.i.i) ; 3 uses
  %.sroa.0.0.i1.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %.sroa.0.0.i1.i.i.i) ; 3 uses
  %i.s = or i64 %i.r, %i.o
  %i.t = and i64 %i.s, 3
  %i.u = icmp eq i64 %i.t, 0
  %narrow.i.i.i.1 = and i1 %.sroa.7.0.i.i, %i.u   ; 3 uses
  %i.v = add nuw i64 %.sroa.01.0.i.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa, %bb.b
  %.sroa.011.0.i.i.epil.init = phi i64 [ -1, %bb.b ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa ]
  %.sroa.614.0.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %.sroa.0.0.i1.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi i1 [ true, %bb.b ], [ %narrow.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa ]
  %.sroa.01.0.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.v, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %.sroa.0.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0110.i, i64 %.sroa.01.0.i.i.epil.init
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val10.i.i.epil = load ptr, ptr %i.x, align 8, !alias.scope !1142, !noalias !1144, !nonnull !3, !noundef !3
  %i.y = ptrtoint ptr %.val10.i.i.epil to i64     ; 3 uses
  %.sroa.0.0.i.i.i.i.epil = tail call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %.sroa.011.0.i.i.epil.init)
  %.sroa.0.0.i1.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %i.y, i64 %.sroa.614.0.i.i.epil.init)
  %i.z = and i64 %i.y, 3
  %i.aa = icmp eq i64 %i.z, 0
  %narrow.i.i.i.epil = and i1 %.sroa.7.0.i.i.epil.init, %i.aa
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.0.0.i.i.i.i.lcssa = phi i64 [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ] ; 3 uses
  %.sroa.0.0.i1.i.i.i.lcssa = phi i64 [ %.sroa.0.0.i1.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa ], [ %.sroa.0.0.i1.i.i.i.epil, %.epil.preheader ]
  %narrow.i.i.i.lcssa = phi i1 [ %narrow.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i.unr-lcssa ], [ %narrow.i.i.i.epil, %.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0110.i, i64 %.sroa.0.0.i.i.i
  %i.ac = sub nuw nsw i64 %.sroa.5.0109.i, %.sroa.0.0.i.i.i ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.0.0.i.i.i, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0110.i, i64 %.idx.i ; 3 uses
  %i.ae = sub i64 %.sroa.0.0.i1.i.i.i.lcssa, %.sroa.0.0.i.i.i.i.lcssa ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = tail call range(i64 2, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 false)
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = sub nuw nsw i8 69, %i.ah                ; 2 uses
  %i.aj = load i64, ptr %i.h, align 8, !alias.scope !1140, !noalias !1148, !noundef !3 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ugt i64 %i.aj, 4294967295
  %i.am = shl nuw i64 %i.aj, 32
  %.sroa.028.0.insert.insert.i = select i1 %i.al, i64 513, i64 %i.am ; 2 uses
  %i.an = trunc i64 %.sroa.028.0.insert.insert.i to i1
  br i1 %i.an, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit.i, !prof !27

bb.d:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1149
  store i8 2, ptr %i.a, align 1, !noalias !1149
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 45, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #36
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjjbENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB2N_12IndexedNodes17extend_from_nodes0EB2R_.exit.i
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.028.0.insert.insert.i, 32 ; 3 uses
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32 ; 2 uses
  %i.ao = icmp ult i64 %i.ae, 2305843009213693952
  %or.cond.i = and i1 %i.ao, %narrow.i.i.i.lcssa
  %i.ap = trunc nuw nsw i64 %.sroa.0.0.i.i.i to i8 ; 2 uses
  %i.aq = load i64, ptr %i.i, align 8, !alias.scope !1137, !noalias !1150, !noundef !3 ; 5 uses
  %i.ar = load i64, ptr %0, align 8, !range !41, !alias.scope !1137, !noalias !1150, !noundef !3
  %i.as = icmp eq i64 %i.aq, %i.ar                ; 2 uses
  br i1 %or.cond.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit37.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit.i
  br i1 %i.as, label %bb.e, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.lr.ph.i

bb.e:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit.i
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed10IndexChunkE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !1151
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.lr.ph.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.lr.ph.i: ; preds = %bb.e, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit.i
  %i.at = load ptr, ptr %i.j, align 8, !alias.scope !1154, !noalias !1156, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.aq ; 5 uses
  store i64 0, ptr %i.au, align 8
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %.sroa.470.0..sroa_idx.i, align 8
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i8 5, ptr %.sroa.571.0..sroa_idx.i, align 4
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 13
  store i8 %i.ap, ptr %.sroa.672.0..sroa_idx.i, align 1
  %.sroa.773.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 14
  store i8 1, ptr %.sroa.773.0..sroa_idx.i, align 2
  %i.av = add i64 %i.aq, 1
  store i64 %i.av, ptr %i.i, align 8, !alias.scope !1154, !noalias !1156
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefENCNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB3k_12IndexedNodes17extend_from_nodess_0EEB3o_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.sroa.0.0110.i, ptr noundef nonnull %i.ad)
  %i.aw = add nuw nsw i64 %.sroa.6.0.extract.shift.i.i, %.sroa.0.0.i.i.i
  %i.ax = shl nuw nsw i64 %i.aw, 6
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit37.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit.i
  br i1 %i.as, label %bb.f, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.lr.ph.i

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit37.i
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed10IndexChunkE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !1157
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.lr.ph.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.lr.ph.i: ; preds = %bb.f, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs56aZGHL6Dc6_7ruff_db.exit37.i
  %i.ay = load ptr, ptr %i.j, align 8, !alias.scope !1160, !noalias !1162, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.aq ; 5 uses
  store i64 %.sroa.0.0.i.i.i.i.lcssa, ptr %i.az, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i8 %i.ai, ptr %.sroa.559.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 13
  store i8 %i.ap, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.760.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 14
  store i8 0, ptr %.sroa.760.0..sroa_idx.i, align 2
  %i.ba = add i64 %i.aq, 1
  store i64 %i.ba, ptr %i.i, align 8, !alias.scope !1160, !noalias !1162
  %i.bb = shl nuw nsw i64 %.sroa.6.0.extract.shift.i.i, 6
  %i.bc = zext nneg i8 %i.ai to i64               ; 2 uses
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.lr.ph.i
  %.sroa.777.0106.i = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.lr.ph.i ], [ %i.be, %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit.i ] ; 2 uses
  %.sroa.075.0105.i = phi ptr [ %.sroa.0.0110.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.lr.ph.i ], [ %i.bd, %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.075.0105.i, i64 16 ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.777.0106.i, 1
  %i.bf = load i64, ptr %.sroa.075.0105.i, align 8, !range !1163, !alias.scope !1142, !noalias !1164, !noundef !3 ; 2 uses
  %i.bg = mul nuw nsw i64 %.sroa.777.0106.i, 5    ; 3 uses
  %i.bh = add nuw nsw i64 %i.bg, %i.ax            ; 3 uses
  %i.bi = lshr i64 %i.bh, 6                       ; 4 uses
  %i.bj = load i64, ptr %i.h, align 8, !alias.scope !1165, !noalias !1148, !noundef !3 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bh, 68
  %.sroa.0.0.i40.i = lshr i64 %i.bl, 6
  %.sroa.0.0.i.i41.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i40.i, i64 %i.bj)
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE6resizeCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i41.i, i64 noundef 0)
  %i.bm = load i64, ptr %i.h, align 8, !alias.scope !1165, !noalias !1148, !noundef !3 ; 2 uses
  %i.bn = icmp ult i64 %i.bi, %i.bm
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i
  %i.bo = add nuw nsw i64 %i.bh, 5
  %i.bp = and i64 %i.bg, 63
  %i.bq = load ptr, ptr %i.k, align 8, !alias.scope !1165, !noalias !1148, !nonnull !3, !noundef !3
  %i.br = shl i64 %i.bf, %i.bp
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bi ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !3
  %i.bu = or i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8
  %i.bv = add nuw nsw i64 %i.bi, 1                ; 4 uses
  %i.bw = shl nuw i64 %i.bv, 6
  %i.bx = icmp samesign ugt i64 %i.bo, %i.bw
  br i1 %i.bx, label %bb.i, label %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit.i

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #36
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.by = load i64, ptr %i.h, align 8, !alias.scope !1165, !noalias !1148, !noundef !3 ; 2 uses
  %i.bz = icmp ult i64 %i.bv, %i.by
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.k, align 8, !alias.scope !1165, !noalias !1148, !nonnull !3, !noundef !3
  %1 = sub nsw i64 0, %i.bg
  %2 = and i64 %1, 63
  %3 = lshr i64 %i.bf, %2
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !3
  %i.cd = or i64 %i.cc, %3
  store i64 %i.cd, ptr %i.cb, align 8
  br label %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #36
  unreachable

_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit.i: ; preds = %bb.j, %bb.g
  %i.ce = icmp eq ptr %i.bd, %i.ad
  br i1 %i.ce, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.thread.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.thread.i: ; preds = %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit.i, %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit49.i
  %i.cf = icmp eq i64 %i.ac, 0
  br i1 %i.cf, label %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes17extend_from_nodes.exit, label %bb.b

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.i: ; preds = %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit49.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.lr.ph.i
  %.sroa.062.0108.i = phi ptr [ %.sroa.0.0110.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.lr.ph.i ], [ %i.cg, %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit49.i ] ; 3 uses
  %.sroa.764.0107.i = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.lr.ph.i ], [ %i.ch, %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit49.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.062.0108.i, i64 16 ; 2 uses
  %i.ch = add nuw nsw i64 %.sroa.764.0107.i, 1
  %i.ci = load i64, ptr %.sroa.062.0108.i, align 8, !range !1163, !alias.scope !1142, !noalias !1164, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.062.0108.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !1142, !noalias !1164, !nonnull !3, !noundef !3
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %.sroa.0.0.i.i.i.i.lcssa
  %i.cn = mul i64 %.sroa.764.0107.i, %i.bc        ; 3 uses
  %i.co = add i64 %i.cn, %i.bb                    ; 2 uses
  %i.cp = shl i64 %i.cm, 3
  %i.cq = and i64 %i.cp, -32
  %i.cr = or disjoint i64 %i.cq, %i.ci            ; 2 uses
  %i.cs = lshr i64 %i.co, 6                       ; 4 uses
  %i.ct = add i64 %i.co, %i.bc                    ; 3 uses
  %i.cu = load i64, ptr %i.h, align 8, !alias.scope !1168, !noalias !1148, !noundef !3 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = lshr i64 %i.ct, 6
  %i.cx = and i64 %i.ct, 63
  %.not.i46.i = icmp ne i64 %i.cx, 0
  %i.cy = zext i1 %.not.i46.i to i64
  %.sroa.0.0.i47.i = add nuw nsw i64 %i.cw, %i.cy
  %.sroa.0.0.i.i48.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i47.i, i64 %i.cu)
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE6resizeCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i48.i, i64 noundef 0)
  %i.cz = load i64, ptr %i.h, align 8, !alias.scope !1168, !noalias !1148, !noundef !3 ; 2 uses
  %i.da = icmp ult i64 %i.cs, %i.cz
  br i1 %i.da, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.i
  %i.db = and i64 %i.cn, 63
  %i.dc = load ptr, ptr %i.k, align 8, !alias.scope !1168, !noalias !1148, !nonnull !3, !noundef !3
  %i.dd = shl i64 %i.cr, %i.db
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cs ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !noundef !3
  %i.dg = or i64 %i.df, %i.dd
  store i64 %i.dg, ptr %i.de, align 8
  %i.dh = add nuw nsw i64 %i.cs, 1                ; 4 uses
  %i.di = shl i64 %i.dh, 6
  %i.dj = icmp ugt i64 %i.ct, %i.di
  br i1 %i.dj, label %bb.n, label %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit49.i

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #36
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.dk = load i64, ptr %i.h, align 8, !alias.scope !1168, !noalias !1148, !noundef !3 ; 2 uses
  %i.dl = icmp ult i64 %i.dh, %i.dk
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dm = load ptr, ptr %i.k, align 8, !alias.scope !1168, !noalias !1148, !nonnull !3, !noundef !3
  %i.dn = sub i64 0, %i.cn
  %i.do = and i64 %i.dn, 63
  %i.dp = lshr i64 %i.cr, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dh ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !3
  %i.ds = or i64 %i.dr, %i.dp
  store i64 %i.ds, ptr %i.dq, align 8
  br label %_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit49.i

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #36
  unreachable

_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes10write_bits.exit49.i: ; preds = %bb.o, %bb.l
  %i.dt = icmp eq ptr %i.cg, %i.ad
  br i1 %i.dt, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.thread.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit44.i

_RNvMs0_NtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexedNtB5_12IndexedNodes17extend_from_nodes.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated14AnyRootNodeRefEENtNtNtB8_6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit.thread.i, %bb.a
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMsg_NtCsb9zoKkpXuBA_3zip5writeINtB5_16GenericZipWriterINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEE13try_inner_mutCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(4200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !1171, !noundef !3
  %i.d = icmp eq i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !35
  %.not = icmp eq i64 %i.f, -1
  %or.cond = select i1 %i.d, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 57, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.a, align 8, !range !25, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !26, !noundef !3 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f, !prof !27

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBu_DNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB17_6marker4SendNtB1E_4SyncEL_EINtNtB17_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs56aZGHL6Dc6_7ruff_db.exit, %bb.c
  %.sroa.3.0 = phi ptr [ %i.v, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBu_DNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB17_6marker4SendNtB1E_4SyncEL_EINtNtB17_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs56aZGHL6Dc6_7ruff_db.exit ], [ %i.l, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBu_DNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB17_6marker4SendNtB1E_4SyncEL_EINtNtB17_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs56aZGHL6Dc6_7ruff_db.exit ], [ 0, %bb.c ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.n

bb.e:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.o) #36
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.j, 56
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.p, ptr noundef nonnull align 1 dereferenceable(57) @83, i64 57, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 57, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !1172
  %i.r = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 145) 24, i64 noundef range(i64 1, 9) 8) #37, !noalias !1172 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBu_DNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB17_6marker4SendNtB1E_4SyncEL_EINtNtB17_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs56aZGHL6Dc6_7ruff_db.exit, !prof !31

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1Q_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.t

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBu_DNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB17_6marker4SendNtB1E_4SyncEL_EINtNtB17_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = tail call noundef nonnull ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @21)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsb9zoKkpXuBA_3zip5writeINtB5_16GenericZipWriterINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEE19prepare_next_writerCs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(4200) %1, i16 noundef range(i16 0, 4) %2, i16 %3, i64 noundef range(i64 0, 2) %4, i64 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !1171, !noundef !3
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 28)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.410.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  switch i16 %2, label %default.unreachable107 [
    i16 0, label %bb.e
    i16 1, label %bb.f
    i16 2, label %bb.g
    i16 3, label %bb.i
  ]

end_hunk_0
