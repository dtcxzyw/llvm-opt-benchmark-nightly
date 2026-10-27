Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.11?download=true
inline.NumInlined: 410
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RINvMNtCsgxBkk5gSRhY_4core3stre18trim_start_matchescECs5XgW7KoffLW_12opendal_core:_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %i.at = insertvalue { ptr, i64 } poison, ptr %i.as, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %i.ar, 1
  ret { ptr, i64 } %i.au
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCsgxBkk5gSRhY_4core3stre9ends_withcECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  store i32 0, ptr %i.a, align 4, !noalias !85
  %i.b = icmp samesign ult i32 %2, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %2, 2048
  %i.d = trunc i32 %2 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %2, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %2, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %2, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %2 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !86, !noalias !85
  br label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !86, !noalias !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !86, !noalias !85
  br label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %2, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !86, !noalias !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !86, !noalias !85
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !86, !noalias !85
  br label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !86, !noalias !85
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !86, !noalias !85
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !86, !noalias !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !86, !noalias !85
  br label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

_RNvXs2_NtNtCsgxBkk5gSRhY_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh9ends_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj1_NCINvB2_6encodeKB1l_Es_0EB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.k = load i64, ptr %0, align 8, !range !6, !alias.scope !133, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.a, label %._crit_edge.i.thread

bb.a:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !133, !noundef !5 ; 2 uses
  %i.o = add i64 %i.n, 4                          ; 8 uses
  %i.p = icmp ugt i64 %i.n, -5
  br i1 %i.p, label %bb.c, label %bb.b, !prof !134

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.o, 65536
  br i1 %i.q, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, label %bb.d, !prof !135

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #21, !noalias !136
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @132, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #21, !noalias !136
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.r = tail call { ptr, i64 } @_RNvMsq_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE18allocate_for_sliceCs5XgW7KoffLW_12opendal_core(i64 noundef %i.o) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 4 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  store ptr %i.s, ptr %i.j, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = cmpxchg ptr %i.v, i64 1, i64 -1 acquire monotonic, align 8
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !7

._crit_edge.i.thread:                             ; preds = %.lr.ph.i, %bb.q
  %.sroa.08.1.i31 = phi i64 [ %i.o, %bb.q ], [ 4, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %i.ag, %bb.q ], [ null, %.lr.ph.i ]
  %i.y = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.z = insertvalue { ptr, i64 } %i.y, i64 %.sroa.08.1.i31, 1
  ret { ptr, i64 } %i.z

bb.e:                                             ; preds = %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter6finish.exit.i, %bb.o, %.split77.us.i, %bb.n, %bb.m, %.split.us.i, %bb.i, %bb.h, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !139, !nonnull !5, !noundef !5
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !139
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.r

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit
  %i.ae = load atomic i64, ptr %i.s acquire, align 8
  %i.af = icmp eq i64 %i.ae, 1
  store atomic i64 1, ptr %i.v release, align 8
  br i1 %i.af, label %bb.g, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !8

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %bb.p unwind label %bb.e

bb.g:                                             ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  %i.ag = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.ah = load i64, ptr %i.u, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !142
  store i64 %i.o, ptr %i.i, align 8, !noalias !142
  store i64 %i.ah, ptr %i.h, align 8, !noalias !142
  %i.ai = icmp eq i64 %i.ah, %i.o
  br i1 %i.ai, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !142
  store i16 1, ptr %i.g, align 2, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !143
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.al)
          to label %.noexc6 unwind label %bb.e

.noexc6:                                          ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !noalias !144 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !144 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !144 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !144 ; 5 uses
  %i.am = icmp ult i64 %.sroa.55.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  br i1 %i.am, label %iter.check, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i

iter.check:                                       ; preds = %.noexc6
  %.sroa.44.0.copyload.i.i.i39 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i40 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i) ]
  %i.an = sub nuw i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.0.copyload.i.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.an, 8
  %i.ao = sub i64 %.sroa.44.0.copyload.i.i.i39, %.sroa.0.0.copyload.i.i.i40
  %diff.check = icmp ugt i64 %i.ao, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.an, 24
  %n.vec = and i64 %i.an, -32                     ; 4 uses
  %i.aq = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ar ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !noalias !145
  %wide.load42 = load <16 x i8>, ptr %i.au, align 1, !noalias !145
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load, ptr %i.as, align 1, !noalias !145
  store <16 x i8> %wide.load42, ptr %i.av, align 1, !noalias !145
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.an, -8                    ; 3 uses
  %i.ax = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec43
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index44 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ay
  %wide.load45 = load <8 x i8>, ptr %i.ba, align 1, !noalias !145
  store <8 x i8> %wide.load45, ptr %i.az, align 1, !noalias !145
  %index.next46 = add nuw i64 %index44, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next46, %n.vec43
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %i.an, %n.vec43
  br i1 %cmp.n47, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 4 uses
  %i.bc = sub i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.010.i.i.i.ph
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol
  %.sroa.55.010.i.i.i.prol = phi i64 [ %i.bf, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.bf = add nuw i64 %.sroa.55.010.i.i.i.prol, 1 ; 2 uses
  %i.bg = load i8, ptr %i.be, align 1, !noalias !145, !noundef !5
  store i8 %i.bg, ptr %i.bd, align 1, !noalias !145
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, !llvm.loop !107

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader
  %.sroa.55.010.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ], [ %i.bf, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ]
  %i.bh = sub i64 %.sroa.55.010.i.i.i.ph, %.sroa.7.0.copyload.i.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  %.sroa.55.010.i.i.i = phi i64 [ %i.bx, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i ], [ %.sroa.55.010.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.bl = add nuw i64 %.sroa.55.010.i.i.i, 1      ; 2 uses
  %i.bm = load i8, ptr %i.bk, align 1, !noalias !145, !noundef !5
  store i8 %i.bm, ptr %i.bj, align 1, !noalias !145
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bl
  %i.bp = add nuw i64 %.sroa.55.010.i.i.i, 2      ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1, !noalias !145, !noundef !5
  store i8 %i.bq, ptr %i.bn, align 1, !noalias !145
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bp
  %i.bt = add nuw i64 %.sroa.55.010.i.i.i, 3      ; 2 uses
  %i.bu = load i8, ptr %i.bs, align 1, !noalias !145, !noundef !5
  store i8 %i.bu, ptr %i.br, align 1, !noalias !145
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bt
  %i.bx = add nuw i64 %.sroa.55.010.i.i.i, 4      ; 2 uses
  %i.by = load i8, ptr %i.bw, align 1, !noalias !145, !noundef !5
  store i8 %i.by, ptr %i.bv, align 1, !noalias !145
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bx, %.sroa.7.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !llvm.loop !108

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !142
  %i.bz = load ptr, ptr %1, align 8, !alias.scope !141
  %.fr.i = freeze ptr %i.bz                       ; 3 uses
  %.not.i20.i = icmp eq ptr %.fr.i, null
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !141 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.cb
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.44.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ce = load i64, ptr %0, align 8, !range !6, !alias.scope !140, !noundef !5
  %i.cf = trunc nuw i64 %i.ce to i1               ; 2 uses
  br i1 %.not.i20.i, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.split.us.preheader.i, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.split.preheader.i, !prof !14

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.split.preheader.i: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i
  br i1 %i.cf, label %bb.k, label %bb.q

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.split.us.preheader.i: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i
  br i1 %i.cf, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.split.us.preheader.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !140, !noundef !5 ; 2 uses
  %i.ci = add i64 %i.ch, 4                        ; 2 uses
  %i.cj = icmp ugt i64 %i.ch, -5
  %.not19.us.i = icmp ugt i64 %i.ci, %i.o
  %or.cond.us.i = or i1 %i.cj, %.not19.us.i
  br i1 %or.cond.us.i, label %.split.us.i, label %.split77.us.i, !prof !15

bb.k:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.split.preheader.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !140, !noundef !5 ; 6 uses
  %i.cm = add i64 %i.cl, 4                        ; 3 uses
  %i.cn = icmp ugt i64 %i.cl, -5
  %.not19.i = icmp ugt i64 %i.cm, %i.o
  %or.cond.i = or i1 %i.cn, %.not19.i
  br i1 %or.cond.i, label %.split.us.i, label %bb.l, !prof !15

.split.us.i:                                      ; preds = %bb.k, %bb.j
  %.us-phi.i = phi i64 [ %i.ci, %bb.j ], [ %i.cm, %bb.k ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef %.us-phi.i, i64 noundef range(i64 0, -9223372036854775808) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %.split.us.i
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.cb, %i.cl
  br i1 %.not.i.i.i, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cb
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cp, ptr noundef nonnull readonly %.fr.i, ptr noundef nonnull readonly %i.cc)
          to label %.noexc10 unwind label %bb.e

.noexc10:                                         ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !147 ; 9 uses
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !147 ; 9 uses
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !147 ; 7 uses
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !147 ; 5 uses
  %i.cq = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.cq, label %iter.check68, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj1_Es_0B9_.exit.i

iter.check68:                                     ; preds = %.noexc10
  %.sroa.44.0.copyload.i.i.i.i52 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i53 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i) ]
  %i.cr = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i ; 7 uses
  %min.iters.check54 = icmp ult i64 %i.cr, 8
  %i.cs = sub i64 %.sroa.44.0.copyload.i.i.i.i52, %.sroa.0.0.copyload.i.i.i.i53
  %diff.check56 = icmp ugt i64 %i.cs, -32
  %or.cond116 = select i1 %min.iters.check54, i1 true, i1 %diff.check56
  br i1 %or.cond116, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vector.main.loop.iter.check57

vector.main.loop.iter.check57:                    ; preds = %iter.check68
  %min.iters.check58 = icmp ult i64 %i.cr, 32
  br i1 %min.iters.check58, label %vec.epilog.ph72, label %vector.ph59

vector.ph59:                                      ; preds = %vector.main.loop.iter.check57
  %i.ct = and i64 %i.cr, 24
  %n.vec60 = and i64 %i.cr, -32                   ; 4 uses
  %i.cu = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec60
  br label %vector.body61

vector.body61:                                    ; preds = %vector.ph59, %vector.body61
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next65, %vector.body61 ] ; 2 uses
  %i.cv = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index62 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.cv ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load63 = load <16 x i8>, ptr %i.cx, align 1, !noalias !148
  %wide.load64 = load <16 x i8>, ptr %i.cy, align 1, !noalias !148
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <16 x i8> %wide.load63, ptr %i.cw, align 1, !noalias !148
  store <16 x i8> %wide.load64, ptr %i.cz, align 1, !noalias !148
  %index.next65 = add nuw i64 %index62, 32        ; 2 uses
  %i.da = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.da, label %middle.block66, label %vector.body61, !llvm.loop !117

middle.block66:                                   ; preds = %vector.body61
  %cmp.n67 = icmp eq i64 %i.cr, %n.vec60
  br i1 %cmp.n67, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj1_Es_0B9_.exit.i, label %vec.epilog.iter.check69

vec.epilog.iter.check69:                          ; preds = %middle.block66
  %min.epilog.iters.check71 = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check71, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vec.epilog.ph72, !prof !12

vec.epilog.ph72:                                  ; preds = %vector.main.loop.iter.check57, %vec.epilog.iter.check69
  %vec.epilog.resume.val73 = phi i64 [ %n.vec60, %vec.epilog.iter.check69 ], [ 0, %vector.main.loop.iter.check57 ]
  %n.vec74 = and i64 %i.cr, -8                    ; 3 uses
  %i.db = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec74
  br label %vec.epilog.vector.body75

vec.epilog.vector.body75:                         ; preds = %vec.epilog.vector.body75, %vec.epilog.ph72
  %index76 = phi i64 [ %vec.epilog.resume.val73, %vec.epilog.ph72 ], [ %index.next78, %vec.epilog.vector.body75 ] ; 2 uses
  %i.dc = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index76 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.dc
  %wide.load77 = load <8 x i8>, ptr %i.de, align 1, !noalias !148
  store <8 x i8> %wide.load77, ptr %i.dd, align 1, !noalias !148
  %index.next78 = add nuw i64 %index76, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next78, %n.vec74
  br i1 %i.df, label %vec.epilog.middle.block79, label %vec.epilog.vector.body75, !llvm.loop !118

vec.epilog.middle.block79:                        ; preds = %vec.epilog.vector.body75
  %cmp.n80 = icmp eq i64 %i.cr, %n.vec74
  br i1 %cmp.n80, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj1_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader: ; preds = %iter.check68, %vec.epilog.iter.check69, %vec.epilog.middle.block79
  %.sroa.55.010.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i, %iter.check68 ], [ %i.cu, %vec.epilog.iter.check69 ], [ %i.db, %vec.epilog.middle.block79 ] ; 4 uses
  %i.dg = sub i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.010.i.i.i.i.ph
  %xtraiter118 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.prol = phi i64 [ %i.dj, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ] ; 3 uses
  %prol.iter120 = phi i64 [ %prol.iter120.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.dj = add nuw i64 %.sroa.55.010.i.i.i.i.prol, 1 ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1, !noalias !148, !noundef !5
  store i8 %i.dk, ptr %i.dh, align 1, !noalias !148
  %prol.iter120.next = add i64 %prol.iter120, 1   ; 2 uses
  %prol.iter120.cmp.not = icmp eq i64 %prol.iter120.next, %xtraiter118
  br i1 %prol.iter120.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, !llvm.loop !119

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ], [ %i.dj, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ]
  %i.dl = sub i64 %.sroa.55.010.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj1_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.55.010.i.i.i.i = phi i64 [ %i.eb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.dp = add nuw i64 %.sroa.55.010.i.i.i.i, 1    ; 2 uses
  %i.dq = load i8, ptr %i.do, align 1, !noalias !148, !noundef !5
  store i8 %i.dq, ptr %i.dn, align 1, !noalias !148
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.dp
  %i.dt = add nuw i64 %.sroa.55.010.i.i.i.i, 2    ; 2 uses
  %i.du = load i8, ptr %i.ds, align 1, !noalias !148, !noundef !5
  store i8 %i.du, ptr %i.dr, align 1, !noalias !148
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.dt
  %i.dx = add nuw i64 %.sroa.55.010.i.i.i.i, 3    ; 2 uses
  %i.dy = load i8, ptr %i.dw, align 1, !noalias !148, !noundef !5
  store i8 %i.dy, ptr %i.dv, align 1, !noalias !148
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.dx
  %i.eb = add nuw i64 %.sroa.55.010.i.i.i.i, 4    ; 2 uses
  %i.ec = load i8, ptr %i.ea, align 1, !noalias !148, !noundef !5
  store i8 %i.ec, ptr %i.dz, align 1, !noalias !148
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.eb, %.sroa.7.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj1_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !llvm.loop !120

.split77.us.i:                                    ; preds = %bb.j
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
          to label %.noexc11 unwind label %bb.e

.noexc11:                                         ; preds = %.split77.us.i
  unreachable

_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj1_Es_0B9_.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %middle.block66, %vec.epilog.middle.block79, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !142
  store ptr %i.co, ptr %i.f, align 8, !noalias !142
  store i64 %i.cl, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !142
  store i64 %i.cb, ptr %.sroa.737.0..sroa_idx.i, align 8, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !149
  store i64 %i.cl, ptr %i.b, align 8, !noalias !149
  %i.ed = icmp eq i64 %i.cb, %i.cl
  br i1 %i.ed, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter6finish.exit.i, label %bb.o, !prof !9

bb.o:                                             ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj1_Es_0B9_.exit.i
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.737.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @127, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #21
          to label %.noexc12 unwind label %bb.e

.noexc12:                                         ; preds = %bb.o
  unreachable

_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter6finish.exit.i: ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj1_Es_0B9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !142
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %i.cm to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !142
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %i.e, align 2, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !150
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ee, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.cd)
          to label %.noexc14 unwind label %bb.e

.noexc14:                                         ; preds = %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter6finish.exit.i
  %.sroa.0.0.copyload.i.i22.i = load ptr, ptr %i.a, align 8, !noalias !151 ; 9 uses
  %.sroa.44.0.copyload.i.i24.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i23.i, align 8, !noalias !151 ; 9 uses
  %.sroa.55.0.copyload.i.i26.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i25.i, align 8, !noalias !151 ; 7 uses
  %.sroa.7.0.copyload.i.i28.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i27.i, align 8, !noalias !151 ; 5 uses
  %i.ef = icmp ult i64 %.sroa.55.0.copyload.i.i26.i, %.sroa.7.0.copyload.i.i28.i
  br i1 %i.ef, label %iter.check102, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i

iter.check102:                                    ; preds = %.noexc14
  %.sroa.44.0.copyload.i.i24.i86 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i24.i to i64
  %.sroa.0.0.copyload.i.i22.i87 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i22.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i22.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i24.i) ]
  %i.eg = sub nuw i64 %.sroa.7.0.copyload.i.i28.i, %.sroa.55.0.copyload.i.i26.i ; 7 uses
  %min.iters.check88 = icmp ult i64 %i.eg, 8
  %i.eh = sub i64 %.sroa.44.0.copyload.i.i24.i86, %.sroa.0.0.copyload.i.i22.i87
  %diff.check90 = icmp ugt i64 %i.eh, -32
  %or.cond117 = select i1 %min.iters.check88, i1 true, i1 %diff.check90
  br i1 %or.cond117, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, label %vector.main.loop.iter.check91

vector.main.loop.iter.check91:                    ; preds = %iter.check102
  %min.iters.check92 = icmp ult i64 %i.eg, 32
  br i1 %min.iters.check92, label %vec.epilog.ph106, label %vector.ph93

vector.ph93:                                      ; preds = %vector.main.loop.iter.check91
  %i.ei = and i64 %i.eg, 24
  %n.vec94 = and i64 %i.eg, -32                   ; 4 uses
  %i.ej = add i64 %.sroa.55.0.copyload.i.i26.i, %n.vec94
  br label %vector.body95

vector.body95:                                    ; preds = %vector.ph93, %vector.body95
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next99, %vector.body95 ] ; 2 uses
  %i.ek = add nuw i64 %.sroa.55.0.copyload.i.i26.i, %index96 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.ek ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load97 = load <16 x i8>, ptr %i.em, align 1, !noalias !145
  %wide.load98 = load <16 x i8>, ptr %i.en, align 1, !noalias !145
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <16 x i8> %wide.load97, ptr %i.el, align 1, !noalias !145
  store <16 x i8> %wide.load98, ptr %i.eo, align 1, !noalias !145
  %index.next99 = add nuw i64 %index96, 32        ; 2 uses
  %i.ep = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.ep, label %middle.block100, label %vector.body95, !llvm.loop !129

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %i.eg, %n.vec94
  br i1 %cmp.n101, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %vec.epilog.iter.check103

vec.epilog.iter.check103:                         ; preds = %middle.block100
  %min.epilog.iters.check105 = icmp eq i64 %i.ei, 0
  br i1 %min.epilog.iters.check105, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, label %vec.epilog.ph106, !prof !12

vec.epilog.ph106:                                 ; preds = %vector.main.loop.iter.check91, %vec.epilog.iter.check103
  %vec.epilog.resume.val107 = phi i64 [ %n.vec94, %vec.epilog.iter.check103 ], [ 0, %vector.main.loop.iter.check91 ]
  %n.vec108 = and i64 %i.eg, -8                   ; 3 uses
  %i.eq = add i64 %.sroa.55.0.copyload.i.i26.i, %n.vec108
  br label %vec.epilog.vector.body109

vec.epilog.vector.body109:                        ; preds = %vec.epilog.vector.body109, %vec.epilog.ph106
  %index110 = phi i64 [ %vec.epilog.resume.val107, %vec.epilog.ph106 ], [ %index.next112, %vec.epilog.vector.body109 ] ; 2 uses
  %i.er = add nuw i64 %.sroa.55.0.copyload.i.i26.i, %index110 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.er
  %wide.load111 = load <8 x i8>, ptr %i.et, align 1, !noalias !145
  store <8 x i8> %wide.load111, ptr %i.es, align 1, !noalias !145
  %index.next112 = add nuw i64 %index110, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next112, %n.vec108
  br i1 %i.eu, label %vec.epilog.middle.block113, label %vec.epilog.vector.body109, !llvm.loop !130

vec.epilog.middle.block113:                       ; preds = %vec.epilog.vector.body109
  %cmp.n114 = icmp eq i64 %i.eg, %n.vec108
  br i1 %cmp.n114, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader: ; preds = %iter.check102, %vec.epilog.iter.check103, %vec.epilog.middle.block113
  %.sroa.55.010.i.i31.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i26.i, %iter.check102 ], [ %i.ej, %vec.epilog.iter.check103 ], [ %i.eq, %vec.epilog.middle.block113 ] ; 4 uses
  %i.ev = sub i64 %.sroa.7.0.copyload.i.i28.i, %.sroa.55.010.i.i31.i.ph
  %xtraiter121 = and i64 %i.ev, 3                 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol
  %.sroa.55.010.i.i31.i.prol = phi i64 [ %i.ey, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ], [ %.sroa.55.010.i.i31.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ] ; 3 uses
  %prol.iter123 = phi i64 [ %prol.iter123.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %.sroa.55.010.i.i31.i.prol
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %.sroa.55.010.i.i31.i.prol
  %i.ey = add nuw i64 %.sroa.55.010.i.i31.i.prol, 1 ; 2 uses
  %i.ez = load i8, ptr %i.ex, align 1, !noalias !145, !noundef !5
  store i8 %i.ez, ptr %i.ew, align 1, !noalias !145
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol, !llvm.loop !131

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader
  %.sroa.55.010.i.i31.i.unr = phi i64 [ %.sroa.55.010.i.i31.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ], [ %i.ey, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ]
  %i.fa = sub i64 %.sroa.55.010.i.i31.i.ph, %.sroa.7.0.copyload.i.i28.i
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i
  %.sroa.55.010.i.i31.i = phi i64 [ %i.fq, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i ], [ %.sroa.55.010.i.i31.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit ] ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %.sroa.55.010.i.i31.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %.sroa.55.010.i.i31.i
  %i.fe = add nuw i64 %.sroa.55.010.i.i31.i, 1    ; 2 uses
  %i.ff = load i8, ptr %i.fd, align 1, !noalias !145, !noundef !5
  store i8 %i.ff, ptr %i.fc, align 1, !noalias !145
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.fe
  %i.fi = add nuw i64 %.sroa.55.010.i.i31.i, 2    ; 2 uses
  %i.fj = load i8, ptr %i.fh, align 1, !noalias !145, !noundef !5
  store i8 %i.fj, ptr %i.fg, align 1, !noalias !145
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.fi
  %i.fm = add nuw i64 %.sroa.55.010.i.i31.i, 3    ; 2 uses
  %i.fn = load i8, ptr %i.fl, align 1, !noalias !145, !noundef !5
  store i8 %i.fn, ptr %i.fk, align 1, !noalias !145
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.fm
  %i.fq = add nuw i64 %.sroa.55.010.i.i31.i, 4    ; 2 uses
  %i.fr = load i8, ptr %i.fp, align 1, !noalias !145, !noundef !5
  store i8 %i.fr, ptr %i.fo, align 1, !noalias !145
  %exitcond.not.i.i32.i.3 = icmp eq i64 %i.fq, %.sroa.7.0.copyload.i.i28.i
  br i1 %exitcond.not.i.i32.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i, !llvm.loop !132

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i, %middle.block100, %vec.epilog.middle.block113, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !142
  br label %bb.q

bb.p:                                             ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  unreachable

bb.q:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.split.us.preheader.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.split.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %._crit_edge.i.thread

bb.r:                                             ; preds = %bb.f
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj5_NCINvB2_6encodeKB1l_Es_0EB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.k = load i64, ptr %0, align 8, !range !6, !alias.scope !198, !noundef !5 ; 2 uses
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %.sroa.08.1.i = select i1 %i.l, i64 %i.n, i64 0 ; 3 uses
  %i.o = trunc nuw i64 %i.k to i16                ; 2 uses
  %.sroa.0.01929.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %.sroa.0.01929.i.ptr.1, align 8, !range !6, !alias.scope !198, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %.lr.ph.i.2

bb.a:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %.sroa.0.1.i.470 = phi i16 [ %i.aw, %._crit_edge.i.thread ], [ %.sroa.0.1.i.3, %._crit_edge.i ] ; 2 uses
  %.sroa.08.1.i.469 = phi i64 [ %i.au, %._crit_edge.i.thread ], [ %.sroa.08.1.i.3, %._crit_edge.i ]
  %i.r = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.1.i.470)
  %i.s = shl nuw nsw i16 %i.r, 1
  %narrow.i = add nuw nsw i16 %i.s, 2
  %i.t = zext nneg i16 %narrow.i to i64           ; 3 uses
  %i.u = add i64 %.sroa.08.1.i.469, %i.t          ; 10 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.w = icmp ult i64 %i.u, 65536
  br i1 %i.w, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #21, !noalias !199
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @132, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #21, !noalias !199
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !198, !noundef !5
  %i.z = add i64 %i.y, %.sroa.08.1.i              ; 2 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.08.1.i
  br i1 %i.aa, label %bb.l, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.ab = or disjoint i16 %i.o, 2
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.f, %.lr.ph.i
  %.sroa.08.1.i.1 = phi i64 [ %i.z, %bb.f ], [ %.sroa.08.1.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0.1.i.1 = phi i16 [ %i.ab, %bb.f ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.sroa.0.01929.i.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i64, ptr %.sroa.0.01929.i.ptr.2, align 8, !range !6, !alias.scope !198, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %.lr.ph.i.3

bb.g:                                             ; preds = %.lr.ph.i.2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !198, !noundef !5
  %i.ag = add i64 %i.af, %.sroa.08.1.i.1          ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %.sroa.08.1.i.1
  br i1 %i.ah, label %bb.l, label %bb.h, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.ai = or i16 %.sroa.0.1.i.1, 4
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.sroa.08.1.i.2 = phi i64 [ %i.ag, %bb.h ], [ %.sroa.08.1.i.1, %.lr.ph.i.2 ] ; 3 uses
  %.sroa.0.1.i.2 = phi i16 [ %i.ai, %bb.h ], [ %.sroa.0.1.i.1, %.lr.ph.i.2 ] ; 2 uses
  %.sroa.0.01929.i.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i64, ptr %.sroa.0.01929.i.ptr.3, align 8, !range !6, !alias.scope !198, !noundef !5
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %.lr.ph.i.4

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !198, !noundef !5
  %i.an = add i64 %i.am, %.sroa.08.1.i.2          ; 2 uses
  %i.ao = icmp ult i64 %i.an, %.sroa.08.1.i.2
  br i1 %i.ao, label %bb.l, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.ap = or i16 %.sroa.0.1.i.2, 8
  br label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.j, %.lr.ph.i.3
  %.sroa.08.1.i.3 = phi i64 [ %i.an, %bb.j ], [ %.sroa.08.1.i.2, %.lr.ph.i.3 ] ; 3 uses
  %.sroa.0.1.i.3 = phi i16 [ %i.ap, %bb.j ], [ %.sroa.0.1.i.2, %.lr.ph.i.3 ] ; 3 uses
  %.sroa.0.01929.i.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load i64, ptr %.sroa.0.01929.i.ptr.4, align 8, !range !6, !alias.scope !198, !noundef !5
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %.lr.ph.i.4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !198, !noundef !5
  %i.au = add i64 %i.at, %.sroa.08.1.i.3          ; 2 uses
  %i.av = icmp ult i64 %i.au, %.sroa.08.1.i.3
  br i1 %i.av, label %bb.l, label %._crit_edge.i.thread, !prof !14

._crit_edge.i.thread:                             ; preds = %bb.k
  %i.aw = or i16 %.sroa.0.1.i.3, 16
  br label %bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i.4
  %i.ax = icmp eq i16 %.sroa.0.1.i.3, 0
  br i1 %i.ax, label %bb.m, label %bb.a

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g, %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #21, !noalias !199
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ay = tail call { ptr, i64 } @_RNvMsq_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE18allocate_for_sliceCs5XgW7KoffLW_12opendal_core(i64 noundef %i.u) ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 4 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  store ptr %i.az, ptr %i.j, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.ba, ptr %i.bb, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bd = cmpxchg ptr %i.bc, i64 1, i64 -1 acquire monotonic, align 8
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !7

bb.m:                                             ; preds = %._crit_edge.i, %bb.ae
  %.sroa.3.0 = phi i64 [ %i.u, %bb.ae ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi ptr [ %i.bm, %bb.ae ], [ null, %._crit_edge.i ]
  %i.bf = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bg = insertvalue { ptr, i64 } %i.bf, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bg

.loopexit.split-lp.loopexit:                      ; preds = %bb.y, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.u, %bb.q, %bb.p, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.j, align 8, !alias.scope !200
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.bh = phi ptr [ %i.bm, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.bi = atomicrmw add ptr %i.bh, i64 -1 release, align 8, !noalias !200
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit

bb.n:                                             ; preds = %.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.af

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit
  %i.bk = load atomic i64, ptr %i.az acquire, align 8
  %i.bl = icmp eq i64 %i.bk, 1
  store atomic i64 1, ptr %i.bc release, align 8
  br i1 %i.bl, label %bb.o, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !8

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  %i.bm = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.bn = load i64, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !205
  store i64 %i.u, ptr %i.i, align 8, !noalias !205
  store i64 %i.bn, ptr %i.h, align 8, !noalias !205
  %i.bp = icmp eq i64 %i.bn, %i.u
  br i1 %i.bp, label %bb.q, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !205
  store i16 %.sroa.0.1.i.470, ptr %i.g, align 2, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !206
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 18
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bq, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.br)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !noalias !207 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !207 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !207 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !207 ; 5 uses
  %i.bs = icmp ult i64 %.sroa.55.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  br i1 %i.bs, label %iter.check, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i

iter.check:                                       ; preds = %.noexc7
  %.sroa.44.0.copyload.i.i.i99 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i100 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i) ]
  %i.bt = sub nuw i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.0.copyload.i.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.bt, 8
  %i.bu = sub i64 %.sroa.44.0.copyload.i.i.i99, %.sroa.0.0.copyload.i.i.i100
  %diff.check = icmp ugt i64 %i.bu, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check101 = icmp ult i64 %i.bt, 32
  br i1 %min.iters.check101, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %i.bt, 24
  %n.vec = and i64 %i.bt, -32                     ; 4 uses
  %i.bw = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bx ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <16 x i8>, ptr %i.bz, align 1, !noalias !208
  %wide.load102 = load <16 x i8>, ptr %i.ca, align 1, !noalias !208
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <16 x i8> %wide.load, ptr %i.by, align 1, !noalias !208
  store <16 x i8> %wide.load102, ptr %i.cb, align 1, !noalias !208
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec103 = and i64 %i.bt, -8                   ; 3 uses
  %i.cd = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec103
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index104 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 2 uses
  %i.ce = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index104 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ce
  %wide.load105 = load <8 x i8>, ptr %i.cg, align 1, !noalias !208
  store <8 x i8> %wide.load105, ptr %i.cf, align 1, !noalias !208
  %index.next106 = add nuw i64 %index104, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next106, %n.vec103
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !171

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.bt, %n.vec103
  br i1 %cmp.n107, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 4 uses
  %i.ci = sub i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.010.i.i.i.ph
  %xtraiter = and i64 %i.ci, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol
  %.sroa.55.010.i.i.i.prol = phi i64 [ %i.cl, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.cl = add nuw i64 %.sroa.55.010.i.i.i.prol, 1 ; 2 uses
  %i.cm = load i8, ptr %i.ck, align 1, !noalias !208, !noundef !5
  store i8 %i.cm, ptr %i.cj, align 1, !noalias !208
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, !llvm.loop !172

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader
  %.sroa.55.010.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ], [ %i.cl, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ]
  %i.cn = sub i64 %.sroa.55.010.i.i.i.ph, %.sroa.7.0.copyload.i.i.i
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  %.sroa.55.010.i.i.i = phi i64 [ %i.dd, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i ], [ %.sroa.55.010.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.cr = add nuw i64 %.sroa.55.010.i.i.i, 1      ; 2 uses
  %i.cs = load i8, ptr %i.cq, align 1, !noalias !208, !noundef !5
  store i8 %i.cs, ptr %i.cp, align 1, !noalias !208
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.cr
  %i.cv = add nuw i64 %.sroa.55.010.i.i.i, 2      ; 2 uses
  %i.cw = load i8, ptr %i.cu, align 1, !noalias !208, !noundef !5
  store i8 %i.cw, ptr %i.ct, align 1, !noalias !208
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.cv
  %i.cz = add nuw i64 %.sroa.55.010.i.i.i, 3      ; 2 uses
  %i.da = load i8, ptr %i.cy, align 1, !noalias !208, !noundef !5
  store i8 %i.da, ptr %i.cx, align 1, !noalias !208
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.cz
  %i.dd = add nuw i64 %.sroa.55.010.i.i.i, 4      ; 2 uses
  %i.de = load i8, ptr %i.dc, align 1, !noalias !208, !noundef !5
  store i8 %i.de, ptr %i.db, align 1, !noalias !208
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.dd, %.sroa.7.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !llvm.loop !173

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !205
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.44.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i
  %.sroa.0.070.i = phi i64 [ %i.t, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.0.1.i5, %bb.t ] ; 5 uses
  %.sroa.04.069.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.04.1.i, %bb.t ] ; 3 uses
  %.sroa.034.0.idx68.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.034.0.add.i, %bb.t ] ; 2 uses
  %.sroa.7.067.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %i.dg, %bb.t ] ; 2 uses
  %.sroa.034.0.ptr71.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.034.0.idx68.i ; 2 uses
  %.sroa.034.0.add.i = add nuw nsw i64 %.sroa.034.0.idx68.i, 16 ; 2 uses
  %i.dg = add nuw nsw i64 %.sroa.7.067.i, 1
  %i.dh = load i64, ptr %.sroa.034.0.ptr71.i, align 8, !range !6, !alias.scope !203, !noundef !5
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.034.0.ptr71.i, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !203, !noundef !5 ; 5 uses
  %i.dl = add i64 %i.dk, %.sroa.0.070.i           ; 5 uses
  %i.dm = icmp ult i64 %i.dl, %.sroa.0.070.i
  %.not19.i = icmp ugt i64 %i.dl, %i.u
  %or.cond.i = or i1 %i.dm, %.not19.i
  br i1 %or.cond.i, label %bb.u, label %bb.v, !prof !15

bb.t:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, %bb.r
  %.sroa.04.1.i = phi i64 [ %i.hc, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i ], [ %.sroa.04.069.i, %bb.r ]
  %.sroa.0.1.i5 = phi i64 [ %i.dl, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i ], [ %.sroa.0.070.i, %bb.r ]
  %i.dn = icmp eq i64 %.sroa.034.0.add.i, 80
  br i1 %i.dn, label %bb.ae, label %bb.r

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.070.i, i64 noundef %i.dl, i64 noundef range(i64 0, -9223372036854775808) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.0.070.i ; 3 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.7.067.i ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !204, !noalias !209, !noundef !5 ; 3 uses
  %.not.i20.i = icmp eq ptr %i.dq, null
  br i1 %.not.i20.i, label %bb.z, label %bb.w, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !204, !noalias !209 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.ds, %i.dk
  br i1 %.not.i.i.i, label %bb.x, label %bb.y, !prof !14

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !210
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dt, ptr noundef nonnull readonly %i.dq, ptr noundef nonnull readonly %i.du)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %bb.y
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !211 ; 9 uses
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !211 ; 9 uses
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !211 ; 7 uses
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !211 ; 5 uses
  %i.dv = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.dv, label %iter.check154, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj5_Es_0B9_.exit.i

iter.check154:                                    ; preds = %.noexc11
  %.sroa.44.0.copyload.i.i.i.i140 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i139 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i) ]
  %i.dw = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i ; 7 uses
  %min.iters.check142 = icmp ult i64 %i.dw, 8
  %i.dx = sub i64 %.sroa.44.0.copyload.i.i.i.i140, %.sroa.0.0.copyload.i.i.i.i139
  %diff.check141 = icmp ugt i64 %i.dx, -32
  %or.cond168 = select i1 %min.iters.check142, i1 true, i1 %diff.check141
  br i1 %or.cond168, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vector.main.loop.iter.check143

