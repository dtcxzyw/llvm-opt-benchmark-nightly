Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB2_15EncodedU64Array13binary_search:bb.a

bb.l:                                             ; preds = %bb.k
  %i.bb = trunc nuw i64 %i.az to i32              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !noundef !62 ; 5 uses
  switch i64 %i.bf, label %.lr.ph.i23 [
    i64 0, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSm16binary_search_byNCNvB2_13binary_search0ECs9KQ7US1M400_11lance_table.exit
    i64 1, label %._crit_edge.i27
  ]

._crit_edge.i27:                                  ; preds = %.lr.ph.i23, %bb.l
  %.sroa.05.0.lcssa.i28 = phi i64 [ 0, %bb.l ], [ %i.bn, %.lr.ph.i23 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.sroa.05.0.lcssa.i28
  %.val14.i29 = load i32, ptr %i.bg, align 4, !alias.scope !47987, !noundef !62 ; 2 uses
  %i.bh = icmp eq i32 %.val14.i29, %i.bb
  br i1 %i.bh, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSm16binary_search_byNCNvB2_13binary_search0ECs9KQ7US1M400_11lance_table.exit, label %bb.m

.lr.ph.i23:                                       ; preds = %bb.l, %.lr.ph.i23
  %.sroa.01.019.i24 = phi i64 [ %i.bo, %.lr.ph.i23 ], [ %i.bf, %bb.l ] ; 2 uses
  %.sroa.05.018.i25 = phi i64 [ %i.bn, %.lr.ph.i23 ], [ 0, %bb.l ] ; 2 uses
  %i.bi = lshr i64 %.sroa.01.019.i24, 1           ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, %.sroa.05.018.i25 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.bf
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bj
  %.val16.i26 = load i32, ptr %i.bl, align 4, !alias.scope !47987, !noundef !62
  %i.bm = icmp ugt i32 %.val16.i26, %i.bb
  %i.bn = select i1 %i.bm, i64 %.sroa.05.018.i25, i64 %i.bj, !unpredictable !62 ; 2 uses
  %i.bo = sub nuw nsw i64 %.sroa.01.019.i24, %i.bi ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 1
  br i1 %i.bp, label %.lr.ph.i23, label %._crit_edge.i27

bb.m:                                             ; preds = %._crit_edge.i27
  %i.bq = icmp ult i32 %.val14.i29, %i.bb
  %i.br = zext i1 %i.bq to i64
  %i.bs = add nuw nsw i64 %.sroa.05.0.lcssa.i28, %i.br ; 2 uses
  %i.bt = icmp ule i64 %i.bs, %i.bf
  tail call void @llvm.assume(i1 %i.bt)
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSm16binary_search_byNCNvB2_13binary_search0ECs9KQ7US1M400_11lance_table.exit

bb.n:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !62 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bw)
  br label %bb.j

_RINvMNtCscI6d9CVNmLh_4core5sliceSm16binary_search_byNCNvB2_13binary_search0ECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.m, %._crit_edge.i27, %bb.l, %bb.c
  %.sroa.8.2 = phi i64 [ 0, %bb.c ], [ %i.bf, %bb.l ], [ %i.bs, %bb.m ], [ %.sroa.05.0.lcssa.i28, %._crit_edge.i27 ]
  %.sroa.0.2 = phi i64 [ 1, %bb.c ], [ 1, %bb.l ], [ 1, %bb.m ], [ 0, %._crit_edge.i27 ]
  %i.bx = insertvalue { i64, i64 } poison, i64 %.sroa.0.2, 0
  br label %bb.j
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define { i64, i64 } @_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB2_15EncodedU64Array3max(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !62
  switch i64 %i.a, label %default.unreachable28 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable28:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.d = icmp ult i64 %i.c, 4611686018427387904
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !62 ; 4 uses
  %i.h = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !62 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !noalias !48001, !noundef !62 ; 3 uses
  %i.q = icmp eq i64 %i.k, 1
  br i1 %i.q, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %i.k, 2305843009213693951        ; 2 uses
  %i.s = and i64 %i.r, 2305843009213693951        ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.s, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.r, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi29 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %i.t, align 8
  %wide.load30 = load <2 x i64>, ptr %i.u, align 8
  %i.v = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.w = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi29, <2 x i64> %wide.load30) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !47990

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.v, <2 x i64> %i.w)
  %i.y = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.f, %middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ %i.p, %bb.f ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.aa, %scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i64, ptr %i.z, align 8, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i.i.i, i64 %.val.i.i.i) ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.s
  br i1 %i.ab, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %scalar.ph, !llvm.loop !47991

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !62
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 3 uses
  %i.ah = load i16, ptr %i.af, align 2, !noalias !48002, !noundef !62 ; 4 uses
  %i.ai = icmp eq i64 %i.c, 1
  br i1 %i.ai, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.aj = add nuw i64 %i.c, 9223372036854775807   ; 4 uses
  %i.ak = and i64 %i.aj, 9223372036854775807      ; 5 uses
  %min.iters.check50 = icmp samesign ult i64 %i.ak, 4
  br i1 %min.iters.check50, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp samesign ult i64 %i.ak, 16
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph52

vector.ph52:                                      ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %i.aj, 12
  %n.vec53 = and i64 %i.aj, 9223372036854775792   ; 4 uses
  %broadcast.splatinsert54 = insertelement <8 x i16> poison, i16 %i.ah, i64 0
  %broadcast.splat55 = shufflevector <8 x i16> %broadcast.splatinsert54, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body56

vector.body56:                                    ; preds = %vector.ph52, %vector.body56
  %index57 = phi i64 [ 0, %vector.ph52 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %vec.phi58 = phi <8 x i16> [ %broadcast.splat55, %vector.ph52 ], [ %i.ao, %vector.body56 ]
  %vec.phi59 = phi <8 x i16> [ %broadcast.splat55, %vector.ph52 ], [ %i.ap, %vector.body56 ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index57 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load60 = load <8 x i16>, ptr %i.am, align 2
  %wide.load61 = load <8 x i16>, ptr %i.an, align 2
  %i.ao = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi58, <8 x i16> %wide.load60) ; 2 uses
  %i.ap = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi59, <8 x i16> %wide.load61) ; 2 uses
  %index.next62 = add nuw i64 %index57, 16        ; 2 uses
  %i.aq = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.aq, label %middle.block63, label %vector.body56, !llvm.loop !47994

