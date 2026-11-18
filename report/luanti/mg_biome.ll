Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mg_biome?download=true
inline.NumInlined: 835
inline.NumDeleted: 329
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE:bb.a
  %.not = icmp eq ptr %.054.lcssa, null
  %i.r = fcmp nsz ugt float %.050.lcssa, %.051.lcssa
  %or.cond = select i1 %.not, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.p, label %bb.o

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %i.s = phi ptr [ %i.b, %.lr.ph ], [ %i.bm, %bb.n ] ; 2 uses
  %.04974 = phi i64 [ 1, %.lr.ph ], [ %i.bl, %bb.n ] ; 2 uses
  %.05073 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.2, %bb.n ] ; 11 uses
  %.05172 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.253, %bb.n ] ; 11 uses
  %.05471 = phi ptr [ null, %.lr.ph ], [ %.256, %bb.n ] ; 10 uses
  %.05770 = phi ptr [ null, %.lr.ph ], [ %.259, %bb.n ] ; 10 uses
  %i.t = trunc i64 %.04974 to i32
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(44) %i.s, i32 noundef %i.t) ; 13 uses
  %.not68 = icmp eq ptr %i.x, null
  br i1 %.not68, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 190
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !101
  %i.ab = icmp sgt i16 %i.aa, %.sroa.3.0.extract.trunc
  br i1 %i.ab, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 196
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 198
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !104 ; 2 uses
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 212
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !66
  %i.ai = sext i16 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, %i.af
  %i.ak = icmp slt i32 %i.aj, %i.k
  br i1 %i.ak, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i16, ptr %i.y, align 2, !tbaa !105
  %i.am = icmp sgt i16 %i.al, %.sroa.0.0.extract.trunc
  br i1 %i.am, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i16, ptr %i.ac, align 4, !tbaa !106
  %i.ao = icmp slt i16 %i.an, %.sroa.0.0.extract.trunc
  br i1 %i.ao, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 194
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !107
  %i.ar = sext i16 %i.aq to i32
  %i.as = icmp slt i32 %i.m, %i.ar
  br i1 %i.as, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.au = load i16, ptr %i.at, align 4, !tbaa !108
  %i.av = sext i16 %i.au to i32
  %i.aw = icmp sgt i32 %i.m, %i.av
  br i1 %i.aw, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 204
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !109
  %i.az = fsub nsz float %1, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !110
  %i.bc = fsub nsz float %2, %i.bb                ; 2 uses
  %i.bd = fmul nsz float %i.bc, %i.bc
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bd) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !67 ; 2 uses
  %i.bh = fcmp nsz ogt float %i.bg, 0.000000e+00
  %i.bi = fdiv nsz float %i.be, %i.bg
  %.0 = select nsz i1 %i.bh, float %i.bi, float %i.be ; 4 uses
  %.not69 = icmp slt i16 %i.ae, %.sroa.3.0.extract.trunc
  br i1 %.not69, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = fcmp nsz olt float %.0, %.05172
  br i1 %i.bj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bk = fcmp nsz olt float %.0, %.05073
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.m, %bb.l, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.259 = phi ptr [ %.05770, %bb.b ], [ %.05770, %bb.h ], [ %.05770, %bb.g ], [ %.05770, %bb.f ], [ %.05770, %bb.e ], [ %.05770, %bb.d ], [ %.05770, %bb.c ], [ %i.x, %bb.k ], [ %.05770, %bb.j ], [ %.05770, %bb.m ], [ %.05770, %bb.l ] ; 2 uses
  %.256 = phi ptr [ %.05471, %bb.b ], [ %.05471, %bb.h ], [ %.05471, %bb.g ], [ %.05471, %bb.f ], [ %.05471, %bb.e ], [ %.05471, %bb.d ], [ %.05471, %bb.c ], [ %.05471, %bb.k ], [ %.05471, %bb.j ], [ %i.x, %bb.m ], [ %.05471, %bb.l ] ; 2 uses
  %.253 = phi nsz float [ %.05172, %bb.b ], [ %.05172, %bb.h ], [ %.05172, %bb.g ], [ %.05172, %bb.f ], [ %.05172, %bb.e ], [ %.05172, %bb.d ], [ %.05172, %bb.c ], [ %.0, %bb.k ], [ %.05172, %bb.j ], [ %.05172, %bb.m ], [ %.05172, %bb.l ] ; 2 uses
  %.2 = phi nsz float [ %.05073, %bb.b ], [ %.05073, %bb.h ], [ %.05073, %bb.g ], [ %.05073, %bb.f ], [ %.05073, %bb.e ], [ %.05073, %bb.d ], [ %.05073, %bb.c ], [ %.05073, %bb.k ], [ %.05073, %bb.j ], [ %.0, %bb.m ], [ %.05073, %bb.l ] ; 2 uses
  %i.bl = add nuw i64 %.04974, 1                  ; 2 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !78  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !72
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %i.bv = icmp ult i64 %i.bl, %i.bu
  br i1 %i.bv, label %bb.b, label %._crit_edge, !llvm.loop !2

