Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.02?download=true
inline.NumInlined: 1218
inline.NumDeleted: 634
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide:bb.a
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1177 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCskEUeM34gmJU_6ty_ide.exit.i.us
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.030.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.029.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.030.i, align 1, !alias.scope !1175, !noalias !1176
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.029.i, align 1, !alias.scope !1176, !noalias !1175
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
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !1175, !noalias !1176
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !1176, !noalias !1175
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
define internal fastcc noundef range(i8 -1, 25) i8 @_RNCNvNvNtCskEUeM34gmJU_6ty_ide10completion25completion_kind_from_type3imps0_0B7_(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !28, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @_RNvMst_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasType10value_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !13, !noundef !4
  %i.j = call fastcc noundef i8 @_RNvNvNtCskEUeM34gmJU_6ty_ide10completion25completion_kind_from_type3imp(ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.e, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define { ptr, i64 } @_RNvMs2_NtCskEUeM34gmJU_6ty_ide10completionNtB5_10Completion5label(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 119
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !4 ; 3 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp ugt i8 %i.b, -41
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %i.b, 64
  %i.f = tail call i8 @llvm.umin.i8(i8 %i.e, i8 24)
  %.sroa.0.0.i.i = zext nneg i8 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !1184, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1184, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.i, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 167
  %i.k = load i8, ptr %i.j, align 1, !range !7, !noundef !4 ; 2 uses
  %.not16 = icmp eq i8 %i.k, -1
  br i1 %.not16, label %bb.i, label %bb.f

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 167
  %i.m = load i8, ptr %i.l, align 1, !range !7, !noundef !4 ; 2 uses
  %.not1638 = icmp eq i8 %i.m, -1
  br i1 %.not1638, label %.thread45, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.n = phi i8 [ %i.m, %.thread ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.01.043 = phi ptr [ null, %.thread ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.7.040 = phi i64 [ undef, %.thread ], [ %.sroa.01.0.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp ugt i8 %i.n, -41
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add i8 %i.n, 64
  %i.r = tail call i8 @llvm.umin.i8(i8 %i.q, i8 24)
  %.sroa.0.0.i.i20 = zext nneg i8 %i.r to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit23

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.o, align 8, !alias.scope !1185, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1185, !noundef !4
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit23

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit23: ; preds = %bb.g, %bb.h
  %.sroa.01.0.i21 = phi i64 [ %i.u, %bb.h ], [ %.sroa.0.0.i.i20, %bb.g ]
  %.sroa.0.0.i22 = phi ptr [ %i.s, %bb.h ], [ %i.o, %bb.g ]
  %.not18 = icmp eq ptr %.sroa.01.043, null       ; 2 uses
  %spec.select = select i1 %.not18, ptr %.sroa.0.0.i22, ptr %.sroa.01.043
  %spec.select54 = select i1 %.not18, i64 %.sroa.01.0.i21, i64 %.sroa.7.040
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit31

bb.i:                                             ; preds = %bb.e
  %.not17 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not17, label %.thread45, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit31

.thread45:                                        ; preds = %.thread, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 95
  %i.x = load i8, ptr %i.w, align 1, !range !9, !alias.scope !1186, !noundef !4 ; 2 uses
  %i.y = icmp ugt i8 %i.x, -41
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread45
  %i.z = add i8 %i.x, 64
  %i.aa = tail call i8 @llvm.umin.i8(i8 %i.z, i8 24)
  %.sroa.0.0.i.i28 = zext nneg i8 %i.aa to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit31

bb.k:                                             ; preds = %.thread45
  %i.ab = load ptr, ptr %i.v, align 8, !alias.scope !1186, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1186, !noundef !4
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit31

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit31: ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit23, %bb.i, %bb.k, %bb.j
  %.sroa.0.0.i30.sink = phi ptr [ %i.v, %bb.j ], [ %i.ab, %bb.k ], [ %spec.select, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit23 ], [ %.sroa.0.0.i, %bb.i ] ; 2 uses
  %.sroa.7.1.pn = phi i64 [ %.sroa.0.0.i.i28, %bb.j ], [ %i.ad, %bb.k ], [ %spec.select54, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit23 ], [ %.sroa.01.0.i, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i30.sink) ]
  %.pn = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i30.sink, 0
  %.merged = insertvalue { ptr, i64 } %.pn, i64 %.sroa.7.1.pn, 1
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCskEUeM34gmJU_6ty_ide10completionNtB5_17CompletionBuilder24from_semantic_completion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %2, ptr noundef nonnull align 4 %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.7 = alloca [36 x i8], align 4            ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %4, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.0.0.copyload, ptr %i.b, align 4
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i64 12, i1 false)
  invoke void @_RNvMNtCskEUeM34gmJU_6ty_ide4gotoNtB2_11Definitions7from_ty(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %i.d, align 8, !range !11, !noundef !4
  %.not16 = icmp eq i64 %i.e, -1
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvMNtCskEUeM34gmJU_6ty_ide4gotoNtB2_11Definitions9docstring(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.041.0.copyload.pre = load i64, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.041.0.copyload = phi i64 [ %.sroa.041.0.copyload.pre, %bb.f ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.7.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.7.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !29, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 41
  %i.j = load i8, ptr %i.i, align 1, !range !29, !noundef !4
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.442.0..sroa_idx, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !1197, !noalias !1198
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.041.0.copyload, ptr %.sroa.230.0..sroa_idx, align 8, !alias.scope !1197, !noalias !1198
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.0.0.copyload, ptr %.sroa.431.0..sroa_idx, align 8, !alias.scope !1197, !noalias !1198
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.7, i64 36, i1 false)
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 119
  store i8 -1, ptr %.sroa.633.0..sroa_idx, align 1, !alias.scope !1197, !noalias !1198
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 143
  store i8 -1, ptr %.sroa.735.0..sroa_idx, align 1, !alias.scope !1197, !noalias !1198
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !1197, !noalias !1198
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.h, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1197, !noalias !1198
  %.sroa.11.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 0, ptr %.sroa.11.0..sroa_idx36, align 1, !alias.scope !1197, !noalias !1198
  %.sroa.12.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.j, ptr %.sroa.12.0..sroa_idx37, align 2, !alias.scope !1197, !noalias !1198
  %.sroa.14.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 0, ptr %.sroa.14.0..sroa_idx38, align 1, !alias.scope !1197, !noalias !1198
  %.sroa.15.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 -1, ptr %.sroa.15.0..sroa_idx39, align 4, !alias.scope !1197, !noalias !1198
  %.sroa.16.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 -1, ptr %.sroa.16.0..sroa_idx40, align 1, !alias.scope !1197, !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.e, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 39
  %i.n = load i8, ptr %i.m, align 1, !range !9, !alias.scope !1199, !noundef !4
  %i.o = icmp eq i8 %i.n, -40
  br i1 %i.o, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECskEUeM34gmJU_6ty_ide.exit, !prof !6

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1199, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1199, !noundef !4
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.q, i64 noundef %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsg7m2K3K1Fzf_11compact_str13CompactStringECskEUeM34gmJU_6ty_ide.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor18range_end_position(ptr nofree readonly captures(none) %.24.val, i32 noundef %0, i32 noundef %1, i64 noundef range(i64 0, 94) %2, ptr noundef %3, i32 %.0.val, i32 %.4.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp ule i32 %0, %.0.val
  %i.d = icmp ule i32 %.4.val, %1
  %or.cond = and i1 %i.c, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %.24.val, i64 24 ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8, !noalias !1282
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.f, align 8, !noalias !1282
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.g = load ptr, ptr %i.e, align 8, !noalias !1282, !nonnull !4, !noundef !4
  %i.h = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !1282
  %i.i = extractvalue { i32, i32 } %i.h, 1        ; 2 uses
  %.not.i = icmp ugt i32 %1, %i.i
  br i1 %.not.i, label %bb.c, label %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #24, !noalias !1282
  unreachable

_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, i32 noundef %1, i32 noundef %i.i), !noalias !1282 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.m
  %i.o = call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens6before(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, i32 noundef %0), !noalias !1282 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 3 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !noalias !1283
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.s, align 8, !noalias !1283
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.t = load ptr, ptr %i.e, align 8, !noalias !1283, !nonnull !4, !noundef !4
  %i.u = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !1283
  %i.v = extractvalue { i32, i32 } %i.u, 1        ; 2 uses
  %.not.i18 = icmp ugt i32 %1, %i.v
  br i1 %.not.i18, label %bb.e, label %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit25, !prof !6

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #24, !noalias !1283
  unreachable

_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit25: ; preds = %bb.d
  %i.w = icmp eq i32 %1, %.4.val
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, i32 noundef %1, i32 noundef %i.v), !noalias !1283 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 4 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %.idx = mul nuw nsw i64 %i.aa, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx ; 2 uses
  %i.ac = call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens6before(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, i32 noundef %0), !noalias !1283 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 4 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %.idx127 = mul nuw nsw i64 %i.ae, 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx127 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.w, label %.preheader47.preheader, label %bb.f

.preheader47.preheader:                           ; preds = %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit25
  %i.ag = icmp eq i64 %i.aa, 0
  br i1 %i.ag, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB36_13ContextCursor19closing_parentheses0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B4x_E4nextB38_.exit.thread, label %.lr.ph

bb.f:                                             ; preds = %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit25, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit
  %.sroa.37.0 = phi ptr [ %i.af, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit25 ], [ %i.r, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit ]
  %.sroa.3416.0 = phi ptr [ %i.ad, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit25 ], [ %i.p, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit ] ; 2 uses
  %.sroa.25.0 = phi ptr [ %i.ab, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit25 ], [ %i.n, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit ] ; 2 uses
  %.sroa.19.0 = phi ptr [ %i.z, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit25 ], [ %i.l, %_RNvMs8_NtCskEUeM34gmJU_6ty_ide10completionNtB5_13ContextCursor19closing_parentheses.exit ]
end_hunk_0
begin_hunk_1_@_RNvNtCskEUeM34gmJU_6ty_ide10completion10completion:bb.a
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.tm, %bb.eu ], [ %i.rm, %bb.du ], [ %i.ts, %bb.fa ], [ %i.tj, %bb.ep ], [ %i.tp, %bb.ex ], [ %i.um, %bb.fr ], [ %i.ud, %bb.fg ], [ %i.uj, %bb.fo ], [ %i.ug, %bb.fl ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24) %i.dq) #26
          to label %.body.i unwind label %bb.hi, !noalias !2207

bb.dv:                                            ; preds = %bb.ee, %bb.dt
  unreachable

bb.dw:                                            ; preds = %bb.ds
  %i.rn = zext i32 %.sroa.0149.0.lcssa.i.i to i64 ; 6 uses
  %i.ro = zext i32 %i.qs to i64                   ; 5 uses
  %i.rp = icmp eq i32 %.sroa.0149.0.lcssa.i.i, 0
  br i1 %i.rp, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.not5.i.i53.i = icmp ugt i64 %.sroa.435.0.i.i, %i.rn
  br i1 %.not5.i.i53.i, label %bb.dz, label %.split.i.i54.i

bb.dy:                                            ; preds = %bb.dz, %.split.i.i54.i, %bb.dw
  %i.rq = icmp eq i32 %i.qs, 0
  br i1 %i.rq, label %bb.ec, label %bb.ea

.split.i.i54.i:                                   ; preds = %bb.dx
  %i.rr = icmp eq i64 %.sroa.435.0.i.i, %i.rn
  br i1 %i.rr, label %bb.dy, label %bb.ee

bb.dz:                                            ; preds = %bb.dx
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i.i, i64 %i.rn
  %i.rt = load i8, ptr %i.rs, align 1, !alias.scope !2208, !noalias !2205, !noundef !4
  %i.ru = icmp sgt i8 %i.rt, -65
  br i1 %i.ru, label %bb.dy, label %bb.ee

bb.ea:                                            ; preds = %bb.dy
  %.not6.i.i57.i = icmp ugt i64 %.sroa.435.0.i.i, %i.ro
  br i1 %.not6.i.i57.i, label %bb.eb, label %.split7.i.i58.i

.split7.i.i58.i:                                  ; preds = %bb.ea
  %i.rv = icmp eq i64 %.sroa.435.0.i.i, %i.ro
  br i1 %i.rv, label %bb.ec, label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i.i, i64 %i.ro
  %i.rx = load i8, ptr %i.rw, align 1, !alias.scope !2208, !noalias !2205, !noundef !4
  %i.ry = icmp sgt i8 %i.rx, -65
  br i1 %i.ry, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb, %.split7.i.i58.i, %bb.dy
  %i.rz = sub nuw nsw i64 %i.ro, %i.rn            ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i.i, i64 %i.rn
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq, i64 noundef %i.rz)
          to label %.noexc.i59.i unwind label %bb.du, !noalias !2205

.noexc.i59.i:                                     ; preds = %bb.ec
  %i.sb = load i64, ptr %.sroa.598.0..sroa_idx.i.i, align 8, !alias.scope !2209, !noalias !2206, !noundef !4 ; 3 uses
  %i.sc = icmp sgt i64 %i.sb, -1
  call void @llvm.assume(i1 %i.sc)
  %.not.i193.i.i = icmp eq i32 %i.qs, %.sroa.0149.0.lcssa.i.i
  br i1 %.not.i193.i.i, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %.noexc.i59.i
  %i.sd = load ptr, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !alias.scope !2209, !noalias !2206, !nonnull !4, !noundef !4
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.se, ptr nonnull readonly align 1 %i.sa, i64 %i.rz, i1 false), !noalias !2205
  %.pre.i.i.i = load i64, ptr %.sroa.598.0..sroa_idx.i.i, align 8, !alias.scope !2209, !noalias !2206
  br label %bb.ef

bb.ee:                                            ; preds = %bb.eb, %.split7.i.i58.i, %bb.dz, %.split.i.i54.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.033.0.i.i, i64 noundef %.sroa.435.0.i.i, i64 noundef %i.rn, i64 noundef %i.ro, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #24
          to label %bb.dv unwind label %bb.du, !noalias !2205

bb.ef:                                            ; preds = %bb.ed, %.noexc.i59.i
  %i.sf = phi i64 [ %.pre.i.i.i, %bb.ed ], [ %i.sb, %.noexc.i59.i ]
  %i.sg = add i64 %i.sf, %i.rz
  store i64 %i.sg, ptr %.sroa.598.0..sroa_idx.i.i, align 8, !alias.scope !2209, !noalias !2206
  br i1 %.not164.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sh = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.si = load i64, ptr %i.sh, align 8, !alias.scope !2203, !noalias !2204, !noundef !4 ; 2 uses
  %i.sj = icmp eq i64 %i.si, 6
  br i1 %i.sj, label %bb.ei, label %bb.ej

bb.eh:                                            ; preds = %bb.ef
  %i.sk = trunc nuw i8 %.sroa.04.0.ph332.i.i to i1 ; 2 uses
  %.not168.i.i = icmp eq ptr %.sroa.015.0.ph334.i.i, null
  %or.cond183.i.i = select i1 %i.sk, i1 %.not168.i.i, i1 false
  br i1 %or.cond183.i.i, label %bb.gg, label %.thread301.i.i

.thread301.i.i:                                   ; preds = %bb.el, %bb.ek, %bb.ei, %bb.eh
  %.pre-phi.i.i = phi i1 [ %i.sv, %bb.ei ], [ %.old.i.i, %bb.ek ], [ %i.sk, %bb.eh ], [ %.old.i.i, %bb.el ]
  %.not171.i.i = icmp ne ptr %.sroa.015.0.ph334.i.i, null ; 3 uses
  %or.cond186.not.i.i = select i1 %.pre-phi.i.i, i1 %.not171.i.i, i1 false
  br i1 %or.cond186.not.i.i, label %bb.gg, label %bb.em

bb.ei:                                            ; preds = %bb.eg
  %i.sl = load i32, ptr %i.qc, align 1
  %i.sm = xor i32 %i.sl, 1869639017
  %i.sn = getelementptr i8, ptr %i.qc, i64 4
  %i.so = load i16, ptr %i.sn, align 1
  %i.sp = zext i16 %i.so to i32
  %i.sq = xor i32 %i.sp, 29810
  %i.sr = or i32 %i.sm, %i.sq
  %i.ss = icmp ne i32 %i.sr, 0
  %i.st = zext i1 %i.ss to i32
  %i.su = icmp eq i32 %i.st, 0
  %i.sv = trunc nuw i8 %.sroa.04.0.ph332.i.i to i1 ; 2 uses
  %.not169.i.i = icmp eq ptr %.sroa.015.0.ph334.i.i, null
  %or.cond184.i.i = select i1 %i.sv, i1 %.not169.i.i, i1 false
  %or.cond187.i.i = select i1 %i.su, i1 true, i1 %or.cond184.i.i
  br i1 %or.cond187.i.i, label %bb.gg, label %.thread301.i.i

bb.ej:                                            ; preds = %bb.eg
  %.old.i.i = trunc nuw i8 %.sroa.04.0.ph332.i.i to i1 ; 3 uses
  %.not169.old.i.i = icmp eq ptr %.sroa.015.0.ph334.i.i, null
  %or.cond184.old.i.i = select i1 %.old.i.i, i1 %.not169.old.i.i, i1 false
  br i1 %or.cond184.old.i.i, label %bb.gg, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.sw = icmp eq i64 %i.si, 2
  br i1 %i.sw, label %bb.el, label %.thread301.i.i

bb.el:                                            ; preds = %bb.ek
  %i.sx = load i16, ptr %i.qc, align 1
  %i.sy = icmp ne i16 %i.sx, 29537
  %i.sz = zext i1 %i.sy to i32
  %i.ta = icmp eq i32 %i.sz, 0
  br i1 %i.ta, label %bb.gg, label %.thread301.i.i

bb.em:                                            ; preds = %.thread301.i.i
  %.not172.i.i = icmp eq ptr %.sroa.021.0.ph336.i.i, null
  br i1 %.not172.i.i, label %bb.fd, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tb = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.tc = load ptr, ptr %i.tb, align 8, !alias.scope !2203, !noalias !2204, !nonnull !4, !align !13, !noundef !4
  %i.td = getelementptr i8, ptr %i.tc, i64 24
  %.val189.i.i = load ptr, ptr %i.td, align 8, !noalias !2205, !nonnull !4, !noundef !4
  %.sroa.021.0.val.i.i = load i32, ptr %.sroa.021.0.ph336.i.i, align 4, !noalias !2205, !noundef !4
  %i.te = getelementptr i8, ptr %.sroa.021.0.ph336.i.i, i64 4
  %.sroa.021.0.val190.i.i = load i32, ptr %i.te, align 4, !noalias !2205, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !2206
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !2206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !2206
  %i.tf = getelementptr inbounds nuw i8, ptr %.val189.i.i, i64 88
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.df, i64 noundef 0, ptr noundef nonnull %i.tf, i32 noundef %.sroa.021.0.val.i.i, i32 noundef %.sroa.021.0.val190.i.i)
          to label %.noexc195.i.i unwind label %bb.du, !noalias !2205