middle.block63:                                   ; preds = %vector.body56
  %rdx.minmax64 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ao, <8 x i16> %i.ap)
  %i.ar = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax64) ; 3 uses
  %cmp.n65 = icmp eq i64 %i.ak, %n.vec53
  br i1 %cmp.n65, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block63
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec53, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx66 = phi i16 [ %i.ar, %vec.epilog.iter.check ], [ %i.ah, %vector.main.loop.iter.check ]
  %n.vec67 = and i64 %i.aj, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert68 = insertelement <4 x i16> poison, i16 %bc.merge.rdx66, i64 0
  %broadcast.splat69 = shufflevector <4 x i16> %broadcast.splatinsert68, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi71 = phi <4 x i16> [ %broadcast.splat69, %vec.epilog.ph ], [ %i.at, %vec.epilog.vector.body ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index70
  %wide.load72 = load <4 x i16>, ptr %i.as, align 2
  %i.at = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi71, <4 x i16> %wide.load72) ; 2 uses
  %index.next73 = add nuw i64 %index70, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47995

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.av = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.at) ; 2 uses
  %cmp.n74 = icmp eq i64 %i.ak, %n.vec67
  br i1 %cmp.n74, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i7.ph = phi i64 [ 0, %iter.check ], [ %n.vec53, %vec.epilog.iter.check ], [ %n.vec67, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i8.ph = phi i16 [ %i.ah, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i7 = phi i64 [ %i.ax, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i7.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i8 = phi i16 [ %.sroa.0.0.i.i.i.i.i.i10, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i8.ph, %vec.epilog.scalar.ph.preheader ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.sroa.04.0.i.i.i7
  %.val.i.i.i9 = load i16, ptr %i.aw, align 2, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i10 = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.02.0.i.i.i8, i16 %.val.i.i.i9) ; 2 uses
  %i.ax = add nuw i64 %.sroa.04.0.i.i.i7, 1       ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.ak
  br i1 %i.ay, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !47996

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block63, %vec.epilog.middle.block, %bb.g
  %.sroa.3.0.i11.ph = phi i16 [ %i.ah, %bb.g ], [ %i.av, %vec.epilog.middle.block ], [ %i.ar, %middle.block63 ], [ %.sroa.0.0.i.i.i.i.i.i10, %vec.epilog.scalar.ph ]
  %i.az = zext i16 %.sroa.3.0.i11.ph to i64
  %i.ba = add i64 %i.ad, %i.az
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit: ; preds = %scalar.ph, %middle.block, %bb.e, %bb.d, %bb.c, %bb.b, %.loopexit25, %.loopexit
  %.sroa.6.0 = phi i64 [ undef, %bb.c ], [ %i.ba, %.loopexit ], [ undef, %bb.b ], [ %i.bw, %.loopexit25 ], [ undef, %bb.d ], [ %i.p, %bb.e ], [ %i.y, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %scalar.ph ]
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 1, %.loopexit ], [ 0, %bb.b ], [ 1, %.loopexit25 ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %scalar.ph ]
  %i.bb = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.bc = insertvalue { i64, i64 } %i.bb, i64 %.sroa.6.0, 1
  ret { i64, i64 } %i.bc

bb.h:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !62
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bg, align 4, !noalias !48003, !noundef !62 ; 3 uses
  %i.bj = icmp eq i64 %i.g, 1
  br i1 %i.bj, label %.loopexit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = add nuw nsw i64 %i.g, 4611686018427387903 ; 2 uses
  %i.bl = and i64 %i.bk, 4611686018427387903      ; 3 uses
  %min.iters.check32 = icmp samesign ult i64 %i.bl, 8
  br i1 %min.iters.check32, label %scalar.ph31.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %bb.i
  %n.vec34 = and i64 %i.bk, 4611686018427387896   ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next43, %vector.body37 ] ; 2 uses
  %vec.phi39 = phi <4 x i32> [ %broadcast.splat36, %vector.ph33 ], [ %i.bo, %vector.body37 ]
  %vec.phi40 = phi <4 x i32> [ %broadcast.splat36, %vector.ph33 ], [ %i.bp, %vector.body37 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index38 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load41 = load <4 x i32>, ptr %i.bm, align 4
  %wide.load42 = load <4 x i32>, ptr %i.bn, align 4
  %i.bo = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi39, <4 x i32> %wide.load41) ; 2 uses
  %i.bp = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi40, <4 x i32> %wide.load42) ; 2 uses
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next43, %n.vec34
  br i1 %i.bq, label %middle.block44, label %vector.body37, !llvm.loop !47999

middle.block44:                                   ; preds = %vector.body37
  %rdx.minmax45 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bo, <4 x i32> %i.bp)
  %i.br = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax45) ; 2 uses
  %cmp.n46 = icmp eq i64 %i.bl, %n.vec34
  br i1 %cmp.n46, label %.loopexit25, label %scalar.ph31.preheader

scalar.ph31.preheader:                            ; preds = %bb.i, %middle.block44
  %.sroa.04.0.i.i.i13.ph = phi i64 [ 0, %bb.i ], [ %n.vec34, %middle.block44 ]
  %.sroa.02.0.i.i.i14.ph = phi i32 [ %i.bi, %bb.i ], [ %i.br, %middle.block44 ]
  br label %scalar.ph31