vector.main.loop.iter.check143:                   ; preds = %iter.check154
  %min.iters.check144 = icmp ult i64 %i.dw, 32
  br i1 %min.iters.check144, label %vec.epilog.ph158, label %vector.ph145

vector.ph145:                                     ; preds = %vector.main.loop.iter.check143
  %i.dy = and i64 %i.dw, 24
  %n.vec146 = and i64 %i.dw, -32                  ; 4 uses
  %i.dz = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec146
  br label %vector.body147

vector.body147:                                   ; preds = %vector.ph145, %vector.body147
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next151, %vector.body147 ] ; 2 uses
  %i.ea = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index148 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load149 = load <16 x i8>, ptr %i.ec, align 1, !noalias !212
  %wide.load150 = load <16 x i8>, ptr %i.ed, align 1, !noalias !212
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <16 x i8> %wide.load149, ptr %i.eb, align 1, !noalias !212
  store <16 x i8> %wide.load150, ptr %i.ee, align 1, !noalias !212
  %index.next151 = add nuw i64 %index148, 32      ; 2 uses
  %i.ef = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.ef, label %middle.block152, label %vector.body147, !llvm.loop !182

middle.block152:                                  ; preds = %vector.body147
  %cmp.n153 = icmp eq i64 %i.dw, %n.vec146
  br i1 %cmp.n153, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj5_Es_0B9_.exit.i, label %vec.epilog.iter.check155

vec.epilog.iter.check155:                         ; preds = %middle.block152
  %min.epilog.iters.check157 = icmp eq i64 %i.dy, 0
  br i1 %min.epilog.iters.check157, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vec.epilog.ph158, !prof !12

vec.epilog.ph158:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check155
  %vec.epilog.resume.val159 = phi i64 [ %n.vec146, %vec.epilog.iter.check155 ], [ 0, %vector.main.loop.iter.check143 ]
  %n.vec160 = and i64 %i.dw, -8                   ; 3 uses
  %i.eg = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec160
  br label %vec.epilog.vector.body161

vec.epilog.vector.body161:                        ; preds = %vec.epilog.vector.body161, %vec.epilog.ph158
  %index162 = phi i64 [ %vec.epilog.resume.val159, %vec.epilog.ph158 ], [ %index.next164, %vec.epilog.vector.body161 ] ; 2 uses
  %i.eh = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index162 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.eh
  %wide.load163 = load <8 x i8>, ptr %i.ej, align 1, !noalias !212
  store <8 x i8> %wide.load163, ptr %i.ei, align 1, !noalias !212
  %index.next164 = add nuw i64 %index162, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next164, %n.vec160
  br i1 %i.ek, label %vec.epilog.middle.block165, label %vec.epilog.vector.body161, !llvm.loop !183

vec.epilog.middle.block165:                       ; preds = %vec.epilog.vector.body161
  %cmp.n166 = icmp eq i64 %i.dw, %n.vec160
  br i1 %cmp.n166, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj5_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader: ; preds = %iter.check154, %vec.epilog.iter.check155, %vec.epilog.middle.block165
  %.sroa.55.010.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i, %iter.check154 ], [ %i.dz, %vec.epilog.iter.check155 ], [ %i.eg, %vec.epilog.middle.block165 ] ; 4 uses
  %i.el = sub i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.010.i.i.i.i.ph
  %xtraiter183 = and i64 %i.el, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.prol = phi i64 [ %i.eo, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.eo = add nuw i64 %.sroa.55.010.i.i.i.i.prol, 1 ; 2 uses
  %i.ep = load i8, ptr %i.en, align 1, !noalias !212, !noundef !5
  store i8 %i.ep, ptr %i.em, align 1, !noalias !212
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, !llvm.loop !184

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ], [ %i.eo, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ]
  %i.eq = sub i64 %.sroa.55.010.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj5_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.55.010.i.i.i.i = phi i64 [ %i.fg, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.eu = add nuw i64 %.sroa.55.010.i.i.i.i, 1    ; 2 uses
  %i.ev = load i8, ptr %i.et, align 1, !noalias !212, !noundef !5
  store i8 %i.ev, ptr %i.es, align 1, !noalias !212
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.eu
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.eu
  %i.ey = add nuw i64 %.sroa.55.010.i.i.i.i, 2    ; 2 uses
  %i.ez = load i8, ptr %i.ex, align 1, !noalias !212, !noundef !5
  store i8 %i.ez, ptr %i.ew, align 1, !noalias !212
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.ey
  %i.fc = add nuw i64 %.sroa.55.010.i.i.i.i, 3    ; 2 uses
  %i.fd = load i8, ptr %i.fb, align 1, !noalias !212, !noundef !5
  store i8 %i.fd, ptr %i.fa, align 1, !noalias !212
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fc
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fc
  %i.fg = add nuw i64 %.sroa.55.010.i.i.i.i, 4    ; 2 uses
  %i.fh = load i8, ptr %i.ff, align 1, !noalias !212, !noundef !5
  store i8 %i.fh, ptr %i.fe, align 1, !noalias !212
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fg, %.sroa.7.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj5_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !llvm.loop !185

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.z
  unreachable

_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj5_Es_0B9_.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %middle.block152, %vec.epilog.middle.block165, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !205
  store ptr %i.do, ptr %i.f, align 8, !noalias !205
  store i64 %i.dk, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !205
  store i64 %i.ds, ptr %.sroa.737.0..sroa_idx.i, align 8, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !213
  store i64 %i.dk, ptr %i.b, align 8, !noalias !213
  %i.fi = icmp eq i64 %i.ds, %i.dk
  br i1 %i.fi, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i, label %bb.aa, !prof !9

bb.aa:                                            ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj5_Es_0B9_.exit.i
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.737.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @127, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #21
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.aa
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj5_Es_0B9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !205
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %i.dl to i16
  %i.fj = shl i64 %.sroa.04.069.i, 1              ; 2 uses
  %i.fk = add i64 %i.fj, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !205
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %i.e, align 2, !noalias !205
  %i.fl = add i64 %i.fj, 4                        ; 2 uses
  %i.fm = icmp eq i64 %i.fk, -2
  %.not.i21.i = icmp ugt i64 %i.fl, %i.u
  %or.cond.i.i = or i1 %i.fm, %.not.i21.i
  br i1 %or.cond.i.i, label %bb.ac, label %bb.ab, !prof !15

bb.ab:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.fk ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !214
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.fo, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.df)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.ab
  %.sroa.0.0.copyload.i.i22.i = load ptr, ptr %i.a, align 8, !noalias !215 ; 9 uses
  %.sroa.44.0.copyload.i.i24.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i23.i, align 8, !noalias !215 ; 9 uses
  %.sroa.55.0.copyload.i.i26.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i25.i, align 8, !noalias !215 ; 7 uses
  %.sroa.7.0.copyload.i.i28.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i27.i, align 8, !noalias !215 ; 5 uses
  %i.fp = icmp ult i64 %.sroa.55.0.copyload.i.i26.i, %.sroa.7.0.copyload.i.i28.i
  br i1 %i.fp, label %iter.check124, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i

iter.check124:                                    ; preds = %.noexc15
  %.sroa.44.0.copyload.i.i24.i110 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i24.i to i64
  %.sroa.0.0.copyload.i.i22.i109 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i22.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i22.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i24.i) ]
  %i.fq = sub nuw i64 %.sroa.7.0.copyload.i.i28.i, %.sroa.55.0.copyload.i.i26.i ; 7 uses
  %min.iters.check112 = icmp ult i64 %i.fq, 8
  %i.fr = sub i64 %.sroa.44.0.copyload.i.i24.i110, %.sroa.0.0.copyload.i.i22.i109
  %diff.check111 = icmp ugt i64 %i.fr, -32
  %or.cond169 = select i1 %min.iters.check112, i1 true, i1 %diff.check111
  br i1 %or.cond169, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, label %vector.main.loop.iter.check113

vector.main.loop.iter.check113:                   ; preds = %iter.check124
  %min.iters.check114 = icmp ult i64 %i.fq, 32
  br i1 %min.iters.check114, label %vec.epilog.ph128, label %vector.ph115

vector.ph115:                                     ; preds = %vector.main.loop.iter.check113
  %i.fs = and i64 %i.fq, 24
  %n.vec116 = and i64 %i.fq, -32                  ; 4 uses
  %i.ft = add i64 %.sroa.55.0.copyload.i.i26.i, %n.vec116
  br label %vector.body117

vector.body117:                                   ; preds = %vector.ph115, %vector.body117
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next121, %vector.body117 ] ; 2 uses
  %i.fu = add nuw i64 %.sroa.55.0.copyload.i.i26.i, %index118 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load119 = load <16 x i8>, ptr %i.fw, align 1, !noalias !208
  %wide.load120 = load <16 x i8>, ptr %i.fx, align 1, !noalias !208
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <16 x i8> %wide.load119, ptr %i.fv, align 1, !noalias !208
  store <16 x i8> %wide.load120, ptr %i.fy, align 1, !noalias !208
  %index.next121 = add nuw i64 %index118, 32      ; 2 uses
  %i.fz = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.fz, label %middle.block122, label %vector.body117, !llvm.loop !194

middle.block122:                                  ; preds = %vector.body117
  %cmp.n123 = icmp eq i64 %i.fq, %n.vec116
  br i1 %cmp.n123, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %vec.epilog.iter.check125

vec.epilog.iter.check125:                         ; preds = %middle.block122
  %min.epilog.iters.check127 = icmp eq i64 %i.fs, 0
  br i1 %min.epilog.iters.check127, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, label %vec.epilog.ph128, !prof !12

vec.epilog.ph128:                                 ; preds = %vector.main.loop.iter.check113, %vec.epilog.iter.check125
  %vec.epilog.resume.val129 = phi i64 [ %n.vec116, %vec.epilog.iter.check125 ], [ 0, %vector.main.loop.iter.check113 ]
  %n.vec130 = and i64 %i.fq, -8                   ; 3 uses
  %i.ga = add i64 %.sroa.55.0.copyload.i.i26.i, %n.vec130
  br label %vec.epilog.vector.body131

vec.epilog.vector.body131:                        ; preds = %vec.epilog.vector.body131, %vec.epilog.ph128
  %index132 = phi i64 [ %vec.epilog.resume.val129, %vec.epilog.ph128 ], [ %index.next134, %vec.epilog.vector.body131 ] ; 2 uses
  %i.gb = add nuw i64 %.sroa.55.0.copyload.i.i26.i, %index132 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.gb
  %wide.load133 = load <8 x i8>, ptr %i.gd, align 1, !noalias !208
  store <8 x i8> %wide.load133, ptr %i.gc, align 1, !noalias !208
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next134, %n.vec130
  br i1 %i.ge, label %vec.epilog.middle.block135, label %vec.epilog.vector.body131, !llvm.loop !195

vec.epilog.middle.block135:                       ; preds = %vec.epilog.vector.body131
  %cmp.n136 = icmp eq i64 %i.fq, %n.vec130
  br i1 %cmp.n136, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader: ; preds = %iter.check124, %vec.epilog.iter.check125, %vec.epilog.middle.block135
  %.sroa.55.010.i.i31.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i26.i, %iter.check124 ], [ %i.ft, %vec.epilog.iter.check125 ], [ %i.ga, %vec.epilog.middle.block135 ] ; 4 uses
  %i.gf = sub i64 %.sroa.7.0.copyload.i.i28.i, %.sroa.55.010.i.i31.i.ph
  %xtraiter186 = and i64 %i.gf, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol
  %.sroa.55.010.i.i31.i.prol = phi i64 [ %i.gi, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ], [ %.sroa.55.010.i.i31.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ] ; 3 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %.sroa.55.010.i.i31.i.prol
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %.sroa.55.010.i.i31.i.prol
  %i.gi = add nuw i64 %.sroa.55.010.i.i31.i.prol, 1 ; 2 uses
  %i.gj = load i8, ptr %i.gh, align 1, !noalias !208, !noundef !5
  store i8 %i.gj, ptr %i.gg, align 1, !noalias !208
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol, !llvm.loop !196

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader
  %.sroa.55.010.i.i31.i.unr = phi i64 [ %.sroa.55.010.i.i31.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ], [ %i.gi, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ]
  %i.gk = sub i64 %.sroa.55.010.i.i31.i.ph, %.sroa.7.0.copyload.i.i28.i
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i
  %.sroa.55.010.i.i31.i = phi i64 [ %i.ha, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i ], [ %.sroa.55.010.i.i31.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit ] ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %.sroa.55.010.i.i31.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %.sroa.55.010.i.i31.i
  %i.go = add nuw i64 %.sroa.55.010.i.i31.i, 1    ; 2 uses
  %i.gp = load i8, ptr %i.gn, align 1, !noalias !208, !noundef !5
  store i8 %i.gp, ptr %i.gm, align 1, !noalias !208
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.go
  %i.gs = add nuw i64 %.sroa.55.010.i.i31.i, 2    ; 2 uses
  %i.gt = load i8, ptr %i.gr, align 1, !noalias !208, !noundef !5
  store i8 %i.gt, ptr %i.gq, align 1, !noalias !208
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.gs
  %i.gw = add nuw i64 %.sroa.55.010.i.i31.i, 3    ; 2 uses
  %i.gx = load i8, ptr %i.gv, align 1, !noalias !208, !noundef !5
  store i8 %i.gx, ptr %i.gu, align 1, !noalias !208
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.gw
  %i.ha = add nuw i64 %.sroa.55.010.i.i31.i, 4    ; 2 uses
  %i.hb = load i8, ptr %i.gz, align 1, !noalias !208, !noundef !5
  store i8 %i.hb, ptr %i.gy, align 1, !noalias !208
  %exitcond.not.i.i32.i.3 = icmp eq i64 %i.ha, %.sroa.7.0.copyload.i.i28.i
  br i1 %exitcond.not.i.i32.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i, !llvm.loop !197

bb.ac:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.fk, i64 noundef %i.fl, i64 noundef range(i64 0, -9223372036854775808) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #21
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.ac
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i, %middle.block122, %vec.epilog.middle.block135, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !205
  %i.hc = add i64 %.sroa.04.069.i, 1
  br label %bb.t

bb.ad:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  unreachable

bb.ae:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.m

bb.af:                                            ; preds = %bb.n
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.loopexit.split-lp, %bb.n
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj9_NCNvMsg_NtNtB7_3raw3opsNtB1w_7OpWrite12from_optionss_0EB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.l = load i64, ptr %0, align 8, !range !6, !alias.scope !263, !noundef !5 ; 2 uses
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.sroa.08.1.i = select i1 %i.m, i64 %i.o, i64 0 ; 3 uses
  %i.p = trunc nuw i64 %i.l to i16                ; 2 uses
  %.sroa.0.01929.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %.sroa.0.01929.i.ptr.1, align 8, !range !6, !alias.scope !263, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %.lr.ph.i.2

bb.a:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %.sroa.0.1.i.879 = phi i16 [ %i.bz, %._crit_edge.i.thread ], [ %.sroa.0.1.i.7, %._crit_edge.i ] ; 2 uses
  %.sroa.08.1.i.878 = phi i64 [ %i.bx, %._crit_edge.i.thread ], [ %.sroa.08.1.i.7, %._crit_edge.i ]
  %i.s = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.1.i.879)
  %i.t = shl nuw nsw i16 %i.s, 1
  %narrow.i = add nuw nsw i16 %i.t, 2
  %i.u = zext nneg i16 %narrow.i to i64           ; 3 uses
  %i.v = add i64 %.sroa.08.1.i.878, %i.u          ; 10 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.x = icmp ult i64 %i.v, 65536
  br i1 %i.x, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #21, !noalias !264
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @132, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #21, !noalias !264
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !263, !noundef !5
  %i.aa = add i64 %i.z, %.sroa.08.1.i             ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %.sroa.08.1.i
  br i1 %i.ab, label %bb.t, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj9_NCNvMsg_NtNtB7_3raw3opsNtB1w_7OpWrite12from_optionss_0EB7_:.lr.ph.i
  %.sroa.0.01929.i.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load i64, ptr %.sroa.0.01929.i.ptr.4, align 8, !range !6, !alias.scope !263, !noundef !5
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.k, label %.lr.ph.i.5

bb.k:                                             ; preds = %.lr.ph.i.4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !263, !noundef !5
  %i.av = add i64 %i.au, %.sroa.08.1.i.3          ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.sroa.08.1.i.3
  br i1 %i.aw, label %bb.t, label %bb.l, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.ax = or i16 %.sroa.0.1.i.3, 16
  br label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.l, %.lr.ph.i.4
  %.sroa.08.1.i.4 = phi i64 [ %i.av, %bb.l ], [ %.sroa.08.1.i.3, %.lr.ph.i.4 ] ; 3 uses
  %.sroa.0.1.i.4 = phi i16 [ %i.ax, %bb.l ], [ %.sroa.0.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.0.01929.i.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load i64, ptr %.sroa.0.01929.i.ptr.5, align 8, !range !6, !alias.scope !263, !noundef !5
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.m, label %.lr.ph.i.6

bb.m:                                             ; preds = %.lr.ph.i.5
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !263, !noundef !5
  %i.bc = add i64 %i.bb, %.sroa.08.1.i.4          ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %.sroa.08.1.i.4
  br i1 %i.bd, label %bb.t, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.be = or i16 %.sroa.0.1.i.4, 32
  br label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.n, %.lr.ph.i.5
  %.sroa.08.1.i.5 = phi i64 [ %i.bc, %bb.n ], [ %.sroa.08.1.i.4, %.lr.ph.i.5 ] ; 3 uses
  %.sroa.0.1.i.5 = phi i16 [ %i.be, %bb.n ], [ %.sroa.0.1.i.4, %.lr.ph.i.5 ] ; 2 uses
  %.sroa.0.01929.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = load i64, ptr %.sroa.0.01929.i.ptr.6, align 8, !range !6, !alias.scope !263, !noundef !5
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %.lr.ph.i.7

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !263, !noundef !5
  %i.bj = add i64 %i.bi, %.sroa.08.1.i.5          ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.08.1.i.5
  br i1 %i.bk, label %bb.t, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.bl = or i16 %.sroa.0.1.i.5, 64
  br label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.p, %.lr.ph.i.6
  %.sroa.08.1.i.6 = phi i64 [ %i.bj, %bb.p ], [ %.sroa.08.1.i.5, %.lr.ph.i.6 ] ; 3 uses
  %.sroa.0.1.i.6 = phi i16 [ %i.bl, %bb.p ], [ %.sroa.0.1.i.5, %.lr.ph.i.6 ] ; 2 uses
  %.sroa.0.01929.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load i64, ptr %.sroa.0.01929.i.ptr.7, align 8, !range !6, !alias.scope !263, !noundef !5
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.q, label %.lr.ph.i.8

bb.q:                                             ; preds = %.lr.ph.i.7
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !263, !noundef !5
  %i.bq = add i64 %i.bp, %.sroa.08.1.i.6          ; 2 uses
  %i.br = icmp ult i64 %i.bq, %.sroa.08.1.i.6
  br i1 %i.br, label %bb.t, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.bs = or i16 %.sroa.0.1.i.6, 128
  br label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %bb.r, %.lr.ph.i.7
  %.sroa.08.1.i.7 = phi i64 [ %i.bq, %bb.r ], [ %.sroa.08.1.i.6, %.lr.ph.i.7 ] ; 3 uses
  %.sroa.0.1.i.7 = phi i16 [ %i.bs, %bb.r ], [ %.sroa.0.1.i.6, %.lr.ph.i.7 ] ; 3 uses
  %.sroa.0.01929.i.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bt = load i64, ptr %.sroa.0.01929.i.ptr.8, align 8, !range !6, !alias.scope !263, !noundef !5
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %bb.s, label %._crit_edge.i

bb.s:                                             ; preds = %.lr.ph.i.8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !263, !noundef !5
  %i.bx = add i64 %i.bw, %.sroa.08.1.i.7          ; 2 uses
  %i.by = icmp ult i64 %i.bx, %.sroa.08.1.i.7
  br i1 %i.by, label %bb.t, label %._crit_edge.i.thread, !prof !14

._crit_edge.i.thread:                             ; preds = %bb.s
  %i.bz = or i16 %.sroa.0.1.i.7, 256
  br label %bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i.8
  %i.ca = icmp eq i16 %.sroa.0.1.i.7, 0
  br i1 %i.ca, label %bb.u, label %bb.a

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #21, !noalias !264
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cb = tail call { ptr, i64 } @_RNvMsq_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE18allocate_for_sliceCs5XgW7KoffLW_12opendal_core(i64 noundef %i.v) ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0      ; 4 uses
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1
  store ptr %i.cc, ptr %i.k, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 %i.cd, ptr %i.ce, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cg = cmpxchg ptr %i.cf, i64 1, i64 -1 acquire monotonic, align 8
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  br i1 %i.ch, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !7

bb.u:                                             ; preds = %._crit_edge.i, %bb.ao
  %.sroa.3.0 = phi i64 [ %i.v, %bb.ao ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi ptr [ %i.cp, %bb.ao ], [ null, %._crit_edge.i ]
  %i.ci = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.cj = insertvalue { ptr, i64 } %i.ci, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.cj

.loopexit.split-lp.loopexit:                      ; preds = %bb.af, %bb.aj, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.am, %bb.ak, %bb.ai, %bb.ac, %bb.y, %bb.x, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !265
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.ck = phi ptr [ %i.cp, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp42, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !265
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit

bb.v:                                             ; preds = %.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.ap

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit
  %i.cn = load atomic i64, ptr %i.cc acquire, align 8
  %i.co = icmp eq i64 %i.cn, 1
  store atomic i64 1, ptr %i.cf release, align 8
  br i1 %i.co, label %bb.w, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !8

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  %i.cp = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cq = load i64, ptr %i.ce, align 8, !noundef !5 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !271
  store i64 %i.v, ptr %i.j, align 8, !noalias !271
  store i64 %i.cq, ptr %i.i, align 8, !noalias !271
  %i.cs = icmp eq i64 %i.cq, %i.v
  br i1 %i.cs, label %bb.y, label %bb.x, !prof !9

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !271
  store i16 %.sroa.0.1.i.879, ptr %i.h, align 2, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !272
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.ct, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.cu)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.y
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !noalias !273 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !273 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !273 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !273 ; 5 uses
  %i.cv = icmp ult i64 %.sroa.55.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  br i1 %i.cv, label %iter.check, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i

iter.check:                                       ; preds = %.noexc7
  %.sroa.44.0.copyload.i.i.i110 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i111 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i) ]
  %i.cw = sub nuw i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.0.copyload.i.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.cw, 8
  %i.cx = sub i64 %.sroa.44.0.copyload.i.i.i110, %.sroa.0.0.copyload.i.i.i111
  %diff.check = icmp ugt i64 %i.cx, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.cw, 32
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = and i64 %i.cw, 24
  %n.vec = and i64 %i.cw, -32                     ; 4 uses
  %i.cz = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <16 x i8>, ptr %i.dc, align 1, !noalias !274
  %wide.load113 = load <16 x i8>, ptr %i.dd, align 1, !noalias !274
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <16 x i8> %wide.load, ptr %i.db, align 1, !noalias !274
  store <16 x i8> %wide.load113, ptr %i.de, align 1, !noalias !274
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec114 = and i64 %i.cw, -8                   ; 3 uses
  %i.dg = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec114
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 2 uses
  %i.dh = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index115 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.dh
  %wide.load116 = load <8 x i8>, ptr %i.dj, align 1, !noalias !274
  store <8 x i8> %wide.load116, ptr %i.di, align 1, !noalias !274
  %index.next117 = add nuw i64 %index115, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next117, %n.vec114
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %i.cw, %n.vec114
  br i1 %cmp.n118, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i, %iter.check ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 4 uses
  %i.dl = sub i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.010.i.i.i.ph
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol
  %.sroa.55.010.i.i.i.prol = phi i64 [ %i.do, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.do = add nuw i64 %.sroa.55.010.i.i.i.prol, 1 ; 2 uses
  %i.dp = load i8, ptr %i.dn, align 1, !noalias !274, !noundef !5
  store i8 %i.dp, ptr %i.dm, align 1, !noalias !274
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, !llvm.loop !237

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader
  %.sroa.55.010.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ], [ %i.do, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ]
  %i.dq = sub i64 %.sroa.55.010.i.i.i.ph, %.sroa.7.0.copyload.i.i.i
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  %.sroa.55.010.i.i.i = phi i64 [ %i.eg, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i ], [ %.sroa.55.010.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.du = add nuw i64 %.sroa.55.010.i.i.i, 1      ; 2 uses
  %i.dv = load i8, ptr %i.dt, align 1, !noalias !274, !noundef !5
  store i8 %i.dv, ptr %i.ds, align 1, !noalias !274
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.du
  %i.dy = add nuw i64 %.sroa.55.010.i.i.i, 2      ; 2 uses
  %i.dz = load i8, ptr %i.dx, align 1, !noalias !274, !noundef !5
  store i8 %i.dz, ptr %i.dw, align 1, !noalias !274
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.dy
  %i.ec = add nuw i64 %.sroa.55.010.i.i.i, 3      ; 2 uses
  %i.ed = load i8, ptr %i.eb, align 1, !noalias !274, !noundef !5
  store i8 %i.ed, ptr %i.ea, align 1, !noalias !274
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ec
  %i.eg = add nuw i64 %.sroa.55.010.i.i.i, 4      ; 2 uses
  %i.eh = load i8, ptr %i.ef, align 1, !noalias !274, !noundef !5
  store i8 %i.eh, ptr %i.ee, align 1, !noalias !274
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.eg, %.sroa.7.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !llvm.loop !238

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !271
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ek = load i64, ptr %1, align 8, !range !16, !alias.scope !269
  %.not4.i.i = icmp eq i64 %i.ek, -1
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !269, !nonnull !5
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !269
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.44.0..sroa_idx.i.i24.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i26.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i28.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i
  %.sroa.0.072.i = phi i64 [ %i.u, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.0.1.i5, %bb.ab ] ; 5 uses
  %.sroa.04.071.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.04.1.i, %bb.ab ] ; 3 uses
  %.sroa.7.070.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %i.es, %bb.ab ] ; 3 uses
  %.sroa.035.0.idx69.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.035.0.add.i, %bb.ab ] ; 2 uses
  %.sroa.035.0.ptr73.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.035.0.idx69.i ; 2 uses
  %.sroa.035.0.add.i = add nuw nsw i64 %.sroa.035.0.idx69.i, 16 ; 2 uses
  %i.es = add nuw nsw i64 %.sroa.7.070.i, 1
  %i.et = load i64, ptr %.sroa.035.0.ptr73.i, align 8, !range !6, !alias.scope !268, !noundef !5
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.035.0.ptr73.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !271
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !268, !noundef !5 ; 3 uses
  %i.ex = add i64 %i.ew, %.sroa.0.072.i           ; 5 uses
  %i.ey = icmp ult i64 %i.ex, %.sroa.0.072.i
  %.not19.i = icmp ugt i64 %i.ex, %i.v
  %or.cond.i = or i1 %i.ey, %.not19.i
  br i1 %or.cond.i, label %bb.ac, label %bb.ad, !prof !15

bb.ab:                                            ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, %bb.z
  %.sroa.04.1.i = phi i64 [ %i.is, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i ], [ %.sroa.04.071.i, %bb.z ]
  %.sroa.0.1.i5 = phi i64 [ %i.ex, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i ], [ %.sroa.0.072.i, %bb.z ]
  %i.ez = icmp eq i64 %.sroa.035.0.add.i, 144
  br i1 %i.ez, label %bb.ao, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.072.i, i64 noundef %i.ex, i64 noundef range(i64 0, -9223372036854775808) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.0.072.i ; 3 uses
  store ptr %i.fa, ptr %i.g, align 8, !noalias !271
  store i64 %i.ew, ptr %i.ei, align 8, !noalias !271
  store i64 0, ptr %i.ej, align 8, !noalias !271
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.fb = icmp eq i64 %.sroa.7.070.i, 8
  br i1 %i.fb, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not4.i.i, label %.invoke, label %bb.af, !prof !14

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata19write_user_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.em, i64 noundef %i.eo, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvMsg_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_7OpWrite12from_optionss_0Bb_.exit.i unwind label %.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.7.070.i ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !270, !noalias !275, !noundef !5 ; 3 uses
  %.not.i21.i = icmp eq ptr %i.fd, null
  br i1 %.not.i21.i, label %.invoke, label %bb.ah, !prof !14

bb.ah:                                            ; preds = %bb.ag
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !270, !noalias !275 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %.not.i.i.i = icmp ugt i64 %i.ff, %i.ew
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aj, !prof !14

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !277
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ff
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fg, ptr noundef nonnull readonly %i.fd, ptr noundef nonnull readonly %i.fh)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.aj
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !278 ; 9 uses
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !278 ; 9 uses
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !278 ; 7 uses
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !278 ; 5 uses
  %i.fi = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.fi, label %iter.check165, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i

iter.check165:                                    ; preds = %.noexc13
  %.sroa.44.0.copyload.i.i.i.i151 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i150 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i) ]
  %i.fj = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i ; 7 uses
  %min.iters.check153 = icmp ult i64 %i.fj, 8
  %i.fk = sub i64 %.sroa.44.0.copyload.i.i.i.i151, %.sroa.0.0.copyload.i.i.i.i150
  %diff.check152 = icmp ugt i64 %i.fk, -32
  %or.cond179 = select i1 %min.iters.check153, i1 true, i1 %diff.check152
  br i1 %or.cond179, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check165
  %min.iters.check155 = icmp ult i64 %i.fj, 32
  br i1 %min.iters.check155, label %vec.epilog.ph169, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %i.fl = and i64 %i.fj, 24
  %n.vec157 = and i64 %i.fj, -32                  ; 4 uses
  %i.fm = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec157
  br label %vector.body158

vector.body158:                                   ; preds = %vector.ph156, %vector.body158
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 2 uses
  %i.fn = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index159 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fn ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load160 = load <16 x i8>, ptr %i.fp, align 1, !noalias !279
  %wide.load161 = load <16 x i8>, ptr %i.fq, align 1, !noalias !279
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <16 x i8> %wide.load160, ptr %i.fo, align 1, !noalias !279
  store <16 x i8> %wide.load161, ptr %i.fr, align 1, !noalias !279
  %index.next162 = add nuw i64 %index159, 32      ; 2 uses
  %i.fs = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.fs, label %middle.block163, label %vector.body158, !llvm.loop !247

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %i.fj, %n.vec157
  br i1 %cmp.n164, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block163
  %min.epilog.iters.check168 = icmp eq i64 %i.fl, 0
  br i1 %min.epilog.iters.check168, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vec.epilog.ph169, !prof !12

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check166
  %vec.epilog.resume.val170 = phi i64 [ %n.vec157, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check154 ]
  %n.vec171 = and i64 %i.fj, -8                   ; 3 uses
  %i.ft = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph169 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 2 uses
  %i.fu = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index173 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fu
  %wide.load174 = load <8 x i8>, ptr %i.fw, align 1, !noalias !279
  store <8 x i8> %wide.load174, ptr %i.fv, align 1, !noalias !279
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.fx, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !248

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %cmp.n177 = icmp eq i64 %i.fj, %n.vec171
  br i1 %cmp.n177, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader: ; preds = %iter.check165, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.sroa.55.010.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i, %iter.check165 ], [ %i.fm, %vec.epilog.iter.check166 ], [ %i.ft, %vec.epilog.middle.block176 ] ; 4 uses
  %i.fy = sub i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.010.i.i.i.i.ph
  %xtraiter194 = and i64 %i.fy, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.prol = phi i64 [ %i.gb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.gb = add nuw i64 %.sroa.55.010.i.i.i.i.prol, 1 ; 2 uses
  %i.gc = load i8, ptr %i.ga, align 1, !noalias !279, !noundef !5
  store i8 %i.gc, ptr %i.fz, align 1, !noalias !279
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, !llvm.loop !249

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ], [ %i.gb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ]
  %i.gd = sub i64 %.sroa.55.010.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i
  %i.ge = icmp ugt i64 %i.gd, -4
  br i1 %i.ge, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.55.010.i.i.i.i = phi i64 [ %i.gt, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.gh = add nuw i64 %.sroa.55.010.i.i.i.i, 1    ; 2 uses
  %i.gi = load i8, ptr %i.gg, align 1, !noalias !279, !noundef !5
  store i8 %i.gi, ptr %i.gf, align 1, !noalias !279
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gh
  %i.gl = add nuw i64 %.sroa.55.010.i.i.i.i, 2    ; 2 uses
  %i.gm = load i8, ptr %i.gk, align 1, !noalias !279, !noundef !5
  store i8 %i.gm, ptr %i.gj, align 1, !noalias !279
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gl
  %i.gp = add nuw i64 %.sroa.55.010.i.i.i.i, 3    ; 2 uses
  %i.gq = load i8, ptr %i.go, align 1, !noalias !279, !noundef !5
  store i8 %i.gq, ptr %i.gn, align 1, !noalias !279
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gp
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gp
  %i.gt = add nuw i64 %.sroa.55.010.i.i.i.i, 4    ; 2 uses
  %i.gu = load i8, ptr %i.gs, align 1, !noalias !279, !noundef !5
  store i8 %i.gu, ptr %i.gr, align 1, !noalias !279
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.gt, %.sroa.7.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !llvm.loop !250

_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %middle.block163, %vec.epilog.middle.block176, %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !277
  store i64 %i.ff, ptr %i.ej, align 8, !alias.scope !280, !noalias !271
  br label %_RNCNvMsg_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_7OpWrite12from_optionss_0Bb_.exit.i

.invoke:                                          ; preds = %bb.ag, %bb.ae
  %i.gv = phi ptr [ @22, %bb.ae ], [ @23, %bb.ag ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNvMsg_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_7OpWrite12from_optionss_0Bb_.exit.i: ; preds = %bb.af, %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !271
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !282
  %i.gw = load i64, ptr %i.eq, align 8, !alias.scope !281, !noalias !271, !noundef !5 ; 2 uses
  store i64 %i.gw, ptr %i.b, align 8, !noalias !282
  %i.gx = load i64, ptr %i.ep, align 8, !alias.scope !281, !noalias !271, !noundef !5
  %i.gy = icmp eq i64 %i.gx, %i.gw
  br i1 %i.gy, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %_RNCNvMsg_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_7OpWrite12from_optionss_0Bb_.exit.i
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ep, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @127, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #21
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.ak
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNCNvMsg_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_7OpWrite12from_optionss_0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !271
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %i.ex to i16
  %i.gz = shl i64 %.sroa.04.071.i, 1              ; 2 uses
  %i.ha = add i64 %i.gz, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !271
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %i.e, align 2, !noalias !271
  %i.hb = add i64 %i.gz, 4                        ; 2 uses
  %i.hc = icmp eq i64 %i.ha, -2
  %.not.i22.i = icmp ugt i64 %i.hb, %i.v
  %or.cond.i.i = or i1 %i.hc, %.not.i22.i
  br i1 %or.cond.i.i, label %bb.am, label %bb.al, !prof !15

bb.al:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ha ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !283
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.er)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.al
  %.sroa.0.0.copyload.i.i23.i = load ptr, ptr %i.a, align 8, !noalias !284 ; 9 uses
  %.sroa.44.0.copyload.i.i25.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i24.i, align 8, !noalias !284 ; 9 uses
  %.sroa.55.0.copyload.i.i27.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i26.i, align 8, !noalias !284 ; 7 uses
  %.sroa.7.0.copyload.i.i29.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i28.i, align 8, !noalias !284 ; 5 uses
  %i.hf = icmp ult i64 %.sroa.55.0.copyload.i.i27.i, %.sroa.7.0.copyload.i.i29.i
  br i1 %i.hf, label %iter.check135, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i

iter.check135:                                    ; preds = %.noexc17
  %.sroa.44.0.copyload.i.i25.i121 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i25.i to i64
  %.sroa.0.0.copyload.i.i23.i120 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i23.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i23.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i25.i) ]
  %i.hg = sub nuw i64 %.sroa.7.0.copyload.i.i29.i, %.sroa.55.0.copyload.i.i27.i ; 7 uses
  %min.iters.check123 = icmp ult i64 %i.hg, 8
  %i.hh = sub i64 %.sroa.44.0.copyload.i.i25.i121, %.sroa.0.0.copyload.i.i23.i120
  %diff.check122 = icmp ugt i64 %i.hh, -32
  %or.cond180 = select i1 %min.iters.check123, i1 true, i1 %diff.check122
  br i1 %or.cond180, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader, label %vector.main.loop.iter.check124

