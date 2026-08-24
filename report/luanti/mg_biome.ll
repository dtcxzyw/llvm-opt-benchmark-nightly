Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mg_biome?download=true
inline.NumInlined: 835
inline.NumDeleted: 329
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16BiomeGenOriginal14calcBiomeNoiseEN4core8vector3dIsEE:bb.a
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i16  ; 2 uses
  %.sroa.6.0.extract.shift = lshr i48 %1, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16
  %.sroa.69.0.extract.shift = lshr i48 %1, 32
  %.sroa.69.0.extract.trunc = trunc nuw i48 %.sroa.69.0.extract.shift to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.0.0.extract.trunc, ptr %i.a, align 8, !tbaa !34
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !34
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %.sroa.69.0.extract.trunc, ptr %.sroa.69.0..sroa_idx, align 4, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.d = sitofp nsz i16 %.sroa.0.0.extract.trunc to float ; 4 uses
  %i.e = sitofp nsz i16 %.sroa.69.0.extract.trunc to float ; 4 uses
  %i.f = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.c, float noundef %i.d, float noundef %i.e, ptr noundef null) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.h, float noundef %i.d, float noundef %i.e, ptr noundef null) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.l = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.k, float noundef %i.d, float noundef %i.e, ptr noundef null) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.o = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.n, float noundef %i.d, float noundef %i.e, ptr noundef null) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.q = load i16, ptr %i.p, align 2, !tbaa !104
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.t = load i16, ptr %i.s, align 2, !tbaa !105
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r                   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !110  ; 7 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !110 ; 8 uses
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !110 ; 7 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !110 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.v, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aj = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.aj ; 3 uses
  %scevgep15 = getelementptr i8, ptr %i.ai, i64 %i.aj ; 3 uses
  %scevgep16 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %scevgep17 = getelementptr i8, ptr %i.af, i64 %i.aj ; 2 uses
  %bound0 = icmp ult ptr %i.ac, %scevgep15
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %i.ac, %scevgep16
  %bound119 = icmp ult ptr %i.z, %scevgep
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  %bound021 = icmp ult ptr %i.ac, %scevgep17
  %bound122 = icmp ult ptr %i.af, %scevgep
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx24 = or i1 %conflict.rdx, %found.conflict23
  %bound025 = icmp ult ptr %i.ai, %scevgep16
  %bound126 = icmp ult ptr %i.z, %scevgep15
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx24, %found.conflict27
  %bound029 = icmp ult ptr %i.ai, %scevgep17
  %bound130 = icmp ult ptr %i.af, %scevgep15
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx32 = or i1 %conflict.rdx28, %found.conflict31
  br i1 %conflict.rdx32, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index
  %wide.load = load <4 x float>, ptr %i.ak, align 4, !tbaa !61, !alias.scope !134
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %wide.load33 = load <4 x float>, ptr %i.al, align 4, !tbaa !61, !alias.scope !137, !noalias !139
  %i.am = fadd nsz <4 x float> %wide.load, %wide.load33
  store <4 x float> %i.am, ptr %i.al, align 4, !tbaa !61, !alias.scope !137, !noalias !139
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index
  %wide.load34 = load <4 x float>, ptr %i.an, align 4, !tbaa !61, !alias.scope !142
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %wide.load35 = load <4 x float>, ptr %i.ao, align 4, !tbaa !61, !alias.scope !143, !noalias !144
  %i.ap = fadd nsz <4 x float> %wide.load34, %wide.load35
  store <4 x float> %i.ap, ptr %i.ao, align 4, !tbaa !61, !alias.scope !143, !noalias !144
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.ph
  %i.as = load float, ptr %i.ar, align 4, !tbaa !61
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.ph ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !61
  %i.av = fadd nsz float %i.as, %i.au
  store float %i.av, ptr %i.at, align 4, !tbaa !61
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.ph
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !61
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.ph ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !61
  %i.ba = fadd nsz float %i.ax, %i.az
  store float %i.ba, ptr %i.ay, align 4, !tbaa !61
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bb = add nsw i64 %wide.trip.count, -1
  %i.bc = icmp eq i64 %indvars.iv.ph, %i.bb
  br i1 %i.bc, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.be = load float, ptr %i.bd, align 4, !tbaa !61
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !61
  %i.bh = fadd nsz float %i.be, %i.bg
  store float %i.bh, ptr %i.bf, align 4, !tbaa !61
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !61
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !61
  %i.bm = fadd nsz float %i.bj, %i.bl
  store float %i.bm, ptr %i.bk, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !61
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !61
  %i.br = fadd nsz float %i.bo, %i.bq
  store float %i.br, ptr %i.bp, align 4, !tbaa !61
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !61
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !61
  %i.bw = fadd nsz float %i.bt, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !61
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !148
}

