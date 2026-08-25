Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.07?download=true
inline.NumInlined: 820
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytes:bb.a
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
  %i.di = load i8, ptr %i.de, align 1, !noalias !1273, !noundef !3 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i: ; preds = %bb.k
  %i.dk = icmp ne ptr %i.dh, %i.c
  tail call void @llvm.assume(i1 %i.dk), !noalias !1286
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.dm = icmp samesign ugt i8 %i.di, -33
  br i1 %i.dm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i
  %i.dn = icmp ne ptr %i.dl, %i.c
  tail call void @llvm.assume(i1 %i.dn), !noalias !1286
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
  %i.dv = phi ptr [ %1, %..loopexit_crit_edge.i ], [ %i.dp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i ] ; 5 uses
  %i.dw = icmp eq ptr %i.dv, %i.c
  br i1 %i.dw, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %i.dy = load i8, ptr %i.dv, align 1, !noalias !1287, !noundef !3 ; 3 uses
  %i.dz = icmp sgt i8 %i.dy, -1
  br i1 %i.dz, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i: ; preds = %bb.l
  %i.ea = icmp ne ptr %i.dx, %i.c
  tail call void @llvm.assume(i1 %i.ea), !noalias !1286
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  %i.ec = icmp samesign ugt i8 %i.dy, -33
  br i1 %i.ec, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %i.ed = icmp ne ptr %i.eb, %i.c
  tail call void @llvm.assume(i1 %i.ed), !noalias !1286
  %i.ee = icmp samesign ugt i8 %i.dy, -17
  %spec.select194.v = select i1 %i.ee, i64 4, i64 3
  %spec.select194 = getelementptr inbounds nuw i8, ptr %i.dv, i64 %spec.select194.v
  br label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit

_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, %bb.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i
  %.sroa.063.4 = phi ptr [ %i.eb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i ], [ %i.dx, %bb.l ], [ %spec.select194, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i ] ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.063.4 to i64
  %i.eg = sub i64 %.sroa.1866.2, %.pre-phi.i
  %i.eh = add i64 %i.eg, %i.ef
  br label %bb.c

bb.m:                                             ; preds = %bb.a
  %.not.i.i25 = icmp eq i64 %4, 0
  br i1 %.not.i.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56, %bb.m
  %.sroa.18.0 = phi i64 [ 0, %bb.m ], [ %i.fy, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56 ] ; 8 uses
  %.sroa.059.0 = phi ptr [ %1, %bb.m ], [ %.sroa.059.4, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56 ] ; 5 uses
  %i.ei = icmp eq ptr %.sroa.059.0, %i.c
  br i1 %i.ei, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %bb.n
  %i.ej = load i8, ptr %.sroa.059.0, align 1, !noalias !1292, !noundef !3 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31: ; preds = %.lr.ph119.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 1
  %i.em = icmp ne ptr %i.el, %i.c
  tail call void @llvm.assume(i1 %i.em)
  %i.en = icmp samesign ugt i8 %i.ej, -33
  br i1 %i.en, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33, label %.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 2
  %i.ep = icmp ne ptr %i.eo, %i.c
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp samesign ugt i8 %i.ej, -17
  br i1 %i.eq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34, label %.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 3
  %i.es = icmp ne ptr %i.er, %i.c
  tail call void @llvm.assume(i1 %i.es)
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.et = add i64 %4, -1                          ; 2 uses
  %.not.i.i.i35 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i35, label %..loopexit_crit_edge.i51, label %.preheader

..loopexit_crit_edge.i51:                         ; preds = %bb.o
  %.pre5.i55 = ptrtoint ptr %1 to i64
  br label %.loopexit.i41