vector.main.loop.iter.check124:                   ; preds = %iter.check135
  %min.iters.check125 = icmp ult i64 %i.hg, 32
  br i1 %min.iters.check125, label %vec.epilog.ph139, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %i.hi = and i64 %i.hg, 24
  %n.vec127 = and i64 %i.hg, -32                  ; 4 uses
  %i.hj = add i64 %.sroa.55.0.copyload.i.i27.i, %n.vec127
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph126, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 2 uses
  %i.hk = add nuw i64 %.sroa.55.0.copyload.i.i27.i, %index129 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.hk ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load130 = load <16 x i8>, ptr %i.hm, align 1, !noalias !274
  %wide.load131 = load <16 x i8>, ptr %i.hn, align 1, !noalias !274
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <16 x i8> %wide.load130, ptr %i.hl, align 1, !noalias !274
  store <16 x i8> %wide.load131, ptr %i.ho, align 1, !noalias !274
  %index.next132 = add nuw i64 %index129, 32      ; 2 uses
  %i.hp = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.hp, label %middle.block133, label %vector.body128, !llvm.loop !259

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.hg, %n.vec127
  br i1 %cmp.n134, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, label %vec.epilog.iter.check136

vec.epilog.iter.check136:                         ; preds = %middle.block133
  %min.epilog.iters.check138 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check138, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader, label %vec.epilog.ph139, !prof !12

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check136
  %vec.epilog.resume.val140 = phi i64 [ %n.vec127, %vec.epilog.iter.check136 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec141 = and i64 %i.hg, -8                   ; 3 uses
  %i.hq = add i64 %.sroa.55.0.copyload.i.i27.i, %n.vec141
  br label %vec.epilog.vector.body142

vec.epilog.vector.body142:                        ; preds = %vec.epilog.vector.body142, %vec.epilog.ph139
  %index143 = phi i64 [ %vec.epilog.resume.val140, %vec.epilog.ph139 ], [ %index.next145, %vec.epilog.vector.body142 ] ; 2 uses
  %i.hr = add nuw i64 %.sroa.55.0.copyload.i.i27.i, %index143 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.hr
  %wide.load144 = load <8 x i8>, ptr %i.ht, align 1, !noalias !274
  store <8 x i8> %wide.load144, ptr %i.hs, align 1, !noalias !274
  %index.next145 = add nuw i64 %index143, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next145, %n.vec141
  br i1 %i.hu, label %vec.epilog.middle.block146, label %vec.epilog.vector.body142, !llvm.loop !260

vec.epilog.middle.block146:                       ; preds = %vec.epilog.vector.body142
  %cmp.n147 = icmp eq i64 %i.hg, %n.vec141
  br i1 %cmp.n147, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader: ; preds = %iter.check135, %vec.epilog.iter.check136, %vec.epilog.middle.block146
  %.sroa.55.010.i.i32.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i27.i, %iter.check135 ], [ %i.hj, %vec.epilog.iter.check136 ], [ %i.hq, %vec.epilog.middle.block146 ] ; 4 uses
  %i.hv = sub i64 %.sroa.7.0.copyload.i.i29.i, %.sroa.55.010.i.i32.i.ph
  %xtraiter197 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol
  %.sroa.55.010.i.i32.i.prol = phi i64 [ %i.hy, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol ], [ %.sroa.55.010.i.i32.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader ] ; 3 uses
  %prol.iter199 = phi i64 [ %prol.iter199.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %.sroa.55.010.i.i32.i.prol
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %.sroa.55.010.i.i32.i.prol
  %i.hy = add nuw i64 %.sroa.55.010.i.i32.i.prol, 1 ; 2 uses
  %i.hz = load i8, ptr %i.hx, align 1, !noalias !274, !noundef !5
  store i8 %i.hz, ptr %i.hw, align 1, !noalias !274
  %prol.iter199.next = add i64 %prol.iter199, 1   ; 2 uses
  %prol.iter199.cmp.not = icmp eq i64 %prol.iter199.next, %xtraiter197
  br i1 %prol.iter199.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol, !llvm.loop !261

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader
  %.sroa.55.010.i.i32.i.unr = phi i64 [ %.sroa.55.010.i.i32.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader ], [ %i.hy, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol ]
  %i.ia = sub i64 %.sroa.55.010.i.i32.i.ph, %.sroa.7.0.copyload.i.i29.i
  %i.ib = icmp ugt i64 %i.ia, -4
  br i1 %i.ib, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i
  %.sroa.55.010.i.i32.i = phi i64 [ %i.iq, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i ], [ %.sroa.55.010.i.i32.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %.sroa.55.010.i.i32.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %.sroa.55.010.i.i32.i
  %i.ie = add nuw i64 %.sroa.55.010.i.i32.i, 1    ; 2 uses
  %i.if = load i8, ptr %i.id, align 1, !noalias !274, !noundef !5
  store i8 %i.if, ptr %i.ic, align 1, !noalias !274
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.ie
  %i.ii = add nuw i64 %.sroa.55.010.i.i32.i, 2    ; 2 uses
  %i.ij = load i8, ptr %i.ih, align 1, !noalias !274, !noundef !5
  store i8 %i.ij, ptr %i.ig, align 1, !noalias !274
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.ii
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.ii
  %i.im = add nuw i64 %.sroa.55.010.i.i32.i, 3    ; 2 uses
  %i.in = load i8, ptr %i.il, align 1, !noalias !274, !noundef !5
  store i8 %i.in, ptr %i.ik, align 1, !noalias !274
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.im
  %i.iq = add nuw i64 %.sroa.55.010.i.i32.i, 4    ; 2 uses
  %i.ir = load i8, ptr %i.ip, align 1, !noalias !274, !noundef !5
  store i8 %i.ir, ptr %i.io, align 1, !noalias !274
  %exitcond.not.i.i33.i.3 = icmp eq i64 %i.iq, %.sroa.7.0.copyload.i.i29.i
  br i1 %exitcond.not.i.i33.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i, !llvm.loop !262

bb.am:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.ha, i64 noundef %i.hb, i64 noundef range(i64 0, -9223372036854775808) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #21
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.am
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i, %middle.block133, %vec.epilog.middle.block146, %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !271
  %i.is = add i64 %.sroa.04.071.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !271
  br label %bb.ab

bb.an:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  unreachable

bb.ao:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.u

bb.ap:                                            ; preds = %bb.v
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.loopexit.split-lp, %bb.v
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj9_NCNvMsi_NtNtB7_3raw3opsNtB1w_9OpCompose12from_optionss_0EB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.l = load i64, ptr %0, align 8, !range !6, !alias.scope !332, !noundef !5 ; 2 uses
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.sroa.08.1.i = select i1 %i.m, i64 %i.o, i64 0 ; 3 uses
  %i.p = trunc nuw i64 %i.l to i16                ; 2 uses
  %.sroa.0.01929.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %.sroa.0.01929.i.ptr.1, align 8, !range !6, !alias.scope !332, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %.lr.ph.i.2

bb.a:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %.sroa.0.1.i.879 = phi i16 [ %i.bz, %._crit_edge.i.thread ], [ %.sroa.0.1.i.7, %._crit_edge.i ] ; 2 uses
  %.sroa.08.1.i.878 = phi i64 [ %i.bx, %._crit_edge.i.thread ], [ %.sroa.08.1.i.7, %._crit_edge.i ]
  %i.s = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.1.i.879)
  %i.t = shl nuw nsw i16 %i.s, 1
  %narrow.i = add nuw nsw i16 %i.t, 2
  %i.u = zext nneg i16 %narrow.i to i64           ; 3 uses
  %i.v = add i64 %.sroa.08.1.i.878, %i.u          ; 10 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.x = icmp ult i64 %i.v, 65536
  br i1 %i.x, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #21, !noalias !333
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @132, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #21, !noalias !333
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !332, !noundef !5
  %i.aa = add i64 %i.z, %.sroa.08.1.i             ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %.sroa.08.1.i
  br i1 %i.ab, label %bb.t, label %bb.f, !prof !14

end_hunk_1
begin_hunk_2_@_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj9_NCNvMsi_NtNtB7_3raw3opsNtB1w_9OpCompose12from_optionss_0EB7_:.lr.ph.i
  %.sroa.0.01929.i.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load i64, ptr %.sroa.0.01929.i.ptr.4, align 8, !range !6, !alias.scope !332, !noundef !5
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.k, label %.lr.ph.i.5

bb.k:                                             ; preds = %.lr.ph.i.4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !332, !noundef !5
  %i.av = add i64 %i.au, %.sroa.08.1.i.3          ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.sroa.08.1.i.3
  br i1 %i.aw, label %bb.t, label %bb.l, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.ax = or i16 %.sroa.0.1.i.3, 16
  br label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.l, %.lr.ph.i.4
  %.sroa.08.1.i.4 = phi i64 [ %i.av, %bb.l ], [ %.sroa.08.1.i.3, %.lr.ph.i.4 ] ; 3 uses
  %.sroa.0.1.i.4 = phi i16 [ %i.ax, %bb.l ], [ %.sroa.0.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.0.01929.i.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load i64, ptr %.sroa.0.01929.i.ptr.5, align 8, !range !6, !alias.scope !332, !noundef !5
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.m, label %.lr.ph.i.6

bb.m:                                             ; preds = %.lr.ph.i.5
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !332, !noundef !5
  %i.bc = add i64 %i.bb, %.sroa.08.1.i.4          ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %.sroa.08.1.i.4
  br i1 %i.bd, label %bb.t, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.be = or i16 %.sroa.0.1.i.4, 32
  br label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.n, %.lr.ph.i.5
  %.sroa.08.1.i.5 = phi i64 [ %i.bc, %bb.n ], [ %.sroa.08.1.i.4, %.lr.ph.i.5 ] ; 3 uses
  %.sroa.0.1.i.5 = phi i16 [ %i.be, %bb.n ], [ %.sroa.0.1.i.4, %.lr.ph.i.5 ] ; 2 uses
  %.sroa.0.01929.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = load i64, ptr %.sroa.0.01929.i.ptr.6, align 8, !range !6, !alias.scope !332, !noundef !5
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %.lr.ph.i.7

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !332, !noundef !5
  %i.bj = add i64 %i.bi, %.sroa.08.1.i.5          ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.08.1.i.5
  br i1 %i.bk, label %bb.t, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.bl = or i16 %.sroa.0.1.i.5, 64
  br label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.p, %.lr.ph.i.6
  %.sroa.08.1.i.6 = phi i64 [ %i.bj, %bb.p ], [ %.sroa.08.1.i.5, %.lr.ph.i.6 ] ; 3 uses
  %.sroa.0.1.i.6 = phi i16 [ %i.bl, %bb.p ], [ %.sroa.0.1.i.5, %.lr.ph.i.6 ] ; 2 uses
  %.sroa.0.01929.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load i64, ptr %.sroa.0.01929.i.ptr.7, align 8, !range !6, !alias.scope !332, !noundef !5
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.q, label %.lr.ph.i.8

bb.q:                                             ; preds = %.lr.ph.i.7
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !332, !noundef !5
  %i.bq = add i64 %i.bp, %.sroa.08.1.i.6          ; 2 uses
  %i.br = icmp ult i64 %i.bq, %.sroa.08.1.i.6
  br i1 %i.br, label %bb.t, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.bs = or i16 %.sroa.0.1.i.6, 128
  br label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %bb.r, %.lr.ph.i.7
  %.sroa.08.1.i.7 = phi i64 [ %i.bq, %bb.r ], [ %.sroa.08.1.i.6, %.lr.ph.i.7 ] ; 3 uses
  %.sroa.0.1.i.7 = phi i16 [ %i.bs, %bb.r ], [ %.sroa.0.1.i.6, %.lr.ph.i.7 ] ; 3 uses
  %.sroa.0.01929.i.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bt = load i64, ptr %.sroa.0.01929.i.ptr.8, align 8, !range !6, !alias.scope !332, !noundef !5
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %bb.s, label %._crit_edge.i

bb.s:                                             ; preds = %.lr.ph.i.8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !332, !noundef !5
  %i.bx = add i64 %i.bw, %.sroa.08.1.i.7          ; 2 uses
  %i.by = icmp ult i64 %i.bx, %.sroa.08.1.i.7
  br i1 %i.by, label %bb.t, label %._crit_edge.i.thread, !prof !14

._crit_edge.i.thread:                             ; preds = %bb.s
  %i.bz = or i16 %.sroa.0.1.i.7, 256
  br label %bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i.8
  %i.ca = icmp eq i16 %.sroa.0.1.i.7, 0
  br i1 %i.ca, label %bb.u, label %bb.a

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #21, !noalias !333
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cb = tail call { ptr, i64 } @_RNvMsq_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE18allocate_for_sliceCs5XgW7KoffLW_12opendal_core(i64 noundef %i.v) ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0      ; 4 uses
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1
  store ptr %i.cc, ptr %i.k, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 %i.cd, ptr %i.ce, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cg = cmpxchg ptr %i.cf, i64 1, i64 -1 acquire monotonic, align 8
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  br i1 %i.ch, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !7

bb.u:                                             ; preds = %._crit_edge.i, %bb.ao
  %.sroa.3.0 = phi i64 [ %i.v, %bb.ao ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi ptr [ %i.cp, %bb.ao ], [ null, %._crit_edge.i ]
  %i.ci = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.cj = insertvalue { ptr, i64 } %i.ci, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.cj

.loopexit.split-lp.loopexit:                      ; preds = %bb.af, %bb.aj, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.am, %bb.ak, %bb.ai, %bb.ac, %bb.y, %bb.x, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !334
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.ck = phi ptr [ %i.cp, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp42, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !334
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit

bb.v:                                             ; preds = %.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.ap

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit
  %i.cn = load atomic i64, ptr %i.cc acquire, align 8
  %i.co = icmp eq i64 %i.cn, 1
  store atomic i64 1, ptr %i.cf release, align 8
  br i1 %i.co, label %bb.w, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !8

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  %i.cp = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cq = load i64, ptr %i.ce, align 8, !noundef !5 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !340
  store i64 %i.v, ptr %i.j, align 8, !noalias !340
  store i64 %i.cq, ptr %i.i, align 8, !noalias !340
  %i.cs = icmp eq i64 %i.cq, %i.v
  br i1 %i.cs, label %bb.y, label %bb.x, !prof !9

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !340
  store i16 %.sroa.0.1.i.879, ptr %i.h, align 2, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !341
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.ct, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.cu)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.y
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !noalias !342 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !342 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !342 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !342 ; 5 uses
  %i.cv = icmp ult i64 %.sroa.55.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  br i1 %i.cv, label %iter.check, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i

iter.check:                                       ; preds = %.noexc7
  %.sroa.44.0.copyload.i.i.i110 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i111 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i) ]
  %i.cw = sub nuw i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.0.copyload.i.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.cw, 8
  %i.cx = sub i64 %.sroa.44.0.copyload.i.i.i110, %.sroa.0.0.copyload.i.i.i111
  %diff.check = icmp ugt i64 %i.cx, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.cw, 32
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = and i64 %i.cw, 24
  %n.vec = and i64 %i.cw, -32                     ; 4 uses
  %i.cz = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <16 x i8>, ptr %i.dc, align 1, !noalias !343
  %wide.load113 = load <16 x i8>, ptr %i.dd, align 1, !noalias !343
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <16 x i8> %wide.load, ptr %i.db, align 1, !noalias !343
  store <16 x i8> %wide.load113, ptr %i.de, align 1, !noalias !343
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec114 = and i64 %i.cw, -8                   ; 3 uses
  %i.dg = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec114
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 2 uses
  %i.dh = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index115 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.dh
  %wide.load116 = load <8 x i8>, ptr %i.dj, align 1, !noalias !343
  store <8 x i8> %wide.load116, ptr %i.di, align 1, !noalias !343
  %index.next117 = add nuw i64 %index115, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next117, %n.vec114
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !305

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %i.cw, %n.vec114
  br i1 %cmp.n118, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i, %iter.check ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 4 uses
  %i.dl = sub i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.010.i.i.i.ph
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol
  %.sroa.55.010.i.i.i.prol = phi i64 [ %i.do, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.do = add nuw i64 %.sroa.55.010.i.i.i.prol, 1 ; 2 uses
  %i.dp = load i8, ptr %i.dn, align 1, !noalias !343, !noundef !5
  store i8 %i.dp, ptr %i.dm, align 1, !noalias !343
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, !llvm.loop !306

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader
  %.sroa.55.010.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ], [ %i.do, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ]
  %i.dq = sub i64 %.sroa.55.010.i.i.i.ph, %.sroa.7.0.copyload.i.i.i
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  %.sroa.55.010.i.i.i = phi i64 [ %i.eg, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i ], [ %.sroa.55.010.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.du = add nuw i64 %.sroa.55.010.i.i.i, 1      ; 2 uses
  %i.dv = load i8, ptr %i.dt, align 1, !noalias !343, !noundef !5
  store i8 %i.dv, ptr %i.ds, align 1, !noalias !343
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.du
  %i.dy = add nuw i64 %.sroa.55.010.i.i.i, 2      ; 2 uses
  %i.dz = load i8, ptr %i.dx, align 1, !noalias !343, !noundef !5
  store i8 %i.dz, ptr %i.dw, align 1, !noalias !343
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.dy
  %i.ec = add nuw i64 %.sroa.55.010.i.i.i, 3      ; 2 uses
  %i.ed = load i8, ptr %i.eb, align 1, !noalias !343, !noundef !5
  store i8 %i.ed, ptr %i.ea, align 1, !noalias !343
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ec
  %i.eg = add nuw i64 %.sroa.55.010.i.i.i, 4      ; 2 uses
  %i.eh = load i8, ptr %i.ef, align 1, !noalias !343, !noundef !5
  store i8 %i.eh, ptr %i.ee, align 1, !noalias !343
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.eg, %.sroa.7.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !llvm.loop !307

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !340
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ek = load i64, ptr %1, align 8, !range !16, !alias.scope !338
  %.not4.i.i = icmp eq i64 %i.ek, -1
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !338, !nonnull !5
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !338
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.44.0..sroa_idx.i.i24.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i26.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i28.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i
  %.sroa.0.072.i = phi i64 [ %i.u, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.0.1.i5, %bb.ab ] ; 5 uses
  %.sroa.04.071.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.04.1.i, %bb.ab ] ; 3 uses
  %.sroa.7.070.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %i.es, %bb.ab ] ; 3 uses
  %.sroa.035.0.idx69.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.035.0.add.i, %bb.ab ] ; 2 uses
  %.sroa.035.0.ptr73.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.035.0.idx69.i ; 2 uses
  %.sroa.035.0.add.i = add nuw nsw i64 %.sroa.035.0.idx69.i, 16 ; 2 uses
  %i.es = add nuw nsw i64 %.sroa.7.070.i, 1
  %i.et = load i64, ptr %.sroa.035.0.ptr73.i, align 8, !range !6, !alias.scope !337, !noundef !5
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.035.0.ptr73.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !340
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !337, !noundef !5 ; 3 uses
  %i.ex = add i64 %i.ew, %.sroa.0.072.i           ; 5 uses
  %i.ey = icmp ult i64 %i.ex, %.sroa.0.072.i
  %.not19.i = icmp ugt i64 %i.ex, %i.v
  %or.cond.i = or i1 %i.ey, %.not19.i
  br i1 %or.cond.i, label %bb.ac, label %bb.ad, !prof !15

bb.ab:                                            ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, %bb.z
  %.sroa.04.1.i = phi i64 [ %i.is, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i ], [ %.sroa.04.071.i, %bb.z ]
  %.sroa.0.1.i5 = phi i64 [ %i.ex, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i ], [ %.sroa.0.072.i, %bb.z ]
  %i.ez = icmp eq i64 %.sroa.035.0.add.i, 144
  br i1 %i.ez, label %bb.ao, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.072.i, i64 noundef %i.ex, i64 noundef range(i64 0, -9223372036854775808) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.0.072.i ; 3 uses
  store ptr %i.fa, ptr %i.g, align 8, !noalias !340
  store i64 %i.ew, ptr %i.ei, align 8, !noalias !340
  store i64 0, ptr %i.ej, align 8, !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.fb = icmp eq i64 %.sroa.7.070.i, 8
  br i1 %i.fb, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not4.i.i, label %.invoke, label %bb.af, !prof !14

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata19write_user_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.em, i64 noundef %i.eo, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvMsi_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_9OpCompose12from_optionss_0Bb_.exit.i unwind label %.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.7.070.i ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !339, !noalias !344, !noundef !5 ; 3 uses
  %.not.i21.i = icmp eq ptr %i.fd, null
  br i1 %.not.i21.i, label %.invoke, label %bb.ah, !prof !14

bb.ah:                                            ; preds = %bb.ag
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !339, !noalias !344 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %.not.i.i.i = icmp ugt i64 %i.ff, %i.ew
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aj, !prof !14

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !346
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ff
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fg, ptr noundef nonnull readonly %i.fd, ptr noundef nonnull readonly %i.fh)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.aj
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !347 ; 9 uses
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 9 uses
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 7 uses
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !347 ; 5 uses
  %i.fi = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.fi, label %iter.check165, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i

iter.check165:                                    ; preds = %.noexc13
  %.sroa.44.0.copyload.i.i.i.i151 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i150 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i) ]
  %i.fj = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i ; 7 uses
  %min.iters.check153 = icmp ult i64 %i.fj, 8
  %i.fk = sub i64 %.sroa.44.0.copyload.i.i.i.i151, %.sroa.0.0.copyload.i.i.i.i150
  %diff.check152 = icmp ugt i64 %i.fk, -32
  %or.cond179 = select i1 %min.iters.check153, i1 true, i1 %diff.check152
  br i1 %or.cond179, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check165
  %min.iters.check155 = icmp ult i64 %i.fj, 32
  br i1 %min.iters.check155, label %vec.epilog.ph169, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %i.fl = and i64 %i.fj, 24
  %n.vec157 = and i64 %i.fj, -32                  ; 4 uses
  %i.fm = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec157
  br label %vector.body158

vector.body158:                                   ; preds = %vector.ph156, %vector.body158
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 2 uses
  %i.fn = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index159 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fn ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load160 = load <16 x i8>, ptr %i.fp, align 1, !noalias !348
  %wide.load161 = load <16 x i8>, ptr %i.fq, align 1, !noalias !348
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <16 x i8> %wide.load160, ptr %i.fo, align 1, !noalias !348
  store <16 x i8> %wide.load161, ptr %i.fr, align 1, !noalias !348
  %index.next162 = add nuw i64 %index159, 32      ; 2 uses
  %i.fs = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.fs, label %middle.block163, label %vector.body158, !llvm.loop !316

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %i.fj, %n.vec157
  br i1 %cmp.n164, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block163
  %min.epilog.iters.check168 = icmp eq i64 %i.fl, 0
  br i1 %min.epilog.iters.check168, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vec.epilog.ph169, !prof !12

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check166
  %vec.epilog.resume.val170 = phi i64 [ %n.vec157, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check154 ]
  %n.vec171 = and i64 %i.fj, -8                   ; 3 uses
  %i.ft = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph169 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 2 uses
  %i.fu = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index173 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fu
  %wide.load174 = load <8 x i8>, ptr %i.fw, align 1, !noalias !348
  store <8 x i8> %wide.load174, ptr %i.fv, align 1, !noalias !348
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.fx, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !317

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %cmp.n177 = icmp eq i64 %i.fj, %n.vec171
  br i1 %cmp.n177, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader: ; preds = %iter.check165, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.sroa.55.010.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i, %iter.check165 ], [ %i.fm, %vec.epilog.iter.check166 ], [ %i.ft, %vec.epilog.middle.block176 ] ; 4 uses
  %i.fy = sub i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.010.i.i.i.i.ph
  %xtraiter194 = and i64 %i.fy, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.prol = phi i64 [ %i.gb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.gb = add nuw i64 %.sroa.55.010.i.i.i.i.prol, 1 ; 2 uses
  %i.gc = load i8, ptr %i.ga, align 1, !noalias !348, !noundef !5
  store i8 %i.gc, ptr %i.fz, align 1, !noalias !348
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, !llvm.loop !318

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ], [ %i.gb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ]
  %i.gd = sub i64 %.sroa.55.010.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i
  %i.ge = icmp ugt i64 %i.gd, -4
  br i1 %i.ge, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.55.010.i.i.i.i = phi i64 [ %i.gt, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.gh = add nuw i64 %.sroa.55.010.i.i.i.i, 1    ; 2 uses
  %i.gi = load i8, ptr %i.gg, align 1, !noalias !348, !noundef !5
  store i8 %i.gi, ptr %i.gf, align 1, !noalias !348
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gh
  %i.gl = add nuw i64 %.sroa.55.010.i.i.i.i, 2    ; 2 uses
  %i.gm = load i8, ptr %i.gk, align 1, !noalias !348, !noundef !5
  store i8 %i.gm, ptr %i.gj, align 1, !noalias !348
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gl
  %i.gp = add nuw i64 %.sroa.55.010.i.i.i.i, 3    ; 2 uses
  %i.gq = load i8, ptr %i.go, align 1, !noalias !348, !noundef !5
  store i8 %i.gq, ptr %i.gn, align 1, !noalias !348
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gp
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gp
  %i.gt = add nuw i64 %.sroa.55.010.i.i.i.i, 4    ; 2 uses
  %i.gu = load i8, ptr %i.gs, align 1, !noalias !348, !noundef !5
  store i8 %i.gu, ptr %i.gr, align 1, !noalias !348
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.gt, %.sroa.7.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !llvm.loop !319

_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %middle.block163, %vec.epilog.middle.block176, %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !346
  store i64 %i.ff, ptr %i.ej, align 8, !alias.scope !349, !noalias !340
  br label %_RNCNvMsi_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_9OpCompose12from_optionss_0Bb_.exit.i

.invoke:                                          ; preds = %bb.ag, %bb.ae
  %i.gv = phi ptr [ @24, %bb.ae ], [ @25, %bb.ag ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gv) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNvMsi_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_9OpCompose12from_optionss_0Bb_.exit.i: ; preds = %bb.af, %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !351
  %i.gw = load i64, ptr %i.eq, align 8, !alias.scope !350, !noalias !340, !noundef !5 ; 2 uses
  store i64 %i.gw, ptr %i.b, align 8, !noalias !351
  %i.gx = load i64, ptr %i.ep, align 8, !alias.scope !350, !noalias !340, !noundef !5
  %i.gy = icmp eq i64 %i.gx, %i.gw
  br i1 %i.gy, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %_RNCNvMsi_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_9OpCompose12from_optionss_0Bb_.exit.i
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ep, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @127, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #21
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.ak
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNCNvMsi_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB7_9OpCompose12from_optionss_0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !340
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %i.ex to i16
  %i.gz = shl i64 %.sroa.04.071.i, 1              ; 2 uses
  %i.ha = add i64 %i.gz, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !340
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %i.e, align 2, !noalias !340
  %i.hb = add i64 %i.gz, 4                        ; 2 uses
  %i.hc = icmp eq i64 %i.ha, -2
  %.not.i22.i = icmp ugt i64 %i.hb, %i.v
  %or.cond.i.i = or i1 %i.hc, %.not.i22.i
  br i1 %or.cond.i.i, label %bb.am, label %bb.al, !prof !15

bb.al:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ha ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !352
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.er)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.al
  %.sroa.0.0.copyload.i.i23.i = load ptr, ptr %i.a, align 8, !noalias !353 ; 9 uses
  %.sroa.44.0.copyload.i.i25.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i24.i, align 8, !noalias !353 ; 9 uses
  %.sroa.55.0.copyload.i.i27.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i26.i, align 8, !noalias !353 ; 7 uses
  %.sroa.7.0.copyload.i.i29.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i28.i, align 8, !noalias !353 ; 5 uses
  %i.hf = icmp ult i64 %.sroa.55.0.copyload.i.i27.i, %.sroa.7.0.copyload.i.i29.i
  br i1 %i.hf, label %iter.check135, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i

iter.check135:                                    ; preds = %.noexc17
  %.sroa.44.0.copyload.i.i25.i121 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i25.i to i64
  %.sroa.0.0.copyload.i.i23.i120 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i23.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i23.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i25.i) ]
  %i.hg = sub nuw i64 %.sroa.7.0.copyload.i.i29.i, %.sroa.55.0.copyload.i.i27.i ; 7 uses
  %min.iters.check123 = icmp ult i64 %i.hg, 8
  %i.hh = sub i64 %.sroa.44.0.copyload.i.i25.i121, %.sroa.0.0.copyload.i.i23.i120
  %diff.check122 = icmp ugt i64 %i.hh, -32
  %or.cond180 = select i1 %min.iters.check123, i1 true, i1 %diff.check122
  br i1 %or.cond180, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader, label %vector.main.loop.iter.check124

vector.main.loop.iter.check124:                   ; preds = %iter.check135
  %min.iters.check125 = icmp ult i64 %i.hg, 32
  br i1 %min.iters.check125, label %vec.epilog.ph139, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %i.hi = and i64 %i.hg, 24
  %n.vec127 = and i64 %i.hg, -32                  ; 4 uses
  %i.hj = add i64 %.sroa.55.0.copyload.i.i27.i, %n.vec127
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph126, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 2 uses
  %i.hk = add nuw i64 %.sroa.55.0.copyload.i.i27.i, %index129 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.hk ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load130 = load <16 x i8>, ptr %i.hm, align 1, !noalias !343
  %wide.load131 = load <16 x i8>, ptr %i.hn, align 1, !noalias !343
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <16 x i8> %wide.load130, ptr %i.hl, align 1, !noalias !343
  store <16 x i8> %wide.load131, ptr %i.ho, align 1, !noalias !343
  %index.next132 = add nuw i64 %index129, 32      ; 2 uses
  %i.hp = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.hp, label %middle.block133, label %vector.body128, !llvm.loop !328

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.hg, %n.vec127
  br i1 %cmp.n134, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, label %vec.epilog.iter.check136