scalar.ph31:                                      ; preds = %scalar.ph31.preheader, %scalar.ph31
  %.sroa.04.0.i.i.i13 = phi i64 [ %i.bt, %scalar.ph31 ], [ %.sroa.04.0.i.i.i13.ph, %scalar.ph31.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i14 = phi i32 [ %.sroa.0.0.i.i.i.i.i.i16, %scalar.ph31 ], [ %.sroa.02.0.i.i.i14.ph, %scalar.ph31.preheader ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.sroa.04.0.i.i.i13
  %.val.i.i.i15 = load i32, ptr %i.bs, align 4, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i16 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.02.0.i.i.i14, i32 %.val.i.i.i15) ; 2 uses
  %i.bt = add nuw i64 %.sroa.04.0.i.i.i13, 1      ; 2 uses
  %i.bu = icmp eq i64 %i.bt, %i.bl
  br i1 %i.bu, label %.loopexit25, label %scalar.ph31, !llvm.loop !48000

.loopexit25:                                      ; preds = %scalar.ph31, %middle.block44, %bb.h
  %.sroa.3.0.i17.ph = phi i32 [ %i.bi, %bb.h ], [ %i.br, %middle.block44 ], [ %.sroa.0.0.i.i.i.i.i.i16, %scalar.ph31 ]
  %i.bv = zext i32 %.sroa.3.0.i17.ph to i64
  %i.bw = add i64 %i.be, %i.bv
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define { i64, i64 } @_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB2_15EncodedU64Array3min(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !62
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  %i.d = icmp ult i64 %i.c, 4611686018427387904
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6min_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !62 ; 2 uses
  %i.h = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6min_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !62 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6min_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !noalias !48008, !noundef !62 ; 3 uses
  %i.q = icmp eq i64 %i.k, 1
  br i1 %i.q, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6min_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %i.k, 2305843009213693951        ; 2 uses
  %i.s = and i64 %i.r, 2305843009213693951        ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.s, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.r, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %i.t, align 8
  %wide.load3 = load <2 x i64>, ptr %i.u, align 8
  %i.v = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.w = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %vec.phi2, <2 x i64> %wide.load3) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !48006

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.v, <2 x i64> %i.w)
  %i.y = tail call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6min_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.f, %middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ %i.p, %bb.f ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.aa, %scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i64, ptr %i.z, align 8, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.02.0.i.i.i, i64 %.val.i.i.i) ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.s
  br i1 %i.ab, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6min_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit, label %scalar.ph, !llvm.loop !48007

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !62
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6min_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6min_by4foldyNvYyNtNtBc_3cmp3Ord3cmpE0ECs9KQ7US1M400_11lance_table.exit: ; preds = %scalar.ph, %middle.block, %bb.e, %bb.d, %bb.c, %bb.b, %bb.h, %bb.g
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment5range:bb.a
  %vec.phi86 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ao, %vector.body ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8, !noalias !51022
  %wide.load87 = load <2 x i64>, ptr %i.am, align 8, !noalias !51022
  %i.an = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.ao = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %vec.phi86, <2 x i64> %wide.load87) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !51004

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.an, <2 x i64> %i.ao)
  %i.aq = tail call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit69, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.m, %middle.block
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %bb.m ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.ph = phi i64 [ %i.ah, %bb.m ], [ %i.aq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.04.0.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %scalar.ph ], [ %.sroa.02.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.ar, align 8, !noalias !51022, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.02.0.i.i.i.i, i64 %.val.i.i.i.i) ; 2 uses
  %i.as = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.ak
  br i1 %i.at, label %.loopexit69, label %scalar.ph, !llvm.loop !51005

bb.n:                                             ; preds = %bb.a, %bb.c
  %.sink = phi i64 [ 8, %bb.a ], [ 40, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !62 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !62 ; 2 uses
  %i.ay = icmp ult i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = add i64 %i.ax, -1
  br label %.sink.split

.sink.split:                                      ; preds = %scalar.ph88, %middle.block101, %.loopexit25.i, %.loopexit.i, %bb.l, %bb.s, %bb.r, %bb.q, %bb.o
  %.sink85 = phi i64 [ %i.av, %bb.o ], [ %i.bh, %bb.q ], [ %i.cb, %bb.s ], [ %i.bt, %bb.r ], [ %i.cr, %.loopexit.i ], [ %i.ah, %bb.l ], [ %i.dq, %.loopexit25.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.lcssa, %middle.block101 ], [ %.sroa.0.0.i.i.i.i.i.i.i.lcssa, %scalar.ph88 ]
  %.sink84 = phi i64 [ %i.az, %bb.o ], [ %i.bm, %bb.q ], [ %i.ce, %bb.s ], [ %i.by, %bb.r ], [ %i.do, %.loopexit.i ], [ %i.ah, %bb.l ], [ %i.ei, %.loopexit25.i ], [ %i.cm, %middle.block101 ], [ %.sroa.0.0.i.i.i.i.i.i.i37, %scalar.ph88 ]
  store i64 %.sink85, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink84, ptr %.sroa.427.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.i, %bb.j, %bb.k, %bb.e, %bb.f, %bb.g
  %.sink82 = phi i8 [ 2, %bb.e ], [ 2, %bb.k ], [ 2, %bb.i ], [ 2, %bb.j ], [ 2, %bb.n ], [ 2, %bb.g ], [ 2, %bb.f ], [ 0, %.sink.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink82, ptr %i.ba, align 8
  ret void

bb.q:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !51021, !noundef !62 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !51021, !nonnull !62, !noundef !62 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !noalias !51021, !noundef !62
  %i.bg = zext i16 %i.bf to i64
  %i.bh = add i64 %i.bc, %i.bg
  %i.bi = getelementptr [2 x i8], ptr %i.be, i64 %i.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 -2
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !51024, !noundef !62
  %i.bl = zext i16 %i.bk to i64
  %i.bm = add i64 %i.bc, %i.bl
  br label %.sink.split

bb.r:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !51021, !noundef !62 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !51021, !nonnull !62, !noundef !62 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !noalias !51021, !noundef !62
  %i.bs = zext i32 %i.br to i64
  %i.bt = add i64 %i.bo, %i.bs
  %i.bu = getelementptr [4 x i8], ptr %i.bq, i64 %i.m
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !51024, !noundef !62
  %i.bx = zext i32 %i.bw to i64
  %i.by = add i64 %i.bo, %i.bx
  br label %.sink.split

bb.s:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !51021, !nonnull !62, !noundef !62 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !51021, !noundef !62
  %i.cc = getelementptr [8 x i8], ptr %i.ca, i64 %i.q
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !51024, !noundef !62
  br label %.sink.split

.loopexit69:                                      ; preds = %scalar.ph, %middle.block
  %.sroa.0.0.i.i.i.i.i.i.i.lcssa = phi i64 [ %i.aq, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i.i, %scalar.ph ] ; 2 uses
  %i.cf = add i64 %i.ac, 2305843009213693951
  %i.cg = and i64 %i.cf, 2305843009213693951
  %min.iters.check89 = icmp samesign ult i64 %i.ak, 4
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.loopexit69
  %n.vec91 = and i64 %i.aj, 2305843009213693948   ; 3 uses
  %broadcast.splatinsert92 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat93 = shufflevector <2 x i64> %broadcast.splatinsert92, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph90
  %index95 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <2 x i64> [ %broadcast.splat93, %vector.ph90 ], [ %i.cj, %vector.body94 ]
  %vec.phi97 = phi <2 x i64> [ %broadcast.splat93, %vector.ph90 ], [ %i.ck, %vector.body94 ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index95 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load98 = load <2 x i64>, ptr %i.ch, align 8, !noalias !51025
  %wide.load99 = load <2 x i64>, ptr %i.ci, align 8, !noalias !51025
  %i.cj = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi96, <2 x i64> %wide.load98) ; 2 uses
  %i.ck = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi97, <2 x i64> %wide.load99) ; 2 uses
  %index.next100 = add nuw i64 %index95, 4        ; 2 uses
  %i.cl = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.cl, label %middle.block101, label %vector.body94, !llvm.loop !51010

middle.block101:                                  ; preds = %vector.body94
  %rdx.minmax102 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.cj, <2 x i64> %i.ck)
  %i.cm = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax102) ; 2 uses
  %cmp.n103 = icmp eq i64 %i.ak, %n.vec91
  br i1 %cmp.n103, label %.sink.split, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %.loopexit69, %middle.block101
  %.sroa.04.0.i.i.i.i34.ph = phi i64 [ 0, %.loopexit69 ], [ %n.vec91, %middle.block101 ]
  %.sroa.02.0.i.i.i.i35.ph = phi i64 [ %i.ah, %.loopexit69 ], [ %i.cm, %middle.block101 ]
  br label %scalar.ph88

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %.sroa.04.0.i.i.i.i34 = phi i64 [ %i.co, %scalar.ph88 ], [ %.sroa.04.0.i.i.i.i34.ph, %scalar.ph88.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i35 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i37, %scalar.ph88 ], [ %.sroa.02.0.i.i.i.i35.ph, %scalar.ph88.preheader ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.04.0.i.i.i.i34
  %.val.i.i.i.i36 = load i64, ptr %i.cn, align 8, !noalias !51025, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i.i37 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.02.0.i.i.i.i35, i64 %.val.i.i.i.i36) ; 2 uses
  %i.co = add nuw i64 %.sroa.04.0.i.i.i.i34, 1    ; 2 uses
  %i.cp = icmp eq i64 %i.co, %i.cg
  br i1 %i.cp, label %.sink.split, label %scalar.ph88, !llvm.loop !51011