bb.o:                                             ; preds = %._crit_edge
  %i.bw = sext i16 %.sroa.3.0.extract.trunc to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 212
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !66
  %i.bz = sext i16 %i.by to i32
  %i.ca = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 198
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !104
  %i.cd = sext i16 %i.cc to i32
  %i.ce = sub nsw i32 %i.bw, %i.cd
  %.not66 = icmp slt i32 %i.ca, %i.ce
  br i1 %.not66, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %.not67 = icmp eq ptr %.057.lcssa, null
  br i1 %.not67, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(44) %i.cf, i32 noundef 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.060 = phi ptr [ %.054.lcssa, %bb.o ], [ %i.cj, %bb.q ], [ %.057.lcssa, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret ptr %.060
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16BiomeGenOriginal14calcBiomeNoiseEN4core8vector3dIsEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) initializes((24, 30)) %0, i48 %1) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i16  ; 2 uses
  %.sroa.6.0.extract.shift = lshr i48 %1, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16
  %.sroa.69.0.extract.shift = lshr i48 %1, 32
  %.sroa.69.0.extract.trunc = trunc nuw i48 %.sroa.69.0.extract.shift to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.0.0.extract.trunc, ptr %i.a, align 8, !tbaa !39
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !39
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %.sroa.69.0.extract.trunc, ptr %.sroa.69.0..sroa_idx, align 4, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = sitofp nsz i16 %.sroa.0.0.extract.trunc to float ; 4 uses
  %i.e = sitofp nsz i16 %.sroa.69.0.extract.trunc to float ; 4 uses
  %i.f = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.c, float noundef %i.d, float noundef %i.e, ptr noundef null) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.h, float noundef %i.d, float noundef %i.e, ptr noundef null) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.k, float noundef %i.d, float noundef %i.e, ptr noundef null) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.o = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.n, float noundef %i.d, float noundef %i.e, ptr noundef null) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.q = load i16, ptr %i.p, align 2, !tbaa !90
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.t = load i16, ptr %i.s, align 2, !tbaa !91
  %i.u = sext i16 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r                   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99   ; 7 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 8 uses
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99 ; 7 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !99 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.v, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aj = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %2 = getelementptr i8, ptr %i.ac, i64 %i.aj     ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj  ; 3 uses
  %i.al = getelementptr i8, ptr %i.z, i64 %i.aj   ; 2 uses
  %3 = getelementptr i8, ptr %i.af, i64 %i.aj     ; 2 uses
  %bound0.a = icmp ult ptr %i.ac, %i.ak
  %bound1 = icmp ult ptr %i.ai, %2
  %found.conflict = and i1 %bound0.a, %bound1
  %bound033 = icmp ult ptr %i.ac, %i.al
  %bound134 = icmp ult ptr %i.z, %2
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %bound036 = icmp ult ptr %i.ac, %3
  %bound137 = icmp ult ptr %i.af, %2
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  %bound040 = icmp ult ptr %i.ai, %i.al
  %bound141 = icmp ult ptr %i.z, %i.ak
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  %bound044 = icmp ult ptr %i.ai, %3
  %bound145 = icmp ult ptr %i.af, %i.ak
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  br i1 %conflict.rdx47, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index
  %wide.load = load <4 x float>, ptr %i.am, align 4, !tbaa !65, !alias.scope !150
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %wide.load48 = load <4 x float>, ptr %i.an, align 4, !tbaa !65, !alias.scope !151, !noalias !152
  %i.ao = fadd nsz <4 x float> %wide.load, %wide.load48
  store <4 x float> %i.ao, ptr %i.an, align 4, !tbaa !65, !alias.scope !151, !noalias !152
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index
  %wide.load49 = load <4 x float>, ptr %i.ap, align 4, !tbaa !65, !alias.scope !153
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %wide.load50 = load <4 x float>, ptr %i.aq, align 4, !tbaa !65, !alias.scope !154, !noalias !155
  %i.ar = fadd nsz <4 x float> %wide.load49, %wide.load50
  store <4 x float> %i.ar, ptr %i.aq, align 4, !tbaa !65, !alias.scope !154, !noalias !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.ph
  %i.au = load float, ptr %i.at, align 4, !tbaa !65
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.ph ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !65
  %i.ax = fadd nsz float %i.au, %i.aw
  store float %i.ax, ptr %i.av, align 4, !tbaa !65
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.ph
  %i.az = load float, ptr %i.ay, align 4, !tbaa !65
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.ph ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !65
  %i.bc = fadd nsz float %i.az, %i.bb
  store float %i.bc, ptr %i.ba, align 4, !tbaa !65
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bd = add nsw i64 %wide.trip.count, -1
  %i.be = icmp eq i64 %indvars.iv.ph, %i.bd
  br i1 %i.be, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !65
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !65
  %i.bj = fadd nsz float %i.bg, %i.bi
  store float %i.bj, ptr %i.bh, align 4, !tbaa !65
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !65
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !65
  %i.bo = fadd nsz float %i.bl, %i.bn
  store float %i.bo, ptr %i.bm, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !65
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !65
  %i.bt = fadd nsz float %i.bq, %i.bs
  store float %i.bt, ptr %i.br, align 4, !tbaa !65
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !65
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !65
  %i.by = fadd nsz float %i.bv, %i.bx
  store float %i.by, ptr %i.bw, align 4, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !149
}