vec.epilog.iter.check136:                         ; preds = %middle.block133
  %min.epilog.iters.check138 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check138, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader, label %vec.epilog.ph139, !prof !12

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check136
  %vec.epilog.resume.val140 = phi i64 [ %n.vec127, %vec.epilog.iter.check136 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec141 = and i64 %i.hg, -8                   ; 3 uses
  %i.hq = add i64 %.sroa.55.0.copyload.i.i27.i, %n.vec141
  br label %vec.epilog.vector.body142

vec.epilog.vector.body142:                        ; preds = %vec.epilog.vector.body142, %vec.epilog.ph139
  %index143 = phi i64 [ %vec.epilog.resume.val140, %vec.epilog.ph139 ], [ %index.next145, %vec.epilog.vector.body142 ] ; 2 uses
  %i.hr = add nuw i64 %.sroa.55.0.copyload.i.i27.i, %index143 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.hr
  %wide.load144 = load <8 x i8>, ptr %i.ht, align 1, !noalias !343
  store <8 x i8> %wide.load144, ptr %i.hs, align 1, !noalias !343
  %index.next145 = add nuw i64 %index143, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next145, %n.vec141
  br i1 %i.hu, label %vec.epilog.middle.block146, label %vec.epilog.vector.body142, !llvm.loop !329

vec.epilog.middle.block146:                       ; preds = %vec.epilog.vector.body142
  %cmp.n147 = icmp eq i64 %i.hg, %n.vec141
  br i1 %cmp.n147, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader: ; preds = %iter.check135, %vec.epilog.iter.check136, %vec.epilog.middle.block146
  %.sroa.55.010.i.i32.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i27.i, %iter.check135 ], [ %i.hj, %vec.epilog.iter.check136 ], [ %i.hq, %vec.epilog.middle.block146 ] ; 4 uses
  %i.hv = sub i64 %.sroa.7.0.copyload.i.i29.i, %.sroa.55.010.i.i32.i.ph
  %xtraiter197 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol
  %.sroa.55.010.i.i32.i.prol = phi i64 [ %i.hy, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol ], [ %.sroa.55.010.i.i32.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader ] ; 3 uses
  %prol.iter199 = phi i64 [ %prol.iter199.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %.sroa.55.010.i.i32.i.prol
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %.sroa.55.010.i.i32.i.prol
  %i.hy = add nuw i64 %.sroa.55.010.i.i32.i.prol, 1 ; 2 uses
  %i.hz = load i8, ptr %i.hx, align 1, !noalias !343, !noundef !5
  store i8 %i.hz, ptr %i.hw, align 1, !noalias !343
  %prol.iter199.next = add i64 %prol.iter199, 1   ; 2 uses
  %prol.iter199.cmp.not = icmp eq i64 %prol.iter199.next, %xtraiter197
  br i1 %prol.iter199.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol, !llvm.loop !330

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader
  %.sroa.55.010.i.i32.i.unr = phi i64 [ %.sroa.55.010.i.i32.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.preheader ], [ %i.hy, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol ]
  %i.ia = sub i64 %.sroa.55.010.i.i32.i.ph, %.sroa.7.0.copyload.i.i29.i
  %i.ib = icmp ugt i64 %i.ia, -4
  br i1 %i.ib, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i
  %.sroa.55.010.i.i32.i = phi i64 [ %i.iq, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i ], [ %.sroa.55.010.i.i32.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %.sroa.55.010.i.i32.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %.sroa.55.010.i.i32.i
  %i.ie = add nuw i64 %.sroa.55.010.i.i32.i, 1    ; 2 uses
  %i.if = load i8, ptr %i.id, align 1, !noalias !343, !noundef !5
  store i8 %i.if, ptr %i.ic, align 1, !noalias !343
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.ie
  %i.ii = add nuw i64 %.sroa.55.010.i.i32.i, 2    ; 2 uses
  %i.ij = load i8, ptr %i.ih, align 1, !noalias !343, !noundef !5
  store i8 %i.ij, ptr %i.ig, align 1, !noalias !343
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.ii
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.ii
  %i.im = add nuw i64 %.sroa.55.010.i.i32.i, 3    ; 2 uses
  %i.in = load i8, ptr %i.il, align 1, !noalias !343, !noundef !5
  store i8 %i.in, ptr %i.ik, align 1, !noalias !343
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i, i64 %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i, i64 %i.im
  %i.iq = add nuw i64 %.sroa.55.010.i.i32.i, 4    ; 2 uses
  %i.ir = load i8, ptr %i.ip, align 1, !noalias !343, !noundef !5
  store i8 %i.ir, ptr %i.io, align 1, !noalias !343
  %exitcond.not.i.i33.i.3 = icmp eq i64 %i.iq, %.sroa.7.0.copyload.i.i29.i
  br i1 %exitcond.not.i.i33.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i, !llvm.loop !331

bb.am:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.ha, i64 noundef %i.hb, i64 noundef range(i64 0, -9223372036854775808) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #21
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.am
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i, %middle.block133, %vec.epilog.middle.block146, %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !340
  %i.is = add i64 %.sroa.04.071.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !340
  br label %bb.ab

bb.an:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  unreachable

bb.ao:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.u

bb.ap:                                            ; preds = %bb.v
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.loopexit.split-lp, %bb.v
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKja_NCINvB2_6encodeKB1l_Es_0EB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.k = load i64, ptr %0, align 8, !range !6, !alias.scope !400, !noundef !5 ; 2 uses
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %.sroa.08.1.i = select i1 %i.l, i64 %i.n, i64 0 ; 3 uses
  %i.o = trunc nuw i64 %i.k to i16                ; 2 uses
  %.sroa.0.01929.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %.sroa.0.01929.i.ptr.1, align 8, !range !6, !alias.scope !400, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %.lr.ph.i.2

bb.a:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %.sroa.0.1.i.975 = phi i16 [ %i.cf, %._crit_edge.i.thread ], [ %.sroa.0.1.i.8, %._crit_edge.i ] ; 2 uses
  %.sroa.08.1.i.974 = phi i64 [ %i.cd, %._crit_edge.i.thread ], [ %.sroa.08.1.i.8, %._crit_edge.i ]
  %i.r = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.1.i.975)
  %i.s = shl nuw nsw i16 %i.r, 1
  %narrow.i = add nuw nsw i16 %i.s, 2
  %i.t = zext nneg i16 %narrow.i to i64           ; 3 uses
  %i.u = add i64 %.sroa.08.1.i.974, %i.t          ; 10 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.w = icmp ult i64 %i.u, 65536
  br i1 %i.w, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #21, !noalias !401
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @132, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #21, !noalias !401
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !400, !noundef !5
  %i.z = add i64 %i.y, %.sroa.08.1.i              ; 2 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.08.1.i
  br i1 %i.aa, label %bb.v, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKja_NCINvB2_6encodeKB1l_Es_0EB7_:.lr.ph.i
  %.sroa.0.1.i.4 = phi i16 [ %i.aw, %bb.l ], [ %.sroa.0.1.i.3, %.lr.ph.i.4 ] ; 2 uses
  %.sroa.0.01929.i.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load i64, ptr %.sroa.0.01929.i.ptr.5, align 8, !range !6, !alias.scope !400, !noundef !5
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.m, label %.lr.ph.i.6

bb.m:                                             ; preds = %.lr.ph.i.5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !400, !noundef !5
  %i.bb = add i64 %i.ba, %.sroa.08.1.i.4          ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %.sroa.08.1.i.4
  br i1 %i.bc, label %bb.v, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.bd = or i16 %.sroa.0.1.i.4, 32
  br label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.n, %.lr.ph.i.5
  %.sroa.08.1.i.5 = phi i64 [ %i.bb, %bb.n ], [ %.sroa.08.1.i.4, %.lr.ph.i.5 ] ; 3 uses
  %.sroa.0.1.i.5 = phi i16 [ %i.bd, %bb.n ], [ %.sroa.0.1.i.4, %.lr.ph.i.5 ] ; 2 uses
  %.sroa.0.01929.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load i64, ptr %.sroa.0.01929.i.ptr.6, align 8, !range !6, !alias.scope !400, !noundef !5
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.o, label %.lr.ph.i.7

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !400, !noundef !5
  %i.bi = add i64 %i.bh, %.sroa.08.1.i.5          ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.sroa.08.1.i.5
  br i1 %i.bj, label %bb.v, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.bk = or i16 %.sroa.0.1.i.5, 64
  br label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.p, %.lr.ph.i.6
  %.sroa.08.1.i.6 = phi i64 [ %i.bi, %bb.p ], [ %.sroa.08.1.i.5, %.lr.ph.i.6 ] ; 3 uses
  %.sroa.0.1.i.6 = phi i16 [ %i.bk, %bb.p ], [ %.sroa.0.1.i.5, %.lr.ph.i.6 ] ; 2 uses
  %.sroa.0.01929.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = load i64, ptr %.sroa.0.01929.i.ptr.7, align 8, !range !6, !alias.scope !400, !noundef !5
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.q, label %.lr.ph.i.8

bb.q:                                             ; preds = %.lr.ph.i.7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !400, !noundef !5
  %i.bp = add i64 %i.bo, %.sroa.08.1.i.6          ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.08.1.i.6
  br i1 %i.bq, label %bb.v, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.br = or i16 %.sroa.0.1.i.6, 128
  br label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %bb.r, %.lr.ph.i.7
  %.sroa.08.1.i.7 = phi i64 [ %i.bp, %bb.r ], [ %.sroa.08.1.i.6, %.lr.ph.i.7 ] ; 3 uses
  %.sroa.0.1.i.7 = phi i16 [ %i.br, %bb.r ], [ %.sroa.0.1.i.6, %.lr.ph.i.7 ] ; 2 uses
  %.sroa.0.01929.i.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = load i64, ptr %.sroa.0.01929.i.ptr.8, align 8, !range !6, !alias.scope !400, !noundef !5
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.s, label %.lr.ph.i.9

bb.s:                                             ; preds = %.lr.ph.i.8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !400, !noundef !5
  %i.bw = add i64 %i.bv, %.sroa.08.1.i.7          ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %.sroa.08.1.i.7
  br i1 %i.bx, label %bb.v, label %bb.t, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.by = or i16 %.sroa.0.1.i.7, 256
  br label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %bb.t, %.lr.ph.i.8
  %.sroa.08.1.i.8 = phi i64 [ %i.bw, %bb.t ], [ %.sroa.08.1.i.7, %.lr.ph.i.8 ] ; 3 uses
  %.sroa.0.1.i.8 = phi i16 [ %i.by, %bb.t ], [ %.sroa.0.1.i.7, %.lr.ph.i.8 ] ; 3 uses
  %.sroa.0.01929.i.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load i64, ptr %.sroa.0.01929.i.ptr.9, align 8, !range !6, !alias.scope !400, !noundef !5
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.u, label %._crit_edge.i

bb.u:                                             ; preds = %.lr.ph.i.9
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !400, !noundef !5
  %i.cd = add i64 %i.cc, %.sroa.08.1.i.8          ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %.sroa.08.1.i.8
  br i1 %i.ce, label %bb.v, label %._crit_edge.i.thread, !prof !14

._crit_edge.i.thread:                             ; preds = %bb.u
  %i.cf = or i16 %.sroa.0.1.i.8, 512
  br label %bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i.9
  %i.cg = icmp eq i16 %.sroa.0.1.i.8, 0
  br i1 %i.cg, label %bb.w, label %bb.a

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #21, !noalias !401
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ch = tail call { ptr, i64 } @_RNvMsq_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE18allocate_for_sliceCs5XgW7KoffLW_12opendal_core(i64 noundef %i.u) ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0      ; 4 uses
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1
  store ptr %i.ci, ptr %i.j, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.cj, ptr %i.ck, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cm = cmpxchg ptr %i.cl, i64 1, i64 -1 acquire monotonic, align 8
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !7

bb.w:                                             ; preds = %._crit_edge.i, %bb.ao
  %.sroa.3.0 = phi i64 [ %i.u, %bb.ao ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi ptr [ %i.cv, %bb.ao ], [ null, %._crit_edge.i ]
  %i.co = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.cp = insertvalue { ptr, i64 } %i.co, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.cp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ai, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.am, %bb.ak, %bb.aj, %bb.ah, %bb.ae, %bb.aa, %bb.z, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.j, align 8, !alias.scope !402
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.cq = phi ptr [ %i.cv, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.cr = atomicrmw add ptr %i.cq, i64 -1 release, align 8, !noalias !402
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.x, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit

bb.x:                                             ; preds = %.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.ap

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit
  %i.ct = load atomic i64, ptr %i.ci acquire, align 8
  %i.cu = icmp eq i64 %i.ct, 1
  store atomic i64 1, ptr %i.cl release, align 8
  br i1 %i.cu, label %bb.y, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !8

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  %i.cv = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cw = load i64, ptr %i.ck, align 8, !noundef !5 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !407
  store i64 %i.u, ptr %i.i, align 8, !noalias !407
  store i64 %i.cw, ptr %i.h, align 8, !noalias !407
  %i.cy = icmp eq i64 %i.cw, %i.u
  br i1 %i.cy, label %bb.aa, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !407
  store i16 %.sroa.0.1.i.975, ptr %i.g, align 2, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !408
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 18
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cz, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.da)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.aa
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !noalias !409 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !409 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !409 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !409 ; 5 uses
  %i.db = icmp ult i64 %.sroa.55.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  br i1 %i.db, label %iter.check, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i

iter.check:                                       ; preds = %.noexc7
  %.sroa.44.0.copyload.i.i.i104 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i105 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i) ]
  %i.dc = sub nuw i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.0.copyload.i.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  %i.dd = sub i64 %.sroa.44.0.copyload.i.i.i104, %.sroa.0.0.copyload.i.i.i105
  %diff.check = icmp ugt i64 %i.dd, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check106 = icmp ult i64 %i.dc, 32
  br i1 %min.iters.check106, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.de = and i64 %i.dc, 24
  %n.vec = and i64 %i.dc, -32                     ; 4 uses
  %i.df = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.dg ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load = load <16 x i8>, ptr %i.di, align 1, !noalias !410
  %wide.load107 = load <16 x i8>, ptr %i.dj, align 1, !noalias !410
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <16 x i8> %wide.load, ptr %i.dh, align 1, !noalias !410
  store <16 x i8> %wide.load107, ptr %i.dk, align 1, !noalias !410
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !372

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.dc, -8                   ; 3 uses
  %i.dm = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec108
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next111, %vec.epilog.vector.body ] ; 2 uses
  %i.dn = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index109 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.dn
  %wide.load110 = load <8 x i8>, ptr %i.dp, align 1, !noalias !410
  store <8 x i8> %wide.load110, ptr %i.do, align 1, !noalias !410
  %index.next111 = add nuw i64 %index109, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next111, %n.vec108
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !373

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n112 = icmp eq i64 %i.dc, %n.vec108
  br i1 %cmp.n112, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i, %iter.check ], [ %i.df, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 4 uses
  %i.dr = sub i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.010.i.i.i.ph
  %xtraiter = and i64 %i.dr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol
  %.sroa.55.010.i.i.i.prol = phi i64 [ %i.du, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.du = add nuw i64 %.sroa.55.010.i.i.i.prol, 1 ; 2 uses
  %i.dv = load i8, ptr %i.dt, align 1, !noalias !410, !noundef !5
  store i8 %i.dv, ptr %i.ds, align 1, !noalias !410
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, !llvm.loop !374

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader
  %.sroa.55.010.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ], [ %i.du, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ]
  %i.dw = sub i64 %.sroa.55.010.i.i.i.ph, %.sroa.7.0.copyload.i.i.i
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  %.sroa.55.010.i.i.i = phi i64 [ %i.em, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i ], [ %.sroa.55.010.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.ea = add nuw i64 %.sroa.55.010.i.i.i, 1      ; 2 uses
  %i.eb = load i8, ptr %i.dz, align 1, !noalias !410, !noundef !5
  store i8 %i.eb, ptr %i.dy, align 1, !noalias !410
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ea
  %i.ee = add nuw i64 %.sroa.55.010.i.i.i, 2      ; 2 uses
  %i.ef = load i8, ptr %i.ed, align 1, !noalias !410, !noundef !5
  store i8 %i.ef, ptr %i.ec, align 1, !noalias !410
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ee
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ee
  %i.ei = add nuw i64 %.sroa.55.010.i.i.i, 3      ; 2 uses
  %i.ej = load i8, ptr %i.eh, align 1, !noalias !410, !noundef !5
  store i8 %i.ej, ptr %i.eg, align 1, !noalias !410
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ei
  %i.em = add nuw i64 %.sroa.55.010.i.i.i, 4      ; 2 uses
  %i.en = load i8, ptr %i.el, align 1, !noalias !410, !noundef !5
  store i8 %i.en, ptr %i.ek, align 1, !noalias !410
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.em, %.sroa.7.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !llvm.loop !375

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !407
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.44.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i
  %.sroa.0.070.i = phi i64 [ %i.t, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.0.1.i5, %bb.ad ] ; 5 uses
  %.sroa.04.069.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.04.1.i, %bb.ad ] ; 3 uses
  %.sroa.034.0.idx68.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.034.0.add.i, %bb.ad ] ; 2 uses
  %.sroa.7.067.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %i.ep, %bb.ad ] ; 2 uses
  %.sroa.034.0.ptr71.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.034.0.idx68.i ; 2 uses
  %.sroa.034.0.add.i = add nuw nsw i64 %.sroa.034.0.idx68.i, 16 ; 2 uses
  %i.ep = add nuw nsw i64 %.sroa.7.067.i, 1
  %i.eq = load i64, ptr %.sroa.034.0.ptr71.i, align 8, !range !6, !alias.scope !405, !noundef !5
  %i.er = trunc nuw i64 %i.eq to i1
  br i1 %i.er, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.034.0.ptr71.i, i64 8
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !405, !noundef !5 ; 5 uses
  %i.eu = add i64 %i.et, %.sroa.0.070.i           ; 5 uses
  %i.ev = icmp ult i64 %i.eu, %.sroa.0.070.i
  %.not19.i = icmp ugt i64 %i.eu, %i.u
  %or.cond.i = or i1 %i.ev, %.not19.i
  br i1 %or.cond.i, label %bb.ae, label %bb.af, !prof !15

bb.ad:                                            ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, %bb.ab
  %.sroa.04.1.i = phi i64 [ %i.il, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i ], [ %.sroa.04.069.i, %bb.ab ]
  %.sroa.0.1.i5 = phi i64 [ %i.eu, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i ], [ %.sroa.0.070.i, %bb.ab ]
  %i.ew = icmp eq i64 %.sroa.034.0.add.i, 160
  br i1 %i.ew, label %bb.ao, label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.070.i, i64 noundef %i.eu, i64 noundef range(i64 0, -9223372036854775808) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.0.070.i ; 3 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.7.067.i ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !406, !noalias !411, !noundef !5 ; 3 uses
  %.not.i20.i = icmp eq ptr %i.ez, null
  br i1 %.not.i20.i, label %bb.aj, label %bb.ag, !prof !14

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !406, !noalias !411 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.fb, %i.et
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ai, !prof !14

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !412
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.fc, ptr noundef nonnull readonly %i.ez, ptr noundef nonnull readonly %i.fd)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %bb.ai
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !413 ; 9 uses
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !413 ; 9 uses
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !413 ; 7 uses
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !413 ; 5 uses
  %i.fe = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.fe, label %iter.check159, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKja_Es_0B9_.exit.i

iter.check159:                                    ; preds = %.noexc11
  %.sroa.44.0.copyload.i.i.i.i145 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i144 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i) ]
  %i.ff = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i ; 7 uses
  %min.iters.check147 = icmp ult i64 %i.ff, 8
  %i.fg = sub i64 %.sroa.44.0.copyload.i.i.i.i145, %.sroa.0.0.copyload.i.i.i.i144
  %diff.check146 = icmp ugt i64 %i.fg, -32
  %or.cond173 = select i1 %min.iters.check147, i1 true, i1 %diff.check146
  br i1 %or.cond173, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %iter.check159
  %min.iters.check149 = icmp ult i64 %i.ff, 32
  br i1 %min.iters.check149, label %vec.epilog.ph163, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.fh = and i64 %i.ff, 24
  %n.vec151 = and i64 %i.ff, -32                  ; 4 uses
  %i.fi = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec151
  br label %vector.body152

vector.body152:                                   ; preds = %vector.ph150, %vector.body152
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next156, %vector.body152 ] ; 2 uses
  %i.fj = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index153 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fj ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load154 = load <16 x i8>, ptr %i.fl, align 1, !noalias !414
  %wide.load155 = load <16 x i8>, ptr %i.fm, align 1, !noalias !414
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <16 x i8> %wide.load154, ptr %i.fk, align 1, !noalias !414
  store <16 x i8> %wide.load155, ptr %i.fn, align 1, !noalias !414
  %index.next156 = add nuw i64 %index153, 32      ; 2 uses
  %i.fo = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.fo, label %middle.block157, label %vector.body152, !llvm.loop !384

middle.block157:                                  ; preds = %vector.body152
  %cmp.n158 = icmp eq i64 %i.ff, %n.vec151
  br i1 %cmp.n158, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKja_Es_0B9_.exit.i, label %vec.epilog.iter.check160

vec.epilog.iter.check160:                         ; preds = %middle.block157
  %min.epilog.iters.check162 = icmp eq i64 %i.fh, 0
  br i1 %min.epilog.iters.check162, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vec.epilog.ph163, !prof !12

vec.epilog.ph163:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check160
  %vec.epilog.resume.val164 = phi i64 [ %n.vec151, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec165 = and i64 %i.ff, -8                   ; 3 uses
  %i.fp = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec165
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph163
  %index167 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph163 ], [ %index.next169, %vec.epilog.vector.body166 ] ; 2 uses
  %i.fq = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index167 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fq
  %wide.load168 = load <8 x i8>, ptr %i.fs, align 1, !noalias !414
  store <8 x i8> %wide.load168, ptr %i.fr, align 1, !noalias !414
  %index.next169 = add nuw i64 %index167, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next169, %n.vec165
  br i1 %i.ft, label %vec.epilog.middle.block170, label %vec.epilog.vector.body166, !llvm.loop !385

vec.epilog.middle.block170:                       ; preds = %vec.epilog.vector.body166
  %cmp.n171 = icmp eq i64 %i.ff, %n.vec165
  br i1 %cmp.n171, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKja_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader: ; preds = %iter.check159, %vec.epilog.iter.check160, %vec.epilog.middle.block170
  %.sroa.55.010.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i, %iter.check159 ], [ %i.fi, %vec.epilog.iter.check160 ], [ %i.fp, %vec.epilog.middle.block170 ] ; 4 uses
  %i.fu = sub i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.010.i.i.i.i.ph
  %xtraiter188 = and i64 %i.fu, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.prol = phi i64 [ %i.fx, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ] ; 3 uses
  %prol.iter190 = phi i64 [ %prol.iter190.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.fx = add nuw i64 %.sroa.55.010.i.i.i.i.prol, 1 ; 2 uses
  %i.fy = load i8, ptr %i.fw, align 1, !noalias !414, !noundef !5
  store i8 %i.fy, ptr %i.fv, align 1, !noalias !414
  %prol.iter190.next = add i64 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i64 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, !llvm.loop !386

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ], [ %i.fx, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ]
  %i.fz = sub i64 %.sroa.55.010.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKja_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.55.010.i.i.i.i = phi i64 [ %i.gp, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.gd = add nuw i64 %.sroa.55.010.i.i.i.i, 1    ; 2 uses
  %i.ge = load i8, ptr %i.gc, align 1, !noalias !414, !noundef !5
  store i8 %i.ge, ptr %i.gb, align 1, !noalias !414
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gd
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gd
  %i.gh = add nuw i64 %.sroa.55.010.i.i.i.i, 2    ; 2 uses
  %i.gi = load i8, ptr %i.gg, align 1, !noalias !414, !noundef !5
  store i8 %i.gi, ptr %i.gf, align 1, !noalias !414
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gh
  %i.gl = add nuw i64 %.sroa.55.010.i.i.i.i, 3    ; 2 uses
  %i.gm = load i8, ptr %i.gk, align 1, !noalias !414, !noundef !5
  store i8 %i.gm, ptr %i.gj, align 1, !noalias !414
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gl
  %i.gp = add nuw i64 %.sroa.55.010.i.i.i.i, 4    ; 2 uses
  %i.gq = load i8, ptr %i.go, align 1, !noalias !414, !noundef !5
  store i8 %i.gq, ptr %i.gn, align 1, !noalias !414
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.gp, %.sroa.7.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKja_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !llvm.loop !387

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.aj
  unreachable

_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKja_Es_0B9_.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %middle.block157, %vec.epilog.middle.block170, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !407
  store ptr %i.ex, ptr %i.f, align 8, !noalias !407
  store i64 %i.et, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !407
  store i64 %i.fb, ptr %.sroa.737.0..sroa_idx.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !415
  store i64 %i.et, ptr %i.b, align 8, !noalias !415
  %i.gr = icmp eq i64 %i.fb, %i.et
  br i1 %i.gr, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKja_Es_0B9_.exit.i
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.737.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @127, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #21
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.ak
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKja_Es_0B9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !407
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %i.eu to i16
  %i.gs = shl i64 %.sroa.04.069.i, 1              ; 2 uses
  %i.gt = add i64 %i.gs, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !407
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %i.e, align 2, !noalias !407
  %i.gu = add i64 %i.gs, 4                        ; 2 uses
  %i.gv = icmp eq i64 %i.gt, -2
  %.not.i21.i = icmp ugt i64 %i.gu, %i.u
  %or.cond.i.i = or i1 %i.gv, %.not.i21.i
  br i1 %or.cond.i.i, label %bb.am, label %bb.al, !prof !15

bb.al:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.gt ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !416
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gx, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.eo)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.al
  %.sroa.0.0.copyload.i.i22.i = load ptr, ptr %i.a, align 8, !noalias !417 ; 9 uses
  %.sroa.44.0.copyload.i.i24.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i23.i, align 8, !noalias !417 ; 9 uses
  %.sroa.55.0.copyload.i.i26.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i25.i, align 8, !noalias !417 ; 7 uses
  %.sroa.7.0.copyload.i.i28.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i27.i, align 8, !noalias !417 ; 5 uses
  %i.gy = icmp ult i64 %.sroa.55.0.copyload.i.i26.i, %.sroa.7.0.copyload.i.i28.i
  br i1 %i.gy, label %iter.check129, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i

iter.check129:                                    ; preds = %.noexc15
  %.sroa.44.0.copyload.i.i24.i115 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i24.i to i64
  %.sroa.0.0.copyload.i.i22.i114 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i22.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i22.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i24.i) ]
  %i.gz = sub nuw i64 %.sroa.7.0.copyload.i.i28.i, %.sroa.55.0.copyload.i.i26.i ; 7 uses
  %min.iters.check117 = icmp ult i64 %i.gz, 8
  %i.ha = sub i64 %.sroa.44.0.copyload.i.i24.i115, %.sroa.0.0.copyload.i.i22.i114
  %diff.check116 = icmp ugt i64 %i.ha, -32
  %or.cond174 = select i1 %min.iters.check117, i1 true, i1 %diff.check116
  br i1 %or.cond174, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, label %vector.main.loop.iter.check118

vector.main.loop.iter.check118:                   ; preds = %iter.check129
  %min.iters.check119 = icmp ult i64 %i.gz, 32
  br i1 %min.iters.check119, label %vec.epilog.ph133, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check118
  %i.hb = and i64 %i.gz, 24
  %n.vec121 = and i64 %i.gz, -32                  ; 4 uses
  %i.hc = add i64 %.sroa.55.0.copyload.i.i26.i, %n.vec121
  br label %vector.body122

vector.body122:                                   ; preds = %vector.ph120, %vector.body122
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next126, %vector.body122 ] ; 2 uses
  %i.hd = add nuw i64 %.sroa.55.0.copyload.i.i26.i, %index123 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.hd ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load124 = load <16 x i8>, ptr %i.hf, align 1, !noalias !410
  %wide.load125 = load <16 x i8>, ptr %i.hg, align 1, !noalias !410
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <16 x i8> %wide.load124, ptr %i.he, align 1, !noalias !410
  store <16 x i8> %wide.load125, ptr %i.hh, align 1, !noalias !410
  %index.next126 = add nuw i64 %index123, 32      ; 2 uses
  %i.hi = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.hi, label %middle.block127, label %vector.body122, !llvm.loop !396

middle.block127:                                  ; preds = %vector.body122
  %cmp.n128 = icmp eq i64 %i.gz, %n.vec121
  br i1 %cmp.n128, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %vec.epilog.iter.check130

vec.epilog.iter.check130:                         ; preds = %middle.block127
  %min.epilog.iters.check132 = icmp eq i64 %i.hb, 0
  br i1 %min.epilog.iters.check132, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, label %vec.epilog.ph133, !prof !12

vec.epilog.ph133:                                 ; preds = %vector.main.loop.iter.check118, %vec.epilog.iter.check130
  %vec.epilog.resume.val134 = phi i64 [ %n.vec121, %vec.epilog.iter.check130 ], [ 0, %vector.main.loop.iter.check118 ]
  %n.vec135 = and i64 %i.gz, -8                   ; 3 uses
  %i.hj = add i64 %.sroa.55.0.copyload.i.i26.i, %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph133
  %index137 = phi i64 [ %vec.epilog.resume.val134, %vec.epilog.ph133 ], [ %index.next139, %vec.epilog.vector.body136 ] ; 2 uses
  %i.hk = add nuw i64 %.sroa.55.0.copyload.i.i26.i, %index137 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.hk
  %wide.load138 = load <8 x i8>, ptr %i.hm, align 1, !noalias !410
  store <8 x i8> %wide.load138, ptr %i.hl, align 1, !noalias !410
  %index.next139 = add nuw i64 %index137, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next139, %n.vec135
  br i1 %i.hn, label %vec.epilog.middle.block140, label %vec.epilog.vector.body136, !llvm.loop !397

vec.epilog.middle.block140:                       ; preds = %vec.epilog.vector.body136
  %cmp.n141 = icmp eq i64 %i.gz, %n.vec135
  br i1 %cmp.n141, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader: ; preds = %iter.check129, %vec.epilog.iter.check130, %vec.epilog.middle.block140
  %.sroa.55.010.i.i31.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i26.i, %iter.check129 ], [ %i.hc, %vec.epilog.iter.check130 ], [ %i.hj, %vec.epilog.middle.block140 ] ; 4 uses
  %i.ho = sub i64 %.sroa.7.0.copyload.i.i28.i, %.sroa.55.010.i.i31.i.ph
  %xtraiter191 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol
  %.sroa.55.010.i.i31.i.prol = phi i64 [ %i.hr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ], [ %.sroa.55.010.i.i31.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ] ; 3 uses
  %prol.iter193 = phi i64 [ %prol.iter193.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %.sroa.55.010.i.i31.i.prol
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %.sroa.55.010.i.i31.i.prol
  %i.hr = add nuw i64 %.sroa.55.010.i.i31.i.prol, 1 ; 2 uses
  %i.hs = load i8, ptr %i.hq, align 1, !noalias !410, !noundef !5
  store i8 %i.hs, ptr %i.hp, align 1, !noalias !410
  %prol.iter193.next = add i64 %prol.iter193, 1   ; 2 uses
  %prol.iter193.cmp.not = icmp eq i64 %prol.iter193.next, %xtraiter191
  br i1 %prol.iter193.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol, !llvm.loop !398

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader
  %.sroa.55.010.i.i31.i.unr = phi i64 [ %.sroa.55.010.i.i31.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ], [ %i.hr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ]
  %i.ht = sub i64 %.sroa.55.010.i.i31.i.ph, %.sroa.7.0.copyload.i.i28.i
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i
  %.sroa.55.010.i.i31.i = phi i64 [ %i.ij, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i ], [ %.sroa.55.010.i.i31.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit ] ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %.sroa.55.010.i.i31.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %.sroa.55.010.i.i31.i
  %i.hx = add nuw i64 %.sroa.55.010.i.i31.i, 1    ; 2 uses
  %i.hy = load i8, ptr %i.hw, align 1, !noalias !410, !noundef !5
  store i8 %i.hy, ptr %i.hv, align 1, !noalias !410
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.hx
  %i.ib = add nuw i64 %.sroa.55.010.i.i31.i, 2    ; 2 uses
  %i.ic = load i8, ptr %i.ia, align 1, !noalias !410, !noundef !5
  store i8 %i.ic, ptr %i.hz, align 1, !noalias !410
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.ib
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.ib
  %i.if = add nuw i64 %.sroa.55.010.i.i31.i, 3    ; 2 uses
  %i.ig = load i8, ptr %i.ie, align 1, !noalias !410, !noundef !5
  store i8 %i.ig, ptr %i.id, align 1, !noalias !410
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.if
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.if
  %i.ij = add nuw i64 %.sroa.55.010.i.i31.i, 4    ; 2 uses
  %i.ik = load i8, ptr %i.ii, align 1, !noalias !410, !noundef !5
  store i8 %i.ik, ptr %i.ih, align 1, !noalias !410
  %exitcond.not.i.i32.i.3 = icmp eq i64 %i.ij, %.sroa.7.0.copyload.i.i28.i
  br i1 %exitcond.not.i.i32.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i, !llvm.loop !399

bb.am:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.gt, i64 noundef %i.gu, i64 noundef range(i64 0, -9223372036854775808) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #21
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.am
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i, %middle.block127, %vec.epilog.middle.block140, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !407
  %i.il = add i64 %.sroa.04.069.i, 1
  br label %bb.ad

bb.an:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  unreachable

bb.ao:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.w

bb.ap:                                            ; preds = %bb.x
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.loopexit.split-lp, %bb.x
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKjb_NCINvB2_6encodeKB1l_Es_0EB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.k = load i64, ptr %0, align 8, !range !6, !alias.scope !464, !noundef !5 ; 2 uses
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %.sroa.08.1.i = select i1 %i.l, i64 %i.n, i64 0 ; 3 uses
  %i.o = trunc nuw i64 %i.k to i16                ; 2 uses
  %.sroa.0.01929.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %.sroa.0.01929.i.ptr.1, align 8, !range !6, !alias.scope !464, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %.lr.ph.i.2

bb.a:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %.sroa.0.1.i.1076 = phi i16 [ %i.cm, %._crit_edge.i.thread ], [ %.sroa.0.1.i.9, %._crit_edge.i ] ; 2 uses
  %.sroa.08.1.i.1075 = phi i64 [ %i.ck, %._crit_edge.i.thread ], [ %.sroa.08.1.i.9, %._crit_edge.i ]
  %i.r = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.1.i.1076)
  %i.s = shl nuw nsw i16 %i.r, 1
  %narrow.i = add nuw nsw i16 %i.s, 2
  %i.t = zext nneg i16 %narrow.i to i64           ; 3 uses
  %i.u = add i64 %.sroa.08.1.i.1075, %i.t         ; 10 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.w = icmp ult i64 %i.u, 65536
  br i1 %i.w, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #21, !noalias !465
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @132, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #21, !noalias !465
  unreachable

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !464, !noundef !5
  %i.z = add i64 %i.y, %.sroa.08.1.i              ; 2 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.08.1.i
  br i1 %i.aa, label %bb.x, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.ab = or disjoint i16 %i.o, 2
end_hunk_3
begin_hunk_4_@_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKjb_NCINvB2_6encodeKB1l_Es_0EB7_:.lr.ph.i
  %.sroa.0.1.i.5 = phi i16 [ %i.bd, %bb.n ], [ %.sroa.0.1.i.4, %.lr.ph.i.5 ] ; 2 uses
  %.sroa.0.01929.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load i64, ptr %.sroa.0.01929.i.ptr.6, align 8, !range !6, !alias.scope !464, !noundef !5
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.o, label %.lr.ph.i.7

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !464, !noundef !5
  %i.bi = add i64 %i.bh, %.sroa.08.1.i.5          ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.sroa.08.1.i.5
  br i1 %i.bj, label %bb.x, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.bk = or i16 %.sroa.0.1.i.5, 64
  br label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.p, %.lr.ph.i.6
  %.sroa.08.1.i.6 = phi i64 [ %i.bi, %bb.p ], [ %.sroa.08.1.i.5, %.lr.ph.i.6 ] ; 3 uses
  %.sroa.0.1.i.6 = phi i16 [ %i.bk, %bb.p ], [ %.sroa.0.1.i.5, %.lr.ph.i.6 ] ; 2 uses
  %.sroa.0.01929.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = load i64, ptr %.sroa.0.01929.i.ptr.7, align 8, !range !6, !alias.scope !464, !noundef !5
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.q, label %.lr.ph.i.8

bb.q:                                             ; preds = %.lr.ph.i.7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !464, !noundef !5
  %i.bp = add i64 %i.bo, %.sroa.08.1.i.6          ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.08.1.i.6
  br i1 %i.bq, label %bb.x, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.br = or i16 %.sroa.0.1.i.6, 128
  br label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %bb.r, %.lr.ph.i.7
  %.sroa.08.1.i.7 = phi i64 [ %i.bp, %bb.r ], [ %.sroa.08.1.i.6, %.lr.ph.i.7 ] ; 3 uses
  %.sroa.0.1.i.7 = phi i16 [ %i.br, %bb.r ], [ %.sroa.0.1.i.6, %.lr.ph.i.7 ] ; 2 uses
  %.sroa.0.01929.i.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = load i64, ptr %.sroa.0.01929.i.ptr.8, align 8, !range !6, !alias.scope !464, !noundef !5
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.s, label %.lr.ph.i.9

bb.s:                                             ; preds = %.lr.ph.i.8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !464, !noundef !5
  %i.bw = add i64 %i.bv, %.sroa.08.1.i.7          ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %.sroa.08.1.i.7
  br i1 %i.bx, label %bb.x, label %bb.t, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.by = or i16 %.sroa.0.1.i.7, 256
  br label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %bb.t, %.lr.ph.i.8
  %.sroa.08.1.i.8 = phi i64 [ %i.bw, %bb.t ], [ %.sroa.08.1.i.7, %.lr.ph.i.8 ] ; 3 uses
  %.sroa.0.1.i.8 = phi i16 [ %i.by, %bb.t ], [ %.sroa.0.1.i.7, %.lr.ph.i.8 ] ; 2 uses
  %.sroa.0.01929.i.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load i64, ptr %.sroa.0.01929.i.ptr.9, align 8, !range !6, !alias.scope !464, !noundef !5
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.u, label %.lr.ph.i.10

bb.u:                                             ; preds = %.lr.ph.i.9
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !464, !noundef !5
  %i.cd = add i64 %i.cc, %.sroa.08.1.i.8          ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %.sroa.08.1.i.8
  br i1 %i.ce, label %bb.x, label %bb.v, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.cf = or i16 %.sroa.0.1.i.8, 512
  br label %.lr.ph.i.10

.lr.ph.i.10:                                      ; preds = %bb.v, %.lr.ph.i.9
  %.sroa.08.1.i.9 = phi i64 [ %i.cd, %bb.v ], [ %.sroa.08.1.i.8, %.lr.ph.i.9 ] ; 3 uses
  %.sroa.0.1.i.9 = phi i16 [ %i.cf, %bb.v ], [ %.sroa.0.1.i.8, %.lr.ph.i.9 ] ; 3 uses
  %.sroa.0.01929.i.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cg = load i64, ptr %.sroa.0.01929.i.ptr.10, align 8, !range !6, !alias.scope !464, !noundef !5
  %i.ch = trunc nuw i64 %i.cg to i1
  br i1 %i.ch, label %bb.w, label %._crit_edge.i

bb.w:                                             ; preds = %.lr.ph.i.10
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !464, !noundef !5
  %i.ck = add i64 %i.cj, %.sroa.08.1.i.9          ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.08.1.i.9
  br i1 %i.cl, label %bb.x, label %._crit_edge.i.thread, !prof !14

._crit_edge.i.thread:                             ; preds = %bb.w
  %i.cm = or i16 %.sroa.0.1.i.9, 1024
  br label %bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i.10
  %i.cn = icmp eq i16 %.sroa.0.1.i.9, 0
  br i1 %i.cn, label %bb.y, label %bb.a

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #21, !noalias !465
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.co = tail call { ptr, i64 } @_RNvMsq_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE18allocate_for_sliceCs5XgW7KoffLW_12opendal_core(i64 noundef %i.u) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 4 uses
  %i.cq = extractvalue { ptr, i64 } %i.co, 1
  store ptr %i.cp, ptr %i.j, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.cq, ptr %i.cr, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.ct = cmpxchg ptr %i.cs, i64 1, i64 -1 acquire monotonic, align 8
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cu, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !7

