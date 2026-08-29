Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText18find_safe_to_break:switch.lookup
  %switch.offset.i.i = sub nsw i8 0, %i.ac
  %spec.select.i = select i1 %switch.idx.cast, i8 %switch.offset.i.i, i8 %i.ac
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread32.i, %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.05.0.lcssa30.i = phi i64 [ %i.al, %._crit_edge.thread32.i ], [ 0, %._crit_edge.i ], [ %i.v, %._crit_edge.thread.i ] ; 2 uses
  %i.ad = phi i8 [ %i.aq, %._crit_edge.thread32.i ], [ %spec.select.i, %._crit_edge.i ], [ %i.aa, %._crit_edge.thread.i ] ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.f

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.sroa.01.020.i = phi i64 [ %i.am, %.lr.ph.split.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.sroa.05.019.i = phi i64 [ %i.al, %.lr.ph.split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.af = lshr i64 %.sroa.01.020.i, 1             ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, %.sroa.05.019.i  ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.f
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.ag
  %i.aj = getelementptr i8, ptr %i.ai, i64 72
  %.val13.i = load i64, ptr %i.aj, align 8, !alias.scope !25074, !noalias !25077, !noundef !10
  %i.ak = icmp ugt i64 %1, %.val13.i
  %i.al = select i1 %i.ak, i64 %.sroa.05.019.i, i64 %i.ag, !unpredictable !10 ; 3 uses
  %i.am = sub nuw nsw i64 %.sroa.01.020.i, %i.af  ; 2 uses
  %i.an = icmp ugt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.split.i, label %._crit_edge.thread32.i

._crit_edge.thread32.i:                           ; preds = %.lr.ph.split.i
  %i.ao = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 72
  %.val1635.i = load i64, ptr %i.ap, align 8, !alias.scope !25074, !noalias !25077, !noundef !10
  %i.aq = tail call i8 @llvm.ucmp.i8.i64(i64 %1, i64 %.val1635.i)
  br label %bb.d

bb.e:                                             ; preds = %bb.b
  %spec.select25 = select i1 %switch.idx.cast, i64 0, i64 %i.f
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ar = icmp eq i8 %i.ad, -1
  %i.as = zext i1 %i.ar to i64
  %i.at = add nuw nsw i64 %.sroa.05.0.lcssa30.i, %i.as ; 6 uses
  %i.au = icmp ule i64 %i.at, %i.f
  tail call void @llvm.assume(i1 %i.au)
  %.not23 = icmp eq i64 %i.at, 0
  br i1 %.not23, label %.thread, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63

bb.g:                                             ; preds = %bb.d
  %_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_sub._RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_add = select i1 %switch.idx.cast, ptr @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_add, ptr @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_sub
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.06.0 = phi i64 [ %.sroa.05.0.lcssa30.i, %bb.g ], [ %i.ax, %bb.i ] ; 3 uses
  %i.av = tail call { i64, i64 } %_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_sub._RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_add(i64 noundef %.sroa.06.0, i64 noundef 1), !callees !25080 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %i.ax = extractvalue { i64, i64 } %i.av, 1      ; 3 uses
  %i.ay = trunc nuw i64 %i.aw to i1
  %i.az = icmp ult i64 %i.ax, %i.f
  %or.cond = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.i, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !10
  %.not = icmp eq i64 %i.bc, %1
  br i1 %.not, label %bb.h, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54: ; preds = %bb.i, %bb.h
  %i.bd = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %.sroa.06.0
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 94
  %i.bf = load i8, ptr %i.be, align 2, !range !299, !noundef !10
  %.sroa.0.0 = zext nneg i8 %i.bf to i64
  %switch.idx.cast.mask = and i8 %i.b, 1
  %i.bg = zext nneg i8 %switch.idx.cast.mask to i64
  %i.bh = add nuw i64 %.sroa.06.0, %i.bg
  br label %.thread

.thread:                                          ; preds = %bb.l, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit, %bb.c, %bb.e, %bb.f, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54
  %.sroa.7.1 = phi i64 [ %i.bh, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54 ], [ %spec.select, %bb.c ], [ %spec.select25, %bb.e ], [ %i.at, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63 ], [ %i.f, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35 ], [ 0, %bb.f ], [ %i.at, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.at, %bb.l ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit54 ], [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63 ], [ %i.f, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit35 ], [ 0, %bb.f ], [ %spec.select79, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit ], [ 0, %bb.l ]
  %i.bi = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.bj = insertvalue { i64, i64 } %i.bi, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.bj

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63: ; preds = %bb.f
  %i.bk = getelementptr [104 x i8], ptr %i.g, i64 %i.at
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !10
  %i.bn = icmp eq i64 %i.bm, %1
  br i1 %i.bn, label %bb.j, label %.thread

bb.j:                                             ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit63
  %i.bo = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.bp = sub i64 %1, %i.i                        ; 6 uses
  %.not.i64 = icmp ult i64 %i.bp, %i.m
  br i1 %.not.i64, label %bb.k, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.bq = icmp eq i64 %i.bp, %i.m
  br i1 %i.bq, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !25081, !noundef !10
  %i.bt = icmp sgt i8 %i.bs, -65
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.split.i
  %.not.i66 = icmp eq i64 %i.m, %i.bp
  br i1 %.not.i66, label %.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %rhsc = load i8, ptr %i.bu, align 1
  %rhsc.fr = freeze i8 %rhsc
  %i.bv = icmp eq i8 %rhsc.fr, 10
  %spec.select79 = zext i1 %i.bv to i64
  br label %.thread

bb.m:                                             ; preds = %bb.k, %.split.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.m, i64 noundef %i.bp, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText23cjk_justifiable_at_last(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25084)
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !alias.scope !25084, !noundef !10 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !25087, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i = load i64, ptr %i.b, align 8, !alias.scope !25090, !noundef !10 ; 5 uses
  %i.c = icmp ult i64 %.val7.i, %.val.i
  %.not6.i = icmp ugt i64 %.val7.i, %.sroa.5.0.i
  %or.cond.i = or i1 %i.c, %.not6.i
  br i1 %or.cond.i, label %bb.b, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit, !prof !11785

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val.i, i64 noundef %.val7.i, i64 noundef %.sroa.5.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #53, !noalias !25084
  unreachable

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit: ; preds = %bb.a
  %.not = icmp eq i64 %.val7.i, %.val.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !25084, !nonnull !10, !noundef !10
  %i.d = getelementptr [104 x i8], ptr %.sroa.0.0.i, i64 %.val7.i ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -104
  %i.f = getelementptr i8, ptr %i.d, i64 -8
  %i.g = load i8, ptr %i.f, align 8, !range !22482, !noundef !10
  switch i8 %i.g, label %bb.e [
    i8 49, label %bb.d
    i8 53, label %bb.d
    i8 61, label %bb.d
  ]

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.c, %bb.c, %bb.e, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit ], [ %i.k, %bb.f ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 -16
  %i.i = load i32, ptr %i.h, align 8, !range !19310, !noundef !10
  %i.j = icmp eq i32 %i.i, 12540
  br i1 %i.j, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef zeroext i1 @_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_11ShapedGlyph18is_cjk_punctuation(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.e)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3, double noundef %4, double noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [176 x i8], align 16              ; 19 uses
  %i.d = alloca [176 x i8], align 16              ; 19 uses
  %.sroa.0.sroa.0.sroa.7.i.sroa.8 = alloca [24 x i8], align 8 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 10 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.4 = alloca [48 x i8], align 8            ; 4 uses
  %.sroa.55.i.i.i.i.i = alloca [168 x i8], align 8 ; 4 uses
  %.sroa.8.i32.i.i.i.i = alloca [128 x i8], align 8 ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 4 uses
  %i.m = alloca [136 x i8], align 8               ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [216 x i8], align 8               ; 16 uses
  %i.t = alloca [10 x i8], align 2                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 11 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [48 x i8], align 8                ; 10 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [80 x i8], align 8               ; 10 uses
  %i.ac = alloca [96 x i8], align 8               ; 5 uses
  %i.ad = alloca [80 x i8], align 8               ; 23 uses
  %i.ae = alloca [8 x i8], align 8                ; 9 uses
  %i.af = alloca [1 x i8], align 1                ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 8 uses
  %i.ah = alloca [16 x i8], align 16              ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [15 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [16 x i8], align 16              ; 4 uses
  %i.aq = alloca [16 x i8], align 16              ; 4 uses
  %i.ar = alloca [944 x i8], align 8              ; 5 uses
  %i.as = alloca [16 x i8], align 16              ; 4 uses
  %i.at = alloca [472 x i8], align 8              ; 4 uses
  %i.au = alloca [472 x i8], align 8              ; 4 uses
  %i.av = alloca [480 x i8], align 8              ; 5 uses
  %i.aw = alloca [472 x i8], align 8              ; 6 uses
  %i.ax = alloca [16 x i8], align 16              ; 4 uses
  %i.ay = alloca [472 x i8], align 8              ; 4 uses
  %i.az = alloca [472 x i8], align 8              ; 4 uses
  %i.ba = alloca [472 x i8], align 8              ; 6 uses
  %i.bb = alloca [16 x i8], align 16              ; 4 uses
  %i.bc = alloca [96 x i8], align 8               ; 4 uses
  %i.bd = alloca [80 x i8], align 8               ; 4 uses
  %i.be = alloca [96 x i8], align 8               ; 4 uses
  %i.bf = alloca [96 x i8], align 8               ; 4 uses
  %i.bg = alloca [112 x i8], align 8              ; 4 uses
  %i.bh = alloca [112 x i8], align 8              ; 5 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [168 x i8], align 8              ; 4 uses
  %i.bk = alloca [176 x i8], align 16             ; 5 uses
  %i.bl = alloca [176 x i8], align 16             ; 5 uses
  %i.bm = alloca [80 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 10 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [168 x i8], align 8              ; 18 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [96 x i8], align 8               ; 13 uses
  %i.bs = alloca [472 x i8], align 8              ; 10 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 4 uses
  %i.bv = alloca [48 x i8], align 8               ; 15 uses
  %i.bw = tail call { double, double } @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText7measure(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noundef nonnull align 8 %2) ; 2 uses
  %i.bx = extractvalue { double, double } %i.bw, 0 ; 3 uses
  %i.by = extractvalue { double, double } %i.bw, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25096)
  %.sroa.5.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.i.i = load i64, ptr %.sroa.5.0.in.i.i, align 8, !alias.scope !25099, !noundef !10 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i64, ptr %i.bz, align 8, !alias.scope !25100, !noundef !10 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7.i.i = load i64, ptr %i.ca, align 8, !alias.scope !25103, !noundef !10 ; 6 uses
  %i.cb = icmp ult i64 %.val7.i.i, %.val.i.i
  %.not6.i.i = icmp ugt i64 %.val7.i.i, %.sroa.5.0.i.i
  %or.cond.i.i = or i1 %i.cb, %.not6.i.i
  br i1 %or.cond.i.i, label %bb.b, label %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i, !prof !11785

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val.i.i, i64 noundef %.val7.i.i, i64 noundef %.sroa.5.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #53, !noalias !25099
  unreachable

_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i: ; preds = %bb.a
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !25099, !nonnull !10, !noundef !10 ; 2 uses
  %.idx1.i = mul nuw nsw i64 %.val.i.i, 104
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx1.i ; 3 uses
  %i.cd = icmp samesign eq i64 %.val.i.i, %.val7.i.i
  br i1 %i.cd, label %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i
  %.idx2.i = sub nuw i64 %.val7.i.i, %.val.i.i
  %gepdiff.i = mul i64 %.idx2.i, 104              ; 2 uses
  %i.ce = udiv exact i64 %gepdiff.i, 104          ; 3 uses
  %xtraiter = and i64 %i.ce, 1
  %i.cf = icmp eq i64 %gepdiff.i, 104
  br i1 %i.cf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.ce, 288230376151711742
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.cu, %bb.d ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i = phi double [ -0.000000e+00, %.new ], [ %i.ct, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.cg = getelementptr inbounds nuw [104 x i8], ptr %i.cc, i64 %.sroa.04.0.i.i.i.i.i ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %.val.i.i.i.i.i = load double, ptr %i.ch, align 8, !noalias !25093, !noundef !10
  %i.ci = getelementptr i8, ptr %i.cg, i64 32
  %.val11.i.i.i.i.i = load double, ptr %i.ci, align 8, !noalias !25093, !noundef !10
  %i.cj = fmul double %.val.i.i.i.i.i, %.val11.i.i.i.i.i ; 2 uses
  %i.ck = tail call double @llvm.fabs.f64(double %i.cj)
  %i.cl = fcmp one double %i.ck, +inf
  %spec.store.select1.i.i.i.i.i.i.i = select i1 %i.cl, double %i.cj, double 0.000000e+00
  %i.cm = fadd double %.sroa.02.0.i.i.i.i.i, %spec.store.select1.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw [104 x i8], ptr %i.cc, i64 %.sroa.04.0.i.i.i.i.i ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 112
  %.val.i.i.i.i.i.1 = load double, ptr %i.co, align 8, !noalias !25093, !noundef !10
  %i.cp = getelementptr i8, ptr %i.cn, i64 136
  %.val11.i.i.i.i.i.1 = load double, ptr %i.cp, align 8, !noalias !25093, !noundef !10
  %i.cq = fmul double %.val.i.i.i.i.i.1, %.val11.i.i.i.i.i.1 ; 2 uses
  %i.cr = tail call double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp one double %i.cr, +inf
  %spec.store.select1.i.i.i.i.i.i.i.1 = select i1 %i.cs, double %i.cq, double 0.000000e+00
  %i.ct = fadd double %i.cm, %spec.store.select1.i.i.i.i.i.i.i.1 ; 3 uses
  %i.cu = add nuw i64 %.sroa.04.0.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit.loopexit.unr-lcssa, label %bb.d

_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit.loopexit.unr-lcssa, %bb.c
  %.sroa.04.0.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.cu, %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %bb.c ], [ %i.ct, %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit.loopexit.unr-lcssa ]
  %lcmp.mod3292 = trunc i64 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod3292)
  %i.cv = getelementptr inbounds nuw [104 x i8], ptr %i.cc, i64 %.sroa.04.0.i.i.i.i.i.epil.init ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %.val.i.i.i.i.i.epil = load double, ptr %i.cw, align 8, !noalias !25093, !noundef !10
  %i.cx = getelementptr i8, ptr %i.cv, i64 32
  %.val11.i.i.i.i.i.epil = load double, ptr %i.cx, align 8, !noalias !25093, !noundef !10
  %i.cy = fmul double %.val.i.i.i.i.i.epil, %.val11.i.i.i.i.i.epil ; 2 uses
  %i.cz = tail call double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp one double %i.cz, +inf
  %spec.store.select1.i.i.i.i.i.i.i.epil = select i1 %i.da, double %i.cy, double 0.000000e+00
  %i.db = fadd double %.sroa.02.0.i.i.i.i.i.epil.init, %spec.store.select1.i.i.i.i.i.i.i.epil
  br label %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit

_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit: ; preds = %.epil.preheader, %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit.loopexit.unr-lcssa, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i
  %.sroa.0.0.i.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i ], [ %i.ct, %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit.loopexit.unr-lcssa ], [ %i.db, %.epil.preheader ] ; 2 uses
  %.inv.i.i = fcmp ord double %.sroa.0.0.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %.sroa.0.0.i.i.i.i.i, double 0.000000e+00
  %i.dc = fadd double %i.bx, %i.by                ; 2 uses
  %.inv = fcmp ord double %i.dc, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.dc, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bv, double noundef %spec.store.select.i.i, double noundef %spec.store.select, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376)
  store i64 1, ptr %i.bv, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store double %i.bx, ptr %i.dd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false)
  %i.df = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.de)
          to label %bb.f unwind label %.body.thread390 ; 2 uses

bb.e:                                             ; preds = %.body95
  br i1 %.sroa.017.2, label %.body.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

.body.thread390:                                  ; preds = %bb.ad, %bb.j, %bb.i, %bb.f, %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit, %bb.g, %bb.h, %bb.l, %_RNvYNtNtCsdaEETE4DqmE_13typst_library4text8TextElemINtNtNtNtB6_11foundations7content5field16SettablePropertyKh26_E7defaultCs7tN9tvpkfrg_12typst_layout.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.f:                                             ; preds = %_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5width.exit
  %i.dg = extractvalue { double, double } %i.df, 0
  %i.dh = extractvalue { double, double } %i.df, 1
  %i.di = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.dg, double noundef %i.dh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bu)
          to label %bb.g unwind label %.body.thread390

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false)
  %i.dj = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 11)
          to label %.noexc unwind label %.body.thread390 ; 4 uses

