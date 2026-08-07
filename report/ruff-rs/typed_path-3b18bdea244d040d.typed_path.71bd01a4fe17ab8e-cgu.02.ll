inline.NumInlined: 80
inline.NumDeleted: 53
begin_hunk_0_@_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNCNCNvNtB1a_6parser11parse_front0s_0NvB2f_18move_front_to_nextE0Ba_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2), !noalias !99
  br i1 %i.c, label %bb.c, label %.fold.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.e = add nsw i64 %2, -2                       ; 3 uses
  %i.f = icmp eq i64 %2, 2
  br i1 %i.f, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  store i8 47, ptr %i.a, align 1, !noalias !104
  %i.g = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  br i1 %i.g, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i, label %.fold.split.i.i

.fold.split.i.i:                                  ; preds = %bb.d, %bb.b, %bb.a
  store i64 -1, ptr %.sroa.15, align 8, !alias.scope !117, !noalias !118
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %cond = icmp eq i64 %2, 0
  br i1 %cond, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.j = add nuw i64 %i.m, 1
  %i.k = icmp eq ptr %i.i, %i.h
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.fold.split.i.i, %bb.e
  %i.l = phi ptr [ %i.i, %bb.e ], [ %1, %.fold.split.i.i ] ; 2 uses
  %i.m = phi i64 [ %i.j, %bb.e ], [ 0, %.fold.split.i.i ] ; 7 uses
  %i.n = load i8, ptr %i.l, align 1, !alias.scope !130, !noalias !135, !noundef !84
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 47
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp ugt i64 %i.m, %2
  br i1 %i.p, label %bb.h, label %.thread6.i.i.i, !prof !85

.thread6.i.i.i:                                   ; preds = %bb.g
  %i.q = sub nuw nsw i64 %2, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  br label %._crit_edge

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.m, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !141
  unreachable

._crit_edge:                                      ; preds = %bb.e, %.thread6.i.i.i
  %.sroa.44.0.i14.i.i.i = phi i64 [ %i.m, %.thread6.i.i.i ], [ %2, %bb.e ]
  %.sroa.02.0.i12.i.i.i = phi ptr [ %i.r, %.thread6.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.e ]
  %.sroa.4.0.i11.i.i.i = phi i64 [ %i.q, %.thread6.i.i.i ], [ 0, %bb.e ]
  store i64 3, ptr %.sroa.15, align 8, !alias.scope !142, !noalias !143
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i: ; preds = %.fold.split.i.i, %bb.f, %._crit_edge
  %.sroa.9.0 = phi i64 [ %.sroa.4.0.i11.i.i.i, %._crit_edge ], [ 22, %.fold.split.i.i ], [ 22, %bb.f ]
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.i12.i.i.i, %._crit_edge ], [ @5, %.fold.split.i.i ], [ @5, %bb.f ]
  %.sink.i3.i.sroa.phi = phi ptr [ %.sroa.24, %._crit_edge ], [ %.sroa.15, %.fold.split.i.i ], [ %.sroa.15, %bb.f ]
  %.sroa.44.0.i14.i.sink.i.i = phi i64 [ %.sroa.44.0.i14.i.i.i, %._crit_edge ], [ -1, %.fold.split.i.i ], [ -1, %bb.f ]
  store i64 %.sroa.44.0.i14.i.sink.i.i, ptr %.sink.i3.i.sroa.phi, align 8, !alias.scope !142, !noalias !143
  %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.16.3 = load i64, ptr %.sroa.15, align 8, !range !89, !noundef !84 ; 2 uses
  %i.s = icmp eq i64 %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.16.3, -1
  br i1 %i.s, label %_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front0s_0Bd_.exit, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i._crit_edge

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i._crit_edge: ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i
  %.sroa.24.0..sroa.24.0..sroa.24.0..sroa.24.24.copyload.pre = load i64, ptr %.sroa.24, align 8
  br label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i