bb.t:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !51022, !noundef !62 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !51025, !nonnull !62, !noundef !62 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2 ; 3 uses
  %i.cv = load i16, ptr %i.ct, align 2, !noalias !51026, !noundef !62 ; 4 uses
  %i.cw = icmp eq i64 %i.u, 1
  br i1 %i.cw, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.t
  %i.cx = add nuw i64 %i.u, 9223372036854775807   ; 4 uses
  %i.cy = and i64 %i.cx, 9223372036854775807      ; 5 uses
  %min.iters.check125 = icmp samesign ult i64 %i.cy, 4
  br i1 %min.iters.check125, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp samesign ult i64 %i.cy, 16
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph127

vector.ph127:                                     ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cx, 12
  %n.vec128 = and i64 %i.cx, 9223372036854775792  ; 4 uses
  %broadcast.splatinsert129 = insertelement <8 x i16> poison, i16 %i.cv, i64 0
  %broadcast.splat130 = shufflevector <8 x i16> %broadcast.splatinsert129, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.ph127, %vector.body131
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next137, %vector.body131 ] ; 2 uses
  %vec.phi133 = phi <8 x i16> [ %broadcast.splat130, %vector.ph127 ], [ %i.dc, %vector.body131 ]
  %vec.phi134 = phi <8 x i16> [ %broadcast.splat130, %vector.ph127 ], [ %i.dd, %vector.body131 ]
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index132 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load135 = load <8 x i16>, ptr %i.da, align 2, !noalias !51025
  %wide.load136 = load <8 x i16>, ptr %i.db, align 2, !noalias !51025
  %i.dc = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi133, <8 x i16> %wide.load135) ; 2 uses
  %i.dd = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi134, <8 x i16> %wide.load136) ; 2 uses
  %index.next137 = add nuw i64 %index132, 16      ; 2 uses
  %i.de = icmp eq i64 %index.next137, %n.vec128
  br i1 %i.de, label %middle.block138, label %vector.body131, !llvm.loop !51014

middle.block138:                                  ; preds = %vector.body131
  %rdx.minmax139 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dc, <8 x i16> %i.dd)
  %i.df = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax139) ; 3 uses
  %cmp.n140 = icmp eq i64 %i.cy, %n.vec128
  br i1 %cmp.n140, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block138
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec128, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx141 = phi i16 [ %i.df, %vec.epilog.iter.check ], [ %i.cv, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.cx, 9223372036854775804  ; 3 uses
  %broadcast.splatinsert143 = insertelement <4 x i16> poison, i16 %bc.merge.rdx141, i64 0
  %broadcast.splat144 = shufflevector <4 x i16> %broadcast.splatinsert143, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi146 = phi <4 x i16> [ %broadcast.splat144, %vec.epilog.ph ], [ %i.dh, %vec.epilog.vector.body ]
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %index145
  %wide.load147 = load <4 x i16>, ptr %i.dg, align 2, !noalias !51025
  %i.dh = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi146, <4 x i16> %wide.load147) ; 2 uses
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51015

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dj = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.dh) ; 2 uses
  %cmp.n149 = icmp eq i64 %i.cy, %n.vec142
  br i1 %cmp.n149, label %.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i7.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec128, %vec.epilog.iter.check ], [ %n.vec142, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i8.i.ph = phi i16 [ %i.cv, %iter.check ], [ %i.df, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i7.i = phi i64 [ %i.dl, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i7.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i8.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i10.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i8.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %.sroa.04.0.i.i.i7.i
  %.val.i.i.i9.i = load i16, ptr %i.dk, align 2, !noalias !51025, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i10.i = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.02.0.i.i.i8.i, i16 %.val.i.i.i9.i) ; 2 uses
  %i.dl = add nuw i64 %.sroa.04.0.i.i.i7.i, 1     ; 2 uses
  %i.dm = icmp eq i64 %i.dl, %i.cy
  br i1 %i.dm, label %.loopexit.i, label %vec.epilog.scalar.ph, !llvm.loop !51016

.loopexit.i:                                      ; preds = %vec.epilog.scalar.ph, %middle.block138, %vec.epilog.middle.block, %bb.t
  %.sroa.3.0.i11.ph.i = phi i16 [ %i.cv, %bb.t ], [ %i.dj, %vec.epilog.middle.block ], [ %i.df, %middle.block138 ], [ %.sroa.0.0.i.i.i.i.i.i10.i, %vec.epilog.scalar.ph ]
  %i.dn = zext i16 %.sroa.3.0.i11.ph.i to i64
  %i.do = add i64 %i.cr, %i.dn
  br label %.sink.split

bb.u:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !51022, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51025)
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !51025, !nonnull !62, !noundef !62 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.ds, align 4, !noalias !51027, !noundef !62 ; 3 uses
  %i.dv = icmp eq i64 %i.y, 1
  br i1 %i.dv, label %.loopexit25.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = add nuw nsw i64 %i.y, 4611686018427387903 ; 2 uses
  %i.dx = and i64 %i.dw, 4611686018427387903      ; 3 uses
  %min.iters.check107 = icmp samesign ult i64 %i.dx, 8
  br i1 %min.iters.check107, label %scalar.ph106.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %bb.v
  %n.vec109 = and i64 %i.dw, 4611686018427387896  ; 3 uses
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next118, %vector.body112 ] ; 2 uses
  %vec.phi114 = phi <4 x i32> [ %broadcast.splat111, %vector.ph108 ], [ %i.ea, %vector.body112 ]
  %vec.phi115 = phi <4 x i32> [ %broadcast.splat111, %vector.ph108 ], [ %i.eb, %vector.body112 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index113 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load116 = load <4 x i32>, ptr %i.dy, align 4, !noalias !51025
  %wide.load117 = load <4 x i32>, ptr %i.dz, align 4, !noalias !51025
  %i.ea = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi114, <4 x i32> %wide.load116) ; 2 uses
  %i.eb = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi115, <4 x i32> %wide.load117) ; 2 uses
  %index.next118 = add nuw i64 %index113, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next118, %n.vec109
  br i1 %i.ec, label %middle.block119, label %vector.body112, !llvm.loop !51019