bb.y:                                             ; preds = %._crit_edge.i, %bb.aq
  %.sroa.3.0 = phi i64 [ %i.u, %bb.aq ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi ptr [ %i.dc, %bb.aq ], [ null, %._crit_edge.i ]
  %i.cv = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.cw = insertvalue { ptr, i64 } %i.cv, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.cw

.loopexit.split-lp.loopexit:                      ; preds = %bb.ak, %bb.an
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ao, %bb.am, %bb.al, %bb.aj, %bb.ag, %bb.ac, %bb.ab, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.j, align 8, !alias.scope !466
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.cx = phi ptr [ %i.dc, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.cy = atomicrmw add ptr %i.cx, i64 -1 release, align 8, !noalias !466
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.z, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit

bb.z:                                             ; preds = %.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.ar

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit
  %i.da = load atomic i64, ptr %i.cp acquire, align 8
  %i.db = icmp eq i64 %i.da, 1
  store atomic i64 1, ptr %i.cs release, align 8
  br i1 %i.db, label %bb.aa, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread, !prof !8

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit
  %i.dc = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.dd = load i64, ptr %i.cr, align 8, !noundef !5 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !471
  store i64 %i.u, ptr %i.i, align 8, !noalias !471
  store i64 %i.dd, ptr %i.h, align 8, !noalias !471
  %i.df = icmp eq i64 %i.dd, %i.u
  br i1 %i.df, label %bb.ac, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !471
  store i16 %.sroa.0.1.i.1076, ptr %i.g, align 2, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !472
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.de, ptr noundef nonnull %i.dg, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.dh)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.ac
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !noalias !473 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !473 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !473 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !473 ; 5 uses
  %i.di = icmp ult i64 %.sroa.55.0.copyload.i.i.i, %.sroa.7.0.copyload.i.i.i
  br i1 %i.di, label %iter.check, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i

iter.check:                                       ; preds = %.noexc7
  %.sroa.44.0.copyload.i.i.i105 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i106 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i) ]
  %i.dj = sub nuw i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.0.copyload.i.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.dj, 8
  %i.dk = sub i64 %.sroa.44.0.copyload.i.i.i105, %.sroa.0.0.copyload.i.i.i106
  %diff.check = icmp ugt i64 %i.dk, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.dj, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dl = and i64 %i.dj, 24
  %n.vec = and i64 %i.dj, -32                     ; 4 uses
  %i.dm = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <16 x i8>, ptr %i.dp, align 1, !noalias !474
  %wide.load108 = load <16 x i8>, ptr %i.dq, align 1, !noalias !474
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <16 x i8> %wide.load, ptr %i.do, align 1, !noalias !474
  store <16 x i8> %wide.load108, ptr %i.dr, align 1, !noalias !474
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %i.dj, -8                   ; 3 uses
  %i.dt = add i64 %.sroa.55.0.copyload.i.i.i, %n.vec109
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 2 uses
  %i.du = add nuw i64 %.sroa.55.0.copyload.i.i.i, %index110 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.du
  %wide.load111 = load <8 x i8>, ptr %i.dw, align 1, !noalias !474
  store <8 x i8> %wide.load111, ptr %i.dv, align 1, !noalias !474
  %index.next112 = add nuw i64 %index110, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next112, %n.vec109
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !437

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %i.dj, %n.vec109
  br i1 %cmp.n113, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i, %iter.check ], [ %i.dm, %vec.epilog.iter.check ], [ %i.dt, %vec.epilog.middle.block ] ; 4 uses
  %i.dy = sub i64 %.sroa.7.0.copyload.i.i.i, %.sroa.55.010.i.i.i.ph
  %xtraiter = and i64 %i.dy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol
  %.sroa.55.010.i.i.i.prol = phi i64 [ %i.eb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i.prol
  %i.eb = add nuw i64 %.sroa.55.010.i.i.i.prol, 1 ; 2 uses
  %i.ec = load i8, ptr %i.ea, align 1, !noalias !474, !noundef !5
  store i8 %i.ec, ptr %i.dz, align 1, !noalias !474
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, !llvm.loop !438

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader
  %.sroa.55.010.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.preheader ], [ %i.eb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol ]
  %i.ed = sub i64 %.sroa.55.010.i.i.i.ph, %.sroa.7.0.copyload.i.i.i
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  %.sroa.55.010.i.i.i = phi i64 [ %i.et, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i ], [ %.sroa.55.010.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %.sroa.55.010.i.i.i
  %i.eh = add nuw i64 %.sroa.55.010.i.i.i, 1      ; 2 uses
  %i.ei = load i8, ptr %i.eg, align 1, !noalias !474, !noundef !5
  store i8 %i.ei, ptr %i.ef, align 1, !noalias !474
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.eh
  %i.el = add nuw i64 %.sroa.55.010.i.i.i, 2      ; 2 uses
  %i.em = load i8, ptr %i.ek, align 1, !noalias !474, !noundef !5
  store i8 %i.em, ptr %i.ej, align 1, !noalias !474
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.el
  %i.ep = add nuw i64 %.sroa.55.010.i.i.i, 3      ; 2 uses
  %i.eq = load i8, ptr %i.eo, align 1, !noalias !474, !noundef !5
  store i8 %i.eq, ptr %i.en, align 1, !noalias !474
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ep
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ep
  %i.et = add nuw i64 %.sroa.55.010.i.i.i, 4      ; 2 uses
  %i.eu = load i8, ptr %i.es, align 1, !noalias !474, !noundef !5
  store i8 %i.eu, ptr %i.er, align 1, !noalias !474
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.et, %.sroa.7.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !llvm.loop !439

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !471
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.44.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i
  %.sroa.0.070.i = phi i64 [ %i.t, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.0.1.i5, %bb.af ] ; 5 uses
  %.sroa.04.069.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.04.1.i, %bb.af ] ; 3 uses
  %.sroa.034.0.idx68.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %.sroa.034.0.add.i, %bb.af ] ; 2 uses
  %.sroa.7.067.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i ], [ %i.ew, %bb.af ] ; 2 uses
  %.sroa.034.0.ptr71.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.034.0.idx68.i ; 2 uses
  %.sroa.034.0.add.i = add nuw nsw i64 %.sroa.034.0.idx68.i, 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.sroa.7.067.i, 1
  %i.ex = load i64, ptr %.sroa.034.0.ptr71.i, align 8, !range !6, !alias.scope !469, !noundef !5
  %i.ey = trunc nuw i64 %i.ex to i1
  br i1 %i.ey, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.034.0.ptr71.i, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !469, !noundef !5 ; 5 uses
  %i.fb = add i64 %i.fa, %.sroa.0.070.i           ; 5 uses
  %i.fc = icmp ult i64 %i.fb, %.sroa.0.070.i
  %.not19.i = icmp ugt i64 %i.fb, %i.u
  %or.cond.i = or i1 %i.fc, %.not19.i
  br i1 %or.cond.i, label %bb.ag, label %bb.ah, !prof !15

bb.af:                                            ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, %bb.ad
  %.sroa.04.1.i = phi i64 [ %i.is, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i ], [ %.sroa.04.069.i, %bb.ad ]
  %.sroa.0.1.i5 = phi i64 [ %i.fb, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i ], [ %.sroa.0.070.i, %bb.ad ]
  %i.fd = icmp eq i64 %.sroa.034.0.add.i, 176
  br i1 %i.fd, label %bb.aq, label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.070.i, i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.0.070.i ; 3 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.7.067.i ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !470, !noalias !475, !noundef !5 ; 3 uses
  %.not.i20.i = icmp eq ptr %i.fg, null
  br i1 %.not.i20.i, label %bb.al, label %bb.ai, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !470, !noalias !475 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.fi, %i.fa
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ak, !prof !14

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !476
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.fe, ptr noundef nonnull %i.fj, ptr noundef nonnull readonly %i.fg, ptr noundef nonnull readonly %i.fk)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !477 ; 9 uses
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !477 ; 9 uses
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !477 ; 7 uses
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !477 ; 5 uses
  %i.fl = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.fl, label %iter.check160, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKjb_Es_0B9_.exit.i

iter.check160:                                    ; preds = %.noexc11
  %.sroa.44.0.copyload.i.i.i.i146 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i145 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i) ]
  %i.fm = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i ; 7 uses
  %min.iters.check148 = icmp ult i64 %i.fm, 8
  %i.fn = sub i64 %.sroa.44.0.copyload.i.i.i.i146, %.sroa.0.0.copyload.i.i.i.i145
  %diff.check147 = icmp ugt i64 %i.fn, -32
  %or.cond174 = select i1 %min.iters.check148, i1 true, i1 %diff.check147
  br i1 %or.cond174, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check160
  %min.iters.check150 = icmp ult i64 %i.fm, 32
  br i1 %min.iters.check150, label %vec.epilog.ph164, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.fo = and i64 %i.fm, 24
  %n.vec152 = and i64 %i.fm, -32                  ; 4 uses
  %i.fp = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec152
  br label %vector.body153

vector.body153:                                   ; preds = %vector.ph151, %vector.body153
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next157, %vector.body153 ] ; 2 uses
  %i.fq = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index154 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fq ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load155 = load <16 x i8>, ptr %i.fs, align 1, !noalias !478
  %wide.load156 = load <16 x i8>, ptr %i.ft, align 1, !noalias !478
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <16 x i8> %wide.load155, ptr %i.fr, align 1, !noalias !478
  store <16 x i8> %wide.load156, ptr %i.fu, align 1, !noalias !478
  %index.next157 = add nuw i64 %index154, 32      ; 2 uses
  %i.fv = icmp eq i64 %index.next157, %n.vec152
  br i1 %i.fv, label %middle.block158, label %vector.body153, !llvm.loop !448

middle.block158:                                  ; preds = %vector.body153
  %cmp.n159 = icmp eq i64 %i.fm, %n.vec152
  br i1 %cmp.n159, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKjb_Es_0B9_.exit.i, label %vec.epilog.iter.check161

vec.epilog.iter.check161:                         ; preds = %middle.block158
  %min.epilog.iters.check163 = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check163, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vec.epilog.ph164, !prof !12

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check161
  %vec.epilog.resume.val165 = phi i64 [ %n.vec152, %vec.epilog.iter.check161 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec166 = and i64 %i.fm, -8                   ; 3 uses
  %i.fw = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec166
  br label %vec.epilog.vector.body167

vec.epilog.vector.body167:                        ; preds = %vec.epilog.vector.body167, %vec.epilog.ph164
  %index168 = phi i64 [ %vec.epilog.resume.val165, %vec.epilog.ph164 ], [ %index.next170, %vec.epilog.vector.body167 ] ; 2 uses
  %i.fx = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index168 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.fx
  %wide.load169 = load <8 x i8>, ptr %i.fz, align 1, !noalias !478
  store <8 x i8> %wide.load169, ptr %i.fy, align 1, !noalias !478
  %index.next170 = add nuw i64 %index168, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next170, %n.vec166
  br i1 %i.ga, label %vec.epilog.middle.block171, label %vec.epilog.vector.body167, !llvm.loop !449

vec.epilog.middle.block171:                       ; preds = %vec.epilog.vector.body167
  %cmp.n172 = icmp eq i64 %i.fm, %n.vec166
  br i1 %cmp.n172, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKjb_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader: ; preds = %iter.check160, %vec.epilog.iter.check161, %vec.epilog.middle.block171
  %.sroa.55.010.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i, %iter.check160 ], [ %i.fp, %vec.epilog.iter.check161 ], [ %i.fw, %vec.epilog.middle.block171 ] ; 4 uses
  %i.gb = sub i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.010.i.i.i.i.ph
  %xtraiter189 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.prol = phi i64 [ %i.ge, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.ge = add nuw i64 %.sroa.55.010.i.i.i.i.prol, 1 ; 2 uses
  %i.gf = load i8, ptr %i.gd, align 1, !noalias !478, !noundef !5
  store i8 %i.gf, ptr %i.gc, align 1, !noalias !478
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, !llvm.loop !450

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ], [ %i.ge, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ]
  %i.gg = sub i64 %.sroa.55.010.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i
  %i.gh = icmp ugt i64 %i.gg, -4
  br i1 %i.gh, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKjb_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.55.010.i.i.i.i = phi i64 [ %i.gw, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.gk = add nuw i64 %.sroa.55.010.i.i.i.i, 1    ; 2 uses
  %i.gl = load i8, ptr %i.gj, align 1, !noalias !478, !noundef !5
  store i8 %i.gl, ptr %i.gi, align 1, !noalias !478
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gk
  %i.go = add nuw i64 %.sroa.55.010.i.i.i.i, 2    ; 2 uses
  %i.gp = load i8, ptr %i.gn, align 1, !noalias !478, !noundef !5
  store i8 %i.gp, ptr %i.gm, align 1, !noalias !478
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.go
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.go
  %i.gs = add nuw i64 %.sroa.55.010.i.i.i.i, 3    ; 2 uses
  %i.gt = load i8, ptr %i.gr, align 1, !noalias !478, !noundef !5
  store i8 %i.gt, ptr %i.gq, align 1, !noalias !478
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gs
  %i.gw = add nuw i64 %.sroa.55.010.i.i.i.i, 4    ; 2 uses
  %i.gx = load i8, ptr %i.gv, align 1, !noalias !478, !noundef !5
  store i8 %i.gx, ptr %i.gu, align 1, !noalias !478
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.gw, %.sroa.7.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKjb_Es_0B9_.exit.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !llvm.loop !451

bb.al:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.al
  unreachable

_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKjb_Es_0B9_.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %middle.block158, %vec.epilog.middle.block171, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !471
  store ptr %i.fe, ptr %i.f, align 8, !noalias !471
  store i64 %i.fa, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !471
  store i64 %i.fi, ptr %.sroa.737.0..sroa_idx.i, align 8, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !479
  store i64 %i.fa, ptr %i.b, align 8, !noalias !479
  %i.gy = icmp eq i64 %i.fi, %i.fa
  br i1 %i.gy, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i, label %bb.am, !prof !9

bb.am:                                            ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKjb_Es_0B9_.exit.i
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.737.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @127, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #21
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.am
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKjb_Es_0B9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !471
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %i.fb to i16
  %i.gz = shl i64 %.sroa.04.069.i, 1              ; 2 uses
  %i.ha = add i64 %i.gz, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !471
  store i16 %.sroa.5.0.extract.trunc.i.i, ptr %i.e, align 2, !noalias !471
  %i.hb = add i64 %i.gz, 4                        ; 2 uses
  %i.hc = icmp eq i64 %i.ha, -2
  %.not.i21.i = icmp ugt i64 %i.hb, %i.u
  %or.cond.i.i = or i1 %i.hc, %.not.i21.i
  br i1 %or.cond.i.i, label %bb.ao, label %bb.an, !prof !15

bb.an:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ha ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !480
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.ev)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.an
  %.sroa.0.0.copyload.i.i22.i = load ptr, ptr %i.a, align 8, !noalias !481 ; 9 uses
  %.sroa.44.0.copyload.i.i24.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i23.i, align 8, !noalias !481 ; 9 uses
  %.sroa.55.0.copyload.i.i26.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i25.i, align 8, !noalias !481 ; 7 uses
  %.sroa.7.0.copyload.i.i28.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i27.i, align 8, !noalias !481 ; 5 uses
  %i.hf = icmp ult i64 %.sroa.55.0.copyload.i.i26.i, %.sroa.7.0.copyload.i.i28.i
  br i1 %i.hf, label %iter.check130, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i

iter.check130:                                    ; preds = %.noexc15
  %.sroa.44.0.copyload.i.i24.i116 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i24.i to i64
  %.sroa.0.0.copyload.i.i22.i115 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i22.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i22.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i24.i) ]
  %i.hg = sub nuw i64 %.sroa.7.0.copyload.i.i28.i, %.sroa.55.0.copyload.i.i26.i ; 7 uses
  %min.iters.check118 = icmp ult i64 %i.hg, 8
  %i.hh = sub i64 %.sroa.44.0.copyload.i.i24.i116, %.sroa.0.0.copyload.i.i22.i115
  %diff.check117 = icmp ugt i64 %i.hh, -32
  %or.cond175 = select i1 %min.iters.check118, i1 true, i1 %diff.check117
  br i1 %or.cond175, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %iter.check130
  %min.iters.check120 = icmp ult i64 %i.hg, 32
  br i1 %min.iters.check120, label %vec.epilog.ph134, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %i.hi = and i64 %i.hg, 24
  %n.vec122 = and i64 %i.hg, -32                  ; 4 uses
  %i.hj = add i64 %.sroa.55.0.copyload.i.i26.i, %n.vec122
  br label %vector.body123

vector.body123:                                   ; preds = %vector.ph121, %vector.body123
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next127, %vector.body123 ] ; 2 uses
  %i.hk = add nuw i64 %.sroa.55.0.copyload.i.i26.i, %index124 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.hk ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load125 = load <16 x i8>, ptr %i.hm, align 1, !noalias !474
  %wide.load126 = load <16 x i8>, ptr %i.hn, align 1, !noalias !474
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <16 x i8> %wide.load125, ptr %i.hl, align 1, !noalias !474
  store <16 x i8> %wide.load126, ptr %i.ho, align 1, !noalias !474
  %index.next127 = add nuw i64 %index124, 32      ; 2 uses
  %i.hp = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.hp, label %middle.block128, label %vector.body123, !llvm.loop !460

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %i.hg, %n.vec122
  br i1 %cmp.n129, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %vec.epilog.iter.check131

vec.epilog.iter.check131:                         ; preds = %middle.block128
  %min.epilog.iters.check133 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check133, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, label %vec.epilog.ph134, !prof !12

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check131
  %vec.epilog.resume.val135 = phi i64 [ %n.vec122, %vec.epilog.iter.check131 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec136 = and i64 %i.hg, -8                   ; 3 uses
  %i.hq = add i64 %.sroa.55.0.copyload.i.i26.i, %n.vec136
  br label %vec.epilog.vector.body137

vec.epilog.vector.body137:                        ; preds = %vec.epilog.vector.body137, %vec.epilog.ph134
  %index138 = phi i64 [ %vec.epilog.resume.val135, %vec.epilog.ph134 ], [ %index.next140, %vec.epilog.vector.body137 ] ; 2 uses
  %i.hr = add nuw i64 %.sroa.55.0.copyload.i.i26.i, %index138 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.hr
  %wide.load139 = load <8 x i8>, ptr %i.ht, align 1, !noalias !474
  store <8 x i8> %wide.load139, ptr %i.hs, align 1, !noalias !474
  %index.next140 = add nuw i64 %index138, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next140, %n.vec136
  br i1 %i.hu, label %vec.epilog.middle.block141, label %vec.epilog.vector.body137, !llvm.loop !461

vec.epilog.middle.block141:                       ; preds = %vec.epilog.vector.body137
  %cmp.n142 = icmp eq i64 %i.hg, %n.vec136
  br i1 %cmp.n142, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader: ; preds = %iter.check130, %vec.epilog.iter.check131, %vec.epilog.middle.block141
  %.sroa.55.010.i.i31.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i26.i, %iter.check130 ], [ %i.hj, %vec.epilog.iter.check131 ], [ %i.hq, %vec.epilog.middle.block141 ] ; 4 uses
  %i.hv = sub i64 %.sroa.7.0.copyload.i.i28.i, %.sroa.55.010.i.i31.i.ph
  %xtraiter192 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol
  %.sroa.55.010.i.i31.i.prol = phi i64 [ %i.hy, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ], [ %.sroa.55.010.i.i31.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ] ; 3 uses
  %prol.iter194 = phi i64 [ %prol.iter194.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %.sroa.55.010.i.i31.i.prol
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %.sroa.55.010.i.i31.i.prol
  %i.hy = add nuw i64 %.sroa.55.010.i.i31.i.prol, 1 ; 2 uses
  %i.hz = load i8, ptr %i.hx, align 1, !noalias !474, !noundef !5
  store i8 %i.hz, ptr %i.hw, align 1, !noalias !474
  %prol.iter194.next = add i64 %prol.iter194, 1   ; 2 uses
  %prol.iter194.cmp.not = icmp eq i64 %prol.iter194.next, %xtraiter192
  br i1 %prol.iter194.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol, !llvm.loop !462

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader
  %.sroa.55.010.i.i31.i.unr = phi i64 [ %.sroa.55.010.i.i31.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.preheader ], [ %i.hy, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol ]
  %i.ia = sub i64 %.sroa.55.010.i.i31.i.ph, %.sroa.7.0.copyload.i.i28.i
  %i.ib = icmp ugt i64 %i.ia, -4
  br i1 %i.ib, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i
  %.sroa.55.010.i.i31.i = phi i64 [ %i.iq, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i ], [ %.sroa.55.010.i.i31.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %.sroa.55.010.i.i31.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %.sroa.55.010.i.i31.i
  %i.ie = add nuw i64 %.sroa.55.010.i.i31.i, 1    ; 2 uses
  %i.if = load i8, ptr %i.id, align 1, !noalias !474, !noundef !5
  store i8 %i.if, ptr %i.ic, align 1, !noalias !474
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.ie
  %i.ii = add nuw i64 %.sroa.55.010.i.i31.i, 2    ; 2 uses
  %i.ij = load i8, ptr %i.ih, align 1, !noalias !474, !noundef !5
  store i8 %i.ij, ptr %i.ig, align 1, !noalias !474
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.ii
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.ii
  %i.im = add nuw i64 %.sroa.55.010.i.i31.i, 3    ; 2 uses
  %i.in = load i8, ptr %i.il, align 1, !noalias !474, !noundef !5
  store i8 %i.in, ptr %i.ik, align 1, !noalias !474
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i, i64 %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i, i64 %i.im
  %i.iq = add nuw i64 %.sroa.55.010.i.i31.i, 4    ; 2 uses
  %i.ir = load i8, ptr %i.ip, align 1, !noalias !474, !noundef !5
  store i8 %i.ir, ptr %i.io, align 1, !noalias !474
  %exitcond.not.i.i32.i.3 = icmp eq i64 %i.iq, %.sroa.7.0.copyload.i.i28.i
  br i1 %exitcond.not.i.i32.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i, !llvm.loop !463

bb.ao:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.ha, i64 noundef %i.hb, i64 noundef range(i64 0, -9223372036854775808) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #21
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.ao
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i, %middle.block128, %vec.epilog.middle.block141, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !471
  %i.is = add i64 %.sroa.04.069.i, 1
  br label %bb.af

bb.ap:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread
  unreachable

bb.aq:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.ar:                                            ; preds = %bb.z
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.loopexit.split-lp, %bb.z
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB6_15MetadataBuilder12content_typeReEBa_(ptr noalias nofree noundef returned align 8 dereferenceable(256) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !496
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !496
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noalias !496, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !17, !noalias !496, !noundef !5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !496
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #23, !noalias !496
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !496, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = icmp samesign ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !496
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertReINtB5_4IntoNtNtCs6i54tJFfzR_5alloc6string6StringE4intoCs5XgW7KoffLW_12opendal_core.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !497
  br label %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertReINtB5_4IntoNtNtCs6i54tJFfzR_5alloc6string6StringE4intoCs5XgW7KoffLW_12opendal_core.exit

_RNvXs1_NtCsgxBkk5gSRhY_4core7convertReINtB5_4IntoNtNtCs6i54tJFfzR_5alloc6string6StringE4intoCs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !range !16, !alias.scope !499, !noundef !5
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder10set_string.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertReINtB5_4IntoNtNtCs6i54tJFfzR_5alloc6string6StringE4intoCs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.e, !noalias !498

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.g unwind label %bb.f, !noalias !498

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !498
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder10set_string.exit unwind label %bb.h, !noalias !498

end_hunk_4
begin_hunk_5_@_RNvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2_13CompactValues7replace:bb.a
  br i1 %i.ed, label %bb.as, label %bb.ai, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.ee = or i16 %.sroa.0.1.i.9.i, 1024
  br label %.lr.ph.i.11.i

.lr.ph.i.11.i:                                    ; preds = %bb.ai, %.lr.ph.i.10.i
  %.sroa.08.1.i.10.i = phi i64 [ %i.ec, %bb.ai ], [ %.sroa.08.1.i.9.i, %.lr.ph.i.10.i ] ; 3 uses
  %.sroa.0.1.i.10.i = phi i16 [ %i.ee, %bb.ai ], [ %.sroa.0.1.i.9.i, %.lr.ph.i.10.i ] ; 2 uses
  %.sroa.0.01929.i.ptr.11.i = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.ef = load i64, ptr %.sroa.0.01929.i.ptr.11.i, align 8, !range !6, !alias.scope !740, !noundef !5
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.aj, label %.lr.ph.i.12.i

bb.aj:                                            ; preds = %.lr.ph.i.11.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !740, !noundef !5
  %i.ej = add i64 %i.ei, %.sroa.08.1.i.10.i       ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %.sroa.08.1.i.10.i
  br i1 %i.ek, label %bb.as, label %bb.ak, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.el = or i16 %.sroa.0.1.i.10.i, 2048
  br label %.lr.ph.i.12.i

.lr.ph.i.12.i:                                    ; preds = %bb.ak, %.lr.ph.i.11.i
  %.sroa.08.1.i.11.i = phi i64 [ %i.ej, %bb.ak ], [ %.sroa.08.1.i.10.i, %.lr.ph.i.11.i ] ; 3 uses
  %.sroa.0.1.i.11.i = phi i16 [ %i.el, %bb.ak ], [ %.sroa.0.1.i.10.i, %.lr.ph.i.11.i ] ; 2 uses
  %.sroa.0.01929.i.ptr.12.i = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.em = load i64, ptr %.sroa.0.01929.i.ptr.12.i, align 8, !range !6, !alias.scope !740, !noundef !5
  %i.en = trunc nuw i64 %i.em to i1
  br i1 %i.en, label %bb.al, label %.lr.ph.i.13.i

bb.al:                                            ; preds = %.lr.ph.i.12.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !740, !noundef !5
  %i.eq = add i64 %i.ep, %.sroa.08.1.i.11.i       ; 2 uses
  %i.er = icmp ult i64 %i.eq, %.sroa.08.1.i.11.i
  br i1 %i.er, label %bb.as, label %bb.am, !prof !14

bb.am:                                            ; preds = %bb.al
  %i.es = or i16 %.sroa.0.1.i.11.i, 4096
  br label %.lr.ph.i.13.i

.lr.ph.i.13.i:                                    ; preds = %bb.am, %.lr.ph.i.12.i
  %.sroa.08.1.i.12.i = phi i64 [ %i.eq, %bb.am ], [ %.sroa.08.1.i.11.i, %.lr.ph.i.12.i ] ; 3 uses
  %.sroa.0.1.i.12.i = phi i16 [ %i.es, %bb.am ], [ %.sroa.0.1.i.11.i, %.lr.ph.i.12.i ] ; 2 uses
  %.sroa.0.01929.i.ptr.13.i = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.et = load i64, ptr %.sroa.0.01929.i.ptr.13.i, align 8, !range !6, !alias.scope !740, !noundef !5
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.an, label %.lr.ph.i.14.i

bb.an:                                            ; preds = %.lr.ph.i.13.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !740, !noundef !5
  %i.ex = add i64 %i.ew, %.sroa.08.1.i.12.i       ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %.sroa.08.1.i.12.i
  br i1 %i.ey, label %bb.as, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %bb.an
  %i.ez = or i16 %.sroa.0.1.i.12.i, 8192
  br label %.lr.ph.i.14.i

.lr.ph.i.14.i:                                    ; preds = %bb.ao, %.lr.ph.i.13.i
  %.sroa.08.1.i.13.i = phi i64 [ %i.ex, %bb.ao ], [ %.sroa.08.1.i.12.i, %.lr.ph.i.13.i ] ; 3 uses
  %.sroa.0.1.i.13.i = phi i16 [ %i.ez, %bb.ao ], [ %.sroa.0.1.i.12.i, %.lr.ph.i.13.i ] ; 2 uses
  %.sroa.0.01929.i.ptr.14.i = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.fa = load i64, ptr %.sroa.0.01929.i.ptr.14.i, align 8, !range !6, !alias.scope !740, !noundef !5
  %i.fb = trunc nuw i64 %i.fa to i1
  br i1 %i.fb, label %bb.ap, label %.lr.ph.i.15.i

bb.ap:                                            ; preds = %.lr.ph.i.14.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !740, !noundef !5
  %i.fe = add i64 %i.fd, %.sroa.08.1.i.13.i       ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %.sroa.08.1.i.13.i
  br i1 %i.ff, label %bb.as, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %bb.ap
  %i.fg = or i16 %.sroa.0.1.i.13.i, 16384
  br label %.lr.ph.i.15.i

.lr.ph.i.15.i:                                    ; preds = %bb.aq, %.lr.ph.i.14.i
  %.sroa.08.1.i.14.i = phi i64 [ %i.fe, %bb.aq ], [ %.sroa.08.1.i.13.i, %.lr.ph.i.14.i ] ; 3 uses
  %.sroa.0.1.i.14.i = phi i16 [ %i.fg, %bb.aq ], [ %.sroa.0.1.i.13.i, %.lr.ph.i.14.i ] ; 3 uses
  %.sroa.0.01929.i.ptr.15.i = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.fh = load i64, ptr %.sroa.0.01929.i.ptr.15.i, align 8, !range !6, !alias.scope !740, !noundef !5
  %i.fi = trunc nuw i64 %i.fh to i1
  br i1 %i.fi, label %bb.ar, label %._crit_edge.i.i

bb.ar:                                            ; preds = %.lr.ph.i.15.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !740, !noundef !5
  %i.fl = add i64 %i.fk, %.sroa.08.1.i.14.i       ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %.sroa.08.1.i.14.i
  br i1 %i.fm, label %bb.as, label %._crit_edge.i.thread.i, !prof !14

._crit_edge.i.thread.i:                           ; preds = %bb.ar
  %i.fn = or i16 %.sroa.0.1.i.14.i, -32768
  br label %bb.l

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.15.i
  %i.fo = icmp eq i16 %.sroa.0.1.i.14.i, 0
  br i1 %i.fo, label %_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj10_NCINvB2_6encodeKB1l_Es_0EB7_.exit, label %bb.l

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p
  call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #21, !noalias !741
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !742
  %i.fp = call { ptr, i64 } @_RNvMsq_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE18allocate_for_sliceCs5XgW7KoffLW_12opendal_core(i64 noundef %i.bm), !noalias !742 ; 2 uses
  %i.fq = extractvalue { ptr, i64 } %i.fp, 0      ; 4 uses
  %i.fr = extractvalue { ptr, i64 } %i.fp, 1
  store ptr %i.fq, ptr %i.j, align 8, !noalias !742
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.fr, ptr %i.fs, align 8, !noalias !742
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fu = cmpxchg ptr %i.ft, i64 1, i64 -1 acquire monotonic, align 8, !noalias !742
  %i.fv = extractvalue { i64, i1 } %i.fu, 1
  br i1 %i.fv, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.i, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i, !prof !7

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.bh, %bb.be
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.bi, %bb.bg, %bb.bf, %bb.bd, %bb.ba, %bb.aw, %bb.av, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i
  %lpad.loopexit.split-lp38.i = landingpad { ptr, i32 }
          cleanup
  %.pre.i = load ptr, ptr %i.j, align 8, !alias.scope !743, !noalias !742
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i
  %i.fw = phi ptr [ %i.gb, %.loopexit.split-lp.loopexit.i ], [ %.pre.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp38.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.fx = atomicrmw add ptr %i.fw, i64 -1 release, align 8, !noalias !746
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.at, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit.i

bb.at:                                            ; preds = %.loopexit.split-lp.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.bl, !noalias !742

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit.i
  %i.fz = load atomic i64, ptr %i.fq acquire, align 8, !noalias !742
  %i.ga = icmp eq i64 %i.fz, 1
  store atomic i64 1, ptr %i.ft release, align 8, !noalias !742
  br i1 %i.ga, label %bb.au, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i, !prof !8

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i: ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit.i
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !742

bb.au:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.i
  %i.gb = load ptr, ptr %i.j, align 8, !noalias !742, !nonnull !5, !noundef !5 ; 4 uses
  %i.gc = load i64, ptr %i.fs, align 8, !noalias !742, !noundef !5 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !748
  store i64 %i.bm, ptr %i.i, align 8, !noalias !748
  store i64 %i.gc, ptr %i.h, align 8, !noalias !748
  %i.ge = icmp eq i64 %i.gc, %i.bm
  br i1 %i.ge, label %bb.aw, label %bb.av, !prof !9

bb.av:                                            ; preds = %bb.au
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !742

.noexc6.i:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !748
  store i16 %.sroa.0.1.i.1581.i, ptr %i.g, align 2, !noalias !748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !749
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 18
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.gf, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.gg)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !742

.noexc7.i:                                        ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !750 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !750 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !750 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !750 ; 5 uses
  %i.gh = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.gh, label %iter.check, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i

iter.check:                                       ; preds = %.noexc7.i
  %.sroa.44.0.copyload.i.i.i.i120 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i121 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i) ]
  %i.gi = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.gi, 8
  %i.gj = sub i64 %.sroa.44.0.copyload.i.i.i.i120, %.sroa.0.0.copyload.i.i.i.i121
  %diff.check = icmp ugt i64 %i.gj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i64 %i.gi, 32
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gk = and i64 %i.gi, 24
  %n.vec = and i64 %i.gi, -32                     ; 4 uses
  %i.gl = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gm = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gm ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load = load <16 x i8>, ptr %i.go, align 1, !noalias !751
  %wide.load123 = load <16 x i8>, ptr %i.gp, align 1, !noalias !751
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <16 x i8> %wide.load, ptr %i.gn, align 1, !noalias !751
  store <16 x i8> %wide.load123, ptr %i.gq, align 1, !noalias !751
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gi, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gk, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i64 %i.gi, -8                   ; 3 uses
  %i.gs = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec124
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.gt = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index125 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.gt
  %wide.load126 = load <8 x i8>, ptr %i.gv, align 1, !noalias !751
  store <8 x i8> %wide.load126, ptr %i.gu, align 1, !noalias !751
  %index.next127 = add nuw i64 %index125, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next127, %n.vec124
  br i1 %i.gw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !706

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.gi, %n.vec124
  br i1 %cmp.n128, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i, %iter.check ], [ %i.gl, %vec.epilog.iter.check ], [ %i.gs, %vec.epilog.middle.block ] ; 4 uses
  %i.gx = sub i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.010.i.i.i.i.ph
  %xtraiter = and i64 %i.gx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.prol = phi i64 [ %i.ha, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.ha = add nuw i64 %.sroa.55.010.i.i.i.i.prol, 1 ; 2 uses
  %i.hb = load i8, ptr %i.gz, align 1, !noalias !751, !noundef !5
  store i8 %i.hb, ptr %i.gy, align 1, !noalias !751
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, !llvm.loop !707

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ], [ %i.ha, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ]
  %i.hc = sub i64 %.sroa.55.010.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i
  %i.hd = icmp ugt i64 %i.hc, -4
  br i1 %i.hd, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.55.010.i.i.i.i = phi i64 [ %i.hs, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.hg = add nuw i64 %.sroa.55.010.i.i.i.i, 1    ; 2 uses
  %i.hh = load i8, ptr %i.hf, align 1, !noalias !751, !noundef !5
  store i8 %i.hh, ptr %i.he, align 1, !noalias !751
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.hg
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.hg
  %i.hk = add nuw i64 %.sroa.55.010.i.i.i.i, 2    ; 2 uses
  %i.hl = load i8, ptr %i.hj, align 1, !noalias !751, !noundef !5
  store i8 %i.hl, ptr %i.hi, align 1, !noalias !751
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.hk
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.hk
  %i.ho = add nuw i64 %.sroa.55.010.i.i.i.i, 3    ; 2 uses
  %i.hp = load i8, ptr %i.hn, align 1, !noalias !751, !noundef !5
  store i8 %i.hp, ptr %i.hm, align 1, !noalias !751
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.ho
  %i.hs = add nuw i64 %.sroa.55.010.i.i.i.i, 4    ; 2 uses
  %i.ht = load i8, ptr %i.hr, align 1, !noalias !751, !noundef !5
  store i8 %i.ht, ptr %i.hq, align 1, !noalias !751
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.hs, %.sroa.7.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !llvm.loop !708

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !748
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.536.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.737.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.44.0..sroa_idx.i.i23.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i25.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i27.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i
  %.sroa.0.070.i.i = phi i64 [ %i.bl, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i ], [ %.sroa.0.1.i5.i, %bb.az ] ; 5 uses
  %.sroa.04.069.i.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i ], [ %.sroa.04.1.i.i, %bb.az ] ; 3 uses
  %.sroa.034.0.idx68.i.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i ], [ %.sroa.034.0.add.i.i, %bb.az ] ; 2 uses
  %.sroa.7.067.i.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i ], [ %i.hv, %bb.az ] ; 2 uses
  %.sroa.034.0.ptr71.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.034.0.idx68.i.i ; 2 uses
  %.sroa.034.0.add.i.i = add nuw nsw i64 %.sroa.034.0.idx68.i.i, 16 ; 2 uses
  %i.hv = add nuw nsw i64 %.sroa.7.067.i.i, 1
  %i.hw = load i64, ptr %.sroa.034.0.ptr71.i.i, align 8, !range !6, !alias.scope !752, !noundef !5
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.034.0.ptr71.i.i, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !752, !noundef !5 ; 5 uses
  %i.ia = add i64 %i.hz, %.sroa.0.070.i.i         ; 5 uses
  %i.ib = icmp ult i64 %i.ia, %.sroa.0.070.i.i
  %.not19.i.i = icmp ugt i64 %i.ia, %i.bm
  %or.cond.i.i2 = or i1 %i.ib, %.not19.i.i
  br i1 %or.cond.i.i2, label %bb.ba, label %bb.bb, !prof !15

