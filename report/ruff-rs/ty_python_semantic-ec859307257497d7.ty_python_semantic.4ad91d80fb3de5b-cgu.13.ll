Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.13?download=true
inline.NumInlined: 7526
inline.NumDeleted: 3512
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNCNvNtCsoTR8nlGN3X_18ty_python_semantic5place20builtins_symbol_impl0B5_:bb.a
  %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.12.sroa.7, i64 12, i1 false)
  store i32 %i.w, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.x, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.055, ptr %.sroa.59.0..sroa_idx, align 4
  %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.10.054, ptr %.sroa.59.sroa.4.0..sroa.59.0..sroa_idx.sroa_idx, align 4
  %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.12.sroa.0.051, ptr %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx.sroa_idx, align 4
  %.sroa.59.sroa.7.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.15.053, ptr %.sroa.59.sroa.7.0..sroa.59.0..sroa_idx.sroa_idx, align 4
  %.sroa.59.sroa.8.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %.sroa.17.052, ptr %.sroa.59.sroa.8.0..sroa.59.0..sroa_idx.sroa_idx, align 1
  %.sroa.59.sroa.9.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 0, ptr %.sroa.59.sroa.9.0..sroa.59.0..sroa_idx.sroa_idx, align 2
  %.sroa.59.sroa.11.0..sroa.59.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sink.i56, ptr %.sroa.59.sroa.11.0..sroa.59.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bq = icmp ne i32 %.sroa.0.055, 1
  %.sroa.5.4.extract.trunc = trunc i64 %.sroa.10.054 to i32 ; 2 uses
  %.not1165 = icmp eq i32 %.sroa.5.4.extract.trunc, 0
  %.not11 = select i1 %i.bq, i1 true, i1 %.not1165
  br i1 %.not11, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.5.8.extract.shift = lshr i64 %.sroa.10.054, 32
  %.sroa.5.8.extract.trunc = trunc nuw i64 %.sroa.5.8.extract.shift to i32
  %i.br = call noundef zeroext i1 @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types17exists_at_runtime(ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.j, i32 noundef %.sroa.5.4.extract.trunc, i32 noundef %.sroa.5.8.extract.trunc)
  br i1 %i.br, label %bb.i, label %_RNvMs7_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_18PlaceAndQualifiers25ignore_possibly_undefined.exit.thread

bb.l:                                             ; preds = %bb.g, %_RNvMs7_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_18PlaceAndQualifiers25ignore_possibly_undefined.exit.thread, %bb.i
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !15 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !12190 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !12190 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !12190 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12190 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !15
  %i.t = load i8, ptr %i.r, align 1, !noundef !15
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.030.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.029.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.030.i, align 1, !alias.scope !12185, !noalias !12188
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.029.i, align 1, !alias.scope !12188, !noalias !12185
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !12185, !noalias !12188
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !12188, !noalias !12185
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow11containment24narrow_string_membership0B9_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.f = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !15, !align !117, !noundef !15 ; 4 uses
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.56.0.copyload = load i32, ptr %.sroa.56.0..sroa_idx, align 4 ; 2 uses
  %i.i = icmp ne i32 %.sroa.0.0.copyload, 17
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp ne i32 %.sroa.0.0.copyload, 28
  %i.k = icmp ne i8 %.sroa.4.0.copyload, 2
  %or.cond.not53 = select i1 %i.j, i1 true, i1 %i.k
  %.not = icmp eq i32 %.sroa.56.0.copyload, 0
  %or.cond11 = select i1 %or.cond.not53, i1 true, i1 %.not
  br i1 %or.cond11, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !noundef !15 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !15 ; 16 uses
  %i.p = call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType5valueDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.56.0.copyload, i32 noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.h) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 9 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12191)
  call void @llvm.experimental.noalias.scope.decl(metadata !12194)
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.r, %i.o
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.r, 1
  br i1 %i.u, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.r, %i.o
  br i1 %i.v, label %bb.bk, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.f:                                             ; preds = %bb.d
  %i.w = icmp ult i64 %i.r, 33
  br i1 %i.w, label %bb.au, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i