_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front0s_0Bd_.exit: ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  store ptr @6, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 19, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.u, align 8
  br label %bb.k

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i: ; preds = %bb.c, %bb.d, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i._crit_edge
  %.sroa.24.0..sroa.24.0..sroa.24.24.copyload = phi i64 [ %.sroa.24.0..sroa.24.0..sroa.24.0..sroa.24.24.copyload.pre, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i._crit_edge ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.15.0..sroa.15.16..ph = phi i64 [ %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.16.3, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i._crit_edge ], [ 2, %bb.d ], [ 2, %bb.c ]
  %.sroa.9.1.ph = phi i64 [ %.sroa.9.0, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i._crit_edge ], [ %i.e, %bb.d ], [ %i.e, %bb.c ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal.exit.i._crit_edge ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.ph, i64 noundef range(i64 0, -9223372036854775808) %.sroa.9.1.ph)
  %i.v = load i64, ptr %i.b, align 8, !range !90, !noundef !84
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !84, !noundef !84
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !84
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
  %i.c = load i8, ptr %i.b, align 8, !range !144, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load ptr, ptr %1, align 8, !nonnull !84, !noundef !84 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !84 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNCNCNvNtB1a_6parser11parse_front0s_0NvB2f_18move_front_to_nextE0Ba_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNCNCNvNtB1a_6parser11parse_front00NvB2f_18move_front_to_nextE0Ba_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !89, !noundef !84 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %i.k = load ptr, ptr %i.a, align 8, !nonnull !84, !noundef !84 ; 2 uses
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
  %i.i = load i8, ptr %i.h, align 8, !range !144, !noundef !84 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !84, !noundef !84 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !145
  call void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser17move_back_to_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !149
  %i.m = load i64, ptr %i.g, align 8, !range !90, !noalias !145, !noundef !84
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !145, !nonnull !84, !noundef !84 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !145, !noundef !84 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !145
  br i1 %i.n, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %i.i, 0
  %i.t = icmp eq i64 %i.r, 0
  %or.cond.i = and i1 %i.s, %i.t
  br i1 %or.cond.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !145
  call fastcc void @_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNCNCNvNtB1a_6parser11parse_front00NvB2f_18move_front_to_nextE0Ba_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !89, !noalias !145, !noundef !84 ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.f, align 8, !noalias !145, !nonnull !84, !noundef !84
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !145, !noundef !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !145
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.33.24.copyload8 = load ptr, ptr %.sroa.635.0..sroa_idx.i, align 8, !noalias !150
  %.sroa.36.24..sroa.635.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.36.24.copyload9 = load i64, ptr %.sroa.36.24..sroa.635.0..sroa_idx.i.sroa_idx, align 8, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !145
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
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
  %i.ag = load i8, ptr %i.ae, align 1, !alias.scope !157, !noalias !162, !noundef !84
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 47
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %.sroa.1.0.i.i.i.i.i35, %i.r
  br i1 %i.ah, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult i64 %i.af, %i.r
  br i1 %i.ai, label %bb.l, label %bb.k, !prof !170

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #10, !noalias !171
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aj = sub nuw nsw i64 %i.r, %.sroa.1.0.i.i.i.i.i35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.1.0.i.i.i.i.i35
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.g, %bb.f, %bb.l
  %.sroa.04.0.i.i.i = phi ptr [ %i.p, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 6 uses
  %.sroa.45.0.i.i.i = phi i64 [ %.sroa.1.0.i.i.i.i.i35, %bb.l ], [ 0, %bb.f ], [ 0, %bb.g ] ; 7 uses
  %.sroa.06.0.i.i.i = phi ptr [ %i.ak, %bb.l ], [ %i.p, %bb.f ], [ %i.p, %bb.g ] ; 6 uses
  %.sroa.47.0.i.i.i = phi i64 [ %i.aj, %bb.l ], [ %i.r, %bb.f ], [ %i.r, %bb.g ] ; 12 uses
  %i.al = icmp eq i64 %.sroa.47.0.i.i.i, 0
  br i1 %i.al, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %switch.i.i.i = icmp eq i64 %.sroa.47.0.i.i.i, 1
  br i1 %switch.i.i.i, label %.fold.split.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.06.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.47.0.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2), !noalias !181
  br i1 %i.am, label %bb.o, label %.fold.split.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i64 %.sroa.47.0.i.i.i, 2
  br i1 %i.an, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add nsw i64 %.sroa.47.0.i.i.i, -2
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !190
  store i8 47, ptr %i.d, align 1, !noalias !190
  %i.aq = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef range(i64 0, -9223372036854775808) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !190
  br i1 %i.aq, label %bb.aa, label %.fold.split.i.i.i.i

.fold.split.i.i.i.i:                              ; preds = %bb.p, %bb.n, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 %.sroa.47.0.i.i.i
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.at = add nuw i64 %i.aw, 1
  %i.au = icmp eq ptr %i.as, %i.ar
  br i1 %i.au, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i, label %bb.r

bb.r:                                             ; preds = %.fold.split.i.i.i.i, %bb.q
  %i.av = phi ptr [ %.sroa.06.0.i.i.i, %.fold.split.i.i.i.i ], [ %i.as, %bb.q ] ; 2 uses
  %i.aw = phi i64 [ 0, %.fold.split.i.i.i.i ], [ %i.at, %bb.q ] ; 5 uses
  %i.ax = load i8, ptr %i.av, align 1, !alias.scope !212, !noalias !217, !noundef !84
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 47
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = icmp ugt i64 %i.aw, %.sroa.47.0.i.i.i
  br i1 %i.az, label %bb.u, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i, !prof !85

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef range(i64 0, -9223372036854775808) %.sroa.47.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.47.0.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !224
  unreachable

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i: ; preds = %bb.t
  %i.ba = icmp eq i64 %.sroa.47.0.i.i.i, %i.aw
  br i1 %i.ba, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i, label %bb.aa

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i: ; preds = %bb.q, %bb.o, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i
  %.sroa.11.0.i = phi i64 [ 3, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i ], [ 2, %bb.o ], [ 3, %bb.q ] ; 2 uses
  %i.bb = trunc nuw i8 %i.i to i1
  %.not38.i = icmp eq i64 %.sroa.45.0.i.i.i, 0
  %or.cond = select i1 %i.bb, i1 true, i1 %.not38.i
  br i1 %or.cond, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread, label %bb.v

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread: ; preds = %bb.w, %bb.y, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !145
  call void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser17move_back_to_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i, i64 noundef %.sroa.45.0.i.i.i), !noalias !149
  %i.bc = load i64, ptr %i.e, align 8, !range !90, !noalias !145, !noundef !84
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !145, !nonnull !84, !noundef !84 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !145, !noundef !84 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145
  br i1 %i.bd, label %bb.aa, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit

bb.v:                                             ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !225
  store i8 47, ptr %i.c, align 1, !noalias !225
  %i.bi = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.45.0.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !225
  br i1 %i.bi, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.45.0.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1), !noalias !236
  br i1 %i.bj, label %bb.x, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp eq i64 %.sroa.45.0.i.i.i, 1
  br i1 %i.bk, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = add nsw i64 %.sroa.45.0.i.i.i, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243
  store i8 47, ptr %i.a, align 1, !noalias !243
  %i.bn = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef range(i64 0, -9223372036854775808) %i.bl, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  br i1 %i.bn, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i, label %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread

_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i: ; preds = %bb.y, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !256
  call void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser17move_back_to_next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.45.0.i.i.i), !noalias !260
  %i.bo = load i64, ptr %i.b, align 8, !range !90, !noalias !256, !noundef !84
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !256, !nonnull !84, !noundef !84 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !256, !noundef !84 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !256
  br i1 %i.bp, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i
  %.not.i = icmp eq i64 %i.bt, 0
  %.mux.i = select i1 %.not.i, ptr %.sroa.04.0.i.i.i, ptr %i.br, !prof !261
  %.mux37.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit

