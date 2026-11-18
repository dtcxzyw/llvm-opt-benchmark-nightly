Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_:bb.a
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 3 ; 3 uses
  %i.bb = load i8, ptr %i.ar, align 1, !noalias !1631, !noundef !5
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.am, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i, label %bb.h

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i
  %i.bj = icmp ne ptr %i.ba, %2
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 4
  %i.bl = load i8, ptr %i.ba, align 1, !noalias !1631, !noundef !5
  %i.bm = shl nuw nsw i32 %i.ap, 18
  %i.bn = and i32 %i.bm, 1835008
  %i.bo = shl nuw nsw i32 %i.bf, 6
  %i.bp = and i8 %i.bl, 63
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = or disjoint i32 %i.br, %i.bn
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i
  %.sroa.036.1.ph = phi ptr [ %i.ar, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i ], [ %i.ba, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i ], [ %i.al, %bb.g ] ; 2 uses
  %.sroa.03.0.ph = phi i32 [ %i.aw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i ], [ %i.bs, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i ], [ %i.ay, %bb.g ] ; 2 uses
  %i.bt = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.03.0.ph) ; 2 uses
  %i.bu = extractvalue { i64, i64 } %i.bt, 0
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %.loopexit, label %.peel.next, !llvm.loop !1621

.loopexit:                                        ; preds = %bb.h, %bb.e
  %.sroa.036.1.ph.lcssa = phi ptr [ %.sroa.036.1.ph.peel, %bb.e ], [ %.sroa.036.1.ph, %bb.h ] ; 6 uses
  %.sroa.03.0.ph.lcssa = phi i32 [ %.sroa.03.0.ph.peel, %bb.e ], [ %.sroa.03.0.ph, %bb.h ]
  %.lcssa = phi { i64, i64 } [ %i.ai, %bb.e ], [ %i.bt, %bb.h ]
  %i.bw = extractvalue { i64, i64 } %.lcssa, 1    ; 3 uses
  %i.bx = icmp ugt i64 %i.bw, %.sroa.013.0.ph10
  br i1 %i.bx, label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %.not = icmp ne i64 %i.bw, %.sroa.013.0.ph10    ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.036.1.ph.lcssa, %2
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECs8frGy5WneL6_4fish.exit, label %bb.j

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.i
  tail call void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %.sroa.03.0.ph.lcssa, i32 noundef %.sroa.0.0.copyload.i, i64 noundef 3, i64 %0)
  %i.by = icmp eq i64 %.sroa.0.0.ph11, -1
  br i1 %i.by, label %bb.l, label %.outer

bb.j:                                             ; preds = %bb.i
  %i.bz = load i8, ptr %.sroa.036.1.ph.lcssa, align 1, !noalias !1632, !noundef !5 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i: ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.036.1.ph.lcssa, i64 1
  %i.cc = icmp ne ptr %i.cb, %2
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i, label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.036.1.ph.lcssa, i64 2
  %i.cf = icmp ne ptr %i.ce, %2
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i, label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.036.1.ph.lcssa, i64 3
  %i.ci = icmp ne ptr %i.ch, %2
  tail call void @llvm.assume(i1 %i.ci)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i
  tail call void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 8230, i32 noundef %.sroa.0.0.copyload.i, i64 noundef 3, i64 %0)
  %i.cj = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230) ; 2 uses
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.m, label %bb.n, !prof !8

.outer:                                           ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECs8frGy5WneL6_4fish.exit
  %i.cm = add nuw i64 %.sroa.0.0.ph11, 1
  %i.cn = sub nuw i64 %.sroa.013.0.ph10, %i.bw    ; 2 uses
  br i1 %.not, label %bb.b, label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit

bb.l:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.co = extractvalue { i64, i64 } %i.cj, 1
  %i.cp = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph10, i64 %i.co)
  br label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37
  unreachable

