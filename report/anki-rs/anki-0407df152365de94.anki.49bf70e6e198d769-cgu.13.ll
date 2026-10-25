Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4anki8template13RenderContext20evaluate_conditional17he3670376c641ff9aE:bb.a
.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ag, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = add i64 %.sroa.01.0.i.i.i, %i.v
  %i.x = and i64 %i.w, %i.p
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ab = tail call noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h26c019c697109eefE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aa), !noalias !5276
  br i1 %i.ab, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he06fdb013f206be3E.exit", label %bb.d, !prof !37

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %select.unfold, !prof !17

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i, %i.ah
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he06fdb013f206be3E.exit": ; preds = %.lr.ph.i.i
  %i.aj = xor i1 %3, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = zext i1 %i.aj to i8
  store i8 %i.al, ptr %i.ak, align 8
  store i64 5, ptr %0, align 8
  br label %bb.j

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !5277, !noundef !12
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %select.unfold4, label %bb.f

bb.f:                                             ; preds = %select.unfold
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.aq = tail call noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h8e2bf4bde0470109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5279)
  %i.ar = lshr i64 %i.aq, 57
  %i.as = trunc nuw nsw i64 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !5280, !noundef !12 ; 2 uses
  %i.av = load ptr, ptr %.0.val, align 8, !alias.scope !5280, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i10 = insertelement <16 x i8> poison, i8 %i.as, i64 0
  %.sroa.0.15.vec.insert.i.i.i11 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i10, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.9.0.i.i.i12 = phi i64 [ 0, %bb.f ], [ %i.bm, %bb.i ]
  %.pn.i.i13 = phi i64 [ %i.aq, %bb.f ], [ %i.bn, %bb.i ]
  %.sroa.01.0.i.i.i14 = and i64 %.pn.i.i13, %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.01.0.i.i.i14
  %.sroa.0.0.copyload.i26.i.i15 = load <16 x i8>, ptr %i.aw, align 1, !noalias !5281 ; 2 uses
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i15, %.sroa.0.15.vec.insert.i.i.i11
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not.i.not32.i.i16 = icmp eq i16 %i.ay, 0
  br i1 %.not.i.not32.i.i16, label %._crit_edge.i.i20, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %bb.g, %bb.h
  %.sroa.06.0.i33.i.i18 = phi i16 [ %i.bl, %bb.h ], [ %i.ay, %bb.g ] ; 3 uses
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i18, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = add i64 %.sroa.01.0.i.i.i14, %i.ba
  %i.bc = and i64 %i.bb, %i.au
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [40 x i8], ptr %i.av, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -40
  %i.bg = tail call noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h26c019c697109eefE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bf), !noalias !5282
  br i1 %i.bg, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h89cf96ac626fc2b2E.exit", label %bb.h, !prof !37

._crit_edge.i.i20:                                ; preds = %bb.h, %bb.g
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i15, splat (i8 -1)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %select.unfold4, !prof !17

bb.h:                                             ; preds = %.lr.ph.i.i17
  %i.bk = add i16 %.sroa.06.0.i33.i.i18, -1
  %i.bl = and i16 %i.bk, %.sroa.06.0.i33.i.i18    ; 2 uses
  %.not.i.not.i.i19 = icmp eq i16 %i.bl, 0
  br i1 %.not.i.not.i.i19, label %._crit_edge.i.i20, label %.lr.ph.i.i17

bb.i:                                             ; preds = %._crit_edge.i.i20
  %i.bm = add i64 %.sroa.9.0.i.i.i12, 16          ; 2 uses
  %i.bn = add i64 %.sroa.01.0.i.i.i14, %i.bm
  br label %bb.g

bb.j:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h89cf96ac626fc2b2E.exit", %.loopexit, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he06fdb013f206be3E.exit"
  ret void