declare noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN16BiomeGenOriginal9getBiomesEPsN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1, i48 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.PcgRandom, align 8           ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !91   ; 2 uses
  %i.d = icmp sgt i16 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = lshr i48 %2, 32
  %i.i = trunc nuw i48 %i.h to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i16, ptr %i.a, align 2, !tbaa !90   ; 2 uses
  %i.l = icmp sgt i16 %i.k, 0
  br i1 %i.l, label %.preheader, label %._crit_edge22

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.m = phi i16 [ %i.t, %._crit_edge ], [ %i.c, %.preheader.lr.ph ]
  %i.n = phi i16 [ %i.u, %._crit_edge ], [ %i.k, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.o = icmp sgt i16 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = trunc nuw nsw i64 %indvars.iv25 to i16
  %i.q = add i16 %i.p, %i.i                       ; 2 uses
  br label %bb.b

._crit_edge22:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !100
  ret ptr %i.s

._crit_edge.loopexit:                             ; preds = %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit
  %.pre = load i16, ptr %i.b, align 2, !tbaa !91
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.t = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.m, %.preheader ] ; 2 uses
  %i.u = phi i16 [ %i.ea, %._crit_edge.loopexit ], [ %i.n, %.preheader ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %i.v = sext i16 %i.t to i64
  %i.w = icmp slt i64 %indvars.iv.next26, %i.v
  br i1 %i.w, label %.preheader, label %._crit_edge22, !llvm.loop !158

bb.b:                                             ; preds = %.lr.ph, %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit ] ; 3 uses
  %i.x = phi i16 [ %i.n, %.lr.ph ], [ %i.ea, %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit ]
  %i.y = sext i16 %i.x to i64
  %i.z = mul nuw nsw i64 %indvars.iv25, %i.y
  %i.aa = add nsw i64 %i.z, %indvars.iv
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99
  %sext = shl i64 %i.aa, 32
  %i.ae = ashr exact i64 %sext, 32                ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !65 ; 2 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !99
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ae
  %i.al = load float, ptr %i.ak, align 4, !tbaa !65 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i16
  %i.an = add i16 %i.am, %.sroa.0.0.extract.trunc ; 2 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ae
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !39 ; 5 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !78  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !72
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ugt i64 %i.ax, 8
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.az = sext i16 %i.ap to i32
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.o, %bb.b
  %.057.lcssa.i = phi ptr [ null, %bb.b ], [ %.259.i, %bb.o ] ; 2 uses
  %.054.lcssa.i = phi ptr [ null, %bb.b ], [ %.256.i, %bb.o ] ; 4 uses
  %.051.lcssa.i = phi float [ f0x7F7FFFFF, %bb.b ], [ %.253.i, %bb.o ]
  %.050.lcssa.i = phi float [ f0x7F7FFFFF, %bb.b ], [ %.2.i, %bb.o ]
  %i.ba = sitofp i16 %i.ap to float
  %i.bb = fadd nsz float %i.ag, %i.al
  %i.bc = call nsz float @llvm.fmuladd.f32(float %i.bb, float f0x3F666666, float %i.ba)
  %i.bd = fptosi float %i.bc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.bd, i64 noundef -2720673578348880933)
  %.not.i = icmp eq ptr %.054.lcssa.i, null
  %i.be = fcmp nsz ugt float %.050.lcssa.i, %.051.lcssa.i
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.be
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.c:                                             ; preds = %bb.o, %.lr.ph.i
end_hunk_0