bb.aa:                                            ; preds = %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread, %bb.i, %bb.d, %bb.a, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i, %.loopexit.i.i, %bb.s, %bb.p
  %.sroa.13.0.ph = phi i64 [ 9, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i ], [ 9, %bb.p ], [ 22, %.loopexit.i.i ], [ 19, %bb.s ], [ %i.bt, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i ], [ 22, %bb.i ], [ %i.r, %bb.a ], [ %i.z, %bb.d ], [ %i.bh, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ]
  %.sroa.0.0.ph = phi ptr [ @1, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir.exit.i.i.i ], [ @1, %bb.p ], [ @5, %.loopexit.i.i ], [ @6, %bb.s ], [ %i.br, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir.exit.i ], [ @5, %bb.i ], [ %i.p, %bb.a ], [ %i.x, %bb.d ], [ %i.bf, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.ph, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.ph, ptr %i.bv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ab

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit: ; preds = %bb.z, %bb.e, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread
  %.sroa.36.0 = phi i64 [ %.sroa.47.0.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.sroa.47.0.i.i.i, %bb.z ], [ %.sroa.36.24.copyload9, %bb.e ]
  %.sroa.33.0 = phi ptr [ %.sroa.06.0.i.i.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.sroa.06.0.i.i.i, %bb.z ], [ %.sroa.33.24.copyload8, %bb.e ]
  %.sroa.23.0 = phi i64 [ %.sroa.11.0.i, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.sroa.11.0.i, %bb.z ], [ %i.v, %bb.e ]
  %.sroa.13.0 = phi i64 [ %i.bh, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.mux37.i, %bb.z ], [ 0, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.bf, %_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir.exit.thread ], [ %.mux.i, %bb.z ], [ inttoptr (i64 1 to ptr), %bb.e ]
  store ptr %.sroa.0.0, ptr %1, align 8
  store i64 %.sroa.13.0, ptr %i.k, align 8
  store i64 %.sroa.23.0, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.33.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.36.0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_.exit, %bb.aa
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
  %i.b = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2), !noalias !262
  br i1 %i.b, label %bb.c, label %bb.f

.fold.split:                                      ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = add nsw i64 %2, -2                       ; 2 uses
  %i.e = icmp eq i64 %2, 2
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !267
  store i8 47, ptr %i.a, align 1, !noalias !267
  %i.f = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
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
  %i.g = load i8, ptr %i.e, align 1, !alias.scope !282, !noalias !287, !noundef !84
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 47
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %.sroa.1.0.i.i.i39, %.sroa.8.0
  br i1 %i.h, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp ult i64 %i.f, %.sroa.8.0
  br i1 %i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i, label %bb.g, !prof !170

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775808) %.sroa.8.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #10, !noalias !294
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i: ; preds = %bb.f
  %i.j = icmp ugt i64 %.sroa.1.0.i.i.i39, %.sroa.8.0
  br i1 %i.j, label %bb.h, label %.loopexit, !prof !85

bb.h:                                             ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.1.0.i.i.i39, i64 noundef range(i64 1, -9223372036854775808) %.sroa.8.0, i64 noundef range(i64 1, -9223372036854775808) %.sroa.8.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #10, !noalias !298
  unreachable

.loopexit:                                        ; preds = %bb.c, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i, %bb.e
  %.sroa.04.0.i = phi ptr [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 3 uses
  %.sroa.45.0.i = phi i64 [ %.sroa.8.0, %bb.e ], [ %.sroa.1.0.i.i.i39, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path.exit.i ], [ 0, %bb.c ] ; 3 uses
  %i.k = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i, i64 noundef %.sroa.45.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 3 uses
  %i.n = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 1)
  %i.o = icmp eq i64 %i.m, 0
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %bb.b, label %bb.j