.noexc:                                           ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !25106)
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !25106, !noalias !25109, !nonnull !10, !noundef !10 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !25106, !noalias !25109, !nonnull !10, !align !151, !noundef !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !invariant.load !10, !noalias !25115, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !25116
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !10, !noalias !25115, !nonnull !10
  invoke void %i.dq(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bb, ptr noundef nonnull %i.dk) #59
          to label %.noexc76 unwind label %.body.thread390, !inline_history !23598
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5build:bb.a
bb.am:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit
  %i.gk = load i64, ptr %i.bh, align 8, !range !289, !noundef !10
  %.not = icmp eq i64 %i.gk, 2
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bg, ptr noundef nonnull align 8 dereferenceable(112) %i.bh, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtNtB9_11foundations6styles7Resolve7resolve(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.de)
          to label %bb.as unwind label %bb.al

bb.ao:                                            ; preds = %bb.am
  store i64 2, ptr %i.br, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.gl = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 35)
          to label %.noexc89 unwind label %bb.at  ; 4 uses

.noexc89:                                         ; preds = %bb.ap
  %.not.i.i87 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i87, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %.noexc89
  call void @llvm.experimental.noalias.scope.decl(metadata !25249)
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !25249, !noalias !25252, !nonnull !10, !noundef !10 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !25249, !noalias !25252, !nonnull !10, !align !151, !noundef !10
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !invariant.load !10, !noalias !25257, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !25257
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !invariant.load !10, !noalias !25257, !nonnull !10
  invoke void %i.gs(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ap, ptr noundef nonnull %i.gm) #59
          to label %.noexc90 unwind label %bb.at, !inline_history !25258

.noexc90:                                         ; preds = %bb.aq
  %i.gt = load i128, ptr %i.ap, align 16, !noalias !25257, !noundef !10
  %i.gu = icmp eq i128 %i.gt, -62271773597008635811074466929279596351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !25257
  br i1 %i.gu, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedjECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.ar, !prof !13

bb.ar:                                            ; preds = %.noexc90
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 35, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gl) #57
          to label %.noexc91 unwind label %bb.at

.noexc91:                                         ; preds = %bb.ar
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedjECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc90
  %i.gv = load i64, ptr %i.gm, align 8, !alias.scope !25259, !noalias !25262, !noundef !10
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.br, ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.ap

.body93:                                          ; preds = %bb.mi, %.body148, %.body148.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit, %bb.ml, %bb.mm, %.body.i, %bb.bg, %bb.at
  %.pn65.pn.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.arl, %bb.ml ], [ %i.gw, %bb.at ], [ %eh.lpad-body.i, %bb.bg ], [ %i.arl, %bb.mm ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit ], [ %eh.lpad-body149441, %.body148.thread ], [ %i.ari, %bb.mi ], [ %lpad.thr_comm.split-lp444, %.body148 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB14_6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(96) %i.br) #54
          to label %.body95 unwind label %bb.mk

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %.loopexit474
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body93

bb.au:                                            ; preds = %.noexc89, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedjECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.1.i88 = phi i64 [ %i.gv, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedjECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %.noexc89 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !25263
  %i.gx = icmp eq i64 %.sroa.5.0.i.i, 0
  br i1 %i.gx, label %.thread, label %.lr.ph1103

.lr.ph1103:                                       ; preds = %bb.au
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.hc = fadd double %i.bx, %i.du                ; 2 uses
  %.inv58 = fcmp ord double %i.hc, 0.000000e+00
  %spec.store.select1 = select i1 %.inv58, double %i.hc, double 0.000000e+00
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.hg = load ptr, ptr %i.hd, align 8, !nonnull !10 ; 2 uses
  %i.hh = load i64, ptr %i.he, align 8            ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i98 = shl nuw nsw i64 %i.hh, 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i.i.i98
  %i.hj = icmp eq i64 %i.hh, 0
  %i.hk = trunc nuw i64 %.sroa.0.1.i88 to i16     ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.1.i88, 65536
  %i.hl = fcmp olt double %4, 0.000000e+00        ; 2 uses
  %.sroa.062.0.in.v.i.i.i.i.i.i.i.i = select i1 %i.hl, i64 56, i64 40
  %.sroa.063.0.in.v.i.i.i.i.i.i.i.i = select i1 %i.hl, i64 64, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.08.0.copyload = load i32, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82, i64 8 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82, i64 4
  %.sroa.5.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8, !nonnull !10 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hw = load i64, ptr %i.hv, align 8            ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hy = load i64, ptr %i.hx, align 8            ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bp, i64 128 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bp, i64 136 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bp, i64 104 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.if = getelementptr inbounds nuw i8, ptr %i.bp, i64 164
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %.sroa.4326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %.sroa.5319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bs, i64 464 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %.sink329.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.il = fneg double %i.du
  %i.im = fcmp uno double %i.du, 0.000000e+00
  %spec.store.select11.i = select i1 %i.im, double 0.000000e+00, double %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ab, i64 73
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.is = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.iv = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 14 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 14 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ad, i64 73
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.0.sroa.0.sroa.7.i.sroa.5.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.sroa.0.sroa.7.i.sroa.6.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.0.sroa.0.sroa.7.i.sroa.7.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.0.sroa.0.sroa.7.i.sroa.8.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.0.sroa.0.sroa.7.i.sroa.9.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.0.sroa.0.sroa.7.i.sroa.10.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.0.sroa.0.sroa.7.i.sroa.11.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.0.sroa.0.sroa.7.i.sroa.12.0..sroa.0.sroa.0.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 113
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.7.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.0.sroa.0.sroa.7.i.sroa.5.0..sroa.0.sroa.0.sroa.7.0..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.sroa.0.sroa.7.i.sroa.6.0..sroa.0.sroa.0.sroa.7.0..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.0.sroa.0.sroa.7.i.sroa.7.0..sroa.0.sroa.0.sroa.7.0..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.sroa.0.sroa.7.i.sroa.8.0..sroa.0.sroa.0.sroa.7.0..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.0.sroa.0.sroa.7.i.sroa.9.0..sroa.0.sroa.0.sroa.7.0..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.0.sroa.0.sroa.7.i.sroa.10.0..sroa.0.sroa.0.sroa.7.0..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.sroa.0.sroa.0.sroa.7.i.sroa.11.0..sroa.0.sroa.0.sroa.7.0..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %.sroa.0.sroa.0.sroa.7.i.sroa.12.0..sroa.0.sroa.0.sroa.7.0..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 113
  %.sroa.0.sroa.6.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.js = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %.sroa.5149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.sroa.5178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.7180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 144 ; 2 uses
  %.sroa.7180.sroa.5.0..sroa.7180.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 184 ; 5 uses
  %.sroa.7180.sroa.6.0..sroa.7180.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %.sroa.7180.sroa.7.0..sroa.7180.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.jy = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 152 ; 4 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 168 ; 10 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 176 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.84.0..sroa_idx.i.i.i.i.i.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.106.0..sroa_idx.i.i.i.i.i.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.117.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %.sroa.6.0..sroa_idx282.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.7.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.10.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.kk = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.kl = shufflevector <2 x ptr> %i.kk, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.km = insertelement <2 x double> poison, double %spec.store.select11.i, i64 1
  br label %bb.av

.thread:                                          ; preds = %bb.mh, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !25263
  br label %.loopexit474

bb.av:                                            ; preds = %.lr.ph1103, %bb.mh
  %.sroa.036.01101 = phi double [ 0.000000e+00, %.lr.ph1103 ], [ %.sroa.036.1, %bb.mh ] ; 5 uses
  %.sroa.0305.01100 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph1103 ], [ %i.lx, %bb.mh ] ; 11 uses
  %.sroa.5306.01099 = phi i64 [ %.sroa.5.0.i.i, %.lr.ph1103 ], [ %i.ly, %bb.mh ] ; 5 uses
  %.sroa.0382.01098 = phi i64 [ 0, %.lr.ph1103 ], [ %i.qq, %bb.mh ] ; 2 uses
  %.idx.i = mul nuw nsw i64 %.sroa.5306.01099, 104
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0305.01100, i64 %.idx.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0305.01100, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !25267)
  call void @llvm.experimental.noalias.scope.decl(metadata !25270)
  %i.kp = load ptr, ptr %.sroa.0305.01100, align 8, !alias.scope !25270, !noalias !25272, !nonnull !10, !noundef !10 ; 2 uses
  %i.kq = atomicrmw add ptr %i.kp, i64 1 monotonic, align 8, !noalias !25273
  %i.kr = icmp slt i64 %i.kq, 0
  br i1 %i.kr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0305.01100, i64 24
  store ptr %i.kp, ptr %i.ao, align 8, !alias.scope !25267, !noalias !25274
  %i.kt = load <2 x double>, ptr %i.ks, align 8, !alias.scope !25270, !noalias !25272
  store <2 x double> %i.kt, ptr %i.gy, align 8, !alias.scope !25267, !noalias !25274
  %i.ku = icmp eq i64 %.sroa.5306.01099, 1
  br i1 %i.ku, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ax
  %i.kv = add i64 %.sroa.5306.01099, 2305843009213693950
  %i.kw = and i64 %i.kv, 2305843009213693951
  %i.kx = add nuw nsw i64 %i.kw, 1
  br label %bb.ay

bb.ay:                                            ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3Y_10GroupByKeyB26_NCNvMs1_B28_NtB28_10ShapedText5build0EB1i_4next0NCINvMB3a_B37_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB3Q_EB1i_5count0E0E0B2c_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.01.021.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.lq, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3Y_10GroupByKeyB26_NCNvMs1_B28_NtB28_10ShapedText5build0EB1i_4next0NCINvMB3a_B37_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB3Q_EB1i_5count0E0E0B2c_.exit.i.i.i.i ] ; 2 uses
  %i.ky = phi ptr [ %i.ko, %.lr.ph.i.i.i.i ], [ %i.kz, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3Y_10GroupByKeyB26_NCNvMs1_B28_NtB28_10ShapedText5build0EB1i_4next0NCINvMB3a_B37_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB3Q_EB1i_5count0E0E0B2c_.exit.i.i.i.i ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !25278
  call void @llvm.experimental.noalias.scope.decl(metadata !25287)
  call void @llvm.experimental.noalias.scope.decl(metadata !25290)
  %i.la = load ptr, ptr %i.ky, align 8, !alias.scope !25292, !noalias !25293, !nonnull !10, !noundef !10 ; 2 uses
  %i.lb = atomicrmw add ptr %i.la, i64 1 monotonic, align 8, !noalias !25294
  %i.lc = icmp slt i64 %i.lb, 0
  br i1 %i.lc, label %bb.az, label %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText5build0Bb_.exit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.trap()
  unreachable

_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText5build0Bb_.exit.i.i.i.i.i.i: ; preds = %bb.ay
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store ptr %i.la, ptr %i.an, align 8, !alias.scope !25287, !noalias !25295
  %i.le = load <2 x double>, ptr %i.ld, align 8, !alias.scope !25292, !noalias !25293
  store <2 x double> %i.le, ptr %i.ha, align 8, !alias.scope !25287, !noalias !25295
  %i.lf = invoke noundef zeroext i1 @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library4text4fontNtB5_12FontInstanceNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bc, !noalias !25278

.noexc.i.i.i.i.i.i:                               ; preds = %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText5build0Bb_.exit.i.i.i.i.i.i
  br i1 %i.lf, label %bb.ba, label %_RNvXsi_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtNtNtBD_6layout2em2EmNtNtB1y_3abs3AbsENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

bb.ba:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.lg = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ha, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gy)
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.bc, !noalias !25278

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.ba
  br i1 %i.lg, label %bb.bb, label %_RNvXsi_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtNtNtBD_6layout2em2EmNtNtB1y_3abs3AbsENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

bb.bb:                                            ; preds = %.noexc1.i.i.i.i.i.i
  %i.lh = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gz)
          to label %_RNvXsi_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtNtNtBD_6layout2em2EmNtNtB1y_3abs3AbsENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i unwind label %bb.bc, !noalias !25278

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText5build0Bb_.exit.i.i.i.i.i.i
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25296)
  call void @llvm.experimental.noalias.scope.decl(metadata !25299)
  call void @llvm.experimental.noalias.scope.decl(metadata !25302)
  call void @llvm.experimental.noalias.scope.decl(metadata !25305)
  %i.lj = load ptr, ptr %i.an, align 8, !alias.scope !25308, !noalias !25278, !nonnull !10, !noundef !10
  %i.lk = atomicrmw sub ptr %i.lj, i64 1 release, align 8, !noalias !25309
  %i.ll = icmp eq i64 %i.lk, 1
  br i1 %i.ll, label %bb.bd, label %.body.i

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an) #58
          to label %.body.i unwind label %bb.bf, !noalias !25278

_RNvXsi_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtNtNtBD_6layout2em2EmNtNtB1y_3abs3AbsENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %bb.bb, %.noexc1.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc.i.i.i.i.i.i ], [ false, %.noexc1.i.i.i.i.i.i ], [ %i.lh, %bb.bb ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25310)
  call void @llvm.experimental.noalias.scope.decl(metadata !25313)
  call void @llvm.experimental.noalias.scope.decl(metadata !25316)
  call void @llvm.experimental.noalias.scope.decl(metadata !25319)
  %i.lm = load ptr, ptr %i.an, align 8, !alias.scope !25322, !noalias !25278, !nonnull !10, !noundef !10
  %i.ln = atomicrmw sub ptr %i.lm, i64 1 release, align 8, !noalias !25323
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %bb.be, label %_RNCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB7_10GroupByKeyNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNCNvMs1_BS_NtBS_10ShapedText5build0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0BW_.exit.i.i.i.i.i

bb.be:                                            ; preds = %_RNvXsi_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtNtNtBD_6layout2em2EmNtNtB1y_3abs3AbsENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an) #58
          to label %_RNCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB7_10GroupByKeyNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNCNvMs1_BS_NtBS_10ShapedText5build0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0BW_.exit.i.i.i.i.i unwind label %.loopexit.i, !noalias !25263

bb.bf:                                            ; preds = %bb.bd
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !25278
  unreachable

_RNCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB7_10GroupByKeyNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNCNvMs1_BS_NtBS_10ShapedText5build0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0BW_.exit.i.i.i.i.i: ; preds = %bb.be, %_RNvXsi_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceNtNtNtBD_6layout2em2EmNtNtB1y_3abs3AbsENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !25278
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3Y_10GroupByKeyB26_NCNvMs1_B28_NtB28_10ShapedText5build0EB1i_4next0NCINvMB3a_B37_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB3Q_EB1i_5count0E0E0B2c_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.loopexit.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3Y_10GroupByKeyB26_NCNvMs1_B28_NtB28_10ShapedText5build0EB1i_4next0NCINvMB3a_B37_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB3Q_EB1i_5count0E0E0B2c_.exit.i.i.i.i: ; preds = %_RNCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB7_10GroupByKeyNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNCNvMs1_BS_NtBS_10ShapedText5build0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0BW_.exit.i.i.i.i.i
  %i.lq = add nuw nsw i64 %.sroa.01.021.i.i.i.i, 1
  %i.lr = icmp eq ptr %i.kz, %i.kn
  br i1 %i.lr, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.loopexit.i, label %bb.ay

.loopexit.i:                                      ; preds = %bb.be
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.bh
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.bd, %bb.bc
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.li, %bb.bc ], [ %i.li, %bb.bd ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25324)
  call void @llvm.experimental.noalias.scope.decl(metadata !25327)
  call void @llvm.experimental.noalias.scope.decl(metadata !25330)
  call void @llvm.experimental.noalias.scope.decl(metadata !25333)
  %i.ls = load ptr, ptr %i.ao, align 8, !alias.scope !25336, !noalias !25263, !nonnull !10, !noundef !10
  %i.lt = atomicrmw sub ptr %i.ls, i64 1 release, align 8, !noalias !25337
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.bg, label %.body93