.noexc195.i.i:                                    ; preds = %bb.en
  invoke void @_RINvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB3_12CoveringNode10find_firstNCNvNtCskEUeM34gmJU_6ty_ide10completion24find_ast_for_from_import0EB1l_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.df)
          to label %.noexc196.i.i unwind label %bb.du, !noalias !2205

.noexc196.i.i:                                    ; preds = %.noexc195.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !2206
  %i.tg = load i64, ptr %i.dg, align 8, !range !14, !noalias !2206, !noundef !4
  %i.th = trunc nuw i64 %i.tg to i1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  br i1 %i.th, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %.noexc196.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ti)
          to label %.thread4.i.i.i unwind label %bb.ep, !noalias !2205

bb.ep:                                            ; preds = %bb.eo
  %i.tj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ti)
          to label %.body.i.i unwind label %bb.eq, !noalias !2205

bb.eq:                                            ; preds = %bb.ep
  %i.tk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2205
  unreachable

.thread4.i.i.i:                                   ; preds = %bb.eo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ti)
          to label %.noexc197.i.i unwind label %bb.du, !noalias !2205

.noexc197.i.i:                                    ; preds = %.thread4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !2206
  br label %bb.et

bb.er:                                            ; preds = %.noexc196.i.i
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.ti, align 8, !noalias !2206 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !2206
  %.not.i194.i.i = icmp eq i64 %.sroa.06.0.copyload.i.i.i, -1
  br i1 %.not.i194.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.dh, align 8, !noalias !2206
  %i.tl = invoke { i64, ptr } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB2_12CoveringNode4node(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh)
          to label %bb.ev unwind label %bb.eu, !noalias !2205 ; 2 uses

