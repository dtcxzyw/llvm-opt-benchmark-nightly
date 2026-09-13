Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/typed_path-3b18bdea244d040d.typed_path.71bd01a4fe17ab8e-cgu.02?download=true
inline.NumInlined: 80
inline.NumDeleted: 53
begin_hunk_0_@_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNCNCNvNtB1a_6parser11parse_front0s_0NvB2f_18move_front_to_nextE0Ba_:bb.a
  call void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.ph, i64 noundef range(i64 0, -9223372036854775808) %.sroa.9.1.ph)
  %i.v = load i64, ptr %i.b, align 8, !range !6, !noundef !3
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.y, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i
  store i64 -1, ptr %i.ac, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i
  store i64 %.sroa.15.0..sroa.15.16..ph, ptr %i.ac, align 8
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx, align 8
  %.sroa.57.sroa.4.sroa.4.0..sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.24.0..sroa.24.0..sroa.24.24.copyload, ptr %.sroa.57.sroa.4.sroa.4.0..sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front0s_0Bd_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parserNtB4_6Parser10next_front(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNCNCNvNtB1a_6parser11parse_front0s_0NvB2f_18move_front_to_nextE0Ba_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNCNCNvNtB1a_6parser11parse_front00NvB2f_18move_front_to_nextE0Ba_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !5, !noundef !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %i.k = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.o, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %1, align 8
  store i64 %i.m, ptr %i.f, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.i, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parserNtB4_6Parser9next_back(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !7, !noundef !3 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !235
  call void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser17move_back_to_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !236
  %i.m = load i64, ptr %i.g, align 8, !range !6, !noalias !235, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !235, !nonnull !3, !noundef !3 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !235, !noundef !3 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !235
  br i1 %i.n, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %i.i, 0
  %i.t = icmp eq i64 %i.r, 0
  %or.cond.i = and i1 %i.s, %i.t
  br i1 %or.cond.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !235
  call fastcc void @_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNCNCNvNtB1a_6parser11parse_front00NvB2f_18move_front_to_nextE0Ba_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !236
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !5, !noalias !235, !noundef !3 ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.f, align 8, !noalias !235, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !235, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !235
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.33.24.copyload8 = load ptr, ptr %.sroa.635.0..sroa_idx.i, align 8, !noalias !237
  %.sroa.36.24..sroa.635.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.36.24.copyload9 = load i64, ptr %.sroa.36.24..sroa.635.0..sroa_idx.i.sroa_idx, align 8, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !235
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.aa = icmp samesign eq i64 %i.r, 0
  br i1 %i.aa, label %.loopexit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.ac = icmp eq ptr %i.p, %i.ae
  br i1 %i.ac, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.1.0.i.i.i.i.i35 = phi i64 [ %i.r, %.lr.ph ], [ %i.af, %bb.g ] ; 5 uses
  %i.ad = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.g ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 3 uses
  %i.af = add nsw i64 %.sroa.1.0.i.i.i.i.i35, -1  ; 3 uses
  %i.ag = load i8, ptr %i.ae, align 1, !alias.scope !240, !noalias !241, !noundef !3
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 47
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %.sroa.1.0.i.i.i.i.i35, %i.r
  br i1 %i.ah, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult i64 %i.af, %i.r
  br i1 %i.ai, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #10, !noalias !242
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i: ; preds = %bb.j
  %i.aj = sub nuw nsw i64 %i.r, %.sroa.1.0.i.i.i.i.i35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.1.0.i.i.i.i.i35
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.g, %bb.f, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i
  %.sroa.06.0.i.i.i = phi ptr [ %i.ak, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i ], [ %i.p, %bb.f ], [ %i.p, %bb.g ] ; 6 uses
  %.sroa.45.0.i.i.i = phi i64 [ %.sroa.1.0.i.i.i.i.i35, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i ], [ 0, %bb.f ], [ 0, %bb.g ] ; 7 uses
  %.sroa.04.0.i.i.i = phi ptr [ %i.p, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 6 uses
  %.sroa.47.0.i.i.i = phi i64 [ %i.aj, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.g ] ; 12 uses
  %i.al = icmp eq i64 %.sroa.47.0.i.i.i, 0
  br i1 %i.al, label %bb.z, label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %switch.i.i.i = icmp eq i64 %.sroa.47.0.i.i.i, 1
  br i1 %switch.i.i.i, label %.fold.split.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.06.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.47.0.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2), !noalias !245
  br i1 %i.am, label %bb.n, label %.fold.split.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.an = icmp eq i64 %.sroa.47.0.i.i.i, 2
  br i1 %i.an, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %2 = add nsw i64 %.sroa.47.0.i.i.i, -2
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !246
  store i8 47, ptr %i.d, align 1, !noalias !246
  %i.ao = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !246
  br i1 %i.ao, label %bb.z, label %.fold.split.i.i.i.i

.fold.split.i.i.i.i:                              ; preds = %bb.o, %bb.m, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 %.sroa.47.0.i.i.i
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.ar = add nuw i64 %i.au, 1
  %i.as = icmp eq ptr %i.aq, %i.ap
  br i1 %i.as, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i, label %bb.q

bb.q:                                             ; preds = %.fold.split.i.i.i.i, %bb.p
  %i.at = phi ptr [ %.sroa.06.0.i.i.i, %.fold.split.i.i.i.i ], [ %i.aq, %bb.p ] ; 2 uses
  %i.au = phi i64 [ 0, %.fold.split.i.i.i.i ], [ %i.ar, %bb.p ] ; 5 uses
  %i.av = load i8, ptr %i.at, align 1, !alias.scope !251, !noalias !252, !noundef !3
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.av, 47
  br i1 %.not.i.i.i.i.i.i.i, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = icmp ugt i64 %i.au, %.sroa.47.0.i.i.i
  br i1 %i.ax, label %bb.t, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i, !prof !4

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.au, i64 noundef range(i64 0, -9223372036854775808) %.sroa.47.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.47.0.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !253
  unreachable

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i: ; preds = %bb.s
  %i.ay = icmp eq i64 %.sroa.47.0.i.i.i, %i.au
  br i1 %i.ay, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i, label %bb.z

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i: ; preds = %bb.p, %bb.n, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i
  %.sroa.11.0.i = phi i64 [ 3, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i ], [ 2, %bb.n ], [ 3, %bb.p ] ; 2 uses
  %i.az = trunc nuw i8 %i.i to i1
  %.not38.i = icmp eq i64 %.sroa.45.0.i.i.i, 0
  %or.cond = select i1 %i.az, i1 true, i1 %.not38.i
  br i1 %or.cond, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread, label %bb.u

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread: ; preds = %bb.v, %bb.x, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !235
  call void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser17move_back_to_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i, i64 noundef %.sroa.45.0.i.i.i), !noalias !236
  %i.ba = load i64, ptr %i.e, align 8, !range !6, !noalias !235, !noundef !3
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !235, !nonnull !3, !noundef !3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !235, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !235
  br i1 %i.bb, label %bb.z, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit

bb.u:                                             ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !254
  store i8 47, ptr %i.c, align 1, !noalias !254
  %i.bg = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.45.0.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !254
  br i1 %i.bg, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.45.0.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1), !noalias !256
  br i1 %i.bh, label %bb.w, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bi = icmp eq i64 %.sroa.45.0.i.i.i, 1
  br i1 %i.bi, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = add nsw i64 %.sroa.45.0.i.i.i, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !257
  store i8 47, ptr %i.a, align 1, !noalias !257
  %i.bl = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef range(i64 0, -9223372036854775808) %i.bj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !257
  br i1 %i.bl, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i: ; preds = %bb.x, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !259
  call void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser17move_back_to_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.45.0.i.i.i), !noalias !260
  %i.bm = load i64, ptr %i.b, align 8, !range !6, !noalias !259, !noundef !3
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !259, !nonnull !3, !noundef !3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !259, !noundef !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !259
  br i1 %i.bn, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i
  %.not.i = icmp eq i64 %i.br, 0
  %.mux.i = select i1 %.not.i, ptr %.sroa.04.0.i.i.i, ptr %i.bp, !prof !261
  %.mux37.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit

