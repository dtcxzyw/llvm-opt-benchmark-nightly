Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.01?download=true
inline.NumInlined: 8879
inline.NumDeleted: 4283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter:bb.a

bb.e:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #31
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !28 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !38, !noundef !28
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !100, !noundef !28
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !28, !noundef !28 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !28 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8247)
  %i.g = load i64, ptr %0, align 8, !range !36, !alias.scope !8247, !noundef !28
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !100, !alias.scope !8248, !noundef !28
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !8247 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !8248 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8249)
  %i.n = trunc nuw i8 %.promoted26.i to i1        ; 2 uses
  %i.o = icmp eq i64 %.promoted.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %.val1
  br i1 %.not.i.i.i.peel, label %bb.d, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i, %.val1
  br i1 %i.p, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !8250, !noalias !8251, !noundef !28
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.u, label %.loopexit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !8252, !noundef !28 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !8252, !noundef !28
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !8252, !noundef !28
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !8252, !noundef !28
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !8247, !noundef !28
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !8247, !nonnull !28, !noundef !28 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !8247, !noundef !28 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !8253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8254)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ult i64 %i.bq, %.val1
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1
  br i1 %i.bs, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !8250, !noalias !8255, !noundef !28
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1
  br i1 %i.bw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !8256, !noundef !28 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i, label %.sink.split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i, label %.sink.split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa15 = phi i8 [ %.promoted26.i, %.split.i.i.i.peel ], [ %.promoted26.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa12 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.bq, %.split.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !8248
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa12, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1046) #31, !noalias !8255
  unreachable