bb.et:                                            ; preds = %bb.er, %.noexc197.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %.thread307.i.i

bb.eu:                                            ; preds = %bb.es
  %i.tm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24) %i.dh) #26
          to label %.body.i.i unwind label %bb.fc, !noalias !2205

bb.ev:                                            ; preds = %bb.es
  %i.tn = extractvalue { i64, ptr } %i.tl, 0
  %i.to = icmp eq i64 %i.tn, 19
  br i1 %i.to, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit.i.i.i unwind label %bb.ex, !noalias !2205

bb.ex:                                            ; preds = %bb.ew
  %i.tp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %.body.i.i unwind label %bb.ey, !noalias !2205

bb.ey:                                            ; preds = %bb.ex
  %i.tq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2205
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit.i.i.i: ; preds = %bb.ew
  %i.tr = extractvalue { i64, ptr } %i.tl, 1      ; 4 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %bb.gk unwind label %bb.du, !noalias !2205

bb.ez:                                            ; preds = %bb.ev
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit16.i.i.i unwind label %bb.fa, !noalias !2205

bb.fa:                                            ; preds = %bb.ez
  %i.ts = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %.body.i.i unwind label %bb.fb, !noalias !2205

bb.fb:                                            ; preds = %bb.fa
  %i.tt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2205
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit16.i.i.i: ; preds = %bb.ez
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %.thread307.i.i unwind label %bb.du, !noalias !2205

