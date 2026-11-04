Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.6?download=true
inline.NumInlined: 50
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIterator4next:bb.a
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !72, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = add nsw i64 %i.b, -1                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !72, !captures !8
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !72
  %i.g = load i8, ptr %i.d, align 1, !noalias !73, !noundef !4 ; 4 uses
  %i.h = and i8 %i.g, -16
  %i.i = and i8 %i.g, 15                          ; 3 uses
  %i.j = lshr i8 %i.g, 4                          ; 2 uses
  switch i8 %i.j, label %bb.x [
    i8 0, label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i64
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !71 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.x, label %bb.o

bb.e:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.i, 0
  %i.p = or i8 %i.g, -16
  %narrow.i = select i1 %i.o, i8 0, i8 %i.p
  %.sroa.014.0.i = sext i8 %narrow.i to i32
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.q = getelementptr i8, ptr %i.d, i64 %i.b
  %i.r = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !75, !nonnull !4, !noundef !4
  %i.s = tail call { i64, ptr } %i.r(i8 noundef 0, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.q), !noalias !75, !inline_history !70 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.p, label %bb.x

bb.g:                                             ; preds = %bb.b
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.h:                                             ; preds = %bb.b
  %i.v = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !71 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.x, label %bb.q

bb.i:                                             ; preds = %bb.b
  %i.y = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !71 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.x, label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.ab = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !71 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.x, label %bb.s

bb.k:                                             ; preds = %bb.b
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.l:                                             ; preds = %bb.b
  %i.ae = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !71 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.x, label %bb.t

bb.m:                                             ; preds = %bb.b
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.n:                                             ; preds = %bb.b
  %i.ah = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !71 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %bb.x, label %bb.u

bb.o:                                             ; preds = %bb.d
  %i.al = extractvalue { i64, i64 } %i.l, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.p:                                             ; preds = %bb.f
  %i.am = extractvalue { i64, ptr } %i.s, 1
  %i.an = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.am, ptr noundef nonnull readonly %i.f), !noalias !76 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.an, %i.e
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.an
  %i.ap = xor i64 %i.an, -1
  %i.aq = add i64 %i.e, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ar, ptr %1, align 8, !alias.scope !77
  store i64 %i.aq, ptr %i.a, align 8, !alias.scope !77
  %i.as = ptrtoint ptr %i.f to i64
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.q:                                             ; preds = %bb.h
  %i.at = extractvalue { i64, i64 } %i.v, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.r:                                             ; preds = %bb.i
  %i.au = extractvalue { i64, i64 } %i.y, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.s:                                             ; preds = %bb.j
  %i.av = extractvalue { i64, i64 } %i.ab, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.t:                                             ; preds = %bb.l
  %i.aw = extractvalue { i64, i64 } %i.ae, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

bb.u:                                             ; preds = %bb.n
  %i.ax = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !71 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = extractvalue { i64, i64 } %i.ax, 1
  br label %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit

_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.k, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.v
  %.sroa.27.0.i = phi i64 [ %i.ba, %bb.v ], [ undef, %bb.c ], [ undef, %bb.o ], [ undef, %bb.e ], [ %i.an, %bb.p ], [ undef, %bb.g ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.k ], [ undef, %bb.t ], [ undef, %bb.m ], [ undef, %bb.b ]
  %.sroa.19.0.i = phi i64 [ %i.aj, %bb.v ], [ %i.k, %bb.c ], [ %i.al, %bb.o ], [ undef, %bb.e ], [ %i.as, %bb.p ], [ undef, %bb.g ], [ %i.at, %bb.q ], [ %i.au, %bb.r ], [ %i.av, %bb.s ], [ undef, %bb.k ], [ %i.aw, %bb.t ], [ undef, %bb.m ], [ undef, %bb.b ]
  %.sroa.185.0.i = phi i32 [ undef, %bb.v ], [ undef, %bb.c ], [ undef, %bb.o ], [ %.sroa.014.0.i, %bb.e ], [ undef, %bb.p ], [ undef, %bb.g ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.k ], [ undef, %bb.t ], [ undef, %bb.m ], [ undef, %bb.b ]
  %.sroa.04.0.i = phi i8 [ 11, %bb.v ], [ 1, %bb.c ], [ 1, %bb.o ], [ 2, %bb.e ], [ 3, %bb.p ], [ 4, %bb.g ], [ 5, %bb.q ], [ 6, %bb.r ], [ 7, %bb.s ], [ 8, %bb.k ], [ 9, %bb.t ], [ 10, %bb.m ], [ %i.j, %bb.b ]
  store i8 %i.h, ptr %0, align 8, !alias.scope !71
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.04.0.i, ptr %.sroa.589.0..sroa_idx.i, align 8, !alias.scope !71
  %.sroa.690.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.i, ptr %.sroa.690.0..sroa_idx.i, align 1, !alias.scope !71
  %.sroa.892.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.185.0.i, ptr %.sroa.892.0..sroa_idx.i, align 4, !alias.scope !71
  %.sroa.993.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.0.i, ptr %.sroa.993.0..sroa_idx.i, align 8, !alias.scope !71
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.27.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !71
  br label %bb.y