.loopexit19:                                      ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !8248
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19
  store i8 1, ptr %i.j, align 2, !alias.scope !8248
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i, %bb.q, %bb.h
  %.lcssa14 = phi i64 [ %.promoted.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !8248
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %.sink.split, %.loopexit19
  %1 = phi i64 [ %.lcssa14, %.sink.split ], [ %.val1, %.loopexit19 ], [ %.val1, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !8246
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !8246
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i: ; preds = %bb.s, %bb.r, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !8246
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, %bb.t, %bb.u
  %i.cm = load i64, ptr %i.a, align 8, !range !36, !noundef !28
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noundef !28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !28
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !28 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCsEhZmuQNqkz_11ruff_linter.exit

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.cw = load i8, ptr %i.b, align 1, !range !100, !alias.scope !8257, !noundef !28
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCsEhZmuQNqkz_11ruff_linter.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !8257
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !100, !alias.scope !8257, !noundef !28
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.x
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !8257
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !8257
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !8257, !noundef !28 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !8257, !noundef !28 ; 2 uses
  %.not.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCsEhZmuQNqkz_11ruff_linter.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.df = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !8257, !nonnull !28, !noundef !28
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dg
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0 = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0 = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCsEhZmuQNqkz_11ruff_linter.exit ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCsEhZmuQNqkz_11ruff_linter.exit ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE9next_backCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !100, !noundef !28
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !100, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8
  %i.h = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE9next_backCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(128) %0) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.u, label %bb.v

bb.d:                                             ; preds = %bb.u, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val6 = load i64, ptr %i.m, align 8, !noundef !28 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8271)
  %i.n = load i64, ptr %0, align 8, !range !36, !alias.scope !8271, !noundef !28
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !range !100, !alias.scope !8272, !noundef !28
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted.i = load i8, ptr %i.s, align 1, !alias.scope !8272 ; 2 uses
  %.promoted29.i = load i64, ptr %i.t, align 8, !alias.scope !8272 ; 12 uses
  %i.u = trunc nuw i8 %.promoted.i to i1          ; 2 uses
  %i.v = icmp eq i64 %.promoted29.i, 0
  %i.w = xor i8 %.promoted.i, 1                   ; 3 uses
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8273)
  %.not.i.i.i.peel = icmp ult i64 %.promoted29.i, %.val6
  br i1 %.not.i.i.i.peel, label %bb.e, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %.lr.ph
  %i.x = icmp eq i64 %.promoted29.i, %.val6
  br i1 %i.x, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted29.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !8274, !noalias !8275, !noundef !28
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted29.i ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !8276, !noundef !28 ; 3 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.i, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.peel

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.peel: ; preds = %bb.f
  %i.af = icmp ne i64 %.promoted29.i, 1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !8276, !noundef !28 ; 3 uses
  %i.ai = and i8 %i.ah, 31
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = icmp slt i8 %i.ah, -64
  br i1 %i.ak, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.peel, label %bb.h

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.peel: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.peel
  %i.al = icmp ne i64 %.promoted29.i, 2
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !noalias !8276, !noundef !28 ; 3 uses
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = icmp slt i8 %i.an, -64
  br i1 %i.aq, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.peel, label %bb.g

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.peel: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.peel
  %i.ar = icmp ne i64 %.promoted29.i, 3
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.at = load i8, ptr %i.as, align 1, !noalias !8276, !noundef !28
  %i.au = and i8 %i.at, 7
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 6
  %i.ax = and i8 %i.an, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.peel, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.peel
  %.sroa.010.1.i.i.i.peel = phi i32 [ %i.az, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.peel ], [ %i.ap, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.peel ]
  %i.ba = shl nuw nsw i32 %.sroa.010.1.i.i.i.peel, 6
  %i.bb = and i8 %i.ah, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.peel
  %.sroa.010.0.i.i.i.peel = phi i32 [ %i.bd, %bb.g ], [ %i.aj, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.peel ]
  %i.be = shl nuw nsw i32 %.sroa.010.0.i.i.i.peel, 6
  %i.bf = and i8 %i.ad, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bi = zext nneg i8 %i.ad to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.1.i.ph.i.i.peel = phi i32 [ %i.bi, %bb.i ], [ %i.bh, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  br i1 %i.u, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 128
  br i1 %i.bk, label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 2048
  br i1 %i.bl, label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bm, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel

_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.01.0.neg.i.i.peel = phi i64 [ -2, %bb.l ], [ %..i.i.peel, %bb.m ], [ -1, %bb.k ]
  %i.bn = add i64 %.sroa.01.0.neg.i.i.peel, %.promoted29.i ; 15 uses
  store i64 %i.bn, ptr %i.t, align 8, !alias.scope !8277
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %.peel.next

bb.n:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !8271, !noundef !28
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !8271, !nonnull !28, !noundef !28 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !8271, !noundef !28 ; 2 uses
  br i1 %i.bs, label %bb.s, label %bb.t

.peel.next:                                       ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8278)
  %.not.i.i.i = icmp ult i64 %i.bn, %.val6
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.peel.next
  %i.bx = icmp eq i64 %i.bn, %.val6
  br i1 %i.bx, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %.peel.next
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !8274, !noalias !8279, !noundef !28
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !8280, !noundef !28
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %.sink.split, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i: ; preds = %bb.p
  %i.cf = icmp ne i64 %i.bn, 1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 -2
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !8280, !noundef !28
  %i.ci = icmp slt i8 %i.ch, -64
  br i1 %i.ci, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i, label %.sink.split

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i
  %i.cj = icmp ne i64 %i.bn, 2
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %i.cb, i64 -3
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !8280, !noundef !28
  %i.cm = icmp slt i8 %i.cl, -64
  br i1 %i.cm, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i, label %.sink.split

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i
  %i.cn = icmp ne i64 %i.bn, 3
  tail call void @llvm.assume(i1 %i.cn)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.e, %.split.i.i.i.peel
  %.lcssa20 = phi i8 [ %i.w, %.split.i.i.i.peel ], [ %i.w, %bb.e ], [ 0, %.split.i.i.i ], [ 0, %bb.o ]
  %.lcssa17 = phi i64 [ %.promoted29.i, %.split.i.i.i.peel ], [ %.promoted29.i, %bb.e ], [ %i.bn, %.split.i.i.i ], [ %i.bn, %bb.o ]
  store i8 %.lcssa20, ptr %i.s, align 1, !alias.scope !8272
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val6, i64 noundef 0, i64 noundef %.lcssa17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1047) #31, !noalias !8279
  unreachable

._crit_edge:                                      ; preds = %.lr.ph.i
  store i8 %i.w, ptr %i.s, align 1, !alias.scope !8272
  br i1 %i.u, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.p, align 2, !alias.scope !8272
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i, %bb.p, %bb.j
  %.lcssa18 = phi i64 [ %.promoted29.i, %bb.j ], [ %i.bn, %bb.p ], [ %i.bn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i ], [ %i.bn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i ], [ %i.bn, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i ]
  store i8 0, ptr %i.s, align 1, !alias.scope !8272
  br label %bb.r

bb.r:                                             ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel, %.sink.split, %._crit_edge
  %1 = phi i64 [ %.lcssa18, %.sink.split ], [ 0, %._crit_edge ], [ 0, %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.i.peel ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.co, align 8, !alias.scope !8270
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cp, align 8, !alias.scope !8270
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i

_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i: ; preds = %bb.r, %bb.q, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !8270
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

bb.s:                                             ; preds = %bb.n
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.bp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bw, i1 noundef zeroext true)
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

bb.t:                                             ; preds = %bb.n
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.bp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bw, i1 noundef zeroext false)
  br label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit

_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit: ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i, %bb.s, %bb.t
  %i.cq = load i64, ptr %i.a, align 8, !range !36, !noundef !28
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.c
  %i.cs = load i8, ptr %i.b, align 1, !range !100, !noundef !28
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.v, label %bb.d