declare noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN16BiomeGenOriginal9getBiomesEPsN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1, i48 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.PcgRandom, align 8           ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !105  ; 2 uses
  %i.d = icmp sgt i16 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = lshr i48 %2, 32
  %i.i = trunc nuw i48 %i.h to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i16, ptr %i.a, align 2, !tbaa !104  ; 2 uses
  %i.l = icmp sgt i16 %i.k, 0
  br i1 %i.l, label %.preheader, label %._crit_edge22

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.m = phi i16 [ %i.s, %._crit_edge ], [ %i.c, %.preheader.lr.ph ]
  %i.n = phi i16 [ %i.t, %._crit_edge ], [ %i.k, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.o = icmp sgt i16 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %indvars27 = trunc nuw nsw i64 %indvars.iv25 to i16
  %i.p = add i16 %indvars27, %i.i                 ; 2 uses
  br label %bb.b

._crit_edge22:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116
  ret ptr %i.r

._crit_edge.loopexit:                             ; preds = %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit
  %.pre = load i16, ptr %i.b, align 2, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.s = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.m, %.preheader ] ; 2 uses
  %i.t = phi i16 [ %i.dw, %._crit_edge.loopexit ], [ %i.n, %.preheader ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %i.u = sext i16 %i.s to i64
  %i.v = icmp slt i64 %indvars.iv.next26, %i.u
  br i1 %i.v, label %.preheader, label %._crit_edge22, !llvm.loop !149

bb.b:                                             ; preds = %.lr.ph, %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit ] ; 3 uses
  %i.w = phi i16 [ %i.n, %.lr.ph ], [ %i.dw, %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit ]
  %4 = zext nneg i16 %i.w to i64
  %i.x = mul nuw nsw i64 %indvars.iv25, %4
  %i.y = add nuw nsw i64 %i.x, %indvars.iv        ; 4 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !61 ; 2 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !110
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.y
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !61 ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv to i16
  %i.aj = add i16 %5, %.sroa.0.0.extract.trunc    ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !34 ; 5 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !90  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !74
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.at, 8
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.av = sext i16 %i.al to i32
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.o, %bb.b
  %.057.lcssa.i = phi ptr [ null, %bb.b ], [ %.259.i, %bb.o ] ; 2 uses
  %.054.lcssa.i = phi ptr [ null, %bb.b ], [ %.256.i, %bb.o ] ; 4 uses
  %.051.lcssa.i = phi float [ f0x7F7FFFFF, %bb.b ], [ %.253.i, %bb.o ]
  %.050.lcssa.i = phi float [ f0x7F7FFFFF, %bb.b ], [ %.2.i, %bb.o ]
  %i.aw = sitofp i16 %i.al to float
  %i.ax = fadd nsz float %i.ad, %i.ai
  %i.ay = call nsz float @llvm.fmuladd.f32(float %i.ax, float f0x3F666666, float %i.aw)
  %i.az = fptosi float %i.ay to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.az, i64 noundef -2720673578348880933)
  %.not.i = icmp eq ptr %.054.lcssa.i, null
  %i.ba = fcmp nsz ugt float %.050.lcssa.i, %.051.lcssa.i
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.c:                                             ; preds = %bb.o, %.lr.ph.i
  %i.bb = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ct, %bb.o ] ; 2 uses
  %.04974.i = phi i64 [ 1, %.lr.ph.i ], [ %i.cs, %bb.o ] ; 2 uses
  %.05073.i = phi float [ f0x7F7FFFFF, %.lr.ph.i ], [ %.2.i, %bb.o ] ; 11 uses
  %.05172.i = phi float [ f0x7F7FFFFF, %.lr.ph.i ], [ %.253.i, %bb.o ] ; 11 uses
  %.05471.i = phi ptr [ null, %.lr.ph.i ], [ %.256.i, %bb.o ] ; 10 uses
  %.05770.i = phi ptr [ null, %.lr.ph.i ], [ %.259.i, %bb.o ] ; 10 uses
  %i.bc = trunc i64 %.04974.i to i32
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(44) %i.bb, i32 noundef %i.bc), !inline_history !151 ; 13 uses
  %.not68.i = icmp eq ptr %i.bg, null
  br i1 %.not68.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 190
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !117
  %i.bk = icmp sgt i16 %i.bj, %i.al
  br i1 %i.bk, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 196
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 198
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !126 ; 2 uses
  %i.bo = sext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 212
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !62
  %i.br = sext i16 %i.bq to i32
  %i.bs = add nsw i32 %i.br, %i.bo
  %i.bt = icmp slt i32 %i.bs, %i.av
  br i1 %i.bt, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = load i16, ptr %i.bh, align 2, !tbaa !127
  %i.bv = icmp sgt i16 %i.bu, %i.aj
  br i1 %i.bv, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load i16, ptr %i.bl, align 4, !tbaa !128
  %i.bx = icmp slt i16 %i.bw, %i.aj
  br i1 %i.bx, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 194
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !129
  %i.ca = icmp slt i16 %i.p, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.cc = load i16, ptr %i.cb, align 4, !tbaa !130
  %i.cd = icmp sgt i16 %i.p, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 204
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !131
  %i.cg = fsub nsz float %i.ad, %i.cf             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !132
  %i.cj = fsub nsz float %i.ai, %i.ci             ; 2 uses
  %i.ck = fmul nsz float %i.cj, %i.cj
  %i.cl = call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.ck) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !63 ; 2 uses
  %i.co = fcmp nsz ogt float %i.cn, 0.000000e+00
  %i.cp = fdiv nsz float %i.cl, %i.cn
  %.0.i = select nsz i1 %i.co, float %i.cp, float %i.cl ; 4 uses
  %.not69.i = icmp slt i16 %i.bn, %i.al
  br i1 %.not69.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = fcmp nsz olt float %.0.i, %.05172.i
  br i1 %i.cq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.cr = fcmp nsz olt float %.0.i, %.05073.i
  br i1 %i.cr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.259.i = phi ptr [ %.05770.i, %bb.c ], [ %.05770.i, %bb.i ], [ %.05770.i, %bb.h ], [ %.05770.i, %bb.g ], [ %.05770.i, %bb.f ], [ %.05770.i, %bb.e ], [ %.05770.i, %bb.d ], [ %i.bg, %bb.l ], [ %.05770.i, %bb.k ], [ %.05770.i, %bb.n ], [ %.05770.i, %bb.m ] ; 2 uses
  %.256.i = phi ptr [ %.05471.i, %bb.c ], [ %.05471.i, %bb.i ], [ %.05471.i, %bb.h ], [ %.05471.i, %bb.g ], [ %.05471.i, %bb.f ], [ %.05471.i, %bb.e ], [ %.05471.i, %bb.d ], [ %.05471.i, %bb.l ], [ %.05471.i, %bb.k ], [ %i.bg, %bb.n ], [ %.05471.i, %bb.m ] ; 2 uses
  %.253.i = phi nsz float [ %.05172.i, %bb.c ], [ %.05172.i, %bb.i ], [ %.05172.i, %bb.h ], [ %.05172.i, %bb.g ], [ %.05172.i, %bb.f ], [ %.05172.i, %bb.e ], [ %.05172.i, %bb.d ], [ %.0.i, %bb.l ], [ %.05172.i, %bb.k ], [ %.05172.i, %bb.n ], [ %.05172.i, %bb.m ] ; 2 uses
  %.2.i = phi nsz float [ %.05073.i, %bb.c ], [ %.05073.i, %bb.i ], [ %.05073.i, %bb.h ], [ %.05073.i, %bb.g ], [ %.05073.i, %bb.f ], [ %.05073.i, %bb.e ], [ %.05073.i, %bb.d ], [ %.05073.i, %bb.l ], [ %.05073.i, %bb.k ], [ %.0.i, %bb.n ], [ %.05073.i, %bb.m ] ; 2 uses
  %i.cs = add nuw i64 %.04974.i, 1                ; 2 uses
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !90  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !73
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !74
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = icmp ult i64 %i.cs, %i.db
  br i1 %i.dc, label %bb.c, label %._crit_edge.i, !llvm.loop !133