_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit: ; preds = %.loopexit, %.outer, %bb.b, %.peel.next, %bb.m
  %.sroa.013.2 = phi i64 [ %i.cp, %bb.m ], [ %.sroa.013.0.ph10, %.peel.next ], [ %i.cn, %.outer ], [ %.sroa.013.0.ph10, %bb.b ], [ %.sroa.013.0.ph10, %.loopexit ] ; 2 uses
  %i.cq = icmp ult i64 %4, %.sroa.013.2
  br i1 %i.cq, label %bb.p, label %bb.o, !prof !7

bb.o:                                             ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit
  %i.cr = sub nuw i64 %4, %.sroa.013.2
  ret i64 %i.cr

bb.p:                                             ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef range(i64 0, 4) %0, i64 %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(4) %4, i64 noundef %5, i1 noundef zeroext %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %4, align 1 ; 3 uses
  br i1 %6, label %.split.us, label %.outer.preheader.preheader

.outer.preheader.preheader:                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %.outer.preheader

.split.us:                                        ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %.outer.us

.outer.us:                                        ; preds = %bb.f, %.split.us
  %.sroa.035.0.ph.us = phi ptr [ %i.g, %bb.f ], [ %2, %.split.us ]
  %.sroa.013.0.ph.us = phi i64 [ %i.q, %bb.f ], [ %5, %.split.us ] ; 6 uses
  %.sroa.0.0.ph.us = phi i64 [ %i.p, %bb.f ], [ 0, %.split.us ] ; 2 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.g
  %i.c = load i32, ptr %.sroa.035.0.us, align 4, !noalias !1643, !noundef !5 ; 5 uses
  %i.d = xor i32 %i.c, 55296
  %i.e = add i32 %i.d, -1114112
  %i.f = icmp ult i32 %i.e, -1112064
  br i1 %i.f, label %.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.035.0.us, i64 4 ; 2 uses
  %i.h = icmp ult i32 %i.c, 1114112
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %i.c) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i64 } %i.i, 1        ; 3 uses
  %i.m = icmp ugt i64 %i.l, %.sroa.013.0.ph.us
  br i1 %i.m, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, %.sroa.013.0.ph.us
  br i1 %i.n, label %.loopexit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us: ; preds = %bb.e
  tail call void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %i.c, i32 noundef %.sroa.0.0.copyload.i, i64 noundef %0, i64 %1)
  %i.o = icmp eq i64 %.sroa.0.0.ph.us, -1
  br i1 %i.o, label %.split66.us, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us
  %i.p = add nuw i64 %.sroa.0.0.ph.us, 1
  %i.q = sub nuw i64 %.sroa.013.0.ph.us, %i.l
  br label %.outer.us

bb.g:                                             ; preds = %bb.c, %.outer.us
  %.sroa.035.0.us = phi ptr [ %i.g, %bb.c ], [ %.sroa.035.0.ph.us, %.outer.us ] ; 3 uses
  %i.r = icmp eq ptr %.sroa.035.0.us, %3
  br i1 %i.r, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.b

.outer.preheader:                                 ; preds = %.outer.preheader.preheader, %.outer
  %.sroa.0.0.ph160 = phi i64 [ %i.ay, %.outer ], [ 0, %.outer.preheader.preheader ] ; 2 uses
  %.sroa.013.0.ph159 = phi i64 [ %i.az, %.outer ], [ %5, %.outer.preheader.preheader ] ; 7 uses
  %.sroa.035.0.ph158 = phi ptr [ %.lcssa86, %.outer ], [ %2, %.outer.preheader.preheader ] ; 3 uses
  %i.s = icmp eq ptr %.sroa.035.0.ph158, %3
  br i1 %i.s, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.h

bb.h:                                             ; preds = %.outer.preheader
  %i.t = load i32, ptr %.sroa.035.0.ph158, align 4, !noalias !1643, !noundef !5 ; 5 uses
  %i.u = xor i32 %i.t, 55296
  %i.v = add i32 %i.u, -1114112
  %i.w = icmp ult i32 %i.v, -1112064
  br i1 %i.w, label %.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.035.0.ph158, i64 4 ; 2 uses
  %i.y = icmp ult i32 %i.t, 1114112
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %i.t) ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %.loopexit94, label %.peel.next

