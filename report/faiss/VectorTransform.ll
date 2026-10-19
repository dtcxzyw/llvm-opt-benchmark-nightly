Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/VectorTransform?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5faiss16HadamardRotation4initEj:bb.a
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.e
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.as = sub nuw nsw i64 %i.e, %i.aq
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.as)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit36.i

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.at = icmp ugt i64 %i.aq, %i.e
  br i1 %i.at, label %bb.p, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit36.i

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.e ; 2 uses
  %.not.i.i34.i = icmp eq ptr %i.al, %i.au
  br i1 %.not.i.i34.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit36.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i35.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i35.i:    ; preds = %bb.p
  store ptr %i.au, ptr %i.ak, align 8, !tbaa !32
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit36.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit36.i:           ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i35.i, %bb.p, %bb.o, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !33  ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.e
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit36.i
  %i.bd = sub nuw nsw i64 %i.e, %i.bb
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bd)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i.preheader

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit36.i
  %i.be = icmp ugt i64 %i.bb, %i.e
  br i1 %i.be, label %bb.s, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i.preheader

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.e ; 2 uses
  %.not.i.i37.i = icmp eq ptr %i.aw, %i.bf
  br i1 %.not.i.i37.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i.preheader, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i38.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i38.i:    ; preds = %bb.s
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !32
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i.preheader

_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i.preheader: ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i38.i, %bb.s, %bb.r, %bb.q
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i:           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i.preheader, %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i
  %.02841.i = phi i64 [ %i.bl, %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i.preheader ] ; 2 uses
  %i.bg = call noundef i32 @_ZN5faiss25SplitMix64RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2)
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = select i1 %i.bh, float -1.000000e+00, float 1.000000e+00
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.02841.i
  store float %i.bi, ptr %i.bk, align 4, !tbaa !35
  %i.bl = add nuw i64 %.02841.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.e
  br i1 %exitcond.not.i, label %.preheader40.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i, !llvm.loop !251

.preheader40.i:                                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i, %.preheader40.i
  %.02742.i = phi i64 [ %i.br, %.preheader40.i ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEm.exit39.i ] ; 2 uses
  %i.bm = call noundef i32 @_ZN5faiss25SplitMix64RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2)
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = select i1 %i.bn, float -1.000000e+00, float 1.000000e+00
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.02742.i
  store float %i.bo, ptr %i.bq, align 4, !tbaa !35
  %i.br = add nuw i64 %.02742.i, 1                ; 2 uses
  %exitcond44.not.i = icmp eq i64 %i.br, %i.e
  br i1 %exitcond44.not.i, label %.preheader.i, label %.preheader40.i, !llvm.loop !252

.preheader.i:                                     ; preds = %.preheader40.i, %.preheader.i
  %.043.i = phi i64 [ %i.bx, %.preheader.i ], [ 0, %.preheader40.i ] ; 2 uses
  %i.bs = call noundef i32 @_ZN5faiss25SplitMix64RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2)
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = select i1 %i.bt, float -1.000000e+00, float 1.000000e+00
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.043.i
  store float %i.bu, ptr %i.bw, align 4, !tbaa !35
  %i.bx = add nuw i64 %.043.i, 1                  ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.bx, %i.e
  br i1 %exitcond45.not.i, label %_ZL14generate_signsjmRSt6vectorIfSaIfEES2_S2_.exit, label %.preheader.i, !llvm.loop !253

bb.t:                                             ; preds = %bb.g
  unreachable

_ZL14generate_signsjmRSt6vectorIfSaIfEES2_S2_.exit: ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

declare void @_ZN5faiss25SplitMix64RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #9

declare noundef i32 @_ZN5faiss25SplitMix64RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss16HadamardRotation13apply_noallocElPKfPf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.g, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 1, ptr %i.c, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 4 uses
  tail call void @__kmpc_dispatch_init_8(ptr nonnull @1, i32 %i.h, i32 1073741859, i64 0, i64 %i.g, i64 1, i64 1)
  %i.i = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not94 = icmp eq i32 %i.i, 0
  br i1 %.not94, label %._crit_edge97, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 72
  %scevgep120 = getelementptr inbounds nuw i8, ptr %8, i64 4
  br label %bb.c