bb.p:                                             ; preds = %._crit_edge.i
  %i.dd = sext i16 %i.al to i32
  %i.de = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 212
  %i.df = load i16, ptr %i.de, align 4, !tbaa !62
  %i.dg = sext i16 %i.df to i32
  %i.dh = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 198
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !126
  %i.dk = sext i16 %i.dj to i32
  %i.dl = sub nsw i32 %i.dd, %i.dk
  %.not66.i = icmp slt i32 %i.dh, %i.dl
  br i1 %.not66.i, label %bb.q, label %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %.not67.i = icmp eq ptr %.057.lcssa.i, null
  br i1 %.not67.i, label %bb.r, label %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr %i.g, align 8, !tbaa !90  ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(44) %i.dm, i32 noundef 0), !inline_history !151
  br label %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit

_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit: ; preds = %bb.p, %bb.q, %bb.r
  %.060.i = phi ptr [ %.054.lcssa.i, %bb.p ], [ %i.dq, %bb.r ], [ %.057.lcssa.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dr = getelementptr inbounds nuw i8, ptr %.060.i, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !152
  %i.dt = trunc i32 %i.ds to i16
  %i.du = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.y
  store i16 %i.dt, ptr %i.dv, align 2, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = load i16, ptr %i.a, align 2, !tbaa !104 ; 3 uses
  %i.dx = sext i16 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !153
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK16BiomeGenOriginal15getBiomeAtPointEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i48 %1) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.01.0.extract.trunc = zext i48 %1 to i64
  %.sroa.32.0.extract.shift = lshr i48 %1, 32
  %.sroa.32.0.extract.trunc = zext nneg i48 %.sroa.32.0.extract.shift to i64
  %sext3 = shl nuw i64 %.sroa.32.0.extract.trunc, 48
  %i.a = ashr exact i64 %sext3, 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i16, ptr %i.c, align 4, !tbaa !154
  %i.e = sext i16 %i.d to i64
  %i.f = sub nsw i64 %i.a, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.h = load i16, ptr %i.g, align 2, !tbaa !104
  %i.i = sext i16 %i.h to i64
  %i.j = mul nsw i64 %i.f, %i.i
  %sext4 = shl i64 %.sroa.01.0.extract.trunc, 48
  %i.k = ashr exact i64 %sext4, 48
  %i.l = load i16, ptr %i.b, align 8, !tbaa !155
  %i.m = sext i16 %i.l to i64
  %i.n = sub nsw i64 %i.k, %i.m
  %i.o = add nsw i64 %i.n, %i.j
  %sext = shl i64 %i.o, 32
  %i.p = ashr exact i64 %sext, 32                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.p
  %i.v = load float, ptr %i.u, align 4, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.p
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !61
  %i.ac = tail call noundef ptr @_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE(ptr noundef nonnull readonly align 8 dereferenceable(120) %0, float noundef %i.v, float noundef %i.ab, i48 %1)
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK16BiomeGenOriginal15getBiomeAtIndexEmN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1, i48 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load float, ptr %i.e, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1
  %i.l = load float, ptr %i.k, align 4, !tbaa !61
  %i.m = tail call noundef ptr @_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(120) %0, float noundef %i.f, float noundef %i.l, i48 %2)
  ret ptr %i.m
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #1