bb.g:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.q, align 1, !alias.scope !12191, !noalias !12194, !noundef !15 ; 2 uses
  %i.y = icmp samesign ult i64 %i.o, 16
  br i1 %i.y, label %.lr.ph.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.o)
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = icmp eq i64 %i.aa, 1
  %i.ac = zext i1 %i.ab to i8
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.i
  %.sroa.01.05.i.i = phi i64 [ %i.ag, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.05.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !12196, !noalias !12191, !noundef !15
  %i.af = icmp eq i8 %i.ae, %i.x
  br i1 %i.af, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ag = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %i.o
  br i1 %exitcond.not.i.i, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.lr.ph.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i: ; preds = %bb.aw, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12199
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !12200)
  %i.ah = load i64, ptr %i.b, align 8, !range !126, !alias.scope !12200, !noalias !12203, !noundef !15
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.ai, label %bb.s, label %.preheader.i4.i

.preheader.i4.i:                                  ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !range !110, !alias.scope !12205, !noalias !12208, !noundef !15
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.preheader.i4.i
  %.promoted.i.i = load i64, ptr %i.aj, align 8, !alias.scope !12200, !noalias !12203 ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !12205, !noalias !12208, !nonnull !15, !noundef !15 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !12205, !noalias !12208, !noundef !15 ; 14 uses
  %.promoted26.i.i = load i8, ptr %i.an, align 8, !alias.scope !12205, !noalias !12208 ; 2 uses
  %i.as = trunc nuw i8 %.promoted26.i.i to i1
  %i.at = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.at, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i5.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %i.ar
  br i1 %.not.i.i.i.peel.i, label %bb.k, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.j
  %i.au = icmp eq i64 %.promoted.i.i, %i.ar
  br i1 %i.au, label %bb.l, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.promoted.i.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !12210, !noalias !12213, !noundef !15
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %.split.i.i.i.peel.i, %.lr.ph.i5.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.promoted.i.i ; 4 uses
  %i.az = icmp samesign eq i64 %.promoted.i.i, %i.ar
  br i1 %i.az, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i8, ptr %i.ay, align 1, !noalias !12215, !noundef !15 ; 5 uses
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %bb.n, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.peel.i: ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bd = and i8 %i.ba, 31
  %i.be = zext nneg i8 %i.bd to i32               ; 3 uses
  %i.bf = add nuw nsw i64 %.promoted.i.i, 1
  %i.bg = icmp samesign ne i64 %i.bf, %i.ar
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i8, ptr %i.bc, align 1, !noalias !12215, !noundef !15
  %i.bi = shl nuw nsw i32 %i.be, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = icmp samesign ugt i8 %i.ba, -33
  br i1 %i.bm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.peel.i, label %bb.o

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.peel.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bo = add nuw nsw i64 %.promoted.i.i, 2
  %i.bp = icmp samesign ne i64 %i.bo, %i.ar
  call void @llvm.assume(i1 %i.bp)
  %i.bq = load i8, ptr %i.bn, align 1, !noalias !12215, !noundef !15
  %i.br = shl nuw nsw i32 %i.bk, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.be, 12
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = icmp samesign ugt i8 %i.ba, -17
  br i1 %i.bx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.peel.i, label %bb.o

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.peel.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.bz = add nuw nsw i64 %.promoted.i.i, 3
  %i.ca = icmp samesign ne i64 %i.bz, %i.ar
  call void @llvm.assume(i1 %i.ca)
  %i.cb = load i8, ptr %i.by, align 1, !noalias !12215, !noundef !15
  %i.cc = shl nuw nsw i32 %i.be, 18
  %i.cd = and i32 %i.cc, 1835008
  %i.ce = shl nuw nsw i32 %i.bu, 6
  %i.cf = and i8 %i.cb, 63
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = or disjoint i32 %i.ch, %i.cd
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = zext nneg i8 %i.ba to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.bw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.peel.i ], [ %i.ci, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.peel.i ], [ %i.bl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.peel.i ], [ %i.cj, %bb.n ] ; 4 uses
  %i.ck = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.ck)
  br i1 %i.as, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.cl, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.cm, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.cn, i64 3, i64 4
  br label %bb.t