bb.w:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.n, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.sink3 = phi ptr [ @4, %bb.n ], [ @5, %bb.b ], [ @4, %bb.d ], [ @4, %bb.f ], [ @4, %bb.h ], [ @4, %bb.i ], [ @4, %bb.j ], [ @4, %bb.l ], [ @4, %bb.u ]
  %.sink = phi i64 [ 29, %bb.n ], [ 30, %bb.b ], [ 29, %bb.d ], [ 29, %bb.f ], [ 29, %bb.h ], [ 29, %bb.i ], [ 29, %bb.j ], [ 29, %bb.l ], [ 29, %bb.u ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink3, ptr %i.bb, align 8, !alias.scope !71
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %i.bc, align 8, !alias.scope !71
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -2, ptr %i.bd, align 8, !alias.scope !71
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  store i64 0, ptr %i.a, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_13BindOperation5parse.exit, %bb.x, %bb.w
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !83, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.preheader.i, label %tailrecurse._crit_edge.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.757.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.858.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.959.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 69 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 70 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 73
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  call void @_RNvMs4_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !82, !inline_history !81
  %i.t = load i8, ptr %i.e, align 8, !range !9, !noalias !84, !noundef !4 ; 2 uses
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %.preheader._crit_edge.i, label %.lr.ph.i

tailrecurse._crit_edge.sink.split.i:              ; preds = %bb.r, %bb.m, %bb.l, %bb.k
  %.sink.i = phi i64 [ %i.ai, %bb.k ], [ %i.al, %bb.l ], [ %i.aq, %bb.m ], [ %i.ax, %bb.r ]
  %.lcssa.ph.i = phi i64 [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ %i.ab, %bb.r ]
  store i64 %.sink.i, ptr %.sroa.634.0..sroa_idx.i, align 8, !alias.scope !83
  br label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse._crit_edge.sink.split.i, %bb.a
  %.lcssa.i = phi i64 [ %i.c, %bb.a ], [ %.lcssa.ph.i, %tailrecurse._crit_edge.sink.split.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.w = load i8, ptr %i.v, align 2, !range !7, !alias.scope !83, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.s, label %.loopexit

.preheader._crit_edge.i:                          ; preds = %.backedge.i, %.preheader.i
  %i.y = load ptr, ptr %.sroa.858.0..sroa_idx.i, align 8, !noalias !84, !nonnull !4, !noundef !4
  %i.z = load i64, ptr %.sroa.959.0..sroa_idx.i, align 8, !noalias !84, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  br label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %.backedge.i
  %i.aa = phi i8 [ %i.as, %.backedge.i ], [ %i.t, %.preheader.i ]
  %.sroa.555.0.copyload.i = load i8, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !84 ; 4 uses
  %.sroa.757.0.copyload.i = load i32, ptr %.sroa.757.0..sroa_idx.i, align 4, !noalias !84
  %.sroa.858.0.copyload.i = load ptr, ptr %.sroa.858.0..sroa_idx.i, align 8, !noalias !84 ; 4 uses
  %.sroa.959.0.copyload.i = load i64, ptr %.sroa.959.0..sroa_idx.i, align 8, !noalias !84 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  %i.ab = ptrtoint ptr %.sroa.858.0.copyload.i to i64 ; 6 uses
  switch i8 %i.aa, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
  ]

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 16, i1 false), !alias.scope !82
  br label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner.exit

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = load i8, ptr %i.r, align 1, !range !7, !alias.scope !83, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.p, label %bb.o

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = icmp ugt ptr %.sroa.858.0.copyload.i, inttoptr (i64 2147483647 to ptr)
  br i1 %i.ae, label %.loopexit, label %bb.q

bb.e:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.p, align 4, !alias.scope !83
  store i32 %.sroa.757.0.copyload.i, ptr %i.q, align 8, !alias.scope !83
  br label %.backedge.i