declare noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK5Biome5cloneEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #21 ; 21 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.a, i8 0, i64 224, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.d)
          to label %bb.c unwind label %bb.b, !inline_history !31

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 16, !tbaa !9
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !30
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #22, !inline_history !33
  br label %.body

bb.c:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV5Biome, i64 16), ptr %i.a, align 16, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV5Biome, i64 64), ptr %i.d, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 130 ; 2 uses
  store <8 x i16> splat (i16 127), ptr %i.j, align 2, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store <4 x i16> <i16 127, i16 127, i16 127, i16 0>, ptr %i.l, align 16, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  store i16 -31007, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 186
  store i16 0, ptr %i.n, align 2, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 188 ; 2 uses
  store i16 0, ptr %i.o, align 4, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 190 ; 2 uses
  store i48 -133171788019999, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 196 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.q, ptr noundef nonnull align 2 dereferenceable(6) @_ZL27MAX_MAP_GENERATION_LIMIT_V3, i64 6, i1 false), !tbaa.struct !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 204 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.r, align 4, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 212 ; 2 uses
  store i16 0, ptr %i.s, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !63
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.u, ptr noundef nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.w = load <8 x i16>, ptr %i.v, align 2, !tbaa !34
  store <8 x i16> %i.w, ptr %i.j, align 2, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.x) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load <4 x i16>, ptr %i.z, align 8, !tbaa !34
  store <4 x i16> %i.aa, ptr %i.l, align 16, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = load <2 x i16>, ptr %i.ab, align 8, !tbaa !34
  store <2 x i16> %i.ac, ptr %i.m, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !59
  store i16 %i.ae, ptr %i.o, align 4, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.p, ptr noundef nonnull align 2 dereferenceable(6) %i.af, i64 6, i1 false), !tbaa.struct !60
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.q, ptr noundef nonnull align 4 dereferenceable(6) %i.ag, i64 6, i1 false), !tbaa.struct !60
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !61
  store <2 x float> %i.ai, ptr %i.r, align 4, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !62
  store i16 %i.ak, ptr %i.s, align 4, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load float, ptr %i.al, align 8, !tbaa !63
  store float %i.am, ptr %i.t, align 8, !tbaa !63
  ret ptr %i.a

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 224) #22
  resume { ptr, i32 } %i.e
}

declare void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.c = load ptr, ptr %1, align 8, !tbaa !157    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %i.i = load ptr, ptr %0, align 8, !tbaa !157    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, !prof !159

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %bb.c
end_hunk_0