bb.s:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !12200, !noalias !12203, !noundef !15 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !12200, !noalias !12203, !nonnull !15, !noundef !15 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !12200, !noalias !12203, !noundef !15 ; 14 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !12200, !noalias !12203, !nonnull !15, !noundef !15 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !12200, !noalias !12203, !noundef !15 ; 12 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.da = add nsw i64 %i.cy, -1                   ; 4 uses
  br i1 %i.cq, label %bb.y, label %bb.ah

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.q ], [ %..i.i.peel.i, %bb.r ], [ 1, %bb.p ]
  %i.db = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12218)
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i = icmp ult i64 %i.db, %i.ar
  br i1 %.not.i.i.i.i, label %bb.v, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.u
  %i.dd = icmp eq i64 %i.db, %i.ar
  br i1 %i.dd, label %bb.w, label %.loopexit.i

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.db
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !12210, !noalias !12219, !noundef !15
  %i.dg = icmp sgt i8 %i.df, -65
  br i1 %i.dg, label %bb.w, label %.loopexit.i

bb.w:                                             ; preds = %bb.v, %.split.i.i.i.i, %bb.t
  %i.dh = icmp samesign eq i64 %i.db, %i.ar
  br i1 %i.dh, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.db
  %i.dj = load i8, ptr %i.di, align 1, !noalias !12220, !noundef !15 ; 3 uses
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i: ; preds = %bb.x
  %i.dl = add nuw nsw i64 %i.db, 1
  %i.dm = icmp samesign ne i64 %i.dl, %i.ar
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp samesign ugt i8 %i.dj, -33
  br i1 %i.dn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i
  %i.do = add nuw nsw i64 %i.db, 2
  %i.dp = icmp samesign ne i64 %i.do, %i.ar
  call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp samesign ugt i8 %i.dj, -17
  br i1 %i.dq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i
  %i.dr = add nuw nsw i64 %i.db, 3
  %i.ds = icmp samesign ne i64 %i.dr, %i.ar
  call void @llvm.assume(i1 %i.ds)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.loopexit.i:                                      ; preds = %bb.v, %.split.i.i.i.i, %bb.k, %.split.i.i.i.peel.i
  %.lcssa150.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.k ], [ %i.db, %.split.i.i.i.i ], [ %i.db, %bb.v ]
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar, i64 noundef %.lcssa150.i, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1248) #56, !noalias !12219
  unreachable

bb.y:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !12221)
  call void @llvm.experimental.noalias.scope.decl(metadata !12224)
  call void @llvm.experimental.noalias.scope.decl(metadata !12226)
  %.promoted.i17.i = load i64, ptr %i.cz, align 8, !alias.scope !12221, !noalias !12228 ; 2 uses
  %i.dt = add i64 %.promoted.i17.i, %i.da         ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.cu
  br i1 %i.du, label %.lr.ph.i20.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i20.i:                                     ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow11containment24narrow_string_membership0B9_:bb.a
  %exitcond.not.i25.i = icmp eq i64 %i.eo, %umax49.i23.i
  br i1 %exitcond.not.i25.i, label %.preheader.i.preheader, label %.lr.ph204

.preheader.i.preheader:                           ; preds = %.preheader96.i, %.preheader96.i.preheader
  br i1 %.first_iter.i, label %.preheader.i.us.preheader, label %.preheader.i

.preheader.i.us.preheader:                        ; preds = %.preheader.i.preheader
  br i1 %.not.i.us205, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph207

.preheader.i.us:                                  ; preds = %bb.ac
  %.not.i.us = icmp eq i64 %i.ep, 0
  br i1 %.not.i.us, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.sroa.2.0.i28.i.us206 = phi i64 [ %i.ep, %.preheader.i.us ], [ %.fr54, %.preheader.i.us.preheader ]
  %i.ep = add i64 %.sroa.2.0.i28.i.us206, -1      ; 4 uses
  %i.eq = add i64 %i.ep, %i.eb                    ; 3 uses
  %i.er = icmp ult i64 %i.eq, %i.cu
  br i1 %i.er, label %bb.ac, label %.split.us