.preheader:                                       ; preds = %bb.o, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50
  %i.eu = phi i64 [ %i.fj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ 0, %bb.o ]
  %i.ev = phi ptr [ %i.fg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ %1, %bb.o ] ; 6 uses
  %.sroa.01.0.i.i.i.i38 = phi i64 [ %i.fk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ], [ %i.et, %bb.o ]
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = icmp eq ptr %i.ev, %i.c
  br i1 %i.ex, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  %i.ez = load i8, ptr %i.ev, align 1, !noalias !1309, !noundef !3 ; 3 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39: ; preds = %bb.p
  %i.fb = icmp ne ptr %i.ey, %i.c
  tail call void @llvm.assume(i1 %i.fb), !noalias !1322
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 2 ; 2 uses
  %i.fd = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39
  %i.fe = icmp ne ptr %i.fc, %i.c
  tail call void @llvm.assume(i1 %i.fe), !noalias !1322
  %i.ff = icmp samesign ugt i8 %i.ez, -17
  %spec.select195.v = select i1 %i.ff, i64 4, i64 3
  %spec.select195 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %spec.select195.v
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49, %bb.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39
  %i.fg = phi ptr [ %spec.select195, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i49 ], [ %i.ey, %bb.p ], [ %i.fc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i39 ] ; 3 uses
  %i.fh = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fi = sub i64 %i.fh, %i.ew
  %i.fj = add i64 %i.fi, %i.eu                    ; 2 uses
  %i.fk = add i64 %.sroa.01.0.i.i.i.i38, -1       ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.loopexit.i41, label %.preheader

.loopexit.i41:                                    ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50, %..loopexit_crit_edge.i51
  %.sroa.18.2 = phi i64 [ 0, %..loopexit_crit_edge.i51 ], [ %i.fj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ]
  %.pre-phi.i42 = phi i64 [ %.pre5.i55, %..loopexit_crit_edge.i51 ], [ %i.fh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ]
  %i.fm = phi ptr [ %1, %..loopexit_crit_edge.i51 ], [ %i.fg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i50 ] ; 5 uses
  %i.fn = icmp eq ptr %i.fm, %i.c
  br i1 %i.fn, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit.i41
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  %i.fp = load i8, ptr %i.fm, align 1, !noalias !1323, !noundef !3 ; 3 uses
  %i.fq = icmp sgt i8 %i.fp, -1
  br i1 %i.fq, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43: ; preds = %bb.q
  %i.fr = icmp ne ptr %i.fo, %i.c
  tail call void @llvm.assume(i1 %i.fr), !noalias !1322
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 2 ; 2 uses
  %i.ft = icmp samesign ugt i8 %i.fp, -33
  br i1 %i.ft, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43
  %i.fu = icmp ne ptr %i.fs, %i.c
  tail call void @llvm.assume(i1 %i.fu), !noalias !1322
  %i.fv = icmp samesign ugt i8 %i.fp, -17
  %spec.select196.v = select i1 %i.fv, i64 4, i64 3
  %spec.select196 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %spec.select196.v
  br label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56

_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11CharIndicesNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2JiOgHzbbc7_10tokenizers.exit56: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47, %bb.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43
  %.sroa.059.4 = phi ptr [ %i.fs, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i43 ], [ %i.fo, %bb.q ], [ %spec.select196, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i47 ] ; 2 uses
  %i.fw = ptrtoint ptr %.sroa.059.4 to i64
  %i.fx = sub i64 %.sroa.18.2, %.pre-phi.i42
  %i.fy = add i64 %i.fx, %i.fw
  br label %bb.n

_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit: ; preds = %.preheader96, %.preheader, %bb.c, %bb.n, %.loopexit.i41, %.loopexit.i
  br i1 %or.cond, label %.thread, label %bb.r

.thread.loopexit175:                              ; preds = %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i
  %i.fz = add i64 %.sroa.0.0.i.i.i.i.i, %i.be
  br label %.thread