bb.f:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.l, align 1, !alias.scope !83
  store i8 %.sroa.555.0.copyload.i, ptr %i.n, align 2, !alias.scope !83
  store ptr %.sroa.858.0.copyload.i, ptr %i.m, align 8, !alias.scope !83, !captures !8
  store i64 %.sroa.959.0.copyload.i, ptr %i.o, align 8, !alias.scope !83
  br label %.backedge.i

bb.g:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.j, align 1, !alias.scope !83
  store i8 %.sroa.555.0.copyload.i, ptr %i.k, align 1, !alias.scope !83
  br label %.backedge.i

bb.h:                                             ; preds = %.lr.ph.i
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !83
  br label %.backedge.i

bb.i:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.g, align 2, !alias.scope !83
  store i8 %.sroa.555.0.copyload.i, ptr %i.h, align 4, !alias.scope !83
  store i64 %i.ab, ptr %i.f, align 8, !alias.scope !83
  br label %.backedge.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.af = load i64, ptr %i.f, align 8, !alias.scope !83, !noundef !4
  %i.ag = add i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !83
  br label %.backedge.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.ah = load i8, ptr %i.s, align 8, !alias.scope !83, !noundef !4
  %i.ai = zext i8 %i.ah to i64
  br label %tailrecurse._crit_edge.sink.split.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = load i8, ptr %i.s, align 8, !alias.scope !83, !noundef !4
  %i.ak = zext i8 %i.aj to i64
  %i.al = add i64 %i.ak, %i.ab
  br label %tailrecurse._crit_edge.sink.split.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.am = load i8, ptr %i.s, align 8, !alias.scope !83, !noundef !4
  %i.an = zext i8 %i.am to i64
  %i.ao = zext i8 %.sroa.555.0.copyload.i to i64
  %i.ap = add nuw nsw i64 %i.ao, 1
  %i.aq = mul nuw nsw i64 %i.ap, %i.an
  br label %tailrecurse._crit_edge.sink.split.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.ar = icmp eq ptr %.sroa.858.0.copyload.i, null
  br i1 %i.ar, label %.backedge.i, label %bb.r

bb.o:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 16, i1 false), !alias.scope !82
  br label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner.exit

bb.p:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !83
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8, !alias.scope !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.o, i8 0, i64 29, i1 false), !alias.scope !83
  store i8 1, ptr %i.k, align 1, !alias.scope !83
  store i8 0, ptr %i.n, align 2, !alias.scope !83
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.g, align 2, !alias.scope !83
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.q, %bb.p, %bb.n, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  call void @_RNvMs4_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !82, !inline_history !81
  %i.as = load i8, ptr %i.e, align 8, !range !9, !noalias !84, !noundef !4 ; 2 uses
  %i.at = icmp eq i8 %i.as, -2
  br i1 %i.at, label %.preheader._crit_edge.i, label %.lr.ph.i

bb.q:                                             ; preds = %bb.d
  %i.au = trunc nuw nsw i64 %i.ab to i32
  store i8 1, ptr %i.p, align 4, !alias.scope !83
  store i32 %i.au, ptr %i.q, align 8, !alias.scope !83
  br label %.backedge.i

bb.r:                                             ; preds = %bb.n
  %i.av = load i8, ptr %i.s, align 8, !alias.scope !83, !noundef !4
  %i.aw = zext i8 %i.av to i64
  %i.ax = add i64 %.sroa.959.0.copyload.i, %i.aw
  br label %tailrecurse._crit_edge.sink.split.i

bb.s:                                             ; preds = %tailrecurse._crit_edge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.az = load i8, ptr %i.ay, align 1, !range !7, !alias.scope !83, !noundef !4
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bc = load i8, ptr %i.bb, align 4, !range !7, !alias.scope !83, !noundef !4
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.bf = load i8, ptr %i.be, align 1, !range !7, !alias.scope !83, !noundef !4
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !alias.scope !84
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !83, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !83, !noundef !4
  %i.bn = add i64 %i.bm, %i.bk
  store i64 %i.bn, ptr %i.bj, align 8, !alias.scope !83
  %i.bo = add i64 %.lcssa.i, -1
  store i64 %i.bo, ptr %i.b, align 8, !alias.scope !83
  store i64 0, ptr %0, align 8, !alias.scope !82
  br label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner.exit

_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner.exit: ; preds = %bb.v, %bb.o, %bb.b, %.loopexit
  ret void