bb.bg:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao) #58
          to label %.body93 unwind label %bb.bi, !noalias !25263

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.loopexit.i: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3Y_10GroupByKeyB26_NCNvMs1_B28_NtB28_10ShapedText5build0EB1i_4next0NCINvMB3a_B37_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB3Q_EB1i_5count0E0E0B2c_.exit.i.i.i.i, %_RNCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB7_10GroupByKeyNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNCNvMs1_BS_NtBS_10ShapedText5build0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0BW_.exit.i.i.i.i.i
  %.sroa.0.1.i.i.ph.i = phi i64 [ %.sroa.01.021.i.i.i.i, %_RNCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB7_10GroupByKeyNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphNCNvMs1_BS_NtBS_10ShapedText5build0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0BW_.exit.i.i.i.i.i ], [ %i.kx, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB3Y_10GroupByKeyB26_NCNvMs1_B28_NtB28_10ShapedText5build0EB1i_4next0NCINvMB3a_B37_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterB26_EB3Q_EB1i_5count0E0E0B2c_.exit.i.i.i.i ]
  %i.lv = add i64 %.sroa.0.1.i.i.ph.i, 1
  br label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.i: ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.loopexit.i, %bb.ax
  %.sroa.0.1.i.i.i = phi i64 [ 1, %bb.ax ], [ %i.lv, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.loopexit.i ] ; 10 uses
  %.not.i.i92 = icmp ugt i64 %.sroa.0.1.i.i.i, %.sroa.5306.01099
  br i1 %.not.i.i92, label %bb.bh, label %bb.bj, !prof !33

bb.bh:                                            ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @286, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @756) #53
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !25263

.noexc12.i:                                       ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !25263
  unreachable

bb.bj:                                            ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvXs3_Cs6xpQEr8gLsQ_11typst_utilsINtB2K_10GroupByKeyB1B_NCNvMs1_B1D_NtB1D_10ShapedText5build0ENtNtNtBa_6traits8iterator8Iterator4next0EB4a_4foldjNCNvYBV_B4P_5count0EB1H_.exit.i
  %i.lx = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0305.01100, i64 %.sroa.0.1.i.i.i
  %i.ly = sub nuw nsw i64 %.sroa.5306.01099, %.sroa.0.1.i.i.i ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5build:bb.a

.noexc187:                                        ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25917
  br label %bb.je

bb.je:                                            ; preds = %.noexc187, %.noexc186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0.sroa.7.i.sroa.8)
  br label %bb.jk

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.iy, %bb.jj, %bb.la, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i
  %.pn237.pn.i = phi { ptr, i32 } [ %.pn237.i, %bb.la ], [ %.pn237.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i ], [ %i.ajc, %bb.jj ], [ %i.ais, %bb.iy ] ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %bb.jh unwind label %bb.jf

bb.jf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.aiv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25950)
  %i.aiw = load i64, ptr %i.ad, align 8, !range !1183, !alias.scope !25953, !noundef !10 ; 2 uses
  %i.aix = icmp sgt i64 %i.aiw, 0
  br i1 %i.aix, label %bb.jg, label %.body176

bb.jg:                                            ; preds = %bb.jf
  %.val1.i.i175 = load ptr, ptr %i.jh, align 8, !alias.scope !25953, !nonnull !10, !noundef !10
  %i.aiy = shl nuw i64 %i.aiw, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i175, i64 noundef %i.aiy, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !25956
  br label %.body176

bb.jh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !25959)
  %i.aiz = load i64, ptr %i.ad, align 8, !range !1183, !alias.scope !25962, !noundef !10 ; 2 uses
  %i.aja = icmp sgt i64 %i.aiz, 0
  br i1 %i.aja, label %bb.ji, label %.body148.thread

bb.ji:                                            ; preds = %bb.jh
  %.val1.i1.i = load ptr, ptr %i.jh, align 8, !alias.scope !25962, !nonnull !10, !noundef !10
  %i.ajb = shl nuw i64 %i.aiz, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i, i64 noundef %i.ajb, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !25963
  br label %.body148.thread

bb.jj:                                            ; preds = %bb.jd, %bb.jc, %bb.id
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.jk:                                            ; preds = %.noexc183, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25451
  call void @llvm.experimental.noalias.scope.decl(metadata !25966)
  %i.ajd = load i32, ptr %i.iy, align 8, !range !8787, !alias.scope !25966, !noundef !10 ; 3 uses
  %i.aje = icmp samesign ugt i32 %i.ajd, 1
  %i.ajf = zext nneg i32 %i.ajd to i64
  %i.ajg = add nsw i64 %i.ajf, -1
  %i.ajh = select i1 %i.aje, i64 %i.ajg, i64 0
  switch i64 %i.ajh, label %bb.jl [
    i64 0, label %bb.jn
    i64 1, label %bb.jq
  ]

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.experimental.noalias.scope.decl(metadata !25969)
  call void @llvm.experimental.noalias.scope.decl(metadata !25972)
  call void @llvm.experimental.noalias.scope.decl(metadata !25975)
  %i.aji = load ptr, ptr %i.iz, align 8, !alias.scope !25978, !nonnull !10, !noundef !10
  %i.ajj = atomicrmw sub ptr %i.aji, i64 1 release, align 8, !noalias !25978
  %i.ajk = icmp eq i64 %i.ajj, 1
  br i1 %i.ajk, label %bb.jm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174

bb.jm:                                            ; preds = %bb.jl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iz) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174 unwind label %bb.jx

bb.jn:                                            ; preds = %bb.jk
  call void @llvm.experimental.noalias.scope.decl(metadata !25979)
  %i.ajl = icmp eq i32 %i.ajd, 0
  br i1 %i.ajl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.experimental.noalias.scope.decl(metadata !25982)
  call void @llvm.experimental.noalias.scope.decl(metadata !25985)
  call void @llvm.experimental.noalias.scope.decl(metadata !25988)
  %i.ajm = load ptr, ptr %i.iz, align 8, !alias.scope !25991, !nonnull !10, !noundef !10
  %i.ajn = atomicrmw sub ptr %i.ajm, i64 1 release, align 8, !noalias !25991
  %i.ajo = icmp eq i64 %i.ajn, 1
  br i1 %i.ajo, label %bb.jp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174

bb.jp:                                            ; preds = %bb.jo
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.iz) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174 unwind label %bb.jx

bb.jq:                                            ; preds = %bb.jk
  call void @llvm.experimental.noalias.scope.decl(metadata !25992)
  %i.ajp = load i64, ptr %i.iz, align 8, !range !289, !alias.scope !25995, !noundef !10
  switch i64 %i.ajp, label %bb.jr [
    i64 0, label %bb.jt
    i64 1, label %bb.jv
  ]

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !25996)
  call void @llvm.experimental.noalias.scope.decl(metadata !25999)
  %i.ajq = load ptr, ptr %i.jb, align 8, !alias.scope !26002, !nonnull !10, !noundef !10
  %i.ajr = atomicrmw sub ptr %i.ajq, i64 1 release, align 8, !noalias !26002
  %i.ajs = icmp eq i64 %i.ajr, 1
  br i1 %i.ajs, label %bb.js, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174

bb.js:                                            ; preds = %bb.jr
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jb) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174 unwind label %bb.jx

bb.jt:                                            ; preds = %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !26003)
  call void @llvm.experimental.noalias.scope.decl(metadata !26006)
  %i.ajt = load ptr, ptr %i.jb, align 8, !alias.scope !26009, !nonnull !10, !noundef !10
  %i.aju = atomicrmw sub ptr %i.ajt, i64 1 release, align 8, !noalias !26009
  %i.ajv = icmp eq i64 %i.aju, 1
  br i1 %i.ajv, label %bb.ju, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174

bb.ju:                                            ; preds = %bb.jt
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jb) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174 unwind label %bb.jx

bb.jv:                                            ; preds = %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !26010)
  call void @llvm.experimental.noalias.scope.decl(metadata !26013)
  %i.ajw = load ptr, ptr %i.jb, align 8, !alias.scope !26016, !nonnull !10, !noundef !10
  %i.ajx = atomicrmw sub ptr %i.ajw, i64 1 release, align 8, !noalias !26016
  %i.ajy = icmp eq i64 %i.ajx, 1
  br i1 %i.ajy, label %bb.jw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174

bb.jw:                                            ; preds = %bb.jv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jb) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174 unwind label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.ju, %bb.js, %bb.jp, %bb.jm
  %i.ajz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aka = load i64, ptr %i.ad, align 8, !range !1183, !alias.scope !26017, !noalias !25451, !noundef !10 ; 2 uses
  %i.akb = icmp sgt i64 %i.aka, 0
  br i1 %i.akb, label %common.resume.sink.split.i, label %.body148.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174: ; preds = %bb.jv, %bb.jt, %bb.jr, %bb.jo, %bb.jn, %bb.jl, %bb.jm, %bb.jp, %bb.js, %bb.ju, %bb.jw
  call void @llvm.experimental.noalias.scope.decl(metadata !26022)
  %i.akc = load i64, ptr %i.ad, align 8, !range !1183, !alias.scope !26025, !noalias !25451, !noundef !10 ; 2 uses
  %i.akd = icmp sgt i64 %i.akc, 0
  br i1 %i.akd, label %bb.jy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit.i

bb.jy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174
  %.val1.i1.i.i117 = load ptr, ptr %i.jh, align 8, !alias.scope !26025, !noalias !25451, !nonnull !10, !noundef !10
  %i.ake = shl nuw i64 %i.akc, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i.i117, i64 noundef %i.ake, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !26026
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.jy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !25451
  br label %bb.mg

bb.jz:                                            ; preds = %.noexc152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25451
  %i.akf = load double, ptr %i.ae, align 8, !noalias !25451, !noundef !10 ; 2 uses
  store double %i.ahd, ptr %i.w, align 8, !alias.scope !26029, !noalias !25451
  store double %i.akf, ptr %i.jp, align 8, !alias.scope !26029, !noalias !25451
  store double %spec.store.select18.i, ptr %i.jq, align 8, !alias.scope !26029, !noalias !25451
  store double %i.akf, ptr %i.jr, align 8, !alias.scope !26029, !noalias !25451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !25451
  store i64 0, ptr %i.v, align 8, !noalias !25451
  store ptr inttoptr (i64 8 to ptr), ptr %i.js, align 8, !noalias !25451
  store i64 0, ptr %i.jt, align 8, !noalias !25451
  %i.akg = load ptr, ptr %.sroa.4318.0..sroa_idx, align 8, !alias.scope !25449, !noalias !25453, !nonnull !10, !noundef !10 ; 2 uses
  %i.akh = load i64, ptr %.sroa.5319.0..sroa_idx, align 8, !alias.scope !25449, !noalias !25453, !noundef !10 ; 2 uses
  %.idx.i118 = mul nuw nsw i64 %i.akh, 56
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 %.idx.i118
  %i.akj = icmp eq i64 %i.akh, 0
  br i1 %i.akj, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.jz
  %i.akk = fsub double %spec.store.select17.i, %spec.store.select14.i ; 2 uses
  %.inv232679.i = fcmp ord double %i.akk, 0.000000e+00
  %spec.store.select26680.i = select i1 %.inv232679.i, double %i.akk, double 0.000000e+00
  br label %bb.kb

.lr.ph.i:                                         ; preds = %bb.jz
  %i.akl = getelementptr inbounds nuw i8, ptr %i.sq, i64 96 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.sq, i64 200
  %i.akn = insertelement <2 x double> poison, double %i.agp, i64 0
  %i.ako = shufflevector <2 x double> %i.akn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ka