middle.block119:                                  ; preds = %vector.body112
  %rdx.minmax120 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ea, <4 x i32> %i.eb)
  %i.ed = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax120) ; 2 uses
  %cmp.n121 = icmp eq i64 %i.dx, %n.vec109
  br i1 %cmp.n121, label %.loopexit25.i, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %bb.v, %middle.block119
  %.sroa.04.0.i.i.i13.i.ph = phi i64 [ 0, %bb.v ], [ %n.vec109, %middle.block119 ]
  %.sroa.02.0.i.i.i14.i.ph = phi i32 [ %i.du, %bb.v ], [ %i.ed, %middle.block119 ]
  br label %scalar.ph106

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %.sroa.04.0.i.i.i13.i = phi i64 [ %i.ef, %scalar.ph106 ], [ %.sroa.04.0.i.i.i13.i.ph, %scalar.ph106.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i14.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i16.i, %scalar.ph106 ], [ %.sroa.02.0.i.i.i14.i.ph, %scalar.ph106.preheader ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.sroa.04.0.i.i.i13.i
  %.val.i.i.i15.i = load i32, ptr %i.ee, align 4, !noalias !51025, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i16.i = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.02.0.i.i.i14.i, i32 %.val.i.i.i15.i) ; 2 uses
  %i.ef = add nuw i64 %.sroa.04.0.i.i.i13.i, 1    ; 2 uses
  %i.eg = icmp eq i64 %i.ef, %i.dx
  br i1 %i.eg, label %.loopexit25.i, label %scalar.ph106, !llvm.loop !51020

.loopexit25.i:                                    ; preds = %scalar.ph106, %middle.block119, %bb.u
  %.sroa.3.0.i17.ph.i = phi i32 [ %i.du, %bb.u ], [ %i.ed, %middle.block119 ], [ %.sroa.0.0.i.i.i.i.i.i16.i, %scalar.ph106 ]
  %i.eh = zext i32 %.sroa.3.0.i17.ph.i to i64
  %i.ei = add i64 %i.dq, %i.eh
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment5slice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 3, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit6

bb.c:                                             ; preds = %bb.a
  %i.g = tail call { ptr, ptr } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 17 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !51092
  %i.j = add i64 %3, -1                           ; 2 uses
  %.not.i.i.i = icmp eq i64 %2, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br i1 %.not.i.i.i, label %bb.d, label %bb.e, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !62, !noalias !51093, !nonnull !62
  %i.m = invoke { i64, i64 } %i.l(ptr noundef nonnull %i.h)
          to label %bb.f unwind label %bb.aa, !noalias !51092, !inline_history !51094

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !62, !noalias !51095, !nonnull !62
  %i.p = invoke { i64, i64 } %i.o(ptr noundef nonnull %i.h, i64 noundef %2)
          to label %bb.f unwind label %bb.aa, !noalias !51092, !inline_history !51094

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i.i = phi { i64, i64 } [ %i.m, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = extractvalue { i64, i64 } %.pn.i.i.i, 0
  %i.r = extractvalue { i64, i64 } %.pn.i.i.i, 1
  %i.s = trunc nuw i64 %i.q to i1
  br i1 %i.s, label %bb.g, label %.thread18.i

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i64 %i.j, 0                      ; 2 uses
  br i1 %i.t, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51096
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !62, !noalias !51097, !nonnull !62
  invoke void %i.v(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.h)
          to label %.noexc9.i unwind label %bb.aa, !noalias !51092, !inline_history !51098

.noexc9.i:                                        ; preds = %bb.h
  %i.w = load i64, ptr %i.b, align 8, !noalias !51096, !noundef !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51096
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.w)
  %i.x = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 3)
  %i.y = add nuw i64 %i.x, 1
  br label %bb.l

.thread18.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !51092
  %i.z = load ptr, ptr %i.i, align 8, !invariant.load !62, !noalias !51099 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread18.i
  invoke void %i.z(ptr noundef nonnull %i.h)
          to label %bb.j unwind label %bb.k, !noalias !51099

bb.j:                                             ; preds = %bb.i, %.thread18.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !66, !invariant.load !62, !noalias !51099 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1z_4skip4SkipINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEEE9from_iterCs9KQ7US1M400_11lance_table.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !88, !invariant.load !62, !noalias !51099
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #76, !noalias !51099
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1z_4skip4SkipINtNtB6_5boxed3BoxDNtNtNtB1B_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EEEE9from_iterCs9KQ7US1M400_11lance_table.exit