bb.z:                                             ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread, %bb.i, %bb.d, %bb.a, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i, %.loopexit.i.i, %bb.r, %bb.o
  %.sroa.13.0.ph = phi i64 [ 9, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i ], [ 9, %bb.o ], [ 22, %.loopexit.i.i ], [ 19, %bb.r ], [ %i.br, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i ], [ 22, %bb.i ], [ %i.r, %bb.a ], [ %i.z, %bb.d ], [ %i.bf, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ]
  %.sroa.0.0.ph = phi ptr [ @1, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i ], [ @1, %bb.o ], [ @5, %.loopexit.i.i ], [ @6, %bb.r ], [ %i.bp, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i ], [ @5, %bb.i ], [ %i.p, %bb.a ], [ %i.x, %bb.d ], [ %i.bd, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.ph, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.ph, ptr %i.bt, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aa

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit: ; preds = %bb.y, %bb.e, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread
  %.sroa.36.0 = phi i64 [ %.sroa.47.0.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.sroa.47.0.i.i.i, %bb.y ], [ %.sroa.36.24.copyload9, %bb.e ]
  %.sroa.33.0 = phi ptr [ %.sroa.06.0.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.sroa.06.0.i.i.i, %bb.y ], [ %.sroa.33.24.copyload8, %bb.e ]
  %.sroa.23.0 = phi i64 [ %.sroa.11.0.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.sroa.11.0.i, %bb.y ], [ %i.v, %bb.e ]
  %.sroa.13.0 = phi i64 [ %i.bf, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.mux37.i, %bb.y ], [ 0, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.bd, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.mux.i, %bb.y ], [ inttoptr (i64 1 to ptr), %bb.e ]
  store ptr %.sroa.0.0, ptr %1, align 8
  store i64 %.sroa.13.0, ptr %i.k, align 8
  store i64 %.sroa.23.0, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.33.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.36.0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit, %bb.z
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  switch i64 %2, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %.fold.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2), !noalias !276
  br i1 %i.b, label %bb.c, label %bb.f