bb.v:                                             ; preds = %bb.u, %bb.c, %bb.a, %bb.y
  %.sroa.8.0 = phi i64 [ %i.j, %bb.c ], [ %.sroa.8.1, %bb.y ], [ undef, %bb.a ], [ undef, %bb.u ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.c ], [ %.sroa.0.1, %bb.y ], [ null, %bb.a ], [ null, %bb.u ]
  %i.cu = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.cv = insertvalue { ptr, i64 } %i.cu, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.cv

bb.w:                                             ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !28 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !noundef !28
  %i.dc = sub nuw i64 %i.db, %i.cz
  store i64 %i.cx, ptr %i.da, align 8
  br label %bb.y

bb.x:                                             ; preds = %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher15next_match_back.exit
  store i8 1, ptr %i.b, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !noundef !28 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = load i64, ptr %i.df, align 8, !noundef !28
  %i.dh = sub nuw i64 %i.dg, %i.de
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.8.1 = phi i64 [ %i.dc, %bb.w ], [ %i.dh, %bb.x ]
  %.pn = phi i64 [ %i.cz, %bb.w ], [ %i.de, %bb.x ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs4NRVxsYgnAr_4core5clone6uninitNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterNtB2_8CopySpec9clone_oneCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = load <2 x i32>, ptr %0, align 8, !noalias !8315
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = tail call noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.e), !noalias !8315, !inline_history !8283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8315
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8316)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8317
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8318), !noalias !8315
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.j = load i8, ptr %i.i, align 1, !range !61, !alias.scope !8318, !noalias !8317, !noundef !28
  %i.k = and i8 %i.j, -2
  %switch.i.i = icmp eq i8 %i.k, -48
  br i1 %switch.i.i, label %bb.b, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i

bb.b:                                             ; preds = %bb.a
  %.pn.i.i = load ptr, ptr %i.h, align 8, !alias.scope !8318, !noalias !8317, !nonnull !28, !noundef !28
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8
  %i.l = atomicrmw add ptr %.sroa.0.0.i.i, i64 1 monotonic, align 8, !noalias !8319
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #31, !noalias !8320
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !8317
  %i.n = load <2 x i32>, ptr %i.g, align 8, !noalias !8317
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.o)
          to label %_RNvXs83_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.d, !noalias !8317

bb.d:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8321), !noalias !8315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8322), !noalias !8315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8323), !noalias !8315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8324), !noalias !8315
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.s = load i8, ptr %i.r, align 1, !range !61, !alias.scope !8325, !noalias !8317, !noundef !28
  %i.t = and i8 %i.s, -2
  %switch.i.i.i.i.i2 = icmp eq i8 %i.t, -48
  br i1 %switch.i.i.i.i.i2, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8326), !noalias !8315
  %.pn.i.i.i.i.i.i3 = load ptr, ptr %i.a, align 8, !alias.scope !8327, !noalias !8317, !nonnull !28, !noundef !28
  %.sroa.0.0.i.i.i.i.i.i4 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i3, i64 -8
  %i.u = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i4, i64 -1 release, align 8, !noalias !8328
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %common.resume, !prof !31

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %common.resume unwind label %bb.g, !noalias !8317

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !8317
  unreachable

common.resume:                                    ; preds = %bb.l, %.body, %bb.k, %bb.d, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %eh.lpad-body, %bb.k ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RNvXs83_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !8315
  store <2 x i32> %i.n, ptr %i.c, align 8, !alias.scope !8316, !noalias !8315
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.p, ptr %i.y, align 8, !alias.scope !8316, !noalias !8315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8317
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !8315, !align !33, !noundef !28
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_RNvXs6u_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9ParameterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXs83_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8329)
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inCsEhZmuQNqkz_11ruff_linter()
          to label %.noexc1 unwind label %bb.j, !inline_history !8301 ; 3 uses

.noexc1:                                          ; preds = %bb.h
  %i.ac = load ptr, ptr %i.z, align 8, !alias.scope !8329, !noalias !8315, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8330
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %i.ac)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.i, !noalias !8330, !inline_history !8302

bb.i:                                             ; preds = %.noexc1
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 72, i64 noundef 8) #28, !noalias !8330, !inline_history !8301
  br label %.body

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.noexc1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !8330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8330
  br label %_RNvXs6u_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9ParameterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.ad, %bb.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8332), !noalias !8315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8333), !noalias !8315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8334), !noalias !8315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8335), !noalias !8315
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.ag = load i8, ptr %i.af, align 1, !range !61, !alias.scope !8336, !noalias !8315, !noundef !28
  %i.ah = and i8 %i.ag, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.ah, -48
  br i1 %switch.i.i.i.i.i, label %bb.k, label %common.resume

bb.k:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8337), !noalias !8315
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !8338, !noalias !8315, !nonnull !28, !noundef !28
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.ai = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !8339
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %common.resume, !prof !31

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x)
end_hunk_0