.peel.next:                                       ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %.peel.next.a

.peel.next.a:                                     ; preds = %bb.k, %.peel.next
  %.sroa.035.0 = phi ptr [ %i.ah, %bb.k ], [ %i.x, %.peel.next ] ; 3 uses
  %i.ac = icmp eq ptr %.sroa.035.0, %3
  br i1 %i.ac, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.j

bb.j:                                             ; preds = %.peel.next.a
  %i.ad = load i32, ptr %.sroa.035.0, align 4, !noalias !1643, !noundef !5 ; 5 uses
  %i.ae = xor i32 %i.ad, 55296
  %i.af = add i32 %i.ae, -1114112
  %i.ag = icmp ult i32 %i.af, -1112064
  br i1 %i.ag, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.h, %bb.j, %bb.b
  %.us-phi62 = phi i32 [ %i.c, %bb.b ], [ %i.ad, %bb.j ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1643
  store i32 %.us-phi62, ptr %i.b, align 4, !noalias !1643
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3115) #37, !noalias !1643
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 4 ; 2 uses
  %i.ai = icmp ult i32 %i.ad, 1114112
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %i.ad) ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %.loopexit94, label %.peel.next.a, !llvm.loop !1635

.loopexit94:                                      ; preds = %bb.k, %bb.i
  %.lcssa86 = phi ptr [ %i.x, %bb.i ], [ %i.ah, %bb.k ] ; 3 uses
  %.lcssa85 = phi { i64, i64 } [ %i.z, %bb.i ], [ %i.aj, %bb.k ]
  %.lcssa84 = phi i32 [ %i.t, %bb.i ], [ %i.ad, %bb.k ]
  %i.am = extractvalue { i64, i64 } %.lcssa85, 1  ; 3 uses
  %i.an = icmp ugt i64 %i.am, %.sroa.013.0.ph159
  br i1 %i.an, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.l

bb.l:                                             ; preds = %.loopexit94
  %.not = icmp ne i64 %i.am, %.sroa.013.0.ph159   ; 2 uses
  %i.ao = icmp eq ptr %.lcssa86, %3
  %or.cond = select i1 %.not, i1 true, i1 %i.ao
  br i1 %or.cond, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread, label %bb.m

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.l
  tail call void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %.lcssa84, i32 noundef %.sroa.0.0.copyload.i, i64 noundef %0, i64 %1)
  %i.ap = icmp eq i64 %.sroa.0.0.ph160, -1
  br i1 %i.ap, label %.split66.us, label %.outer

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %.lcssa86, align 4, !noalias !1644, !noundef !5 ; 3 uses
  %i.ar = xor i32 %i.aq, 55296
  %i.as = add i32 %i.ar, -1114112
  %i.at = icmp ult i32 %i.as, -1112064
  br i1 %i.at, label %.split.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit

.split.i.i.i:                                     ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1644
  store i32 %i.aq, ptr %i.a, align 4, !noalias !1644
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3115) #37, !noalias !1644
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.m
  %i.au = icmp ult i32 %i.aq, 1114112
  tail call void @llvm.assume(i1 %i.au)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit
  %.sroa.013.0.ph59 = phi i64 [ %.sroa.013.0.ph159, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ %.sroa.013.0.ph.us, %bb.e ]
  tail call void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 8230, i32 noundef %.sroa.0.0.copyload.i, i64 noundef %0, i64 %1)
  %i.av = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230) ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %bb.o, !prof !8

.outer:                                           ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread
  %i.ay = add nuw i64 %.sroa.0.0.ph160, 1
  %i.az = sub nuw i64 %.sroa.013.0.ph159, %i.am   ; 2 uses
  br i1 %.not, label %.outer.preheader, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread

.split66.us:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
  unreachable