bb.k:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !66, !invariant.load !62, !noalias !51099 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !88, !invariant.load !62, !noalias !51099
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #76, !noalias !51099
  br label %common.resume

common.resume:                                    ; preds = %bb.ae, %bb.af, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %.body.i, %bb.z, %bb.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB7_13encoded_array15EncodedU64ArrayINtNtCscI6d9CVNmLh_4core7convert7TryFromNtNtNtB9_6format2pb15EncodedU64ArrayE8try_from:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aq

.body:                                            ; preds = %bb.n, %bb.m, %bb.g
  %.pn38 = phi { ptr, i32 } [ %i.be, %bb.g ], [ %i.de, %bb.m ], [ %i.de, %bb.n ] ; 2 uses
  %i.bd = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit, label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit

bb.g:                                             ; preds = %.noexc, %bb.l, %.split.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.noexc
  %.pr = load i8, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not37 = icmp eq i8 %.pr, -1
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit89

bb.j:                                             ; preds = %.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.bf = and i64 %.sroa.11.0.copyload, 9223372036854775806 ; 6 uses
  %i.bg = lshr i64 %.sroa.11.0.copyload, 1        ; 4 uses
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !65428
  %i.bi = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bf, i64 noundef range(i64 1, 9) 2) #76, !noalias !65428 ; 9 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.l, label %iter.check

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %i.bf) #80
          to label %.noexc86 unwind label %bb.g

.noexc86:                                         ; preds = %bb.l
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.j
  %i.bk = icmp eq i64 %i.bg, 0
  call void @llvm.assume(i1 %i.bk)
  %.pre218 = load i64, ptr %i.ac, align 8
  br label %bb.o

iter.check:                                       ; preds = %bb.k
  %i.bl = add nsw i64 %.sroa.11.0.copyload, -2    ; 6 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 5 uses
  %i.bn = add nuw i64 %i.bm, 1                    ; 5 uses
  %min.iters.check304 = icmp ult i64 %i.bl, 6
  br i1 %min.iters.check304, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check305 = icmp ult i64 %i.bl, 30
  br i1 %min.iters.check305, label %vec.epilog.ph, label %vector.ph306

vector.ph306:                                     ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.bn, 12
  %n.vec307 = and i64 %i.bn, -16                  ; 8 uses
  %i.bp = shl i64 %n.vec307, 1
  %i.bq = sub i64 %i.bf, %i.bp
  %i.br = shl i64 %n.vec307, 1
  %i.bs = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.br
  br label %vector.body308

vector.body308:                                   ; preds = %vector.ph306, %vector.body308
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next313, %vector.body308 ] ; 3 uses
  %i.bt = shl i64 %index309, 1
  %next.gep310 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.bt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65429)
  %i.bu = getelementptr i8, ptr %next.gep310, i64 16
  %wide.load311 = load <8 x i16>, ptr %next.gep310, align 1, !alias.scope !65430, !noalias !65431
  %wide.load312 = load <8 x i16>, ptr %i.bu, align 1, !alias.scope !65430, !noalias !65431
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index309 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <8 x i16> %wide.load311, ptr %i.bv, align 2, !noalias !65432
  store <8 x i16> %wide.load312, ptr %i.bw, align 2, !noalias !65432
  %index.next313 = add nuw i64 %index309, 16      ; 2 uses
  %i.bx = icmp eq i64 %index.next313, %n.vec307
  br i1 %i.bx, label %middle.block314, label %vector.body308, !llvm.loop !65350