bb.az:                                            ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i, %bb.ax
  %.sroa.04.1.i.i = phi i64 [ %i.lr, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i ], [ %.sroa.04.069.i.i, %bb.ax ]
  %.sroa.0.1.i5.i = phi i64 [ %i.ia, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i ], [ %.sroa.0.070.i.i, %bb.ax ]
  %i.ic = icmp eq i64 %.sroa.034.0.add.i.i, 256
  br i1 %i.ic, label %bb.bk, label %bb.ax

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.070.i.i, i64 noundef %i.ia, i64 noundef range(i64 0, -9223372036854775808) %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !742

.noexc9.i:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.id = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.0.070.i.i ; 3 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.067.i.i ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !noundef !5 ; 3 uses
  %.not.i20.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i20.i.i, label %bb.bf, label %bb.bc, !prof !14

bb.bc:                                            ; preds = %bb.bb
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load i64, ptr %i.ig, align 8            ; 5 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ih, %i.hz
  br i1 %.not.i.i.i.i, label %bb.bd, label %bb.be, !prof !14

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !742

.noexc10.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !753
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.id, ptr noundef nonnull %i.ii, ptr noundef nonnull readonly %i.if, ptr noundef nonnull readonly %i.ij)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !742

.noexc11.i:                                       ; preds = %bb.be
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !754 ; 9 uses
  %.sroa.44.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !754 ; 9 uses
  %.sroa.55.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 8, !noalias !754 ; 7 uses
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !754 ; 5 uses
  %i.ik = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i.i
  br i1 %i.ik, label %iter.check175, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj10_Es_0B9_.exit.i.i

iter.check175:                                    ; preds = %.noexc11.i
  %.sroa.44.0.copyload.i.i.i.i.i161 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i.i160 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i.i) ]
  %i.il = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i.i ; 7 uses
  %min.iters.check163 = icmp ult i64 %i.il, 8
  %i.im = sub i64 %.sroa.44.0.copyload.i.i.i.i.i161, %.sroa.0.0.copyload.i.i.i.i.i160
  %diff.check162 = icmp ugt i64 %i.im, -32
  %or.cond189 = select i1 %min.iters.check163, i1 true, i1 %diff.check162
  br i1 %or.cond189, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader, label %vector.main.loop.iter.check164

vector.main.loop.iter.check164:                   ; preds = %iter.check175
  %min.iters.check165 = icmp ult i64 %i.il, 32
  br i1 %min.iters.check165, label %vec.epilog.ph179, label %vector.ph166

vector.ph166:                                     ; preds = %vector.main.loop.iter.check164
  %i.in = and i64 %i.il, 24
  %n.vec167 = and i64 %i.il, -32                  ; 4 uses
  %i.io = add i64 %.sroa.55.0.copyload.i.i.i.i.i, %n.vec167
  br label %vector.body168

vector.body168:                                   ; preds = %vector.ph166, %vector.body168
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next172, %vector.body168 ] ; 2 uses
  %i.ip = add nuw i64 %.sroa.55.0.copyload.i.i.i.i.i, %index169 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.ip ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load170 = load <16 x i8>, ptr %i.ir, align 1, !noalias !755
  %wide.load171 = load <16 x i8>, ptr %i.is, align 1, !noalias !755
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <16 x i8> %wide.load170, ptr %i.iq, align 1, !noalias !755
  store <16 x i8> %wide.load171, ptr %i.it, align 1, !noalias !755
  %index.next172 = add nuw i64 %index169, 32      ; 2 uses
  %i.iu = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.iu, label %middle.block173, label %vector.body168, !llvm.loop !717

middle.block173:                                  ; preds = %vector.body168
  %cmp.n174 = icmp eq i64 %i.il, %n.vec167
  br i1 %cmp.n174, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj10_Es_0B9_.exit.i.i, label %vec.epilog.iter.check176

vec.epilog.iter.check176:                         ; preds = %middle.block173
  %min.epilog.iters.check178 = icmp eq i64 %i.in, 0
  br i1 %min.epilog.iters.check178, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader, label %vec.epilog.ph179, !prof !12

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check164, %vec.epilog.iter.check176
  %vec.epilog.resume.val180 = phi i64 [ %n.vec167, %vec.epilog.iter.check176 ], [ 0, %vector.main.loop.iter.check164 ]
  %n.vec181 = and i64 %i.il, -8                   ; 3 uses
  %i.iv = add i64 %.sroa.55.0.copyload.i.i.i.i.i, %n.vec181
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph179
  %index183 = phi i64 [ %vec.epilog.resume.val180, %vec.epilog.ph179 ], [ %index.next185, %vec.epilog.vector.body182 ] ; 2 uses
  %i.iw = add nuw i64 %.sroa.55.0.copyload.i.i.i.i.i, %index183 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.iw
  %wide.load184 = load <8 x i8>, ptr %i.iy, align 1, !noalias !755
  store <8 x i8> %wide.load184, ptr %i.ix, align 1, !noalias !755
  %index.next185 = add nuw i64 %index183, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next185, %n.vec181
  br i1 %i.iz, label %vec.epilog.middle.block186, label %vec.epilog.vector.body182, !llvm.loop !718

vec.epilog.middle.block186:                       ; preds = %vec.epilog.vector.body182
  %cmp.n187 = icmp eq i64 %i.il, %n.vec181
  br i1 %cmp.n187, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj10_Es_0B9_.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader: ; preds = %iter.check175, %vec.epilog.iter.check176, %vec.epilog.middle.block186
  %.sroa.55.010.i.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i.i, %iter.check175 ], [ %i.io, %vec.epilog.iter.check176 ], [ %i.iv, %vec.epilog.middle.block186 ] ; 4 uses
  %i.ja = sub i64 %.sroa.7.0.copyload.i.i.i.i.i, %.sroa.55.010.i.i.i.i.i.ph
  %xtraiter213 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.i.prol = phi i64 [ %i.jd, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter215 = phi i64 [ %prol.iter215.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.i.prol
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.i.prol
  %i.jd = add nuw i64 %.sroa.55.010.i.i.i.i.i.prol, 1 ; 2 uses
  %i.je = load i8, ptr %i.jc, align 1, !noalias !755, !noundef !5
  store i8 %i.je, ptr %i.jb, align 1, !noalias !755
  %prol.iter215.next = add i64 %prol.iter215, 1   ; 2 uses
  %prol.iter215.cmp.not = icmp eq i64 %prol.iter215.next, %xtraiter213
  br i1 %prol.iter215.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol, !llvm.loop !719

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader ], [ %i.jd, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol ]
  %i.jf = sub i64 %.sroa.55.010.i.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i.i
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj10_Es_0B9_.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i
  %.sroa.55.010.i.i.i.i.i = phi i64 [ %i.jv, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.i
  %i.jj = add nuw i64 %.sroa.55.010.i.i.i.i.i, 1  ; 2 uses
  %i.jk = load i8, ptr %i.ji, align 1, !noalias !755, !noundef !5
  store i8 %i.jk, ptr %i.jh, align 1, !noalias !755
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.jj
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.jj
  %i.jn = add nuw i64 %.sroa.55.010.i.i.i.i.i, 2  ; 2 uses
  %i.jo = load i8, ptr %i.jm, align 1, !noalias !755, !noundef !5
  store i8 %i.jo, ptr %i.jl, align 1, !noalias !755
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.jn
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.jn
  %i.jr = add nuw i64 %.sroa.55.010.i.i.i.i.i, 3  ; 2 uses
  %i.js = load i8, ptr %i.jq, align 1, !noalias !755, !noundef !5
  store i8 %i.js, ptr %i.jp, align 1, !noalias !755
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.jr
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.jr
  %i.jv = add nuw i64 %.sroa.55.010.i.i.i.i.i, 4  ; 2 uses
  %i.jw = load i8, ptr %i.ju, align 1, !noalias !755, !noundef !5
  store i8 %i.jw, ptr %i.jt, align 1, !noalias !755
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.jv, %.sroa.7.0.copyload.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj10_Es_0B9_.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, !llvm.loop !720

bb.bf:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !742

.noexc12.i:                                       ; preds = %bb.bf
  unreachable

_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj10_Es_0B9_.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, %middle.block173, %vec.epilog.middle.block186, %.noexc11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !748
  store ptr %i.id, ptr %i.f, align 8, !noalias !748
  store i64 %i.hz, ptr %.sroa.536.0..sroa_idx.i.i, align 8, !noalias !748
  store i64 %i.ih, ptr %.sroa.737.0..sroa_idx.i.i, align 8, !noalias !748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !756
  store i64 %i.hz, ptr %i.b, align 8, !noalias !756
  %i.jx = icmp eq i64 %i.ih, %i.hz
  br i1 %i.jx, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i.i, label %bb.bg, !prof !9

bb.bg:                                            ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj10_Es_0B9_.exit.i.i
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.737.0..sroa_idx.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @127, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #21
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !742

.noexc13.i:                                       ; preds = %bb.bg
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %_RNCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB5_13CompactValues6encodeKj10_Es_0B9_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !748
  %.sroa.5.0.extract.trunc.i.i.i = trunc nuw i64 %i.ia to i16
  %i.jy = shl i64 %.sroa.04.069.i.i, 1            ; 2 uses
  %i.jz = add i64 %i.jy, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !748
  store i16 %.sroa.5.0.extract.trunc.i.i.i, ptr %i.e, align 2, !noalias !748
  %i.ka = add i64 %i.jy, 4                        ; 2 uses
  %i.kb = icmp eq i64 %i.jz, -2
  %.not.i21.i.i = icmp ugt i64 %i.ka, %i.bm
  %or.cond.i.i.i = or i1 %i.kb, %.not.i21.i.i
  br i1 %or.cond.i.i.i, label %bb.bi, label %bb.bh, !prof !15

bb.bh:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.jz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !757
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.kc, ptr noundef nonnull %i.kd, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.hu)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !742

.noexc15.i:                                       ; preds = %bb.bh
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %i.a, align 8, !noalias !758 ; 9 uses
  %.sroa.44.0.copyload.i.i24.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i23.i.i, align 8, !noalias !758 ; 9 uses
  %.sroa.55.0.copyload.i.i26.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i25.i.i, align 8, !noalias !758 ; 7 uses
  %.sroa.7.0.copyload.i.i28.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i27.i.i, align 8, !noalias !758 ; 5 uses
  %i.ke = icmp ult i64 %.sroa.55.0.copyload.i.i26.i.i, %.sroa.7.0.copyload.i.i28.i.i
  br i1 %i.ke, label %iter.check145, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i

iter.check145:                                    ; preds = %.noexc15.i
  %.sroa.44.0.copyload.i.i24.i.i131 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i24.i.i to i64
  %.sroa.0.0.copyload.i.i22.i.i130 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i22.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i22.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i24.i.i) ]
  %i.kf = sub nuw i64 %.sroa.7.0.copyload.i.i28.i.i, %.sroa.55.0.copyload.i.i26.i.i ; 7 uses
  %min.iters.check133 = icmp ult i64 %i.kf, 8
  %i.kg = sub i64 %.sroa.44.0.copyload.i.i24.i.i131, %.sroa.0.0.copyload.i.i22.i.i130
  %diff.check132 = icmp ugt i64 %i.kg, -32
  %or.cond190 = select i1 %min.iters.check133, i1 true, i1 %diff.check132
  br i1 %or.cond190, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader, label %vector.main.loop.iter.check134

vector.main.loop.iter.check134:                   ; preds = %iter.check145
  %min.iters.check135 = icmp ult i64 %i.kf, 32
  br i1 %min.iters.check135, label %vec.epilog.ph149, label %vector.ph136

vector.ph136:                                     ; preds = %vector.main.loop.iter.check134
  %i.kh = and i64 %i.kf, 24
  %n.vec137 = and i64 %i.kf, -32                  ; 4 uses
  %i.ki = add i64 %.sroa.55.0.copyload.i.i26.i.i, %n.vec137
  br label %vector.body138

vector.body138:                                   ; preds = %vector.ph136, %vector.body138
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body138 ] ; 2 uses
  %i.kj = add nuw i64 %.sroa.55.0.copyload.i.i26.i.i, %index139 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i.i, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i.i, i64 %i.kj ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %wide.load140 = load <16 x i8>, ptr %i.kl, align 1, !noalias !751
  %wide.load141 = load <16 x i8>, ptr %i.km, align 1, !noalias !751
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <16 x i8> %wide.load140, ptr %i.kk, align 1, !noalias !751
  store <16 x i8> %wide.load141, ptr %i.kn, align 1, !noalias !751
  %index.next142 = add nuw i64 %index139, 32      ; 2 uses
  %i.ko = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.ko, label %middle.block143, label %vector.body138, !llvm.loop !729

middle.block143:                                  ; preds = %vector.body138
  %cmp.n144 = icmp eq i64 %i.kf, %n.vec137
  br i1 %cmp.n144, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block143
  %min.epilog.iters.check148 = icmp eq i64 %i.kh, 0
  br i1 %min.epilog.iters.check148, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader, label %vec.epilog.ph149, !prof !12

vec.epilog.ph149:                                 ; preds = %vector.main.loop.iter.check134, %vec.epilog.iter.check146
  %vec.epilog.resume.val150 = phi i64 [ %n.vec137, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check134 ]
  %n.vec151 = and i64 %i.kf, -8                   ; 3 uses
  %i.kp = add i64 %.sroa.55.0.copyload.i.i26.i.i, %n.vec151
  br label %vec.epilog.vector.body152

vec.epilog.vector.body152:                        ; preds = %vec.epilog.vector.body152, %vec.epilog.ph149
  %index153 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph149 ], [ %index.next155, %vec.epilog.vector.body152 ] ; 2 uses
  %i.kq = add nuw i64 %.sroa.55.0.copyload.i.i26.i.i, %index153 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i.i, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i.i, i64 %i.kq
  %wide.load154 = load <8 x i8>, ptr %i.ks, align 1, !noalias !751
  store <8 x i8> %wide.load154, ptr %i.kr, align 1, !noalias !751
  %index.next155 = add nuw i64 %index153, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.kt, label %vec.epilog.middle.block156, label %vec.epilog.vector.body152, !llvm.loop !730

vec.epilog.middle.block156:                       ; preds = %vec.epilog.vector.body152
  %cmp.n157 = icmp eq i64 %i.kf, %n.vec151
  br i1 %cmp.n157, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader: ; preds = %iter.check145, %vec.epilog.iter.check146, %vec.epilog.middle.block156
  %.sroa.55.010.i.i31.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i26.i.i, %iter.check145 ], [ %i.ki, %vec.epilog.iter.check146 ], [ %i.kp, %vec.epilog.middle.block156 ] ; 4 uses
  %i.ku = sub i64 %.sroa.7.0.copyload.i.i28.i.i, %.sroa.55.010.i.i31.i.i.ph
  %xtraiter216 = and i64 %i.ku, 3                 ; 2 uses
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol
  %.sroa.55.010.i.i31.i.i.prol = phi i64 [ %i.kx, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol ], [ %.sroa.55.010.i.i31.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader ] ; 3 uses
  %prol.iter218 = phi i64 [ %prol.iter218.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i.i, i64 %.sroa.55.010.i.i31.i.i.prol
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i.i, i64 %.sroa.55.010.i.i31.i.i.prol
  %i.kx = add nuw i64 %.sroa.55.010.i.i31.i.i.prol, 1 ; 2 uses
  %i.ky = load i8, ptr %i.kw, align 1, !noalias !751, !noundef !5
  store i8 %i.ky, ptr %i.kv, align 1, !noalias !751
  %prol.iter218.next = add i64 %prol.iter218, 1   ; 2 uses
  %prol.iter218.cmp.not = icmp eq i64 %prol.iter218.next, %xtraiter216
  br i1 %prol.iter218.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol, !llvm.loop !731

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader
  %.sroa.55.010.i.i31.i.i.unr = phi i64 [ %.sroa.55.010.i.i31.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.preheader ], [ %i.kx, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol ]
  %i.kz = sub i64 %.sroa.55.010.i.i31.i.i.ph, %.sroa.7.0.copyload.i.i28.i.i
  %i.la = icmp ugt i64 %i.kz, -4
  br i1 %i.la, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i
  %.sroa.55.010.i.i31.i.i = phi i64 [ %i.lp, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i ], [ %.sroa.55.010.i.i31.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol.loopexit ] ; 6 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i.i, i64 %.sroa.55.010.i.i31.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i.i, i64 %.sroa.55.010.i.i31.i.i
  %i.ld = add nuw i64 %.sroa.55.010.i.i31.i.i, 1  ; 2 uses
  %i.le = load i8, ptr %i.lc, align 1, !noalias !751, !noundef !5
  store i8 %i.le, ptr %i.lb, align 1, !noalias !751
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i.i, i64 %i.ld
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i.i, i64 %i.ld
  %i.lh = add nuw i64 %.sroa.55.010.i.i31.i.i, 2  ; 2 uses
  %i.li = load i8, ptr %i.lg, align 1, !noalias !751, !noundef !5
  store i8 %i.li, ptr %i.lf, align 1, !noalias !751
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i.i, i64 %i.lh
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i.i, i64 %i.lh
  %i.ll = add nuw i64 %.sroa.55.010.i.i31.i.i, 3  ; 2 uses
  %i.lm = load i8, ptr %i.lk, align 1, !noalias !751, !noundef !5
  store i8 %i.lm, ptr %i.lj, align 1, !noalias !751
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22.i.i, i64 %i.ll
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i24.i.i, i64 %i.ll
  %i.lp = add nuw i64 %.sroa.55.010.i.i31.i.i, 4  ; 2 uses
  %i.lq = load i8, ptr %i.lo, align 1, !noalias !751, !noundef !5
  store i8 %i.lq, ptr %i.ln, align 1, !noalias !751
  %exitcond.not.i.i32.i.i.3 = icmp eq i64 %i.lp, %.sroa.7.0.copyload.i.i28.i.i
  br i1 %exitcond.not.i.i32.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i, !llvm.loop !732

bb.bi:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.jz, i64 noundef %i.ka, i64 noundef range(i64 0, -9223372036854775808) %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #21
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !742

.noexc16.i:                                       ; preds = %bb.bi
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit33.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i30.i.i, %middle.block143, %vec.epilog.middle.block156, %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !748
  %i.lr = add i64 %.sroa.04.069.i.i, 1
  br label %bb.az

bb.bj:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i
  unreachable

bb.bk:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !742
  br label %_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj10_NCINvB2_6encodeKB1l_Es_0EB7_.exit

bb.bl:                                            ; preds = %bb.at
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !742
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcSINtNtNtB4_3mem12maybe_uninit11MaybeUninithEEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.at, %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB3_13CompactValues11encode_withKj10_NCINvB2_6encodeKB1l_Es_0EB7_.exit: ; preds = %._crit_edge.i.i, %bb.bk
  %.sroa.3.0.i = phi i64 [ %i.bm, %bb.bk ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0.i = phi ptr [ %i.gb, %bb.bk ], [ null, %._crit_edge.i.i ]
  %i.lt = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.lu = insertvalue { ptr, i64 } %i.lt, i64 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret { ptr, i64 } %i.lu
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util19bytes_content_rangeNtB2_17BytesContentRange9to_header(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util19bytes_content_range17BytesContentRangeNtB6_7Display3fmtBE_, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @39, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder10set_string(ptr noalias nofree noundef returned align 8 dereferenceable(256) %0, i64 noundef range(i64 0, 9) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.b = icmp samesign ugt i64 %1, 6
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !range !16, !alias.scope !761, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.i
end_hunk_5
begin_hunk_6_@_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder5build:bb.a
  %.sroa.0.01929.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ez = load i64, ptr %.sroa.0.01929.i.ptr.4.i, align 8, !range !6, !alias.scope !861, !noundef !5
  %i.fa = trunc nuw i64 %i.ez to i1
  br i1 %i.fa, label %bb.y, label %.lr.ph.i.5.i

bb.y:                                             ; preds = %.lr.ph.i.4.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !861, !noundef !5
  %i.fd = add i64 %i.fc, %.sroa.08.1.i.3.i        ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %.sroa.08.1.i.3.i
  br i1 %i.fe, label %.invoke, label %bb.z, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.ff = or i16 %.sroa.0.1.i.3.i, 16
  br label %.lr.ph.i.5.i

.lr.ph.i.5.i:                                     ; preds = %bb.z, %.lr.ph.i.4.i
  %.sroa.08.1.i.4.i = phi i64 [ %i.fd, %bb.z ], [ %.sroa.08.1.i.3.i, %.lr.ph.i.4.i ] ; 3 uses
  %.sroa.0.1.i.4.i = phi i16 [ %i.ff, %bb.z ], [ %.sroa.0.1.i.3.i, %.lr.ph.i.4.i ] ; 2 uses
  %.sroa.0.01929.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.fg = load i64, ptr %.sroa.0.01929.i.ptr.5.i, align 8, !range !6, !alias.scope !861, !noundef !5
  %i.fh = trunc nuw i64 %i.fg to i1
  br i1 %i.fh, label %bb.aa, label %.lr.ph.i.6.i

bb.aa:                                            ; preds = %.lr.ph.i.5.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !861, !noundef !5
  %i.fk = add i64 %i.fj, %.sroa.08.1.i.4.i        ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %.sroa.08.1.i.4.i
  br i1 %i.fl, label %.invoke, label %bb.ab, !prof !14

bb.ab:                                            ; preds = %bb.aa
  %i.fm = or i16 %.sroa.0.1.i.4.i, 32
  br label %.lr.ph.i.6.i

.lr.ph.i.6.i:                                     ; preds = %bb.ab, %.lr.ph.i.5.i
  %.sroa.08.1.i.5.i = phi i64 [ %i.fk, %bb.ab ], [ %.sroa.08.1.i.4.i, %.lr.ph.i.5.i ] ; 3 uses
  %.sroa.0.1.i.5.i = phi i16 [ %i.fm, %bb.ab ], [ %.sroa.0.1.i.4.i, %.lr.ph.i.5.i ] ; 2 uses
  %.sroa.0.01929.i.ptr.6.i = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.fn = load i64, ptr %.sroa.0.01929.i.ptr.6.i, align 8, !range !6, !alias.scope !861, !noundef !5
  %i.fo = trunc nuw i64 %i.fn to i1
  br i1 %i.fo, label %bb.ac, label %.lr.ph.i.7.i

bb.ac:                                            ; preds = %.lr.ph.i.6.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !861, !noundef !5
  %i.fr = add i64 %i.fq, %.sroa.08.1.i.5.i        ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %.sroa.08.1.i.5.i
  br i1 %i.fs, label %.invoke, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.ft = or i16 %.sroa.0.1.i.5.i, 64
  br label %.lr.ph.i.7.i

.lr.ph.i.7.i:                                     ; preds = %bb.ad, %.lr.ph.i.6.i
  %.sroa.08.1.i.6.i = phi i64 [ %i.fr, %bb.ad ], [ %.sroa.08.1.i.5.i, %.lr.ph.i.6.i ] ; 3 uses
  %.sroa.0.1.i.6.i = phi i16 [ %i.ft, %bb.ad ], [ %.sroa.0.1.i.5.i, %.lr.ph.i.6.i ] ; 2 uses
  %.sroa.0.01929.i.ptr.7.i = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.fu = load i64, ptr %.sroa.0.01929.i.ptr.7.i, align 8, !range !6, !alias.scope !861, !noundef !5
  %i.fv = trunc nuw i64 %i.fu to i1
  br i1 %i.fv, label %bb.ae, label %.lr.ph.i.8.i

bb.ae:                                            ; preds = %.lr.ph.i.7.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !861, !noundef !5
  %i.fy = add i64 %i.fx, %.sroa.08.1.i.6.i        ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %.sroa.08.1.i.6.i
  br i1 %i.fz, label %.invoke, label %bb.af, !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.ga = or i16 %.sroa.0.1.i.6.i, 128
  br label %.lr.ph.i.8.i

.lr.ph.i.8.i:                                     ; preds = %bb.af, %.lr.ph.i.7.i
  %.sroa.08.1.i.7.i = phi i64 [ %i.fy, %bb.af ], [ %.sroa.08.1.i.6.i, %.lr.ph.i.7.i ] ; 3 uses
  %.sroa.0.1.i.7.i = phi i16 [ %i.ga, %bb.af ], [ %.sroa.0.1.i.6.i, %.lr.ph.i.7.i ] ; 3 uses
  %.sroa.0.01929.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.gb = load i64, ptr %.sroa.0.01929.i.ptr.8.i, align 8, !range !6, !alias.scope !861, !noundef !5
  %i.gc = trunc nuw i64 %i.gb to i1
  br i1 %i.gc, label %bb.ag, label %._crit_edge.i.i

bb.ag:                                            ; preds = %.lr.ph.i.8.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !861, !noundef !5
  %i.gf = add i64 %i.ge, %.sroa.08.1.i.7.i        ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %.sroa.08.1.i.7.i
  br i1 %i.gg, label %.invoke, label %._crit_edge.i.thread.i, !prof !14

._crit_edge.i.thread.i:                           ; preds = %bb.ag
  %i.gh = or i16 %.sroa.0.1.i.7.i, 256
  br label %bb.q

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.8.i
  %i.gi = icmp eq i16 %.sroa.0.1.i.7.i, 0
  br i1 %i.gi, label %bb.bb, label %bb.q

.invoke:                                          ; preds = %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.q, %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTNtNtCs6i54tJFfzR_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1D_8adapters3map8map_foldRBQ_jjNCNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata25user_metadata_encoded_len0NCINvXsK_NtB1B_5accumjNtB4n_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB35_.exit.i
  %i.gj = phi ptr [ @134, %bb.q ], [ @148, %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTNtNtCs6i54tJFfzR_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1D_8adapters3map8map_foldRBQ_jjNCNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata25user_metadata_encoded_len0NCINvXsK_NtB1B_5accumjNtB4n_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB35_.exit.i ], [ @134, %bb.ag ], [ @134, %bb.ae ], [ @134, %bb.ac ], [ @134, %bb.aa ], [ @134, %bb.y ], [ @134, %bb.w ], [ @134, %bb.u ], [ @134, %bb.s ]
  %i.gk = phi i64 [ 37, %bb.q ], [ 31, %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTNtNtCs6i54tJFfzR_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1D_8adapters3map8map_foldRBQ_jjNCNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata25user_metadata_encoded_len0NCINvXsK_NtB1B_5accumjNtB4n_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB35_.exit.i ], [ 37, %bb.ag ], [ 37, %bb.ae ], [ 37, %bb.ac ], [ 37, %bb.aa ], [ 37, %bb.y ], [ 37, %bb.w ], [ 37, %bb.u ], [ 37, %bb.s ]
  %i.gl = phi ptr [ @135, %bb.q ], [ @149, %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTNtNtCs6i54tJFfzR_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1D_8adapters3map8map_foldRBQ_jjNCNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata25user_metadata_encoded_len0NCINvXsK_NtB1B_5accumjNtB4n_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB35_.exit.i ], [ @136, %bb.ag ], [ @136, %bb.ae ], [ @136, %bb.ac ], [ @136, %bb.aa ], [ @136, %bb.y ], [ @136, %bb.w ], [ @136, %bb.u ], [ @136, %bb.s ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gj, i64 noundef %i.gk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #21
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !862
  %i.gm = invoke { ptr, i64 } @_RNvMsq_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE18allocate_for_sliceCs5XgW7KoffLW_12opendal_core(i64 noundef %i.ea)
          to label %.noexc35 unwind label %bb.b   ; 2 uses

.noexc35:                                         ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact14encoded_layout.exit.i
  %i.gn = extractvalue { ptr, i64 } %i.gm, 0      ; 4 uses
  %i.go = extractvalue { ptr, i64 } %i.gm, 1
  store ptr %i.gn, ptr %i.k, align 8, !noalias !862
  %i.gp = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 %i.go, ptr %i.gp, align 8, !noalias !862
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gr = cmpxchg ptr %i.gq, i64 1, i64 -1 acquire monotonic, align 8, !noalias !862
  %i.gs = extractvalue { i64, i1 } %i.gr, 1
  br i1 %i.gs, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.i, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i, !prof !7

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.aw, %bb.at, %bb.aq
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ax, %bb.av, %bb.au, %bb.as, %bb.ao, %bb.ak, %bb.aj, %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i
  %lpad.loopexit.split-lp22.i = landingpad { ptr, i32 }
          cleanup
  %.pre.i = load ptr, ptr %i.k, align 8, !alias.scope !863, !noalias !862
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i
  %i.gt = phi ptr [ %i.gy, %.loopexit.split-lp.loopexit.i ], [ %.pre.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp22.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.gu = atomicrmw add ptr %i.gt, i64 -1 release, align 8, !noalias !866
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %bb.ah, label %.body36

bb.ah:                                            ; preds = %.loopexit.split-lp.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #22
          to label %.body36 unwind label %bb.ba, !noalias !862

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %.noexc35
  %i.gw = load atomic i64, ptr %i.gn acquire, align 8, !noalias !862
  %i.gx = icmp eq i64 %i.gw, 1
  store atomic i64 1, ptr %i.gq release, align 8, !noalias !862
  br i1 %i.gx, label %bb.ai, label %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i, !prof !8

_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i: ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.i, %.noexc35
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !862

bb.ai:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.i
  %i.gy = load ptr, ptr %i.k, align 8, !noalias !862, !nonnull !5, !noundef !5 ; 4 uses
  %i.gz = load i64, ptr %i.gp, align 8, !noalias !862, !noundef !5 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !868
  store i64 %i.ea, ptr %i.j, align 8, !noalias !868
  store i64 %i.gz, ptr %i.i, align 8, !noalias !868
  %i.hb = icmp eq i64 %i.gz, %i.ea
  br i1 %i.hb, label %bb.ak, label %bb.aj, !prof !9

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !862

.noexc6.i:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !868
  store i16 %.sroa.0.1.i.857.i, ptr %i.h, align 2, !noalias !868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !869
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 18
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.ha, ptr noundef nonnull %i.hc, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.hd)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !862

.noexc7.i:                                        ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !870 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.44.0.copyload.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !870 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.55.0.copyload.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !870 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !870 ; 5 uses
  %i.he = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i
  br i1 %i.he, label %iter.check, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i

iter.check:                                       ; preds = %.noexc7.i
  %.sroa.44.0.copyload.i.i.i.i201 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i202 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i) ]
  %i.hf = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.hf, 8
  %i.hg = sub i64 %.sroa.44.0.copyload.i.i.i.i201, %.sroa.0.0.copyload.i.i.i.i202
  %diff.check = icmp ugt i64 %i.hg, -32
  %or.cond270 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond270, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check203 = icmp ult i64 %i.hf, 32
  br i1 %min.iters.check203, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hh = and i64 %i.hf, 24
  %n.vec = and i64 %i.hf, -32                     ; 4 uses
  %i.hi = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hj = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.hj ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load = load <16 x i8>, ptr %i.hl, align 1, !noalias !871
  %wide.load204 = load <16 x i8>, ptr %i.hm, align 1, !noalias !871
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store <16 x i8> %wide.load, ptr %i.hk, align 1, !noalias !871
  store <16 x i8> %wide.load204, ptr %i.hn, align 1, !noalias !871
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !806

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hf, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hh, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec205 = and i64 %i.hf, -8                   ; 3 uses
  %i.hp = add i64 %.sroa.55.0.copyload.i.i.i.i, %n.vec205
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index206 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next208, %vec.epilog.vector.body ] ; 2 uses
  %i.hq = add nuw i64 %.sroa.55.0.copyload.i.i.i.i, %index206 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.hq
  %wide.load207 = load <8 x i8>, ptr %i.hs, align 1, !noalias !871
  store <8 x i8> %wide.load207, ptr %i.hr, align 1, !noalias !871
  %index.next208 = add nuw i64 %index206, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next208, %n.vec205
  br i1 %i.ht, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !807

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n209 = icmp eq i64 %i.hf, %n.vec205
  br i1 %cmp.n209, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i, %iter.check ], [ %i.hi, %vec.epilog.iter.check ], [ %i.hp, %vec.epilog.middle.block ] ; 4 uses
  %i.hu = sub i64 %.sroa.7.0.copyload.i.i.i.i, %.sroa.55.010.i.i.i.i.ph
  %xtraiter293 = and i64 %i.hu, 3                 ; 2 uses
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.prol = phi i64 [ %i.hx, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.prol
  %i.hx = add nuw i64 %.sroa.55.010.i.i.i.i.prol, 1 ; 2 uses
  %i.hy = load i8, ptr %i.hw, align 1, !noalias !871, !noundef !5
  store i8 %i.hy, ptr %i.hv, align 1, !noalias !871
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter293
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, !llvm.loop !808

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.preheader ], [ %i.hx, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol ]
  %i.hz = sub i64 %.sroa.55.010.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i
  %i.ia = icmp ugt i64 %i.hz, -4
  br i1 %i.ia, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  %.sroa.55.010.i.i.i.i = phi i64 [ %i.ip, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %.sroa.55.010.i.i.i.i
  %i.id = add nuw i64 %.sroa.55.010.i.i.i.i, 1    ; 2 uses
  %i.ie = load i8, ptr %i.ic, align 1, !noalias !871, !noundef !5
  store i8 %i.ie, ptr %i.ib, align 1, !noalias !871
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.id
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.id
  %i.ih = add nuw i64 %.sroa.55.010.i.i.i.i, 2    ; 2 uses
  %i.ii = load i8, ptr %i.ig, align 1, !noalias !871, !noundef !5
  store i8 %i.ii, ptr %i.if, align 1, !noalias !871
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.ih
  %i.il = add nuw i64 %.sroa.55.010.i.i.i.i, 3    ; 2 uses
  %i.im = load i8, ptr %i.ik, align 1, !noalias !871, !noundef !5
  store i8 %i.im, ptr %i.ij, align 1, !noalias !871
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.il
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i, i64 %i.il
  %i.ip = add nuw i64 %.sroa.55.010.i.i.i.i, 4    ; 2 uses
  %i.iq = load i8, ptr %i.io, align 1, !noalias !871, !noundef !5
  store i8 %i.iq, ptr %i.in, align 1, !noalias !871
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ip, %.sroa.7.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !llvm.loop !809

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !868
  %i.ir = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.44.0..sroa_idx.i.i24.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i26.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i28.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i
  %.sroa.0.069.i.i = phi i64 [ %i.dz, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i ], [ %.sroa.0.1.i5.i, %bb.an ] ; 5 uses
  %.sroa.04.068.i.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i ], [ %.sroa.04.1.i.i, %bb.an ] ; 3 uses
  %.sroa.7.067.i.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i ], [ %i.iw, %bb.an ] ; 3 uses
  %.sroa.035.0.idx66.i.i = phi i64 [ 0, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit.i.i ], [ %.sroa.035.0.add.i.i, %bb.an ] ; 2 uses
  %.sroa.035.0.ptr70.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.035.0.idx66.i.i ; 2 uses
  %.sroa.035.0.add.i.i = add nuw nsw i64 %.sroa.035.0.idx66.i.i, 16 ; 2 uses
  %i.iw = add nuw nsw i64 %.sroa.7.067.i.i, 1
  %i.ix = load i64, ptr %.sroa.035.0.ptr70.i.i, align 8, !range !6, !alias.scope !872, !noundef !5
  %i.iy = trunc nuw i64 %i.ix to i1
  br i1 %i.iy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.035.0.ptr70.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !868
  %i.ja = load i64, ptr %i.iz, align 8, !alias.scope !872, !noundef !5 ; 3 uses
  %i.jb = add i64 %i.ja, %.sroa.0.069.i.i         ; 5 uses
  %i.jc = icmp ult i64 %i.jb, %.sroa.0.069.i.i
  %.not19.i.i = icmp ugt i64 %i.jb, %i.ea
  %or.cond.i.i31 = or i1 %i.jc, %.not19.i.i
  br i1 %or.cond.i.i31, label %bb.ao, label %bb.ap, !prof !15