bb.fc:                                            ; preds = %bb.eu
  %i.tu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2205
  unreachable

bb.fd:                                            ; preds = %bb.em
  br i1 %.not171.i.i, label %bb.fe, label %bb.fu

bb.fe:                                            ; preds = %bb.fd
  %i.tv = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.tw = load ptr, ptr %i.tv, align 8, !alias.scope !2203, !noalias !2204, !nonnull !4, !align !13, !noundef !4
  %i.tx = getelementptr i8, ptr %i.tw, i64 24
  %.val191.i.i = load ptr, ptr %i.tx, align 8, !noalias !2205, !nonnull !4, !noundef !4
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.0.ph334.i.i, align 4, !noalias !2205, !noundef !4
  %i.ty = getelementptr i8, ptr %.sroa.015.0.ph334.i.i, i64 4
  %.sroa.015.0.val192.i.i = load i32, ptr %i.ty, align 4, !noalias !2205, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !2206
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i200.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !2206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !2206
  %i.tz = getelementptr inbounds nuw i8, ptr %.val191.i.i, i64 88
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dc, i64 noundef 0, ptr noundef nonnull %i.tz, i32 noundef %.sroa.015.0.val.i.i, i32 noundef %.sroa.015.0.val192.i.i)
          to label %.noexc211.i.i unwind label %bb.du, !noalias !2205

.noexc211.i.i:                                    ; preds = %bb.fe
  invoke void @_RINvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB3_12CoveringNode10find_firstNCNvNtCskEUeM34gmJU_6ty_ide10completion19find_ast_for_import0EB1l_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dc)
          to label %.noexc212.i.i unwind label %bb.du, !noalias !2205