bb.ac:                                            ; preds = %.lr.ph207
  %i.es = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ep
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !12226, !noalias !12231, !noundef !15
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.eq
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !12224, !noalias !12230, !noundef !15
  %.not.i29.i.us = icmp eq i8 %i.et, %i.ev
  br i1 %.not.i29.i.us, label %.preheader.i.us, label %.split50.us

.split50.us:                                      ; preds = %bb.ac
  %i.ew = add i64 %i.eb, %i.dz
  br label %bb.ab

.lr.ph204:                                        ; preds = %.preheader96.i.preheader, %.preheader96.i
  %.sroa.02.0.i24.i203 = phi i64 [ %i.eo, %.preheader96.i ], [ %.fr54, %.preheader96.i.preheader ] ; 4 uses
  %i.ex = add i64 %.sroa.02.0.i24.i203, %i.eb     ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.cu
  br i1 %i.ey, label %bb.ae, label %bb.af

.preheader.i:                                     ; preds = %.preheader.i.preheader
  br i1 %.not.i.us205, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.preheader.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef range(i64 0, -9223372036854775808) %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #56, !noalias !12232
  unreachable

.split.us:                                        ; preds = %.lr.ph207
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef range(i64 0, -9223372036854775808) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #56, !noalias !12232
  unreachable

bb.ae:                                            ; preds = %.lr.ph204
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.02.0.i24.i203
  %i.fa = load i8, ptr %i.ez, align 1, !alias.scope !12226, !noalias !12231, !noundef !15
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ex
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !12224, !noalias !12230, !noundef !15
  %.not21.i27.i = icmp eq i8 %i.fa, %i.fc
  br i1 %.not21.i27.i, label %.preheader96.i, label %bb.ag

bb.af:                                            ; preds = %.lr.ph204
  %i.fd = add i64 %i.eb, %.fr54
  %umax.i26.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.cu, i64 %i.fd)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i26.i, i64 noundef range(i64 0, -9223372036854775808) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #56, !noalias !12232
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %.reass235.i.reass.reass = add i64 %i.eb, %invariant.op284
  %i.fe = add i64 %.reass235.i.reass.reass, %.sroa.02.0.i24.i203
  br label %bb.ab

