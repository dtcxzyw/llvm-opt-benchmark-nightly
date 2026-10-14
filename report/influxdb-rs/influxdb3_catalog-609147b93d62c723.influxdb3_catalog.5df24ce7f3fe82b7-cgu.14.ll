Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.14?download=true
inline.NumInlined: 672
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj2_ECs844E4pPEVZX_17influxdb3_catalog:bb.a
  %.not = icmp ugt i64 %1, %i.n
  br i1 %.not, label %bb.c, label %.preheader, !prof !8

.preheader:                                       ; preds = %bb.b
  switch i64 %i.a, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %.preheader
  %unroll_iter = and i64 %i.a, 2305843009213693950
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.o = and i64 %1, 8
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader, %._crit_edge.loopexit.unr-lcssa
  %.sroa.015.022.epil.init = phi i64 [ 0, %.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.p = icmp ult i64 %.sroa.015.022.epil.init, %i.f
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.015.022.epil.init
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  %i.s = zext i8 %i.r to i64
  %i.t = mul i64 %i.s, -9205322385119247871
  %i.u = lshr i64 %i.t, 7
  %i.v = and i64 %i.u, 72340172838076673
  %i.w = tail call i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.015.022.epil.init
  store i64 %i.w, ptr %i.x, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  br i1 %.not.i, label %bb.d, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.015.022 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.y = or disjoint i64 %.sroa.015.022, 1        ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.015.022
  %i.aa = load i8, ptr %i.z, align 1, !noundef !4
  %i.ab = zext i8 %i.aa to i64
  %i.ac = mul i64 %i.ab, -9205322385119247871
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = and i64 %i.ad, 72340172838076673
  %i.af = tail call i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.015.022
  store i64 %i.af, ptr %i.ag, align 1
  %i.ah = add nuw nsw i64 %.sroa.015.022, 2       ; 2 uses
  %i.ai = icmp ult i64 %i.y, %i.f
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.y
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !4
  %i.al = zext i8 %i.ak to i64
  %i.am = mul i64 %i.al, -9205322385119247871
  %i.an = lshr i64 %i.am, 7
  %i.ao = and i64 %i.an, 72340172838076673
  %i.ap = tail call i64 @llvm.bswap.i64(i64 %i.ao)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.y
  store i64 %i.ap, ptr %i.aq, align 1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph26.preheader, %.lr.ph26.1, %.lr.ph26.2, %.lr.ph26.3, %.lr.ph26.4, %.lr.ph26.5, %.lr.ph26.6, %._crit_edge
  store i64 %1, ptr %i.j, align 8
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ar = icmp ult i64 %i.a, %i.f
  br i1 %i.ar, label %.lr.ph26.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

.lr.ph26.preheader:                               ; preds = %bb.d
  %i.as = and i64 %1, -8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  %i.av = load i8, ptr %i.au, align 1, !noundef !4 ; 7 uses
  %i.aw = and i8 %i.av, 1
  store i8 %i.aw, ptr %i.at, align 1
  %i.ax = icmp samesign eq i64 %i.b, 1
  br i1 %i.ax, label %.loopexit, label %.lr.ph26.1

.lr.ph26.1:                                       ; preds = %.lr.ph26.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.az = lshr i8 %i.av, 1
  %i.ba = and i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1
  %i.bb = icmp samesign eq i64 %i.b, 2
  br i1 %i.bb, label %.loopexit, label %.lr.ph26.2

.lr.ph26.2:                                       ; preds = %.lr.ph26.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.bd = lshr i8 %i.av, 2
  %i.be = and i8 %i.bd, 1
  store i8 %i.be, ptr %i.bc, align 1
  %i.bf = icmp samesign eq i64 %i.b, 3
  br i1 %i.bf, label %.loopexit, label %.lr.ph26.3

.lr.ph26.3:                                       ; preds = %.lr.ph26.2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bh = lshr i8 %i.av, 3
  %i.bi = and i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1
  %i.bj = icmp samesign eq i64 %i.b, 4
  br i1 %i.bj, label %.loopexit, label %.lr.ph26.4

.lr.ph26.4:                                       ; preds = %.lr.ph26.3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bl = lshr i8 %i.av, 4
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 1
  %i.bn = icmp samesign eq i64 %i.b, 5
  br i1 %i.bn, label %.loopexit, label %.lr.ph26.5

.lr.ph26.5:                                       ; preds = %.lr.ph26.4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 5
  %i.bp = lshr i8 %i.av, 5
  %i.bq = and i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1
  %i.br = icmp samesign eq i64 %i.b, 6
  br i1 %i.br, label %.loopexit, label %.lr.ph26.6

.lr.ph26.6:                                       ; preds = %.lr.ph26.5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.bt = lshr i8 %i.av, 6
  %i.bu = and i8 %i.bt, 1
  store i8 %i.bu, ptr %i.bs, align 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.a, %.loopexit
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj3_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = udiv i64 %1, 5                           ; 13 uses
  %i.b = urem i64 %1, 5
  %.not.i = icmp ne i64 %i.b, 0                   ; 2 uses
  %i.c = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.a, %i.c
  %i.d = tail call { ptr, i64 } @_RNvNtCs87O7Q65ve1k_7bitcode7consume13consume_bytes(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0.i) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 7 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %i.g = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %i.k     ; 5 uses
  %i.m = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.n = sub i64 %i.m, %i.k                       ; 2 uses
  %.not = icmp ugt i64 %1, %i.n
  br i1 %.not, label %bb.c, label %.preheader, !prof !8

.preheader:                                       ; preds = %bb.b
  %.not35 = icmp ult i64 %1, 5
  br i1 %.not35, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %1, 40
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.o = mul nuw i64 %i.a, 5
  %i.p = getelementptr i8, ptr %i.i, i64 %i.k
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %i.r = getelementptr i8, ptr %i.e, i64 %i.a
  %bound0 = icmp ult ptr %i.l, %i.r
  %bound1 = icmp ult ptr %i.e, %i.q
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check44 = icmp ult i64 %1, 80
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.a, 8
  %n.vec = and i64 %i.a, 4611686018427387888      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !alias.scope !118 ; 5 uses
  %i.u = mul nuw i64 %index, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.u
  %wide.load.frozen = freeze <16 x i8> %wide.load ; 2 uses
  %i.w = udiv <16 x i8> %wide.load.frozen, splat (i8 3) ; 2 uses
  %3 = mul <16 x i8> %i.w, splat (i8 3)
  %.decomposed = sub <16 x i8> %wide.load.frozen, %3
  %4 = urem <16 x i8> %i.w, splat (i8 3)
  %i.x = udiv <16 x i8> %wide.load, splat (i8 9)
  %i.y = udiv <16 x i8> %wide.load, splat (i8 27)
  %i.z = udiv <16 x i8> %wide.load, splat (i8 81) ; 2 uses
  %i.aa = add nsw <16 x i8> %i.z, splat (i8 -3)
  %i.ab = icmp ugt <16 x i8> %wide.load, splat (i8 -14)
  %i.ac = select <16 x i1> %i.ab, <16 x i8> %i.aa, <16 x i8> %i.z
  %i.ad = shufflevector <16 x i8> %.decomposed, <16 x i8> %4, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ae = shufflevector <16 x i8> %i.x, <16 x i8> %i.y, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %5 = urem <32 x i8> %i.ae, splat (i8 3)
  %6 = shufflevector <32 x i8> %i.ad, <32 x i8> %5, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.af = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %6, <64 x i8> %i.af, <80 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 1, i32 17, i32 33, i32 49, i32 65, i32 2, i32 18, i32 34, i32 50, i32 66, i32 3, i32 19, i32 35, i32 51, i32 67, i32 4, i32 20, i32 36, i32 52, i32 68, i32 5, i32 21, i32 37, i32 53, i32 69, i32 6, i32 22, i32 38, i32 54, i32 70, i32 7, i32 23, i32 39, i32 55, i32 71, i32 8, i32 24, i32 40, i32 56, i32 72, i32 9, i32 25, i32 41, i32 57, i32 73, i32 10, i32 26, i32 42, i32 58, i32 74, i32 11, i32 27, i32 43, i32 59, i32 75, i32 12, i32 28, i32 44, i32 60, i32 76, i32 13, i32 29, i32 45, i32 61, i32 77, i32 14, i32 30, i32 46, i32 62, i32 78, i32 15, i32 31, i32 47, i32 63, i32 79>
  store <80 x i8> %interleaved.vec, ptr %i.v, align 1, !alias.scope !119, !noalias !118
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.a, 4611686018427387896    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %index50
  %wide.load52 = load <8 x i8>, ptr %i.ah, align 1, !alias.scope !118 ; 5 uses
  %i.ai = mul nuw i64 %index50, 5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai
  %i.ak = udiv <8 x i8> %wide.load52, splat (i8 3)
  %i.al = udiv <8 x i8> %wide.load52, splat (i8 81) ; 2 uses
  %i.am = add nsw <8 x i8> %i.al, splat (i8 -3)
  %i.an = icmp ugt <8 x i8> %wide.load52, splat (i8 -14)
  %i.ao = select <8 x i1> %i.an, <8 x i8> %i.am, <8 x i8> %i.al
  %i.ap = shufflevector <8 x i8> %wide.load52, <8 x i8> %i.ak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aq = shufflevector <8 x i8> %wide.load52, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ar = udiv <16 x i8> %i.aq, <i8 9, i8 9, i8 9, i8 9, i8 9, i8 9, i8 9, i8 9, i8 27, i8 27, i8 27, i8 27, i8 27, i8 27, i8 27, i8 27>
  %i.as = shufflevector <16 x i8> %i.ap, <16 x i8> %i.ar, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.at = urem <32 x i8> %i.as, splat (i8 3)
  %i.au = shufflevector <8 x i8> %i.ao, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec53 = shufflevector <32 x i8> %i.at, <32 x i8> %i.au, <40 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 1, i32 9, i32 17, i32 25, i32 33, i32 2, i32 10, i32 18, i32 26, i32 34, i32 3, i32 11, i32 19, i32 27, i32 35, i32 4, i32 12, i32 20, i32 28, i32 36, i32 5, i32 13, i32 21, i32 29, i32 37, i32 6, i32 14, i32 22, i32 30, i32 38, i32 7, i32 15, i32 23, i32 31, i32 39>
  store <40 x i8> %interleaved.vec53, ptr %i.aj, align 1, !alias.scope !119, !noalias !118
  %index.next54 = add nuw i64 %index50, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next54, %n.vec45
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.a, %n.vec45
  br i1 %cmp.n56, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.021.030.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  br i1 %.not.i, label %bb.d, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.021.030 = phi i64 [ %i.bh, %.lr.ph ], [ %.sroa.021.030.ph, %.lr.ph.preheader ] ; 4 uses
  %i.aw = icmp ult i64 %.sroa.021.030, %i.f
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.021.030
  %i.ay = mul nuw i64 %.sroa.021.030, 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.ax, align 1, !noundef !4 ; 3 uses
  %i.bb = insertelement <4 x i8> poison, i8 %i.ba, i64 0
  %i.bc = shufflevector <4 x i8> %i.bb, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bd = udiv <4 x i8> %i.bc, <i8 1, i8 3, i8 9, i8 27>
  %i.be = urem <4 x i8> %i.bd, splat (i8 3)
  store <4 x i8> %i.be, ptr %i.az, align 1
  %i.bf = udiv i8 %i.ba, 81                       ; 2 uses
  %.sroa.014.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.urem = add nsw i8 %i.bf, -3
  %.cmp.not = icmp ugt i8 %i.ba, -14
  %i.bg = select i1 %.cmp.not, i8 %.urem, i8 %i.bf
  store i8 %i.bg, ptr %.sroa.014.0.ptr.4, align 1
  %i.bh = add nuw nsw i64 %.sroa.021.030, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

.loopexit:                                        ; preds = %.lr.ph34, %.lr.ph34.1, %.lr.ph34.2, %.lr.ph34.3, %bb.g, %._crit_edge
  store i64 %1, ptr %i.j, align 8
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge
  %i.bi = icmp ult i64 %i.a, %i.f
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bj = mul nuw i64 %i.a, 5                     ; 7 uses
  %i.bk = icmp ugt i64 %i.bj, %1
  br i1 %i.bk, label %bb.h, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bl = icmp samesign eq i64 %i.bj, %1
  br i1 %i.bl, label %.loopexit, label %.lr.ph34

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bj, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
  unreachable

.lr.ph34:                                         ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !4 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj ; 4 uses
  %i.bp = urem i8 %i.bn, 3
  %i.bq = udiv i8 %i.bn, 3
  store i8 %i.bp, ptr %i.bo, align 1
  %i.br = add nuw nsw i64 %i.bj, 1
  %i.bs = icmp samesign eq i64 %i.br, %1
  br i1 %i.bs, label %.loopexit, label %.lr.ph34.1

.lr.ph34.1:                                       ; preds = %.lr.ph34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bu = urem i8 %i.bq, 3
  store i8 %i.bu, ptr %i.bt, align 1
  %i.bv = add nuw nsw i64 %i.bj, 2
  %i.bw = icmp samesign eq i64 %i.bv, %1
  br i1 %i.bw, label %.loopexit, label %.lr.ph34.2

.lr.ph34.2:                                       ; preds = %.lr.ph34.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.by = udiv i8 %i.bn, 9
  %i.bz = urem i8 %i.by, 3
  store i8 %i.bz, ptr %i.bx, align 1
  %i.ca = add nuw nsw i64 %i.bj, 3
  %i.cb = icmp samesign eq i64 %i.ca, %1
  br i1 %i.cb, label %.loopexit, label %.lr.ph34.3

.lr.ph34.3:                                       ; preds = %.lr.ph34.2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.cd = udiv i8 %i.bn, 27
  %i.ce = urem i8 %i.cd, 3
  store i8 %i.ce, ptr %i.cc, align 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.a, %.loopexit
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj4_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %1, 2                           ; 6 uses
  %i.b = and i64 %1, 3                            ; 3 uses
  %.not.i = icmp ne i64 %i.b, 0                   ; 2 uses
  %i.c = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.a, %i.c
  %i.d = tail call { ptr, i64 } @_RNvNtCs87O7Q65ve1k_7bitcode7consume13consume_bytes(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0.i) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %i.g = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.n = sub i64 %i.m, %i.k                       ; 2 uses
  %.not = icmp ugt i64 %1, %i.n
  br i1 %.not, label %bb.c, label %.preheader, !prof !8

.preheader:                                       ; preds = %bb.b
  %.not35 = icmp eq i64 %i.a, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  br i1 %.not.i, label %bb.d, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.021.030 = phi i64 [ %i.z, %.lr.ph ], [ 0, %.preheader ] ; 4 uses
  %i.o = icmp ult i64 %.sroa.021.030, %i.f
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.021.030
  %i.q = load i8, ptr %i.p, align 1, !noundef !4  ; 4 uses
  %i.r = shl nuw i64 %.sroa.021.030, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r ; 4 uses
  %i.t = and i8 %i.q, 3
  store i8 %i.t, ptr %i.s, align 1
  %i.u = lshr i8 %i.q, 2
  %.sroa.014.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = and i8 %i.u, 3
  store i8 %i.v, ptr %.sroa.014.0.ptr.1, align 1
  %i.w = lshr i8 %i.q, 4
  %.sroa.014.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.x = and i8 %i.w, 3
  store i8 %i.x, ptr %.sroa.014.0.ptr.2, align 1
  %i.y = lshr i8 %i.q, 6
  %.sroa.014.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  store i8 %i.y, ptr %.sroa.014.0.ptr.3, align 1
  %i.z = add nuw nsw i64 %.sroa.021.030, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph34.preheader, %.lr.ph34.1, %.lr.ph34.2, %._crit_edge
  store i64 %1, ptr %i.j, align 8
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.aa = icmp ult i64 %i.a, %i.f
  br i1 %i.aa, label %.lr.ph34.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

.lr.ph34.preheader:                               ; preds = %bb.d
  %i.ab = and i64 %1, -4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !4 ; 3 uses
  %i.af = and i8 %i.ae, 3
  store i8 %i.af, ptr %i.ac, align 1
  %i.ag = icmp samesign eq i64 %i.b, 1
  br i1 %i.ag, label %.loopexit, label %.lr.ph34.1

.lr.ph34.1:                                       ; preds = %.lr.ph34.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = lshr i8 %i.ae, 2
  %i.aj = and i8 %i.ai, 3
  store i8 %i.aj, ptr %i.ah, align 1
  %i.ak = icmp samesign eq i64 %i.b, 2
  br i1 %i.ak, label %.loopexit, label %.lr.ph34.2

.lr.ph34.2:                                       ; preds = %.lr.ph34.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.am = lshr i8 %i.ae, 4
  %i.an = and i8 %i.am, 3
  store i8 %i.an, ptr %i.al, align 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.a, %.loopexit
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj6_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = udiv i64 %1, 3                           ; 13 uses
  %i.b = urem i64 %1, 3
  %.not.i = icmp ne i64 %i.b, 0                   ; 2 uses
  %i.c = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.a, %i.c
  %i.d = tail call { ptr, i64 } @_RNvNtCs87O7Q65ve1k_7bitcode7consume13consume_bytes(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0.i) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 7 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %i.g = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %i.k     ; 5 uses
  %i.m = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.n = sub i64 %i.m, %i.k                       ; 2 uses
  %.not = icmp ugt i64 %1, %i.n
  br i1 %.not, label %bb.c, label %.preheader, !prof !8

.preheader:                                       ; preds = %bb.b
  %.not35 = icmp ult i64 %1, 3
  br i1 %.not35, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %1, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.o = mul nuw i64 %i.a, 3
  %i.p = getelementptr i8, ptr %i.i, i64 %i.k
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %i.r = getelementptr i8, ptr %i.e, i64 %i.a
  %bound0 = icmp ult ptr %i.l, %i.r
  %bound1 = icmp ult ptr %i.e, %i.q
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check44 = icmp ult i64 %1, 48
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.a, 8
  %n.vec = and i64 %i.a, 9223372036854775792      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !alias.scope !126 ; 3 uses
  %i.u = mul nuw i64 %index, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.u
  %wide.load.frozen = freeze <16 x i8> %wide.load ; 2 uses
  %i.w = udiv <16 x i8> %wide.load.frozen, splat (i8 6) ; 2 uses
  %3 = mul <16 x i8> %i.w, splat (i8 6)
  %.decomposed = sub <16 x i8> %wide.load.frozen, %3
  %4 = urem <16 x i8> %i.w, splat (i8 6)
  %i.x = udiv <16 x i8> %wide.load, splat (i8 36) ; 2 uses
  %i.y = add nsw <16 x i8> %i.x, splat (i8 -6)
  %i.z = icmp ult <16 x i8> %wide.load, splat (i8 -40)
  %i.aa = select <16 x i1> %i.z, <16 x i8> %i.x, <16 x i8> %i.y
  %i.ab = shufflevector <16 x i8> %.decomposed, <16 x i8> %4, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ac = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i8> %i.ab, <32 x i8> %i.ac, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  store <48 x i8> %interleaved.vec, ptr %i.v, align 1, !alias.scope !127, !noalias !126
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.a, 9223372036854775800    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %index50
  %wide.load52 = load <8 x i8>, ptr %i.ae, align 1, !alias.scope !126 ; 4 uses
  %i.af = mul nuw i64 %index50, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.af
  %i.ah = udiv <8 x i8> %wide.load52, splat (i8 6)
  %i.ai = udiv <8 x i8> %wide.load52, splat (i8 36) ; 2 uses
  %i.aj = add nsw <8 x i8> %i.ai, splat (i8 -6)
  %i.ak = icmp ult <8 x i8> %wide.load52, splat (i8 -40)
  %i.al = select <8 x i1> %i.ak, <8 x i8> %i.ai, <8 x i8> %i.aj
  %i.am = shufflevector <8 x i8> %wide.load52, <8 x i8> %i.ah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = urem <16 x i8> %i.am, splat (i8 6)
  %i.ao = shufflevector <8 x i8> %i.al, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec53 = shufflevector <16 x i8> %i.an, <16 x i8> %i.ao, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec53, ptr %i.ag, align 1, !alias.scope !127, !noalias !126
  %index.next54 = add nuw i64 %index50, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next54, %n.vec45
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.a, %n.vec45
  br i1 %cmp.n56, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.021.030.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  br i1 %.not.i, label %bb.d, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.021.030 = phi i64 [ %i.ba, %.lr.ph ], [ %.sroa.021.030.ph, %.lr.ph.preheader ] ; 4 uses
  %i.aq = icmp ult i64 %.sroa.021.030, %i.f
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.021.030
  %i.as = load i8, ptr %i.ar, align 1, !noundef !4 ; 4 uses
  %i.at = mul nuw i64 %.sroa.021.030, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at ; 3 uses
  %i.av = urem i8 %i.as, 6
  store i8 %i.av, ptr %i.au, align 1
  %i.aw = udiv i8 %i.as, 6
  %.sroa.014.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ax = urem i8 %i.aw, 6
  store i8 %i.ax, ptr %.sroa.014.0.ptr.1, align 1
  %i.ay = udiv i8 %i.as, 36                       ; 2 uses
  %.sroa.014.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %.urem = add nsw i8 %i.ay, -6
  %.cmp = icmp ult i8 %i.as, -40
  %i.az = select i1 %.cmp, i8 %i.ay, i8 %.urem
  store i8 %i.az, ptr %.sroa.014.0.ptr.2, align 1
  %i.ba = add nuw nsw i64 %.sroa.021.030, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

.loopexit:                                        ; preds = %.lr.ph34, %.lr.ph34.1, %bb.g, %._crit_edge
  store i64 %1, ptr %i.j, align 8
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge
  %i.bb = icmp ult i64 %i.a, %i.f
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = mul nuw i64 %i.a, 3                     ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, %1
  br i1 %i.bd, label %bb.h, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.be = icmp samesign eq i64 %i.bc, %1
  br i1 %i.be, label %.loopexit, label %.lr.ph34

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bc, i64 noundef %1, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
  unreachable

.lr.ph34:                                         ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc ; 2 uses
  %i.bi = urem i8 %i.bg, 6
  %i.bj = udiv i8 %i.bg, 6
  store i8 %i.bi, ptr %i.bh, align 1
  %i.bk = add nuw nsw i64 %i.bc, 1
  %i.bl = icmp samesign eq i64 %i.bk, %1
  br i1 %i.bl, label %.loopexit, label %.lr.ph34.1

.lr.ph34.1:                                       ; preds = %.lr.ph34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bn = urem i8 %i.bj, 6
  store i8 %i.bn, ptr %i.bm, align 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.a, %.loopexit
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs87O7Q65ve1k_7bitcode9pack_ints24pack_ints_sized_unsignedyECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef range(i8 0, 5) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %4, align 8, !range !15, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = sub i64 %i.f, %i.d                       ; 3 uses
  %i.h = icmp ult i64 %i.g, 256
  br i1 %i.h, label %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing3newyECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.g, 65536
  br i1 %i.i, label %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing3newyECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %i.g, 4294967296
  %spec.select.i = select i1 %i.j, i8 2, i8 1
  br label %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing3newyECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing3newyECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i8 [ %spec.select.i, %bb.d ], [ 4, %bb.b ], [ 3, %bb.c ] ; 3 uses
  %i.k = icmp samesign ugt i8 %.sroa.0.0.i, %3
  %i.l = icmp samesign ugt i64 %1, 5
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing3newyECs844E4pPEVZX_17influxdb3_catalog.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !138, !noundef !4 ; 3 uses
  %i.o = load i64, ptr %2, align 8, !range !7, !alias.scope !138, !noundef !4
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writeyECs844E4pPEVZX_17influxdb3_catalog.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writeyECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writeyECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.e, %bb.f
  %i.q = shl nuw nsw i8 %3, 1
  %i.r = add nsw i8 %i.q, -2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !138, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 %i.r, ptr %i.u, align 1
  %i.v = add i64 %i.n, 1
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !138
  br label %bb.h

.lr.ph.preheader:                                 ; preds = %_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing3newyECs844E4pPEVZX_17influxdb3_catalog.exit
  %.idx = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.x = add nsw i64 %.idx, -8
  %i.y = lshr exact i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load11 = load <2 x i64>, ptr %i.ad, align 8
  %i.ae = sub <2 x i64> %wide.load, %broadcast.splat
  %i.af = sub <2 x i64> %wide.load11, %broadcast.splat
  store <2 x i64> %i.ae, ptr %next.gep, align 8
end_hunk_0