middle.block314:                                  ; preds = %vector.body308
  %ind.escape315 = add i64 %n.vec307, -1
  %cmp.n316 = icmp eq i64 %i.bn, %n.vec307
  br i1 %cmp.n316, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter11ChunksExacthENCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB35_13encoded_array15EncodedU64ArrayINtNtB1F_7convert7TryFromNtNtNtB37_6format2pb15EncodedU64ArrayE8try_from0EE9from_iterB37_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block314
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec307, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec319 = and i64 %i.bn, -4                   ; 7 uses
  %i.by = shl i64 %n.vec319, 1
  %i.bz = sub i64 %i.bf, %i.by
  %i.ca = shl i64 %n.vec319, 1
  %i.cb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ca
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index320 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next323, %vec.epilog.vector.body ] ; 3 uses
  %i.cc = shl i64 %index320, 1
  %next.gep321 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !65429)
  %wide.load322 = load <4 x i16>, ptr %next.gep321, align 1, !alias.scope !65430, !noalias !65431
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index320
  store <4 x i16> %wide.load322, ptr %i.cd, align 2, !noalias !65432
  %index.next323 = add nuw i64 %index320, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next323, %n.vec319
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65351

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape324 = add i64 %n.vec319, -1
  %cmp.n325 = icmp eq i64 %i.bn, %n.vec319
  br i1 %cmp.n325, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter11ChunksExacthENCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB35_13encoded_array15EncodedU64ArrayINtNtB1F_7convert7TryFromNtNtNtB37_6format2pb15EncodedU64ArrayE8try_from0EE9from_iterB37_.exit, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec307, %vec.epilog.iter.check ], [ %n.vec319, %vec.epilog.middle.block ]
  %.ph369 = phi i64 [ %i.bf, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.ph370 = phi ptr [ %.sroa.7.0.copyload, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i.preheader, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i
  %i.cf = phi i64 [ %i.cm, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i ], [ %.ph, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.cg = phi i64 [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i ], [ %.ph369, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i.preheader ]
  %i.ch = phi ptr [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i ], [ %.ph370, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cj = add nsw i64 %i.cg, -2                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65429)
  %i.ck = load i16, ptr %i.ch, align 1, !alias.scope !65430, !noalias !65431
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.cf
  store i16 %i.ck, ptr %i.cl, align 2, !noalias !65432
  %i.cm = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter11ChunksExacthENCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB35_13encoded_array15EncodedU64ArrayINtNtB1F_7convert7TryFromNtNtNtB37_6format2pb15EncodedU64ArrayE8try_from0EE9from_iterB37_.exit, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i, !llvm.loop !65352

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter11ChunksExacthENCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB35_13encoded_array15EncodedU64ArrayINtNtB1F_7convert7TryFromNtNtNtB37_6format2pb15EncodedU64ArrayE8try_from0EE9from_iterB37_.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block314
  %.lcssa268 = phi i64 [ %ind.escape324, %vec.epilog.middle.block ], [ %ind.escape315, %middle.block314 ], [ %i.cf, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i ] ; 2 uses
  %.lcssa = phi i64 [ %n.vec319, %vec.epilog.middle.block ], [ %n.vec307, %middle.block314 ], [ %i.cm, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShtuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calltNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4G_3VectE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.i.i.i.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 3 uses
  %i.co = load i16, ptr %i.bi, align 2, !noalias !65433, !noundef !62 ; 4 uses
  %i.cp = icmp eq i64 %.lcssa268, 0
  br i1 %i.cp, label %.loopexit, label %iter.check349

iter.check349:                                    ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter11ChunksExacthENCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB35_13encoded_array15EncodedU64ArrayINtNtB1F_7convert7TryFromNtNtNtB37_6format2pb15EncodedU64ArrayE8try_from0EE9from_iterB37_.exit
  %min.iters.check330.a = icmp ult i64 %i.bl, 8
  br i1 %min.iters.check330.a, label %vec.epilog.scalar.ph350.preheader, label %vector.main.loop.iter.check331

vector.main.loop.iter.check331:                   ; preds = %iter.check349
  %min.iters.check332 = icmp ult i64 %i.bl, 32
  br i1 %min.iters.check332, label %vec.epilog.ph353, label %vector.ph333

vector.ph333:                                     ; preds = %vector.main.loop.iter.check331
  %n.vec334 = and i64 %i.bm, 9223372036854775792  ; 4 uses
  %broadcast.splatinsert335 = insertelement <8 x i16> poison, i16 %i.co, i64 0
  %broadcast.splat336 = shufflevector <8 x i16> %broadcast.splatinsert335, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.ph333, %vector.body337
  %index338 = phi i64 [ 0, %vector.ph333 ], [ %index.next343, %vector.body337 ] ; 2 uses
  %vec.phi339 = phi <8 x i16> [ %broadcast.splat336, %vector.ph333 ], [ %i.cs, %vector.body337 ]
  %vec.phi340 = phi <8 x i16> [ %broadcast.splat336, %vector.ph333 ], [ %i.ct, %vector.body337 ]
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %index338 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load341 = load <8 x i16>, ptr %i.cq, align 2
  %wide.load342 = load <8 x i16>, ptr %i.cr, align 2
  %i.cs = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi339, <8 x i16> %wide.load341) ; 2 uses
  %i.ct = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi340, <8 x i16> %wide.load342) ; 2 uses
  %index.next343 = add nuw i64 %index338, 16      ; 2 uses
  %i.cu = icmp eq i64 %index.next343, %n.vec334
  br i1 %i.cu, label %middle.block344, label %vector.body337, !llvm.loop !65355

middle.block344:                                  ; preds = %vector.body337
  %rdx.minmax345 = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.cs, <8 x i16> %i.ct)
  %i.cv = call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax345) ; 3 uses
  %cmp.n346 = icmp eq i64 %i.bm, %n.vec334
  br i1 %cmp.n346, label %.loopexit, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block344
  %i.cw = and i64 %i.bl, 24
  %min.epilog.iters.check352 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check352, label %vec.epilog.scalar.ph350.preheader, label %vec.epilog.ph353, !prof !182

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check331, %vec.epilog.iter.check351
  %vec.epilog.resume.val347 = phi i64 [ %n.vec334, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check331 ]
  %bc.merge.rdx348 = phi i16 [ %i.cv, %vec.epilog.iter.check351 ], [ %i.co, %vector.main.loop.iter.check331 ]
  %n.vec354 = and i64 %i.bm, 9223372036854775804  ; 3 uses
  %broadcast.splatinsert355 = insertelement <4 x i16> poison, i16 %bc.merge.rdx348, i64 0
  %broadcast.splat356 = shufflevector <4 x i16> %broadcast.splatinsert355, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body357

vec.epilog.vector.body357:                        ; preds = %vec.epilog.vector.body357, %vec.epilog.ph353
  %index358 = phi i64 [ %vec.epilog.resume.val347, %vec.epilog.ph353 ], [ %index.next361, %vec.epilog.vector.body357 ] ; 2 uses
  %vec.phi359 = phi <4 x i16> [ %broadcast.splat356, %vec.epilog.ph353 ], [ %i.cy, %vec.epilog.vector.body357 ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %index358
  %wide.load360 = load <4 x i16>, ptr %i.cx, align 2
  %i.cy = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi359, <4 x i16> %wide.load360) ; 2 uses
  %index.next361 = add nuw i64 %index358, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next361, %n.vec354
  br i1 %i.cz, label %vec.epilog.middle.block362, label %vec.epilog.vector.body357, !llvm.loop !65356

vec.epilog.middle.block362:                       ; preds = %vec.epilog.vector.body357
  %i.da = call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.cy) ; 2 uses
  %cmp.n363 = icmp eq i64 %i.bm, %n.vec354
  br i1 %cmp.n363, label %.loopexit, label %vec.epilog.scalar.ph350.preheader

vec.epilog.scalar.ph350.preheader:                ; preds = %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block362
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check349 ], [ %n.vec334, %vec.epilog.iter.check351 ], [ %n.vec354, %vec.epilog.middle.block362 ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.co, %iter.check349 ], [ %i.cv, %vec.epilog.iter.check351 ], [ %i.da, %vec.epilog.middle.block362 ]
  br label %vec.epilog.scalar.ph350

vec.epilog.scalar.ph350:                          ; preds = %vec.epilog.scalar.ph350.preheader, %vec.epilog.scalar.ph350
  %.sroa.04.0.i.i.i = phi i64 [ %i.dc, %vec.epilog.scalar.ph350 ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph350.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph350 ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph350.preheader ]
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i16, ptr %i.db, align 2, !noundef !62
  %.sroa.0.0.i.i.i.i.i.i = call noundef i16 @llvm.umax.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i) ; 2 uses
  %i.dc = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %.lcssa268
  br i1 %i.dd, label %.loopexit, label %vec.epilog.scalar.ph350, !llvm.loop !65357

bb.m:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit, %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = icmp eq i64 %i.bg, 0
  br i1 %i.df, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = and i64 %.sroa.11.0.copyload, 9223372036854775806
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 2) #76
  br label %.body