.fold.split:                                      ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = add nsw i64 %2, -2                       ; 2 uses
  %i.e = icmp eq i64 %2, 2
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !277
  store i8 47, ptr %i.a, align 1, !noalias !277
  %i.f = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !277
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %.fold.split, %bb.b, %bb.e
  %.sink18 = phi ptr [ %i.c, %bb.e ], [ @6, %bb.d ], [ @9, %bb.b ], [ @7, %bb.a ], [ @10, %.fold.split ]
  %.sink17 = phi i64 [ %i.d, %bb.e ], [ 19, %bb.d ], [ 11, %bb.b ], [ 11, %bb.a ], [ 16, %.fold.split ]
  %.sink = phi i64 [ 2, %bb.e ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %.fold.split ]
  store ptr %.sink18, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink17, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser17move_back_to_next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.sroa.8.0 = phi i64 [ %2, %bb.a ], [ %i.m, %bb.i ] ; 10 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.l, %bb.i ] ; 5 uses
  %i.a = icmp eq i64 %.sroa.8.0, 0
  br i1 %i.a, label %bb.j, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.8.0
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.c = icmp eq ptr %.sroa.0.0, %i.e
  br i1 %i.c, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.1.0.i.i.i39 = phi i64 [ %.sroa.8.0, %.lr.ph ], [ %i.f, %bb.c ] ; 5 uses
  %i.d = phi ptr [ %i.b, %.lr.ph ], [ %i.e, %bb.c ]
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 3 uses
  %i.f = add nsw i64 %.sroa.1.0.i.i.i39, -1       ; 3 uses
  %i.g = load i8, ptr %i.e, align 1, !alias.scope !295, !noalias !296, !noundef !3
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 47
end_hunk_0