bb.j:                                             ; preds = %bb.b, %.loopexit, %bb.i
  %.sroa.8.1 = phi i64 [ 0, %bb.b ], [ %.sroa.45.0.i, %bb.i ], [ %.sroa.45.0.i, %.loopexit ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.b ], [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0.i, %.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.1, ptr %i.q, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !302
  store i64 0, ptr %i.c, align 8, !noalias !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !noalias !302
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.f, align 8, !noalias !302
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.h
  %.sroa.05.07.i.i.i = phi ptr [ %.sink12.i.i.i.i, %bb.h ], [ %1, %bb.a ] ; 5 uses
  %.sroa.7.06.i.i.i = phi i64 [ %.sink10.i.i.i.i, %bb.h ], [ %2, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !310
  store i8 47, ptr %i.b, align 1, !noalias !310
  %i.h = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.07.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.06.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !320

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !310
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i
  %i.i = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.07.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.06.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1)
          to label %.noexc21.i.i.i unwind label %bb.f, !noalias !320

.noexc21.i.i.i:                                   ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %._crit_edgethread-pre-split.i.i.i

bb.c:                                             ; preds = %.noexc21.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 1 ; 3 uses
  %i.k = add nsw i64 %.sroa.7.06.i.i.i, -1        ; 2 uses
  %i.l = icmp eq i64 %.sroa.7.06.i.i.i, 1
  br i1 %i.l, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  store i8 47, ptr %i.a, align 1, !noalias !321
  %i.m = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc22.i.i.i unwind label %bb.f, !noalias !320

.noexc22.i.i.i:                                   ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  br i1 %i.m, label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_.exit.i.i.i, label %._crit_edgethread-pre-split.i.i.i

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.n = add nsw i64 %.sroa.7.06.i.i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 1
  br label %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_.exit.i.i.i

bb.f:                                             ; preds = %bb.g, %bb.d, %bb.b, %.lr.ph.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecuEECs9LqqPKWwQFK_10typed_path(ptr noalias noundef align 8 dereferenceable(24) %i.c) #11
          to label %common.resume.i unwind label %bb.k, !noalias !320

._crit_edgethread-pre-split.i.i.i:                ; preds = %.noexc22.i.i.i, %.noexc21.i.i.i
  %.pre.pr.i.i.i = load i64, ptr %i.f, align 8, !noalias !302
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %._crit_edgethread-pre-split.i.i.i
  %.sroa.13.16.copyload.i.i = phi i64 [ %.pre.pr.i.i.i, %._crit_edgethread-pre-split.i.i.i ], [ %i.t, %bb.h ] ; 2 uses
  %.sroa.7.0.lcssa.ph.i.i.i = phi i64 [ %.sroa.7.06.i.i.i, %._crit_edgethread-pre-split.i.i.i ], [ 0, %bb.h ]
  %.sroa.05.0.lcssa.ph.i.i.i = phi ptr [ %.sroa.05.07.i.i.i, %._crit_edgethread-pre-split.i.i.i ], [ %.sink12.i.i.i.i, %bb.h ]
  %i.q = icmp eq i64 %.sroa.13.16.copyload.i.i, 0
  br i1 %i.q, label %._crit_edge.thread.i.i.i, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i

_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_.exit.i.i.i: ; preds = %bb.e, %.noexc22.i.i.i, %bb.c
  %.sink12.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %i.j, %.noexc22.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %.sink10.i.i.i.i = phi i64 [ %i.n, %bb.e ], [ %i.k, %.noexc22.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !alias.scope !343, !noalias !302, !noundef !84 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_.exit.i.i.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.f, !noalias !320

bb.h:                                             ; preds = %bb.g, %_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_.exit.i.i.i
  %i.t = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.t, ptr %i.f, align 8, !noalias !302
  %i.u = icmp eq i64 %.sink10.i.i.i.i, 0
  br i1 %i.u, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.thread.i.i unwind label %bb.i, !noalias !320

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.j, !noalias !320

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #9, !noalias !320
  unreachable

common.resume.i:                                  ; preds = %bb.m, %bb.i, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.v, %bb.i ], [ %i.z, %bb.m ]
  resume { ptr, i32 } %common.resume.op.i

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.thread.i.i: ; preds = %._crit_edge.thread.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !302
  br label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i

bb.k:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #9, !noalias !320
  unreachable

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.sroa.9.16.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !346 ; 2 uses
  %.sroa.12.16.copyload.i.i = load ptr, ptr %i.e, align 8, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !302
  %i.y = icmp eq i64 %.sroa.9.16.copyload.i.i, -1
  br i1 %i.y, label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i
  br label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i: ; preds = %bb.l, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.thread.i.i
  %.sroa.045.0.i.i = phi ptr [ %.sroa.05.0.lcssa.ph.i.i.i, %bb.l ], [ %1, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.thread.i.i ], [ %1, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i ]
  %.sroa.548.0.i.i = phi i64 [ %.sroa.7.0.lcssa.ph.i.i.i, %bb.l ], [ %2, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.thread.i.i ], [ %2, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i ]
  %.sroa.714.0.i.i = phi i64 [ %.sroa.13.16.copyload.i.i, %bb.l ], [ 0, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.thread.i.i ], [ 0, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i ]
  %.sroa.612.0.i.i = phi ptr [ %.sroa.12.16.copyload.i.i, %bb.l ], [ inttoptr (i64 1 to ptr), %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.thread.i.i ], [ inttoptr (i64 1 to ptr), %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i ]
  %.sroa.010.0.i.i = phi i64 [ %.sroa.9.16.copyload.i.i, %bb.l ], [ 0, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.thread.i.i ], [ 0, %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !347
  store i64 %.sroa.010.0.i.i, ptr %i.d, align 8, !noalias !347
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.612.0.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !347
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.714.0.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !347
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0NCB1Z_0E0Ba_.exit unwind label %bb.m, !noalias !299

bb.m:                                             ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.n, !noalias !299

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #9, !noalias !299
  unreachable

_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0NCB1Z_0E0Ba_.exit: ; preds = %_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_.exit.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !347
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.045.0.i.i, ptr %i.ab, align 8, !alias.scope !299, !noalias !348
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.548.0.i.i, ptr %i.ac, align 8, !alias.scope !299, !noalias !348
  store i64 0, ptr %0, align 8, !alias.scope !299, !noalias !348
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %cond = icmp eq i64 %2, 0
  br i1 %cond, label %bb.f, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.c = add nuw i64 %i.f, 1
  %i.d = icmp eq ptr %i.b, %i.a
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.f = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 7 uses
  %i.g = load i8, ptr %i.e, align 1, !alias.scope !355, !noalias !360, !noundef !84
  %.not.i.i.i = icmp eq i8 %i.g, 47
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %i.f, %2
  br i1 %i.i, label %bb.e, label %.thread6.i, !prof !85

.thread6.i:                                       ; preds = %bb.d
  %i.j = sub nuw nsw i64 %2, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  br label %._crit_edge

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !366
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  store ptr @5, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.l, align 8
  br label %bb.g

._crit_edge:                                      ; preds = %bb.b, %.thread6.i
  %.sroa.44.0.i14.i = phi i64 [ %i.f, %.thread6.i ], [ %2, %bb.b ]
  %.sroa.02.0.i12.i = phi ptr [ %i.k, %.thread6.i ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sroa.4.0.i11.i = phi i64 [ %i.j, %.thread6.i ], [ 0, %bb.b ]
  store ptr %.sroa.02.0.i12.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i11.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.sink = phi i64 [ 32, %._crit_edge ], [ 16, %bb.f ]
  %.sroa.44.0.i14.i.sink = phi i64 [ %.sroa.44.0.i14.i, %._crit_edge ], [ -1, %bb.f ]
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %.sroa.44.0.i14.i.sink, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1), !noalias !367
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !372
  store i8 47, ptr %i.a, align 1, !noalias !372
  %i.g = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !372
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.sink18 = phi ptr [ %i.d, %bb.e ], [ @6, %bb.d ], [ @9, %bb.b ], [ @7, %bb.a ]
  %.sink17 = phi i64 [ %i.e, %bb.e ], [ 19, %bb.d ], [ 11, %bb.b ], [ 11, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %bb.a ]
  store ptr %.sink18, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink17, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !384
  store i8 47, ptr %i.a, align 1, !noalias !384
  %i.c = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !384
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %2, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink15 = phi ptr [ %i.e, %bb.c ], [ @7, %bb.a ], [ @8, %bb.b ]
  %.sink14 = phi i64 [ %i.d, %bb.c ], [ 11, %bb.a ], [ 10, %bb.b ]
  %.sink = phi i64 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  store ptr %.sink15, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink14, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.54.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9LqqPKWwQFK_10typed_path(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCs9LqqPKWwQFK_10typed_path(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSh12strip_suffixBu_ECs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs9LqqPKWwQFK_10typed_path(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { noreturn }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front00Bd_: argument 0"}
!5 = distinct !{!5, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front00Bd_"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front00Bd_: argument 1"}
!8 = !{!9, !11, !12, !14, !15, !17, !4, !7}
!9 = distinct !{!9, !10, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!10 = distinct !{!10, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!11 = distinct !{!11, !10, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!12 = distinct !{!12, !13, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!13 = distinct !{!13, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!14 = distinct !{!14, !13, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!15 = distinct !{!15, !16, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir: argument 0"}
!16 = distinct !{!16, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir"}
!17 = distinct !{!17, !16, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir: argument 1"}
!18 = !{!9, !12, !15, !4}
!19 = !{!20, !22, !24, !4}
!20 = distinct !{!20, !21, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!21 = distinct !{!21, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!22 = distinct !{!22, !23, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_: argument 0"}
!23 = distinct !{!23, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_"}
!24 = distinct !{!24, !25, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir: argument 0"}
!25 = distinct !{!25, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir"}
!26 = !{!27, !29, !30, !32, !33, !35, !22, !36, !24, !37, !4, !7}
!27 = distinct !{!27, !28, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!28 = distinct !{!28, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!29 = distinct !{!29, !28, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!30 = distinct !{!30, !31, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!31 = distinct !{!31, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!32 = distinct !{!32, !31, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!33 = distinct !{!33, !34, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_: argument 0"}
!34 = distinct !{!34, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_"}
!35 = distinct !{!35, !34, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_: argument 1"}
!36 = distinct !{!36, !23, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_: argument 1"}
!37 = distinct !{!37, !25, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir: argument 1"}
!38 = !{!27, !30, !33, !22, !24, !4}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir: argument 0"}
!41 = distinct !{!41, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir"}
!42 = !{!43, !45, !40, !4}
!43 = distinct !{!43, !44, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!44 = distinct !{!44, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!45 = distinct !{!45, !46, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_: argument 0"}
!46 = distinct !{!46, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_"}
!47 = !{!48, !50, !51, !53, !54, !56, !45, !57, !40, !58, !4, !7}
!48 = distinct !{!48, !49, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!49 = distinct !{!49, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!50 = distinct !{!50, !49, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!51 = distinct !{!51, !52, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!52 = distinct !{!52, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!53 = distinct !{!53, !52, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!54 = distinct !{!54, !55, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!55 = distinct !{!55, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_"}
!56 = distinct !{!56, !55, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!57 = distinct !{!57, !46, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_: argument 1"}
!58 = distinct !{!58, !41, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir: argument 1"}
!59 = !{!48, !51, !54, !45, !40, !4}
!60 = !{!40, !4}
!61 = !{!58, !7}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal: argument 0"}
!64 = distinct !{!64, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 1"}
!69 = distinct !{!69, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 1"}
!72 = distinct !{!72, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_"}
!73 = !{!74, !76, !71, !68, !66, !7}
!74 = distinct !{!74, !75, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB1u_4unix8non_utf810components6parser6normal0E00E0B1u_: argument 0"}
!75 = distinct !{!75, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB1u_4unix8non_utf810components6parser6normal0E00E0B1u_"}
!76 = distinct !{!76, !77, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB3y_4unix8non_utf810components6parser6normal0E00E0E0B3y_: argument 0"}
!77 = distinct !{!77, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB3y_4unix8non_utf810components6parser6normal0E00E0E0B3y_"}
!78 = !{!79, !81, !82, !83, !63, !4}
!79 = distinct !{!79, !80, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_: argument 0"}
!80 = distinct !{!80, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_"}
!81 = distinct !{!81, !80, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_: argument 1"}
!82 = distinct !{!82, !72, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 0"}
!83 = distinct !{!83, !69, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 0"}
!84 = !{}
!85 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!86 = !{!82, !71, !83, !68, !63, !66, !4}
!87 = !{!63, !4}
!88 = !{!66, !7}
!89 = !{i64 -1, i64 4}
!90 = !{i64 0, i64 2}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front0s_0Bd_: argument 0"}
!93 = distinct !{!93, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front0s_0Bd_"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser11parse_front0s_0Bd_: argument 1"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir: argument 0"}
!98 = distinct !{!98, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir"}
!99 = !{!100, !102, !97, !92}
!100 = distinct !{!100, !101, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!101 = distinct !{!101, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!102 = distinct !{!102, !103, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_: argument 0"}
!103 = distinct !{!103, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_"}
!104 = !{!105, !107, !108, !110, !111, !113, !102, !114, !97, !115, !92, !95}
!105 = distinct !{!105, !106, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!106 = distinct !{!106, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!107 = distinct !{!107, !106, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!108 = distinct !{!108, !109, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!109 = distinct !{!109, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!110 = distinct !{!110, !109, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!111 = distinct !{!111, !112, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_: argument 0"}
!112 = distinct !{!112, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_"}
!113 = distinct !{!113, !112, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_: argument 1"}
!114 = distinct !{!114, !103, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_: argument 1"}
!115 = distinct !{!115, !98, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir: argument 1"}
!116 = !{!105, !108, !111, !102, !97, !92}
!117 = !{!97, !92}
!118 = !{!115, !95}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal: argument 0"}
!121 = distinct !{!121, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal: argument 1"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 1"}
!126 = distinct !{!126, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 1"}
!129 = distinct !{!129, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_"}
!130 = !{!131, !133, !128, !125, !123, !95}
!131 = distinct !{!131, !132, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB1u_4unix8non_utf810components6parser6normal0E00E0B1u_: argument 0"}
!132 = distinct !{!132, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB1u_4unix8non_utf810components6parser6normal0E00E0B1u_"}
!133 = distinct !{!133, !134, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB3y_4unix8non_utf810components6parser6normal0E00E0E0B3y_: argument 0"}
!134 = distinct !{!134, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB3y_4unix8non_utf810components6parser6normal0E00E0E0B3y_"}
!135 = !{!136, !138, !139, !140, !120, !92}
!136 = distinct !{!136, !137, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_: argument 0"}
!137 = distinct !{!137, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_"}
!138 = distinct !{!138, !137, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_: argument 1"}
!139 = distinct !{!139, !129, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 0"}
!140 = distinct !{!140, !126, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 0"}
!141 = !{!139, !128, !140, !125, !120, !123, !92}
!142 = !{!120, !92}
!143 = !{!123, !95}
!144 = !{i8 0, i8 2}
!145 = !{!146, !148}
!146 = distinct !{!146, !147, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_: argument 0"}
!147 = distinct !{!147, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_"}
!148 = distinct !{!148, !147, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0Bb_: argument 1"}
!149 = !{!146}
!150 = !{!148}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_4unix8non_utf810components6parser10parse_back00E0Ba_: argument 1"}
!153 = distinct !{!153, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_4unix8non_utf810components6parser10parse_back00E0Ba_"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_4unix8non_utf810components6parser10parse_back00E0Ba_: argument 1"}
!156 = distinct !{!156, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_4unix8non_utf810components6parser10parse_back00E0Ba_"}
!157 = !{!158, !160, !155, !152}
!158 = distinct !{!158, !159, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_4unix8non_utf810components6parser10parse_back00E00E0B1M_: argument 0"}
!159 = distinct !{!159, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB1M_4unix8non_utf810components6parser10parse_back00E00E0B1M_"}
!160 = distinct !{!160, !161, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_4unix8non_utf810components6parser10parse_back00E00E0E0B3S_: argument 1"}
!161 = distinct !{!161, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_4unix8non_utf810components6parser10parse_back00E00E0E0B3S_"}
!162 = !{!163, !164, !166, !168, !169, !146}
!163 = distinct !{!163, !161, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3S_4unix8non_utf810components6parser10parse_back00E00E0E0B3S_: argument 0"}
!164 = distinct !{!164, !165, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_4unix8non_utf810components6parser10parse_back00E00E0E0B3c_EB4C_: argument 0"}
!165 = distinct !{!165, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB4C_4unix8non_utf810components6parser10parse_back00E00E0E0B3c_EB4C_"}
!166 = distinct !{!166, !167, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_4unix8non_utf810components6parser10parse_back00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!167 = distinct !{!167, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtB3h_4unix8non_utf810components6parser10parse_back00E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!168 = distinct !{!168, !156, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNCNvNtNtNtNtBa_4unix8non_utf810components6parser10parse_back00E0Ba_: argument 0"}
!169 = distinct !{!169, !153, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser18rtake_until_byte_1NCNCNvNtNtNtNtBa_4unix8non_utf810components6parser10parse_back00E0Ba_: argument 0"}
!170 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!171 = !{!172, !174, !168, !155, !169, !152, !146}
!172 = distinct !{!172, !173, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!173 = distinct !{!173, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!174 = distinct !{!174, !173, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_: argument 1"}
!177 = distinct !{!177, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0s_0Bd_: argument 1"}
!180 = distinct !{!180, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0s_0Bd_"}
!181 = !{!182, !184, !186, !188, !189, !146}
!182 = distinct !{!182, !183, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!183 = distinct !{!183, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!184 = distinct !{!184, !185, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_: argument 0"}
!185 = distinct !{!185, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_"}
!186 = distinct !{!186, !187, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir: argument 0"}
!187 = distinct !{!187, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir"}
!188 = distinct !{!188, !180, !"_RNCNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parse_back0s_0Bd_: argument 0"}
!189 = distinct !{!189, !177, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser14fully_consumedNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentNCNCNvNtB1h_6parser10parse_back0s_0E0Ba_: argument 0"}
!190 = !{!191, !193, !194, !196, !197, !199, !184, !200, !186, !201, !188, !179, !189, !176, !146, !148}
!191 = distinct !{!191, !192, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!192 = distinct !{!192, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!193 = distinct !{!193, !192, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!194 = distinct !{!194, !195, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!195 = distinct !{!195, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!196 = distinct !{!196, !195, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!197 = distinct !{!197, !198, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_: argument 0"}
!198 = distinct !{!198, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_"}
!199 = distinct !{!199, !198, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_: argument 1"}
!200 = distinct !{!200, !185, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_: argument 1"}
!201 = distinct !{!201, !187, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir: argument 1"}
!202 = !{!191, !194, !197, !184, !186, !188, !189, !146}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal: argument 1"}
!205 = distinct !{!205, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 1"}
!208 = distinct !{!208, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 1"}
!211 = distinct !{!211, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_"}
!212 = !{!213, !215, !210, !207, !204, !179, !176}
!213 = distinct !{!213, !214, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB1u_4unix8non_utf810components6parser6normal0E00E0B1u_: argument 0"}
!214 = distinct !{!214, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB1u_4unix8non_utf810components6parser6normal0E00E0B1u_"}
!215 = distinct !{!215, !216, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB3y_4unix8non_utf810components6parser6normal0E00E0E0B3y_: argument 0"}
!216 = distinct !{!216, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB3y_4unix8non_utf810components6parser6normal0E00E0E0B3y_"}
!217 = !{!218, !220, !221, !222, !223, !188, !189, !146}
!218 = distinct !{!218, !219, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_: argument 0"}
!219 = distinct !{!219, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_"}
!220 = distinct !{!220, !219, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_: argument 1"}
!221 = distinct !{!221, !211, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 0"}
!222 = distinct !{!222, !208, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 0"}
!223 = distinct !{!223, !205, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser6normal: argument 0"}
!224 = !{!221, !210, !222, !207, !223, !204, !188, !189, !146}
!225 = !{!226, !228, !229, !231, !232, !234, !146, !148}
!226 = distinct !{!226, !227, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!227 = distinct !{!227, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!228 = distinct !{!228, !227, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!229 = distinct !{!229, !230, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!230 = distinct !{!230, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!231 = distinct !{!231, !230, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!232 = distinct !{!232, !233, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir: argument 0"}
!233 = distinct !{!233, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir"}
!234 = distinct !{!234, !233, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser8root_dir: argument 1"}
!235 = !{!226, !229, !232, !146}
!236 = !{!237, !239, !241, !146}
!237 = distinct !{!237, !238, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!238 = distinct !{!238, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!239 = distinct !{!239, !240, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_: argument 0"}
!240 = distinct !{!240, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_"}
!241 = distinct !{!241, !242, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir: argument 0"}
!242 = distinct !{!242, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir"}
!243 = !{!244, !246, !247, !249, !250, !252, !239, !253, !241, !254, !146}
!244 = distinct !{!244, !245, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!245 = distinct !{!245, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!246 = distinct !{!246, !245, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!247 = distinct !{!247, !248, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!248 = distinct !{!248, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!249 = distinct !{!249, !248, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!250 = distinct !{!250, !251, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!251 = distinct !{!251, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_"}
!252 = distinct !{!252, !251, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!253 = distinct !{!253, !240, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_: argument 1"}
!254 = distinct !{!254, !242, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir: argument 1"}
!255 = !{!244, !247, !250, !239, !241, !146}
!256 = !{!257, !259, !146, !148}
!257 = distinct !{!257, !258, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNvNtNtNtNtBa_4unix8non_utf810components6parser17move_back_to_nextE0Ba_: argument 0"}
!258 = distinct !{!258, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNvNtNtNtNtBa_4unix8non_utf810components6parser17move_back_to_nextE0Ba_"}
!259 = distinct !{!259, !258, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12consumed_cntuNvNtNtNtNtBa_4unix8non_utf810components6parser17move_back_to_nextE0Ba_: argument 1"}
!260 = !{!257, !146}
!261 = !{!"branch_weights", i32 1, i32 1}
!262 = !{!263, !265}
!263 = distinct !{!263, !264, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!264 = distinct !{!264, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!265 = distinct !{!265, !266, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_: argument 0"}
!266 = distinct !{!266, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_"}
!267 = !{!268, !270, !271, !273, !274, !276, !265, !277}
!268 = distinct !{!268, !269, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!269 = distinct !{!269, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!270 = distinct !{!270, !269, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!271 = distinct !{!271, !272, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!272 = distinct !{!272, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!273 = distinct !{!273, !272, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!274 = distinct !{!274, !275, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_: argument 0"}
!275 = distinct !{!275, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_"}
!276 = distinct !{!276, !275, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser10parent_dir0Bb_: argument 1"}
!277 = distinct !{!277, !266, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser10parent_dir0E0Ba_: argument 1"}
!278 = !{!268, !271, !274, !265}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser17move_back_to_nexts_0E0Ba_: argument 1"}
!281 = distinct !{!281, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser17move_back_to_nexts_0E0Ba_"}
!282 = !{!283, !285, !280}
!283 = distinct !{!283, !284, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB1M_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0B1M_: argument 0"}
!284 = distinct !{!284, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB1M_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0B1M_"}
!285 = distinct !{!285, !286, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB3S_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0E0B3S_: argument 1"}
!286 = distinct !{!286, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB3S_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0E0B3S_"}
!287 = !{!288, !289, !291, !293}
!288 = distinct !{!288, !286, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRhuINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB36_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB3S_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0E0B3S_: argument 0"}
!289 = distinct !{!289, !290, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB4C_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0E0B3c_EB4C_: argument 0"}
!290 = distinct !{!290, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtBR_8adapters9enumerateINtB23_9EnumeratepEBL_9try_rfold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB39_EENCINvNvBL_5rfind5checkB3R_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB4C_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0E0B3c_EB4C_"}
!291 = distinct !{!291, !292, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB3h_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_: argument 0"}
!292 = distinct !{!292, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1C_5rfind5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtB3h_4unix8non_utf810components6parser17move_back_to_nexts_0E00E0INtNtNtBc_3ops12control_flow11ControlFlowB2Z_EEB3h_"}
!293 = distinct !{!293, !281, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser16rtake_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser17move_back_to_nexts_0E0Ba_: argument 0"}
!294 = !{!295, !297, !293, !280}
!295 = distinct !{!295, !296, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 0"}
!296 = distinct !{!296, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path"}
!297 = distinct !{!297, !296, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs9LqqPKWwQFK_10typed_path: argument 1"}
!298 = !{!293, !280}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0NCB1Z_0E0Ba_: argument 0"}
!301 = distinct !{!301, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0NCB1Z_0E0Ba_"}
!302 = !{!303, !305, !306, !308, !300, !309}
!303 = distinct !{!303, !304, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_: argument 0"}
!304 = distinct !{!304, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_"}
!305 = distinct !{!305, !304, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser11one_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_: argument 1"}
!306 = distinct !{!306, !307, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_: argument 0"}
!307 = distinct !{!307, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_"}
!308 = distinct !{!308, !307, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0Ba_: argument 1"}
!309 = distinct !{!309, !301, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapINtNtCscdodAO9FK5_5alloc3vec3VecuEuNCINvB4_12zero_or_moreuNCNvNtNtNtNtBa_4unix8non_utf810components6parser18move_front_to_nexts_0E0NCB1Z_0E0Ba_: argument 1"}
!310 = !{!311, !313, !314, !316, !317, !319, !303, !305, !306, !308, !300, !309}
!311 = distinct !{!311, !312, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!312 = distinct !{!312, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!313 = distinct !{!313, !312, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!314 = distinct !{!314, !315, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!315 = distinct !{!315, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!316 = distinct !{!316, !315, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!317 = distinct !{!317, !318, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_: argument 0"}
!318 = distinct !{!318, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_"}
!319 = distinct !{!319, !318, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser18move_front_to_nexts_0Bb_: argument 1"}
!320 = !{!303, !306, !300}
!321 = !{!322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !339, !340, !342, !317, !319, !303, !305, !306, !308, !300, !309}
!322 = distinct !{!322, !323, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!323 = distinct !{!323, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!324 = distinct !{!324, !323, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!325 = distinct !{!325, !326, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!326 = distinct !{!326, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!327 = distinct !{!327, !326, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!328 = distinct !{!328, !329, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!329 = distinct !{!329, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_"}
!330 = distinct !{!330, !329, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!331 = distinct !{!331, !332, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_: argument 0"}
!332 = distinct !{!332, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_"}
!333 = distinct !{!333, !332, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_: argument 1"}
!334 = distinct !{!334, !335, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir: argument 0"}
!335 = distinct !{!335, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir"}
!336 = distinct !{!336, !335, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir: argument 1"}
!337 = distinct !{!337, !338, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dirINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_: argument 0"}
!338 = distinct !{!338, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dirINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_"}
!339 = distinct !{!339, !338, !"_RNvYNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dirINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRShEE8call_mutBc_: argument 1"}
!340 = distinct !{!340, !341, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNvNtB15_6parser7cur_dirNCNCNvB26_18move_front_to_nexts_00E0Ba_: argument 0"}
!341 = distinct !{!341, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNvNtB15_6parser7cur_dirNCNCNvB26_18move_front_to_nexts_00E0Ba_"}
!342 = distinct !{!342, !341, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser3mapNtNtNtNtNtBa_4unix8non_utf810components9component13UnixComponentuNvNtB15_6parser7cur_dirNCNCNvB26_18move_front_to_nexts_00E0Ba_: argument 1"}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path: argument 0"}
!345 = distinct !{!345, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecuE8push_mutCs9LqqPKWwQFK_10typed_path"}
!346 = !{!305, !306, !308, !300, !309}
!347 = !{!300, !309}
!348 = !{!309}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 1"}
!351 = distinct !{!351, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 1"}
!354 = distinct !{!354, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_"}
!355 = !{!356, !358, !353, !350}
!356 = distinct !{!356, !357, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB1u_4unix8non_utf810components6parser6normal0E00E0B1u_: argument 0"}
!357 = distinct !{!357, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkTjRhENCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB1u_4unix8non_utf810components6parser6normal0E00E0B1u_"}
!358 = distinct !{!358, !359, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB3y_4unix8non_utf810components6parser6normal0E00E0E0B3y_: argument 0"}
!359 = distinct !{!359, !"_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRhuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB3y_4unix8non_utf810components6parser6normal0E00E0E0B3y_"}
!360 = !{!361, !363, !364, !365}
!361 = distinct !{!361, !362, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_: argument 0"}
!362 = distinct !{!362, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_"}
!363 = distinct !{!363, !362, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_NCNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtB4h_4unix8non_utf810components6parser6normal0E00E0E0B2S_EB4h_: argument 1"}
!364 = distinct !{!364, !354, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser15take_until_byteNCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 0"}
!365 = distinct !{!365, !351, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser17take_until_byte_1NCNvNtNtNtNtBa_4unix8non_utf810components6parser6normal0E0Ba_: argument 0"}
!366 = !{!364, !353, !365, !350}
!367 = !{!368, !370}
!368 = distinct !{!368, !369, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_: argument 0"}
!369 = distinct !{!369, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser5bytes0B9_"}
!370 = distinct !{!370, !371, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_: argument 0"}
!371 = distinct !{!371, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_"}
!372 = !{!373, !375, !376, !378, !379, !381, !370, !382}
!373 = distinct !{!373, !374, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!374 = distinct !{!374, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!375 = distinct !{!375, !374, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!376 = distinct !{!376, !377, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!377 = distinct !{!377, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!378 = distinct !{!378, !377, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!379 = distinct !{!379, !380, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_: argument 0"}
!380 = distinct !{!380, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_"}
!381 = distinct !{!381, !380, !"_RNCNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser7cur_dir0Bb_: argument 1"}
!382 = distinct !{!382, !371, !"_RNCINvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser8suffixedRShuNCNvB4_5bytes0NCNvNtNtNtNtBa_4unix8non_utf810components6parser7cur_dir0E0Ba_: argument 1"}
!383 = !{!373, !376, !379, !370}
!384 = !{!385, !387, !388, !390}
!385 = distinct !{!385, !386, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 0"}
!386 = distinct !{!386, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_"}
!387 = distinct !{!387, !386, !"_RNCNvNtNtNtCs9LqqPKWwQFK_10typed_path6common8non_utf86parser4byte0B9_: argument 1"}
!388 = distinct !{!388, !389, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 0"}
!389 = distinct !{!389, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator"}
!390 = distinct !{!390, !389, !"_RNvNtNtNtNtCs9LqqPKWwQFK_10typed_path4unix8non_utf810components6parser9separator: argument 1"}
!391 = !{!385, !388}
end_hunk_0