bb.ah:                                            ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !12233)
  call void @llvm.experimental.noalias.scope.decl(metadata !12236)
  call void @llvm.experimental.noalias.scope.decl(metadata !12238)
  %.promoted.i11.i = load i64, ptr %i.cz, align 8, !alias.scope !12233, !noalias !12240 ; 2 uses
  %i.ff = add i64 %.promoted.i11.i, %i.da         ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.cu
  br i1 %i.fg, label %.lr.ph.i14.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i14.i:                                     ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !12233, !noalias !12240, !noundef !15
  %i.fj = load i64, ptr %i.aj, align 8, !alias.scope !12233, !noalias !12240 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !12233, !noalias !12240 ; 2 uses
  %i.fm = sub i64 %i.cy, %i.fl
  %invariant.op = sub i64 1, %i.fj
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i.i, %.lr.ph.i14.i
  %i.fn = phi i64 [ %.promoted.i11.i, %.lr.ph.i14.i ], [ %.ph71.i.i, %.sink.split.i.i ] ; 6 uses
  %i.fo = phi i64 [ %i.cp, %.lr.ph.i14.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 3 uses
  %i.fp = phi i64 [ %i.ff, %.lr.ph.i14.i ], [ %i.fy, %.sink.split.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !12236, !noalias !12242, !noundef !15
  %i.fs = and i8 %i.fr, 63
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fu, %i.fi
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fx = add i64 %i.fn, %i.cy
  br label %.sink.split.i.i

bb.ak:                                            ; preds = %bb.ai
  %.sroa.0.0.i.i.i = call i64 @llvm.umax.i64(i64 %i.fo, i64 %i.fj) ; 4 uses
  %umax49.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cy)
  %exitcond.not.i15.i197.not = icmp ult i64 %.sroa.0.0.i.i.i, %i.cy
  br i1 %exitcond.not.i15.i197.not, label %.lr.ph199, label %.preheader35.i.preheader

.sink.split.i.i:                                  ; preds = %bb.at, %bb.aq, %bb.aj
  %.sink.i.i = phi i64 [ %i.fm, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.aj ]
  %.ph71.i.i = phi i64 [ %i.gn, %bb.aq ], [ %i.gt, %bb.at ], [ %i.fx, %bb.aj ] ; 2 uses
  %i.fy = add i64 %.ph71.i.i, %i.da               ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.cu
  br i1 %i.fz, label %bb.ai, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.al:                                            ; preds = %bb.ar
  %i.ga = add i64 %.sroa.02.0.i.i198, 1           ; 2 uses
  %exitcond.not.i15.i = icmp eq i64 %i.ga, %umax49.i.i
  br i1 %exitcond.not.i15.i, label %.preheader35.i.preheader, label %.lr.ph199

.preheader35.i.preheader:                         ; preds = %bb.al, %bb.ak
  %i.gb = icmp ult i64 %i.fo, %i.fj
  br i1 %i.gb, label %.lr.ph201, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph199:                                        ; preds = %bb.ak, %bb.al
  %.sroa.02.0.i.i198 = phi i64 [ %i.ga, %bb.al ], [ %.sroa.0.0.i.i.i, %bb.ak ] ; 4 uses
  %i.gc = add i64 %.sroa.02.0.i.i198, %i.fn       ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.cu
  br i1 %i.gd, label %bb.ar, label %bb.as

.preheader35.i:                                   ; preds = %bb.ao
  %i.ge = icmp ult i64 %i.fo, %i.gf
  br i1 %i.ge, label %.lr.ph201, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph201:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.2.0.i.i200 = phi i64 [ %i.gf, %.preheader35.i ], [ %i.fj, %.preheader35.i.preheader ]
  %i.gf = add i64 %.sroa.2.0.i.i200, -1           ; 6 uses
  %i.gg = icmp ult i64 %i.gf, %i.cy
  br i1 %i.gg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph201
  %i.gh = add i64 %i.gf, %i.fn                    ; 3 uses
  %i.gi = icmp ult i64 %i.gh, %i.cu
  br i1 %i.gi, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %.lr.ph201
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gf, i64 noundef range(i64 0, -9223372036854775808) %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #56, !noalias !12243
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.gf
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !12238, !noalias !12244, !noundef !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.gh
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !12236, !noalias !12242, !noundef !15
  %.not.i16.i = icmp eq i8 %i.gk, %i.gm
  br i1 %.not.i16.i, label %.preheader35.i, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gh, i64 noundef range(i64 0, -9223372036854775808) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #56, !noalias !12243
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.gn = add i64 %i.fn, %i.fl
  br label %.sink.split.i.i

bb.ar:                                            ; preds = %.lr.ph199
  %i.go = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.02.0.i.i198
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !12238, !noalias !12244, !noundef !15
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.gc
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !12236, !noalias !12242, !noundef !15
  %.not21.i.i = icmp eq i8 %i.gp, %i.gr
  br i1 %.not21.i.i, label %bb.al, label %bb.at

bb.as:                                            ; preds = %.lr.ph199
  %i.gs = add i64 %.sroa.0.0.i.i.i, %i.fn
  %umax.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.cu, i64 %i.gs)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #56, !noalias !12243
  unreachable