bb.n:                                             ; preds = %.loopexit
  %i.ba = extractvalue { i64, i64 } %i.av, 1
  %i.bb = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph59, i64 %i.ba)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread

bb.o:                                             ; preds = %.loopexit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #37
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %.loopexit94, %.outer, %.outer.preheader, %.peel.next.a, %bb.d, %bb.g, %bb.n
  %.sroa.013.2 = phi i64 [ %i.bb, %bb.n ], [ %.sroa.013.0.ph159, %.peel.next.a ], [ %.sroa.013.0.ph.us, %bb.d ], [ %.sroa.013.0.ph.us, %bb.g ], [ %i.az, %.outer ], [ %.sroa.013.0.ph159, %.outer.preheader ], [ %.sroa.013.0.ph159, %.loopexit94 ] ; 2 uses
  %i.bc = icmp ult i64 %5, %.sroa.013.2
  br i1 %i.bc, label %bb.q, label %bb.p, !prof !7

bb.p:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread
  %i.bd = sub nuw i64 %5, %.sroa.013.2
  ret i64 %i.bd

bb.q:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCse7JGOylGlDZ_3nix3sys4wait7waitpidNtNtB6_6unistd3PidECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = trunc nuw i32 %2 to i1
  %. = select i1 %i.b, i32 %3, i32 0
  %i.c = call noundef i32 @waitpid(i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef %.) #40 ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 -1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i32 @_RNvMNtCse7JGOylGlDZ_3nix5errnoNtNtB2_6consts5Errno4last()
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  store i8 -1, ptr %0, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !noundef !5
  call void @_RNvMs_NtNtCse7JGOylGlDZ_3nix3sys4waitNtB4_10WaitStatus8from_raw(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, i32 noundef %i.c, i32 noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXCskOHnqPTvc0z_3lruINtB3_6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherEBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5
  %.val = load i32, ptr %i.a, align 4, !range !14, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 16, !alias.scope !1654, !noundef !5 ; 3 uses
  %i.d = icmp ugt i8 %i.c, 96
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i128, ptr %1, align 16, !alias.scope !1654, !noundef !5 ; 2 uses
  %i.f = trunc i128 %i.e to i64
  %i.g = lshr i128 %i.e, 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1654, !noundef !5
  %i.j = xor i64 %i.i, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !alias.scope !1654, !nonnull !5, !align !11, !noundef !5
  %i.m = load i64, ptr %i.l, align 8, !noalias !1654, !noundef !5
  %i.n = zext i64 %i.j to i128
  %i.o = zext i64 %i.m to i128
  %i.p = xor i128 %i.g, %i.o
  %i.q = mul nuw i128 %i.p, %i.n                  ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !1654
  %i.u = zext i32 %.val to i128
  br label %_RINvXst_NtCs8frGy5WneL6_4fish4procNtB6_3PidNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherEB8_.exit

bb.c:                                             ; preds = %bb.a
  %i.v = zext i32 %.val to i128
  %i.w = zext nneg i8 %i.c to i128
  %i.x = shl nuw i128 %i.v, %i.w
  %i.y = load i128, ptr %1, align 16, !alias.scope !1654, !noundef !5
  %i.z = or i128 %i.y, %i.x
  %i.aa = add nuw i8 %i.c, 32
  br label %_RINvXst_NtCs8frGy5WneL6_4fish4procNtB6_3PidNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherEB8_.exit

_RINvXst_NtCs8frGy5WneL6_4fish4procNtB6_3PidNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherEB8_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i128 [ %i.u, %bb.b ], [ %i.z, %bb.c ]
  %storemerge.i.i.i = phi i8 [ 32, %bb.b ], [ %i.aa, %bb.c ]
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !1654
  store i8 %storemerge.i.i.i, ptr %i.b, align 16, !alias.scope !1654
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXCskOHnqPTvc0z_3lruINtB3_6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs25YkazkrsH5_9hashbrown6hasher13DefaultHasherECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
end_hunk_0