.noexc212.i.i:                                    ; preds = %.noexc211.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !2206
  %i.ua = load i64, ptr %i.dd, align 8, !range !14, !noalias !2206, !noundef !4
  %i.ub = trunc nuw i64 %i.ua to i1
  %i.uc = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  br i1 %i.ub, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %.noexc212.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.uc)
          to label %.thread4.i210.i.i unwind label %bb.fg, !noalias !2205

bb.fg:                                            ; preds = %bb.ff
  %i.ud = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.uc)
          to label %.body.i.i unwind label %bb.fh, !noalias !2205

bb.fh:                                            ; preds = %bb.fg
  %i.ue = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2205
  unreachable

.thread4.i210.i.i:                                ; preds = %bb.ff
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.uc)
          to label %.noexc215.i.i unwind label %bb.du, !noalias !2205

.noexc215.i.i:                                    ; preds = %.thread4.i210.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !2206
  br label %bb.fk

bb.fi:                                            ; preds = %.noexc212.i.i
  %.sroa.06.0.copyload.i201.i.i = load i64, ptr %i.uc, align 8, !noalias !2206 ; 2 uses
  %.sroa.4.0..sroa_idx.i202.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i200.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i202.i.i, i64 16, i1 false), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !2206
  %.not.i203.i.i = icmp eq i64 %.sroa.06.0.copyload.i201.i.i, -1
  br i1 %.not.i203.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.sroa.412.0..sroa_idx.i204.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx.i204.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i200.i.i, i64 16, i1 false), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i200.i.i)
  store i64 %.sroa.06.0.copyload.i201.i.i, ptr %i.de, align 8, !noalias !2206
  %i.uf = invoke { i64, ptr } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB2_12CoveringNode4node(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de)
          to label %bb.fm unwind label %bb.fl, !noalias !2205 ; 2 uses

bb.fk:                                            ; preds = %bb.fi, %.noexc215.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i200.i.i)
  br label %.thread303.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.ug = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24) %i.de) #26
          to label %.body.i.i unwind label %bb.ft, !noalias !2205

bb.fm:                                            ; preds = %bb.fj
  %i.uh = extractvalue { i64, ptr } %i.uf, 0
  %i.ui = icmp eq i64 %i.uh, 18
  br i1 %i.ui, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit.i209.i.i unwind label %bb.fo, !noalias !2205

bb.fo:                                            ; preds = %bb.fn
  %i.uj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body.i.i unwind label %bb.fp, !noalias !2205

bb.fp:                                            ; preds = %bb.fo
  %i.uk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2205
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit.i209.i.i: ; preds = %bb.fn
  %i.ul = extractvalue { i64, ptr } %i.uf, 1      ; 2 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %bb.fx unwind label %bb.du, !noalias !2205

bb.fq:                                            ; preds = %bb.fm
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit16.i207.i.i unwind label %bb.fr, !noalias !2205

bb.fr:                                            ; preds = %bb.fq
  %i.um = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body.i.i unwind label %bb.fs, !noalias !2205

bb.fs:                                            ; preds = %bb.fr
  %i.un = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2205
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit16.i207.i.i: ; preds = %bb.fq
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.thread303.i.i unwind label %bb.du, !noalias !2205

bb.ft:                                            ; preds = %bb.fl
  %i.uo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2205
  unreachable

bb.fu:                                            ; preds = %bb.gm, %bb.ga, %bb.fd
  %.sroa.30.0.i = phi ptr [ %i.ut, %bb.ga ], [ %i.tr, %bb.gm ], [ undef, %bb.fd ]
  %.sroa.29.0.i = phi i8 [ %.sroa.049.i.sroa.5.0.i, %bb.ga ], [ %.sroa.669.sroa.3.0.i.i, %bb.gm ], [ undef, %bb.fd ]
  %.sroa.26.0.i = phi i64 [ %.sroa.049.i.sroa.0.0.i, %bb.ga ], [ %.sroa.669.sroa.0.i.sroa.5.0.i, %bb.gm ], [ undef, %bb.fd ]
  %.sroa.24.0.i = phi ptr [ %i.ul, %bb.ga ], [ %.sroa.669.sroa.0.i.sroa.3.0.i, %bb.gm ], [ undef, %bb.fd ]
  %.sroa.19.1.i = phi i8 [ undef, %bb.ga ], [ %.sroa.568.0.i.i, %bb.gm ], [ undef, %bb.fd ]
  %.sroa.0.1.i = phi i8 [ 4, %bb.ga ], [ %.sroa.067.0.i.i, %bb.gm ], [ -1, %bb.fd ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i unwind label %bb.fv, !noalias !2207

bb.fv:                                            ; preds = %bb.fu
  %i.up = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.body.i unwind label %bb.fw, !noalias !2207

bb.fw:                                            ; preds = %bb.fv
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2207
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i: ; preds = %bb.fu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.noexc63.i unwind label %.loopexit.split-lp.i, !noalias !2176

.thread303.i.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit16.i207.i.i, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !2206
  br label %bb.gg

bb.fx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit.i209.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !2206
  %.not174.i.i = icmp eq ptr %i.ul, null
  br i1 %.not174.i.i, label %bb.gg, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %8 = trunc nuw i8 %.sroa.02.0.ph330.i.i to i1
  br i1 %8, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !2206
  %i.ur = load ptr, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.us = load i64, ptr %.sroa.598.0..sroa_idx.i.i, align 8, !noalias !2206, !noundef !4
  invoke fastcc void @_RINvMNtCs4NRVxsYgnAr_4core3stre11rsplit_oncecECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.dp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ur, i64 noundef %i.us)
          to label %bb.gb unwind label %bb.du

bb.ga:                                            ; preds = %bb.gj, %bb.fy
  %.sroa.049.i.sroa.0.0.i = phi i64 [ %.sroa.049.i.sroa.0.0.copyload.i, %bb.gj ], [ undef, %bb.fy ]
  %.sroa.049.i.sroa.5.0.i = phi i8 [ %.sroa.049.i.sroa.5.0.copyload.i, %bb.gj ], [ undef, %bb.fy ]
  %.sroa.30.39.insert.insert.i = phi i64 [ %.sroa.049.i.sroa.6.0.copyload.i, %bb.gj ], [ -72057594037927936, %bb.fy ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.049.i.sroa.4.i, i64 7, i1 false), !noalias !2210
  %i.ut = inttoptr i64 %.sroa.30.39.insert.insert.i to ptr
  br label %bb.fu