bb.at:                                            ; preds = %bb.ar
  %.reass.i.reass.reass = add i64 %i.fn, %invariant.op
  %i.gt = add i64 %.reass.i.reass.reass, %.sroa.02.0.i.i198
  br label %.sink.split.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %.sink.split.i.i, %.preheader35.i.preheader, %.preheader35.i, %bb.ab, %.preheader.i.us.preheader, %.preheader.i.us, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i, %bb.x, %.preheader.i, %bb.l, %bb.ah, %bb.y, %bb.w, %bb.o, %.preheader.i4.i
  %.sroa.0.031.i = phi i8 [ 1, %.preheader.i.us ], [ 0, %bb.y ], [ 0, %.preheader.i4.i ], [ 1, %bb.w ], [ 1, %.preheader35.i ], [ 1, %bb.o ], [ %.promoted26.i.i, %bb.l ], [ 0, %bb.ah ], [ 1, %.preheader.i.us.preheader ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit12.i.i.i.i ], [ 1, %.preheader.i ], [ 1, %bb.x ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit16.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit14.i.i.i.i ], [ 0, %bb.ab ], [ 0, %.sink.split.i.i ], [ 1, %.preheader35.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12199
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.au:                                            ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !12245)
  call void @llvm.experimental.noalias.scope.decl(metadata !12248)
  %i.gu = load i8, ptr %i.q, align 1, !alias.scope !12250, !noalias !12251, !noundef !15 ; 3 uses
  %i.gv = add nsw i64 %i.r, -1                    ; 2 uses
  %i.gw = icmp eq i64 %i.r, 2
  br i1 %i.gw, label %.thread.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gx = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.r, i64 4)
  br label %.lr.ph

bb.aw:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.gy = icmp ult i64 %i.gx, %i.ha
  br i1 %i.gy, label %.lr.ph, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i

.lr.ph:                                           ; preds = %bb.av, %bb.aw
  %i.gz = phi i64 [ %i.r, %bb.av ], [ %i.ha, %bb.aw ]
  %i.ha = add nsw i64 %i.gz, -1                   ; 6 uses
  %i.hb = icmp ult i64 %i.ha, %i.r
  br i1 %i.hb, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ha, i64 noundef range(i64 2, 33) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @467) #56, !noalias !12252
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %.lr.ph
  %i.hc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !12250, !noalias !12260, !noundef !15 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.hd, %i.gu
  br i1 %.not.i.not.i.i.i, label %bb.aw, label %bb.ay

bb.ay:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.he = add nuw nsw i64 %i.r, 15
  %i.hf = icmp ult i64 %i.o, %i.he
  br i1 %i.hf, label %.lr.ph.split.us.i.i.i, label %bb.az

.thread.i.i:                                      ; preds = %bb.au
  %i.hg = icmp ult i64 %i.o, 17
  br i1 %i.hg, label %.lr.ph.split.us.i.i.i, label %.thread93.i.i

.thread93.i.i:                                    ; preds = %.thread.i.i
  %i.hh = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !alias.scope !12250, !noalias !12251
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hj = insertelement <16 x i8> poison, i8 %i.gu, i64 0
  %i.hk = shufflevector <16 x i8> %i.hj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ba

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.ay
  %bcmp.i.i.us23.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %i.q, i64 range(i64 2, 33) %i.r), !alias.scope !12261, !noalias !12262
  %i.hl = icmp eq i32 %bcmp.i.i.us23.i.i.i, 0
  br i1 %i.hl, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.us.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hm, ptr noundef nonnull readonly dereferenceable(1) %i.q, i64 range(i64 2, 33) %i.r), !alias.scope !12261, !noalias !12262
  %i.hn = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.hn, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsoTR8nlGN3X_18ty_python_semantic.exit.backedge.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i, %.split.us.i.i.i
  %.pn.i.i = phi ptr [ %i.hm, %.split.us.i.i.i ], [ %i.m, %.lr.ph.split.us.i.i.i ]
  %.in.i.i = phi i64 [ %i.ho, %.split.us.i.i.i ], [ %i.o, %.lr.ph.split.us.i.i.i ]
  %i.ho = add i64 %.in.i.i, -1                    ; 2 uses
  %.not28.i.i.i = icmp ugt i64 %i.r, %i.ho
  br i1 %.not28.i.i.i, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