.thread:                                          ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31, %.lr.ph119.preheader, %.thread.loopexit175, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit
  %.sroa.8.08592 = phi i64 [ %i.fz, %.thread.loopexit175 ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ], [ %i.ba, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ], [ %.sroa.18.0, %.lr.ph119.preheader ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34 ]
  %.sroa.9.08791 = phi i64 [ %.sroa.9.2.peel167, %.thread.loopexit175 ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ], [ %.sroa.9.2.peel167, %_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkTjcENCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0E0B1Q_.exit.i.i.i.peel ], [ %.sroa.18.0, %.lr.ph119.preheader ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i31 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i33 ], [ %.sroa.18.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i34 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.08791, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.08592, ptr %i.gb, align 8
  br label %bb.r

bb.r:                                             ; preds = %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit, %.thread
  %.sink = phi i64 [ 1, %.thread ], [ 0, %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtB8_4skip4SkipNtNtNtBc_3str4iter11CharIndicesEENtB6_8SpecTake13spec_for_eachNCNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer13char_to_bytess_0EB2p_.exit ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB6_9tokenizer10Normalizer9normalize(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 44 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.h = load i64, ptr %i.b, align 8, !range !29, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !84, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !80, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = icmp ule i64 %i.g, %i.p
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.p, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.z = icmp eq i64 %i.g, 0
  br i1 %i.z, label %_RINvYNtNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme9GraphemesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callReNCNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB2B_9tokenizer10Normalizer9normalize0E0EB2B_.exit.thread, label %.lr.ph.i

_RINvYNtNtCsjtLiwbyrj3U_20unicode_segmentation8grapheme9GraphemesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB10_8for_each4callReNCNvXNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiledNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledNtNtB2B_9tokenizer10Normalizer9normalize0E0EB2B_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ds

.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 5 uses
  %i.ac = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !1331, !noalias !1336, !noundef !3
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.invoke542, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ae = load i64, ptr %i.x, align 8, !alias.scope !1340, !noalias !1341, !noundef !3
  %i.af = load ptr, ptr %i.w, align 8, !alias.scope !1340, !noalias !1341, !nonnull !3, !noundef !3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %i.ag = phi i64 [ %i.ae, %.lr.ph ], [ %i.ww, %.backedge ] ; 34 uses
  %i.ah = phi ptr [ %i.af, %.lr.ph ], [ %i.wv, %.backedge ] ; 38 uses
  %i.ai = phi i64 [ 0, %.lr.ph ], [ %.be, %.backedge ] ; 23 uses
  %.sroa.0.0636 = phi i1 [ false, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
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
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1348, !noalias !1351, !noundef !3
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %bb.g, label %.invoke

bb.g:                                             ; preds = %bb.f, %.split.i.i.i.i, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag ; 5 uses
  %i.aq = icmp samesign eq i64 %i.ai, %i.ag
  br i1 %i.aq, label %_RNvMs4_NtCsjtLiwbyrj3U_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread59.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ao, align 1, !alias.scope !1346, !noalias !1352, !noundef !3 ; 5 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i: ; preds = %bb.h
  %i.au = and i8 %i.as, 31
  %i.av = zext nneg i8 %i.au to i32               ; 3 uses
  %i.aw = add nuw nsw i64 %i.ai, 1
  %i.ax = icmp samesign ne i64 %i.aw, %i.ag
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ar, align 1, !alias.scope !1346, !noalias !1352, !noundef !3
  %i.ba = shl nuw nsw i32 %i.av, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i8 %i.as, -33
  br i1 %i.be, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = zext nneg i8 %i.as to i32
  br label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i
  %i.bg = add nuw nsw i64 %i.ai, 2
  %i.bh = icmp samesign ne i64 %i.bg, %i.ag
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 3 ; 2 uses
  %i.bj = load i8, ptr %i.ay, align 1, !alias.scope !1346, !noalias !1352, !noundef !3
  %i.bk = shl nuw nsw i32 %i.bc, 6
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm            ; 2 uses
  %i.bo = shl nuw nsw i32 %i.av, 12
  %i.bp = or disjoint i32 %i.bn, %i.bo
  %i.bq = icmp samesign ugt i8 %i.as, -17
  br i1 %i.bq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i, label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i
  %i.br = add nuw nsw i64 %i.ai, 3
  %i.bs = icmp samesign ne i64 %i.br, %i.ag
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.bu = load i8, ptr %i.bi, align 1, !alias.scope !1346, !noalias !1352, !noundef !3
  %i.bv = shl nuw nsw i32 %i.av, 18
  %i.bw = and i32 %i.bv, 1835008
  %i.bx = shl nuw nsw i32 %i.bn, 6
  %i.by = and i8 %i.bu, 63
end_hunk_0