bb.gb:                                            ; preds = %bb.fz
  %i.uu = load ptr, ptr %i.dp, align 8, !noalias !2206, !noundef !4 ; 3 uses
  %.not175.i.i = icmp eq ptr %i.uu, null
  br i1 %.not175.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.sroa.4110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.4110.0.copyload.i.i = load i64, ptr %.sroa.4110.0..sroa_idx.i.i, align 8, !noalias !2206 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !2206
  %i.uv = invoke noundef zeroext i1 @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.uu, i64 noundef %.sroa.4110.0.copyload.i.i)
          to label %bb.ge unwind label %bb.du, !noalias !2205

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !2206
  br label %bb.gg

bb.ge:                                            ; preds = %bb.gc
  br i1 %i.uv, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !2206
  invoke fastcc void @_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.uu, i64 noundef %.sroa.4110.0.copyload.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
          to label %bb.gj unwind label %bb.du, !noalias !2205

bb.gg:                                            ; preds = %bb.hf, %bb.he, %bb.hb, %bb.gy, %bb.gk, %.thread307.i.i, %bb.ge, %bb.gd, %bb.fx, %.thread303.i.i, %bb.el, %bb.ej, %bb.ei, %.thread301.i.i, %bb.eh
  %.sroa.19.0.i = phi i8 [ undef, %bb.hb ], [ 1, %bb.eh ], [ 0, %.thread301.i.i ], [ undef, %bb.gd ], [ undef, %.thread303.i.i ], [ undef, %bb.ge ], [ undef, %bb.he ], [ undef, %.thread307.i.i ], [ undef, %bb.gy ], [ 1, %bb.ej ], [ 1, %bb.ei ], [ 0, %bb.el ], [ undef, %bb.fx ], [ undef, %bb.gk ], [ undef, %bb.hf ]
  %.sroa.0.097.i = phi i8 [ -1, %bb.hb ], [ 5, %bb.eh ], [ 5, %.thread301.i.i ], [ -1, %bb.gd ], [ -1, %.thread303.i.i ], [ -1, %bb.ge ], [ -1, %bb.he ], [ -1, %.thread307.i.i ], [ -1, %bb.gy ], [ 5, %bb.ej ], [ 5, %bb.ei ], [ 5, %bb.el ], [ -1, %bb.fx ], [ -1, %bb.gk ], [ -1, %bb.hf ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i unwind label %bb.gh, !noalias !2207

bb.gh:                                            ; preds = %bb.gg
  %i.uw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.body.i unwind label %bb.gi, !noalias !2207

bb.gi:                                            ; preds = %bb.gh
  %i.ux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2207
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i: ; preds = %bb.gg
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.noexc63.i unwind label %.loopexit.split-lp.i, !noalias !2176

bb.gj:                                            ; preds = %bb.gf
  %.sroa.049.i.sroa.0.0.copyload.i = load i64, ptr %i.dj, align 8, !noalias !2206
  %.sroa.049.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.049.i.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.049.i.sroa.4.0..sroa_idx.i, i64 7, i1 false), !noalias !2206
  %.sroa.049.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %.sroa.049.i.sroa.5.0.copyload.i = load i8, ptr %.sroa.049.i.sroa.5.0..sroa_idx.i, align 1, !noalias !2206
  %.sroa.049.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.049.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.049.i.sroa.6.0..sroa_idx.i, align 8, !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !2206
  br label %bb.ga

.thread307.i.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit16.i.i.i, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !2206
  br label %bb.gg

bb.gk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9find_node12CoveringNodeECskEUeM34gmJU_6ty_ide.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !2206
  %.not176.i.i = icmp eq ptr %i.tr, null
  br i1 %.not176.i.i, label %bb.gg, label %9

9:                                                ; preds = %bb.gk
  br i1 %.not171.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %9
  %i.uy = trunc nuw i8 %.sroa.02.0.ph330.i.i to i1
  br i1 %i.uy, label %bb.gn, label %bb.gm

.sink.split.i.i:                                  ; preds = %bb.hh, %bb.ha, %bb.gx
  %.sroa.0129.sink.i.sroa.phi.i = phi ptr [ %.sroa.0129.sink.i.sroa.gep.i, %bb.hh ], [ %.sroa.0129.sink.i.sroa.gep171.i, %bb.ha ], [ %.sroa.0129.sink.i.sroa.gep171.i, %bb.gx ]
  %.sroa.0129.sink.i.sroa.phi173.i = phi ptr [ %.sroa.0129.sink.i.sroa.gep174.i, %bb.hh ], [ %.sroa.0129.sink.i.sroa.gep175.i, %bb.ha ], [ %.sroa.0129.sink.i.sroa.gep175.i, %bb.gx ]
  %.sroa.0129.sink.i.i = phi ptr [ %.sroa.0133.i.i, %bb.hh ], [ %.sroa.0129.i.i, %bb.ha ], [ %.sroa.0129.i.i, %bb.gx ]
  %.sroa.568.0.ph.i.i = phi i8 [ undef, %bb.hh ], [ 1, %bb.ha ], [ %i.vm, %bb.gx ]
  %.sroa.067.0.ph.i.i = phi i8 [ 1, %bb.hh ], [ 2, %bb.ha ], [ 2, %bb.gx ]
  %.sroa.669.sroa.3.0.ph.i.i = phi i8 [ %.sroa.4142.0.copyload.i.i, %bb.hh ], [ %i.vw, %bb.ha ], [ %i.vt, %bb.gx ]
  %.sroa.669.sroa.0.i.sroa.3.6.copyload.i = load ptr, ptr %.sroa.0129.sink.i.i, align 8, !noalias !2206
  %.sroa.669.sroa.0.i.sroa.5.6.copyload.i = load i64, ptr %.sroa.0129.sink.i.sroa.phi.i, align 8, !noalias !2206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %.sroa.669.sroa.0.i.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.0129.sink.i.sroa.phi173.i, i64 7, i1 false), !noalias !2206
  br label %bb.gm

