Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.3?download=true
inline.NumInlined: 77
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho6importNtB5_19MachOImportDyldInfo4next:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.d:                                             ; preds = %bb.b
  %.sroa.5107.0.copyload = load i8, ptr %.sroa.5107.0..sroa_idx, align 1
  %.sroa.7109.0.copyload = load i32, ptr %.sroa.7109.0..sroa_idx, align 4
  %.sroa.8110.0.copyload = load ptr, ptr %.sroa.8110.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9111.0.copyload = load i64, ptr %.sroa.9111.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = ptrtoint ptr %.sroa.8110.0.copyload to i64
  switch i8 %i.n, label %default.unreachable [
    i8 -1, label %bb.e
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %.backedge
    i8 5, label %.backedge
    i8 6, label %.backedge
    i8 7, label %.backedge
    i8 8, label %bb.j
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 11, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 2 uses
  store i64 %i.v, ptr %i.b, align 8
  %i.w = icmp eq i64 %i.v, 2
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %i.k, align 8
  %i.y = icmp eq i64 %i.u, 0
  %. = zext i1 %i.y to i32
  store i32 %., ptr %i.i, align 8
  store i32 -3, ptr %i.j, align 4
  store ptr null, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.backedge

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.k, align 8, !range !106, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.m, label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ugt ptr %.sroa.8110.0.copyload, inttoptr (i64 2147483647 to ptr)
  br i1 %i.ab, label %bb.o, label %bb.n

bb.h:                                             ; preds = %bb.d
  store i32 1, ptr %i.i, align 8
  store i32 %.sroa.7109.0.copyload, ptr %i.j, align 4
  br label %.backedge

bb.i:                                             ; preds = %bb.d
  store i8 %.sroa.5107.0.copyload, ptr %i.h, align 8
  store ptr %.sroa.8110.0.copyload, ptr %.sroa.566.0..sroa_idx, align 8
  store i64 %.sroa.9111.0.copyload, ptr %.sroa.669.0..sroa_idx, align 8
  store i8 1, ptr %i.g, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.e, %bb.h, %bb.i, %bb.k, %bb.m, %bb.n, %bb.j, %bb.s, %bb.d, %bb.d, %bb.d, %bb.d
  %i.ac = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 3
  br i1 %i.ad, label %bb.b, label %._crit_edge

bb.j:                                             ; preds = %bb.d, %bb.d, %bb.d
  %.old1 = load i8, ptr %i.g, align 1, !range !106, !noundef !5
  %.old2 = trunc nuw i8 %.old1 to i1
  br i1 %.old2, label %bb.p, label %.backedge

bb.k:                                             ; preds = %bb.d
  %i.ae = icmp ne ptr %.sroa.8110.0.copyload, null
  %i.af = load i8, ptr %i.g, align 1, !range !106
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.p, label %.backedge

bb.l:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8
  %i.aj = icmp eq i64 %i.ai, 2
  %i.ak = zext i1 %i.aj to i8
  store i8 %i.ak, ptr %i.k, align 8
  %i.al = icmp eq i64 %i.ah, 0
  %.131 = zext i1 %i.al to i32
  store i32 %.131, ptr %i.i, align 8
  store i32 -3, ptr %i.j, align 4
  store ptr null, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.backedge

bb.m:                                             ; preds = %bb.f
  store i32 0, ptr %i.i, align 8
  store ptr null, ptr %.sroa.566.0..sroa_idx, align 8
  br label %.backedge

bb.n:                                             ; preds = %bb.g
  %i.am = trunc nuw nsw i64 %i.t to i32
  store i32 1, ptr %i.i, align 8
  store i32 %i.am, ptr %i.j, align 4
  br label %.backedge

bb.o:                                             ; preds = %bb.g
  store ptr @10, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.p:                                             ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.g, align 1
  %.sroa.566.0.copyload = load ptr, ptr %.sroa.566.0..sroa_idx, align 8 ; 2 uses
  %.sroa.669.0.copyload = load i64, ptr %.sroa.669.0..sroa_idx, align 8
  %.not129 = icmp eq ptr %.sroa.566.0.copyload, null
  br i1 %.not129, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load i32, ptr %i.i, align 8, !range !9, !noundef !5
  %i.ao = trunc nuw i32 %i.an to i1
  br i1 %i.ao, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  store ptr @11, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.s:                                             ; preds = %bb.q
  %i.ap = load i32, ptr %i.j, align 4             ; 4 uses
  %.not130 = icmp eq i32 %i.ap, 0
  br i1 %.not130, label %.backedge, label %bb.u

bb.t:                                             ; preds = %bb.q
  store ptr @12, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.u:                                             ; preds = %bb.s
  %.sroa.064.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.551.0.extract.trunc.le = trunc i64 %.sroa.064.0.copyload to i8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = icmp slt i32 %i.ap, 1
  br i1 %i.as, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.w, label %_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library.exit

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !107, !noalias !108, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !107, !noalias !108, !noundef !5
  br label %bb.x

_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library.exit: ; preds = %bb.v
  store ptr @18, ptr %0, align 8
  br label %._crit_edge.sink.split

bb.x:                                             ; preds = %bb.u, %bb.w
  %.sink8.i.ph = phi ptr [ %i.ay, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.u ]
  %.sink.i.ph = phi i64 [ %i.ba, %bb.w ], [ 0, %bb.u ]
  %i.bb = and i8 %.sroa.551.0.extract.trunc.le, 1
  store i8 3, ptr %0, align 8
  %.sroa.087.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.551.0.extract.trunc.le, ptr %.sroa.087.sroa.5.0..sroa_idx, align 1
  %.sroa.087.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ap, ptr %.sroa.087.sroa.7.0..sroa_idx, align 4
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink8.i.ph, ptr %.sroa.588.0..sroa_idx, align 8
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink.i.ph, ptr %.sroa.689.0..sroa_idx, align 8
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.566.0.copyload, ptr %.sroa.790.0..sroa_idx, align 8
  br label %._crit_edge.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_15AttributeReader11read_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !113, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !113, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !114, !nonnull !5, !noundef !5
  %i.f = tail call { i64, ptr } %i.e(i8 noundef 0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.d), !noalias !114, !inline_history !0 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.f, 1
  %i.j = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.i, ptr noundef nonnull readonly %i.a), !noalias !113 ; 4 uses
  %.not.i.i = icmp ult i64 %i.j, %i.c
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %storemerge.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %i.j)
  %i.l = add i64 %storemerge.i.i, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink9 = phi ptr [ %i.m, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sink8 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %.sink7 = phi ptr [ %i.a, %bb.b ], [ @13, %bb.a ]
  %.sink = phi i64 [ %i.j, %bb.b ], [ 34, %bb.a ]
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  store ptr %.sink9, ptr %1, align 8, !alias.scope !113
  store i64 %.sink8, ptr %i.b, align 8, !alias.scope !113
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink7, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_15AttributeReader12read_integer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.a, 1
  %spec.select = select i1 %i.c, ptr @14, ptr null
  %spec.select3 = select i1 %i.c, i64 35, i64 %i.d
  store ptr %spec.select, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select3, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_15AttributeReader8read_tag(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @15, ptr %i.g, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.d, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sink7 = phi i64 [ 16, %bb.c ], [ 16, %bb.d ], [ 8, %bb.a ]
  %.sink = phi i64 [ 25, %bb.c ], [ %i.h, %bb.d ], [ 0, %bb.a ]
  %storemerge5 = phi i64 [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7
  store i64 %.sink, ptr %i.j, align 8
  store i64 %storemerge5, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !118 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !119, !noalias !118
  store i64 0, ptr %i.a, align 8, !alias.scope !119, !noalias !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !118, !noalias !119
  br label %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !119, !noalias !118, !noundef !5 ; 2 uses
  %i.k = add i64 %i.j, %i.f                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.j
  br i1 %i.l, label %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !119, !noalias !118
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8, !alias.scope !118, !noalias !119
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.n, align 8, !alias.scope !118, !noalias !119
  store i64 0, ptr %0, align 8, !alias.scope !118, !noalias !119
  br label %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit.thread

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit.thread

_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit: ; preds = %bb.e, %bb.b
  %.sink4 = phi ptr [ @17, %bb.b ], [ @16, %bb.e ]
  %.sink = phi i64 [ 37, %bb.b ], [ 38, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink4, ptr %i.o, align 8, !alias.scope !118, !noalias !119
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.p, align 8, !alias.scope !118, !noalias !119
  store i64 1, ptr %0, align 8, !alias.scope !118, !noalias !119
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8
  store i64 0, ptr %i.a, align 8
  br label %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit.thread

_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit.thread: ; preds = %bb.f, %bb.d, %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse.exit, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %2, -2
  %or.cond.i = icmp ult i32 %i.a, 35
  br i1 %or.cond.i, label %.split.us, label %.loopexit, !prof !120

.thread:                                          ; preds = %bb.e
  %i.b = add i32 %2, -2
  %or.cond.i32 = icmp ult i32 %i.b, 35
  br i1 %or.cond.i32, label %.split.us, label %bb.f, !prof !120

.split.us:                                        ; preds = %.thread, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = icmp samesign ugt i32 %2, 10
  %i.f = icmp samesign eq i64 %1, 0               ; 2 uses
  br i1 %i.e, label %.split.us.split.preheader, label %.split.us.split.us.preheader

.split.us.split.us.preheader:                     ; preds = %.split.us
  br i1 %i.f, label %.loopexit, label %.lr.ph

.split.us.split.preheader:                        ; preds = %.split.us
  br i1 %i.f, label %.loopexit, label %.lr.ph49

.split.us.split.us:                               ; preds = %bb.c
  %i.g = icmp eq ptr %i.h, %i.c
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us.split.us.preheader, %.split.us.split.us
  %.sroa.01.0.us.us38 = phi ptr [ %i.h, %.split.us.split.us ], [ %0, %.split.us.split.us.preheader ] ; 2 uses
  %.sroa.014.0.us.us37 = phi i64 [ %i.r, %.split.us.split.us ], [ 0, %.split.us.split.us.preheader ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.us38, i64 1 ; 2 uses
  %i.i = load i8, ptr %.sroa.01.0.us.us38, align 1, !noundef !5 ; 2 uses
  %i.j = icmp eq i8 %i.i, 32
  br i1 %i.j, label %.loopexit, label %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us

_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us: ; preds = %.lr.ph
  %i.k = zext i8 %i.i to i32
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %i.m = icmp ult i32 %i.l, %2
  br i1 %i.m, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.014.0.us.us37, i64 %i.d) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 2 uses
  %i.q = zext nneg i32 %i.l to i64
  %i.r = add i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %or.cond.us.us = select i1 %i.o, i1 true, i1 %i.s, !prof !6
  br i1 %or.cond.us.us, label %.loopexit, label %.split.us.split.us, !prof !6

.split.us.split:                                  ; preds = %bb.d
  %i.t = icmp eq ptr %i.u, %i.c
  br i1 %i.t, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.split.us.split.preheader, %.split.us.split
  %.sroa.01.0.us48 = phi ptr [ %i.u, %.split.us.split ], [ %0, %.split.us.split.preheader ] ; 2 uses
  %.sroa.014.0.us47 = phi i64 [ %i.ai, %.split.us.split ], [ 0, %.split.us.split.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us48, i64 1 ; 2 uses
  %i.v = load i8, ptr %.sroa.01.0.us48, align 1, !noundef !5 ; 3 uses
  %i.w = icmp eq i8 %i.v, 32
  br i1 %i.w, label %.loopexit, label %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us
end_hunk_0
begin_hunk_1_@_RNvNtNtCseHTIzroA4w0_6object4read7archive24parse_sysv_extended_name:bb.a
  %i.q = icmp eq i8 %i.p, 32
  br i1 %i.q, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread, label %.split.us.i

_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit: ; preds = %.lr.ph, %.split.us.split.us.i, %.split.us.i
  %.sroa.014.0.us.us.i.lcssa = phi i64 [ 0, %.split.us.i ], [ %.sroa.014.0.us.us.i48, %.lr.ph ], [ %i.n, %.split.us.split.us.i ] ; 3 uses
  %i.r = icmp ult i64 %3, %.sroa.014.0.us.us.i.lcssa
  br i1 %i.r, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.014.0.us.us.i.lcssa ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.u = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !127, !nonnull !5, !noundef !5
  %i.v = tail call { i64, ptr } %i.u(i8 noundef 10, i8 noundef 0, ptr noundef nonnull readonly %i.s, ptr noundef nonnull readonly %i.t), !noalias !127, !inline_history !125 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.e, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = sub nuw nsw i64 %3, %.sroa.014.0.us.us.i.lcssa
  %i.z = extractvalue { i64, ptr } %i.v, 1
  %i.aa = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.z, ptr noundef nonnull readonly %i.s) ; 5 uses
  %.not.i = icmp ult i64 %i.aa, %i.y
  tail call void @llvm.assume(i1 %.not.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !5
  %i.ad = icmp eq i8 %i.ac, 10
  br i1 %i.ad, label %bb.f, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = icmp eq i8 %i.ah, 47
  %spec.select39 = select i1 %i.ai, ptr %i.s, ptr null
  br label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread

_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread: ; preds = %bb.b, %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us.i, %bb.d, %bb.g, %bb.c, %bb.e, %bb.f, %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit
  %.sroa.7.0 = phi i64 [ undef, %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit ], [ undef, %bb.c ], [ undef, %bb.f ], [ undef, %bb.d ], [ %i.aa, %bb.e ], [ %i.af, %bb.g ], [ undef, %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us.i ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.d ], [ %i.s, %bb.e ], [ %spec.select39, %bb.g ], [ null, %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us.i ], [ null, %bb.b ]
  %i.aj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ak = insertvalue { ptr, i64 } %i.aj, i64 %.sroa.7.0, 1
  ret { ptr, i64 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB5_22FunctionStartsIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !134, !noalias !135, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !136 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !137, !noalias !136
  store i64 0, ptr %i.a, align 8, !alias.scope !137, !noalias !136
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !137, !noalias !136, !noundef !5 ; 2 uses
  %i.k = add i64 %i.j, %i.f                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.j
  br i1 %i.l, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sink4.i = phi ptr [ @17, %bb.b ], [ @16, %bb.e ]
  %.sink.i = phi i64 [ 37, %bb.b ], [ 38, %bb.e ]
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !134, !noalias !135
  store i64 0, ptr %i.a, align 8, !alias.scope !134, !noalias !135
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink4.i, ptr %i.m, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !137, !noalias !136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.a, %bb.g, %bb.f
  %.sink = phi i64 [ 1, %bb.f ], [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCseHTIzroA4w0_6object4read7archiveNtB5_21ArchiveSymbolIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !162, !noundef !5 ; 2 uses
  switch i64 %i.a, label %default.unreachable186 [
    i64 0, label %bb.g
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

default.unreachable186:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.g, label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.g, label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.r

.sink.split:                                      ; preds = %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit164, %bb.v, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit171.thread, %bb.q, %bb.o, %bb.p, %bb.n, %bb.l, %bb.m, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit143
  %.sroa.085.0.sink = phi ptr [ null, %bb.p ], [ null, %bb.m ], [ %.sroa.0.0.i, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit ], [ %.sroa.0.0.i140, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit143 ], [ %i.bu, %bb.n ], [ null, %bb.l ], [ %i.cm, %bb.q ], [ null, %bb.o ], [ null, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit164 ], [ %i.ds, %bb.v ], [ null, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit171.thread ]
  %.sroa.7.0.sink = phi ptr [ @20, %bb.p ], [ @20, %bb.m ], [ %.sroa.5.0, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit ], [ %.sroa.519.0, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit143 ], [ %i.cf, %bb.n ], [ @20, %bb.l ], [ %i.cw, %bb.q ], [ @20, %bb.o ], [ @21, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit164 ], [ %i.eg, %bb.v ], [ @19, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit171.thread ]
  %.sroa.9.0.sink = phi i64 [ 34, %bb.p ], [ 34, %bb.m ], [ %.sroa.6.0, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit ], [ %.sroa.622.0, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit143 ], [ %i.ce, %bb.n ], [ 34, %bb.l ], [ %.sroa.0104.0.copyload, %bb.q ], [ 34, %bb.o ], [ 35, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit164 ], [ %i.eh, %bb.v ], [ 27, %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit171.thread ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.085.0.sink, ptr %i.ab, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.sink, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.a, %bb.a ], [ 0, %bb.c ], [ 1, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.ad, ptr %i.b, align 8
  %.sroa.0124.0.copyload = load i32, ptr %i.c, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !163, !nonnull !5, !noundef !5 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !163, !noundef !5 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !164, !nonnull !5, !noundef !5
  %i.aj = tail call { i64, ptr } %i.ai(i8 noundef 0, ptr noundef nonnull readonly %i.ae, ptr noundef nonnull readonly %i.ah), !noalias !164, !inline_history !0 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.i, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit

bb.i:                                             ; preds = %bb.h
  %i.am = extractvalue { i64, ptr } %i.aj, 1
  %i.an = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.am, ptr noundef nonnull readonly %i.ae), !noalias !163 ; 4 uses
  %.not.i.i = icmp ult i64 %i.an, %i.ag
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.an
  %storemerge.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 %i.an)
  %i.ap = add i64 %storemerge.i.i, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = inttoptr i64 %i.an to ptr
  br label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit

_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit: ; preds = %bb.h, %bb.i
  %.sroa.3.0.i15.i = phi ptr [ %i.ar, %bb.i ], [ undef, %bb.h ]
  %storemerge9.i = phi ptr [ %i.aq, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.h ]
  %storemerge.i = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.h ]
  %.sroa.0.0.i = phi ptr [ %i.ae, %bb.i ], [ null, %bb.h ] ; 2 uses
  store ptr %storemerge9.i, ptr %i.ac, align 8, !alias.scope !163
  store i64 %storemerge.i, ptr %i.af, align 8, !alias.scope !163
  %i.as = icmp eq ptr %.sroa.0.0.i, null          ; 2 uses
  %i.at = tail call i32 @llvm.bswap.i32(i32 %.sroa.0124.0.copyload)
  %i.au = zext i32 %i.at to i64
  %.sroa.6.0 = select i1 %i.as, i64 27, i64 %i.au
  %.sroa.5.0 = select i1 %i.as, ptr @19, ptr %.sroa.3.0.i15.i
  br label %.sink.split

bb.j:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.aw, ptr %i.g, align 8
  %.sroa.0125.0.copyload = load i64, ptr %i.h, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.ax = load ptr, ptr %i.av, align 8, !alias.scope !165, !nonnull !5, !noundef !5 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !165, !noundef !5 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !166, !nonnull !5, !noundef !5
  %i.bc = tail call { i64, ptr } %i.bb(i8 noundef 0, ptr noundef nonnull readonly %i.ax, ptr noundef nonnull readonly %i.ba), !noalias !166, !inline_history !0 ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bc, 0
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.k, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit143

bb.k:                                             ; preds = %bb.j
  %i.bf = extractvalue { i64, ptr } %i.bc, 1
  %i.bg = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.bf, ptr noundef nonnull readonly %i.ax), !noalias !165 ; 4 uses
  %.not.i.i141 = icmp ult i64 %i.bg, %i.az
  tail call void @llvm.assume(i1 %.not.i.i141)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bg
  %storemerge.i.i142 = tail call i64 @llvm.usub.sat.i64(i64 %i.az, i64 %i.bg)
  %i.bi = add i64 %storemerge.i.i142, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bk = inttoptr i64 %i.bg to ptr
  br label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit143

_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit143: ; preds = %bb.j, %bb.k
  %.sroa.3.0.i15.i137 = phi ptr [ %i.bk, %bb.k ], [ undef, %bb.j ]
  %storemerge9.i138 = phi ptr [ %i.bj, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.j ]
  %storemerge.i139 = phi i64 [ %i.bi, %bb.k ], [ 0, %bb.j ]
  %.sroa.0.0.i140 = phi ptr [ %i.ax, %bb.k ], [ null, %bb.j ] ; 2 uses
  store ptr %storemerge9.i138, ptr %i.av, align 8, !alias.scope !165
  store i64 %storemerge.i139, ptr %i.ay, align 8, !alias.scope !165
  %i.bl = icmp eq ptr %.sroa.0.0.i140, null       ; 2 uses
  %i.bm = tail call i64 @llvm.bswap.i64(i64 %.sroa.0125.0.copyload)
  %.sroa.622.0 = select i1 %i.bl, i64 27, i64 %i.bm
  %.sroa.519.0 = select i1 %i.bl, ptr @19, ptr %.sroa.3.0.i15.i137
  br label %.sink.split

bb.l:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bn, ptr %i.l, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5 ; 3 uses
  %.sroa.0126.0.copyload = load i32, ptr %i.m, align 1
  %i.bq = zext i32 %.sroa.0126.0.copyload to i64  ; 3 uses
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  %i.bw = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !167, !nonnull !5, !noundef !5
  %i.bx = tail call { i64, ptr } %i.bw(i8 noundef 0, ptr noundef nonnull readonly %i.bu, ptr noundef nonnull readonly %i.bv), !noalias !167, !inline_history !0 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ca = sub nuw i64 %i.bp, %i.bq
  %i.cb = extractvalue { i64, ptr } %i.bx, 1
  %i.cc = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.cb, ptr noundef nonnull readonly %i.bu), !noalias !168 ; 2 uses
  %.not.i.i148 = icmp ult i64 %i.cc, %i.ca
  tail call void @llvm.assume(i1 %.not.i.i148)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.0100.0.copyload = load i32, ptr %i.cd, align 1
  %i.ce = zext i32 %.sroa.0100.0.copyload to i64
  %i.cf = inttoptr i64 %i.cc to ptr
  br label %.sink.split

bb.o:                                             ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.cg, ptr %i.q, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5 ; 3 uses
  %.sroa.0127.0.copyload = load i64, ptr %i.r, align 1 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %.sroa.0127.0.copyload
  br i1 %i.cj, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sroa.0127.0.copyload ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci
  %i.co = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !169, !nonnull !5, !noundef !5
  %i.cp = tail call { i64, ptr } %i.co(i8 noundef 0, ptr noundef nonnull readonly %i.cm, ptr noundef nonnull readonly %i.cn), !noalias !169, !inline_history !0 ; 2 uses
  %i.cq = extractvalue { i64, ptr } %i.cp, 0
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.cs = sub nuw i64 %i.ci, %.sroa.0127.0.copyload
  %i.ct = extractvalue { i64, ptr } %i.cp, 1
  %i.cu = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.ct, ptr noundef nonnull readonly %i.cm), !noalias !170 ; 2 uses
  %.not.i.i155 = icmp ult i64 %i.cu, %i.cs
  tail call void @llvm.assume(i1 %.not.i.i155)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0104.0.copyload = load i64, ptr %i.cv, align 1
  %i.cw = inttoptr i64 %i.cu to ptr
  br label %.sink.split

bb.r:                                             ; preds = %bb.f
  %i.cx = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store ptr %i.cx, ptr %i.w, align 8
  %.sroa.0128.0.copyload = load i16, ptr %i.x, align 1
  %i.cy = add i16 %.sroa.0128.0.copyload, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noundef !5
  %i.db = zext i16 %i.cy to i64                   ; 2 uses
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.dd = load ptr, ptr %i.v, align 8, !alias.scope !171, !nonnull !5, !noundef !5 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !171, !noundef !5 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df
  %i.dh = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !172, !nonnull !5, !noundef !5
  %i.di = tail call { i64, ptr } %i.dh(i8 noundef 0, ptr noundef nonnull readonly %i.dd, ptr noundef nonnull readonly %i.dg), !noalias !172, !inline_history !0 ; 2 uses
  %i.dj = extractvalue { i64, ptr } %i.di, 0
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.t, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit164

bb.t:                                             ; preds = %bb.s
  %i.dl = extractvalue { i64, ptr } %i.di, 1
  %i.dm = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.dl, ptr noundef nonnull readonly %i.dd), !noalias !171 ; 3 uses
  %.not.i.i162 = icmp ult i64 %i.dm, %i.df
  tail call void @llvm.assume(i1 %.not.i.i162)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dm
  %storemerge.i.i163 = tail call i64 @llvm.usub.sat.i64(i64 %i.df, i64 %i.dm)
  %i.do = add i64 %storemerge.i.i163, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  br label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit164

_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit164: ; preds = %bb.s, %bb.t
  %storemerge9.i159 = phi ptr [ %i.dp, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.s ]
  %storemerge.i160 = phi i64 [ %i.do, %bb.t ], [ 0, %bb.s ]
  store ptr %storemerge9.i159, ptr %i.v, align 8, !alias.scope !171
  store i64 %storemerge.i160, ptr %i.de, align 8, !alias.scope !171
  br label %.sink.split

bb.u:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.ds = load ptr, ptr %i.v, align 8, !alias.scope !173, !nonnull !5, !noundef !5 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !173, !noundef !5 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du
  %i.dw = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !174, !nonnull !5, !noundef !5
  %i.dx = tail call { i64, ptr } %i.dw(i8 noundef 0, ptr noundef nonnull readonly %i.ds, ptr noundef nonnull readonly %i.dv), !noalias !174, !inline_history !0 ; 2 uses
  %i.dy = extractvalue { i64, ptr } %i.dx, 0
  %i.dz = trunc nuw i64 %i.dy to i1
  br i1 %i.dz, label %bb.v, label %_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit171.thread

_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string.exit171.thread: ; preds = %bb.u
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !alias.scope !173
  store i64 0, ptr %i.dt, align 8, !alias.scope !173
  br label %.sink.split

bb.v:                                             ; preds = %bb.u
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.db
  %i.eb = extractvalue { i64, ptr } %i.dx, 1
  %i.ec = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.eb, ptr noundef nonnull readonly %i.ds), !noalias !173 ; 4 uses
  %.not.i.i169 = icmp ult i64 %i.ec, %i.du
  tail call void @llvm.assume(i1 %.not.i.i169)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ec
  %storemerge.i.i170 = tail call i64 @llvm.usub.sat.i64(i64 %i.du, i64 %i.ec)
  %i.ee = add i64 %storemerge.i.i170, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.eg = inttoptr i64 %i.ec to ptr
  store ptr %i.ef, ptr %i.v, align 8, !alias.scope !173
  store i64 %i.ee, ptr %i.dt, align 8, !alias.scope !173
  %.sroa.0123.0.copyload = load i32, ptr %i.ea, align 1
  %i.eh = zext i32 %.sroa.0123.0.copyload to i64
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_22AttributeIndexIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !180, !noalias !181, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !182 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  %i.h = icmp ugt i64 %i.f, 4294967295
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !180, !noalias !181
  store i64 0, ptr %i.a, align 8, !alias.scope !180, !noalias !181
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @9, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.42.0..sroa_idx, align 8
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %.sroa.6.12.extract.trunc = trunc nuw i64 %i.f to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.12.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvXs_NtNtNtCseHTIzroA4w0_6object4read2pe10relocationNtB4_23RelocationBlockIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !189, !noalias !190, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.d = icmp samesign ult i64 %i.b, 8
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !alias.scope !192, !noalias !193, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = add nsw i64 %i.b, -8                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.018.0.copyload.i.i = load i64, ptr %i.e, align 1, !noalias !194 ; 4 uses
  %i.h = icmp ugt i64 %.sroa.018.0.copyload.i.i, 38654705663
  %i.i = and i64 %.sroa.018.0.copyload.i.i, 12884901888
  %i.j = icmp eq i64 %i.i, 0
  %or.cond.i.i = and i1 %i.h, %i.j
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %.sroa.018.0.copyload.i.i, 32
  %i.l = add nuw nsw i64 %i.k, 4294967288
  %i.m = lshr exact i64 %i.l, 1
  %i.n = and i64 %i.m, 2147483646                 ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 1                  ; 3 uses
  %i.p = icmp samesign ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.14.0.ph.i = phi i64 [ 27, %bb.c ], [ 29, %bb.b ], [ 27, %bb.d ]
  %.sroa.9.0.ph.i = phi ptr [ @7, %bb.c ], [ @8, %bb.b ], [ @7, %bb.d ]
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !189, !noalias !190
  store i64 0, ptr %i.a, align 8, !alias.scope !189, !noalias !190
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0.ph.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.r = sub nuw nsw i64 %i.f, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.o
  store ptr %i.s, ptr %1, align 8, !alias.scope !192, !noalias !193, !captures !8
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !192, !noalias !193
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.n
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.v, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %.sroa.46.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sroa.018.0.copyload.i.i.sink = phi i64 [ %.sroa.018.0.copyload.i.i, %bb.f ], [ %.sroa.14.0.ph.i, %bb.e ]
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.018.0.copyload.i.i.sink, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i64 [ 0, %bb.a ], [ 1, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCseHTIzroA4w0_6object(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyyNCNvMB11_INtB11_9SymbolMapBZ_E3new0E0INtNtB25_3vec3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyyNCNvMB1o_INtB1o_9SymbolMapB1m_E3new0E0EB1s_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13ObjectMapFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13ObjectMapFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyyNCNvMBY_INtBY_9SymbolMapBW_E3new0E0EB12_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keyyNCNvMB1u_INtB1u_9SymbolMapB1s_E3new0E0EB1y_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtNtNtCseHTIzroA4w0_6object4read2pe7sectionNtNtBb_2pe18ImageSectionHeader16pe_file_range_at(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtNtCseHTIzroA4w0_6object4read5macho9dyld_infoNtB5_21BindOperationIterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noinline noreturn }
attributes #18 = { noinline }
attributes #19 = { cold }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{!"branch_weights", i32 4001, i32 4000000}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"address", !"read_provenance"}
!9 = !{i32 0, i32 2}
!10 = distinct !{!10, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvMB17_INtB17_9SymbolMapB15_E3new0E0EB1b_"}
!11 = distinct !{!11, !10, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvMB17_INtB17_9SymbolMapB15_E3new0E0EB1b_: argument 0"}
!12 = distinct !{!12, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyyNCNvMB1f_INtB1f_9SymbolMapB1d_E3new0E0EB1j_"}
!13 = distinct !{!13, !12, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyyNCNvMB1f_INtB1f_9SymbolMapB1d_E3new0E0EB1j_: argument 1"}
!14 = distinct !{!14, !12, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyyNCNvMB1f_INtB1f_9SymbolMapB1d_E3new0E0EB1j_: argument 0"}
!15 = distinct !{!15, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE13partition_oneB1n_"}
!16 = distinct !{!16, !15, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE13partition_oneB1n_: argument 0"}
!17 = distinct !{!17, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE13partition_oneB1n_"}
!18 = distinct !{!18, !17, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE13partition_oneB1n_: argument 0"}
!19 = distinct !{!19, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry12split_at_mutBA_"}
!20 = distinct !{!20, !19, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry12split_at_mutBA_: argument 1"}
!21 = distinct !{!21, !19, !"_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry12split_at_mutBA_: argument 0"}
!22 = distinct !{!22, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyyNCNvMB1f_INtB1f_9SymbolMapB1d_E3new0E0E0EB1j_"}
!23 = distinct !{!23, !22, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyyNCNvMB1f_INtB1f_9SymbolMapB1d_E3new0E0E0EB1j_: argument 1"}
!24 = distinct !{!24, !22, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keyyNCNvMB1f_INtB1f_9SymbolMapB1d_E3new0E0E0EB1j_: argument 0"}
!25 = distinct !{!25, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE13partition_oneB1n_"}
!26 = distinct !{!26, !25, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE13partition_oneB1n_: argument 0"}
!27 = distinct !{!27, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE13partition_oneB1n_"}
!28 = distinct !{!28, !27, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE13partition_oneB1n_: argument 0"}
!29 = !{!11}
!30 = !{!13}
!31 = !{!14}
!32 = !{!14, !13}
!33 = !{!16}
!34 = !{!18}
!35 = !{!21, !20}
!36 = !{!23}
!37 = !{!24}
!38 = !{!24, !23}
!39 = !{!26}
!40 = !{!28}
!41 = distinct !{!41, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECseHTIzroA4w0_6object"}
!42 = distinct !{!42, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECseHTIzroA4w0_6object: argument 0"}
!43 = distinct !{!43, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECseHTIzroA4w0_6object: argument 1"}
!44 = distinct !{!44, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !55, !56}
!48 = distinct !{!48, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECseHTIzroA4w0_6object: argument 0:It1"}
!49 = distinct !{!49, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECseHTIzroA4w0_6object: argument 1:It1"}
!50 = distinct !{!50, !55}
!51 = !{!42}
!52 = !{!43}
!53 = !{!42, !45}
!54 = !{!43, !46}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!48}
!58 = !{!49}
!59 = distinct !{!59, !"_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe10relocationNtB2_23RelocationBlockIterator5parse"}
!60 = distinct !{!60, !59, !"_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe10relocationNtB2_23RelocationBlockIterator5parse: argument 1"}
!61 = distinct !{!61, !59, !"_RNvMNtNtNtCseHTIzroA4w0_6object4read2pe10relocationNtB2_23RelocationBlockIterator5parse: argument 0"}
!62 = !{!60}
!63 = !{!61}
!64 = !{!61, !60}
!65 = distinct !{!65, !"_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry20binary_search_by_keyyNCNvMBx_INtBx_9SymbolMapBv_E6before0EBB_"}
!66 = distinct !{!66, !65, !"_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry20binary_search_by_keyyNCNvMBx_INtBx_9SymbolMapBv_E6before0EBB_: argument 0"}
!67 = distinct !{!67, !"_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry16binary_search_byNCINvB2_20binary_search_by_keyyNCNvMBx_INtBx_9SymbolMapBv_E6before0E0EBB_"}
!68 = distinct !{!68, !67, !"_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry16binary_search_byNCINvB2_20binary_search_by_keyyNCNvMBx_INtBx_9SymbolMapBv_E6before0E0EBB_: argument 0"}
!69 = distinct !{!69, !67, !"_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry16binary_search_byNCINvB2_20binary_search_by_keyyNCNvMBx_INtBx_9SymbolMapBv_E6before0E0EBB_: argument 1"}
!70 = distinct !{!70, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE6filterNCNvMBL_INtBL_9SymbolMapBJ_E10containing0EBP_"}
!71 = distinct !{!71, !70, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryE6filterNCNvMBL_INtBL_9SymbolMapBJ_E10containing0EBP_: argument 0"}
!72 = !{!68, !66}
!73 = !{!69}
!74 = !{!71}
!75 = distinct !{!75, !"_RNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB2_9SymbolMapNtB2_14ObjectMapEntryE3newB6_"}
!76 = distinct !{!76, !75, !"_RNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB2_9SymbolMapNtB2_14ObjectMapEntryE3newB6_: argument 1"}
!77 = distinct !{!77, !75, !"_RNvMNtNtCseHTIzroA4w0_6object4read10symbol_mapINtB2_9SymbolMapNtB2_14ObjectMapEntryE3newB6_: argument 0"}
!78 = distinct !{!78, !"_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry11sort_by_keyyNCNvMBy_INtBy_9SymbolMapBw_E3new0EBC_"}
!79 = distinct !{!79, !78, !"_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntry11sort_by_keyyNCNvMBy_INtBy_9SymbolMapBw_E3new0EBC_: argument 0"}
!80 = distinct !{!80, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMB2_SBH_11sort_by_keyyNCNvMBJ_INtBJ_9SymbolMapBH_E3new0E0EBN_"}
!81 = distinct !{!81, !80, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMB2_SBH_11sort_by_keyyNCNvMBJ_INtBJ_9SymbolMapBH_E3new0E0EBN_: argument 1"}
!82 = distinct !{!82, !80, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryNCINvMB2_SBH_11sort_by_keyyNCNvMBJ_INtBJ_9SymbolMapBH_E3new0E0EBN_: argument 0"}
!83 = !{!76}
!84 = !{!77}
!85 = !{!79, !77, !76}
!86 = !{!82, !81, !79, !77, !76}
!87 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!88 = !{!77, !76}
!89 = distinct !{!89, !"_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_22AttributeIndexIterator5parse"}
!90 = distinct !{!90, !89, !"_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_22AttributeIndexIterator5parse: argument 0"}
!91 = !{!90}
!92 = distinct !{!92, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTmmENCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2H_4coff7section12SectionTable16pe_file_range_at0EBU_"}
!93 = distinct !{!93, !92, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTmmENCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2H_4coff7section12SectionTable16pe_file_range_at0EBU_: argument 2"}
!94 = distinct !{!94, !92, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTmmENCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2H_4coff7section12SectionTable16pe_file_range_at0EBU_: argument 1"}
!95 = distinct !{!95, !92, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapTmmENCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2H_4coff7section12SectionTable16pe_file_range_at0EBU_: argument 0"}
!96 = !{!94, !93}
!97 = !{!95}
!98 = distinct !{!98, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2z_4coff7section12SectionTable18section_containing0EBU_"}
!99 = distinct !{!99, !98, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2z_4coff7section12SectionTable18section_containing0EBU_: argument 1"}
!100 = distinct !{!100, !98, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCseHTIzroA4w0_6object2pe18ImageSectionHeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs6_NtNtNtBU_4read2pe7sectionNtNtNtB2z_4coff7section12SectionTable18section_containing0EBU_: argument 0"}
!101 = !{!100, !99}
!102 = distinct !{!102, !"_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library"}
!103 = distinct !{!103, !102, !"_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library: argument 1"}
!104 = distinct !{!104, !102, !"_RNvNtNtNtCseHTIzroA4w0_6object4read5macho6import7library: argument 0"}
!105 = !{i8 -2, i8 12}
!106 = !{i8 0, i8 2}
!107 = !{!103}
!108 = !{!104}
!109 = distinct !{!109, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!110 = distinct !{!110, !109, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!111 = distinct !{!111, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!112 = distinct !{!112, !111, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!113 = !{!110}
!114 = !{!112, !110}
!115 = distinct !{!115, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse"}
!116 = distinct !{!116, !115, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse: argument 0"}
!117 = distinct !{!117, !115, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse: argument 1"}
!118 = !{!116}
!119 = !{!117}
!120 = !{!"branch_weights", i32 4000000, i32 4001}
!121 = distinct !{!121, !"_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits"}
!122 = distinct !{!122, !121, !"_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits: argument 0"}
!123 = distinct !{!123, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr7memchr20CseHTIzroA4w0_6object"}
!124 = distinct !{!124, !123, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr7memchr20CseHTIzroA4w0_6object: argument 0"}
!125 = distinct !{null}
!126 = !{!122}
!127 = !{!124}
!128 = distinct !{!128, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator4next"}
!129 = distinct !{!129, !128, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator4next: argument 1"}
!130 = distinct !{!130, !128, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator4next: argument 0"}
!131 = distinct !{!131, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse"}
!132 = distinct !{!132, !131, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse: argument 0"}
!133 = distinct !{!133, !131, !"_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho15function_startsNtB4_22FunctionStartsIterator5parse: argument 1"}
!134 = !{!129}
!135 = !{!130}
!136 = !{!132, !130}
!137 = !{!133, !129}
!138 = distinct !{!138, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!139 = distinct !{!139, !138, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!140 = distinct !{!140, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!141 = distinct !{!141, !140, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!142 = distinct !{!142, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!143 = distinct !{!143, !142, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!144 = distinct !{!144, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!145 = distinct !{!145, !144, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!146 = distinct !{!146, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!147 = distinct !{!147, !146, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!148 = distinct !{!148, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!149 = distinct !{!149, !148, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!150 = distinct !{!150, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!151 = distinct !{!151, !150, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!152 = distinct !{!152, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!153 = distinct !{!153, !152, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!154 = distinct !{!154, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!155 = distinct !{!155, !154, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!156 = distinct !{!156, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!157 = distinct !{!157, !156, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!158 = distinct !{!158, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!159 = distinct !{!159, !158, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!160 = distinct !{!160, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!161 = distinct !{!161, !160, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!162 = !{i64 0, i64 6}
!163 = !{!139}
!164 = !{!141, !139}
!165 = !{!143}
!166 = !{!145, !143}
!167 = !{!149, !147}
!168 = !{!147}
!169 = !{!153, !151}
!170 = !{!151}
!171 = !{!155}
!172 = !{!157, !155}
!173 = !{!159}
!174 = !{!161, !159}
!175 = distinct !{!175, !"_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read3elf10attributesNtB5_22AttributeIndexIterator4next"}
end_hunk_1