bb.ba:                                            ; preds = %bb.az, %.thread93.i.i
  %i.hp = phi i8 [ %.pre.i.i, %.thread93.i.i ], [ %i.hd, %bb.az ]
  %i.hq = phi <16 x i8> [ %i.hi, %.thread93.i.i ], [ %i.hk, %bb.az ] ; 6 uses
  %storemerge9295.i.i = phi i64 [ 1, %.thread93.i.i ], [ %i.ha, %bb.az ] ; 6 uses
  %i.hr = insertelement <16 x i8> poison, i8 %i.hp, i64 0
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12261
  store ptr %i.m, ptr %i.a, align 8, !noalias !12261
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.hu, align 8, !noalias !12261
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ht, ptr %i.hv, align 8, !noalias !12261
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.gv, ptr %i.hw, align 8, !noalias !12261
  %i.hx = add nuw nsw i64 %i.r, 63                ; 2 uses
  %.not.i7.i = icmp ult i64 %i.hx, %i.o
  br i1 %.not.i7.i, label %.lr.ph.i10.i, label %.preheader.i8.i

.preheader.i8.i:                                  ; preds = %bb.be, %bb.ba
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.ba ], [ %.sroa.014.2.3.i.i, %bb.be ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.ba ], [ %i.jt, %bb.be ] ; 2 uses
  %i.hy = add nuw nsw i64 %i.r, 15                ; 2 uses
  %i.hz = add i64 %.sroa.06.0.lcssa.i.i, %i.hy
  %i.ia = icmp uge i64 %i.hz, %i.o
  %i.ib = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3105.i.i = select i1 %i.ia, i1 true, i1 %i.ib
  br i1 %or.cond3105.i.i, label %._crit_edge.i9.i, label %.lr.ph107.i.i

.lr.ph.i10.i:                                     ; preds = %bb.ba, %bb.be
  %.sroa.06.0103.i.i = phi i64 [ %i.jt, %bb.be ], [ 0, %bb.ba ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.06.0103.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.ic, align 1, !alias.scope !12251, !noalias !12266
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.i.i = load <16 x i8>, ptr %i.id, align 1, !alias.scope !12251, !noalias !12266
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.hq
  %i.if = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i, %i.hs
  %i.ig = and <16 x i1> %i.ie, %i.if
  %i.ih = bitcast <16 x i1> %i.ig to i16          ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.ii, align 1, !alias.scope !12251, !noalias !12266
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.ij, align 1, !alias.scope !12251, !noalias !12266
  %i.ik = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.hq
  %i.il = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i, %i.hs
  %i.im = and <16 x i1> %i.ik, %i.il
  %i.in = bitcast <16 x i1> %i.im to i16          ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.io, align 1, !alias.scope !12251, !noalias !12266
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !12251, !noalias !12266
  %i.iq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.hq
  %i.ir = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i, %i.hs
  %i.is = and <16 x i1> %i.iq, %i.ir
  %i.it = bitcast <16 x i1> %i.is to i16          ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ic, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.iu, align 1, !alias.scope !12251, !noalias !12266
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.iv, align 1, !alias.scope !12251, !noalias !12266
  %i.iw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.hq
  %i.ix = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i, %i.hs
  %i.iy = and <16 x i1> %i.iw, %i.ix
  %i.iz = bitcast <16 x i1> %i.iy to i16          ; 2 uses
  %i.ja = icmp eq i16 %i.ih, 0
  br i1 %i.ja, label %.preheader96.1.i.i, label %bb.bf

.preheader96.1.i.i:                               ; preds = %bb.bf, %.lr.ph.i10.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i10.i ], [ %i.jy, %bb.bf ] ; 3 uses
  %i.jb = icmp eq i16 %i.in, 0
  br i1 %i.jb, label %.preheader96.2.i.i, label %bb.bb

bb.bb:                                            ; preds = %.preheader96.1.i.i
  %i.jc = or disjoint i64 %.sroa.06.0103.i.i, 16
  %i.jd = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.je = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jc, i16 noundef %i.in, i1 noundef zeroext %i.jd)
  %i.jf = zext i1 %i.je to i8
  %i.jg = or i8 %.sroa.014.2.i.i, %i.jf
  br label %.preheader96.2.i.i