bb.gm:                                            ; preds = %.sink.split.i.i, %bb.gl, %9
  %.sroa.669.sroa.0.i.sroa.3.0.i = phi ptr [ undef, %9 ], [ %.sroa.669.sroa.0.i.sroa.3.6.copyload.i, %.sink.split.i.i ], [ undef, %bb.gl ]
  %.sroa.669.sroa.0.i.sroa.5.0.i = phi i64 [ undef, %9 ], [ %.sroa.669.sroa.0.i.sroa.5.6.copyload.i, %.sink.split.i.i ], [ undef, %bb.gl ]
  %.sroa.568.0.i.i = phi i8 [ undef, %9 ], [ %.sroa.568.0.ph.i.i, %.sink.split.i.i ], [ undef, %bb.gl ]
  %.sroa.067.0.i.i = phi i8 [ 3, %9 ], [ %.sroa.067.0.ph.i.i, %.sink.split.i.i ], [ 0, %bb.gl ]
  %.sroa.669.sroa.3.0.i.i = phi i8 [ undef, %9 ], [ %.sroa.669.sroa.3.0.ph.i.i, %.sink.split.i.i ], [ undef, %bb.gl ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.28.i, ptr noundef nonnull align 2 dereferenceable(7) %.sroa.669.sroa.0.i.sroa.6.i, i64 7, i1 false), !noalias !2210
  br label %bb.fu

bb.gn:                                            ; preds = %bb.gl
  %i.uz = load ptr, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.va = load i64, ptr %.sroa.598.0..sroa_idx.i.i, align 8, !noalias !2206, !noundef !4
  %i.vb = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.uz, i64 noundef %i.va, i32 noundef 46)
          to label %bb.go unwind label %bb.du, !noalias !2205 ; 2 uses

bb.go:                                            ; preds = %bb.gn
  %i.vc = extractvalue { ptr, i64 } %i.vb, 0      ; 3 uses
  %i.vd = extractvalue { ptr, i64 } %i.vb, 1      ; 5 uses
  %i.ve = load i64, ptr %.sroa.598.0..sroa_idx.i.i, align 8, !noalias !2206, !noundef !4 ; 2 uses
  %i.vf = icmp eq i64 %i.ve, %i.vd
  %.pre.i.i = load ptr, ptr %.sroa.497.0..sroa_idx.i.i, align 8, !noalias !2206 ; 4 uses
  br i1 %i.vf, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %bcmp178.i.i = call i32 @bcmp(ptr nonnull %.pre.i.i, ptr %i.vc, i64 %i.vd), !noalias !2205
  %i.vg = icmp eq i32 %bcmp178.i.i, 0
  br i1 %i.vg, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !2206
  %i.vh = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.ve
  store ptr %.pre.i.i, ptr %i.dn, align 8, !noalias !2206
  %i.vi = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.vh, ptr %i.vi, align 8, !noalias !2206
  %i.vj = call fastcc noundef zeroext i1 @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3all5checkcNCNvMse_NtCskEUeM34gmJU_6ty_ide10completionNtB1Z_15ImportStatement6detect0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB21_(ptr noalias noundef align 8 dereferenceable(16) %i.dn), !noalias !2205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !2206
  br i1 %i.vj, label %bb.gs, label %bb.gt

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !2206
  invoke fastcc void @_RINvMNtCs4NRVxsYgnAr_4core3stre11rsplit_oncecECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.do, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.pre.i.i, i64 noundef %i.vd)
          to label %bb.hc unwind label %bb.du

bb.gs:                                            ; preds = %bb.gq
  %i.vk = invoke fastcc noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vc, i64 noundef %i.vd)
          to label %bb.gu unwind label %bb.du

bb.gt:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !2206
  invoke void @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName21from_import_statement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.dw, ptr noundef nonnull align 8 %i.tr)
          to label %bb.gz unwind label %bb.du, !noalias !2211

bb.gu:                                            ; preds = %bb.gs
  %i.vl = xor i1 %i.vk, true
  %i.vm = zext i1 %i.vl to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !2206
  invoke fastcc void @_RINvMNtCs4NRVxsYgnAr_4core3stre11rsplit_oncecECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.dl, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vc, i64 noundef %i.vd)
          to label %bb.gv unwind label %bb.du

bb.gv:                                            ; preds = %bb.gu
  %i.vn = load ptr, ptr %i.dl, align 8, !noalias !2206, !noundef !4 ; 2 uses
  %.not179.i.i = icmp eq ptr %i.vn, null
  %i.vo = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.vp = load i64, ptr %i.vo, align 8, !noalias !2206
  %.sroa.381.0.i.i = select i1 %.not179.i.i, i64 undef, i64 %i.vp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !2206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !2206
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tr, i64 68
  %i.vr = load i32, ptr %i.vq, align 4, !noalias !2205, !noundef !4
  invoke void @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName21from_identifier_parts(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dk, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.dw, ptr noalias noundef readonly captures(address, read_provenance) %i.vn, i64 %.sroa.381.0.i.i, i32 noundef %i.vr)
          to label %bb.gw unwind label %bb.du, !noalias !2211

bb.gw:                                            ; preds = %bb.gv
  %i.vs = getelementptr inbounds nuw i8, ptr %i.dk, i64 23
  %i.vt = load i8, ptr %i.vs, align 1, !range !7, !noalias !2206, !noundef !4 ; 2 uses
  %i.vu = icmp eq i8 %i.vt, -1
  br i1 %i.vu, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0129.i.i, ptr noundef nonnull align 8 dereferenceable(23) %i.dk, i64 23, i1 false), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !2206
  br label %.sink.split.i.i

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !2206
  br label %bb.gg