bb.an:                                            ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i, %bb.al
  %.sroa.04.1.i.i = phi i64 [ %i.mv, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i ], [ %.sroa.04.068.i.i, %bb.al ]
  %.sroa.0.1.i5.i = phi i64 [ %i.jb, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i ], [ %.sroa.0.069.i.i, %bb.al ]
  %i.jd = icmp eq i64 %.sroa.035.0.add.i.i, 144
  br i1 %i.jd, label %bb.az, label %bb.al

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.069.i.i, i64 noundef %i.jb, i64 noundef range(i64 0, -9223372036854775808) %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !862

.noexc9.i:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.je = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.sroa.0.069.i.i ; 3 uses
  store ptr %i.je, ptr %i.g, align 8, !noalias !868
  store i64 %i.ja, ptr %i.ir, align 8, !noalias !868
  store i64 0, ptr %i.is, align 8, !noalias !868
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.jf = icmp ne i64 %.sroa.7.067.i.i, 7
  %brmerge.i.i = or i1 %.not10, %i.jf
  br i1 %brmerge.i.i, label %.thread.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata19write_user_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.pg, i64 noundef %i.pi, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB7_15MetadataBuilder5builds_0Bb_.exit.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !862

.thread.i.i.i:                                    ; preds = %bb.ap
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.7.067.i.i ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !noundef !5 ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not3.i.i.i, label %bb.au, label %bb.ar, !prof !14

bb.ar:                                            ; preds = %.thread.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jj = load i64, ptr %i.ji, align 8            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %.not.i.i.i.i = icmp ugt i64 %i.jj, %i.ja
  br i1 %.not.i.i.i.i, label %bb.as, label %bb.at, !prof !14

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !862

.noexc11.i:                                       ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !875
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.je, ptr noundef nonnull %i.jk, ptr noundef nonnull readonly %i.jh, ptr noundef nonnull readonly %i.jl)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !862

.noexc12.i:                                       ; preds = %bb.at
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !876 ; 9 uses
  %.sroa.44.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !876 ; 9 uses
  %.sroa.55.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 8, !noalias !876 ; 7 uses
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !876 ; 5 uses
  %i.jm = icmp ult i64 %.sroa.55.0.copyload.i.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i.i
  br i1 %i.jm, label %iter.check256, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i.i

iter.check256:                                    ; preds = %.noexc12.i
  %.sroa.44.0.copyload.i.i.i.i.i242 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i.i241 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i.i.i.i) ]
  %i.jn = sub nuw i64 %.sroa.7.0.copyload.i.i.i.i.i, %.sroa.55.0.copyload.i.i.i.i.i ; 7 uses
  %min.iters.check244 = icmp ult i64 %i.jn, 8
  %i.jo = sub i64 %.sroa.44.0.copyload.i.i.i.i.i242, %.sroa.0.0.copyload.i.i.i.i.i241
  %diff.check243 = icmp ugt i64 %i.jo, -32
  %or.cond271 = select i1 %min.iters.check244, i1 true, i1 %diff.check243
  br i1 %or.cond271, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %iter.check256
  %min.iters.check246 = icmp ult i64 %i.jn, 32
  br i1 %min.iters.check246, label %vec.epilog.ph260, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.jp = and i64 %i.jn, 24
  %n.vec248 = and i64 %i.jn, -32                  ; 4 uses
  %i.jq = add i64 %.sroa.55.0.copyload.i.i.i.i.i, %n.vec248
  br label %vector.body249

vector.body249:                                   ; preds = %vector.ph247, %vector.body249
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next253, %vector.body249 ] ; 2 uses
  %i.jr = add nuw i64 %.sroa.55.0.copyload.i.i.i.i.i, %index250 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.jr ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load251 = load <16 x i8>, ptr %i.jt, align 1, !noalias !877
  %wide.load252 = load <16 x i8>, ptr %i.ju, align 1, !noalias !877
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store <16 x i8> %wide.load251, ptr %i.js, align 1, !noalias !877
  store <16 x i8> %wide.load252, ptr %i.jv, align 1, !noalias !877
  %index.next253 = add nuw i64 %index250, 32      ; 2 uses
  %i.jw = icmp eq i64 %index.next253, %n.vec248
  br i1 %i.jw, label %middle.block254, label %vector.body249, !llvm.loop !818

middle.block254:                                  ; preds = %vector.body249
  %cmp.n255 = icmp eq i64 %i.jn, %n.vec248
  br i1 %cmp.n255, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i.i, label %vec.epilog.iter.check257

vec.epilog.iter.check257:                         ; preds = %middle.block254
  %min.epilog.iters.check259 = icmp eq i64 %i.jp, 0
  br i1 %min.epilog.iters.check259, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader, label %vec.epilog.ph260, !prof !12

vec.epilog.ph260:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check257
  %vec.epilog.resume.val261 = phi i64 [ %n.vec248, %vec.epilog.iter.check257 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec262 = and i64 %i.jn, -8                   ; 3 uses
  %i.jx = add i64 %.sroa.55.0.copyload.i.i.i.i.i, %n.vec262
  br label %vec.epilog.vector.body263

vec.epilog.vector.body263:                        ; preds = %vec.epilog.vector.body263, %vec.epilog.ph260
  %index264 = phi i64 [ %vec.epilog.resume.val261, %vec.epilog.ph260 ], [ %index.next266, %vec.epilog.vector.body263 ] ; 2 uses
  %i.jy = add nuw i64 %.sroa.55.0.copyload.i.i.i.i.i, %index264 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.jy
  %wide.load265 = load <8 x i8>, ptr %i.ka, align 1, !noalias !877
  store <8 x i8> %wide.load265, ptr %i.jz, align 1, !noalias !877
  %index.next266 = add nuw i64 %index264, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next266, %n.vec262
  br i1 %i.kb, label %vec.epilog.middle.block267, label %vec.epilog.vector.body263, !llvm.loop !819

vec.epilog.middle.block267:                       ; preds = %vec.epilog.vector.body263
  %cmp.n268 = icmp eq i64 %i.jn, %n.vec262
  br i1 %cmp.n268, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader: ; preds = %iter.check256, %vec.epilog.iter.check257, %vec.epilog.middle.block267
  %.sroa.55.010.i.i.i.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i.i.i.i, %iter.check256 ], [ %i.jq, %vec.epilog.iter.check257 ], [ %i.jx, %vec.epilog.middle.block267 ] ; 4 uses
  %i.kc = sub i64 %.sroa.7.0.copyload.i.i.i.i.i, %.sroa.55.010.i.i.i.i.i.ph
  %xtraiter295 = and i64 %i.kc, 3                 ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol
  %.sroa.55.010.i.i.i.i.i.prol = phi i64 [ %i.kf, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol ], [ %.sroa.55.010.i.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.i.prol
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.i.prol
  %i.kf = add nuw i64 %.sroa.55.010.i.i.i.i.i.prol, 1 ; 2 uses
  %i.kg = load i8, ptr %i.ke, align 1, !noalias !877, !noundef !5
  store i8 %i.kg, ptr %i.kd, align 1, !noalias !877
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol, !llvm.loop !820

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader
  %.sroa.55.010.i.i.i.i.i.unr = phi i64 [ %.sroa.55.010.i.i.i.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.preheader ], [ %i.kf, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol ]
  %i.kh = sub i64 %.sroa.55.010.i.i.i.i.i.ph, %.sroa.7.0.copyload.i.i.i.i.i
  %i.ki = icmp ugt i64 %i.kh, -4
  br i1 %i.ki, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i
  %.sroa.55.010.i.i.i.i.i = phi i64 [ %i.kx, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i ], [ %.sroa.55.010.i.i.i.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %.sroa.55.010.i.i.i.i.i
  %i.kl = add nuw i64 %.sroa.55.010.i.i.i.i.i, 1  ; 2 uses
  %i.km = load i8, ptr %i.kk, align 1, !noalias !877, !noundef !5
  store i8 %i.km, ptr %i.kj, align 1, !noalias !877
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.kl
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.kl
  %i.kp = add nuw i64 %.sroa.55.010.i.i.i.i.i, 2  ; 2 uses
  %i.kq = load i8, ptr %i.ko, align 1, !noalias !877, !noundef !5
  store i8 %i.kq, ptr %i.kn, align 1, !noalias !877
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.kp
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.kp
  %i.kt = add nuw i64 %.sroa.55.010.i.i.i.i.i, 3  ; 2 uses
  %i.ku = load i8, ptr %i.ks, align 1, !noalias !877, !noundef !5
  store i8 %i.ku, ptr %i.kr, align 1, !noalias !877
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.kt
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i.i.i, i64 %i.kt
  %i.kx = add nuw i64 %.sroa.55.010.i.i.i.i.i, 4  ; 2 uses
  %i.ky = load i8, ptr %i.kw, align 1, !noalias !877, !noundef !5
  store i8 %i.ky, ptr %i.kv, align 1, !noalias !877
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.kx, %.sroa.7.0.copyload.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, !llvm.loop !821

_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, %middle.block254, %vec.epilog.middle.block267, %.noexc12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !875
  store i64 %i.jj, ptr %i.is, align 8, !alias.scope !878, !noalias !868
  br label %_RNCNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB7_15MetadataBuilder5builds_0Bb_.exit.i.i

bb.au:                                            ; preds = %.thread.i.i.i
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !862

.noexc13.i:                                       ; preds = %bb.au
  unreachable

_RNCNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB7_15MetadataBuilder5builds_0Bb_.exit.i.i: ; preds = %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit.i.i.i, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !868
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !880
  %i.kz = load i64, ptr %i.iu, align 8, !alias.scope !879, !noalias !868, !noundef !5 ; 2 uses
  store i64 %i.kz, ptr %i.b, align 8, !noalias !880
  %i.la = load i64, ptr %i.it, align 8, !alias.scope !879, !noalias !868, !noundef !5
  %i.lb = icmp eq i64 %i.la, %i.kz
  br i1 %i.lb, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i.i, label %bb.av, !prof !9

bb.av:                                            ; preds = %_RNCNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB7_15MetadataBuilder5builds_0Bb_.exit.i.i
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.it, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @127, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #21
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !862

.noexc14.i:                                       ; preds = %bb.av
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %_RNCNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB7_15MetadataBuilder5builds_0Bb_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !868
  %.sroa.5.0.extract.trunc.i.i.i = trunc nuw i64 %i.jb to i16
  %i.lc = shl i64 %.sroa.04.068.i.i, 1            ; 2 uses
  %i.ld = add i64 %i.lc, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !868
  store i16 %.sroa.5.0.extract.trunc.i.i.i, ptr %i.e, align 2, !noalias !868
  %i.le = add i64 %i.lc, 4                        ; 2 uses
  %i.lf = icmp eq i64 %i.ld, -2
  %.not.i22.i.i = icmp ugt i64 %i.le, %i.ea
  %or.cond.i.i.i = or i1 %i.lf, %.not.i22.i.i
  br i1 %or.cond.i.i.i, label %bb.ax, label %bb.aw, !prof !15

bb.aw:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.ld ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !881
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.lh, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.iv)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !862

.noexc16.i:                                       ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i23.i.i = load ptr, ptr %i.a, align 8, !noalias !882 ; 9 uses
  %.sroa.44.0.copyload.i.i25.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i24.i.i, align 8, !noalias !882 ; 9 uses
  %.sroa.55.0.copyload.i.i27.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i26.i.i, align 8, !noalias !882 ; 7 uses
  %.sroa.7.0.copyload.i.i29.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i28.i.i, align 8, !noalias !882 ; 5 uses
  %i.li = icmp ult i64 %.sroa.55.0.copyload.i.i27.i.i, %.sroa.7.0.copyload.i.i29.i.i
  br i1 %i.li, label %iter.check226, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i

iter.check226:                                    ; preds = %.noexc16.i
  %.sroa.44.0.copyload.i.i25.i.i212 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i25.i.i to i64
  %.sroa.0.0.copyload.i.i23.i.i211 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i23.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i23.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i25.i.i) ]
  %i.lj = sub nuw i64 %.sroa.7.0.copyload.i.i29.i.i, %.sroa.55.0.copyload.i.i27.i.i ; 7 uses
  %min.iters.check214 = icmp ult i64 %i.lj, 8
  %i.lk = sub i64 %.sroa.44.0.copyload.i.i25.i.i212, %.sroa.0.0.copyload.i.i23.i.i211
  %diff.check213 = icmp ugt i64 %i.lk, -32
  %or.cond272 = select i1 %min.iters.check214, i1 true, i1 %diff.check213
  br i1 %or.cond272, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %iter.check226
  %min.iters.check216 = icmp ult i64 %i.lj, 32
  br i1 %min.iters.check216, label %vec.epilog.ph230, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %i.ll = and i64 %i.lj, 24
  %n.vec218 = and i64 %i.lj, -32                  ; 4 uses
  %i.lm = add i64 %.sroa.55.0.copyload.i.i27.i.i, %n.vec218
  br label %vector.body219

vector.body219:                                   ; preds = %vector.ph217, %vector.body219
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next223, %vector.body219 ] ; 2 uses
  %i.ln = add nuw i64 %.sroa.55.0.copyload.i.i27.i.i, %index220 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i.i, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i.i, i64 %i.ln ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %wide.load221 = load <16 x i8>, ptr %i.lp, align 1, !noalias !871
  %wide.load222 = load <16 x i8>, ptr %i.lq, align 1, !noalias !871
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <16 x i8> %wide.load221, ptr %i.lo, align 1, !noalias !871
  store <16 x i8> %wide.load222, ptr %i.lr, align 1, !noalias !871
  %index.next223 = add nuw i64 %index220, 32      ; 2 uses
  %i.ls = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.ls, label %middle.block224, label %vector.body219, !llvm.loop !830

middle.block224:                                  ; preds = %vector.body219
  %cmp.n225 = icmp eq i64 %i.lj, %n.vec218
  br i1 %cmp.n225, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i, label %vec.epilog.iter.check227

vec.epilog.iter.check227:                         ; preds = %middle.block224
  %min.epilog.iters.check229 = icmp eq i64 %i.ll, 0
  br i1 %min.epilog.iters.check229, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader, label %vec.epilog.ph230, !prof !12

vec.epilog.ph230:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check227
  %vec.epilog.resume.val231 = phi i64 [ %n.vec218, %vec.epilog.iter.check227 ], [ 0, %vector.main.loop.iter.check215 ]
  %n.vec232 = and i64 %i.lj, -8                   ; 3 uses
  %i.lt = add i64 %.sroa.55.0.copyload.i.i27.i.i, %n.vec232
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph230
  %index234 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph230 ], [ %index.next236, %vec.epilog.vector.body233 ] ; 2 uses
  %i.lu = add nuw i64 %.sroa.55.0.copyload.i.i27.i.i, %index234 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i.i, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i.i, i64 %i.lu
  %wide.load235 = load <8 x i8>, ptr %i.lw, align 1, !noalias !871
  store <8 x i8> %wide.load235, ptr %i.lv, align 1, !noalias !871
  %index.next236 = add nuw i64 %index234, 8       ; 2 uses
  %i.lx = icmp eq i64 %index.next236, %n.vec232
  br i1 %i.lx, label %vec.epilog.middle.block237, label %vec.epilog.vector.body233, !llvm.loop !831

vec.epilog.middle.block237:                       ; preds = %vec.epilog.vector.body233
  %cmp.n238 = icmp eq i64 %i.lj, %n.vec232
  br i1 %cmp.n238, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader: ; preds = %iter.check226, %vec.epilog.iter.check227, %vec.epilog.middle.block237
  %.sroa.55.010.i.i32.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i27.i.i, %iter.check226 ], [ %i.lm, %vec.epilog.iter.check227 ], [ %i.lt, %vec.epilog.middle.block237 ] ; 4 uses
  %i.ly = sub i64 %.sroa.7.0.copyload.i.i29.i.i, %.sroa.55.010.i.i32.i.i.ph
  %xtraiter298 = and i64 %i.ly, 3                 ; 2 uses
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol
  %.sroa.55.010.i.i32.i.i.prol = phi i64 [ %i.mb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol ], [ %.sroa.55.010.i.i32.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader ] ; 3 uses
  %prol.iter300 = phi i64 [ %prol.iter300.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i.i, i64 %.sroa.55.010.i.i32.i.i.prol
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i.i, i64 %.sroa.55.010.i.i32.i.i.prol
  %i.mb = add nuw i64 %.sroa.55.010.i.i32.i.i.prol, 1 ; 2 uses
  %i.mc = load i8, ptr %i.ma, align 1, !noalias !871, !noundef !5
  store i8 %i.mc, ptr %i.lz, align 1, !noalias !871
  %prol.iter300.next = add i64 %prol.iter300, 1   ; 2 uses
  %prol.iter300.cmp.not = icmp eq i64 %prol.iter300.next, %xtraiter298
  br i1 %prol.iter300.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol, !llvm.loop !832

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader
  %.sroa.55.010.i.i32.i.i.unr = phi i64 [ %.sroa.55.010.i.i32.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.preheader ], [ %i.mb, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol ]
  %i.md = sub i64 %.sroa.55.010.i.i32.i.i.ph, %.sroa.7.0.copyload.i.i29.i.i
  %i.me = icmp ugt i64 %i.md, -4
  br i1 %i.me, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i
  %.sroa.55.010.i.i32.i.i = phi i64 [ %i.mt, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i ], [ %.sroa.55.010.i.i32.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol.loopexit ] ; 6 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i.i, i64 %.sroa.55.010.i.i32.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i.i, i64 %.sroa.55.010.i.i32.i.i
  %i.mh = add nuw i64 %.sroa.55.010.i.i32.i.i, 1  ; 2 uses
  %i.mi = load i8, ptr %i.mg, align 1, !noalias !871, !noundef !5
  store i8 %i.mi, ptr %i.mf, align 1, !noalias !871
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i.i, i64 %i.mh
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i.i, i64 %i.mh
  %i.ml = add nuw i64 %.sroa.55.010.i.i32.i.i, 2  ; 2 uses
  %i.mm = load i8, ptr %i.mk, align 1, !noalias !871, !noundef !5
  store i8 %i.mm, ptr %i.mj, align 1, !noalias !871
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i.i, i64 %i.ml
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i.i, i64 %i.ml
  %i.mp = add nuw i64 %.sroa.55.010.i.i32.i.i, 3  ; 2 uses
  %i.mq = load i8, ptr %i.mo, align 1, !noalias !871, !noundef !5
  store i8 %i.mq, ptr %i.mn, align 1, !noalias !871
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i23.i.i, i64 %i.mp
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i25.i.i, i64 %i.mp
  %i.mt = add nuw i64 %.sroa.55.010.i.i32.i.i, 4  ; 2 uses
  %i.mu = load i8, ptr %i.ms, align 1, !noalias !871, !noundef !5
  store i8 %i.mu, ptr %i.mr, align 1, !noalias !871
  %exitcond.not.i.i33.i.i.3 = icmp eq i64 %i.mt, %.sroa.7.0.copyload.i.i29.i.i
  br i1 %exitcond.not.i.i33.i.i.3, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i, !llvm.loop !833

bb.ax:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit.i.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.ld, i64 noundef %i.le, i64 noundef range(i64 0, -9223372036854775808) %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #21
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !862

.noexc17.i:                                       ; preds = %bb.ax
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11write_slice.exit34.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i31.i.i, %middle.block224, %vec.epilog.middle.block237, %.noexc16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !868
  %i.mv = add i64 %.sroa.04.068.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !868
  br label %bb.an

bb.ay:                                            ; preds = %_RNvMsD_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSINtNtNtCsgxBkk5gSRhY_4core3mem12maybe_uninit11MaybeUninithEE9is_uniqueCs5XgW7KoffLW_12opendal_core.exit.thread.i
  unreachable

bb.az:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !862
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ah
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !862
  unreachable

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata25user_metadata_encoded_len.exit: ; preds = %bb.o
  %i.mx = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i64 1, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  store i64 %i.dn, ptr %i.my, align 8
  br label %bb.p

bb.bb:                                            ; preds = %bb.az, %._crit_edge.i.i
  %.sroa.3.0.i = phi i64 [ %i.ea, %bb.az ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0.i30 = phi ptr [ %i.gy, %bb.az ], [ null, %._crit_edge.i.i ]
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mz, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store ptr %.sroa.0.0.i30, ptr %0, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %i.na, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.nb = load i64, ptr %i.q, align 8, !range !16, !alias.scope !883, !noundef !5
  %i.nc = icmp eq i64 %i.nb, -1
  br i1 %i.nc, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit44, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i39 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i39: ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit44 unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit44: ; preds = %bb.bb, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.nf = load i64, ptr %i.r, align 8, !range !16, !alias.scope !884, !noundef !5
  %i.ng = icmp eq i64 %i.nf, -1
  br i1 %i.ng, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtB12_6string6StringB1u_EEEECs5XgW7KoffLW_12opendal_core.exit51, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit44
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs5XgW7KoffLW_12opendal_core.exit.i46 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body24 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
end_hunk_6
begin_hunk_7_@_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE4nextCs5XgW7KoffLW_12opendal_core:bb.a
  br i1 %i.fk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.i.i
  %i.fl = add i64 %i.fd, %i.bo
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i.i
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.fb, i64 %i.ex) ; 2 uses
  %i.fm = icmp ult i64 %.sroa.0.0.i.i.i, %i.bo
  br i1 %i.fm, label %.lr.ph, label %.preheader35.i.i.preheader

bb.ac:                                            ; preds = %bb.ag, %bb.af, %bb.aa
  %.sink70.i.i = phi i64 [ %i.gj, %bb.ag ], [ %i.gi, %bb.af ], [ %i.fl, %bb.aa ] ; 3 uses
  %.sink69.i.i = phi i64 [ 0, %bb.ag ], [ %i.fa, %bb.af ], [ 0, %bb.aa ] ; 2 uses
  store i64 %.sink70.i.i, ptr %i.bp, align 8, !alias.scope !936
  store i64 %.sink69.i.i, ptr %i.bi, align 8, !alias.scope !936
  %i.fn = add i64 %.sink70.i.i, %i.bq             ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %.val1
  br i1 %i.fo, label %.lr.ph.split.i.i, label %._crit_edge.i6.i

bb.ad:                                            ; preds = %.lr.ph
  %i.fp = add nuw nsw i64 %.sroa.04.0.i.i96, 1    ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.bo
  br i1 %i.fq, label %.lr.ph, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %bb.ad, %bb.ab
  %i.fr = icmp ult i64 %i.fb, %i.ex
  br i1 %i.fr, label %.lr.ph98, label %.split.us.i9.i

.lr.ph:                                           ; preds = %bb.ab, %bb.ad
  %.sroa.04.0.i.i96 = phi i64 [ %i.fp, %bb.ad ], [ %.sroa.0.0.i.i.i, %bb.ab ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.i.i96
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !935, !noalias !931, !noundef !5
  %i.fu = add i64 %.sroa.04.0.i.i96, %i.fd        ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %.val1
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fu
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !934, !noalias !931, !noundef !5
  %.not20.i.i = icmp eq i8 %i.ft, %i.fx
  br i1 %.not20.i.i, label %bb.ad, label %bb.ag

.preheader35.i.i:                                 ; preds = %bb.ae
  %i.fy = icmp ult i64 %i.fb, %i.ga
  br i1 %i.fy, label %.lr.ph98, label %.split.us.i9.i

.split.us.i9.i:                                   ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %i.fz = add i64 %i.fd, %i.bo                    ; 2 uses
  store i64 %i.fz, ptr %i.bp, align 8, !alias.scope !936
  store i64 0, ptr %i.bi, align 8, !alias.scope !936
  br label %bb.ah

.lr.ph98:                                         ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.2.0.i.i97 = phi i64 [ %i.ga, %.preheader35.i.i ], [ %i.ex, %.preheader35.i.i.preheader ]
  %i.ga = add i64 %.sroa.2.0.i.i97, -1            ; 6 uses
  %i.gb = icmp ult i64 %i.ga, %i.bo
  br i1 %i.gb, label %bb.ae, label %.split31.us.i10.i

bb.ae:                                            ; preds = %.lr.ph98
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ga
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !935, !noalias !931, !noundef !5
  %i.ge = add i64 %i.ga, %i.fd                    ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %.val1
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !934, !noalias !931, !noundef !5
  %.not.i11.i = icmp eq i8 %i.gd, %i.gh
  br i1 %.not.i11.i, label %.preheader35.i.i, label %bb.af

.split31.us.i10.i:                                ; preds = %.lr.ph98
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.ga, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21, !noalias !937
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.gi = add i64 %i.fd, %i.ez
  br label %bb.ac

bb.ag:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.fd, %invariant.op
  %i.gj = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i96
  br label %bb.ac

bb.ah:                                            ; preds = %.loopexit51.thread, %.split.us.i9.i, %.split.us.i.i, %.loopexit.i, %.loopexit51
  %.sroa.8.0.ph = phi i64 [ %.val1, %.loopexit51 ], [ %.lcssa46, %.loopexit.i ], [ %i.fz, %.split.us.i9.i ], [ %i.es, %.split.us.i.i ], [ %.val1, %.loopexit51.thread ]
  %.sroa.4.02.ph = phi i64 [ %.val1, %.loopexit51 ], [ %.lcssa46, %.loopexit.i ], [ %i.fd, %.split.us.i9.i ], [ %.us-phi.i, %.split.us.i.i ], [ %.val1, %.loopexit51.thread ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !5 ; 2 uses
  %i.gm = sub nuw i64 %.sroa.4.02.ph, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gl
  store i64 %.sroa.8.0.ph, ptr %i.gk, align 8
  br label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE7get_endCs5XgW7KoffLW_12opendal_core.exit

bb.ai:                                            ; preds = %.preheader.i, %bb.r, %._crit_edge.i.i, %._crit_edge.i6.i
  store i8 1, ptr %i.a, align 1, !alias.scope !938
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gp = load i8, ptr %i.go, align 8, !range !21, !alias.scope !938, !noundef !5
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %._crit_edge.i, label %bb.aj

._crit_edge.i:                                    ; preds = %bb.ai
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !938
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !938
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !938, !noundef !5 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !938, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.gs, %i.gu
  br i1 %.not.i, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE7get_endCs5XgW7KoffLW_12opendal_core.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i
  %i.gv = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.gs, %bb.aj ]
  %i.gw = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gu, %bb.aj ] ; 2 uses
  %i.gx = sub nuw i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gw
  br label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE7get_endCs5XgW7KoffLW_12opendal_core.exit

_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE7get_endCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gm, %bb.ah ], [ %i.gx, %bb.ak ], [ undef, %bb.aj ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.gn, %bb.ah ], [ %i.gy, %bb.ak ], [ null, %bb.aj ]
  %i.gz = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.ha = insertvalue { ptr, i64 } %i.gz, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.ha
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata19write_user_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [2 x i8], align 2                 ; 9 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = icmp samesign ugt i64 %1, 65535
  %i.j = trunc nuw nsw i64 %1 to i32
  %i.k = shl nuw i32 %i.j, 16
  %.sroa.046.0.insert.insert = select i1 %i.i, i32 513, i32 %i.k ; 2 uses
  %i.l = trunc i32 %.sroa.046.0.insert.insert to i1
  br i1 %i.l, label %bb.b, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !991
  store i8 2, ptr %i.f, align 1, !noalias !991
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 37, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #23
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.046.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  %i.m = shl nuw nsw i64 %1, 2
  %i.n = or disjoint i64 %i.m, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i16 %.sroa.5.0.extract.trunc.i, ptr %i.h, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !992, !noundef !5 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 3 uses
  %i.r = icmp ugt i64 %i.p, -3
  br i1 %i.r, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !992, !noundef !5 ; 5 uses
  %.not.i = icmp ugt i64 %i.q, %i.t
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !14

bb.d:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #21, !noalias !993
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21, !noalias !993
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %2, align 8, !alias.scope !992, !nonnull !5, !noundef !5 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !993
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.x), !noalias !992
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !noalias !994 ; 9 uses
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !994 ; 9 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !994 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !994 ; 5 uses
  %i.y = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.y, label %iter.check, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit

iter.check:                                       ; preds = %bb.f
  %.sroa.44.0.copyload.i.i154 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i.i155 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.z = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %.sroa.44.0.copyload.i.i154, %.sroa.0.0.copyload.i.i155
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check156 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.z, 24
  %n.vec = and i64 %i.z, -32                      ; 4 uses
  %i.ac = add i64 %.sroa.55.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %.sroa.55.0.copyload.i.i, %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <16 x i8>, ptr %i.af, align 1, !noalias !992
  %wide.load157 = load <16 x i8>, ptr %i.ag, align 1, !noalias !992
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> %wide.load, ptr %i.ae, align 1, !noalias !992
  store <16 x i8> %wide.load157, ptr %i.ah, align 1, !noalias !992
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec158 = and i64 %i.z, -8                    ; 3 uses
  %i.aj = add i64 %.sroa.55.0.copyload.i.i, %n.vec158
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index159 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next161, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = add nuw i64 %.sroa.55.0.copyload.i.i, %index159 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.ak
  %wide.load160 = load <8 x i8>, ptr %i.am, align 1, !noalias !992
  store <8 x i8> %wide.load160, ptr %i.al, align 1, !noalias !992
  %index.next161 = add nuw i64 %index159, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next161, %n.vec158
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !949

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n162 = icmp eq i64 %i.z, %n.vec158
  br i1 %cmp.n162, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ] ; 4 uses
  %i.ao = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter = and i64 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.ar, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ar = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.as = load i8, ptr %i.aq, align 1, !noalias !992, !noundef !5
  store i8 %i.as, ptr %i.ap, align 1, !noalias !992
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol, !llvm.loop !950

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.preheader ], [ %i.ar, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol ]
  %i.at = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.bj, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ax = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.ay = load i8, ptr %i.aw, align 1, !noalias !992, !noundef !5
  store i8 %i.ay, ptr %i.av, align 1, !noalias !992
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.ax
  %i.bb = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.bc = load i8, ptr %i.ba, align 1, !noalias !992, !noundef !5
  store i8 %i.bc, ptr %i.az, align 1, !noalias !992
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.bb
  %i.bf = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.bg = load i8, ptr %i.be, align 1, !noalias !992, !noundef !5
  store i8 %i.bg, ptr %i.bd, align 1, !noalias !992
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.bf
  %i.bj = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !noalias !992, !noundef !5
  store i8 %i.bk, ptr %i.bh, align 1, !noalias !992
  %exitcond.not.i.i.3 = icmp eq i64 %i.bj, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i.3, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i, !llvm.loop !951

_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !993
  store i64 %i.q, ptr %i.o, align 8, !alias.scope !992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.idx = mul nuw nsw i64 %1, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.bm = icmp eq i64 %1, 0
  br i1 %i.bm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %.sroa.44.0..sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i67 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i69 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br label %bb.g

.lr.ph124:                                        ; preds = %.loopexit.1
  %.sroa.44.0..sroa_idx.i.i81 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.55.0..sroa_idx.i.i83 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0..sroa_idx.i.i85 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.44.0..sroa_idx.i.i94 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.55.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i98 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph, %.loopexit.1
  %.sroa.01.0122 = phi i64 [ %i.n, %.lr.ph ], [ %i.dp, %.loopexit.1 ]
  %.sroa.03.0121 = phi ptr [ %0, %.lr.ph ], [ %i.bo, %.loopexit.1 ] ; 3 uses
  %.promoted116120 = phi i64 [ %i.q, %.lr.ph ], [ %i.du, %.loopexit.1 ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0121, i64 48 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.0121, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.0121, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5
  %i.bt = add i64 %i.bq, %.sroa.01.0122           ; 3 uses
  %i.bu = icmp ugt i64 %i.bt, 65535
  %i.bv = trunc nuw i64 %i.bt to i32
  %i.bw = shl nuw i32 %i.bv, 16
  %.sroa.052.0.insert.insert = select i1 %i.bu, i32 513, i32 %i.bw ; 2 uses
  %i.bx = trunc i32 %.sroa.052.0.insert.insert to i1
  br i1 %i.bx, label %.noexc, label %bb.h, !prof !14

.noexc:                                           ; preds = %.loopexit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !995
  store i8 2, ptr %i.d, align 1, !noalias !995
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 34, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #23
  unreachable

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.extract.shift.i58 = lshr i32 %.sroa.052.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i59 = trunc nuw i32 %.sroa.5.0.extract.shift.i58 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 %.sroa.5.0.extract.trunc.i59, ptr %i.g, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.by = add nuw i64 %.promoted116120, 2         ; 3 uses
  %i.bz = icmp ugt i64 %.promoted116120, -3
  br i1 %i.bz, label %.noexc75, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %.not.i63 = icmp ugt i64 %i.by, %i.t
  br i1 %.not.i63, label %.noexc76, label %.noexc77, !prof !14

.noexc75:                                         ; preds = %bb.j, %bb.h
  call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #21
  unreachable

.noexc76:                                         ; preds = %bb.k, %bb.i
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21
  unreachable

.noexc77:                                         ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 %.promoted116120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !997
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.bn)
  %.sroa.0.0.copyload.i.i64 = load ptr, ptr %i.c, align 8, !noalias !998 ; 9 uses
  %.sroa.44.0.copyload.i.i66 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i65, align 8, !noalias !998 ; 9 uses
  %.sroa.55.0.copyload.i.i68 = load i64, ptr %.sroa.55.0..sroa_idx.i.i67, align 8, !noalias !998 ; 7 uses
  %.sroa.7.0.copyload.i.i70 = load i64, ptr %.sroa.7.0..sroa_idx.i.i69, align 8, !noalias !998 ; 5 uses
  %i.cc = icmp ult i64 %.sroa.55.0.copyload.i.i68, %.sroa.7.0.copyload.i.i70
  br i1 %i.cc, label %iter.check209, label %.loopexit

iter.check209:                                    ; preds = %.noexc77
  %.sroa.44.0.copyload.i.i66195 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i66 to i64
  %.sroa.0.0.copyload.i.i64194 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i64 to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i64) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i66) ]
  %i.cd = sub nuw i64 %.sroa.7.0.copyload.i.i70, %.sroa.55.0.copyload.i.i68 ; 7 uses
  %min.iters.check197 = icmp ult i64 %i.cd, 8
  %i.ce = sub i64 %.sroa.44.0.copyload.i.i66195, %.sroa.0.0.copyload.i.i64194
  %diff.check196 = icmp ugt i64 %i.ce, -32
  %or.cond283 = select i1 %min.iters.check197, i1 true, i1 %diff.check196
  br i1 %or.cond283, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader, label %vector.main.loop.iter.check198

vector.main.loop.iter.check198:                   ; preds = %iter.check209
  %min.iters.check199 = icmp ult i64 %i.cd, 32
  br i1 %min.iters.check199, label %vec.epilog.ph213, label %vector.ph200

