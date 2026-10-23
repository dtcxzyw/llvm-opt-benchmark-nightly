Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant:bb.a
  %.sroa.0.0 = select i1 %i.i, i64 %i.j, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a, %bb.j, %bb.k, %bb.b
  %.sroa.014.0.sink = phi i8 [ 4, %bb.b ], [ 4, %bb.j ], [ 4, %bb.a ], [ %spec.select, %bb.k ], [ 4, %bb.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %.sroa.014.0.sink, ptr %i.k, align 2
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.l = phi i64 [ %i.co, %bb.i ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi i64 [ %i.cp, %bb.i ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.125 = phi i64 [ %.sroa.0.2, %bb.i ], [ %.sroa.0.0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5.024 = phi ptr [ %.sroa.5.3.ph, %bb.i ], [ %i.g, %.lr.ph.preheader ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !9346, !noundef !5 ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.c, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i: ; preds = %.lr.ph
  %i.q = icmp ne ptr %1, %i.n
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -2 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !9346, !noundef !5 ; 3 uses
  %i.t = and i8 %i.s, 31
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp slt i8 %i.s, -64
  br i1 %i.v, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.w = zext nneg i8 %i.o to i32
  br label %bb.f

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i
  %i.x = icmp ne ptr %1, %i.r
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -3 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !9346, !noundef !5 ; 3 uses
  %i.aa = and i8 %i.z, 15
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = icmp slt i8 %i.z, -64
  br i1 %i.ac, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %bb.e ], [ %i.r, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i ]
  %.sroa.010.0.i = phi i32 [ %i.at, %bb.e ], [ %i.u, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.ae = and i8 %i.o, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.f

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i
  %i.ah = icmp ne ptr %1, %i.y
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -4 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !9346, !noundef !5
  %i.ak = and i8 %i.aj, 7
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 6
  %i.an = and i8 %i.z, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i
  %.sroa.5.2 = phi ptr [ %i.ai, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i ], [ %i.y, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i ]
  %.sroa.010.1.i = phi i32 [ %i.ap, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i ], [ %i.ab, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i ]
  %i.aq = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.ar = and i8 %i.s, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.3.ph = phi ptr [ %.sroa.5.1, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.4.1.i.ph = phi i32 [ %i.ag, %bb.d ], [ %i.w, %bb.c ] ; 22 uses
  %i.au = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.au)
  switch i32 %.sroa.4.1.i.ph, label %bb.g [
    i32 2381, label %bb.h
    i32 2509, label %bb.h
    i32 2765, label %bb.h
    i32 2893, label %bb.h
    i32 3149, label %bb.h
    i32 3405, label %bb.h
    i32 4153, label %bb.h
    i32 6098, label %bb.h
    i32 6752, label %bb.h
    i32 6980, label %bb.h
    i32 7083, label %bb.h
    i32 43456, label %bb.h
    i32 43766, label %bb.h
    i32 68159, label %bb.h
    i32 69939, label %bb.h
    i32 70608, label %bb.h
    i32 71998, label %bb.h
    i32 72263, label %bb.h
    i32 72345, label %bb.h
    i32 73538, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = icmp samesign ult i32 %.sroa.4.1.i.ph, 43302
  %i.aw = select i1 %i.av, i64 0, i64 188, !unpredictable !5 ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 94               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.ax ; 2 uses
  %.val12.1.i = load i32, ptr %i.ay, align 4, !range !28, !noalias !9347, !noundef !5
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %.val13.1.i = load i32, ptr %i.az, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i17.1.i = icmp samesign ugt i32 %.val12.1.i, %.sroa.4.1.i.ph
  %.not1.i18.1.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.1.i
  %i.ba = select i1 %.not1.i18.1.i, i1 %.not.i17.1.i, i1 false
  %i.bb = select i1 %i.ba, i64 %i.aw, i64 %i.ax, !unpredictable !5 ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 47               ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.bc ; 2 uses
  %.val12.2.i = load i32, ptr %i.bd, align 4, !range !28, !noalias !9347, !noundef !5
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %.val13.2.i = load i32, ptr %i.be, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i17.2.i = icmp samesign ugt i32 %.val12.2.i, %.sroa.4.1.i.ph
  %.not1.i18.2.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.2.i
  %i.bf = select i1 %.not1.i18.2.i, i1 %.not.i17.2.i, i1 false
  %i.bg = select i1 %i.bf, i64 %i.bb, i64 %i.bc, !unpredictable !5 ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 24               ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.bh ; 2 uses
  %.val12.3.i = load i32, ptr %i.bi, align 4, !range !28, !noalias !9347, !noundef !5
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val13.3.i = load i32, ptr %i.bj, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i17.3.i = icmp samesign ugt i32 %.val12.3.i, %.sroa.4.1.i.ph
  %.not1.i18.3.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.3.i
  %i.bk = select i1 %.not1.i18.3.i, i1 %.not.i17.3.i, i1 false
  %i.bl = select i1 %i.bk, i64 %i.bg, i64 %i.bh, !unpredictable !5 ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 12               ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.bm ; 2 uses
  %.val12.4.i = load i32, ptr %i.bn, align 4, !range !28, !noalias !9347, !noundef !5
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %.val13.4.i = load i32, ptr %i.bo, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i17.4.i = icmp samesign ugt i32 %.val12.4.i, %.sroa.4.1.i.ph
  %.not1.i18.4.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.4.i
  %i.bp = select i1 %.not1.i18.4.i, i1 %.not.i17.4.i, i1 false
  %i.bq = select i1 %i.bp, i64 %i.bl, i64 %i.bm, !unpredictable !5 ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, 6                ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.br ; 2 uses
  %.val12.5.i = load i32, ptr %i.bs, align 4, !range !28, !noalias !9347, !noundef !5
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %.val13.5.i = load i32, ptr %i.bt, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i17.5.i = icmp samesign ugt i32 %.val12.5.i, %.sroa.4.1.i.ph
  %.not1.i18.5.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.5.i
  %i.bu = select i1 %.not1.i18.5.i, i1 %.not.i17.5.i, i1 false
  %i.bv = select i1 %i.bu, i64 %i.bq, i64 %i.br, !unpredictable !5 ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.bw ; 2 uses
  %.val12.6.i = load i32, ptr %i.bx, align 4, !range !28, !noalias !9347, !noundef !5
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %.val13.6.i = load i32, ptr %i.by, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i17.6.i = icmp samesign ugt i32 %.val12.6.i, %.sroa.4.1.i.ph
  %.not1.i18.6.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.6.i
  %i.bz = select i1 %.not1.i18.6.i, i1 %.not.i17.6.i, i1 false
  %i.ca = select i1 %i.bz, i64 %i.bv, i64 %i.bw, !unpredictable !5 ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.cb ; 2 uses
  %.val12.7.i = load i32, ptr %i.cc, align 4, !range !28, !noalias !9347, !noundef !5
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %.val13.7.i = load i32, ptr %i.cd, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i17.7.i = icmp samesign ugt i32 %.val12.7.i, %.sroa.4.1.i.ph
  %.not1.i18.7.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.7.i
  %i.ce = select i1 %.not1.i18.7.i, i1 %.not.i17.7.i, i1 false
  %i.cf = select i1 %i.ce, i64 %i.ca, i64 %i.cb, !unpredictable !5 ; 2 uses
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.cg ; 2 uses
  %.val12.8.i = load i32, ptr %i.ch, align 4, !range !28, !noalias !9347, !noundef !5
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %.val13.8.i = load i32, ptr %i.ci, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i17.8.i = icmp samesign ugt i32 %.val12.8.i, %.sroa.4.1.i.ph
  %.not1.i18.8.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.8.i
  %i.cj = select i1 %.not1.i18.8.i, i1 %.not.i17.8.i, i1 false
  %i.ck = select i1 %i.cj, i64 %i.cf, i64 %i.cg, !unpredictable !5
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @172, i64 %i.ck ; 2 uses
  %.val15.i = load i32, ptr %i.cl, align 4, !range !28, !noalias !9347, !noundef !5
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %.val16.i = load i32, ptr %i.cm, align 4, !range !28, !noalias !9347, !noundef !5
  %.not.i.i = icmp samesign ule i32 %.val15.i, %.sroa.4.1.i.ph
  %.not1.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val16.i
  %.not.i.not = select i1 %.not1.i.i, i1 %.not.i.i, i1 false
  br i1 %.not.i.not, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.cn = add i64 %.sroa.0.125, 1                 ; 3 uses
  store i64 1, ptr %i.d, align 8
  store i64 %i.cn, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.co = phi i64 [ %i.l, %bb.g ], [ %i.cn, %bb.h ]
  %i.cp = phi i64 [ %i.m, %bb.g ], [ 1, %bb.h ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.125, %bb.g ], [ %i.cn, %bb.h ]
  %i.cq = icmp eq ptr %1, %.sroa.5.3.ph
  br i1 %i.cq, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %3 = trunc nuw i64 %i.m to i1
  %4 = icmp ne i64 %i.l, 0
  %.sroa.08.0.not = select i1 %3, i1 %4, i1 false
  br i1 %.sroa.08.0.not, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.cr = tail call noundef i8 @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph)
  %.not = icmp eq i8 %i.cr, 5
  %spec.select = select i1 %.not, i8 3, i8 4
  br label %._crit_edge
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdftwklc2oBO_7similar(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 41) %3) unnamed_addr #11 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !8
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #36
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.k = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #36
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 19) i8 @_RNvMs7_NtCs96hDHc8Uzvz_20unicode_segmentation4wordNtB5_11UWordBounds12get_next_cat(ptr nofree readonly captures(address, read_provenance) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %0, %.8.val
  br i1 %.not.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.c = icmp eq i64 %0, %.8.val
  br i1 %i.c, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 %0
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !9356, !noundef !5
  %i.f = icmp sgt i8 %i.e, -65
  br i1 %i.f, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %bb.a, %.split.i, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 %0 ; 4 uses
  %i.h = icmp samesign eq i64 %0, %.8.val
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.i = load i8, ptr %i.g, align 1, !noalias !9357, !noundef !5 ; 4 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %.thread, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = add nuw nsw i64 %0, 1
  %i.o = icmp samesign ne i64 %i.n, %.8.val
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load i8, ptr %i.k, align 1, !noalias !9357, !noundef !5
  %i.q = shl nuw nsw i32 %i.m, 6
  %i.r = and i8 %i.p, 63
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp samesign ugt i8 %i.i, -33
  br i1 %i.u, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i, label %bb.e

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.w = add nuw nsw i64 %0, 2
  %i.x = icmp samesign ne i64 %i.w, %.8.val
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load i8, ptr %i.v, align 1, !noalias !9357, !noundef !5
  %i.z = shl nuw nsw i32 %i.s, 6
  %i.aa = and i8 %i.y, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab             ; 2 uses
  %i.ad = shl nuw nsw i32 %i.m, 12
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = icmp samesign ugt i8 %i.i, -17
  br i1 %i.af, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i, label %bb.e

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ah = add nuw nsw i64 %0, 3
  %i.ai = icmp samesign ne i64 %i.ah, %.8.val
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !9357, !noundef !5
  %i.ak = shl nuw nsw i32 %i.m, 18
  %i.al = and i32 %i.ak, 1835008
  %i.am = shl nuw nsw i32 %i.ac, 6
  %i.an = and i8 %i.aj, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = or disjoint i32 %i.ap, %i.al
  br label %bb.e

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i, %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, i64 noundef %0, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #37
  unreachable

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ae, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i ], [ %i.aq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i ], [ %i.t, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.as, label %.thread, label %bb.g

bb.f:                                             ; preds = %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #37
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.at, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.au, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %bb.h, %bb.e
  %.sroa.01.0 = phi i64 [ 2, %bb.g ], [ %., %bb.h ], [ 1, %bb.e ], [ 1, %bb.d ]
  %i.av = add i64 %.sroa.01.0, %0                 ; 8 uses
  %i.aw = icmp ult i64 %i.av, %.8.val
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %._RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge, label %bb.j

._RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge: ; preds = %bb.i
  %.pre = load i8, ptr %.0.val, align 1, !noalias !9358
  br label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !9359, !noundef !5 ; 2 uses
  %i.ba = icmp sgt i8 %i.az, -65
  br i1 %i.ba, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24.thread

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24: ; preds = %._RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge, %bb.j
  %i.bb = phi i8 [ %.pre, %._RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge ], [ %i.az, %bb.j ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.av ; 3 uses
  %i.bd = icmp sgt i8 %i.bb, -1
  br i1 %i.bd, label %bb.l, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i25

bb.k:                                             ; preds = %.thread, %bb.m
  %.sroa.0.0 = phi i8 [ %i.co, %bb.m ], [ -1, %.thread ]
  ret i8 %.sroa.0.0
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_9GraphemesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next:bb.a
  store i8 %.sink.i.i, ptr %i.bj, align 2, !alias.scope !10064
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.at, %.sink.split.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %0, align 8, !alias.scope !10064
  store i64 0, ptr %i.hz, align 8, !alias.scope !10064
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i

bb.au:                                            ; preds = %bb.as
  %i.ia = icmp eq i64 %i.fu, 0
  br i1 %i.ia, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i38.i, label %bb.aw, label %.split.i54.i.i

.split.i54.i.i:                                   ; preds = %bb.av
  %i.ib = icmp eq i64 %i.fu, %i.k
  br i1 %i.ib, label %bb.ax, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !10071, !noundef !5
  %i.ie = icmp sgt i8 %i.id, -65
  br i1 %i.ie, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw, %.split.i54.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu ; 4 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -1
  %i.ih = load i8, ptr %i.ig, align 1, !alias.scope !10066, !noalias !10072, !noundef !5 ; 3 uses
  %i.ii = icmp sgt i8 %i.ih, -1
  br i1 %i.ii, label %bb.ay, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i.i.i: ; preds = %bb.ax
  %i.ij = icmp ne i64 %i.fu, 1
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds i8, ptr %i.if, i64 -2
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !10066, !noalias !10072, !noundef !5 ; 3 uses
  %i.im = and i8 %i.il, 31
  %i.in = zext nneg i8 %i.im to i32
  %i.io = icmp slt i8 %i.il, -64
  br i1 %i.io, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i.i.i, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ip = zext nneg i8 %i.ih to i32
  br label %.thread.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i.i.i
  %i.iq = icmp ne i64 %i.fu, 2
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds i8, ptr %i.if, i64 -3
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !10066, !noalias !10072, !noundef !5 ; 3 uses
  %i.it = and i8 %i.is, 15
  %i.iu = zext nneg i8 %i.it to i32
  %i.iv = icmp slt i8 %i.is, -64
  br i1 %i.iv, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i.i.i, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i.i.i
  %.sroa.010.0.i.i.i = phi i32 [ %i.jm, %bb.ba ], [ %i.in, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i.i.i ]
  %i.iw = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.ix = and i8 %i.ih, 63
  %i.iy = zext nneg i8 %i.ix to i32
  %i.iz = or disjoint i32 %i.iw, %i.iy
  br label %.thread.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i.i.i
  %i.ja = icmp ne i64 %i.fu, 3
  tail call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds i8, ptr %i.if, i64 -4
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !10066, !noalias !10072, !noundef !5
  %i.jd = and i8 %i.jc, 7
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 6
  %i.jg = and i8 %i.is, 63
  %i.jh = zext nneg i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.jf, %i.jh
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i.i.i
  %.sroa.010.1.i.i.i = phi i32 [ %i.ji, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i.i.i ], [ %i.iu, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i.i.i ]
  %i.jj = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.jk = and i8 %i.il, 63
  %i.jl = zext nneg i8 %i.jk to i32
  %i.jm = or disjoint i32 %i.jj, %i.jl
  br label %bb.az

bb.bb:                                            ; preds = %bb.aw, %.split.i54.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #37, !noalias !10068
  unreachable

bb.bc:                                            ; preds = %bb.au
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #37, !noalias !10069
  unreachable

.thread.i.i:                                      ; preds = %bb.az, %bb.ay
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.ip, %bb.ay ], [ %i.iz, %bb.az ] ; 2 uses
  %i.jn = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = tail call noundef i8 @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph.i.i), !noalias !10069 ; 2 uses
  store i8 %i.jo, ptr %i.bl, align 1, !alias.scope !10064
  %.pre103.i.i = load i8, ptr %i.bk, align 8, !range !10056, !alias.scope !10064 ; 2 uses
  %.not46.i.i = icmp eq i8 %.pre103.i.i, -1
  br i1 %.not46.i.i, label %bb.bm, label %.thread.thread.i.i, !prof !10073

.thread.thread.i.i:                               ; preds = %.thread.i.i, %bb.at, %bb.as
  %i.jp = phi i8 [ %i.jo, %.thread.i.i ], [ %i.hy, %bb.at ], [ %.pre102.i.i, %bb.as ] ; 6 uses
  %i.jq = phi i8 [ %.pre103.i.i, %.thread.i.i ], [ %i.gc, %bb.at ], [ %i.gc, %bb.as ] ; 6 uses
  switch i8 %i.jp, label %bb.bd [
    i8 1, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.i.i
    i8 2, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 7, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  ]

bb.bd:                                            ; preds = %.thread.thread.i.i
  switch i8 %i.jq, label %bb.be [
    i8 1, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 2, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 7, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  ]

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.jp, label %bb.bf [
    i8 6, label %bb.bg
    i8 8, label %bb.bh
    i8 14, label %bb.bh
  ]

bb.bf:                                            ; preds = %bb.be
  switch i8 %i.jq, label %bb.bi [
    i8 3, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 13, label %bb.bj
    i8 15, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bg:                                            ; preds = %bb.be
  switch i8 %i.jq, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 6, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 8, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 9, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 14, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 3, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 5, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
    i8 15, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bh:                                            ; preds = %bb.be, %bb.be
  switch i8 %i.jq, label %bb.bi [
    i8 13, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 14, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 3, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 15, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %i.jr = icmp eq i8 %i.jp, 10
  br i1 %i.jr, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i, label %.thread.i.i.i

bb.bj:                                            ; preds = %bb.bf
  switch i8 %i.jp, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 9, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 13, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 10, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
  ]

.thread.i.i.i:                                    ; preds = %bb.bi
  switch i8 %i.jq, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 4, label %bb.bk
    i8 5, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
    i8 11, label %bb.bl
  ]

bb.bk:                                            ; preds = %.thread.i.i.i
  %i.js = icmp eq i8 %i.jp, 15
  br i1 %i.js, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

bb.bl:                                            ; preds = %.thread.i.i.i
  %i.jt = icmp eq i8 %i.jp, 11
  br i1 %i.jt, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.i.i: ; preds = %.thread.thread.i.i
  %.not101.i.i = icmp eq i8 %i.jq, 7
  br i1 %.not101.i.i, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

bb.bm:                                            ; preds = %.thread.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #37, !noalias !10069
  unreachable

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i: ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.i.i, %bb.bj, %bb.bj, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bf, %bb.bf
  store i8 3, ptr %i.bj, align 2, !alias.scope !10064
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i: ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.i.i, %bb.bl, %bb.bk, %.thread.i.i.i, %bb.bj, %bb.bg, %bb.bd, %bb.bd, %bb.bd, %.thread.thread.i.i, %.thread.thread.i.i
  store i8 4, ptr %i.bj, align 2, !alias.scope !10064
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.ju = load i8, ptr %i.br, align 4, !range !10, !alias.scope !10064, !noundef !5 ; 2 uses
  %1 = xor i8 %i.ju, 1
  %..i.i = sub nuw nsw i8 4, %i.ju
  store i8 %..i.i, ptr %i.bj, align 2, !alias.scope !10064
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i: ; preds = %.thread.i.i.i, %bb.bg
  %i.jv = icmp eq i64 %i.fu, 0
  br i1 %i.jv, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
  br i1 %.not.i38.i, label %bb.bo, label %.split.i58.i.i

.split.i58.i.i:                                   ; preds = %bb.bn
  %i.jw = icmp eq i64 %i.fu, %i.k
  br i1 %i.jw, label %bb.br, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.jx = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !10074, !noundef !5
  %i.jz = icmp sgt i8 %i.jy, -65
  br i1 %i.jz, label %bb.br, label %bb.bs

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i: ; preds = %bb.bl
  %i.ka = load i64, ptr %i.bo, align 8, !range !7, !alias.scope !10064, !noundef !5
  %i.kb = trunc nuw i64 %i.ka to i1
  br i1 %i.kb, label %bb.bt, label %bb.bu

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i: ; preds = %bb.bk
  %i.kc = icmp eq i64 %i.fu, 0
  br i1 %i.kc, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i
  br i1 %.not.i38.i, label %bb.bq, label %.split.i62.i.i

.split.i62.i.i:                                   ; preds = %bb.bp
  %i.kd = icmp eq i64 %i.fu, %i.k
  br i1 %i.kd, label %bb.bz, label %bb.ca

bb.bq:                                            ; preds = %bb.bp
  %i.ke = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !10075, !noundef !5
  %i.kg = icmp sgt i8 %i.kf, -65
  br i1 %i.kg, label %bb.bz, label %bb.ca

bb.br:                                            ; preds = %bb.bo, %.split.i58.i.i, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
  tail call fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #40
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.bs:                                            ; preds = %bb.bo, %.split.i58.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #37, !noalias !10068
  unreachable

bb.bt:                                            ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i
  %i.kh = load i64, ptr %i.bp, align 8, !alias.scope !10064, !noundef !5
  %i.ki = and i64 %i.kh, 1                        ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 0
  %.51.i.i = select i1 %i.kj, i8 4, i8 3
  store i8 %.51.i.i, ptr %i.bj, align 2, !alias.scope !10064
  %i.kk = trunc nuw nsw i64 %i.ki to i8
  %i.kl = xor i8 %i.kk, 1
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

bb.bu:                                            ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i
  %i.km = icmp eq i64 %i.fu, 0
  br i1 %i.km, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br i1 %.not.i38.i, label %bb.bw, label %.split.i66.i.i

.split.i66.i.i:                                   ; preds = %bb.bv
  %i.kn = icmp eq i64 %i.fu, %i.k
  br i1 %i.kn, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ko = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !10076, !noundef !5
  %i.kq = icmp sgt i8 %i.kp, -65
  br i1 %i.kq, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %.split.i66.i.i, %bb.bu
  tail call fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #40
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.by:                                            ; preds = %bb.bw, %.split.i66.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #37, !noalias !10068
  unreachable

bb.bz:                                            ; preds = %bb.bq, %.split.i62.i.i, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i
  tail call fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #40
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.ca:                                            ; preds = %bb.bq, %.split.i62.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #37, !noalias !10068
  unreachable

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i: ; preds = %bb.bz, %bb.bx, %bb.br
  call fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor18is_boundary_result(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) #40, !noalias !10077
  %.pr.i = load i64, ptr %i.a, align 8, !noalias !10061 ; 2 uses
  %.not29.i = icmp eq i64 %.pr.i, -1
  br i1 %.not29.i, label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i, label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i: ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i
  %.pre135.i = load i8, ptr %i.bq, align 8, !range !10, !noalias !10061
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

bb.cb:                                            ; preds = %bb.m
  %i.kr = tail call noundef i8 @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.08.0.i), !noalias !10057
  store i8 %i.kr, ptr %i.bk, align 8, !alias.scope !10051
  br label %bb.ab

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit: ; preds = %bb.ae, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i
  %.ph = phi i64 [ 3, %bb.ae ], [ %.pr.i, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i ]
  %.pre = load i64, ptr %i.bq, align 8, !noalias !10061
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i: ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit, %.loopexit.i, %bb.af
  %i.ks = phi i64 [ %i.ga, %bb.af ], [ 0, %.loopexit.i ], [ %.pre, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit ]
  %i.kt = phi i64 [ 0, %bb.af ], [ 0, %.loopexit.i ], [ %.ph, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10061
  br label %bb.cd

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i: ; preds = %bb.ab, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10061
  br label %.loopexit

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i: ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10061
  br label %bb.cc

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i: ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i, %bb.bt, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
  %i.ku = phi i8 [ %.pre135.i, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i ], [ %i.kl, %bb.bt ], [ %1, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i ]
  %i.kv = trunc nuw i8 %i.ku to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10061
  br i1 %i.kv, label %.loopexit, label %bb.cc

bb.cc:                                            ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i
  store i8 0, ptr %i.bi, align 1, !alias.scope !10051
  br label %bb.k

bb.cd:                                            ; preds = %bb.z, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i, %bb.f
  %.sroa.14.0.ph = phi i64 [ undef, %bb.f ], [ %i.ks, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i ], [ undef, %bb.z ]
  %.sroa.8.0.ph = phi i64 [ 2, %bb.f ], [ %i.kt, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i ], [ 2, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10078
  store i64 %.sroa.8.0.ph, ptr %i.b, align 8, !noalias !10078
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.14.0.ph, ptr %i.kw, align 8, !noalias !10078
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #37, !noalias !10078
  unreachable

.loopexit:                                        ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i
  store i8 0, ptr %i.bi, align 1, !alias.scope !10051
  %i.kx = load i64, ptr %i.c, align 8, !alias.scope !10051, !noundef !5 ; 6 uses
  %i.ky = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.kz = load i64, ptr %i.j, align 8, !noundef !5 ; 4 uses
  %i.la = icmp ugt i64 %i.d, %i.kx
  %i.lb = icmp ugt i64 %i.kx, %i.kz
  %or.cond.i = or i1 %i.la, %i.lb
  br i1 %or.cond.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread20, label %bb.ce, !prof !30

bb.ce:                                            ; preds = %.loopexit
  %i.lc = icmp eq i64 %i.d, %i.kz
  br i1 %i.lc, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.o, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  %i.ld = icmp eq i64 %i.kx, %i.kz
  br i1 %i.ld, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit

bb.ch:                                            ; preds = %bb.cf
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.d
  %i.lf = load i8, ptr %i.le, align 1, !alias.scope !10079, !noundef !5
  %i.lg = icmp sgt i8 %i.lf, -65
  br i1 %i.lg, label %bb.cg, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread20, !prof !31

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit: ; preds = %bb.cg
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kx
  %i.li = load i8, ptr %i.lh, align 1, !alias.scope !10079, !noundef !5
  %i.lj = icmp sgt i8 %i.li, -65
  br i1 %i.lj, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread20, !prof !32

bb.ci:                                            ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #37
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread20: ; preds = %bb.ch, %.loopexit, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ky, i64 noundef %i.kz, i64 noundef %i.d, i64 noundef %i.kx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #37
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread: ; preds = %bb.cg, %bb.ce, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  %i.lk = sub nuw i64 %i.kx, %i.d
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.d
  br label %bb.cj

bb.cj:                                            ; preds = %bb.a, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %.sroa.3.0 = phi i64 [ %i.lk, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ll, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread ], [ null, %bb.a ]
  %i.lm = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ln = insertvalue { ptr, i64 } %i.lm, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ln
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsdftwklc2oBO_7similar5udiffNtB5_17UnifiedHunkHeaderNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsdftwklc2oBO_7similar5udiff20UnifiedDiffHunkRangeNtB6_7Display3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsdftwklc2oBO_7similar5udiff20UnifiedDiffHunkRangeNtB6_7Display3fmtBA_, ptr %.sroa.47.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @215, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10092)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10091, !noundef !5
  %i.c = add i64 %i.b, 8
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !10091
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10091, !noundef !5 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  %i.h = icmp ugt i64 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !10093
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !10093
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !10093, !noundef !5
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10091, !noundef !5
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !10091
  %i.ae = icmp ugt i64 %i.e, 8
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i         ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i, label %bb.k

bb.i:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !10091, !noundef !5
  %i.al = xor i64 %i.ak, %i.ad                    ; 3 uses
  %i.am = load i64, ptr %0, align 8, !alias.scope !10094, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10094, !noundef !5 ; 3 uses
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !10094, !noundef !5
  %i.as = add i64 %i.ar, %i.al                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.au = xor i64 %i.at, %i.ap                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 16)
  %i.aw = xor i64 %i.as, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.ay = add i64 %i.as, %i.au                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ay, %i.ba
  store i64 %i.bb, ptr %i.an, align 8, !alias.scope !10094
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
end_hunk_1