select.unfold4:                                   ; preds = %._crit_edge.i.i20, %select.unfold
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5283
  store i32 99, ptr %i.b, align 4, !noalias !5283
  %i.bo = call noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hd671bd7262d5b917E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 17) 1)
  %i.bp = add i64 %2, -1                          ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5283
  br i1 %i.bo, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %select.unfold4
  switch i64 %i.bp, label %bb.m [
    i64 0, label %.loopexit
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !5284, !noundef !12
  switch i8 %i.br, label %.lr.ph.i.i25.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

.lr.ph.i.i25.preheader:                           ; preds = %.preheader.i.i, %bb.p, %bb.l
  %.sroa.0.186.i.i.ph = phi ptr [ %i.bq, %bb.l ], [ %i.bq, %bb.p ], [ %i.bs, %.preheader.i.i ]
  %.sroa.16.185.i.i.ph = phi i64 [ 1, %bb.l ], [ %i.bp, %bb.p ], [ %i.bt, %.preheader.i.i ]
  br label %.lr.ph.i.i25

bb.m:                                             ; preds = %bb.k
  %.pr.i.i = load i8, ptr %i.bq, align 1, !alias.scope !5284
  %cond.i.i = icmp eq i8 %.pr.i.i, 43
  br i1 %cond.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.bt = add i64 %2, -2                          ; 3 uses
  %i.bu = icmp ult i64 %i.bp, 10
  br i1 %i.bu, label %.preheader.i.i, label %.preheader75.i.i

.preheader75.i.i:                                 ; preds = %bb.p, %bb.n
  %.sroa.16.0.ph.i.i = phi i64 [ %i.bp, %bb.p ], [ %i.bt, %bb.n ] ; 2 uses
  %.sroa.0.0.ph.i.i = phi ptr [ %i.bq, %bb.p ], [ %i.bs, %bb.n ]
  %.not69.i.i29 = icmp eq i64 %.sroa.16.0.ph.i.i, 0
  br i1 %.not69.i.i29, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h89cf96ac626fc2b2E.exit", label %.lr.ph

bb.o:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7.i32, i64 1
  %i.bw = add i64 %.sroa.16.0.i.i31, -1           ; 2 uses
  %.not69.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not69.i.i, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h89cf96ac626fc2b2E.exit", label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.bx = icmp ult i64 %i.bp, 9
  br i1 %i.bx, label %.lr.ph.i.i25.preheader, label %.preheader75.i.i

.preheader.i.i:                                   ; preds = %bb.n
  %.not7183.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not7183.i.i, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h89cf96ac626fc2b2E.exit", label %.lr.ph.i.i25.preheader

.lr.ph:                                           ; preds = %.preheader75.i.i, %bb.o
  %.sroa.0.0.i7.i32 = phi ptr [ %i.bv, %bb.o ], [ %.sroa.0.0.ph.i.i, %.preheader75.i.i ] ; 2 uses
  %.sroa.16.0.i.i31 = phi i64 [ %i.bw, %bb.o ], [ %.sroa.16.0.ph.i.i, %.preheader75.i.i ]
  %.sroa.054.0.i.i30 = phi i32 [ %i.cf, %bb.o ], [ 0, %.preheader75.i.i ]
  %i.by = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.054.0.i.i30, i32 10) ; 2 uses
  %i.bz = extractvalue { i32, i1 } %i.by, 1
  br i1 %i.bz, label %.loopexit, label %bb.q, !prof !17

bb.q:                                             ; preds = %.lr.ph
  %i.ca = extractvalue { i32, i1 } %i.by, 0       ; 2 uses
  %i.cb = load i8, ptr %.sroa.0.0.i7.i32, align 1, !alias.scope !5284, !noundef !12
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -48                  ; 2 uses
  %i.ce = icmp ugt i32 %i.cd, 9
  %i.cf = add i32 %i.cd, %i.ca                    ; 2 uses
  %.not70.i.i = icmp ult i32 %i.cf, %i.ca
  %or.cond.i = select i1 %i.ce, i1 true, i1 %.not70.i.i
  br i1 %or.cond.i, label %.loopexit, label %bb.o