vector.ph200:                                     ; preds = %vector.main.loop.iter.check198
  %i.cf = and i64 %i.cd, 24
  %n.vec201 = and i64 %i.cd, -32                  ; 4 uses
  %i.cg = add i64 %.sroa.55.0.copyload.i.i68, %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.ph200, %vector.body202
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next206, %vector.body202 ] ; 2 uses
  %i.ch = add nuw i64 %.sroa.55.0.copyload.i.i68, %index203 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66, i64 %i.ch ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load204 = load <16 x i8>, ptr %i.cj, align 1, !noalias !996
  %wide.load205 = load <16 x i8>, ptr %i.ck, align 1, !noalias !996
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <16 x i8> %wide.load204, ptr %i.ci, align 1, !noalias !996
  store <16 x i8> %wide.load205, ptr %i.cl, align 1, !noalias !996
  %index.next206 = add nuw i64 %index203, 32      ; 2 uses
  %i.cm = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.cm, label %middle.block207, label %vector.body202, !llvm.loop !961

middle.block207:                                  ; preds = %vector.body202
  %cmp.n208 = icmp eq i64 %i.cd, %n.vec201
  br i1 %cmp.n208, label %.loopexit, label %vec.epilog.iter.check210

vec.epilog.iter.check210:                         ; preds = %middle.block207
  %min.epilog.iters.check212 = icmp eq i64 %i.cf, 0
  br i1 %min.epilog.iters.check212, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader, label %vec.epilog.ph213, !prof !12

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check210
  %vec.epilog.resume.val214 = phi i64 [ %n.vec201, %vec.epilog.iter.check210 ], [ 0, %vector.main.loop.iter.check198 ]
  %n.vec215 = and i64 %i.cd, -8                   ; 3 uses
  %i.cn = add i64 %.sroa.55.0.copyload.i.i68, %n.vec215
  br label %vec.epilog.vector.body216

vec.epilog.vector.body216:                        ; preds = %vec.epilog.vector.body216, %vec.epilog.ph213
  %index217 = phi i64 [ %vec.epilog.resume.val214, %vec.epilog.ph213 ], [ %index.next219, %vec.epilog.vector.body216 ] ; 2 uses
  %i.co = add nuw i64 %.sroa.55.0.copyload.i.i68, %index217 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66, i64 %i.co
  %wide.load218 = load <8 x i8>, ptr %i.cq, align 1, !noalias !996
  store <8 x i8> %wide.load218, ptr %i.cp, align 1, !noalias !996
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.cr, label %vec.epilog.middle.block220, label %vec.epilog.vector.body216, !llvm.loop !962

vec.epilog.middle.block220:                       ; preds = %vec.epilog.vector.body216
  %cmp.n221 = icmp eq i64 %i.cd, %n.vec215
  br i1 %cmp.n221, label %.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader: ; preds = %iter.check209, %vec.epilog.iter.check210, %vec.epilog.middle.block220
  %.sroa.55.010.i.i73.ph = phi i64 [ %.sroa.55.0.copyload.i.i68, %iter.check209 ], [ %i.cg, %vec.epilog.iter.check210 ], [ %i.cn, %vec.epilog.middle.block220 ] ; 4 uses
  %i.cs = sub i64 %.sroa.7.0.copyload.i.i70, %.sroa.55.010.i.i73.ph
  %xtraiter287 = and i64 %i.cs, 3                 ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol
  %.sroa.55.010.i.i73.prol = phi i64 [ %i.cv, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol ], [ %.sroa.55.010.i.i73.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 %.sroa.55.010.i.i73.prol
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66, i64 %.sroa.55.010.i.i73.prol
  %i.cv = add nuw i64 %.sroa.55.010.i.i73.prol, 1 ; 2 uses
  %i.cw = load i8, ptr %i.cu, align 1, !noalias !996, !noundef !5
  store i8 %i.cw, ptr %i.ct, align 1, !noalias !996
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol, !llvm.loop !963

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader
  %.sroa.55.010.i.i73.unr = phi i64 [ %.sroa.55.010.i.i73.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.preheader ], [ %i.cv, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol ]
  %i.cx = sub i64 %.sroa.55.010.i.i73.ph, %.sroa.7.0.copyload.i.i70
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72
  %.sroa.55.010.i.i73 = phi i64 [ %i.dn, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72 ], [ %.sroa.55.010.i.i73.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 %.sroa.55.010.i.i73
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66, i64 %.sroa.55.010.i.i73
  %i.db = add nuw i64 %.sroa.55.010.i.i73, 1      ; 2 uses
  %i.dc = load i8, ptr %i.da, align 1, !noalias !996, !noundef !5
  store i8 %i.dc, ptr %i.cz, align 1, !noalias !996
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66, i64 %i.db
  %i.df = add nuw i64 %.sroa.55.010.i.i73, 2      ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !noalias !996, !noundef !5
  store i8 %i.dg, ptr %i.dd, align 1, !noalias !996
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 %i.df
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66, i64 %i.df
  %i.dj = add nuw i64 %.sroa.55.010.i.i73, 3      ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1, !noalias !996, !noundef !5
  store i8 %i.dk, ptr %i.dh, align 1, !noalias !996
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66, i64 %i.dj
  %i.dn = add nuw i64 %.sroa.55.010.i.i73, 4      ; 2 uses
  %i.do = load i8, ptr %i.dm, align 1, !noalias !996, !noundef !5
  store i8 %i.do, ptr %i.dl, align 1, !noalias !996
  %exitcond.not.i.i74.3 = icmp eq i64 %i.dn, %.sroa.7.0.copyload.i.i70
  br i1 %exitcond.not.i.i74.3, label %.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72, !llvm.loop !964

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72, %middle.block207, %vec.epilog.middle.block220, %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !997
  store i64 %i.by, ptr %i.o, align 8, !alias.scope !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dp = add i64 %i.bs, %i.bt                    ; 3 uses
  %i.dq = icmp ugt i64 %i.dp, 65535
  %i.dr = trunc nuw i64 %i.dp to i32
  %i.ds = shl nuw i32 %i.dr, 16
  %.sroa.052.0.insert.insert.1 = select i1 %i.dq, i32 513, i32 %i.ds ; 2 uses
  %i.dt = trunc i32 %.sroa.052.0.insert.insert.1 to i1
  br i1 %i.dt, label %.noexc, label %bb.j, !prof !14

bb.j:                                             ; preds = %.loopexit
  %.sroa.5.0.extract.shift.i58.1 = lshr i32 %.sroa.052.0.insert.insert.1, 16
  %.sroa.5.0.extract.trunc.i59.1 = trunc nuw i32 %.sroa.5.0.extract.shift.i58.1 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 %.sroa.5.0.extract.trunc.i59.1, ptr %i.g, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.du = add i64 %.promoted116120, 4             ; 4 uses
  %i.dv = icmp ugt i64 %.promoted116120, -5
  br i1 %i.dv, label %.noexc75, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  %.not.i63.1 = icmp ugt i64 %i.du, %i.t
  br i1 %.not.i63.1, label %.noexc76, label %.noexc77.1, !prof !14

.noexc77.1:                                       ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.by ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1000
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.bn)
  %.sroa.0.0.copyload.i.i64.1 = load ptr, ptr %i.c, align 8, !noalias !1001 ; 9 uses
  %.sroa.44.0.copyload.i.i66.1 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i65, align 8, !noalias !1001 ; 9 uses
  %.sroa.55.0.copyload.i.i68.1 = load i64, ptr %.sroa.55.0..sroa_idx.i.i67, align 8, !noalias !1001 ; 7 uses
  %.sroa.7.0.copyload.i.i70.1 = load i64, ptr %.sroa.7.0..sroa_idx.i.i69, align 8, !noalias !1001 ; 5 uses
  %i.dy = icmp ult i64 %.sroa.55.0.copyload.i.i68.1, %.sroa.7.0.copyload.i.i70.1
  br i1 %i.dy, label %iter.check179, label %.loopexit.1

iter.check179:                                    ; preds = %.noexc77.1
  %.sroa.44.0.copyload.i.i66.1165 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i66.1 to i64
  %.sroa.0.0.copyload.i.i64.1164 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i64.1 to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i64.1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i66.1) ]
  %i.dz = sub nuw i64 %.sroa.7.0.copyload.i.i70.1, %.sroa.55.0.copyload.i.i68.1 ; 7 uses
  %min.iters.check167 = icmp ult i64 %i.dz, 8
  %i.ea = sub i64 %.sroa.44.0.copyload.i.i66.1165, %.sroa.0.0.copyload.i.i64.1164
  %diff.check166 = icmp ugt i64 %i.ea, -32
  %or.cond284 = select i1 %min.iters.check167, i1 true, i1 %diff.check166
  br i1 %or.cond284, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader, label %vector.main.loop.iter.check168

vector.main.loop.iter.check168:                   ; preds = %iter.check179
  %min.iters.check169 = icmp ult i64 %i.dz, 32
  br i1 %min.iters.check169, label %vec.epilog.ph183, label %vector.ph170

vector.ph170:                                     ; preds = %vector.main.loop.iter.check168
  %i.eb = and i64 %i.dz, 24
  %n.vec171 = and i64 %i.dz, -32                  ; 4 uses
  %i.ec = add i64 %.sroa.55.0.copyload.i.i68.1, %n.vec171
  br label %vector.body172

vector.body172:                                   ; preds = %vector.ph170, %vector.body172
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 2 uses
  %i.ed = add nuw i64 %.sroa.55.0.copyload.i.i68.1, %index173 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64.1, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66.1, i64 %i.ed ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load174 = load <16 x i8>, ptr %i.ef, align 1, !noalias !999
  %wide.load175 = load <16 x i8>, ptr %i.eg, align 1, !noalias !999
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <16 x i8> %wide.load174, ptr %i.ee, align 1, !noalias !999
  store <16 x i8> %wide.load175, ptr %i.eh, align 1, !noalias !999
  %index.next176 = add nuw i64 %index173, 32      ; 2 uses
  %i.ei = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.ei, label %middle.block177, label %vector.body172, !llvm.loop !967

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %i.dz, %n.vec171
  br i1 %cmp.n178, label %.loopexit.1, label %vec.epilog.iter.check180

vec.epilog.iter.check180:                         ; preds = %middle.block177
  %min.epilog.iters.check182 = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check182, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader, label %vec.epilog.ph183, !prof !12

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check168, %vec.epilog.iter.check180
  %vec.epilog.resume.val184 = phi i64 [ %n.vec171, %vec.epilog.iter.check180 ], [ 0, %vector.main.loop.iter.check168 ]
  %n.vec185 = and i64 %i.dz, -8                   ; 3 uses
  %i.ej = add i64 %.sroa.55.0.copyload.i.i68.1, %n.vec185
  br label %vec.epilog.vector.body186

vec.epilog.vector.body186:                        ; preds = %vec.epilog.vector.body186, %vec.epilog.ph183
  %index187 = phi i64 [ %vec.epilog.resume.val184, %vec.epilog.ph183 ], [ %index.next189, %vec.epilog.vector.body186 ] ; 2 uses
  %i.ek = add nuw i64 %.sroa.55.0.copyload.i.i68.1, %index187 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64.1, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66.1, i64 %i.ek
  %wide.load188 = load <8 x i8>, ptr %i.em, align 1, !noalias !999
  store <8 x i8> %wide.load188, ptr %i.el, align 1, !noalias !999
  %index.next189 = add nuw i64 %index187, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next189, %n.vec185
  br i1 %i.en, label %vec.epilog.middle.block190, label %vec.epilog.vector.body186, !llvm.loop !968

vec.epilog.middle.block190:                       ; preds = %vec.epilog.vector.body186
  %cmp.n191 = icmp eq i64 %i.dz, %n.vec185
  br i1 %cmp.n191, label %.loopexit.1, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader: ; preds = %iter.check179, %vec.epilog.iter.check180, %vec.epilog.middle.block190
  %.sroa.55.010.i.i73.1.ph = phi i64 [ %.sroa.55.0.copyload.i.i68.1, %iter.check179 ], [ %i.ec, %vec.epilog.iter.check180 ], [ %i.ej, %vec.epilog.middle.block190 ] ; 4 uses
  %i.eo = sub i64 %.sroa.7.0.copyload.i.i70.1, %.sroa.55.010.i.i73.1.ph
  %xtraiter293 = and i64 %i.eo, 3                 ; 2 uses
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol
  %.sroa.55.010.i.i73.1.prol = phi i64 [ %i.er, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol ], [ %.sroa.55.010.i.i73.1.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader ] ; 3 uses
  %prol.iter295 = phi i64 [ %prol.iter295.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64.1, i64 %.sroa.55.010.i.i73.1.prol
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66.1, i64 %.sroa.55.010.i.i73.1.prol
  %i.er = add nuw i64 %.sroa.55.010.i.i73.1.prol, 1 ; 2 uses
  %i.es = load i8, ptr %i.eq, align 1, !noalias !999, !noundef !5
  store i8 %i.es, ptr %i.ep, align 1, !noalias !999
  %prol.iter295.next = add i64 %prol.iter295, 1   ; 2 uses
  %prol.iter295.cmp.not = icmp eq i64 %prol.iter295.next, %xtraiter293
  br i1 %prol.iter295.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol, !llvm.loop !969

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader
  %.sroa.55.010.i.i73.1.unr = phi i64 [ %.sroa.55.010.i.i73.1.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.preheader ], [ %i.er, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol ]
  %i.et = sub i64 %.sroa.55.010.i.i73.1.ph, %.sroa.7.0.copyload.i.i70.1
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %.loopexit.1, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1
  %.sroa.55.010.i.i73.1 = phi i64 [ %i.fj, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1 ], [ %.sroa.55.010.i.i73.1.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64.1, i64 %.sroa.55.010.i.i73.1
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66.1, i64 %.sroa.55.010.i.i73.1
  %i.ex = add nuw i64 %.sroa.55.010.i.i73.1, 1    ; 2 uses
  %i.ey = load i8, ptr %i.ew, align 1, !noalias !999, !noundef !5
  store i8 %i.ey, ptr %i.ev, align 1, !noalias !999
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64.1, i64 %i.ex
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66.1, i64 %i.ex
  %i.fb = add nuw i64 %.sroa.55.010.i.i73.1, 2    ; 2 uses
  %i.fc = load i8, ptr %i.fa, align 1, !noalias !999, !noundef !5
  store i8 %i.fc, ptr %i.ez, align 1, !noalias !999
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64.1, i64 %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66.1, i64 %i.fb
  %i.ff = add nuw i64 %.sroa.55.010.i.i73.1, 3    ; 2 uses
  %i.fg = load i8, ptr %i.fe, align 1, !noalias !999, !noundef !5
  store i8 %i.fg, ptr %i.fd, align 1, !noalias !999
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64.1, i64 %i.ff
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i66.1, i64 %i.ff
  %i.fj = add nuw i64 %.sroa.55.010.i.i73.1, 4    ; 2 uses
  %i.fk = load i8, ptr %i.fi, align 1, !noalias !999, !noundef !5
  store i8 %i.fk, ptr %i.fh, align 1, !noalias !999
  %exitcond.not.i.i74.1.3 = icmp eq i64 %i.fj, %.sroa.7.0.copyload.i.i70.1
  br i1 %exitcond.not.i.i74.1.3, label %.loopexit.1, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1, !llvm.loop !970

.loopexit.1:                                      ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i72.1, %middle.block177, %vec.epilog.middle.block190, %.noexc77.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1000
  store i64 %i.du, ptr %i.o, align 8, !alias.scope !999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fl = icmp eq ptr %i.bo, %i.bl
  br i1 %i.fl, label %.lr.ph124, label %bb.g

bb.l:                                             ; preds = %.lr.ph124, %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104
  %.sroa.016.0123 = phi ptr [ %0, %.lr.ph124 ], [ %i.fn, %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104 ] ; 5 uses
  %i.fm = phi i64 [ %i.du, %.lr.ph124 ], [ %i.ho, %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.016.0123, i64 48 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.016.0123, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.016.0123, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.fs = add i64 %i.fm, %i.fr                    ; 6 uses
  %i.ft = icmp ult i64 %i.fs, %i.fm
  br i1 %i.ft, label %bb.n, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %.not.i79 = icmp ugt i64 %i.fs, %i.t
  br i1 %.not.i79, label %bb.o, label %bb.p, !prof !14

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #21, !noalias !1003
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21, !noalias !1003
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.fm ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1003
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fr
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.fv, ptr noundef nonnull readonly %i.fp, ptr noundef nonnull readonly %i.fw), !noalias !1002
  %.sroa.0.0.copyload.i.i80 = load ptr, ptr %i.b, align 8, !noalias !1004 ; 9 uses
  %.sroa.44.0.copyload.i.i82 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i81, align 8, !noalias !1004 ; 9 uses
  %.sroa.55.0.copyload.i.i84 = load i64, ptr %.sroa.55.0..sroa_idx.i.i83, align 8, !noalias !1004 ; 7 uses
  %.sroa.7.0.copyload.i.i86 = load i64, ptr %.sroa.7.0..sroa_idx.i.i85, align 8, !noalias !1004 ; 5 uses
  %i.fx = icmp ult i64 %.sroa.55.0.copyload.i.i84, %.sroa.7.0.copyload.i.i86
  br i1 %i.fx, label %iter.check269, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit91

iter.check269:                                    ; preds = %bb.p
  %.sroa.44.0.copyload.i.i82255 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i82 to i64
  %.sroa.0.0.copyload.i.i80254 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i80 to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i80) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i82) ]
  %i.fy = sub nuw i64 %.sroa.7.0.copyload.i.i86, %.sroa.55.0.copyload.i.i84 ; 7 uses
  %min.iters.check257 = icmp ult i64 %i.fy, 8
  %i.fz = sub i64 %.sroa.44.0.copyload.i.i82255, %.sroa.0.0.copyload.i.i80254
  %diff.check256 = icmp ugt i64 %i.fz, -32
  %or.cond285 = select i1 %min.iters.check257, i1 true, i1 %diff.check256
  br i1 %or.cond285, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader, label %vector.main.loop.iter.check258

vector.main.loop.iter.check258:                   ; preds = %iter.check269
  %min.iters.check259 = icmp ult i64 %i.fy, 32
  br i1 %min.iters.check259, label %vec.epilog.ph273, label %vector.ph260

vector.ph260:                                     ; preds = %vector.main.loop.iter.check258
  %i.ga = and i64 %i.fy, 24
  %n.vec261 = and i64 %i.fy, -32                  ; 4 uses
  %i.gb = add i64 %.sroa.55.0.copyload.i.i84, %n.vec261
  br label %vector.body262

vector.body262:                                   ; preds = %vector.ph260, %vector.body262
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next266, %vector.body262 ] ; 2 uses
  %i.gc = add nuw i64 %.sroa.55.0.copyload.i.i84, %index263 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i80, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i82, i64 %i.gc ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load264 = load <16 x i8>, ptr %i.ge, align 1, !noalias !1002
  %wide.load265 = load <16 x i8>, ptr %i.gf, align 1, !noalias !1002
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <16 x i8> %wide.load264, ptr %i.gd, align 1, !noalias !1002
  store <16 x i8> %wide.load265, ptr %i.gg, align 1, !noalias !1002
  %index.next266 = add nuw i64 %index263, 32      ; 2 uses
  %i.gh = icmp eq i64 %index.next266, %n.vec261
  br i1 %i.gh, label %middle.block267, label %vector.body262, !llvm.loop !977

middle.block267:                                  ; preds = %vector.body262
  %cmp.n268 = icmp eq i64 %i.fy, %n.vec261
  br i1 %cmp.n268, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit91, label %vec.epilog.iter.check270

vec.epilog.iter.check270:                         ; preds = %middle.block267
  %min.epilog.iters.check272 = icmp eq i64 %i.ga, 0
  br i1 %min.epilog.iters.check272, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader, label %vec.epilog.ph273, !prof !12

vec.epilog.ph273:                                 ; preds = %vector.main.loop.iter.check258, %vec.epilog.iter.check270
  %vec.epilog.resume.val274 = phi i64 [ %n.vec261, %vec.epilog.iter.check270 ], [ 0, %vector.main.loop.iter.check258 ]
  %n.vec275 = and i64 %i.fy, -8                   ; 3 uses
  %i.gi = add i64 %.sroa.55.0.copyload.i.i84, %n.vec275
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph273
  %index277 = phi i64 [ %vec.epilog.resume.val274, %vec.epilog.ph273 ], [ %index.next279, %vec.epilog.vector.body276 ] ; 2 uses
  %i.gj = add nuw i64 %.sroa.55.0.copyload.i.i84, %index277 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i80, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i82, i64 %i.gj
  %wide.load278 = load <8 x i8>, ptr %i.gl, align 1, !noalias !1002
  store <8 x i8> %wide.load278, ptr %i.gk, align 1, !noalias !1002
  %index.next279 = add nuw i64 %index277, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next279, %n.vec275
  br i1 %i.gm, label %vec.epilog.middle.block280, label %vec.epilog.vector.body276, !llvm.loop !978

vec.epilog.middle.block280:                       ; preds = %vec.epilog.vector.body276
  %cmp.n281 = icmp eq i64 %i.fy, %n.vec275
  br i1 %cmp.n281, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit91, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader: ; preds = %iter.check269, %vec.epilog.iter.check270, %vec.epilog.middle.block280
  %.sroa.55.010.i.i89.ph = phi i64 [ %.sroa.55.0.copyload.i.i84, %iter.check269 ], [ %i.gb, %vec.epilog.iter.check270 ], [ %i.gi, %vec.epilog.middle.block280 ] ; 4 uses
  %i.gn = sub i64 %.sroa.7.0.copyload.i.i86, %.sroa.55.010.i.i89.ph
  %xtraiter296 = and i64 %i.gn, 3                 ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol
  %.sroa.55.010.i.i89.prol = phi i64 [ %i.gq, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol ], [ %.sroa.55.010.i.i89.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader ] ; 3 uses
  %prol.iter298 = phi i64 [ %prol.iter298.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader ]
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i80, i64 %.sroa.55.010.i.i89.prol
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i82, i64 %.sroa.55.010.i.i89.prol
  %i.gq = add nuw i64 %.sroa.55.010.i.i89.prol, 1 ; 2 uses
  %i.gr = load i8, ptr %i.gp, align 1, !noalias !1002, !noundef !5
  store i8 %i.gr, ptr %i.go, align 1, !noalias !1002
  %prol.iter298.next = add i64 %prol.iter298, 1   ; 2 uses
  %prol.iter298.cmp.not = icmp eq i64 %prol.iter298.next, %xtraiter296
  br i1 %prol.iter298.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol, !llvm.loop !979

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader
  %.sroa.55.010.i.i89.unr = phi i64 [ %.sroa.55.010.i.i89.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.preheader ], [ %i.gq, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol ]
  %i.gs = sub i64 %.sroa.55.010.i.i89.ph, %.sroa.7.0.copyload.i.i86
  %i.gt = icmp ugt i64 %i.gs, -4
  br i1 %i.gt, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit91, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88
  %.sroa.55.010.i.i89 = phi i64 [ %i.hi, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88 ], [ %.sroa.55.010.i.i89.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i80, i64 %.sroa.55.010.i.i89
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i82, i64 %.sroa.55.010.i.i89
  %i.gw = add nuw i64 %.sroa.55.010.i.i89, 1      ; 2 uses
  %i.gx = load i8, ptr %i.gv, align 1, !noalias !1002, !noundef !5
  store i8 %i.gx, ptr %i.gu, align 1, !noalias !1002
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i80, i64 %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i82, i64 %i.gw
  %i.ha = add nuw i64 %.sroa.55.010.i.i89, 2      ; 2 uses
  %i.hb = load i8, ptr %i.gz, align 1, !noalias !1002, !noundef !5
  store i8 %i.hb, ptr %i.gy, align 1, !noalias !1002
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i80, i64 %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i82, i64 %i.ha
  %i.he = add nuw i64 %.sroa.55.010.i.i89, 3      ; 2 uses
  %i.hf = load i8, ptr %i.hd, align 1, !noalias !1002, !noundef !5
  store i8 %i.hf, ptr %i.hc, align 1, !noalias !1002
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i80, i64 %i.he
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i82, i64 %i.he
  %i.hi = add nuw i64 %.sroa.55.010.i.i89, 4      ; 2 uses
  %i.hj = load i8, ptr %i.hh, align 1, !noalias !1002, !noundef !5
  store i8 %i.hj, ptr %i.hg, align 1, !noalias !1002
  %exitcond.not.i.i90.3 = icmp eq i64 %i.hi, %.sroa.7.0.copyload.i.i86
  br i1 %exitcond.not.i.i90.3, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit91, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88, !llvm.loop !980

_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit91: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i88, %middle.block267, %vec.epilog.middle.block280, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1003
  store i64 %i.fs, ptr %i.o, align 8, !alias.scope !1002
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.016.0123, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.016.0123, i64 40
  %i.hn = load i64, ptr %i.hm, align 8, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.ho = add i64 %i.hn, %i.fs                    ; 4 uses
  %i.hp = icmp ult i64 %i.ho, %i.fs
  br i1 %i.hp, label %bb.r, label %bb.q, !prof !14

bb.q:                                             ; preds = %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit91
  %.not.i92 = icmp ugt i64 %i.ho, %i.t
  br i1 %.not.i92, label %bb.s, label %bb.t, !prof !14

bb.r:                                             ; preds = %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit91
  call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #21, !noalias !1006
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #21, !noalias !1006
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.fs ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1006
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hn
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hn
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr, ptr noundef nonnull readonly %i.hl, ptr noundef nonnull readonly %i.hs), !noalias !1005
  %.sroa.0.0.copyload.i.i93 = load ptr, ptr %i.a, align 8, !noalias !1007 ; 9 uses
  %.sroa.44.0.copyload.i.i95 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i94, align 8, !noalias !1007 ; 9 uses
  %.sroa.55.0.copyload.i.i97 = load i64, ptr %.sroa.55.0..sroa_idx.i.i96, align 8, !noalias !1007 ; 7 uses
  %.sroa.7.0.copyload.i.i99 = load i64, ptr %.sroa.7.0..sroa_idx.i.i98, align 8, !noalias !1007 ; 5 uses
  %i.ht = icmp ult i64 %.sroa.55.0.copyload.i.i97, %.sroa.7.0.copyload.i.i99
  br i1 %i.ht, label %iter.check239, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104

iter.check239:                                    ; preds = %bb.t
  %.sroa.44.0.copyload.i.i95225 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i95 to i64
  %.sroa.0.0.copyload.i.i93224 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i93 to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i93) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i95) ]
  %i.hu = sub nuw i64 %.sroa.7.0.copyload.i.i99, %.sroa.55.0.copyload.i.i97 ; 7 uses
  %min.iters.check227 = icmp ult i64 %i.hu, 8
  %i.hv = sub i64 %.sroa.44.0.copyload.i.i95225, %.sroa.0.0.copyload.i.i93224
  %diff.check226 = icmp ugt i64 %i.hv, -32
  %or.cond286 = select i1 %min.iters.check227, i1 true, i1 %diff.check226
  br i1 %or.cond286, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader, label %vector.main.loop.iter.check228

vector.main.loop.iter.check228:                   ; preds = %iter.check239
  %min.iters.check229 = icmp ult i64 %i.hu, 32
  br i1 %min.iters.check229, label %vec.epilog.ph243, label %vector.ph230

vector.ph230:                                     ; preds = %vector.main.loop.iter.check228
  %i.hw = and i64 %i.hu, 24
  %n.vec231 = and i64 %i.hu, -32                  ; 4 uses
  %i.hx = add i64 %.sroa.55.0.copyload.i.i97, %n.vec231
  br label %vector.body232

vector.body232:                                   ; preds = %vector.ph230, %vector.body232
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next236, %vector.body232 ] ; 2 uses
  %i.hy = add nuw i64 %.sroa.55.0.copyload.i.i97, %index233 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i93, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i95, i64 %i.hy ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load234 = load <16 x i8>, ptr %i.ia, align 1, !noalias !1005
  %wide.load235 = load <16 x i8>, ptr %i.ib, align 1, !noalias !1005
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <16 x i8> %wide.load234, ptr %i.hz, align 1, !noalias !1005
  store <16 x i8> %wide.load235, ptr %i.ic, align 1, !noalias !1005
  %index.next236 = add nuw i64 %index233, 32      ; 2 uses
  %i.id = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.id, label %middle.block237, label %vector.body232, !llvm.loop !987

middle.block237:                                  ; preds = %vector.body232
  %cmp.n238 = icmp eq i64 %i.hu, %n.vec231
  br i1 %cmp.n238, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104, label %vec.epilog.iter.check240

vec.epilog.iter.check240:                         ; preds = %middle.block237
  %min.epilog.iters.check242 = icmp eq i64 %i.hw, 0
  br i1 %min.epilog.iters.check242, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader, label %vec.epilog.ph243, !prof !12

vec.epilog.ph243:                                 ; preds = %vector.main.loop.iter.check228, %vec.epilog.iter.check240
  %vec.epilog.resume.val244 = phi i64 [ %n.vec231, %vec.epilog.iter.check240 ], [ 0, %vector.main.loop.iter.check228 ]
  %n.vec245 = and i64 %i.hu, -8                   ; 3 uses
  %i.ie = add i64 %.sroa.55.0.copyload.i.i97, %n.vec245
  br label %vec.epilog.vector.body246

vec.epilog.vector.body246:                        ; preds = %vec.epilog.vector.body246, %vec.epilog.ph243
  %index247 = phi i64 [ %vec.epilog.resume.val244, %vec.epilog.ph243 ], [ %index.next249, %vec.epilog.vector.body246 ] ; 2 uses
  %i.if = add nuw i64 %.sroa.55.0.copyload.i.i97, %index247 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i93, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i95, i64 %i.if
  %wide.load248 = load <8 x i8>, ptr %i.ih, align 1, !noalias !1005
  store <8 x i8> %wide.load248, ptr %i.ig, align 1, !noalias !1005
  %index.next249 = add nuw i64 %index247, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next249, %n.vec245
  br i1 %i.ii, label %vec.epilog.middle.block250, label %vec.epilog.vector.body246, !llvm.loop !988

vec.epilog.middle.block250:                       ; preds = %vec.epilog.vector.body246
  %cmp.n251 = icmp eq i64 %i.hu, %n.vec245
  br i1 %cmp.n251, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader: ; preds = %iter.check239, %vec.epilog.iter.check240, %vec.epilog.middle.block250
  %.sroa.55.010.i.i102.ph = phi i64 [ %.sroa.55.0.copyload.i.i97, %iter.check239 ], [ %i.hx, %vec.epilog.iter.check240 ], [ %i.ie, %vec.epilog.middle.block250 ] ; 4 uses
  %i.ij = sub i64 %.sroa.7.0.copyload.i.i99, %.sroa.55.010.i.i102.ph
  %xtraiter299 = and i64 %i.ij, 3                 ; 2 uses
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol
  %.sroa.55.010.i.i102.prol = phi i64 [ %i.im, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol ], [ %.sroa.55.010.i.i102.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader ] ; 3 uses
  %prol.iter301 = phi i64 [ %prol.iter301.next, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol ], [ 0, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i93, i64 %.sroa.55.010.i.i102.prol
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i95, i64 %.sroa.55.010.i.i102.prol
  %i.im = add nuw i64 %.sroa.55.010.i.i102.prol, 1 ; 2 uses
  %i.in = load i8, ptr %i.il, align 1, !noalias !1005, !noundef !5
  store i8 %i.in, ptr %i.ik, align 1, !noalias !1005
  %prol.iter301.next = add i64 %prol.iter301, 1   ; 2 uses
  %prol.iter301.cmp.not = icmp eq i64 %prol.iter301.next, %xtraiter299
  br i1 %prol.iter301.cmp.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol, !llvm.loop !989

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader
  %.sroa.55.010.i.i102.unr = phi i64 [ %.sroa.55.010.i.i102.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.preheader ], [ %i.im, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol ]
  %i.io = sub i64 %.sroa.55.010.i.i102.ph, %.sroa.7.0.copyload.i.i99
  %i.ip = icmp ugt i64 %i.io, -4
  br i1 %i.ip, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101
  %.sroa.55.010.i.i102 = phi i64 [ %i.je, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101 ], [ %.sroa.55.010.i.i102.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol.loopexit ] ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i93, i64 %.sroa.55.010.i.i102
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i95, i64 %.sroa.55.010.i.i102
  %i.is = add nuw i64 %.sroa.55.010.i.i102, 1     ; 2 uses
  %i.it = load i8, ptr %i.ir, align 1, !noalias !1005, !noundef !5
  store i8 %i.it, ptr %i.iq, align 1, !noalias !1005
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i93, i64 %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i95, i64 %i.is
  %i.iw = add nuw i64 %.sroa.55.010.i.i102, 2     ; 2 uses
  %i.ix = load i8, ptr %i.iv, align 1, !noalias !1005, !noundef !5
  store i8 %i.ix, ptr %i.iu, align 1, !noalias !1005
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i93, i64 %i.iw
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i95, i64 %i.iw
  %i.ja = add nuw i64 %.sroa.55.010.i.i102, 3     ; 2 uses
  %i.jb = load i8, ptr %i.iz, align 1, !noalias !1005, !noundef !5
  store i8 %i.jb, ptr %i.iy, align 1, !noalias !1005
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i93, i64 %i.ja
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i95, i64 %i.ja
  %i.je = add nuw i64 %.sroa.55.010.i.i102, 4     ; 2 uses
  %i.jf = load i8, ptr %i.jd, align 1, !noalias !1005, !noundef !5
  store i8 %i.jf, ptr %i.jc, align 1, !noalias !1005
  %exitcond.not.i.i103.3 = icmp eq i64 %i.je, %.sroa.7.0.copyload.i.i99
  br i1 %exitcond.not.i.i103.3, label %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101, !llvm.loop !990

_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_4IterhEEINtB5_7ZipImplBW_B27_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.i101, %middle.block237, %vec.epilog.middle.block250, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1006
  store i64 %i.ho, ptr %i.o, align 8, !alias.scope !1005
  %i.jg = icmp eq ptr %i.fn, %i.bl
  br i1 %i.jg, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit104, %_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB4_18CompactFieldWriter5write.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 2, 65536) i64 @_RNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata25user_metadata_encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 192153584101141163) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = icmp samesign ugt i64 %1, 65535
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1012
  store i8 2, ptr %i.a, align 1, !noalias !1012
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #23
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  %i.c = shl nuw nsw i64 %1, 2
  %i.d = or disjoint i64 %i.c, 2                  ; 2 uses
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTNtNtCs6i54tJFfzR_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1D_8adapters3map8map_foldRBQ_jjNCNvNtNtCs5XgW7KoffLW_12opendal_core5types8metadata25user_metadata_encoded_len0NCINvXsK_NtB1B_5accumjNtB4n_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB35_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6expectCs5XgW7KoffLW_12opendal_core.exit
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.f = icmp samesign ult i64 %1, 4
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %1, 65532
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ai, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ah, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %.val13.i = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp sgt i64 %.val13.i, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i64 %.val.i, %.sroa.02.0.i
  %i.m = add i64 %i.l, %.val13.i
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 64
  %.val.i.1 = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 88
  %.val13.i.1 = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.q = icmp sgt i64 %.val.i.1, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp sgt i64 %.val13.i.1, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add i64 %.val.i.1, %i.m
  %i.t = add i64 %i.s, %.val13.i.1
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 112
  %.val.i.2 = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 136
  %.val13.i.2 = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.x = icmp sgt i64 %.val.i.2, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp sgt i64 %.val13.i.2, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.2, %i.t
  %i.aa = add i64 %i.z, %.val13.i.2
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 160
  %.val.i.3 = load i64, ptr %i.ac, align 8, !noundef !5 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 184
  %.val13.i.3 = load i64, ptr %i.ad, align 8, !noundef !5 ; 2 uses
  %i.ae = icmp sgt i64 %.val.i.3, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp sgt i64 %.val13.i.3, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %.val.i.3, %i.aa
  %i.ah = add i64 %i.ag, %.val13.i.3              ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.04.0.i, 4        ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_7