bb.ka:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i, %.lr.ph.i
  %i.akp = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.i ], [ %i.amh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %i.akq = phi i64 [ 0, %.lr.ph.i ], [ %i.ami, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %.promoted118.i.i.i.pre.i637.i = phi i64 [ undef, %.lr.ph.i ], [ %.promoted118.i.i.i.pre.i638.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %.sroa.0209.0469.i = phi double [ %i.ahd, %.lr.ph.i ], [ %spec.store.select25.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %.sroa.050.0468.i = phi ptr [ %i.akg, %.lr.ph.i ], [ %i.akr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.sroa.050.0468.i, i64 56 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.050.0468.i, i64 24
  %i.akt = load double, ptr %i.aks, align 8, !noundef !10
  %i.aku = fmul double %i.agp, %i.akt             ; 2 uses
  %i.akv = call double @llvm.fabs.f64(double %i.aku)
  %i.akw = fcmp one double %i.akv, +inf
  %spec.store.select35.i = select i1 %i.akw, double %i.aku, double 0.000000e+00
  %i.akx = fadd double %.sroa.0209.0469.i, %spec.store.select35.i ; 2 uses
  %.inv228.i = fcmp ord double %i.akx, 0.000000e+00
  %spec.store.select23.i = select i1 %.inv228.i, double %i.akx, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !25451
  %i.aky = load double, ptr %i.akl, align 8, !noundef !10
  store i64 0, ptr %i.u, align 8, !noalias !25451
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4148.0..sroa_idx.i, align 8, !noalias !25451
  store i64 0, ptr %.sroa.5149.0..sroa_idx.i, align 8, !noalias !25451
  store double %i.aky, ptr %i.ju, align 8, !noalias !25451
  store double %i.agp, ptr %i.jv, align 8, !noalias !25451
  store double %spec.store.select23.i, ptr %i.jw, align 8, !noalias !25451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !25451
  %i.akz = getelementptr inbounds nuw i8, ptr %.sroa.050.0468.i, i64 52
  %i.ala = load i16, ptr %i.akz, align 4, !noundef !10
  invoke fastcc void @_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face13outline_glyph(ptr noalias nofree noundef align 2 captures(address) dereferenceable(10) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2776) %i.akm, i16 noundef %i.ala, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @658)
          to label %bb.kc unwind label %bb.lb

._crit_edge.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i
  %.pre640.i = load i64, ptr %i.v, align 8, !range !69, !alias.scope !26032, !noalias !25451 ; 2 uses
  %i.alb = fsub double %spec.store.select17.i, %spec.store.select14.i ; 2 uses
  %.inv232.i = fcmp ord double %i.alb, 0.000000e+00
  %spec.store.select26.i = select i1 %.inv232.i, double %i.alb, double 0.000000e+00 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26032)
  %i.alc = icmp eq i64 %i.ami, %.pre640.i
  br i1 %i.alc, label %bb.kb, label %bb.ld

bb.kb:                                            ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %spec.store.select26682.i = phi double [ %spec.store.select26680.i, %._crit_edge.thread.i ], [ %spec.store.select26.i, %._crit_edge.i ]
  %i.ald = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ami, %._crit_edge.i ]
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #58
          to label %._crit_edge641.i unwind label %.loopexit.split-lp.i119.loopexit.split-lp

._crit_edge641.i:                                 ; preds = %bb.kb
  %.pre642.i = load i64, ptr %i.v, align 8, !range !69, !alias.scope !26035, !noalias !25451
  br label %bb.ld

bb.kc:                                            ; preds = %bb.ka
  %.sroa.0283.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !25451 ; 4 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4148.0..sroa_idx.i, align 8, !noalias !25451 ; 8 uses
  %.sroa.5285.0.copyload.i = load i64, ptr %.sroa.5149.0..sroa_idx.i, align 8, !noalias !25451
  %i.ale = getelementptr inbounds nuw i8, ptr %.sroa.050.0468.i, i64 16
  %i.alf = load double, ptr %i.ale, align 8, !noundef !10
  %i.alg = fmul double %i.agp, %i.alf             ; 2 uses
  %i.alh = call double @llvm.fabs.f64(double %i.alg)
  %i.ali = fcmp one double %i.alh, +inf
  %spec.store.select36.i = select i1 %i.ali, double %i.alg, double 0.000000e+00
  %i.alj = fadd double %.sroa.0209.0469.i, %spec.store.select36.i ; 2 uses
  %.inv230.i = fcmp ord double %i.alj, 0.000000e+00
  %spec.store.select25.i = select i1 %.inv230.i, double %i.alj, double 0.000000e+00
  %i.alk = load i16, ptr %i.t, align 2, !range !16347, !noalias !25451, !noundef !10
  %i.all = trunc nuw i16 %i.alk to i1
  br i1 %i.all, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  %.sroa.0157.0.copyload.i = load i64, ptr %i.jx, align 2, !noalias !25451 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !26038
  %i.alm = load double, ptr %i.akl, align 8, !noalias !26041, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26038
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0157.0.copyload.i, 16
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.0157.0.copyload.i, 48
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i16
  %i.aln = insertelement <2 x i16> poison, i16 %.sroa.6.0.extract.trunc.i.i, i64 0
  %i.alo = insertelement <2 x i16> %i.aln, i16 %.sroa.4.0.extract.trunc.i.i, i64 1
  %i.alp = sitofp <2 x i16> %i.alo to <2 x double>
  %i.alq = insertelement <2 x double> poison, double %i.alm, i64 0
  %i.alr = shufflevector <2 x double> %i.alq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.als = fdiv <2 x double> %i.alp, %i.alr       ; 2 uses
  %i.alt = fcmp ord <2 x double> %i.als, zeroinitializer
  %i.alu = select <2 x i1> %i.alt, <2 x double> %i.als, <2 x double> zeroinitializer
  %i.alv = fmul <2 x double> %i.ako, %i.alu       ; 2 uses
  %i.alw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.alv)
  %i.alx = fcmp one <2 x double> %i.alw, splat (double +inf)
  %i.aly = fneg <2 x double> %i.alv
  %i.alz = select <2 x i1> %i.alx, <2 x double> %i.aly, <2 x double> splat (double -0.000000e+00) ; 2 uses
  %i.ama = fcmp ord <2 x double> %i.alz, zeroinitializer
  %i.amb = select <2 x i1> %i.ama, <2 x double> %i.alz, <2 x double> zeroinitializer ; 2 uses
  %i.amc = extractelement <2 x double> %i.amb, i64 0
  store double %i.amc, ptr %i.k, align 8, !noalias !26038
  %i.amd = extractelement <2 x double> %i.amb, i64 1
  store double %i.amd, ptr %i.j, align 8, !noalias !26038
  %i.ame = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %.noexc257.i unwind label %bb.kh

.noexc257.i:                                      ; preds = %bb.kd
  %i.amf = icmp sgt i8 %i.ame, -1
  br i1 %i.amf, label %bb.ke, label %.thread293.i

.thread293.i:                                     ; preds = %.noexc257.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26038
  br label %bb.kf

bb.ke:                                            ; preds = %.noexc257.i
  %i.amg = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.kj unwind label %bb.kh

bb.kf:                                            ; preds = %.loopexit.loopexit.i.i.i.i.i, %bb.kj, %.thread293.i, %bb.kc
  %i.amh = phi ptr [ %i.akp, %.thread293.i ], [ %i.akp, %bb.kc ], [ %i.amq, %.loopexit.loopexit.i.i.i.i.i ], [ %i.akp, %bb.kj ]
  %i.ami = phi i64 [ %i.akq, %.thread293.i ], [ %i.akq, %bb.kc ], [ %i.amr, %.loopexit.loopexit.i.i.i.i.i ], [ %i.akq, %bb.kj ] ; 4 uses
  %.promoted118.i.i.i.pre.i638.i = phi i64 [ %.promoted118.i.i.i.pre.i637.i, %.thread293.i ], [ %.promoted118.i.i.i.pre.i637.i, %bb.kc ], [ %.promoted118.i.i.i.pre.i639.i2765, %.loopexit.loopexit.i.i.i.i.i ], [ %.promoted118.i.i.i.pre.i637.i, %bb.kj ]
  %i.amj = icmp eq i64 %.sroa.0283.0.copyload.i, 0
  br i1 %i.amj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.amk = mul nuw i64 %.sroa.0283.0.copyload.i, 56
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.amk, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i

bb.kh:                                            ; preds = %bb.ke, %bb.kd
  %i.aml = landingpad { ptr, i32 }
          cleanup
  br label %.body.i125

.body.i125:                                       ; preds = %bb.ky, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.kh
  %eh.lpad-body.i126 = phi { ptr, i32 } [ %i.aml, %bb.kh ], [ %i.aog, %bb.ky ], [ %lpad.loopexit.i.i131, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i127, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.amm = icmp eq i64 %.sroa.0283.0.copyload.i, 0
  br i1 %i.amm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i, label %bb.ki

bb.ki:                                            ; preds = %.body.i125
  %i.amn = mul nuw i64 %.sroa.0283.0.copyload.i, 56
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.amn, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

bb.kj:                                            ; preds = %bb.ke
  %i.amo = icmp slt i8 %i.amg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26038
  br i1 %i.amo, label %bb.kk, label %bb.kf

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !25451
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.amp = getelementptr inbounds nuw [56 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5285.0.copyload.i ; 4 uses
  store i64 0, ptr %i.s, align 8, !noalias !25451
  store i64 0, ptr %.sroa.5178.0..sroa_idx.i, align 8, !noalias !25451
  store i64 0, ptr %.sroa.7180.0..sroa_idx.i, align 8, !noalias !25451
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.7180.sroa.5.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !noalias !25451
  store ptr %i.amp, ptr %.sroa.7180.sroa.6.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !noalias !25451
  store <2 x ptr> %i.kl, ptr %.sroa.7180.sroa.7.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !noalias !25451
  call void @llvm.experimental.noalias.scope.decl(metadata !26042)
  call void @llvm.experimental.noalias.scope.decl(metadata !26045)
  br label %bb.kl

bb.kl:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.kk
  %i.amq = phi ptr [ %i.aod, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.akp, %bb.kk ] ; 2 uses
  %i.amr = phi i64 [ %i.aof, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.akq, %bb.kk ] ; 6 uses
  %.promoted118.i.i.i.pre.i636.i = phi i64 [ %i.anr, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.promoted118.i.i.i.pre.i637.i, %bb.kk ] ; 3 uses
  %6 = phi i64 [ %.lcssa2368, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %bb.kk ]
  %.promoted120.i.i.i.i.i = phi ptr [ %.promoted120.i.i.i263.i.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.kk ] ; 2 uses
  %.promoted119.i.i.i.i.i = phi i1 [ %.promoted119.i.i.i258.i.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ false, %bb.kk ] ; 3 uses
  %.promoted.i.i.i.i.i = phi i64 [ %.promoted.i.i.i246.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %bb.kk ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26047)
  call void @llvm.experimental.noalias.scope.decl(metadata !26050)
  call void @llvm.experimental.noalias.scope.decl(metadata !26053)
  %7 = trunc nuw i64 %.promoted.i.i.i.i.i to i1
  %i.ams = load i32, ptr %i.jz, align 8
  %i.amt = zext i32 %i.ams to i64                 ; 2 uses
  %i.amu = icmp ne i64 %.promoted118.i.i.i.pre.i636.i, %i.amt
  %or.cond22372764.not = select i1 %7, i1 %i.amu, i1 false
  br i1 %or.cond22372764.not, label %bb.kw, label %.lr.ph2769

.lr.ph2769:                                       ; preds = %bb.kl, %.noexc5.i.i
  %i.amv = phi i1 [ true, %.noexc5.i.i ], [ %.promoted119.i.i.i.i.i, %bb.kl ]
  %.promoted119.i.i.i258.i.i2767 = phi i1 [ %.promoted119.i.i.i255.i.i, %.noexc5.i.i ], [ %.promoted119.i.i.i.i.i, %bb.kl ]
  %.promoted120.i.i.i263.i.i2766 = phi ptr [ %.promoted.i.i.i.i.i124.i.i.i.i.i, %.noexc5.i.i ], [ %.promoted120.i.i.i.i.i, %bb.kl ] ; 7 uses
  %.promoted118.i.i.i.pre.i639.i2765 = phi i64 [ 0, %.noexc5.i.i ], [ %.promoted118.i.i.i.pre.i636.i, %bb.kl ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26056)
  call void @llvm.experimental.noalias.scope.decl(metadata !26059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26062
  call void @llvm.experimental.noalias.scope.decl(metadata !26067)
  call void @llvm.experimental.noalias.scope.decl(metadata !26070)
  call void @llvm.experimental.noalias.scope.decl(metadata !26073)
  %i.amw = icmp eq ptr %.promoted120.i.i.i263.i.i2766, %i.amp
  br i1 %i.amw, label %.loopexit.loopexit.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph2769
  %i.amx = getelementptr inbounds nuw i8, ptr %.promoted120.i.i.i263.i.i2766, i64 56 ; 6 uses
  %.sroa.0.0.copyload1.i.peel.i.i.i.i.i.i.i.i.i = load i64, ptr %.promoted120.i.i.i263.i.i2766, align 8, !noalias !26076 ; 3 uses
  %.sroa.82.0..sroa_idx3.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted120.i.i.i263.i.i2766, i64 8
  %8 = load <2 x i64>, ptr %.sroa.82.0..sroa_idx3.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26076 ; 8 uses
  %.sroa.82.sroa.7.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted120.i.i.i263.i.i2766, i64 24
  %9 = load <2 x i64>, ptr %.sroa.82.sroa.7.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26076 ; 3 uses
  %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted120.i.i.i263.i.i2766, i64 40 ; 2 uses
  %.sroa.82.sroa.10.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted120.i.i.i263.i.i2766, i64 48
  %.sroa.82.sroa.10.0.copyload.i.peel.i.i.i.i.i.i.i.i.i2804 = load double, ptr %.sroa.82.sroa.10.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26076
  %10 = load <2 x i64>, ptr %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26076
  %.sroa.82.sroa.9.0.copyload.i.peel.i.i.i.i.i.i.i.i.i2802 = load double, ptr %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26076
  %.not.i.peel.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.peel.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.peel.i.i.i.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i, label %bb.km

bb.km:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  br i1 %i.amv, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  switch i64 %.sroa.0.0.copyload1.i.peel.i.i.i.i.i.i.i.i.i, label %default.unreachable.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i
    i64 1, label %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i
    i64 2, label %bb.kp
    i64 3, label %bb.ko
    i64 4, label %bb.kt
  ], !prof !26082

bb.ko:                                            ; preds = %bb.kn
  br label %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i

bb.kp:                                            ; preds = %bb.kn
  br label %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i

_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.kp, %bb.ko, %bb.kn, %bb.kn
  %11 = phi <2 x i64> [ %10, %bb.ko ], [ %9, %bb.kp ], [ %8, %bb.kn ], [ %8, %bb.kn ] ; 2 uses
  store i64 1, ptr %.sroa.7180.0..sroa_idx.i, align 8, !alias.scope !26083, !noalias !26086
  store <2 x i64> %11, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26083, !noalias !26086
  store <2 x i64> %11, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26083, !noalias !26086
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i, %bb.km
  %.promoted119.i.i.i255.i.i = phi i1 [ true, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.promoted119.i.i.i258.i.i2767, %bb.km ] ; 2 uses
  switch i64 %.sroa.0.0.copyload1.i.peel.i.i.i.i.i.i.i.i.i, label %default.unreachable.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %bb.kr
    i64 1, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge144.i.i.i.i.i.i.i.i.i
    i64 2, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge141.i.i.i.i.i.i.i.i.i
    i64 3, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i
    i64 4, label %bb.kq
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge144.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  %.pre145.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  %.pre146.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  br label %.loopexit130.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge141.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  %.pre142.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  %.pre143.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  br label %.loopexit131.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  %.pre140.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  br label %.loopexit132.i.i.i.i.i.i.i.i.i

bb.kq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  %12 = load double, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089, !noundef !10 ; 3 uses
  %13 = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089 ; 4 uses
  %14 = extractelement <2 x double> %13, i64 1
  %15 = extractelement <2 x double> %13, i64 0
  %16 = fcmp une double %12, %15
  %.pre181.i.peel.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089 ; 3 uses
  %17 = fcmp une double %.pre181.i.peel.i.i.i.i.i.i.i.i.i, %14
  %or.cond.i.peel.i.i.i.i.i.i.i.i.i = select i1 %16, i1 true, i1 %17
  br i1 %or.cond.i.peel.i.i.i.i.i.i.i.i.i, label %.loopexit133.i.i.i.i.i.i.i.i.i, label %bb.ks

bb.kr:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  store <2 x i64> %8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  %18 = bitcast <2 x i64> %8 to <2 x double>      ; 2 uses
  %bc = bitcast <2 x i64> %8 to <2 x double>
  %19 = extractelement <2 x double> %bc, i64 1
  %20 = extractelement <2 x double> %18, i64 0
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.amy = phi double [ %19, %bb.kr ], [ %.pre181.i.peel.i.i.i.i.i.i.i.i.i, %bb.kq ] ; 4 uses
  %i.amz = phi double [ %20, %bb.kr ], [ %12, %bb.kq ] ; 4 uses
  %21 = phi <2 x double> [ %18, %bb.kr ], [ %13, %bb.kq ]
  %i.ana = icmp eq ptr %i.amx, %i.amp
  br i1 %i.ana, label %.loopexit.loopexit.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ks, %bb.kv
  %i.anb = phi double [ %49, %bb.kv ], [ %i.amy, %bb.ks ] ; 2 uses
  %i.anc = phi double [ %50, %bb.kv ], [ %i.amz, %bb.ks ] ; 2 uses
  %i.and = phi double [ %51, %bb.kv ], [ %i.amy, %bb.ks ] ; 2 uses
  %i.ane = phi double [ %52, %bb.kv ], [ %i.amz, %bb.ks ] ; 2 uses
  %i.anf = phi double [ %53, %bb.kv ], [ %i.amy, %bb.ks ] ; 2 uses
  %i.ang = phi double [ %54, %bb.kv ], [ %i.amz, %bb.ks ] ; 2 uses
  %.pre181.i.i.i.i.i.i.i.i.i.i = phi double [ %.pre181.i138.i.i.i.i.i.i.i.i.i, %bb.kv ], [ %i.amy, %bb.ks ] ; 3 uses
  %i.anh = phi double [ %55, %bb.kv ], [ %i.amz, %bb.ks ] ; 3 uses
  %22 = phi ptr [ %i.ani, %bb.kv ], [ %i.amx, %bb.ks ] ; 6 uses
  %23 = phi <2 x double> [ %56, %bb.kv ], [ %21, %bb.ks ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26090)
  %i.ani = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %22, align 8, !noalias !26092
  %.sroa.82.0..sroa_idx3.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  %24 = load <2 x i64>, ptr %.sroa.82.0..sroa_idx3.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26092 ; 6 uses
  %.sroa.82.sroa.7.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 24
  %25 = load <2 x i64>, ptr %.sroa.82.sroa.7.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26092 ; 2 uses
  switch i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, label %default.unreachable.i.i.i.i.i.i.i.i.i.i [
    i64 -1, label %.loopexit.loopexit.i.i.i.i.i
    i64 0, label %26
    i64 1, label %.loopexit130.i.i.i.i.i.i.i.i.i
    i64 2, label %.loopexit131.i.i.i.i.i.i.i.i.i
    i64 3, label %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i
    i64 4, label %bb.ku
  ]

default.unreachable.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.kn
  unreachable

bb.kt:                                            ; preds = %bb.kn
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @284, ptr noundef nonnull inttoptr (i64 73 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #53
          to label %.noexc.i.i128 unwind label %.loopexit.split-lp.i.i, !noalias !26093

.noexc.i.i128:                                    ; preds = %bb.kt
  unreachable

default.unreachable.i.i.i.i.i.i.i.i.i.i:          ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  unreachable

26:                                               ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  %27 = extractelement <2 x i64> %24, i64 0       ; 2 uses
  store i64 %27, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  %28 = extractelement <2 x i64> %24, i64 1       ; 3 uses
  store i64 %28, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  store i64 %27, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  store i64 %28, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  %29 = bitcast <2 x i64> %24 to <2 x double>     ; 2 uses
  %30 = bitcast i64 %28 to double                 ; 4 uses
  %31 = extractelement <2 x double> %29, i64 0    ; 4 uses
  br label %bb.kv

.loopexit130.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge144.i.i.i.i.i.i.i.i.i
  %32 = phi double [ %.pre146.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge144.i.i.i.i.i.i.i.i.i ], [ %i.anb, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ]
  %33 = phi double [ %.pre145.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge144.i.i.i.i.i.i.i.i.i ], [ %i.anc, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa125.i.i.i.i.i.i.i.i.i = phi ptr [ %i.amx, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge144.i.i.i.i.i.i.i.i.i ], [ %i.ani, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %34 = phi <2 x i64> [ %8, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge144.i.i.i.i.i.i.i.i.i ], [ %24, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %.lcssa125.i.i.i.i.i.i.i.i.i, ptr %.sroa.7180.sroa.5.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !26094, !noalias !26097
  %35 = bitcast <2 x i64> %34 to <2 x double>
  store <2 x i64> %34, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

.loopexit131.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge141.i.i.i.i.i.i.i.i.i
  %36 = phi double [ %.pre143.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge141.i.i.i.i.i.i.i.i.i ], [ %i.and, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ]
  %37 = phi double [ %.pre142.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge141.i.i.i.i.i.i.i.i.i ], [ %i.ane, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa126.i.i.i.i.i.i.i.i.i = phi ptr [ %i.amx, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge141.i.i.i.i.i.i.i.i.i ], [ %i.ani, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %38 = phi <2 x i64> [ %8, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge141.i.i.i.i.i.i.i.i.i ], [ %24, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ]
  %39 = phi <2 x i64> [ %9, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge141.i.i.i.i.i.i.i.i.i ], [ %25, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %.lcssa126.i.i.i.i.i.i.i.i.i, ptr %.sroa.7180.sroa.5.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !26094, !noalias !26097
  %40 = bitcast <2 x i64> %38 to <2 x double>
  %41 = bitcast <2 x i64> %39 to <2 x double>
  store <2 x i64> %39, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

.loopexit132.i.loopexit.i.i.i.i.i.i.i.i:          ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.82.sroa.10.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 48
  %.sroa.82.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i2805 = load double, ptr %.sroa.82.sroa.10.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26092
  %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 40
  %.sroa.82.sroa.9.0.copyload.i.i.i.i.i.i.i.i.i.i2803 = load double, ptr %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26092
  br label %.loopexit132.i.i.i.i.i.i.i.i.i

.loopexit132.i.i.i.i.i.i.i.i.i:                   ; preds = %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i
  %i.anj = phi double [ %.pre140.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.anf, %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i ]
  %i.ank = phi double [ %.pre.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ang, %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i ]
  %.lcssa127.i.i.i.i.i.i.i.i.i = phi ptr [ %i.amx, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ani, %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.anl = phi double [ %.sroa.82.sroa.9.0.copyload.i.peel.i.i.i.i.i.i.i.i.i2802, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.9.0.copyload.i.i.i.i.i.i.i.i.i.i2803, %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.anm = phi double [ %.sroa.82.sroa.10.0.copyload.i.peel.i.i.i.i.i.i.i.i.i2804, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i2805, %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  %42 = phi <2 x i64> [ %8, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i ], [ %24, %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i ]
  %43 = phi <2 x i64> [ %9, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel._crit_edge.i.i.i.i.i.i.i.i.i ], [ %25, %.loopexit132.i.loopexit.i.i.i.i.i.i.i.i ]
  store ptr %.lcssa127.i.i.i.i.i.i.i.i.i, ptr %.sroa.7180.sroa.5.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !26094, !noalias !26097
  %44 = bitcast <2 x i64> %42 to <2 x double>
  %45 = bitcast <2 x i64> %43 to <2 x double>
  store double %i.anl, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  store double %i.anm, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

bb.ku:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  %46 = extractelement <2 x double> %23, i64 0
  %i.ann = extractelement <2 x double> %23, i64 1
  %47 = fcmp une double %i.anh, %46
  %48 = fcmp une double %.pre181.i.i.i.i.i.i.i.i.i.i, %i.ann
  %or.cond.i.i.i.i.i.i.i.i.i.i129 = select i1 %47, i1 true, i1 %48
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i129, label %.loopexit133.i.i.i.i.i.i.i.i.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %26
  %49 = phi double [ %i.anb, %bb.ku ], [ %30, %26 ]
  %50 = phi double [ %i.anc, %bb.ku ], [ %31, %26 ]
  %51 = phi double [ %i.and, %bb.ku ], [ %30, %26 ]
  %52 = phi double [ %i.ane, %bb.ku ], [ %31, %26 ]
  %53 = phi double [ %i.anf, %bb.ku ], [ %30, %26 ]
  %54 = phi double [ %i.ang, %bb.ku ], [ %31, %26 ]
  %.pre181.i138.i.i.i.i.i.i.i.i.i = phi double [ %.pre181.i.i.i.i.i.i.i.i.i.i, %bb.ku ], [ %30, %26 ]
  %55 = phi double [ %i.anh, %bb.ku ], [ %31, %26 ]
  %56 = phi <2 x double> [ %23, %bb.ku ], [ %29, %26 ]
  %57 = icmp eq ptr %i.ani, %i.amp
  br i1 %57, label %.loopexit.loopexit.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !26099

.loopexit133.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ku, %bb.kq
  %.lcssa128.i.i.i.i.i.i.i.i.i = phi ptr [ %i.amx, %bb.kq ], [ %i.ani, %bb.ku ] ; 2 uses
  %.lcssa78.i.i.i.i.i.i.i.i.i = phi double [ %12, %bb.kq ], [ %i.anh, %bb.ku ]
  %.pre181.i.lcssa.i.i.i.i.i.i.i.i.i = phi double [ %.pre181.i.peel.i.i.i.i.i.i.i.i.i, %bb.kq ], [ %.pre181.i.i.i.i.i.i.i.i.i.i, %bb.ku ]
  %58 = phi <2 x double> [ %13, %bb.kq ], [ %23, %bb.ku ] ; 2 uses
  store ptr %.lcssa128.i.i.i.i.i.i.i.i.i, ptr %.sroa.7180.sroa.5.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !26094, !noalias !26097
  store <2 x double> %58, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26088, !noalias !26089
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %bb.ks, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph2769, %bb.kv, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !25451
  br label %bb.kf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %.loopexit133.i.i.i.i.i.i.i.i.i, %.loopexit132.i.i.i.i.i.i.i.i.i, %.loopexit131.i.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i124.i.i.i.i.i = phi ptr [ %.lcssa128.i.i.i.i.i.i.i.i.i, %.loopexit133.i.i.i.i.i.i.i.i.i ], [ %.lcssa127.i.i.i.i.i.i.i.i.i, %.loopexit132.i.i.i.i.i.i.i.i.i ], [ %.lcssa126.i.i.i.i.i.i.i.i.i, %.loopexit131.i.i.i.i.i.i.i.i.i ], [ %.lcssa125.i.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.13.0.ph.i.i.i.i.i.i.i.i.i = phi double [ undef, %.loopexit133.i.i.i.i.i.i.i.i.i ], [ %i.anm, %.loopexit132.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit131.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit130.i.i.i.i.i.i.i.i.i ]
  %.sroa.12.0.ph.i.i.i.i.i.i.i.i.i = phi double [ undef, %.loopexit133.i.i.i.i.i.i.i.i.i ], [ %i.anl, %.loopexit132.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit131.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit130.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i = phi double [ %.pre181.i.lcssa.i.i.i.i.i.i.i.i.i, %.loopexit133.i.i.i.i.i.i.i.i.i ], [ %i.anj, %.loopexit132.i.i.i.i.i.i.i.i.i ], [ %36, %.loopexit131.i.i.i.i.i.i.i.i.i ], [ %32, %.loopexit130.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.0.ph.i.i.i.i.i.i.i.i.i = phi double [ %.lcssa78.i.i.i.i.i.i.i.i.i, %.loopexit133.i.i.i.i.i.i.i.i.i ], [ %i.ank, %.loopexit132.i.i.i.i.i.i.i.i.i ], [ %37, %.loopexit131.i.i.i.i.i.i.i.i.i ], [ %33, %.loopexit130.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit133.i.i.i.i.i.i.i.i.i ], [ 2, %.loopexit132.i.i.i.i.i.i.i.i.i ], [ 1, %.loopexit131.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit130.i.i.i.i.i.i.i.i.i ]
  %59 = phi <2 x double> [ %58, %.loopexit133.i.i.i.i.i.i.i.i.i ], [ %44, %.loopexit132.i.i.i.i.i.i.i.i.i ], [ %40, %.loopexit131.i.i.i.i.i.i.i.i.i ], [ %35, %.loopexit130.i.i.i.i.i.i.i.i.i ]
  %60 = phi <2 x double> [ undef, %.loopexit133.i.i.i.i.i.i.i.i.i ], [ %45, %.loopexit132.i.i.i.i.i.i.i.i.i ], [ %41, %.loopexit131.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit130.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26100
  store i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !26100
  store double %.sroa.6.0.ph.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26100
  store double %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26100
  store <2 x double> %59, ptr %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26100
  store <2 x double> %60, ptr %.sroa.84.0..sroa_idx.i.i.i.i.i.i.i.i.i.a, align 8, !noalias !26100
  store double %.sroa.12.0.ph.i.i.i.i.i.i.i.i.i, ptr %.sroa.106.0..sroa_idx.i.i.i.i.i.i.i.i.i.a, align 8, !noalias !26100
  store double %.sroa.13.0.ph.i.i.i.i.i.i.i.i.i, ptr %.sroa.117.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !26101
  invoke void @_RNvMsj_NtCsdqxqgV7ixUt_5kurbo7bezpathNtB5_7PathSeg14intersect_line(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc5.i.i unwind label %.loopexit.i.i, !noalias !26093

.noexc5.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jz, ptr noundef nonnull align 8 dereferenceable(56) %i.ka, i64 56, i1 false), !noalias !26105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26062
  store i64 1, ptr %i.s, align 8, !alias.scope !26106, !noalias !26105
  store i64 0, ptr %i.jy, align 8, !alias.scope !26106, !noalias !26105
  %i.ano = load i32, ptr %i.jz, align 8           ; 2 uses
  %i.anp = icmp eq i32 %i.ano, 0
  br i1 %i.anp, label %.lr.ph2769, label %._crit_edge2770

.loopexit.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  %lpad.loopexit.i.i131 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i125

.loopexit.split-lp.i.i:                           ; preds = %bb.kt
  %lpad.loopexit.split-lp.i.i127 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i125

._crit_edge2770:                                  ; preds = %.noexc5.i.i
  %i.anq = zext i32 %i.ano to i64
  br label %bb.kw

bb.kw:                                            ; preds = %._crit_edge2770, %bb.kl
  %.promoted118.i.i.i.pre.i639.i.lcssa = phi i64 [ 0, %._crit_edge2770 ], [ %.promoted118.i.i.i.pre.i636.i, %bb.kl ] ; 2 uses
  %.lcssa2368 = phi i64 [ 1, %._crit_edge2770 ], [ %6, %bb.kl ] ; 3 uses
  %.promoted120.i.i.i263.i.i.lcssa = phi ptr [ %.promoted.i.i.i.i.i124.i.i.i.i.i, %._crit_edge2770 ], [ %.promoted120.i.i.i.i.i, %bb.kl ]
  %.promoted119.i.i.i258.i.i.lcssa = phi i1 [ %.promoted119.i.i.i255.i.i, %._crit_edge2770 ], [ %.promoted119.i.i.i.i.i, %bb.kl ]
  %.promoted.i.i.i249.i.i.lcssa = phi i64 [ 1, %._crit_edge2770 ], [ %.promoted.i.i.i.i.i, %bb.kl ]
  %.lcssa2339 = phi i64 [ %i.anq, %._crit_edge2770 ], [ %i.amt, %bb.kl ]
  %i.anr = add i64 %.promoted118.i.i.i.pre.i639.i.lcssa, 1 ; 3 uses
  store i64 %i.anr, ptr %i.jy, align 8, !alias.scope !26107, !noalias !26114
  %i.ans = getelementptr inbounds nuw [16 x i8], ptr %.sink329.i.i.sroa.gep.i, i64 %.promoted118.i.i.i.pre.i639.i.lcssa
  %.sroa.6.0.ph.i.i.i = load double, ptr %i.ans, align 8, !alias.scope !26106, !noalias !26105, !noundef !10
  %i.ant = load double, ptr %i.w, align 8, !noalias !26118, !noundef !10 ; 2 uses
  %i.anu = load double, ptr %i.jq, align 8, !noalias !26118, !noundef !10
  %i.anv = fsub double %i.anu, %i.ant
  %i.anw = fmul double %.sroa.6.0.ph.i.i.i, %i.anv
  %i.anx = fadd double %i.ant, %i.anw             ; 2 uses
  %.inv.i.i.i.i = fcmp ord double %i.anx, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %.inv.i.i.i.i, double %i.anx, double 0.000000e+00
  %i.any = icmp ult i64 %i.amr, 1152921504606846976
  call void @llvm.assume(i1 %i.any)
  %i.anz = load i64, ptr %i.v, align 8, !range !69, !alias.scope !26042, !noalias !26119, !noundef !10
  %i.aoa = icmp eq i64 %i.amr, %i.anz
  br i1 %i.aoa, label %bb.kx, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.kx:                                            ; preds = %bb.kw
  %61 = trunc nuw i64 %.lcssa2368 to i1
  %i.aob = sub i64 %.lcssa2339, %i.anr
  %i.aoc = call i64 @llvm.uadd.sat.i64(i64 %i.aob, i64 1)
  %62 = select i1 %61, i64 %i.aoc, i64 1
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.amr, i64 noundef %62, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i unwind label %bb.ky, !noalias !26045

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i: ; preds = %bb.kx
  %.pre.i = load ptr, ptr %i.js, align 8, !alias.scope !26042, !noalias !26119
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i, %bb.kw
  %i.aod = phi ptr [ %.pre.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i ], [ %i.amq, %bb.kw ] ; 2 uses
  %.promoted.i.i.i246.i.i = phi i64 [ %.lcssa2368, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i ], [ %.promoted.i.i.i249.i.i.lcssa, %bb.kw ]
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.aod, i64 %i.amr
  store double %spec.store.select.i.i.i.i, ptr %i.aoe, align 8, !noalias !26093
  %i.aof = add nuw nsw i64 %i.amr, 1              ; 2 uses
  store i64 %i.aof, ptr %i.jt, align 8, !alias.scope !26042, !noalias !26119
  br label %bb.kl

bb.ky:                                            ; preds = %bb.kx
  %i.aog = landingpad { ptr, i32 }
          cleanup
  br label %.body.i125

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.kg, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !25451
  %i.aoh = icmp eq ptr %i.akr, %i.aki
  br i1 %i.aoh, label %._crit_edge.i, label %bb.ka

bb.kz:                                            ; preds = %bb.mf
  %i.aoi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body176

.body176:                                         ; preds = %bb.jf, %bb.jg, %bb.kz
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i: ; preds = %.loopexit.split-lp.i119.loopexit, %.loopexit.split-lp.i119.loopexit.split-lp, %bb.lm, %.loopexit.i121, %bb.lc, %bb.lb, %bb.ki, %.body.i125
  %.pn237.i = phi { ptr, i32 } [ %i.aol, %bb.lc ], [ %eh.lpad-body.i126, %.body.i125 ], [ %eh.lpad-body.i126, %bb.ki ], [ %i.aol, %bb.lb ], [ %lpad.loopexit.i122, %.loopexit.i121 ], [ %i.apm, %bb.lm ], [ %lpad.loopexit466, %.loopexit.split-lp.i119.loopexit ], [ %lpad.loopexit.split-lp467, %.loopexit.split-lp.i119.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26120)
  %.val.i261.i.a = load i64, ptr %i.v, align 8, !range !69, !alias.scope !26120, !noalias !25451, !noundef !10 ; 2 uses
  %i.aoj = icmp eq i64 %.val.i261.i.a, 0
  br i1 %i.aoj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.la

bb.la:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i
  %.val1.i.i = load ptr, ptr %i.js, align 8, !alias.scope !26120, !noalias !25451, !nonnull !10, !noundef !10
  %i.aok = shl nuw i64 %.val.i261.i.a, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.aok, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !26120
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.lb:                                            ; preds = %bb.ka
  %i.aol = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26123)
  %.val.i262.i = load i64, ptr %i.u, align 8, !alias.scope !26123, !noalias !25451 ; 2 uses
  %i.aom = icmp eq i64 %.val.i262.i, 0
  br i1 %i.aom, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %.val1.i263.i = load ptr, ptr %.sroa.4148.0..sroa_idx.i, align 8, !alias.scope !26123, !noalias !25451, !nonnull !10, !noundef !10
  %i.aon = mul nuw i64 %.val.i262.i, 56
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i263.i, i64 noundef %i.aon, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !26123
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

.loopexit.i121:                                   ; preds = %bb.me, %bb.mc
  %lpad.loopexit.i122 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

.loopexit.split-lp.i119.loopexit:                 ; preds = %.lr.ph.i162
  %lpad.loopexit466 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

.loopexit.split-lp.i119.loopexit.split-lp:        ; preds = %bb.kb, %bb.le, %bb.lh
  %lpad.loopexit.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

bb.ld:                                            ; preds = %._crit_edge641.i, %._crit_edge.i
  %spec.store.select26681.i = phi double [ %spec.store.select26682.i, %._crit_edge641.i ], [ %spec.store.select26.i, %._crit_edge.i ]
  %i.aoo = phi i64 [ %i.ald, %._crit_edge641.i ], [ %i.ami, %._crit_edge.i ] ; 4 uses
  %i.aop = phi i64 [ %.pre642.i, %._crit_edge641.i ], [ %.pre640.i, %._crit_edge.i ]
  %i.aoq = load ptr, ptr %i.js, align 8, !alias.scope !26032, !noalias !25451, !nonnull !10, !noundef !10 ; 2 uses
  %i.aor = getelementptr inbounds nuw [8 x i8], ptr %i.aoq, i64 %i.aoo
  store double %spec.store.select26681.i, ptr %i.aor, align 8, !noalias !26032
  %i.aos = add i64 %i.aoo, 1                      ; 3 uses
  store i64 %i.aos, ptr %i.jt, align 8, !alias.scope !26032, !noalias !25451
  %i.aot = fadd double %spec.store.select14.i, %spec.store.select19.i ; 2 uses
  %.inv233.i = fcmp ord double %i.aot, 0.000000e+00
  %spec.store.select27.i = select i1 %.inv233.i, double %i.aot, double 0.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !26035)
  %i.aou = icmp eq i64 %i.aos, %i.aop
  br i1 %i.aou, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #58
          to label %._crit_edge643.i unwind label %.loopexit.split-lp.i119.loopexit.split-lp

._crit_edge643.i:                                 ; preds = %bb.le
  %.pre644.i = load ptr, ptr %i.js, align 8, !alias.scope !26035, !noalias !25451
  br label %bb.lf

bb.lf:                                            ; preds = %._crit_edge643.i, %bb.ld
  %i.aov = phi ptr [ %.pre644.i, %._crit_edge643.i ], [ %i.aoq, %bb.ld ] ; 11 uses
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.aov, i64 %i.aos
  store double %spec.store.select27.i, ptr %i.aow, align 8, !noalias !26035
  %i.aox = add i64 %i.aoo, 2                      ; 4 uses
  %i.aoy = icmp ugt i64 %i.aoo, -3
  br i1 %i.aoy, label %._crit_edge473.i, label %bb.lg, !prof !13

bb.lg:                                            ; preds = %bb.lf
  %i.aoz = icmp samesign ult i64 %i.aox, 21
  br i1 %i.aoz, label %bb.li, label %bb.lh, !prof !13

bb.lh:                                            ; preds = %bb.lg
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %i.aov, i64 noundef range(i64 0, 1152921504606846976) %i.aox, ptr noalias nofree noundef nonnull %i.a) #58
          to label %.lr.ph472.i unwind label %.loopexit.split-lp.i119.loopexit.split-lp

bb.li:                                            ; preds = %bb.lg
  call void @llvm.experimental.noalias.scope.decl(metadata !26126)
  %.idx.i161 = shl nuw nsw i64 %i.aox, 3
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aov, i64 %.idx.i161
  %.sroa.0.02.i = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.li
  %.sroa.0.05.i = phi ptr [ %.sroa.0.0.i163, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.sroa.0.02.i, %bb.li ] ; 5 uses
  %.pn4.i = phi ptr [ %.sroa.0.05.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.aov, %bb.li ] ; 4 uses
  %i.apb = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.05.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.pn4.i)
          to label %.noexc167 unwind label %.loopexit.split-lp.i119.loopexit

.noexc167:                                        ; preds = %.lr.ph.i162
  %i.apc = icmp slt i8 %i.apb, 0
  br i1 %i.apc, label %bb.lj, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i

bb.lj:                                            ; preds = %.noexc167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26126
  %i.apd = load double, ptr %.sroa.0.05.i, align 8, !alias.scope !26126, !noundef !10 ; 2 uses
  store double %i.apd, ptr %i.f, align 8, !noalias !26126
  %i.ape = load i64, ptr %.pn4.i, align 8, !alias.scope !26126
  store i64 %i.ape, ptr %.sroa.0.05.i, align 8, !alias.scope !26126
  %i.apf = icmp eq ptr %.pn4.i, %i.aov
  br i1 %i.apf, label %._crit_edge2779, label %.lr.ph2778

bb.lk:                                            ; preds = %bb.ll
  %i.apg = load i64, ptr %i.api, align 8, !alias.scope !26126
  store i64 %i.apg, ptr %.sroa.0.0.i.i1662776, align 8, !alias.scope !26126
  %i.aph = icmp eq ptr %i.api, %i.aov
  br i1 %i.aph, label %._crit_edge2779, label %.lr.ph2778

.lr.ph2778:                                       ; preds = %bb.lj, %bb.lk
  %.sroa.0.0.i.i1662776 = phi ptr [ %i.api, %bb.lk ], [ %.pn4.i, %bb.lj ] ; 4 uses
  %i.api = getelementptr inbounds i8, ptr %.sroa.0.0.i.i1662776, i64 -8 ; 4 uses
  %i.apj = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.api)
          to label %bb.ll unwind label %bb.lm

bb.ll:                                            ; preds = %.lr.ph2778
  %i.apk = icmp slt i8 %i.apj, 0
  br i1 %i.apk, label %bb.lk, label %._crit_edge2779

._crit_edge2779:                                  ; preds = %bb.lk, %bb.ll, %bb.lj
  %.sroa.0.0.i.lcssa.i = phi ptr [ %i.aov, %bb.lj ], [ %i.aov, %bb.lk ], [ %.sroa.0.0.i.i1662776, %bb.ll ]
  %i.apl = load i64, ptr %i.f, align 8, !noalias !26129
  store i64 %i.apl, ptr %.sroa.0.0.i.lcssa.i, align 8, !alias.scope !26126, !noalias !26134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26126
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i

bb.lm:                                            ; preds = %.lr.ph2778
  %i.apm = landingpad { ptr, i32 }
          cleanup
  store double %i.apd, ptr %.sroa.0.0.i.i1662776, align 8, !alias.scope !26126, !noalias !26135
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %._crit_edge2779, %.noexc167
  %.sroa.0.0.i163 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i163, %i.apa
  br i1 %.not.i, label %.lr.ph472.i, label %.lr.ph.i162

.lr.ph472.i:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.lh
  %i.apn = trunc nuw i8 %.sroa.039.0.i to i1
  br label %bb.mc

._crit_edge473.i:                                 ; preds = %.backedge.i, %bb.lf
  call void @llvm.experimental.noalias.scope.decl(metadata !26140)
  %.val.i269.i = load i64, ptr %i.v, align 8, !range !69, !alias.scope !26140, !noalias !25451, !noundef !10 ; 2 uses
  %i.apo = icmp eq i64 %.val.i269.i, 0
  br i1 %i.apo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit271.i, label %bb.ln

bb.ln:                                            ; preds = %._crit_edge473.i
  %i.app = shl nuw i64 %.val.i269.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aov, i64 noundef %i.app, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !26140
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit271.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit271.i: ; preds = %bb.ln, %._crit_edge473.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25451
  call void @llvm.experimental.noalias.scope.decl(metadata !26143)
  %i.apq = load i32, ptr %i.iy, align 8, !range !8787, !alias.scope !26143, !noundef !10 ; 3 uses
  %i.apr = icmp samesign ugt i32 %i.apq, 1
  %i.aps = zext nneg i32 %i.apq to i64
  %i.apt = add nsw i64 %i.aps, -1
  %i.apu = select i1 %i.apr, i64 %i.apt, i64 0
  switch i64 %i.apu, label %bb.lo [
    i64 0, label %bb.lq
    i64 1, label %bb.lt
  ]

end_hunk_2
begin_hunk_3_@llvm.fabs.v4f64
!25894 = distinct !{!25894, !25895, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25895 = distinct !{!25895, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout"}
!25896 = !{!25894, !25897, !25835, !25772}
!25897 = distinct !{!25897, !25898, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25898 = distinct !{!25898, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout"}
!25899 = !{!25900, !25894, !25767, !25769}
!25900 = distinct !{!25900, !25901, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25901 = distinct !{!25901, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!25902 = !{!25903}
!25903 = distinct !{!25903, !25904, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25904 = distinct !{!25904, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout"}
!25905 = !{!25903, !25897, !25835, !25772}
!25906 = !{!25907, !25903, !25767, !25769}
!25907 = distinct !{!25907, !25908, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25908 = distinct !{!25908, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!25909 = !{!25910}
!25910 = distinct !{!25910, !25911, !"_RINvMsd_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB6_11FixedStroke9from_pairNtNtB8_5paint5PaintECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25911 = distinct !{!25911, !"_RINvMsd_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB6_11FixedStroke9from_pairNtNtB8_5paint5PaintECs7tN9tvpkfrg_12typst_layout"}
!25912 = !{!25913}
!25913 = distinct !{!25913, !25911, !"_RINvMsd_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB6_11FixedStroke9from_pairNtNtB8_5paint5PaintECs7tN9tvpkfrg_12typst_layout: argument 1"}
!25914 = !{!25910, !25913, !25452, !25447, !25450}
!25915 = !{!25910, !25913}
!25916 = !{!25913, !25452, !25447, !25450}
!25917 = !{!25918}
!25918 = distinct !{!25918, !25919, !"_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates_0B7_: argument 0"}
!25919 = distinct !{!25919, !"_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates_0B7_"}
!25920 = !{!25921}
!25921 = distinct !{!25921, !25922, !"_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!25922 = distinct !{!25922, !"_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!25923 = !{!25924, !25921, !25918}
!25924 = distinct !{!25924, !25922, !"_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!25925 = !{!25926}
!25926 = distinct !{!25926, !25927, !"_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!25927 = distinct !{!25927, !"_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!25928 = !{!25929}
!25929 = distinct !{!25929, !25927, !"_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!25930 = !{!25929, !25921}
!25931 = !{!25926, !25924, !25918}
!25932 = !{!25926, !25929, !25924, !25921, !25918}
!25933 = !{!25929, !25924, !25921, !25918}
!25934 = !{!25924, !25918}
!25935 = !{!25936}
!25936 = distinct !{!25936, !25937, !"_RNvXsq_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout: argument 1"}
!25937 = distinct !{!25937, !"_RNvXsq_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout"}
!25938 = !{!25936, !25921}
!25939 = !{!25940, !25924, !25918}
!25940 = distinct !{!25940, !25937, !"_RNvXsq_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_11DashPatternNtNtNtB9_6layout3abs3AbsB1c_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout: argument 0"}
!25941 = !{!25942, !25944, !25946, !25947, !25940, !25936, !25924, !25921, !25918}
!25942 = distinct !{!25942, !25943, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout: argument 0"}
!25943 = distinct !{!25943, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout"}
!25944 = distinct !{!25944, !25945, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25945 = distinct !{!25945, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout"}
!25946 = distinct !{!25946, !25945, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout: argument 1"}
!25947 = distinct !{!25947, !25948, !"_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout: argument 0"}
!25948 = distinct !{!25948, !"_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout"}
!25949 = !{!25944, !25947, !25940, !25936, !25924, !25921, !25918}
!25950 = !{!25951}
!25951 = distinct !{!25951, !25952, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25952 = distinct !{!25952, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout"}
!25953 = !{!25951, !25954}
!25954 = distinct !{!25954, !25955, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25955 = distinct !{!25955, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout"}
!25956 = !{!25957, !25951}
!25957 = distinct !{!25957, !25958, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25958 = distinct !{!25958, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!25959 = !{!25960}
!25960 = distinct !{!25960, !25961, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25961 = distinct !{!25961, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout"}
!25962 = !{!25960, !25954}
!25963 = !{!25964, !25960}
!25964 = distinct !{!25964, !25965, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25965 = distinct !{!25965, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!25966 = !{!25967}
!25967 = distinct !{!25967, !25968, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25968 = distinct !{!25968, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout"}
!25969 = !{!25970}
!25970 = distinct !{!25970, !25971, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25971 = distinct !{!25971, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs7tN9tvpkfrg_12typst_layout"}
!25972 = !{!25973}
!25973 = distinct !{!25973, !25974, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25974 = distinct !{!25974, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerEECs7tN9tvpkfrg_12typst_layout"}
!25975 = !{!25976}
!25976 = distinct !{!25976, !25977, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!25977 = distinct !{!25977, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!25978 = !{!25976, !25973, !25970, !25967}
!25979 = !{!25980}
!25980 = distinct !{!25980, !25981, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25981 = distinct !{!25981, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs7tN9tvpkfrg_12typst_layout"}
!25982 = !{!25983}
!25983 = distinct !{!25983, !25984, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color9SpotColorECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25984 = distinct !{!25984, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color9SpotColorECs7tN9tvpkfrg_12typst_layout"}
!25985 = !{!25986}
!25986 = distinct !{!25986, !25987, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25987 = distinct !{!25987, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantEECs7tN9tvpkfrg_12typst_layout"}
!25988 = !{!25989}
!25989 = distinct !{!25989, !25990, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!25990 = distinct !{!25990, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!25991 = !{!25989, !25986, !25983, !25980, !25967}
!25992 = !{!25993}
!25993 = distinct !{!25993, !25994, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25994 = distinct !{!25994, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientECs7tN9tvpkfrg_12typst_layout"}
!25995 = !{!25993, !25967}
!25996 = !{!25997}
!25997 = distinct !{!25997, !25998, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!25998 = distinct !{!25998, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientEECs7tN9tvpkfrg_12typst_layout"}
!25999 = !{!26000}
!26000 = distinct !{!26000, !26001, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26001 = distinct !{!26001, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26002 = !{!26000, !25997, !25993, !25967}
!26003 = !{!26004}
!26004 = distinct !{!26004, !26005, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26005 = distinct !{!26005, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientEECs7tN9tvpkfrg_12typst_layout"}
!26006 = !{!26007}
!26007 = distinct !{!26007, !26008, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26008 = distinct !{!26008, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26009 = !{!26007, !26004, !25993, !25967}
!26010 = !{!26011}
!26011 = distinct !{!26011, !26012, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26012 = distinct !{!26012, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientEECs7tN9tvpkfrg_12typst_layout"}
!26013 = !{!26014}
!26014 = distinct !{!26014, !26015, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26015 = distinct !{!26015, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26016 = !{!26014, !26011, !25993, !25967}
!26017 = !{!26018, !26020}
!26018 = distinct !{!26018, !26019, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26019 = distinct !{!26019, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout"}
!26020 = distinct !{!26020, !26021, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26021 = distinct !{!26021, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout"}
!26022 = !{!26023}
!26023 = distinct !{!26023, !26024, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26024 = distinct !{!26024, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout"}
!26025 = !{!26023, !26020}
!26026 = !{!26027, !26023}
!26027 = distinct !{!26027, !26028, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26028 = distinct !{!26028, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!26029 = !{!26030}
!26030 = distinct !{!26030, !26031, !"_RINvMNtCsdqxqgV7ixUt_5kurbo4lineNtB3_4Line3newNtNtB5_5point5PointBI_ECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26031 = distinct !{!26031, !"_RINvMNtCsdqxqgV7ixUt_5kurbo4lineNtB3_4Line3newNtNtB5_5point5PointBI_ECs7tN9tvpkfrg_12typst_layout"}
!26032 = !{!26033}
!26033 = distinct !{!26033, !26034, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8push_mutCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26034 = distinct !{!26034, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8push_mutCs7tN9tvpkfrg_12typst_layout"}
!26035 = !{!26036}
!26036 = distinct !{!26036, !26037, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8push_mutCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26037 = distinct !{!26037, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8push_mutCs7tN9tvpkfrg_12typst_layout"}
!26038 = !{!26039, !25452, !25447, !25450}
!26039 = distinct !{!26039, !26040, !"_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates0_0B7_: argument 0"}
!26040 = distinct !{!26040, !"_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates0_0B7_"}
!26041 = !{!26039}
!26042 = !{!26043}
!26043 = distinct !{!26043, !26044, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB1S_6copied6CopiedINtNtNtB1W_5slice4iter4IterNtB33_6PathElEEEINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB33_16LineIntersectionKj3_ENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENCB5Z_s2_0EEB65_: argument 0"}
!26044 = distinct !{!26044, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB1S_6copied6CopiedINtNtNtB1W_5slice4iter4IterNtB33_6PathElEEEINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB33_16LineIntersectionKj3_ENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENCB5Z_s2_0EEB65_"}
!26045 = !{!26046}
!26046 = distinct !{!26046, !26044, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1S_7flatten7FlatMapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB1S_6copied6CopiedINtNtNtB1W_5slice4iter4IterNtB33_6PathElEEEINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB33_16LineIntersectionKj3_ENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENCB5Z_s2_0EEB65_: argument 1"}
!26047 = !{!26048}
!26048 = distinct !{!26048, !26049, !"_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1n_6PathElEEEINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB1n_16LineIntersectionKj3_ENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENCB4h_s2_0ENtNtNtB9_6traits8iterator8Iterator4nextB4n_: argument 0"}
!26049 = distinct !{!26049, !"_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1n_6PathElEEEINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB1n_16LineIntersectionKj3_ENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENCB4h_s2_0ENtNtNtB9_6traits8iterator8Iterator4nextB4n_"}
!26050 = !{!26051}
!26051 = distinct !{!26051, !26052, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB17_6PathElEEEINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB17_16LineIntersectionKj3_ENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtB9_6traits8iterator8Iterator4nextB47_: argument 1"}
!26052 = distinct !{!26052, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB17_6PathElEEEINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB17_16LineIntersectionKj3_ENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtB9_6traits8iterator8Iterator4nextB47_"}
!26053 = !{!26054}
!26054 = distinct !{!26054, !26055, !"_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1u_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtB1u_16LineIntersectionKj3_EENtNtNtB9_6traits8iterator8Iterator4nextB3h_: argument 1"}
!26055 = distinct !{!26055, !"_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1u_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtB1u_16LineIntersectionKj3_EENtNtNtB9_6traits8iterator8Iterator4nextB3h_"}
!26056 = !{!26057}
!26057 = distinct !{!26057, !26058, !"_RNvXs8_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1h_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EEINtB5_8FuseImplBY_E4nextB34_: argument 1"}
!26058 = distinct !{!26058, !"_RNvXs8_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1h_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EEINtB5_8FuseImplBY_E4nextB34_"}
!26059 = !{!26060}
!26060 = distinct !{!26060, !26061, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuse17and_then_or_clearINtNtB4_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB1m_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB1m_16LineIntersectionKj3_ENvYB13_NtNtNtB6_6traits8iterator8Iterator4nextEB39_: argument 1"}
!26061 = distinct !{!26061, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuse17and_then_or_clearINtNtB4_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB1m_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB1m_16LineIntersectionKj3_ENvYB13_NtNtNtB6_6traits8iterator8Iterator4nextEB39_"}
!26062 = !{!26063, !26060, !26064, !26057, !26065, !26054, !26066, !26051, !26048, !26043, !26046, !25452, !25447, !25450}
!26063 = distinct !{!26063, !26061, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuse17and_then_or_clearINtNtB4_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB1m_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB1m_16LineIntersectionKj3_ENvYB13_NtNtNtB6_6traits8iterator8Iterator4nextEB39_: argument 0"}
!26064 = distinct !{!26064, !26058, !"_RNvXs8_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1h_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EEINtB5_8FuseImplBY_E4nextB34_: argument 0"}
!26065 = distinct !{!26065, !26055, !"_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB1u_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0EINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtB1u_16LineIntersectionKj3_EENtNtNtB9_6traits8iterator8Iterator4nextB3h_: argument 0"}
!26066 = distinct !{!26066, !26052, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB17_6PathElEEEINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8ArrayVecNtB17_16LineIntersectionKj3_ENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtB9_6traits8iterator8Iterator4nextB47_: argument 0"}
!26067 = !{!26068}
!26068 = distinct !{!26068, !26069, !"_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtBW_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2I_: argument 1"}
!26069 = distinct !{!26069, !"_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtBW_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2I_"}
!26070 = !{!26071}
!26071 = distinct !{!26071, !26072, !"_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtBZ_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2L_: argument 1"}
!26072 = distinct !{!26072, !"_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtBZ_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2L_"}
!26073 = !{!26074}
!26074 = distinct !{!26074, !26075, !"_RNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB5_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4IterNtB5_6PathElEEENtNtNtBV_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 1"}
!26075 = distinct !{!26075, !"_RNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB5_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4IterNtB5_6PathElEEENtNtNtBV_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout"}
!26076 = !{!26077, !26079, !26074, !26080, !26071, !26081, !26068, !26063, !26060, !26064, !26057, !26065, !26054, !26066, !26051, !26048, !26043, !26046}
!26077 = distinct !{!26077, !26078, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 1:Peel0"}
!26078 = distinct !{!26078, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout"}
!26079 = distinct !{!26079, !26075, !"_RNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB5_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4IterNtB5_6PathElEEENtNtNtBV_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26080 = distinct !{!26080, !26072, !"_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtBZ_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2L_: argument 0"}
!26081 = distinct !{!26081, !26069, !"_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsdqxqgV7ixUt_5kurbo7bezpath8SegmentsINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtBW_6PathElEEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2I_: argument 0"}
!26082 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 1}
!26083 = !{!26084, !26074, !26071, !26068, !26060, !26057, !26054, !26051, !26048, !26046}
!26084 = distinct !{!26084, !26085, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout: argument 0:Peel0"}
!26085 = distinct !{!26085, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout"}
!26086 = !{!26087, !26079, !26080, !26081, !26063, !26064, !26065, !26066, !26043, !25452, !25447, !25450}
!26087 = distinct !{!26087, !26085, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout: argument 1"}
!26088 = !{!26074, !26071, !26068, !26060, !26057, !26054, !26051, !26048, !26046}
!26089 = !{!26079, !26080, !26081, !26063, !26064, !26065, !26066, !26043, !25452, !25447, !25450}
!26090 = !{!26091}
!26091 = distinct !{!26091, !26078, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 1"}
!26092 = !{!26091, !26079, !26074, !26080, !26071, !26081, !26068, !26063, !26060, !26064, !26057, !26065, !26054, !26066, !26051, !26048, !26043, !26046}
!26093 = !{!26043, !26046}
!26094 = !{!26095, !26091, !26074, !26071, !26068, !26060, !26057, !26054, !26051, !26048, !26046}
!26095 = distinct !{!26095, !26096, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26096 = distinct !{!26096, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout"}
!26097 = !{!26098, !26079, !26080, !26081, !26063, !26064, !26065, !26066, !26043, !25452, !25447, !25450}
!26098 = distinct !{!26098, !26078, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26099 = distinct !{!26099, !1312}
!26100 = !{!26080, !26071, !26081, !26068, !26063, !26060, !26064, !26057, !26065, !26054, !26066, !26051, !26048, !26043, !26046, !25452, !25447, !25450}
!26101 = !{!26102, !26104, !26080, !26071, !26081, !26068, !26063, !26060, !26064, !26057, !26065, !26054, !26066, !26051, !26048, !26043, !26046, !25452, !25447, !25450}
!26102 = distinct !{!26102, !26103, !"_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0B7_: argument 0"}
!26103 = distinct !{!26103, !"_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0B7_"}
!26104 = distinct !{!26104, !26103, !"_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco8decorates1_0B7_: argument 1"}
!26105 = !{!26065, !26066, !26043, !25452, !25447, !25450}
!26106 = !{!26054, !26051, !26048, !26046}
!26107 = !{!26108, !26110, !26112, !26054, !26051, !26048, !26046}
!26108 = distinct !{!26108, !26109, !"_RNvXs9_NtCs4Q1BBFz20BJ_8arrayvec8arrayvecINtB5_8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 1"}
!26109 = distinct !{!26109, !"_RNvXs9_NtCs4Q1BBFz20BJ_8arrayvec8arrayvecINtB5_8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout"}
!26110 = distinct !{!26110, !26111, !"_RNvYNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Q_3ops8function6FnOnceTQB5_EE9call_onceCs7tN9tvpkfrg_12typst_layout: argument 1"}
!26111 = distinct !{!26111, !"_RNvYNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Q_3ops8function6FnOnceTQB5_EE9call_onceCs7tN9tvpkfrg_12typst_layout"}
!26112 = distinct !{!26112, !26113, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EB1Q_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout: argument 1"}
!26113 = distinct !{!26113, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EB1Q_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout"}
!26114 = !{!26115, !26116, !26117, !26065, !26066, !26043, !25452, !25447, !25450}
!26115 = distinct !{!26115, !26109, !"_RNvXs9_NtCs4Q1BBFz20BJ_8arrayvec8arrayvecINtB5_8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26116 = distinct !{!26116, !26111, !"_RNvYNvYINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1Q_3ops8function6FnOnceTQB5_EE9call_onceCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26117 = distinct !{!26117, !26113, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EB1Q_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26118 = !{!26048, !26043, !26046, !25452, !25447, !25450}
!26119 = !{!26046, !25452, !25447, !25450}
!26120 = !{!26121}
!26121 = distinct !{!26121, !26122, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26122 = distinct !{!26122, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!26123 = !{!26124}
!26124 = distinct !{!26124, !26125, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_: argument 0"}
!26125 = distinct !{!26125, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_"}
!26126 = !{!26127}
!26127 = distinct !{!26127, !26128, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26128 = distinct !{!26128, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout"}
!26129 = !{!26130, !26132, !26127}
!26130 = distinct !{!26130, !26131, !"_RNvXs5_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBd_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26131 = distinct !{!26131, !"_RNvXs5_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBd_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26132 = distinct !{!26132, !26133, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26133 = distinct !{!26133, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!26134 = !{!26130, !26132}
!26135 = !{!26136, !26138}
!26136 = distinct !{!26136, !26137, !"_RNvXs5_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBd_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26137 = distinct !{!26137, !"_RNvXs5_NtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtNtBd_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26138 = distinct !{!26138, !26139, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26139 = distinct !{!26139, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!26140 = !{!26141}
!26141 = distinct !{!26141, !26142, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26142 = distinct !{!26142, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!26143 = !{!26144}
!26144 = distinct !{!26144, !26145, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26145 = distinct !{!26145, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout"}
!26146 = !{!26147}
!26147 = distinct !{!26147, !26148, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26148 = distinct !{!26148, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECs7tN9tvpkfrg_12typst_layout"}
!26149 = !{!26150}
!26150 = distinct !{!26150, !26151, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26151 = distinct !{!26151, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerEECs7tN9tvpkfrg_12typst_layout"}
!26152 = !{!26153}
!26153 = distinct !{!26153, !26154, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26154 = distinct !{!26154, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26155 = !{!26153, !26150, !26147, !26144}
!26156 = !{!26157}
!26157 = distinct !{!26157, !26158, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26158 = distinct !{!26158, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs7tN9tvpkfrg_12typst_layout"}
!26159 = !{!26160}
!26160 = distinct !{!26160, !26161, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color9SpotColorECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26161 = distinct !{!26161, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color9SpotColorECs7tN9tvpkfrg_12typst_layout"}
!26162 = !{!26163}
!26163 = distinct !{!26163, !26164, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26164 = distinct !{!26164, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantEECs7tN9tvpkfrg_12typst_layout"}
!26165 = !{!26166}
!26166 = distinct !{!26166, !26167, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26167 = distinct !{!26167, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26168 = !{!26166, !26163, !26160, !26157, !26144}
!26169 = !{!26170}
!26170 = distinct !{!26170, !26171, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26171 = distinct !{!26171, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientECs7tN9tvpkfrg_12typst_layout"}
!26172 = !{!26170, !26144}
!26173 = !{!26174}
!26174 = distinct !{!26174, !26175, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26175 = distinct !{!26175, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientEECs7tN9tvpkfrg_12typst_layout"}
!26176 = !{!26177}
!26177 = distinct !{!26177, !26178, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26178 = distinct !{!26178, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26179 = !{!26177, !26174, !26170, !26144}
!26180 = !{!26181}
!26181 = distinct !{!26181, !26182, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26182 = distinct !{!26182, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientEECs7tN9tvpkfrg_12typst_layout"}
!26183 = !{!26184}
!26184 = distinct !{!26184, !26185, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26185 = distinct !{!26185, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26186 = !{!26184, !26181, !26170, !26144}
!26187 = !{!26188}
!26188 = distinct !{!26188, !26189, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26189 = distinct !{!26189, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientEECs7tN9tvpkfrg_12typst_layout"}
!26190 = !{!26191}
!26191 = distinct !{!26191, !26192, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26192 = distinct !{!26192, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26193 = !{!26191, !26188, !26170, !26144}
!26194 = !{!26195, !26197}
!26195 = distinct !{!26195, !26196, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26196 = distinct !{!26196, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout"}
!26197 = distinct !{!26197, !26198, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26198 = distinct !{!26198, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout"}
!26199 = !{!26200}
!26200 = distinct !{!26200, !26201, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26201 = distinct !{!26201, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11DashPatternNtNtNtB14_6layout3abs3AbsB21_EEECs7tN9tvpkfrg_12typst_layout"}
!26202 = !{!26200, !26197}
!26203 = !{!26204, !26200}
!26204 = distinct !{!26204, !26205, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26205 = distinct !{!26205, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout"}
!26206 = !{!26207, !26209, !26211}
!26207 = distinct !{!26207, !26208, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26208 = distinct !{!26208, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26209 = distinct !{!26209, !26210, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26210 = distinct !{!26210, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerEECs7tN9tvpkfrg_12typst_layout"}
!26211 = distinct !{!26211, !26212, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26212 = distinct !{!26212, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout"}
!26213 = !{!26214}
!26214 = distinct !{!26214, !26215, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26215 = distinct !{!26215, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout"}
!26216 = !{!26217}
!26217 = distinct !{!26217, !26218, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout: argument 0"}
!26218 = distinct !{!26218, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout"}
!26219 = !{!26220}
!26220 = distinct !{!26220, !26221, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26221 = distinct !{!26221, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout"}
!26222 = !{!26220, !26217, !26214}
!26223 = !{!26224}
!26224 = distinct !{!26224, !26225, !"_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref: argument 0"}
!26225 = distinct !{!26225, !"_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref"}
!26226 = !{!26227, !26224}
!26227 = distinct !{!26227, !26228, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!26228 = distinct !{!26228, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core5clone5implsjNtB7_5Clone5clone"}
!26229 = !{!26230, !26224}
!26230 = distinct !{!26230, !26231, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core5clone5implsjNtB7_5Clone5clone: argument 0"}
!26231 = distinct !{!26231, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core5clone5implsjNtB7_5Clone5clone"}
!26232 = !{!26233}
!26233 = distinct !{!26233, !26234, !"_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4book: argument 0"}
!26234 = distinct !{!26234, !"_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World4book"}
!26235 = distinct !{null}
!26236 = !{!26237}
!26237 = distinct !{!26237, !26238, !"_RINvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_5chain5ChainINtNtB8_3map3MapINtNtB8_6filter6FilterIB10_INtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB20_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB3s_10ShapedText6hyphens_0ENCB3m_s0_0EIB1k_INtNtBc_6option4IterNCB3m_0ENCB3m_s1_0EEEINtB6_8FuseImplBZ_E8try_folduNCINvNtB8_7flatten15try_flatten_oneINtB4Z_6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB4d_ENCINvNvNtNtNtBa_6traits8iterator8Iterator8find_map5checkjB4d_NCB3m_s2_0E0E0B6U_EB3w_: argument 1"}
!26238 = distinct !{!26238, !"_RINvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_5chain5ChainINtNtB8_3map3MapINtNtB8_6filter6FilterIB10_INtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB20_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB3s_10ShapedText6hyphens_0ENCB3m_s0_0EIB1k_INtNtBc_6option4IterNCB3m_0ENCB3m_s1_0EEEINtB6_8FuseImplBZ_E8try_folduNCINvNtB8_7flatten15try_flatten_oneINtB4Z_6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB4d_ENCINvNvNtNtNtBa_6traits8iterator8Iterator8find_map5checkjB4d_NCB3m_s2_0E0E0B6U_EB3w_"}
!26239 = !{!26240}
!26240 = distinct !{!26240, !26241, !"_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_6filter6FilterIBP_INtNtNtBb_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1G_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB38_10ShapedText6hyphens_0ENCB32_s0_0EIB11_INtNtBb_6option4IterNCB32_0ENCB32_s1_0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_7flatten15try_flatten_oneINtB4F_6OptionjEuINtNtNtBb_3ops12control_flow11ControlFlowB3T_ENCINvNvB5g_8find_map5checkjB3T_NCB32_s2_0E0E0B6O_EB3c_: argument 1"}
!26241 = distinct !{!26241, !"_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_6filter6FilterIBP_INtNtNtBb_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1G_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB38_10ShapedText6hyphens_0ENCB32_s0_0EIB11_INtNtBb_6option4IterNCB32_0ENCB32_s1_0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_7flatten15try_flatten_oneINtB4F_6OptionjEuINtNtNtBb_3ops12control_flow11ControlFlowB3T_ENCINvNvB5g_8find_map5checkjB3T_NCB32_s2_0E0E0B6O_EB3c_"}
!26242 = !{!26243}
!26243 = distinct !{!26243, !26244, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1D_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB35_10ShapedText6hyphens_0ENCB2Z_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3Q_ENCINvNvB4u_8find_map5checkjB3Q_NCB2Z_s2_0E0E0B6b_EB39_: argument 1"}
!26244 = distinct !{!26244, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1D_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB35_10ShapedText6hyphens_0ENCB2Z_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3Q_ENCINvNvB4u_8find_map5checkjB3Q_NCB2Z_s2_0E0E0B6b_EB39_"}
!26245 = !{!26246}
!26246 = distinct !{!26246, !26247, !"_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1n_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB2P_10ShapedText6hyphens_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRB1N_INtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3A_ENCB2J_s0_0QNCINvNtB8_7flatten15try_flatten_oneB5i_uB5H_NCINvNvB43_8find_map5checkjB3A_NCB2J_s2_0E0E0E0B5H_EB2T_: argument 1"}
!26247 = distinct !{!26247, !"_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1n_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB2P_10ShapedText6hyphens_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRB1N_INtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3A_ENCB2J_s0_0QNCINvNtB8_7flatten15try_flatten_oneB5i_uB5H_NCINvNvB43_8find_map5checkjB3A_NCB2J_s2_0E0E0E0B5H_EB2T_"}
!26248 = !{!26249}
!26249 = distinct !{!26249, !26250, !"_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B4n_B4l_6hyphens_0NCINvNtB7_3map12map_try_foldB3A_INtNtBb_6option6OptionjEuB3G_NCB5n_s0_0QNCINvNtB7_7flatten15try_flatten_oneB6h_uB3G_NCINvNvB2k_8find_map5checkjB4l_NCB5n_s2_0E0E0E0E0B3G_EB4r_: argument 1"}
!26250 = distinct !{!26250, !"_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B4n_B4l_6hyphens_0NCINvNtB7_3map12map_try_foldB3A_INtNtBb_6option6OptionjEuB3G_NCB5n_s0_0QNCINvNtB7_7flatten15try_flatten_oneB6h_uB3G_NCINvNvB2k_8find_map5checkjB4l_NCB5n_s2_0E0E0E0E0B3G_EB4r_"}
!26251 = !{!26249, !26246, !26243, !26240, !26237}
!26252 = !{!26253, !26254, !26255, !26256, !26257, !26258, !26259, !26260, !26261, !26262, !26263}
!26253 = distinct !{!26253, !26250, !"_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B4n_B4l_6hyphens_0NCINvNtB7_3map12map_try_foldB3A_INtNtBb_6option6OptionjEuB3G_NCB5n_s0_0QNCINvNtB7_7flatten15try_flatten_oneB6h_uB3G_NCINvNvB2k_8find_map5checkjB4l_NCB5n_s2_0E0E0E0E0B3G_EB4r_: argument 0"}
!26254 = distinct !{!26254, !26250, !"_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldRB1q_uINtNtNtBb_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B4n_B4l_6hyphens_0NCINvNtB7_3map12map_try_foldB3A_INtNtBb_6option6OptionjEuB3G_NCB5n_s0_0QNCINvNtB7_7flatten15try_flatten_oneB6h_uB3G_NCINvNvB2k_8find_map5checkjB4l_NCB5n_s2_0E0E0E0E0B3G_EB4r_: argument 2"}
!26255 = distinct !{!26255, !26247, !"_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1n_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB2P_10ShapedText6hyphens_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRB1N_INtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3A_ENCB2J_s0_0QNCINvNtB8_7flatten15try_flatten_oneB5i_uB5H_NCINvNvB43_8find_map5checkjB3A_NCB2J_s2_0E0E0E0B5H_EB2T_: argument 0"}
!26256 = distinct !{!26256, !26247, !"_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1n_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB2P_10ShapedText6hyphens_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRB1N_INtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3A_ENCB2J_s0_0QNCINvNtB8_7flatten15try_flatten_oneB5i_uB5H_NCINvNvB43_8find_map5checkjB3A_NCB2J_s2_0E0E0E0B5H_EB2T_: argument 2"}
!26257 = distinct !{!26257, !26247, !"_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1n_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB2P_10ShapedText6hyphens_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRB1N_INtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3A_ENCB2J_s0_0QNCINvNtB8_7flatten15try_flatten_oneB5i_uB5H_NCINvNvB43_8find_map5checkjB3A_NCB2J_s2_0E0E0E0B5H_EB2T_: argument 3"}
!26258 = distinct !{!26258, !26244, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1D_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB35_10ShapedText6hyphens_0ENCB2Z_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3Q_ENCINvNvB4u_8find_map5checkjB3Q_NCB2Z_s2_0E0E0B6b_EB39_: argument 0"}
!26259 = distinct !{!26259, !26244, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1D_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB35_10ShapedText6hyphens_0ENCB2Z_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB3Q_ENCINvNvB4u_8find_map5checkjB3Q_NCB2Z_s2_0E0E0B6b_EB39_: argument 2"}
!26260 = distinct !{!26260, !26241, !"_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_6filter6FilterIBP_INtNtNtBb_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1G_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB38_10ShapedText6hyphens_0ENCB32_s0_0EIB11_INtNtBb_6option4IterNCB32_0ENCB32_s1_0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_7flatten15try_flatten_oneINtB4F_6OptionjEuINtNtNtBb_3ops12control_flow11ControlFlowB3T_ENCINvNvB5g_8find_map5checkjB3T_NCB32_s2_0E0E0B6O_EB3c_: argument 0"}
!26261 = distinct !{!26261, !26241, !"_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_6filter6FilterIBP_INtNtNtBb_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1G_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB38_10ShapedText6hyphens_0ENCB32_s0_0EIB11_INtNtBb_6option4IterNCB32_0ENCB32_s1_0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_7flatten15try_flatten_oneINtB4F_6OptionjEuINtNtNtBb_3ops12control_flow11ControlFlowB3T_ENCINvNvB5g_8find_map5checkjB3T_NCB32_s2_0E0E0B6O_EB3c_: argument 2"}
!26262 = distinct !{!26262, !26238, !"_RINvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_5chain5ChainINtNtB8_3map3MapINtNtB8_6filter6FilterIB10_INtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB20_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB3s_10ShapedText6hyphens_0ENCB3m_s0_0EIB1k_INtNtBc_6option4IterNCB3m_0ENCB3m_s1_0EEEINtB6_8FuseImplBZ_E8try_folduNCINvNtB8_7flatten15try_flatten_oneINtB4Z_6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB4d_ENCINvNvNtNtNtBa_6traits8iterator8Iterator8find_map5checkjB4d_NCB3m_s2_0E0E0B6U_EB3w_: argument 0"}
!26263 = distinct !{!26263, !26238, !"_RINvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_5chain5ChainINtNtB8_3map3MapINtNtB8_6filter6FilterIB10_INtNtNtBc_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB20_ENCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB3s_10ShapedText6hyphens_0ENCB3m_s0_0EIB1k_INtNtBc_6option4IterNCB3m_0ENCB3m_s1_0EEEINtB6_8FuseImplBZ_E8try_folduNCINvNtB8_7flatten15try_flatten_oneINtB4Z_6OptionjEuINtNtNtBc_3ops12control_flow11ControlFlowB4d_ENCINvNvNtNtNtBa_6traits8iterator8Iterator8find_map5checkjB4d_NCB3m_s2_0E0E0B6U_EB3w_: argument 2"}
!26264 = !{!26265}
!26265 = distinct !{!26265, !26266, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B3U_B3S_6hyphens_0NCINvNtB2v_3map12map_try_foldB38_INtNtBa_6option6OptionjEuB3d_NCB4U_s0_0QNCINvNtB2v_7flatten15try_flatten_oneB5P_uB3d_NCINvNvB1y_8find_map5checkjB3S_NCB4U_s2_0E0E0E0E0B3d_EB3Y_: argument 1"}
!26266 = distinct !{!26266, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B3U_B3S_6hyphens_0NCINvNtB2v_3map12map_try_foldB38_INtNtBa_6option6OptionjEuB3d_NCB4U_s0_0QNCINvNtB2v_7flatten15try_flatten_oneB5P_uB3d_NCINvNvB1y_8find_map5checkjB3S_NCB4U_s2_0E0E0E0E0B3d_EB3Y_"}
!26267 = !{!26268, !26265, !26249, !26246, !26243, !26240, !26237}
!26268 = distinct !{!26268, !26269, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26269 = distinct !{!26269, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout"}
!26270 = !{!26271, !26272, !26253, !26254, !26255, !26256, !26257, !26258, !26259, !26260, !26261, !26262, !26263}
!26271 = distinct !{!26271, !26266, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B3U_B3S_6hyphens_0NCINvNtB2v_3map12map_try_foldB38_INtNtBa_6option6OptionjEuB3d_NCB4U_s0_0QNCINvNtB2v_7flatten15try_flatten_oneB5P_uB3d_NCINvNvB1y_8find_map5checkjB3S_NCB4U_s2_0E0E0E0E0B3d_EB3Y_: argument 0"}
!26272 = distinct !{!26272, !26266, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B3U_B3S_6hyphens_0NCINvNtB2v_3map12map_try_foldB38_INtNtBa_6option6OptionjEuB3d_NCB4U_s0_0QNCINvNtB2v_7flatten15try_flatten_oneB5P_uB3d_NCINvNvB1y_8find_map5checkjB3S_NCB4U_s2_0E0E0E0E0B3d_EB3Y_: argument 2"}
!26273 = !{!26271, !26265, !26272, !26253, !26249, !26254, !26255, !26246, !26256, !26257, !26258, !26243, !26259, !26260, !26240, !26261, !26262, !26237, !26263}
!26274 = !{!26275, !26277, !26271, !26265, !26272, !26253, !26249, !26254, !26255, !26246, !26256, !26257, !26258, !26243, !26259, !26260, !26240, !26261, !26262, !26237, !26263}
!26275 = distinct !{!26275, !26276, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B2C_B2A_6hyphens_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6option6OptionjEuB1V_NCB3C_s0_0QNCINvNtB6_7flatten15try_flatten_oneB4w_uB1V_NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB2A_NCB3C_s2_0E0E0E0E0B2G_: argument 0"}
!26276 = distinct !{!26276, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B2C_B2A_6hyphens_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6option6OptionjEuB1V_NCB3C_s0_0QNCINvNtB6_7flatten15try_flatten_oneB4w_uB1V_NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB2A_NCB3C_s2_0E0E0E0E0B2G_"}
!26277 = distinct !{!26277, !26278, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyuINtNtB9_12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B35_B33_6hyphens_0NCINvNtBV_3map12map_try_foldB1E_INtNtBb_6option6OptionjEuB2u_NCB45_s0_0QNCINvNtBV_7flatten15try_flatten_oneB4Z_uB2u_NCINvNvNtNtNtBX_6traits8iterator8Iterator8find_map5checkjB33_NCB45_s2_0E0E0E0E0INtB7_5FnMutTuB1E_EE8call_mutB39_: argument 0"}
!26278 = distinct !{!26278, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyuINtNtB9_12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B35_B33_6hyphens_0NCINvNtBV_3map12map_try_foldB1E_INtNtBb_6option6OptionjEuB2u_NCB45_s0_0QNCINvNtBV_7flatten15try_flatten_oneB4Z_uB2u_NCINvNvNtNtNtBX_6traits8iterator8Iterator8find_map5checkjB33_NCB45_s2_0E0E0E0E0INtB7_5FnMutTuB1E_EE8call_mutB39_"}
!26279 = !{!26275, !26280, !26277, !26281, !26271, !26265, !26272, !26253, !26249, !26254, !26255, !26246, !26256, !26257, !26258, !26243, !26259, !26260, !26240, !26261, !26262, !26237, !26263}
!26280 = distinct !{!26280, !26276, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B2C_B2A_6hyphens_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6option6OptionjEuB1V_NCB3C_s0_0QNCINvNtB6_7flatten15try_flatten_oneB4w_uB1V_NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB2A_NCB3C_s2_0E0E0E0E0B2G_: argument 1"}
!26281 = distinct !{!26281, !26278, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyuINtNtB9_12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B35_B33_6hyphens_0NCINvNtBV_3map12map_try_foldB1E_INtNtBb_6option6OptionjEuB2u_NCB45_s0_0QNCINvNtBV_7flatten15try_flatten_oneB4Z_uB2u_NCINvNvNtNtNtBX_6traits8iterator8Iterator8find_map5checkjB33_NCB45_s2_0E0E0E0E0INtB7_5FnMutTuB1E_EE8call_mutB39_: argument 1"}
!26282 = !{!26283, !26275, !26277, !26271, !26265, !26272, !26253, !26249, !26254, !26255, !26246, !26256, !26257, !26258, !26243, !26259, !26260, !26240, !26261, !26262, !26237, !26263}
!26283 = distinct !{!26283, !26284, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyINtNtBa_6option6OptionjEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B2U_B2S_6hyphens0_0QNCINvNtB6_7flatten15try_flatten_oneB1O_uB2d_NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB2S_NCB3U_s2_0E0E0E0B2Y_: argument 0"}
!26284 = distinct !{!26284, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyINtNtBa_6option6OptionjEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B2U_B2S_6hyphens0_0QNCINvNtB6_7flatten15try_flatten_oneB1O_uB2d_NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB2S_NCB3U_s2_0E0E0E0B2Y_"}
!26285 = !{!26271, !26265, !26272, !26253, !26249, !26254, !26255, !26246, !26257, !26258, !26243, !26260, !26240, !26262, !26237}
!26286 = !{!26287}
!26287 = distinct !{!26287, !26288, !"_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENtNtB4_9try_trait3Try6branchB16_: argument 1"}
!26288 = distinct !{!26288, !"_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENtNtB4_9try_trait3Try6branchB16_"}
!26289 = !{!26290, !26271, !26265, !26272, !26253, !26249, !26254, !26255, !26246, !26256, !26257, !26258, !26243, !26259, !26260, !26240, !26261, !26262, !26237, !26263}
!26290 = distinct !{!26290, !26288, !"_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENtNtB4_9try_trait3Try6branchB16_: argument 0"}
!26291 = !{!26292}
!26292 = distinct !{!26292, !26293, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B3T_B3R_6hyphens_0NCINvNtB2u_3map12map_try_foldB37_INtNtBa_6option6OptionjEuB3c_NCB4T_s0_0QNCINvNtB2u_7flatten15try_flatten_oneB5O_uB3c_NCINvNvB1y_8find_map5checkjB3R_NCB4T_s2_0E0E0E0E0B3c_EB3X_: argument 1"}
!26293 = distinct !{!26293, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B3T_B3R_6hyphens_0NCINvNtB2u_3map12map_try_foldB37_INtNtBa_6option6OptionjEuB3c_NCB4T_s0_0QNCINvNtB2u_7flatten15try_flatten_oneB5O_uB3c_NCINvNvB1y_8find_map5checkjB3R_NCB4T_s2_0E0E0E0E0B3c_EB3X_"}
!26294 = !{!26295, !26292, !26249, !26246, !26243, !26240, !26237}
!26295 = distinct !{!26295, !26296, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout: argument 0"}
!26296 = distinct !{!26296, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout"}
!26297 = !{!26298, !26253, !26254, !26255, !26256, !26257, !26258, !26259, !26260, !26261, !26262, !26263}
!26298 = distinct !{!26298, !26293, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping10ShapedTextENCNvMs1_B3T_B3R_6hyphens_0NCINvNtB2u_3map12map_try_foldB37_INtNtBa_6option6OptionjEuB3c_NCB4T_s0_0QNCINvNtB2u_7flatten15try_flatten_oneB5O_uB3c_NCINvNvB1y_8find_map5checkjB3R_NCB4T_s2_0E0E0E0E0B3c_EB3X_: argument 0"}
!26299 = !{!26298, !26292, !26253, !26249, !26254, !26255, !26246, !26256, !26257, !26258, !26243, !26259, !26260, !26240, !26261, !26262, !26237, !26263}
end_hunk_3