bb.gz:                                            ; preds = %bb.gt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.dm, i64 23
  %i.vw = load i8, ptr %i.vv, align 1, !range !7, !noalias !2206, !noundef !4 ; 2 uses
  %i.vx = icmp eq i8 %i.vw, -1
  br i1 %i.vx, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0129.i.i, ptr noundef nonnull align 8 dereferenceable(23) %i.dm, i64 23, i1 false), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !2206
  br label %.sink.split.i.i

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !2206
  br label %bb.gg

bb.hc:                                            ; preds = %bb.gr
  %i.vy = load ptr, ptr %i.do, align 8, !noalias !2206, !noundef !4 ; 3 uses
  %.not182.i.i = icmp eq ptr %i.vy, null
  br i1 %.not182.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %.sroa.4120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.4120.0.copyload.i.i = load i64, ptr %.sroa.4120.0..sroa_idx.i.i, align 8, !noalias !2206 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !2206
  %i.vz = invoke noundef zeroext i1 @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName13is_valid_name(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vy, i64 noundef %.sroa.4120.0.copyload.i.i)
          to label %bb.hf unwind label %bb.du, !noalias !2205

bb.he:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !2206
  br label %bb.gg

bb.hf:                                            ; preds = %bb.hd
  br i1 %i.vz, label %bb.hg, label %bb.gg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !2206
  invoke fastcc void @_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vy, i64 noundef %.sroa.4120.0.copyload.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
          to label %bb.hh unwind label %bb.du, !noalias !2205

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0133.i.i, ptr noundef nonnull align 8 dereferenceable(23) %i.di, i64 23, i1 false), !noalias !2206
  %.sroa.4142.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 23
  %.sroa.4142.0.copyload.i.i = load i8, ptr %.sroa.4142.0..sroa_idx.i.i, align 1, !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !2206
  br label %.sink.split.i.i

bb.hi:                                            ; preds = %.body.i.i
  %i.wa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !2207
  unreachable

.noexc63.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i
  %.sroa.30.1.i = phi ptr [ %.sroa.30.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i ]
  %.sroa.29.1.i = phi i8 [ %.sroa.29.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i ]
  %.sroa.26.1.i = phi i64 [ %.sroa.26.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i ]
  %.sroa.24.1.i = phi ptr [ %.sroa.24.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i ]
  %.sroa.19.2.i = phi i8 [ %.sroa.19.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i ], [ %.sroa.19.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i ]
  %.sroa.0.2.i = phi i8 [ %.sroa.0.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i ], [ %.sroa.0.097.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit219.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669.sroa.0.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0129.i.i), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0133.i.i), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.049.i.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !2161
  %.not33.i = icmp eq i8 %.sroa.0.2.i, -1
  br i1 %.not33.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %.noexc63.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.28.i, i64 7, i1 false), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i)
  br label %bb.io

bb.hk:                                            ; preds = %.noexc63.i
  %.val.pre.i = load ptr, ptr %i.kt, align 8, !noalias !2161
  %.val36.pre.i = load i64, ptr %i.kq, align 8, !noalias !2161 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i)
  %i.wb = icmp eq i64 %.val36.pre.i, 0
  br i1 %i.wb, label %_RINvNtCskEUeM34gmJU_6ty_ide10completion21token_suffix_by_kindsKj1_EB4_.exit36.thread.i.thread.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %.idx912.a = mul i64 %.val36.pre.i, 12          ; 4 uses
  %i.wc = getelementptr i8, ptr %.val.pre.i, i64 %.idx912.a ; 14 uses
  %i.wd = icmp eq i64 %.idx912.a, 0
  br i1 %i.wd, label %_RINvNtCskEUeM34gmJU_6ty_ide10completion21token_suffix_by_kindsKj1_EB4_.exit.i.i, label %.lr.ph876

.lr.ph876:                                        ; preds = %bb.hl
  %i.we = getelementptr inbounds i8, ptr %i.wc, i64 -2
  %i.wf = load i8, ptr %i.we, align 2, !range !30, !alias.scope !2212, !noalias !2213, !noundef !4
  %.not9.i.i.i = icmp eq i8 %i.wf, 36
  br i1 %.not9.i.i.i, label %_RINvNtCskEUeM34gmJU_6ty_ide10completion21token_suffix_by_kindsKj1_EB4_.exit.i.i, label %bb.hm

_RINvNtCskEUeM34gmJU_6ty_ide10completion21token_suffix_by_kindsKj1_EB4_.exit.i.i: ; preds = %.lr.ph876, %bb.hl
  %i.wg = getelementptr i8, ptr %i.wc, i64 -12
  %.not.i69.i = icmp eq ptr %i.wg, null
  br i1 %.not.i69.i, label %.thread361, label %bb.hn

bb.hm:                                            ; preds = %.lr.ph876
  %i.wh = icmp ugt i64 %.val36.pre.i, 2
  br i1 %i.wh, label %bb.hp, label %.thread370

.thread361:                                       ; preds = %_RINvNtCskEUeM34gmJU_6ty_ide10completion21token_suffix_by_kindsKj1_EB4_.exit.i.i
  %i.wi = icmp ugt i64 %.val36.pre.i, 2
  br i1 %i.wi, label %bb.hp, label %.thread370

bb.hn:                                            ; preds = %_RINvNtCskEUeM34gmJU_6ty_ide10completion21token_suffix_by_kindsKj1_EB4_.exit.i.i
  %.not28.i.i = icmp eq i64 %.val36.pre.i, 1
  br i1 %.not28.i.i, label %.loopexit.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.wj = getelementptr i8, ptr %i.wc, i64 -24
  br label %bb.hr

_RINvNtCskEUeM34gmJU_6ty_ide10completion21token_suffix_by_kindsKj1_EB4_.exit36.thread.i.thread.i: ; preds = %.thread246.i, %bb.hk
  call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  %i.wk = invoke { i64, ptr } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB2_12CoveringNode4node(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dx)
          to label %.noexc78.i unwind label %.loopexit.split-lp.i, !noalias !2176 ; 2 uses

.thread370:                                       ; preds = %bb.hm, %bb.hp, %bb.hq, %.thread361
end_hunk_1
