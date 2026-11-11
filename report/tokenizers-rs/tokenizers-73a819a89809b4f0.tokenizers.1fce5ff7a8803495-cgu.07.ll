Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.07?download=true
inline.NumInlined: 820
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13bytes_to_char:bb.a
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1375 {
bb.a:
  %i.a = or i64 %4, %3
  %or.cond = icmp eq i64 %i.a, 0                  ; 3 uses
  %i.b = icmp eq i64 %3, %4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 25 uses
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit, %bb.b
  %.sroa.1866.0 = phi i64 [ 0, %bb.b ], [ %i.eg, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit ] ; 5 uses
  %.sroa.063.0 = phi ptr [ %1, %bb.b ], [ %.sroa.063.4, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit ] ; 7 uses
  %i.d = xor i64 %3, -1
  %.sroa.01.0.i.i.i106 = add i64 %4, %i.d         ; 2 uses
  %i.e = icmp eq ptr %.sroa.063.0, %i.c
  br i1 %i.e, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.f = ptrtoint ptr %.sroa.063.0 to i64         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 1 ; 4 uses
  %i.h = load i8, ptr %.sroa.063.0, align 1, !noalias !1376, !noundef !9 ; 4 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %.thread161, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel: ; preds = %.lr.ph.preheader
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !noalias !1376, !noundef !9
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel
  %i.t = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.m, align 1, !noalias !1376, !noundef !9
  %i.w = shl nuw nsw i32 %i.q, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.k, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel
  %i.ad = icmp ne ptr %i.u, %i.c
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !1376, !noundef !9
  %i.ag = shl nuw nsw i32 %i.k, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.d

.thread161:                                       ; preds = %.lr.ph.preheader
  %i.an = ptrtoint ptr %i.g to i64
  %i.ao = sub i64 %.sroa.1866.0, %i.f
  %i.ap = add i64 %i.ao, %i.an
  %.sroa.9.2.peel163 = select i1 %or.cond, i64 0, i64 %.sroa.1866.0
  br label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel
  %i.aq = phi ptr [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel ], [ %i.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i.peel = phi i32 [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.peel ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.peel ], [ %i.r, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.peel ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %.sroa.1866.0, %i.f
  %i.au = add i64 %i.at, %i.as                    ; 3 uses
  %.sroa.9.2.peel = select i1 %or.cond, i64 0, i64 %.sroa.1866.0 ; 3 uses
  %i.av = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 128
  br i1 %i.av, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 2048
  br i1 %i.aw, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 65536
  %..i.i.i.i.i.peel = select i1 %i.ax, i64 3, i64 4
  br label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel: ; preds = %.thread161, %bb.f, %bb.e, %bb.d
  %.sroa.9.2.peel164 = phi i64 [ %.sroa.9.2.peel, %bb.e ], [ %.sroa.9.2.peel, %bb.f ], [ %.sroa.9.2.peel, %bb.d ], [ %.sroa.9.2.peel163, %.thread161 ] ; 2 uses
  %i.ay = phi i64 [ %i.au, %bb.e ], [ %i.au, %bb.f ], [ %i.au, %bb.d ], [ %i.ap, %.thread161 ]
  %i.az = phi ptr [ %i.aq, %bb.e ], [ %i.aq, %bb.f ], [ %i.aq, %bb.d ], [ %i.g, %.thread161 ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.peel = phi i64 [ 2, %bb.e ], [ %..i.i.i.i.i.peel, %bb.f ], [ 1, %bb.d ], [ 1, %.thread161 ]
  %i.ba = add i64 %.sroa.0.0.i.i.i.i.i.peel, %.sroa.1866.0
  %i.bb = icmp eq i64 %.sroa.01.0.i.i.i106, 0
  %i.bc = icmp eq ptr %i.az, %i.c
  %or.cond182 = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond182, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i
  %.sroa.01.0.i.i.i110.in = phi i64 [ %.sroa.01.0.i.i.i110, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i ], [ %.sroa.01.0.i.i.i106, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ]
  %i.bd = phi ptr [ %i.cz, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i ], [ %i.az, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ] ; 6 uses
  %i.be = phi i64 [ %i.cy, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i ], [ %i.ay, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ] ; 3 uses
  %.sroa.01.0.i.i.i110 = add i64 %.sroa.01.0.i.i.i110.in, -1 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  %i.bh = load i8, ptr %i.bd, align 1, !noalias !1376, !noundef !9 ; 4 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %.thread165, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i: ; preds = %.lr.ph
  %i.bj = and i8 %i.bh, 31
  %i.bk = zext nneg i8 %i.bj to i32               ; 3 uses
  %i.bl = icmp ne ptr %i.bg, %i.c
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 3 uses
  %i.bn = load i8, ptr %i.bg, align 1, !noalias !1376, !noundef !9
  %i.bo = shl nuw nsw i32 %i.bk, 6
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i32               ; 2 uses
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = icmp samesign ugt i8 %i.bh, -33
  br i1 %i.bs, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i, label %bb.g

.thread165:                                       ; preds = %.lr.ph
  %i.bt = ptrtoint ptr %i.bg to i64
  %i.bu = sub i64 %i.be, %i.bf
  %i.bv = add i64 %i.bu, %i.bt
  br label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i
  %i.bw = icmp ne ptr %i.bm, %i.c
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 3 ; 3 uses
  %i.by = load i8, ptr %i.bm, align 1, !noalias !1376, !noundef !9
  %i.bz = shl nuw nsw i32 %i.bq, 6
  %i.ca = and i8 %i.by, 63
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb            ; 2 uses
  %i.cd = shl nuw nsw i32 %i.bk, 12
  %i.ce = or disjoint i32 %i.cc, %i.cd
  %i.cf = icmp samesign ugt i8 %i.bh, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i
  %i.cg = icmp ne ptr %i.bx, %i.c
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.ci = load i8, ptr %i.bx, align 1, !noalias !1376, !noundef !9
  %i.cj = shl nuw nsw i32 %i.bk, 18
  %i.ck = and i32 %i.cj, 1835008
  %i.cl = shl nuw nsw i32 %i.cc, 6
  %i.cm = and i8 %i.ci, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = or disjoint i32 %i.co, %i.ck
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i
  %i.cq = phi ptr [ %i.bx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i ], [ %i.ch, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ce, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i ], [ %i.cp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i ] ; 4 uses
  %i.cr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.be, %i.bf
  %i.cu = add i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 128
  br i1 %i.cv, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 2048
  br i1 %i.cw, label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 65536
  %..i.i.i.i.i = select i1 %i.cx, i64 3, i64 4
  br label %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i

_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i: ; preds = %.thread165, %bb.i, %bb.h, %bb.g
  %i.cy = phi i64 [ %i.cu, %bb.h ], [ %i.cu, %bb.i ], [ %i.cu, %bb.g ], [ %i.bv, %.thread165 ]
  %i.cz = phi ptr [ %i.cq, %bb.h ], [ %i.cq, %bb.i ], [ %i.cq, %bb.g ], [ %i.bg, %.thread165 ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 2, %bb.h ], [ %..i.i.i.i.i, %bb.i ], [ 1, %bb.g ], [ 1, %.thread165 ]
  %i.da = icmp eq i64 %.sroa.01.0.i.i.i110, 0
  %i.db = icmp eq ptr %i.cz, %i.c
  %or.cond173 = select i1 %i.da, i1 true, i1 %i.db
  br i1 %or.cond173, label %.thread.loopexit172, label %.lr.ph, !llvm.loop !1326

bb.j:                                             ; preds = %bb.b
  %i.dc = add i64 %3, -1                          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %.preheader96

..loopexit_crit_edge.i:                           ; preds = %bb.j
  %.pre5.i = ptrtoint ptr %1 to i64
  br label %.loopexit.i

.preheader96:                                     ; preds = %bb.j, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i
  %i.dd = phi i64 [ %i.ds, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ], [ 0, %bb.j ]
  %i.de = phi ptr [ %i.dp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ], [ %1, %bb.j ] ; 6 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.dt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ], [ %i.dc, %bb.j ]
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = icmp eq ptr %i.de, %i.c
  br i1 %i.dg, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.de, align 1, !noalias !1377, !noundef !9 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i: ; preds = %bb.k
  %i.dk = icmp ne ptr %i.dh, %i.c
  tail call void @llvm.assume(i1 %i.dk), !noalias !1378
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.dm = icmp samesign ugt i8 %i.di, -33
  br i1 %i.dm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i
  %i.dn = icmp ne ptr %i.dl, %i.c
  tail call void @llvm.assume(i1 %i.dn), !noalias !1378
  %i.do = icmp samesign ugt i8 %i.di, -17
  %spec.select.v = select i1 %i.do, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %i.de, i64 %spec.select.v
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i, %bb.k, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i
  %i.dp = phi ptr [ %spec.select, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i ], [ %i.dh, %bb.k ], [ %i.dl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i ] ; 3 uses
  %i.dq = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dr = sub i64 %i.dq, %i.df
  %i.ds = add i64 %i.dr, %i.dd                    ; 2 uses
  %i.dt = add i64 %.sroa.01.0.i.i.i.i, -1         ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.loopexit.i, label %.preheader96

.loopexit.i:                                      ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i, %..loopexit_crit_edge.i
  %.sroa.1866.2 = phi i64 [ 0, %..loopexit_crit_edge.i ], [ %i.ds, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ]
  %.pre-phi.i = phi i64 [ %.pre5.i, %..loopexit_crit_edge.i ], [ %i.dq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ]
  %5 = phi ptr [ %1, %..loopexit_crit_edge.i ], [ %i.dp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ] ; 5 uses
  %i.dv = icmp eq ptr %5, %i.c
  br i1 %i.dv, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.dx = load i8, ptr %5, align 1, !noalias !1379, !noundef !9 ; 3 uses
  %i.dy = icmp sgt i8 %i.dx, -1
  br i1 %i.dy, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i: ; preds = %bb.l
  %i.dz = icmp ne ptr %i.dw, %i.c
  tail call void @llvm.assume(i1 %i.dz), !noalias !1378
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.eb = icmp samesign ugt i8 %i.dx, -33
  br i1 %i.eb, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %i.ec = icmp ne ptr %i.ea, %i.c
  tail call void @llvm.assume(i1 %i.ec), !noalias !1378
  %i.ed = icmp samesign ugt i8 %i.dx, -17
  %spec.select191.v = select i1 %i.ed, i64 4, i64 3
  %spec.select191 = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select191.v
  br label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit

_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, %bb.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %.sroa.063.4 = phi ptr [ %i.ea, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i ], [ %i.dw, %bb.l ], [ %spec.select191, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i ] ; 2 uses
  %i.ee = ptrtoint ptr %.sroa.063.4 to i64
  %i.ef = sub i64 %.sroa.1866.2, %.pre-phi.i
  %i.eg = add i64 %i.ef, %i.ee
  br label %bb.c

bb.m:                                             ; preds = %bb.a
  %.not.i.i25 = icmp eq i64 %4, 0
  br i1 %.not.i.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56, %bb.m
  %.sroa.18.0 = phi i64 [ 0, %bb.m ], [ %i.fw, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56 ] ; 8 uses
  %.sroa.059.0 = phi ptr [ %1, %bb.m ], [ %.sroa.059.4, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56 ] ; 5 uses
  %i.eh = icmp eq ptr %.sroa.059.0, %i.c
  br i1 %i.eh, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.n
  %i.ei = load i8, ptr %.sroa.059.0, align 1, !noalias !1380, !noundef !9 ; 3 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31: ; preds = %.lr.ph119
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 1
  %i.el = icmp ne ptr %i.ek, %i.c
  tail call void @llvm.assume(i1 %i.el)
  %i.em = icmp samesign ugt i8 %i.ei, -33
  br i1 %i.em, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33, label %.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 2
  %i.eo = icmp ne ptr %i.en, %i.c
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ugt i8 %i.ei, -17
  br i1 %i.ep, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34, label %.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 3
  %i.er = icmp ne ptr %i.eq, %i.c
  tail call void @llvm.assume(i1 %i.er)
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.es = add i64 %4, -1                          ; 2 uses
  %.not.i.i.i35 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.i35, label %..loopexit_crit_edge.i51, label %.preheader

..loopexit_crit_edge.i51:                         ; preds = %bb.o
  %.pre5.i55 = ptrtoint ptr %1 to i64
  br label %.loopexit.i41

.preheader:                                       ; preds = %bb.o, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50
  %i.et = phi i64 [ %i.fi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ 0, %bb.o ]
  %i.eu = phi ptr [ %i.ff, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ %1, %bb.o ] ; 6 uses
  %.sroa.01.0.i.i.i.i38 = phi i64 [ %i.fj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ %i.es, %bb.o ]
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = icmp eq ptr %i.eu, %i.c
  br i1 %i.ew, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  %i.ey = load i8, ptr %i.eu, align 1, !noalias !1381, !noundef !9 ; 3 uses
  %i.ez = icmp sgt i8 %i.ey, -1
  br i1 %i.ez, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39: ; preds = %bb.p
  %i.fa = icmp ne ptr %i.ex, %i.c
  tail call void @llvm.assume(i1 %i.fa), !noalias !1382
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 2 ; 2 uses
  %i.fc = icmp samesign ugt i8 %i.ey, -33
  br i1 %i.fc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39
  %i.fd = icmp ne ptr %i.fb, %i.c
  tail call void @llvm.assume(i1 %i.fd), !noalias !1382
  %i.fe = icmp samesign ugt i8 %i.ey, -17
  %spec.select192.v = select i1 %i.fe, i64 4, i64 3
  %spec.select192 = getelementptr inbounds nuw i8, ptr %i.eu, i64 %spec.select192.v
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49, %bb.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39
  %i.ff = phi ptr [ %spec.select192, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49 ], [ %i.ex, %bb.p ], [ %i.fb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39 ] ; 3 uses
  %i.fg = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fh = sub i64 %i.fg, %i.ev
  %i.fi = add i64 %i.fh, %i.et                    ; 2 uses
  %i.fj = add i64 %.sroa.01.0.i.i.i.i38, -1       ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.loopexit.i41, label %.preheader

.loopexit.i41:                                    ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50, %..loopexit_crit_edge.i51
  %.sroa.18.2 = phi i64 [ 0, %..loopexit_crit_edge.i51 ], [ %i.fi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ]
  %.pre-phi.i42 = phi i64 [ %.pre5.i55, %..loopexit_crit_edge.i51 ], [ %i.fg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ]
  %6 = phi ptr [ %1, %..loopexit_crit_edge.i51 ], [ %i.ff, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ] ; 5 uses
  %i.fl = icmp eq ptr %6, %i.c
  br i1 %i.fl, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit.i41
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.fn = load i8, ptr %6, align 1, !noalias !1383, !noundef !9 ; 3 uses
  %i.fo = icmp sgt i8 %i.fn, -1
  br i1 %i.fo, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43: ; preds = %bb.q
  %i.fp = icmp ne ptr %i.fm, %i.c
  tail call void @llvm.assume(i1 %i.fp), !noalias !1382
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.fr = icmp samesign ugt i8 %i.fn, -33
  br i1 %i.fr, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43
  %i.fs = icmp ne ptr %i.fq, %i.c
  tail call void @llvm.assume(i1 %i.fs), !noalias !1382
  %i.ft = icmp samesign ugt i8 %i.fn, -17
  %spec.select193.v = select i1 %i.ft, i64 4, i64 3
  %spec.select193 = getelementptr inbounds nuw i8, ptr %6, i64 %spec.select193.v
  br label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56

_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47, %bb.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43
  %.sroa.059.4 = phi ptr [ %i.fq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43 ], [ %i.fm, %bb.q ], [ %spec.select193, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47 ] ; 2 uses
  %i.fu = ptrtoint ptr %.sroa.059.4 to i64
  %i.fv = sub i64 %.sroa.18.2, %.pre-phi.i42
  %i.fw = add i64 %i.fv, %i.fu
  br label %bb.n

_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit: ; preds = %.preheader96, %.preheader, %bb.c, %bb.n, %.loopexit.i41, %.loopexit.i
  br i1 %or.cond, label %.thread, label %bb.r

.thread.loopexit172:                              ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i
  %i.fx = add i64 %.sroa.0.0.i.i.i.i.i, %i.be
  br label %.thread

.thread:                                          ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34, %.lr.ph119, %.thread.loopexit172, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit
  %.sroa.8.08592 = phi i64 [ %i.fx, %.thread.loopexit172 ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ], [ %i.ba, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ], [ %.sroa.18.0, %.lr.ph119 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31 ]
  %.sroa.9.08791 = phi i64 [ %.sroa.9.2.peel164, %.thread.loopexit172 ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ], [ %.sroa.9.2.peel164, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ], [ %.sroa.18.0, %.lr.ph119 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.08791, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.08592, ptr %i.fz, align 8
  br label %bb.r

bb.r:                                             ; preds = %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, %.thread
  %.sink = phi i64 [ 1, %.thread ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB6_9tokenizer10Normalizer9normalize(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1465 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 44 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !9 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.h = load i64, ptr %i.b, align 8, !range !13, !noundef !9
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !17, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !16, !noundef !9 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  %i.s = icmp ule i64 %i.g, %i.p
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.p, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = load ptr, ptr %i.n, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 4 uses
  store i64 %i.g, ptr %i.x, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 9 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  store i64 %i.g, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 0, ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i8 2, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 77 ; 5 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 78 ; 8 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 79 ; 5 uses
  store <4 x i8> <i8 1, i8 0, i8 4, i8 -1>, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 10 uses
  store i8 -1, ptr %.sroa.16.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 0, ptr %i.y, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 0, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.912.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  store i64 %i.g, ptr %.sroa.912.0..sroa_idx, align 8
  %.sroa.1013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store i64 %i.g, ptr %.sroa.1013.0..sroa_idx, align 8
  %.sroa.1114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store i32 0, ptr %.sroa.1114.0..sroa_idx, align 8
  %.sroa.1114.sroa.4.0..sroa.1114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  store i32 0, ptr %.sroa.1114.sroa.4.0..sroa.1114.0..sroa_idx.sroa_idx, align 4
  %.sroa.1114.sroa.5.0..sroa.1114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i8 2, ptr %.sroa.1114.sroa.5.0..sroa.1114.0..sroa_idx.sroa_idx, align 8
  %.sroa.1215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  store <4 x i8> <i8 1, i8 0, i8 4, i8 -1>, ptr %.sroa.1215.0..sroa_idx, align 4
  %.sroa.1619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i8 -1, ptr %.sroa.1619.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.z = icmp eq i64 %i.g, 0
  br i1 %i.z, label %_RINvYNtNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme9GraphemesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callReNCNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB2B_9tokenizer10Normalizer9normalize0E0EB2B_.exit.thread, label %.lr.ph.i

_RINvYNtNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme9GraphemesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callReNCNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB2B_9tokenizer10Normalizer9normalize0E0EB2B_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ds

.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 5 uses
  %i.ac = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !1467, !noundef !9
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.invoke553, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ae = load i64, ptr %i.x, align 8, !alias.scope !1468, !noundef !9
  %i.af = load ptr, ptr %i.w, align 8, !alias.scope !1468, !nonnull !9, !noundef !9
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %i.ag = phi i64 [ %i.ae, %.lr.ph ], [ %i.ww, %.backedge ] ; 34 uses
  %i.ah = phi ptr [ %i.af, %.lr.ph ], [ %i.wv, %.backedge ] ; 38 uses
  %i.ai = phi i64 [ 0, %.lr.ph ], [ %.be, %.backedge ] ; 23 uses
  %.sroa.0.0657 = phi i1 [ false, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %i.aj = icmp eq i64 %i.ai, 0                    ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp ult i64 %i.ai, %i.ag
  br i1 %.not.i.i.i.i, label %bb.f, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.e
  %i.ak = icmp eq i64 %i.ai, %i.ag
  br i1 %i.ak, label %bb.g, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1472, !noalias !1473, !noundef !9
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %bb.g, label %.invoke

bb.g:                                             ; preds = %bb.f, %.split.i.i.i.i, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag ; 5 uses
  %i.aq = icmp samesign eq i64 %i.ai, %i.ag
  br i1 %i.aq, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread59.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ao, align 1, !alias.scope !1471, !noalias !1474, !noundef !9 ; 5 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i: ; preds = %bb.h
  %i.au = and i8 %i.as, 31
  %i.av = zext nneg i8 %i.au to i32               ; 3 uses
end_hunk_0