.loopexit:                                        ; preds = %._crit_edge89, %bb.c
  %i.m = call i32 @__kmpc_dispatch_next_8(ptr nonnull @1, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge97, label %bb.c

bb.c:                                             ; preds = %.lr.ph96, %.loopexit
  %i.n = load i64, ptr %i.a, align 8, !tbaa !49   ; 9 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !49, !llvm.access.group !254 ; 7 uses
  %.not5590 = icmp sgt i64 %i.n, %i.o
  br i1 %.not5590, label %.loopexit, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.c
  %i.p = load ptr, ptr %3, align 8, !tbaa !50, !llvm.access.group !254 ; 3 uses
  %i.q = load i64, ptr %4, align 8, !tbaa !49, !llvm.access.group !254 ; 13 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !50, !llvm.access.group !254 ; 10 uses
  %i.s = load i64, ptr %6, align 8, !tbaa !49, !llvm.access.group !254 ; 42 uses
  %.not98 = icmp eq i64 %i.q, 0
  %i.t = icmp ult i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.s, 1                     ; 3 uses
  %.not99 = icmp eq i64 %i.s, 0
  %i.v = shl i64 %i.n, 2
  %i.w = mul i64 %i.v, %i.s
  %i.x = shl i64 %i.q, 2                          ; 2 uses
  %i.y = shl i64 %i.s, 2                          ; 2 uses
  %i.z = sub i64 %i.y, %i.x
  %i.aa = add i64 %i.o, 1
  %i.ab = sub i64 %i.aa, %i.n
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.w
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.x
  %i.ae = shl i64 %i.n, 2
  %i.af = mul i64 %i.ae, %i.s
  %scevgep118 = getelementptr i8, ptr %i.r, i64 %i.af
  %i.ag = shl i64 %i.o, 2
  %i.ah = add i64 %i.ag, 4
  %i.ai = mul i64 %i.s, %i.ah
  %scevgep119 = getelementptr i8, ptr %i.r, i64 %i.ai
  %i.aj = shl i64 %i.n, 2
  %i.ak = mul i64 %i.aj, %i.s
  %scevgep135 = getelementptr i8, ptr %i.r, i64 %i.ak
  %i.al = shl i64 %i.o, 2
  %i.am = add i64 %i.al, 4
  %i.an = mul i64 %i.s, %i.am
  %scevgep136 = getelementptr i8, ptr %i.r, i64 %i.an
  %i.ao = shl i64 %i.s, 2                         ; 2 uses
  %i.ap = shl i64 %i.n, 2
  %i.aq = mul i64 %i.ap, %i.s
  %scevgep169 = getelementptr i8, ptr %i.r, i64 %i.aq
  %i.ar = shl i64 %i.o, 2
  %i.as = add i64 %i.ar, 4
  %i.at = mul i64 %i.s, %i.as
  %scevgep170 = getelementptr i8, ptr %i.r, i64 %i.at
  %i.au = shl i64 %i.s, 2                         ; 2 uses
  %i.av = shl i64 %i.n, 2
  %i.aw = mul i64 %i.av, %i.s
  %scevgep203 = getelementptr i8, ptr %i.r, i64 %i.aw ; 2 uses
  %i.ax = shl i64 %i.o, 2
  %i.ay = mul i64 %i.ax, %i.s
  %i.az = shl i64 %i.q, 2                         ; 3 uses
  %i.ba = getelementptr i8, ptr %i.r, i64 %i.ay
  %scevgep204 = getelementptr i8, ptr %i.ba, i64 %i.az ; 2 uses
  %i.bb = shl i64 %i.n, 2
  %i.bc = mul i64 %i.bb, %i.q
  %scevgep205 = getelementptr i8, ptr %i.p, i64 %i.bc
  %i.bd = shl i64 %i.o, 2
  %i.be = add i64 %i.bd, 4
  %i.bf = mul i64 %i.q, %i.be
  %scevgep206 = getelementptr i8, ptr %i.p, i64 %i.bf
  %min.iters.check218 = icmp ult i64 %i.q, 8
  %bound0208 = icmp ult ptr %scevgep203, %scevgep206
  %bound1209 = icmp ult ptr %scevgep205, %scevgep204
  %found.conflict210 = and i1 %bound0208, %bound1209
  %.mask = and i64 %i.s, 2305843009213693952
  %stride.check211 = icmp ne i64 %.mask, 0
  %i.bg = or i1 %found.conflict210, %stride.check211
  %stride.check216 = icmp slt i64 %i.az, 0
  %invariant.op = or i1 %i.bg, %stride.check216
  %n.vec220 = and i64 %i.q, -8                    ; 3 uses
  %cmp.n229 = icmp eq i64 %i.q, %n.vec220
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check177 = icmp ult i64 %i.s, 8
  %stride.check175 = icmp slt i64 %i.au, 0
  %n.vec179 = and i64 %i.s, -8                    ; 3 uses
  %cmp.n188 = icmp eq i64 %i.s, %n.vec179
  %xtraiter235 = and i64 %i.s, 3                  ; 2 uses
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  %min.iters.check143 = icmp ult i64 %i.s, 8
  %stride.check141 = icmp slt i64 %i.ao, 0
  %n.vec145 = and i64 %i.s, -8                    ; 3 uses
  %cmp.n154 = icmp eq i64 %i.s, %n.vec145
  %xtraiter238 = and i64 %i.s, 3                  ; 2 uses
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  %min.iters.check = icmp ult i64 %i.s, 8
  %bound0 = icmp ult ptr %scevgep118, %scevgep120
  %bound1 = icmp ult ptr %8, %scevgep119
  %found.conflict = and i1 %bound0, %bound1
  %.mask.a = and i64 %i.s, 2305843009213693952
  %stride.check = icmp ne i64 %.mask.a, 0
  %i.bh = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.s, -2305843009213693960     ; 3 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  %xtraiter241 = and i64 %i.s, 3                  ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph93, %._crit_edge89
  %indvar = phi i64 [ 0, %.lr.ph93 ], [ %indvar.next, %._crit_edge89 ] ; 2 uses
  %.05091 = phi i64 [ %i.n, %.lr.ph93 ], [ %i.jh, %._crit_edge89 ] ; 3 uses
  %i.bi = mul i64 %i.y, %indvar
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.bi
  %i.bj = mul i64 %i.q, %.05091
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bj ; 6 uses
  %i.bl = mul i64 %i.s, %.05091
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bl ; 30 uses
  br i1 %.not98, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !33, !llvm.access.group !254 ; 8 uses
  br i1 %min.iters.check218, label %scalar.ph217.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph
  %scevgep207 = getelementptr i8, ptr %i.bn, i64 %i.az
  %bound0213 = icmp ult ptr %scevgep203, %scevgep207
  %bound1214 = icmp ult ptr %i.bn, %scevgep204
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx.reass = or i1 %invariant.op, %found.conflict215
  br i1 %conflict.rdx.reass, label %scalar.ph217.preheader, label %vector.body221

vector.body221:                                   ; preds = %vector.memcheck202, %vector.body221
  %index222 = phi i64 [ %index.next227, %vector.body221 ], [ 0, %vector.memcheck202 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index222 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load223.a = load <4 x float>, ptr %i.bo, align 4, !tbaa !35, !alias.scope !289, !llvm.access.group !254
  %wide.load224.a = load <4 x float>, ptr %i.bp, align 4, !tbaa !35, !alias.scope !289, !llvm.access.group !254
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index222 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load225.a = load <4 x float>, ptr %i.bq, align 4, !tbaa !35, !alias.scope !290, !llvm.access.group !254
  %wide.load226 = load <4 x float>, ptr %i.br, align 4, !tbaa !35, !alias.scope !290, !llvm.access.group !254
  %i.bs = fmul <4 x float> %wide.load223.a, %wide.load225.a
  %i.bt = fmul <4 x float> %wide.load224.a, %wide.load226
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index222 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !35, !alias.scope !291, !noalias !292, !llvm.access.group !254
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !35, !alias.scope !291, !noalias !292, !llvm.access.group !254
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.bw, label %middle.block228, label %vector.body221, !llvm.loop !259

middle.block228:                                  ; preds = %vector.body221
  br i1 %cmp.n229, label %.preheader, label %scalar.ph217.preheader

scalar.ph217.preheader:                           ; preds = %vector.memcheck202, %.lr.ph, %middle.block228
  %.04978.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %.lr.ph ], [ %n.vec220, %middle.block228 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph217.prol.loopexit, label %scalar.ph217.prol

scalar.ph217.prol:                                ; preds = %scalar.ph217.preheader, %scalar.ph217.prol
  %.04978.prol = phi i64 [ %i.cd, %scalar.ph217.prol ], [ %.04978.ph, %scalar.ph217.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph217.prol ], [ 0, %scalar.ph217.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04978.prol
  %i.by = load float, ptr %i.bx, align 4, !tbaa !35, !llvm.access.group !254
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.04978.prol
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !35, !llvm.access.group !254
  %i.cb = fmul float %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.04978.prol
  store float %i.cb, ptr %i.cc, align 4, !tbaa !35, !llvm.access.group !254
  %i.cd = add nuw i64 %.04978.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph217.prol.loopexit, label %scalar.ph217.prol, !llvm.loop !260

scalar.ph217.prol.loopexit:                       ; preds = %scalar.ph217.prol, %scalar.ph217.preheader
  %.04978.unr = phi i64 [ %.04978.ph, %scalar.ph217.preheader ], [ %i.cd, %scalar.ph217.prol ]
  %i.ce = sub i64 %.04978.ph, %i.q
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %.preheader, label %scalar.ph217

.preheader:                                       ; preds = %scalar.ph217.prol.loopexit, %scalar.ph217, %middle.block228, %bb.d
  br i1 %i.t, label %.lr.ph80.preheader, label %._crit_edge

.lr.ph80.preheader:                               ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.z, i1 false), !tbaa !35
  br label %._crit_edge

scalar.ph217:                                     ; preds = %scalar.ph217.prol.loopexit, %scalar.ph217
  %.04978 = phi i64 [ %i.dh, %scalar.ph217 ], [ %.04978.unr, %scalar.ph217.prol.loopexit ] ; 7 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04978
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !35, !llvm.access.group !254
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.04978
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !35, !llvm.access.group !254
  %i.ck = fmul float %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.04978
  store float %i.ck, ptr %i.cl, align 4, !tbaa !35, !llvm.access.group !254
  %i.cm = add nuw i64 %.04978, 1                  ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !35, !llvm.access.group !254
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cm
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !35, !llvm.access.group !254
  %i.cr = fmul float %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cm
  store float %i.cr, ptr %i.cs, align 4, !tbaa !35, !llvm.access.group !254
  %i.ct = add nuw i64 %.04978, 2                  ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !35, !llvm.access.group !254
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ct
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !35, !llvm.access.group !254
  %i.cy = fmul float %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ct
  store float %i.cy, ptr %i.cz, align 4, !tbaa !35, !llvm.access.group !254
  %i.da = add nuw i64 %.04978, 3                  ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !35, !llvm.access.group !254
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.da
  %i.de = load float, ptr %i.dd, align 4, !tbaa !35, !llvm.access.group !254
  %i.df = fmul float %i.dc, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.da
  store float %i.df, ptr %i.dg, align 4, !tbaa !35, !llvm.access.group !254
  %i.dh = add nuw i64 %.04978, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dh, %i.q
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph217, !llvm.loop !261

._crit_edge:                                      ; preds = %.lr.ph80.preheader, %.preheader
  br i1 %i.u, label %.preheader28.i, label %_ZL12fwht_inplacePfm.exit

.preheader28.i:                                   ; preds = %._crit_edge, %bb.e
  %.031.i = phi i64 [ %i.di, %bb.e ], [ 1, %._crit_edge ] ; 8 uses
  %i.di = shl i64 %.031.i, 1                      ; 4 uses
  %min.iters.check191 = icmp ult i64 %.031.i, 4
  %n.vec193 = and i64 %.031.i, -4                 ; 3 uses
  %cmp.n200 = icmp eq i64 %.031.i, %n.vec193
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader28.i
  %indvars.iv.i = phi i64 [ %.031.i, %.preheader28.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.02630.i = phi i64 [ 0, %.preheader28.i ], [ %i.dt, %._crit_edge.i ] ; 6 uses
  %i.dj = add i64 %.02630.i, %.031.i
  %i.dk = icmp ult i64 %.02630.i, %i.dj
  br i1 %i.dk, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br i1 %min.iters.check191, label %.lr.ph.i.preheader233, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.preheader
  %i.dl = add i64 %.02630.i, %n.vec193
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.02630.i
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body194 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index195 ; 3 uses
  %wide.load196 = load <4 x float>, ptr %i.dn, align 4, !tbaa !35, !llvm.access.group !254 ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.dn, i64 %.031.i ; 2 uses
  %wide.load197 = load <4 x float>, ptr %i.do, align 4, !tbaa !35, !llvm.access.group !254 ; 2 uses
  %i.dp = fadd <4 x float> %wide.load196, %wide.load197
  store <4 x float> %i.dp, ptr %i.dn, align 4, !tbaa !35, !llvm.access.group !254
  %i.dq = fsub <4 x float> %wide.load196, %wide.load197
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !35, !llvm.access.group !254
  %index.next198 = add nuw i64 %index195, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.dr, label %middle.block199, label %vector.body194, !llvm.loop !262

middle.block199:                                  ; preds = %vector.body194
  br i1 %cmp.n200, label %._crit_edge.i, label %.lr.ph.i.preheader233

.lr.ph.i.preheader233:                            ; preds = %.lr.ph.i.preheader, %middle.block199
  %.02529.i.ph = phi i64 [ %.02630.i, %.lr.ph.i.preheader ], [ %i.dl, %middle.block199 ]
  br label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ds = icmp ult i64 %i.di, %i.s
  br i1 %i.ds, label %.preheader28.i, label %_ZL12fwht_inplacePfm.exit, !llvm.loop !263

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block199, %.preheader.i
  %i.dt = add i64 %.02630.i, %i.di                ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.s
  %indvars.iv.next.i = add i64 %indvars.iv.i, %i.di
  br i1 %i.du, label %.preheader.i, label %bb.e, !llvm.loop !264

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader233, %.lr.ph.i
  %.02529.i = phi i64 [ %i.eb, %.lr.ph.i ], [ %.02529.i.ph, %.lr.ph.i.preheader233 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.02529.i ; 3 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !35, !llvm.access.group !254 ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %i.dv, i64 %.031.i ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !35, !llvm.access.group !254 ; 2 uses
  %i.dz = fadd float %i.dw, %i.dy
  store float %i.dz, ptr %i.dv, align 4, !tbaa !35, !llvm.access.group !254
  %i.ea = fsub float %i.dw, %i.dy
  store float %i.ea, ptr %i.dx, align 4, !tbaa !35, !llvm.access.group !254
  %i.eb = add nuw i64 %.02529.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %indvars.iv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !265

_ZL12fwht_inplacePfm.exit:                        ; preds = %bb.e, %._crit_edge
  br i1 %.not99, label %._crit_edge89, label %.lr.ph82

.lr.ph82:                                         ; preds = %_ZL12fwht_inplacePfm.exit
  %i.ec = load ptr, ptr %i.k, align 8, !tbaa !33, !llvm.access.group !254 ; 8 uses
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph82
  %scevgep171 = getelementptr i8, ptr %i.ec, i64 %i.au
  %bound0172 = icmp ult ptr %scevgep169, %scevgep171
  %bound1173 = icmp ult ptr %i.ec, %scevgep170
  %found.conflict174 = and i1 %bound0172, %bound1173
  %i.ed = or i1 %found.conflict174, %stride.check175
  br i1 %i.ed, label %scalar.ph176.preheader, label %vector.body180

vector.body180:                                   ; preds = %vector.memcheck168, %vector.body180
  %index181 = phi i64 [ %index.next186, %vector.body180 ], [ 0, %vector.memcheck168 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %index181 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load182 = load <4 x float>, ptr %i.ee, align 4, !tbaa !35, !alias.scope !293, !llvm.access.group !254
  %wide.load183 = load <4 x float>, ptr %i.ef, align 4, !tbaa !35, !alias.scope !293, !llvm.access.group !254
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index181 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load184 = load <4 x float>, ptr %i.eg, align 4, !tbaa !35, !alias.scope !294, !noalias !293, !llvm.access.group !254
  %wide.load185 = load <4 x float>, ptr %i.eh, align 4, !tbaa !35, !alias.scope !294, !noalias !293, !llvm.access.group !254
  %i.ei = fmul <4 x float> %wide.load182, %wide.load184
  %i.ej = fmul <4 x float> %wide.load183, %wide.load185
  store <4 x float> %i.ei, ptr %i.eg, align 4, !tbaa !35, !alias.scope !294, !noalias !293, !llvm.access.group !254
  store <4 x float> %i.ej, ptr %i.eh, align 4, !tbaa !35, !alias.scope !294, !noalias !293, !llvm.access.group !254
  %index.next186 = add nuw i64 %index181, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next186, %n.vec179
  br i1 %i.ek, label %middle.block187, label %vector.body180, !llvm.loop !269

middle.block187:                                  ; preds = %vector.body180
  br i1 %cmp.n188, label %._crit_edge83, label %scalar.ph176.preheader
end_hunk_0