.loopexit:                                        ; preds = %bb.d, %bb.u, %bb.t, %bb.s, %tailrecurse._crit_edge.i, %.preheader._crit_edge.i
  %.sink77 = phi ptr [ %i.y, %.preheader._crit_edge.i ], [ @9, %bb.t ], [ @10, %bb.u ], [ @7, %tailrecurse._crit_edge.i ], [ @8, %bb.s ], [ @6, %bb.d ]
  %.sink = phi i64 [ %i.z, %.preheader._crit_edge.i ], [ 25, %bb.t ], [ 26, %bb.u ], [ 38, %tailrecurse._crit_edge.i ], [ 24, %bb.s ], [ 27, %bb.d ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink77, ptr %i.bp, align 8, !alias.scope !82
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.bq, align 8, !alias.scope !82
  store i64 1, ptr %0, align 8, !alias.scope !82
  store i64 0, ptr %i.b, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.br, align 8
  br label %_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_12BindIterator10next_inner.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB4_23RebaseOperationIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((8, 9)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !89, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = add nsw i64 %i.b, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.f, ptr %1, align 8, !alias.scope !89, !captures !8
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !89
  %i.g = load i8, ptr %i.d, align 1, !noalias !90, !noundef !4 ; 3 uses
  %i.h = and i8 %i.g, -16
  %i.i = and i8 %i.g, 15                          ; 2 uses
  %i.j = lshr i8 %i.g, 4                          ; 4 uses
  switch i8 %i.j, label %bb.p [
    i8 0, label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit
    i8 1, label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit
    i8 5, label %bb.e
    i8 6, label %bb.f
    i8 7, label %bb.g
    i8 8, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !88 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.p, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !88 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.p, label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.q = zext nneg i8 %i.i to i64
  br label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit

bb.f:                                             ; preds = %bb.b
  %i.r = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !88 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.p, label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.u = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !88 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.p, label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.x = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !88 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.p, label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.ab = extractvalue { i64, i64 } %i.k, 1
  br label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit

bb.j:                                             ; preds = %bb.d
  %i.ac = extractvalue { i64, i64 } %i.n, 1
  br label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = extractvalue { i64, i64 } %i.r, 1
  br label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit

bb.l:                                             ; preds = %bb.g
  %i.ae = extractvalue { i64, i64 } %i.u, 1
  br label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit

bb.m:                                             ; preds = %bb.h
  %i.af = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !88 ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = extractvalue { i64, i64 } %i.af, 1
  br label %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit

_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.e, %bb.i, %bb.j, %bb.k, %bb.l, %bb.n
  %.sroa.19.0.i = phi i64 [ %i.ai, %bb.n ], [ undef, %bb.b ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.b ], [ undef, %bb.e ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.b ]
  %.sroa.135.0.i = phi i64 [ %i.z, %bb.n ], [ undef, %bb.b ], [ %i.ab, %bb.i ], [ %i.ac, %bb.j ], [ undef, %bb.b ], [ %i.q, %bb.e ], [ %i.ad, %bb.k ], [ %i.ae, %bb.l ], [ undef, %bb.b ]
  %.sroa.04.0.i = phi i8 [ 7, %bb.n ], [ %i.j, %bb.b ], [ 2, %bb.i ], [ 3, %bb.j ], [ %i.j, %bb.b ], [ 5, %bb.e ], [ 5, %bb.k ], [ 6, %bb.l ], [ %i.j, %bb.b ]
  store i8 %i.h, ptr %0, align 8, !alias.scope !88
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.04.0.i, ptr %.sroa.565.0..sroa_idx.i, align 8, !alias.scope !88
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.i, ptr %.sroa.666.0..sroa_idx.i, align 1, !alias.scope !88
  %.sroa.868.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.135.0.i, ptr %.sroa.868.0..sroa_idx.i, align 8, !alias.scope !88
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.19.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !88
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sink3 = phi ptr [ @0, %bb.h ], [ @1, %bb.b ], [ @0, %bb.c ], [ @0, %bb.d ], [ @0, %bb.f ], [ @0, %bb.g ], [ @0, %bb.m ]
  %.sink = phi i64 [ 31, %bb.h ], [ 32, %bb.b ], [ 31, %bb.c ], [ 31, %bb.d ], [ 31, %bb.f ], [ 31, %bb.g ], [ 31, %bb.m ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink3, ptr %i.aj, align 8, !alias.scope !88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %i.ak, align 8, !alias.scope !88
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -2, ptr %i.al, align 8, !alias.scope !88
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  store i64 0, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_15RebaseOperation5parse.exit, %bb.p, %bb.o
  ret void
end_hunk_0