.loopexit:                                        ; preds = %vec.epilog.scalar.ph350, %middle.block344, %vec.epilog.middle.block362, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter11ChunksExacthENCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB35_13encoded_array15EncodedU64ArrayINtNtB1F_7convert7TryFromNtNtNtB37_6format2pb15EncodedU64ArrayE8try_from0EE9from_iterB37_.exit
  %.sroa.3.0.i.ph = phi i16 [ %i.co, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter11ChunksExacthENCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB35_13encoded_array15EncodedU64ArrayINtNtB1F_7convert7TryFromNtNtNtB37_6format2pb15EncodedU64ArrayE8try_from0EE9from_iterB37_.exit ], [ %i.da, %vec.epilog.middle.block362 ], [ %i.cv, %middle.block344 ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph350 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i16 %.sroa.3.0.i.ph, ptr %i.aa, align 2
  %i.dh = zext i16 %.sroa.3.0.i.ph to i64
  %i.di = load i64, ptr %i.ac, align 8, !noundef !62 ; 2 uses
  %i.dj = xor i64 %i.di, -1
  %i.dk = icmp ult i64 %i.dj, %i.dh
  br i1 %i.dk, label %bb.r, label %bb.q, !prof !65

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %bb.q
  %.val7.i.i.i.i.i.i241 = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %.lcssa, %bb.q ]
  %.sroa.10.0.i.i231239 = phi ptr [ inttoptr (i64 2 to ptr), %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %i.bi, %bb.q ]
  %.sroa.4.0.i.i233237 = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %i.bg, %bb.q ]
  %i.dl = phi i64 [ %.pre218, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %i.di, %bb.q ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dl, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.i233237, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.0.i.i231239, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val7.i.i.i.i.i.i241, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  %i.dn = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.dn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit87, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit87

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit87: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit123

bb.q:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.o

bb.r:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ac, ptr %i.x, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %i.do, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @1402, ptr noundef nonnull %i.x)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit unwind label %bb.m

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error18corrupt_file_namedNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.s unwind label %bb.m

bb.s:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dp = icmp eq i64 %i.bg, 0
  br i1 %i.dp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit89, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = and i64 %.sroa.11.0.copyload, 9223372036854775806
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 2) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit89

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit89: ; preds = %bb.s, %bb.t, %bb.i
  %i.dr = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.dr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit90, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit89
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit90

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit90: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECs9KQ7US1M400_11lance_table.exit89, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit123

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.am, %.body143, %bb.v, %.body109, %bb.f, %.body
  %.pn38.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %.pn38, %bb.f ], [ %.pn38, %.body ], [ %.pn, %.body109 ], [ %i.fv, %.body143 ], [ %i.fv, %bb.am ]
  resume { ptr, i32 } %.pn38.pn

.body109:                                         ; preds = %bb.ae, %bb.ad, %bb.w
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.ae ], [ %i.dt, %bb.w ], [ %i.fh, %bb.ad ] ; 2 uses
  %i.ds = icmp eq i64 %.sroa.0158.0.copyload, 0
  br i1 %i.ds, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit, label %bb.v

bb.v:                                             ; preds = %.body109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7159.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7159.0.copyload, i64 noundef %.sroa.0158.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit

bb.w:                                             ; preds = %.noexc75, %bb.ab, %.split.i71
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.x:                                             ; preds = %.noexc75
  %.pr201 = load i8, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not35 = icmp eq i8 %.pr201, -1
  br i1 %.not35, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9KQ7US1M400_11lance_table.exit120

bb.z:                                             ; preds = %.thread202, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7159.0.copyload) ]
  %i.du = and i64 %.sroa.11160.0.copyload, 9223372036854775804 ; 5 uses
  %i.dv = lshr i64 %.sroa.11160.0.copyload, 2     ; 4 uses
  %i.dw = icmp eq i64 %i.du, 0
  br i1 %i.dw, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !65434
  %i.dx = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.du, i64 noundef range(i64 1, 9) 4) #76, !noalias !65434 ; 8 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ab, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShmuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_froms_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4I_3VecmE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.us.i.i.i.i.i.i.preheader

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.du) #80
          to label %.noexc108 unwind label %bb.w

.noexc108:                                        ; preds = %bb.ab
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.z
  %i.dz = icmp eq i64 %i.dv, 0
  call void @llvm.assume(i1 %i.dz)
  %.pre = load i64, ptr %i.w, align 8
  br label %bb.af

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShmuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_froms_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4I_3VecmE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.us.i.i.i.i.i.i.preheader: ; preds = %bb.aa
  %i.ea = add nsw i64 %.sroa.11160.0.copyload, -4 ; 3 uses
  %i.eb = lshr i64 %i.ea, 2                       ; 3 uses
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check276 = icmp ult i64 %i.ea, 28
  br i1 %min.iters.check276, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShmuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_froms_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4I_3VecmE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.us.i.i.i.i.i.i.preheader375, label %vector.ph277

vector.ph277:                                     ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRShmuNCNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids5serdeNtNtB19_13encoded_array15EncodedU64ArrayINtNtBa_7convert7TryFromNtNtNtB1b_6format2pb15EncodedU64ArrayE8try_froms_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4I_3VecmE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEBZ_EE0E0E0B1b_.exit.us.i.i.i.i.i.i.preheader
  %n.vec278 = and i64 %i.ec, 9223372036854775800  ; 7 uses
  %i.ed = shl i64 %n.vec278, 2
  %i.ee = sub i64 %i.du, %i.ed
  %i.ef = shl i64 %n.vec278, 2
  %i.eg = getelementptr i8, ptr %.sroa.7159.0.copyload, i64 %i.ef
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next284, %vector.body279 ] ; 3 uses
  %i.eh = shl i64 %index280, 2
  %next.gep281 = getelementptr i8, ptr %.sroa.7159.0.copyload, i64 %i.eh ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65435)
  %i.ei = getelementptr i8, ptr %next.gep281, i64 16
  %wide.load282 = load <4 x i32>, ptr %next.gep281, align 1, !alias.scope !65436, !noalias !65437
  %wide.load283 = load <4 x i32>, ptr %i.ei, align 1, !alias.scope !65436, !noalias !65437
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index280 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <4 x i32> %wide.load282, ptr %i.ej, align 4, !noalias !65438
  store <4 x i32> %wide.load283, ptr %i.ek, align 4, !noalias !65438
  %index.next284 = add nuw i64 %index280, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next284, %n.vec278
  br i1 %i.el, label %middle.block285, label %vector.body279, !llvm.loop !65387

middle.block285:                                  ; preds = %vector.body279
end_hunk_2
