Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.7?download=true
inline.NumInlined: 63
inline.NumDeleted: 45
begin_hunk_0_@_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBT_:bb.a
  %i.f = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read2pe6importNtB5_27DelayLoadDescriptorIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !alias.scope !139, !noalias !140, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !alias.scope !139, !noalias !140, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !139, !noalias !140, !noundef !5 ; 2 uses
  %i.g = icmp samesign ult i64 %i.f, 32
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %i.f, -32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.i, ptr %1, align 8, !alias.scope !139, !noalias !140, !captures !10
  store i64 %i.h, ptr %i.e, align 8, !alias.scope !139, !noalias !140
  %i.j = load <4 x i32>, ptr %i.d, align 1, !alias.scope !141, !noalias !142
  %.fr = freeze <4 x i32> %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.05.0.copyload.i.i = load i32, ptr %i.k, align 1, !alias.scope !141, !noalias !142
  %.sroa.05.0.copyload.i.i.fr = freeze i32 %.sroa.05.0.copyload.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.06.0.copyload.i.i = load i32, ptr %i.l, align 1, !alias.scope !141, !noalias !142
  %.sroa.06.0.copyload.i.i.fr = freeze i32 %.sroa.06.0.copyload.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.m, align 1, !alias.scope !141, !noalias !142
  %i.n = icmp eq i32 %.sroa.07.0.copyload.i.i, 0
  %i.o = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp eq i4 %i.p, 0
  %i.r = or i32 %.sroa.06.0.copyload.i.i.fr, %.sroa.05.0.copyload.i.i.fr
  %i.s = icmp eq i32 %i.r, 0
  %i.t = and i1 %i.q, %i.s
  %op.rdx11 = select i1 %i.t, i1 %i.n, i1 false
  br i1 %op.rdx11, label %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.i, label %bb.f