.preheader96.2.i.i:                               ; preds = %bb.bb, %.preheader96.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader96.1.i.i ], [ %i.jg, %bb.bb ] ; 3 uses
  %i.jh = icmp eq i16 %i.it, 0
  br i1 %i.jh, label %.preheader96.3.i.i, label %bb.bc

bb.bc:                                            ; preds = %.preheader96.2.i.i
  %i.ji = or disjoint i64 %.sroa.06.0103.i.i, 32
  %i.jj = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.jk = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ji, i16 noundef %i.it, i1 noundef zeroext %i.jj)
  %i.jl = zext i1 %i.jk to i8
  %i.jm = or i8 %.sroa.014.2.1.i.i, %i.jl
  br label %.preheader96.3.i.i

.preheader96.3.i.i:                               ; preds = %bb.bc, %.preheader96.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader96.2.i.i ], [ %i.jm, %bb.bc ] ; 3 uses
  %i.jn = icmp eq i16 %i.iz, 0
  br i1 %i.jn, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.preheader96.3.i.i
  %i.jo = or disjoint i64 %.sroa.06.0103.i.i, 48
  %i.jp = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.jq = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jo, i16 noundef %i.iz, i1 noundef zeroext %i.jp)
  %i.jr = zext i1 %i.jq to i8
  %i.js = or i8 %.sroa.014.2.2.i.i, %i.jr
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.preheader96.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader96.3.i.i ], [ %i.js, %bb.bd ] ; 2 uses
  %i.jt = add i64 %.sroa.06.0103.i.i, 64          ; 3 uses
  %i.ju = add i64 %i.jt, %i.hx
  %i.jv = icmp uge i64 %i.ju, %i.o
  %i.jw = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.jv, i1 true, i1 %i.jw
  br i1 %or.cond.i.i, label %.preheader.i8.i, label %.lr.ph.i10.i

bb.bf:                                            ; preds = %.lr.ph.i10.i
  %i.jx = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i.i, i16 noundef %i.ih, i1 noundef zeroext false)
  %i.jy = zext i1 %i.jx to i8
  br label %.preheader96.1.i.i

._crit_edge.i9.i:                                 ; preds = %bb.bg, %.preheader.i8.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i8.i ], [ %.sroa.014.4.i.i, %bb.bg ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.ib, %.preheader.i8.i ], [ %i.ks, %bb.bg ]
  %i.jz = sub nuw i64 %i.o, %i.gv
  %i.ka = add i64 %i.jz, -16                      ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ka ; 2 uses
  %.sroa.0.0.copyload.i58.i.i = load <16 x i8>, ptr %i.kb, align 1, !alias.scope !12251, !noalias !12269
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i59.i.i = load <16 x i8>, ptr %i.kc, align 1, !alias.scope !12251, !noalias !12269
  %i.kd = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i, %i.hq
  %i.ke = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i, %i.hs
  %i.kf = and <16 x i1> %i.kd, %i.ke
  %i.kg = bitcast <16 x i1> %i.kf to i16          ; 2 uses
  %i.kh = icmp eq i16 %i.kg, 0
  br i1 %i.kh, label %bb.bi, label %bb.bj

.lr.ph107.i.i:                                    ; preds = %.preheader.i8.i, %bb.bg
  %.sroa.06.1106.i.i = phi i64 [ %i.kp, %bb.bg ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i8.i ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.06.1106.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i = load <16 x i8>, ptr %i.ki, align 1, !alias.scope !12251, !noalias !12272
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i61.i.i = load <16 x i8>, ptr %i.kj, align 1, !alias.scope !12251, !noalias !12272
  %i.kk = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i, %i.hq
  %i.kl = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i, %i.hs
  %i.km = and <16 x i1> %i.kk, %i.kl
  %i.kn = bitcast <16 x i1> %i.km to i16          ; 2 uses
  %i.ko = icmp eq i16 %i.kn, 0
  br i1 %i.ko, label %bb.bg, label %bb.bh
end_hunk_1
