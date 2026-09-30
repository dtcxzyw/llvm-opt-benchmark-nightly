Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.3?download=true
inline.NumInlined: 77
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs6_NtNtNtCseHTIzroA4w0_6object4read5macho6importNtB5_19MachOImportDyldInfo4next:bb.a
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
  %i.l = xor i64 %i.j, -1
  %i.m = add i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink9 = phi ptr [ %i.n, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sink8 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %.sink7 = phi ptr [ %i.a, %bb.b ], [ @13, %bb.a ]
  %.sink = phi i64 [ %i.j, %bb.b ], [ 34, %bb.a ]
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  store ptr %.sink9, ptr %1, align 8, !alias.scope !113
  store i64 %.sink8, ptr %i.b, align 8, !alias.scope !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink7, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.p, align 8
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
  %i.e = icmp samesign eq i64 %1, 0
  br i1 %i.e, label %.loopexit, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  %3 = icmp samesign ugt i32 %2, 10
  br i1 %3, label %.lr.ph49, label %.lr.ph

.split.us.split.us:                               ; preds = %bb.c
  %i.f = icmp eq ptr %i.g, %i.c
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us.split.preheader, %.split.us.split.us
  %.sroa.01.0.us.us38 = phi ptr [ %i.g, %.split.us.split.us ], [ %0, %.split.us.split.preheader ] ; 2 uses
  %.sroa.014.0.us.us37 = phi i64 [ %i.q, %.split.us.split.us ], [ 0, %.split.us.split.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.us38, i64 1 ; 2 uses
  %i.h = load i8, ptr %.sroa.01.0.us.us38, align 1, !noundef !5 ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %.loopexit, label %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us

_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us: ; preds = %.lr.ph
  %i.j = zext i8 %i.h to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ult i32 %i.k, %2
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us
  %i.m = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.014.0.us.us37, i64 %i.d) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = zext nneg i32 %i.k to i64
  %i.q = add i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %or.cond.us.us = select i1 %i.n, i1 true, i1 %i.r, !prof !6
  br i1 %or.cond.us.us, label %.loopexit, label %.split.us.split.us, !prof !6

.split.us.split:                                  ; preds = %bb.d
  %i.s = icmp eq ptr %i.t, %i.c
  br i1 %i.s, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.split.us.split.preheader, %.split.us.split
  %.sroa.01.0.us48 = phi ptr [ %i.t, %.split.us.split ], [ %0, %.split.us.split.preheader ] ; 2 uses
  %.sroa.014.0.us47 = phi i64 [ %i.ah, %.split.us.split ], [ 0, %.split.us.split.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us48, i64 1 ; 2 uses
  %i.u = load i8, ptr %.sroa.01.0.us48, align 1, !noundef !5 ; 3 uses
  %i.v = icmp eq i8 %i.u, 32
  br i1 %i.v, label %.loopexit, label %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us

_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us: ; preds = %.lr.ph49
  %i.w = zext i8 %i.u to i32                      ; 2 uses
  %i.x = icmp ugt i8 %i.u, 57
  %i.y = add nsw i32 %i.w, -65
  %i.z = and i32 %i.y, -33
  %i.aa = add nuw nsw i32 %i.z, 10
  %i.ab = add nsw i32 %i.w, -48
  %spec.select = select i1 %i.x, i32 %i.aa, i32 %i.ab ; 2 uses
  %i.ac = icmp ult i32 %spec.select, %2
  br i1 %i.ac, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us
  %i.ad = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.014.0.us47, i64 %i.d) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ag = zext nneg i32 %spec.select to i64
  %i.ah = add i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %or.cond.us = select i1 %i.ae, i1 true, i1 %i.ai, !prof !6
  br i1 %or.cond.us, label %.loopexit, label %.split.us.split, !prof !6

bb.e:                                             ; preds = %bb.a
  %i.aj = load i8, ptr %0, align 1, !noundef !5
  %i.ak = icmp eq i8 %i.aj, 32
  br i1 %i.ak, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us, %bb.c, %.lr.ph, %.split.us.split.us, %bb.d, %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us, %.lr.ph49, %.split.us.split, %.split.us, %bb.b, %bb.f, %bb.e
  %.sroa.7.0 = phi i64 [ undef, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.ah, %.split.us.split ], [ 0, %.split.us ], [ %.sroa.014.0.us47, %.lr.ph49 ], [ %.sroa.014.0.us47, %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us ], [ %.sroa.014.0.us47, %bb.d ], [ %.sroa.014.0.us.us37, %.lr.ph ], [ %.sroa.014.0.us.us37, %bb.c ], [ %.sroa.014.0.us.us37, %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us ], [ %i.q, %.split.us.split.us ]
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %.split.us.split ], [ 1, %.split.us ], [ 1, %.lr.ph49 ], [ 0, %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us ], [ 0, %bb.d ], [ 1, %.lr.ph ], [ 0, %bb.c ], [ 0, %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us ], [ 1, %.split.us.split.us ]
  %i.al = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.am = insertvalue { i64, i64 } %i.al, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.am

bb.f:                                             ; preds = %.thread
  %i.an = load i8, ptr %0, align 1, !noundef !5
  %i.ao = icmp eq i8 %i.an, 32
  br i1 %i.ao, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive24parse_sysv_extended_name(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i29 = icmp eq i64 %1, 0
  br i1 %.not.i29, label %.split.us.i, label %bb.c

.split.us.i:                                      ; preds = %bb.c, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit, label %.lr.ph

.split.us.split.us.i:                             ; preds = %bb.b
  %i.c = icmp eq ptr %i.d, %i.a
  br i1 %i.c, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us.i, %.split.us.split.us.i
  %.sroa.01.0.us.us.i49 = phi ptr [ %i.d, %.split.us.split.us.i ], [ %0, %.split.us.i ] ; 2 uses
  %.sroa.014.0.us.us.i48 = phi i64 [ %i.n, %.split.us.split.us.i ], [ 0, %.split.us.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.us.i49, i64 1 ; 2 uses
  %i.e = load i8, ptr %.sroa.01.0.us.us.i49, align 1, !alias.scope !126, !noundef !5 ; 2 uses
  %i.f = icmp eq i8 %i.e, 32
  br i1 %i.f, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit, label %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us.i

_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us.i: ; preds = %.lr.ph
  %i.g = zext i8 %i.e to i32
  %i.h = add nsw i32 %i.g, -48                    ; 2 uses
  %i.i = icmp ult i32 %i.h, 10
  br i1 %i.i, label %bb.b, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread

bb.b:                                             ; preds = %_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8to_digit.exit.us.us.i
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.014.0.us.us.i48, i64 10) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.m = zext nneg i32 %i.h to i64
  %i.n = add i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %or.cond.us.us.i = select i1 %i.k, i1 true, i1 %i.o, !prof !6
  br i1 %or.cond.us.us.i, label %_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits.exit.thread, label %.split.us.split.us.i, !prof !6

bb.c:                                             ; preds = %bb.a
  %i.p = load i8, ptr %0, align 1, !alias.scope !126, !noundef !5
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
  switch i64 %i.a, label %default.unreachable181 [
    i64 0, label %bb.g
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

default.unreachable181:                           ; preds = %bb.a
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
end_hunk_0