_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.08.0.copyload.i.i = load i32, ptr %i.u, align 1, !alias.scope !141, !noalias !142
  %i.v = icmp eq i32 %.sroa.08.0.copyload.i.i, 0
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.i
  store i8 1, ptr %i.a, align 8, !alias.scope !139, !noalias !140
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !139, !noalias !140
  store i64 0, ptr %i.e, align 8, !alias.scope !139, !noalias !140
  store i8 1, ptr %i.a, align 8, !alias.scope !139, !noalias !140
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @22, ptr %i.w, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 44, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs8_NtCseHTIzroA4w0_6object2peNtB5_24ImageDelayloadDescriptor7is_null.exit.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.f, %bb.e
  %.sink = phi i64 [ 1, %bb.e ], [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB4_19ExportsTrieIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !noalias !146
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noalias !147, !noundef !5 ; 2 uses
  %.not38.i = icmp eq i64 %i.b, -3
  br i1 %.not38.i, label %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.c = phi i64 [ %i.b, %.lr.ph.i ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !147 ; 3 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !147 ; 2 uses
  switch i64 %i.c, label %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit [
    i64 -2, label %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread11
    i64 -1, label %bb.c
  ]

_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread11: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs2_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_12NodeIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !noalias !146
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !147, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.d, -3
  br i1 %.not.i, label %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread, label %bb.b

_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -2, ptr %0, align 8
  br label %bb.d

_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit: ; preds = %bb.b
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread, %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit, %_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB2_19ExportsTrieIterator4next.exit.thread11
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsl_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !152, !noalias !151, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !152, !noalias !151
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !alias.scope !152, !noalias !151, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = add nsw i64 %i.e, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.i, ptr %1, align 8, !alias.scope !152, !noalias !151, !captures !10
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !152, !noalias !151
  %i.j = load i8, ptr %i.g, align 1, !noalias !153, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !152, !noalias !151, !noundef !5 ; 2 uses
  %i.m = and i8 %i.l, 7
  %notmask.i = shl nsw i8 -1, %i.m
  %i.n = xor i8 %notmask.i, -1
  %i.o = and i8 %i.j, %i.n                        ; 3 uses
  %i.p = and i8 %i.j, 127
  %i.q = zext nneg i8 %i.p to i64
  %i.r = and i8 %i.l, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = lshr i64 %i.q, %i.s                      ; 2 uses
  %i.u = icmp sgt i8 %i.j, -1
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !151 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.r, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.05.0.i = phi i64 [ %i.t, %bb.d ], [ %i.am, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !152, !noalias !151, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !152, !noalias !151, !noundef !5
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = shl i64 %.sroa.05.0.i, %i.ad
  %i.af = add i64 %i.ae, %i.z
  store i64 %i.af, ptr %i.y, align 8, !alias.scope !152, !noalias !151
  %2 = and i8 %i.o, 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { i64, i64 } %i.v, 1
  %i.ah = load i8, ptr %i.k, align 8, !alias.scope !152, !noalias !151, !noundef !5
  %i.ai = sub i8 7, %i.ah
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = shl i64 %i.ag, %i.ak
  %i.am = or i64 %i.al, %i.t
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.an = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !151 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.r, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.f
  %i.aq = and i8 %i.o, 2
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.as = extractvalue { i64, i64 } %i.an, 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !alias.scope !152, !noalias !151, !noundef !5
  %i.av = trunc i64 %i.as to i32
  %i.aw = add i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.at, align 8, !alias.scope !152, !noalias !151
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ax = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !151 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.r, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.bb = load i8, ptr %i.ba, align 2, !range !12, !alias.scope !152, !noalias !151, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = and i8 %i.o, 4
  %i.be = icmp ne i8 %i.bd, 0
  %or.cond.not.i = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond.not.i, label %bb.n, label %._RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit_crit_edge

._RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit_crit_edge: ; preds = %bb.l
  %.sroa.16.8..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.16.8.copyload.pre = load i64, ptr %.sroa.16.8..sroa_idx.phi.trans.insert, align 8, !alias.scope !153
  br label %_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = extractvalue { i64, i64 } %i.ax, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !152, !noalias !151, !noundef !5
  %i.bi = trunc i64 %i.bf to i32
  %i.bj = add i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.bg, align 4, !alias.scope !152, !noalias !151
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bk = tail call { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !151 ; 2 uses
  %i.bl = extractvalue { i64, i64 } %i.bk, 0
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = extractvalue { i64, i64 } %i.bk, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !152, !noalias !151, !noundef !5
  %i.bq = add i64 %i.bp, %i.bn                    ; 2 uses
  store i64 %i.bq, ptr %i.bo, align 8, !alias.scope !152, !noalias !151
  br label %_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit

_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit: ; preds = %._RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit_crit_edge, %bb.o
  %.sroa.16.8.copyload = phi i64 [ %.sroa.16.8.copyload.pre, %._RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit_crit_edge ], [ %i.bq, %bb.o ]
  %i.br = load i64, ptr %i.a, align 8, !alias.scope !152, !noalias !151, !noundef !5
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr %i.a, align 8, !alias.scope !152, !noalias !151
  %.sroa.10.8.copyload = load ptr, ptr %i.y, align 8, !alias.scope !153
  %.sroa.21.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.21.8.copyload = load i64, ptr %.sroa.21.8..sroa_idx, align 8, !alias.scope !153
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.s

bb.q:                                             ; preds = %_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit, %bb.r
  %.sroa.0.013 = phi i64 [ 1, %bb.r ], [ 0, %_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit ]
  %.sroa.10.011 = phi ptr [ %.sroa.10.0.ph, %bb.r ], [ %.sroa.10.8.copyload, %_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit ]
  %.sroa.16.09 = phi i64 [ %.sroa.16.0.ph, %bb.r ], [ %.sroa.16.8.copyload, %_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit ]
  %.sroa.21.07 = phi i64 [ undef, %bb.r ], [ %.sroa.21.8.copyload, %_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator5parse.exit ]
  store i64 %.sroa.0.013, ptr %0, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.011, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.16.09, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.21.07, ptr %.sroa.21.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.c, %bb.k, %bb.h, %bb.e, %bb.n
  %.sroa.16.0.ph = phi i64 [ 37, %bb.n ], [ 47, %bb.e ], [ 37, %bb.h ], [ 35, %bb.k ], [ 47, %bb.c ]
  %.sroa.10.0.ph = phi ptr [ @25, %bb.n ], [ @28, %bb.e ], [ @27, %bb.h ], [ @26, %bb.k ], [ @28, %bb.c ]
  store i64 0, ptr %i.a, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13ObjectMapFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map14ObjectMapEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskEQmjas7MZ9_6ruzstd3fse11fse_decoder5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskEQmjas7MZ9_6ruzstd5huff013huff0_decoder5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskEQmjas7MZ9_6ruzstd6blocks16sequence_section8SequenceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCseHTIzroA4w0_6object4read4utilNtB5_9DebugByteNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_2pe18ImageDataDirectoryEBc_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseHTIzroA4w0_6object(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read5macho12exports_trie5FrameE8grow_oneBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { noreturn }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { noinline }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{i64 -3, i64 3}
!7 = !{i64 0, i64 2}
!8 = !{i64 0, i64 -9223372036854775807}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"address", !"read_provenance"}
!11 = !{i64 0, i64 -9223372036854775808}
!12 = !{i8 0, i8 2}
!13 = distinct !{!13, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCseHTIzroA4w0_6object2pe18ImageDataDirectoryE6filterNCNvMNtNtNtBN_4read2pe14data_directoryNtB1I_15DataDirectories3get0EBN_"}
!14 = distinct !{!14, !13, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCseHTIzroA4w0_6object2pe18ImageDataDirectoryE6filterNCNvMNtNtNtBN_4read2pe14data_directoryNtB1I_15DataDirectories3get0EBN_: argument 0"}
!15 = !{!14}
!16 = distinct !{!16, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!17 = distinct !{!17, !16, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!18 = distinct !{!18, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!19 = distinct !{!19, !18, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!20 = !{!19, !17}
!21 = !{!17}
!22 = distinct !{!22, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!23 = distinct !{!23, !22, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!24 = distinct !{!24, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!25 = distinct !{!25, !24, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!26 = !{!25, !23}
!27 = !{!23}
!28 = distinct !{!28, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes10read_bytes"}
!29 = distinct !{!29, !28, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes10read_bytes: argument 0"}
!30 = distinct !{!30, !"_RNvMs3_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_10ExportData5parse"}
!31 = distinct !{!31, !30, !"_RNvMs3_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_10ExportData5parse: argument 0"}
!32 = distinct !{!32, !30, !"_RNvMs3_NtNtNtCseHTIzroA4w0_6object4read5macho12exports_trieNtB5_10ExportData5parse: argument 1"}
!33 = distinct !{!33, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string"}
!34 = distinct !{!34, !33, !"_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes11read_string: argument 0"}
!35 = distinct !{!35, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object"}
!36 = distinct !{!36, !35, !"_RNCNvNtCs906JEEYSgkH_6memchr6memchr6memchr0CseHTIzroA4w0_6object: argument 0"}
!37 = distinct !{null, null, null}
!38 = distinct !{!38, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCseHTIzroA4w0_6object"}
end_hunk_0