.lr.ph.i.i25:                                     ; preds = %.lr.ph.i.i25.preheader, %bb.r
  %.sroa.0.186.i.i = phi ptr [ %i.ck, %bb.r ], [ %.sroa.0.186.i.i.ph, %.lr.ph.i.i25.preheader ] ; 2 uses
  %.sroa.16.185.i.i = phi i64 [ %i.cj, %bb.r ], [ %.sroa.16.185.i.i.ph, %.lr.ph.i.i25.preheader ]
  %i.cg = load i8, ptr %.sroa.0.186.i.i, align 1, !alias.scope !5284, !noundef !12
  %i.ch = add i8 %i.cg, -48
  %i.ci = icmp ult i8 %i.ch, 10
  br i1 %i.ci, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.lr.ph.i.i25
  %i.cj = add nsw i64 %.sroa.16.185.i.i, -1       ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.186.i.i, i64 1
  %.not71.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not71.i.i, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h89cf96ac626fc2b2E.exit", label %.lr.ph.i.i25

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h89cf96ac626fc2b2E.exit": ; preds = %.lr.ph.i.i17, %bb.o, %bb.r, %.preheader75.i.i, %.preheader.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = zext i1 %3 to i8
  store i8 %i.cm, ptr %i.cl, align 8
  store i64 5, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph, %bb.q, %.lr.ph.i.i25, %select.unfold4, %bb.l, %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %spec.select = select i1 %3, ptr @729, ptr @728
  store ptr %spec.select, ptr %i.e, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.44.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.co, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5285
  store ptr @730, ptr %i.a, align 8, !noalias !5286
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.41.0..sroa_idx, align 8, !noalias !5286
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5286
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !5286
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !5286
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki8template14ParsedTemplate12requirements17h782706f896d713a0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17haf3ad5597e94d782E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17he48bf195fd516091E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.c unwind label %bb.b

"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit": ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b
  %.pn = phi { ptr, i32 } [ %i.l, %bb.b ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80711a838e082b9dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %"_ZN4core3ptr72drop_in_place$LT$std..collections..hash..set..HashSet$LT$$RF$str$GT$$GT$17h22840148ad69290aE.exit" unwind label %bb.ad

bb.b:                                             ; preds = %bb.t, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hc6596d3231d0f4d8E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.q, %bb.x, %bb.y, %bb.v, %bb.aa, %bb.ac, %bb.z, %bb.g, %bb.e, %bb.s, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.c
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7ad515564fc5e37E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit" unwind label %bb.ad

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.q = invoke { ptr, ptr } @"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34b7ac74d333d82cE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  invoke void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hd963d6112011b211E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !12
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit11.sink.split"

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hc6596d3231d0f4d8E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17he908fce8fdc0449eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hc6596d3231d0f4d8E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17hdc84e03edcfba3a8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hc6596d3231d0f4d8E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.x, %bb.n
  %i.w = invoke { ptr, ptr } @"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h34b7ac74d333d82cE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 4 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  %.not9 = icmp eq ptr %i.x, null
  br i1 %.not9, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17hcbdef6cc8419dd2dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aa = load i64, ptr %i.t, align 8, !noundef !12
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = invoke fastcc noundef zeroext i1 @_ZN4anki8template17template_is_empty17hbd682aa9fdd9aff3E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.p, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r, %bb.u
  store i64 2, ptr %0, align 8
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7ad515564fc5e37E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit11" unwind label %bb.b

bb.u:                                             ; preds = %bb.s
  br i1 %i.ac, label %bb.t, label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit11.sink.split"

"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit11.sink.split": ; preds = %bb.u, %bb.h
  %.sink = phi i64 [ 0, %bb.h ], [ 1, %bb.u ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  store i64 %.sink, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit11"

"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit11": ; preds = %"_ZN4core3ptr68drop_in_place$LT$std..collections..hash..set..HashSet$LT$u16$GT$$GT$17h5bd0f9876afc9174E.exit11.sink.split", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80711a838e082b9dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.v:                                             ; preds = %bb.q
  %i.ae = invoke fastcc noundef zeroext i1 @_ZN4anki8template17template_is_empty17hbd682aa9fdd9aff3E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.p, i1 noundef zeroext false)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  br i1 %i.ae, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.y, %bb.w
end_hunk_0
