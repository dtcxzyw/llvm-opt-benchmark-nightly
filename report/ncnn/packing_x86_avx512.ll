Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/packing_x86_avx512?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7:bb.a
  store <16 x float> %i.fo, ptr %.0143226, align 1, !tbaa !56
  store <16 x float> %i.fp, ptr %.0141227, align 1, !tbaa !56
  store <16 x float> %i.fq, ptr %.0139228, align 1, !tbaa !56
  store <16 x float> %i.fr, ptr %.0137229, align 1, !tbaa !56
  store <16 x float> %i.fs, ptr %.0135230, align 1, !tbaa !56
  store <16 x float> %i.ft, ptr %.0133231, align 1, !tbaa !56
  %i.fu = getelementptr inbounds nuw i8, ptr %.0165215, i64 1024 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0163216, i64 64 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0161217, i64 64 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0159218, i64 64 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0157219, i64 64 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0155220, i64 64 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0153221, i64 64 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0151222, i64 64 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0149223, i64 64 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0147224, i64 64 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0145225, i64 64 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0143226, i64 64 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0141227, i64 64 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0139228, i64 64 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0137229, i64 64 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0135230, i64 64 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0133231, i64 64 ; 2 uses
  %i.gl = add nuw nsw i32 %.0232, 16              ; 3 uses
  %i.gm = or disjoint i32 %i.gl, 15
  %i.gn = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.go = icmp slt i32 %i.gm, %i.gn
  br i1 %i.go, label %.lr.ph, label %.preheader, !llvm.loop !208

.lr.ph269:                                        ; preds = %.preheader, %.lr.ph269
  %.1268 = phi i32 [ %i.il, %.lr.ph269 ], [ %.0.lcssa, %.preheader ]
  %.1134267 = phi ptr [ %i.ij, %.lr.ph269 ], [ %.0133.lcssa, %.preheader ] ; 2 uses
  %.1136266 = phi ptr [ %i.ig, %.lr.ph269 ], [ %.0135.lcssa, %.preheader ] ; 2 uses
  %.1138265 = phi ptr [ %i.id, %.lr.ph269 ], [ %.0137.lcssa, %.preheader ] ; 2 uses
  %.1140264 = phi ptr [ %i.ia, %.lr.ph269 ], [ %.0139.lcssa, %.preheader ] ; 2 uses
  %.1142263 = phi ptr [ %i.hx, %.lr.ph269 ], [ %.0141.lcssa, %.preheader ] ; 2 uses
  %.1144262 = phi ptr [ %i.hu, %.lr.ph269 ], [ %.0143.lcssa, %.preheader ] ; 2 uses
  %.1146261 = phi ptr [ %i.hr, %.lr.ph269 ], [ %.0145.lcssa, %.preheader ] ; 2 uses
  %.1148260 = phi ptr [ %i.ho, %.lr.ph269 ], [ %.0147.lcssa, %.preheader ] ; 2 uses
  %.1150259 = phi ptr [ %i.hl, %.lr.ph269 ], [ %.0149.lcssa, %.preheader ] ; 2 uses
  %.1152258 = phi ptr [ %i.hi, %.lr.ph269 ], [ %.0151.lcssa, %.preheader ] ; 2 uses
  %.1154257 = phi ptr [ %i.hf, %.lr.ph269 ], [ %.0153.lcssa, %.preheader ] ; 2 uses
  %.1156256 = phi ptr [ %i.hc, %.lr.ph269 ], [ %.0155.lcssa, %.preheader ] ; 2 uses
  %.1158255 = phi ptr [ %i.gz, %.lr.ph269 ], [ %.0157.lcssa, %.preheader ] ; 2 uses
  %.1160254 = phi ptr [ %i.gw, %.lr.ph269 ], [ %.0159.lcssa, %.preheader ] ; 2 uses
  %.1162253 = phi ptr [ %i.gt, %.lr.ph269 ], [ %.0161.lcssa, %.preheader ] ; 2 uses
  %.1164252 = phi ptr [ %i.gq, %.lr.ph269 ], [ %.0163.lcssa, %.preheader ] ; 2 uses
  %.1166251 = phi ptr [ %i.ik, %.lr.ph269 ], [ %.0165.lcssa, %.preheader ] ; 17 uses
  %i.gp = load float, ptr %.1166251, align 4, !tbaa !51
  %i.gq = getelementptr inbounds nuw i8, ptr %.1164252, i64 4
  store float %i.gp, ptr %.1164252, align 4, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %.1166251, i64 4
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !51
  %i.gt = getelementptr inbounds nuw i8, ptr %.1162253, i64 4
  store float %i.gs, ptr %.1162253, align 4, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %.1166251, i64 8
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !51
  %i.gw = getelementptr inbounds nuw i8, ptr %.1160254, i64 4
  store float %i.gv, ptr %.1160254, align 4, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %.1166251, i64 12
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %.1158255, i64 4
  store float %i.gy, ptr %.1158255, align 4, !tbaa !51
  %i.ha = getelementptr inbounds nuw i8, ptr %.1166251, i64 16
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %.1156256, i64 4
  store float %i.hb, ptr %.1156256, align 4, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %.1166251, i64 20
  %i.he = load float, ptr %i.hd, align 4, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %.1154257, i64 4
  store float %i.he, ptr %.1154257, align 4, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %.1166251, i64 24
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %.1152258, i64 4
  store float %i.hh, ptr %.1152258, align 4, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %.1166251, i64 28
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %.1150259, i64 4
  store float %i.hk, ptr %.1150259, align 4, !tbaa !51
  %i.hm = getelementptr inbounds nuw i8, ptr %.1166251, i64 32
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %.1148260, i64 4
  store float %i.hn, ptr %.1148260, align 4, !tbaa !51
  %i.hp = getelementptr inbounds nuw i8, ptr %.1166251, i64 36
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !51
  %i.hr = getelementptr inbounds nuw i8, ptr %.1146261, i64 4
  store float %i.hq, ptr %.1146261, align 4, !tbaa !51
  %i.hs = getelementptr inbounds nuw i8, ptr %.1166251, i64 40
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %.1144262, i64 4
  store float %i.ht, ptr %.1144262, align 4, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %.1166251, i64 44
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %.1142263, i64 4
  store float %i.hw, ptr %.1142263, align 4, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.1166251, i64 48
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !51
  %i.ia = getelementptr inbounds nuw i8, ptr %.1140264, i64 4
  store float %i.hz, ptr %.1140264, align 4, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %.1166251, i64 52
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %.1138265, i64 4
  store float %i.ic, ptr %.1138265, align 4, !tbaa !51
  %i.ie = getelementptr inbounds nuw i8, ptr %.1166251, i64 56
  %i.if = load float, ptr %i.ie, align 4, !tbaa !51
  %i.ig = getelementptr inbounds nuw i8, ptr %.1136266, i64 4
  store float %i.if, ptr %.1136266, align 4, !tbaa !51
  %i.ih = getelementptr inbounds nuw i8, ptr %.1166251, i64 60
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !51
  %i.ij = getelementptr inbounds nuw i8, ptr %.1134267, i64 4
  store float %i.ii, ptr %.1134267, align 4, !tbaa !51
  %i.ik = getelementptr inbounds nuw i8, ptr %.1166251, i64 64
  %i.il = add nuw nsw i32 %.1268, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.il, %i.cb
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph269, !llvm.loop !209

._crit_edge:                                      ; preds = %.lr.ph269, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond295.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond295.not, label %._crit_edge274, label %bb.c

._crit_edge274:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge274, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not74 = icmp sgt i32 %i.k, %i.j
  br i1 %.not74, label %._crit_edge78.split, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16   ; 10 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = sext i32 %i.s to i64                     ; 4 uses
  %i.u = sext i32 %i.n to i64                     ; 10 uses
  %i.v = mul i64 %i.p, %i.u                       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.x, %i.t
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge78.split

.lr.ph.preheader:                                 ; preds = %.lr.ph77
  %i.aa = sext i32 %i.k to i64                    ; 5 uses
  %i.ab = add nsw i32 %i.j, 1
  %i.ac = mul i64 %i.x, %i.t
  %i.ad = mul i64 %i.ac, %i.aa
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ad ; 4 uses
  %i.ae = sub i32 %i.j, %i.k
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = add nsw i64 %i.aa, %i.af
  %i.ah = mul i64 %i.x, %i.ag
  %i.ai = mul i64 %i.ah, %i.t
  %i.aj = add nsw i32 %i.y, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 6
  %i.am = getelementptr i8, ptr %i.q, i64 %i.ai
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %scevgep84 = getelementptr i8, ptr %i.an, i64 64 ; 4 uses
  %i.ao = mul i64 %i.x, %i.t                      ; 2 uses
  %i.ap = shl nsw i64 %i.aa, 2                    ; 7 uses
  %i.aq = or disjoint i64 %i.ap, 3
  %i.ar = mul i64 %i.p, %i.aq
  %i.as = mul i64 %i.ar, %i.u
  %scevgep85 = getelementptr i8, ptr %i.l, i64 %i.as
  %i.at = shl nuw nsw i64 %i.af, 2                ; 4 uses
  %i.au = add nsw i64 %i.ap, %i.at
  %i.av = or disjoint i64 %i.au, 3
  %i.aw = mul i64 %i.p, %i.av
  %i.ax = mul i64 %i.aw, %i.u
  %i.ay = shl nuw nsw i64 %i.ak, 4                ; 4 uses
  %i.az = getelementptr i8, ptr %i.l, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ay
  %scevgep86 = getelementptr i8, ptr %i.ba, i64 16
  %i.bb = mul i64 %i.p, %i.u
  %6 = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %7 = insertelement <2 x i64> %6, i64 %i.ao, i64 1
  %8 = shl <2 x i64> %7, <i64 2, i64 0>
  %i.bc = or disjoint i64 %i.ap, 2
  %i.bd = mul i64 %i.p, %i.bc
  %i.be = mul i64 %i.bd, %i.u
  %scevgep87 = getelementptr i8, ptr %i.l, i64 %i.be
  %i.bf = add nsw i64 %i.ap, %i.at
  %i.bg = or disjoint i64 %i.bf, 2
  %i.bh = mul i64 %i.p, %i.bg
  %i.bi = mul i64 %i.bh, %i.u
  %i.bj = getelementptr i8, ptr %i.l, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.ay
  %scevgep88 = getelementptr i8, ptr %i.bk, i64 16
  %i.bl = or disjoint i64 %i.ap, 1
  %i.bm = mul i64 %i.p, %i.bl
  %i.bn = mul i64 %i.bm, %i.u
  %scevgep89 = getelementptr i8, ptr %i.l, i64 %i.bn
  %i.bo = add nsw i64 %i.ap, %i.at
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = mul i64 %i.p, %i.bp
  %i.br = mul i64 %i.bq, %i.u
  %i.bs = getelementptr i8, ptr %i.l, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.ay
  %scevgep90 = getelementptr i8, ptr %i.bt, i64 16
  %i.bu = mul i64 %i.p, %i.u
  %i.bv = mul i64 %i.bu, %i.aa
  %i.bw = shl i64 %i.bv, 2
  %scevgep91 = getelementptr i8, ptr %i.l, i64 %i.bw
  %i.bx = add nsw i64 %i.ap, %i.at
  %i.by = mul i64 %i.p, %i.bx
  %i.bz = mul i64 %i.by, %i.u
  %i.ca = getelementptr i8, ptr %i.l, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.ay
  %scevgep92 = getelementptr i8, ptr %i.cb, i64 16
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x i64> poison, i64 %i.ao, i64 0
  %11 = shufflevector <4 x i64> %10, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cc = zext nneg i32 %i.y to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep86
  %bound1 = icmp ult ptr %scevgep85, %scevgep84
  %found.conflict = and i1 %bound0, %bound1
  %12 = or <4 x i64> %9, %11
  %bound094 = icmp ult ptr %scevgep, %scevgep88
  %bound195 = icmp ult ptr %scevgep87, %scevgep84
  %found.conflict96 = and i1 %bound094, %bound195
  %bound099 = icmp ult ptr %scevgep, %scevgep90
  %bound1100 = icmp ult ptr %scevgep89, %scevgep84
  %found.conflict101 = and i1 %bound099, %bound1100
  %bound0105 = icmp ult ptr %scevgep, %scevgep92
  %bound1106 = icmp ult ptr %scevgep91, %scevgep84
  %found.conflict107 = and i1 %bound0105, %bound1106
  %13 = icmp slt <4 x i64> %12, zeroinitializer
  %14 = bitcast <4 x i1> %13 to i4
  %15 = icmp ne i4 %14, 0
  %op.rdx = or i1 %15, %found.conflict
  %op.rdx151 = or i1 %found.conflict96, %found.conflict101
  %op.rdx152 = or i1 %op.rdx, %op.rdx151
  %op.rdx153 = or i1 %op.rdx152, %found.conflict107
  %n.vec = and i64 %i.cc, 2147483640              ; 5 uses
  %i.cd = trunc nuw nsw i64 %n.vec to i32
  %i.ce = shl nuw nsw i64 %n.vec, 6
  %i.cf = shl nuw nsw i64 %n.vec, 4               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cc
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.cg = shl nsw i64 %indvars.iv, 2              ; 4 uses
  %i.ch = mul i64 %i.v, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ch ; 4 uses
  %i.cj = or disjoint i64 %i.cg, 1
  %i.ck = mul i64 %i.v, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ck ; 4 uses
  %i.cm = or disjoint i64 %i.cg, 2
  %i.cn = mul i64 %i.v, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cn ; 4 uses
  %i.cp = or disjoint i64 %i.cg, 3
  %i.cq = mul i64 %i.v, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cq ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  br i1 %op.rdx153, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.ce
  %i.cu = getelementptr i8, ptr %i.cr, i64 %i.cf
  %i.cv = getelementptr i8, ptr %i.co, i64 %i.cf
  %i.cw = getelementptr i8, ptr %i.cl, i64 %i.cf
  %i.cx = getelementptr i8, ptr %i.ci, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.cs, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 64, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448> ; 16 uses
  %i.cy = shl i64 %index, 4                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.cr, i64 %i.cy
  %next.gep111 = getelementptr i8, ptr %i.co, i64 %i.cy
  %next.gep112 = getelementptr i8, ptr %i.cl, i64 %i.cy
  %next.gep113 = getelementptr i8, ptr %i.ci, i64 %i.cy
  %wide.vec = load <32 x float>, ptr %next.gep113, align 4, !tbaa !51, !alias.scope !218 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec114 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec115 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec116 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %vector.gep, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec114, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep117 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec115, <8 x ptr> align 4 %wide.gep117, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep118 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec116, <8 x ptr> align 4 %wide.gep118, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.vec119 = load <32 x float>, ptr %next.gep112, align 4, !tbaa !51, !alias.scope !221 ; 4 uses
  %strided.vec120 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec121 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec122 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec123 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep124 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 16
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec120, <8 x ptr> align 4 %wide.gep124, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep125 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec121, <8 x ptr> align 4 %wide.gep125, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep126 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 24
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec122, <8 x ptr> align 4 %wide.gep126, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep127 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 28
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec123, <8 x ptr> align 4 %wide.gep127, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.vec128 = load <32 x float>, ptr %next.gep111, align 4, !tbaa !51, !alias.scope !222 ; 4 uses
  %strided.vec129 = shufflevector <32 x float> %wide.vec128, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec130 = shufflevector <32 x float> %wide.vec128, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec131 = shufflevector <32 x float> %wide.vec128, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec132 = shufflevector <32 x float> %wide.vec128, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep133 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 32
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec129, <8 x ptr> align 4 %wide.gep133, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep134 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 36
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec130, <8 x ptr> align 4 %wide.gep134, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep135 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 40
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec131, <8 x ptr> align 4 %wide.gep135, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep136 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 44
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec132, <8 x ptr> align 4 %wide.gep136, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.vec137 = load <32 x float>, ptr %next.gep, align 4, !tbaa !51, !alias.scope !223 ; 4 uses
  %strided.vec138 = shufflevector <32 x float> %wide.vec137, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec139 = shufflevector <32 x float> %wide.vec137, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec140 = shufflevector <32 x float> %wide.vec137, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec141 = shufflevector <32 x float> %wide.vec137, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep142 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 48
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec138, <8 x ptr> align 4 %wide.gep142, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep143 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec139, <8 x ptr> align 4 %wide.gep143, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep144 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 56
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec140, <8 x ptr> align 4 %wide.gep144, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %wide.gep145 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 60
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec141, <8 x ptr> align 4 %wide.gep145, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !219, !noalias !220
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.073.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.cd, %middle.block ]
  %.06272.ph = phi ptr [ %i.cs, %vector.memcheck ], [ %i.cs, %.lr.ph ], [ %i.ct, %middle.block ]
  %.06371.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph ], [ %i.cu, %middle.block ]
  %.06470.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph ], [ %i.cv, %middle.block ]
  %.06569.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph ], [ %i.cw, %middle.block ]
  %.06668.ph = phi ptr [ %i.ci, %vector.memcheck ], [ %i.ci, %.lr.ph ], [ %i.cx, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond80.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond80.not, label %._crit_edge78.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.073 = phi i32 [ %i.ew, %scalar.ph ], [ %.073.ph, %scalar.ph.preheader ]
  %.06272 = phi ptr [ %i.ev, %scalar.ph ], [ %.06272.ph, %scalar.ph.preheader ] ; 17 uses
  %.06371 = phi ptr [ %i.eu, %scalar.ph ], [ %.06371.ph, %scalar.ph.preheader ] ; 5 uses
  %.06470 = phi ptr [ %i.et, %scalar.ph ], [ %.06470.ph, %scalar.ph.preheader ] ; 5 uses
  %.06569 = phi ptr [ %i.es, %scalar.ph ], [ %.06569.ph, %scalar.ph.preheader ] ; 5 uses
  %.06668 = phi ptr [ %i.er, %scalar.ph ], [ %.06668.ph, %scalar.ph.preheader ] ; 5 uses
  %i.da = load float, ptr %.06668, align 4, !tbaa !51
  store float %i.da, ptr %.06272, align 4, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %.06668, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %.06272, i64 4
  store float %i.dc, ptr %i.dd, align 4, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %.06668, i64 8
  %i.df = load float, ptr %i.de, align 4, !tbaa !51
  %i.dg = getelementptr inbounds nuw i8, ptr %.06272, i64 8
  store float %i.df, ptr %i.dg, align 4, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %.06668, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %.06272, i64 12
  store float %i.di, ptr %i.dj, align 4, !tbaa !51
  %i.dk = load float, ptr %.06569, align 4, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %.06272, i64 16
  store float %i.dk, ptr %i.dl, align 4, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %.06569, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %.06272, i64 20
  store float %i.dn, ptr %i.do, align 4, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %.06569, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %.06272, i64 24
  store float %i.dq, ptr %i.dr, align 4, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %.06569, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.06272, i64 28
  store float %i.dt, ptr %i.du, align 4, !tbaa !51
  %i.dv = load float, ptr %.06470, align 4, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %.06272, i64 32
  store float %i.dv, ptr %i.dw, align 4, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %.06470, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.06272, i64 36
  store float %i.dy, ptr %i.dz, align 4, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.06470, i64 8
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !51
  %i.ec = getelementptr inbounds nuw i8, ptr %.06272, i64 40
  store float %i.eb, ptr %i.ec, align 4, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %.06470, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !51
  %i.ef = getelementptr inbounds nuw i8, ptr %.06272, i64 44
  store float %i.ee, ptr %i.ef, align 4, !tbaa !51
  %i.eg = load float, ptr %.06371, align 4, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %.06272, i64 48
  store float %i.eg, ptr %i.eh, align 4, !tbaa !51
  %i.ei = getelementptr inbounds nuw i8, ptr %.06371, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.06272, i64 52
  store float %i.ej, ptr %i.ek, align 4, !tbaa !51
  %i.el = getelementptr inbounds nuw i8, ptr %.06371, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %.06272, i64 56
  store float %i.em, ptr %i.en, align 4, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %.06371, i64 12
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %.06272, i64 60
  store float %i.ep, ptr %i.eq, align 4, !tbaa !51
  %i.er = getelementptr inbounds nuw i8, ptr %.06668, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.06569, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %.06470, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %.06371, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.06272, i64 64
  %i.ew = add nuw nsw i32 %.073, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ew, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !217

._crit_edge78.split:                              ; preds = %._crit_edge, %.lr.ph77, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.19:bb.a
  store <16 x float> %i.fy, ptr %.0149629, align 1, !tbaa !56
  store <16 x float> %i.fz, ptr %.0147630, align 1, !tbaa !56
  store <16 x float> %i.ga, ptr %.0145631, align 1, !tbaa !56
  store <16 x float> %i.gb, ptr %.0143632, align 1, !tbaa !56
  store <16 x float> %i.gc, ptr %.0141633, align 1, !tbaa !56
  store <16 x float> %i.gd, ptr %.0139634, align 1, !tbaa !56
  store <16 x float> %i.ge, ptr %.0137635, align 1, !tbaa !56
  store <16 x float> %i.gf, ptr %.0135636, align 1, !tbaa !56
  store <16 x float> %i.gg, ptr %.0133637, align 1, !tbaa !56
  %i.gh = getelementptr inbounds nuw i8, ptr %.0165621, i64 1024 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0163622, i64 64 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0161623, i64 64 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0159624, i64 64 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0157625, i64 64 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0155626, i64 64 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0153627, i64 64 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0151628, i64 64 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0149629, i64 64 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0147630, i64 64 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0145631, i64 64 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0143632, i64 64 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0141633, i64 64 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0139634, i64 64 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0137635, i64 64 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0135636, i64 64 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0133637, i64 64 ; 2 uses
  %i.gy = add nuw nsw i32 %.0638, 16              ; 3 uses
  %i.gz = or disjoint i32 %i.gy, 15
  %i.ha = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.hb = icmp slt i32 %i.gz, %i.ha
  br i1 %i.hb, label %.lr.ph, label %.preheader, !llvm.loop !415

.lr.ph675:                                        ; preds = %.preheader, %.lr.ph675
  %.1674 = phi i32 [ %i.iy, %.lr.ph675 ], [ %.0.lcssa, %.preheader ]
  %.1134673 = phi ptr [ %i.iw, %.lr.ph675 ], [ %.0133.lcssa, %.preheader ] ; 2 uses
  %.1136672 = phi ptr [ %i.it, %.lr.ph675 ], [ %.0135.lcssa, %.preheader ] ; 2 uses
  %.1138671 = phi ptr [ %i.iq, %.lr.ph675 ], [ %.0137.lcssa, %.preheader ] ; 2 uses
  %.1140670 = phi ptr [ %i.in, %.lr.ph675 ], [ %.0139.lcssa, %.preheader ] ; 2 uses
  %.1142669 = phi ptr [ %i.ik, %.lr.ph675 ], [ %.0141.lcssa, %.preheader ] ; 2 uses
  %.1144668 = phi ptr [ %i.ih, %.lr.ph675 ], [ %.0143.lcssa, %.preheader ] ; 2 uses
  %.1146667 = phi ptr [ %i.ie, %.lr.ph675 ], [ %.0145.lcssa, %.preheader ] ; 2 uses
  %.1148666 = phi ptr [ %i.ib, %.lr.ph675 ], [ %.0147.lcssa, %.preheader ] ; 2 uses
  %.1150665 = phi ptr [ %i.hy, %.lr.ph675 ], [ %.0149.lcssa, %.preheader ] ; 2 uses
  %.1152664 = phi ptr [ %i.hv, %.lr.ph675 ], [ %.0151.lcssa, %.preheader ] ; 2 uses
  %.1154663 = phi ptr [ %i.hs, %.lr.ph675 ], [ %.0153.lcssa, %.preheader ] ; 2 uses
  %.1156662 = phi ptr [ %i.hp, %.lr.ph675 ], [ %.0155.lcssa, %.preheader ] ; 2 uses
  %.1158661 = phi ptr [ %i.hm, %.lr.ph675 ], [ %.0157.lcssa, %.preheader ] ; 2 uses
  %.1160660 = phi ptr [ %i.hj, %.lr.ph675 ], [ %.0159.lcssa, %.preheader ] ; 2 uses
  %.1162659 = phi ptr [ %i.hg, %.lr.ph675 ], [ %.0161.lcssa, %.preheader ] ; 2 uses
  %.1164658 = phi ptr [ %i.hd, %.lr.ph675 ], [ %.0163.lcssa, %.preheader ] ; 2 uses
  %.1166657 = phi ptr [ %i.ix, %.lr.ph675 ], [ %.0165.lcssa, %.preheader ] ; 17 uses
  %i.hc = load float, ptr %.1166657, align 4, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %.1164658, i64 4
  store float %i.hc, ptr %.1164658, align 4, !tbaa !51
  %i.he = getelementptr inbounds nuw i8, ptr %.1166657, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %.1162659, i64 4
  store float %i.hf, ptr %.1162659, align 4, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %.1166657, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %.1160660, i64 4
  store float %i.hi, ptr %.1160660, align 4, !tbaa !51
  %i.hk = getelementptr inbounds nuw i8, ptr %.1166657, i64 12
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !51
  %i.hm = getelementptr inbounds nuw i8, ptr %.1158661, i64 4
  store float %i.hl, ptr %.1158661, align 4, !tbaa !51
  %i.hn = getelementptr inbounds nuw i8, ptr %.1166657, i64 16
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !51
  %i.hp = getelementptr inbounds nuw i8, ptr %.1156662, i64 4
  store float %i.ho, ptr %.1156662, align 4, !tbaa !51
  %i.hq = getelementptr inbounds nuw i8, ptr %.1166657, i64 20
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !51
  %i.hs = getelementptr inbounds nuw i8, ptr %.1154663, i64 4
  store float %i.hr, ptr %.1154663, align 4, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %.1166657, i64 24
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %.1152664, i64 4
  store float %i.hu, ptr %.1152664, align 4, !tbaa !51
  %i.hw = getelementptr inbounds nuw i8, ptr %.1166657, i64 28
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.1150665, i64 4
  store float %i.hx, ptr %.1150665, align 4, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %.1166657, i64 32
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %.1148666, i64 4
  store float %i.ia, ptr %.1148666, align 4, !tbaa !51
  %i.ic = getelementptr inbounds nuw i8, ptr %.1166657, i64 36
  %i.id = load float, ptr %i.ic, align 4, !tbaa !51
  %i.ie = getelementptr inbounds nuw i8, ptr %.1146667, i64 4
  store float %i.id, ptr %.1146667, align 4, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %.1166657, i64 40
  %i.ig = load float, ptr %i.if, align 4, !tbaa !51
  %i.ih = getelementptr inbounds nuw i8, ptr %.1144668, i64 4
  store float %i.ig, ptr %.1144668, align 4, !tbaa !51
  %i.ii = getelementptr inbounds nuw i8, ptr %.1166657, i64 44
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !51
  %i.ik = getelementptr inbounds nuw i8, ptr %.1142669, i64 4
  store float %i.ij, ptr %.1142669, align 4, !tbaa !51
  %i.il = getelementptr inbounds nuw i8, ptr %.1166657, i64 48
  %i.im = load float, ptr %i.il, align 4, !tbaa !51
  %i.in = getelementptr inbounds nuw i8, ptr %.1140670, i64 4
  store float %i.im, ptr %.1140670, align 4, !tbaa !51
  %i.io = getelementptr inbounds nuw i8, ptr %.1166657, i64 52
  %i.ip = load float, ptr %i.io, align 4, !tbaa !51
  %i.iq = getelementptr inbounds nuw i8, ptr %.1138671, i64 4
  store float %i.ip, ptr %.1138671, align 4, !tbaa !51
  %i.ir = getelementptr inbounds nuw i8, ptr %.1166657, i64 56
  %i.is = load float, ptr %i.ir, align 4, !tbaa !51
  %i.it = getelementptr inbounds nuw i8, ptr %.1136672, i64 4
  store float %i.is, ptr %.1136672, align 4, !tbaa !51
  %i.iu = getelementptr inbounds nuw i8, ptr %.1166657, i64 60
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !51
  %i.iw = getelementptr inbounds nuw i8, ptr %.1134673, i64 4
  store float %i.iv, ptr %.1134673, align 4, !tbaa !51
  %i.ix = getelementptr inbounds nuw i8, ptr %.1166657, i64 64
  %i.iy = add nuw nsw i32 %.1674, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.iy, %i.co
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph675, !llvm.loop !416

._crit_edge:                                      ; preds = %.lr.ph675, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond699.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond699.not, label %._crit_edge678, label %.noexc

._crit_edge678:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge678, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.20(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not180 = icmp sgt i32 %i.k, %i.j
  br i1 %.not180, label %._crit_edge182.split, label %.noexc72.lr.ph

.noexc72.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !431 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !431 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !431 ; 5 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 4 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !432 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !432 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !432 ; 3 uses
  %factor.op.mul189 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc72.preheader, label %._crit_edge182.split

.noexc72.preheader:                               ; preds = %.noexc72.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 5 uses
  %i.y = add nsw i32 %i.j, 1
  %i.z = mul i64 %i.s, %i.u                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa ; 4 uses
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = add nsw i64 %i.x, %i.ac
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = add nsw i32 %i.v, -1
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 6
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ae
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %scevgep196 = getelementptr i8, ptr %i.aj, i64 64 ; 4 uses
  %i.ak = mul i64 %i.s, %i.u                      ; 2 uses
  %i.al = mul i64 %i.n, %i.p                      ; 2 uses
  %i.am = shl nsw i64 %i.x, 2                     ; 7 uses
  %i.an = or disjoint i64 %i.am, 3
  %i.ao = mul i64 %i.al, %i.an
  %scevgep197 = getelementptr i8, ptr %i.l, i64 %i.ao
  %i.ap = shl nuw nsw i64 %i.ac, 2                ; 4 uses
  %i.aq = add nsw i64 %i.am, %i.ap
  %i.ar = or disjoint i64 %i.aq, 3
  %i.as = mul i64 %i.al, %i.ar
  %i.at = shl nuw nsw i64 %i.ag, 4                ; 4 uses
  %i.au = getelementptr i8, ptr %i.l, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 %i.at
  %scevgep198 = getelementptr i8, ptr %i.av, i64 16
  %i.aw = mul i64 %i.n, %i.p                      ; 3 uses
  %6 = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %7 = insertelement <2 x i64> %6, i64 %i.ak, i64 1
  %8 = shl <2 x i64> %7, <i64 2, i64 0>
  %i.ax = or disjoint i64 %i.am, 2
  %i.ay = mul i64 %i.aw, %i.ax
  %scevgep199 = getelementptr i8, ptr %i.l, i64 %i.ay
  %i.az = add nsw i64 %i.am, %i.ap
  %i.ba = or disjoint i64 %i.az, 2
  %i.bb = mul i64 %i.aw, %i.ba
  %i.bc = getelementptr i8, ptr %i.l, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.at
  %scevgep200 = getelementptr i8, ptr %i.bd, i64 16
  %i.be = mul i64 %i.n, %i.p                      ; 2 uses
  %i.bf = or disjoint i64 %i.am, 1
  %i.bg = mul i64 %i.be, %i.bf
  %scevgep201 = getelementptr i8, ptr %i.l, i64 %i.bg
  %i.bh = add nsw i64 %i.am, %i.ap
  %i.bi = or disjoint i64 %i.bh, 1
  %i.bj = mul i64 %i.be, %i.bi
  %i.bk = getelementptr i8, ptr %i.l, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.at
  %scevgep202 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = mul i64 %i.n, %i.p                      ; 2 uses
  %i.bn = mul i64 %i.bm, %i.x
  %i.bo = shl i64 %i.bn, 2
  %scevgep203 = getelementptr i8, ptr %i.l, i64 %i.bo
  %i.bp = add nsw i64 %i.am, %i.ap
  %i.bq = mul i64 %i.bm, %i.bp
  %i.br = getelementptr i8, ptr %i.l, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.at
  %scevgep204 = getelementptr i8, ptr %i.bs, i64 16
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x i64> poison, i64 %i.ak, i64 0
  %11 = shufflevector <4 x i64> %10, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bt = zext nneg i32 %i.v to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep198
  %bound1 = icmp ult ptr %scevgep197, %scevgep196
  %found.conflict = and i1 %bound0, %bound1
  %12 = or <4 x i64> %9, %11
  %bound0206 = icmp ult ptr %scevgep, %scevgep200
  %bound1207 = icmp ult ptr %scevgep199, %scevgep196
  %found.conflict208 = and i1 %bound0206, %bound1207
  %bound0211 = icmp ult ptr %scevgep, %scevgep202
  %bound1212 = icmp ult ptr %scevgep201, %scevgep196
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0217 = icmp ult ptr %scevgep, %scevgep204
  %bound1218 = icmp ult ptr %scevgep203, %scevgep196
  %found.conflict219 = and i1 %bound0217, %bound1218
  %13 = icmp slt <4 x i64> %12, zeroinitializer
  %14 = bitcast <4 x i1> %13 to i4
  %15 = icmp ne i4 %14, 0
  %op.rdx = or i1 %15, %found.conflict
  %op.rdx263 = or i1 %found.conflict208, %found.conflict213
  %op.rdx264 = or i1 %op.rdx, %op.rdx263
  %op.rdx265 = or i1 %op.rdx264, %found.conflict219
  %n.vec = and i64 %i.bt, 2147483640              ; 5 uses
  %i.bu = trunc nuw nsw i64 %n.vec to i32
  %i.bv = shl nuw nsw i64 %n.vec, 6
  %i.bw = shl nuw nsw i64 %n.vec, 4               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bt
  br label %.noexc72

.noexc72:                                         ; preds = %.noexc72.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc72.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bx = shl nsw i64 %indvars.iv, 2              ; 4 uses
  %.reass = mul i64 %factor.op.mul, %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.bz = or disjoint i64 %i.bx, 1
  %.reass184 = mul i64 %factor.op.mul, %i.bz
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass184 ; 4 uses
  %i.cb = or disjoint i64 %i.bx, 2
  %.reass186 = mul i64 %factor.op.mul, %i.cb
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass186 ; 4 uses
  %i.cd = or disjoint i64 %i.bx, 3
  %.reass188 = mul i64 %factor.op.mul, %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass188 ; 4 uses
  %.reass190 = mul i64 %factor.op.mul189, %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass190 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc72
  br i1 %op.rdx265, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.bv
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.bw
  %i.ci = getelementptr i8, ptr %i.cc, i64 %i.bw
  %i.cj = getelementptr i8, ptr %i.ca, i64 %i.bw
  %i.ck = getelementptr i8, ptr %i.by, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.cf, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 64, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448> ; 16 uses
  %i.cl = shl i64 %index, 4                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cl
  %next.gep223 = getelementptr i8, ptr %i.cc, i64 %i.cl
  %next.gep224 = getelementptr i8, ptr %i.ca, i64 %i.cl
  %next.gep225 = getelementptr i8, ptr %i.by, i64 %i.cl
  %wide.vec = load <32 x float>, ptr %next.gep225, align 4, !tbaa !51, !alias.scope !433 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec226 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec227 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec228 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %vector.gep, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec226, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep229 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec227, <8 x ptr> align 4 %wide.gep229, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep230 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec228, <8 x ptr> align 4 %wide.gep230, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.vec231 = load <32 x float>, ptr %next.gep224, align 4, !tbaa !51, !alias.scope !436 ; 4 uses
  %strided.vec232 = shufflevector <32 x float> %wide.vec231, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec233 = shufflevector <32 x float> %wide.vec231, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec234 = shufflevector <32 x float> %wide.vec231, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec235 = shufflevector <32 x float> %wide.vec231, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep236 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 16
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec232, <8 x ptr> align 4 %wide.gep236, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep237 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec233, <8 x ptr> align 4 %wide.gep237, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep238 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 24
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec234, <8 x ptr> align 4 %wide.gep238, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep239 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 28
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec235, <8 x ptr> align 4 %wide.gep239, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.vec240 = load <32 x float>, ptr %next.gep223, align 4, !tbaa !51, !alias.scope !437 ; 4 uses
  %strided.vec241 = shufflevector <32 x float> %wide.vec240, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec242 = shufflevector <32 x float> %wide.vec240, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec243 = shufflevector <32 x float> %wide.vec240, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec244 = shufflevector <32 x float> %wide.vec240, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep245 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 32
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec241, <8 x ptr> align 4 %wide.gep245, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep246 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 36
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec242, <8 x ptr> align 4 %wide.gep246, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep247 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 40
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec243, <8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep248 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 44
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec244, <8 x ptr> align 4 %wide.gep248, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.vec249 = load <32 x float>, ptr %next.gep, align 4, !tbaa !51, !alias.scope !438 ; 4 uses
  %strided.vec250 = shufflevector <32 x float> %wide.vec249, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec251 = shufflevector <32 x float> %wide.vec249, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec252 = shufflevector <32 x float> %wide.vec249, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec253 = shufflevector <32 x float> %wide.vec249, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.gep254 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 48
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec250, <8 x ptr> align 4 %wide.gep254, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep255 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 52
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec251, <8 x ptr> align 4 %wide.gep255, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep256 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 56
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec252, <8 x ptr> align 4 %wide.gep256, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %wide.gep257 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 60
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec253, <8 x ptr> align 4 %wide.gep257, <8 x i1> splat (i1 true)), !tbaa !51, !alias.scope !434, !noalias !435
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !429

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc72, %middle.block
  %.0179.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.noexc72 ], [ %i.bu, %middle.block ]
  %.062178.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.noexc72 ], [ %i.cg, %middle.block ]
  %.063177.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.noexc72 ], [ %i.ch, %middle.block ]
  %.064176.ph = phi ptr [ %i.cc, %vector.memcheck ], [ %i.cc, %.noexc72 ], [ %i.ci, %middle.block ]
  %.065175.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.noexc72 ], [ %i.cj, %middle.block ]
  %.066174.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.noexc72 ], [ %i.ck, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond192.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond192.not, label %._crit_edge182.split, label %.noexc72

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0179 = phi i32 [ %i.ej, %scalar.ph ], [ %.0179.ph, %scalar.ph.preheader ]
  %.062178 = phi ptr [ %i.ei, %scalar.ph ], [ %.062178.ph, %scalar.ph.preheader ] ; 17 uses
  %.063177 = phi ptr [ %i.eh, %scalar.ph ], [ %.063177.ph, %scalar.ph.preheader ] ; 5 uses
  %.064176 = phi ptr [ %i.eg, %scalar.ph ], [ %.064176.ph, %scalar.ph.preheader ] ; 5 uses
  %.065175 = phi ptr [ %i.ef, %scalar.ph ], [ %.065175.ph, %scalar.ph.preheader ] ; 5 uses
  %.066174 = phi ptr [ %i.ee, %scalar.ph ], [ %.066174.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cn = load float, ptr %.066174, align 4, !tbaa !51
  store float %i.cn, ptr %.062178, align 4, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %.066174, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %.062178, i64 4
  store float %i.cp, ptr %i.cq, align 4, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %.066174, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %.062178, i64 8
  store float %i.cs, ptr %i.ct, align 4, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.066174, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.062178, i64 12
  store float %i.cv, ptr %i.cw, align 4, !tbaa !51
  %i.cx = load float, ptr %.065175, align 4, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %.062178, i64 16
  store float %i.cx, ptr %i.cy, align 4, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %.065175, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %.062178, i64 20
  store float %i.da, ptr %i.db, align 4, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %.065175, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %.062178, i64 24
  store float %i.dd, ptr %i.de, align 4, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %.065175, i64 12
  %i.dg = load float, ptr %i.df, align 4, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %.062178, i64 28
  store float %i.dg, ptr %i.dh, align 4, !tbaa !51
  %i.di = load float, ptr %.064176, align 4, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %.062178, i64 32
  store float %i.di, ptr %i.dj, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %.064176, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %.062178, i64 36
  store float %i.dl, ptr %i.dm, align 4, !tbaa !51
  %i.dn = getelementptr inbounds nuw i8, ptr %.064176, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %.062178, i64 40
  store float %i.do, ptr %i.dp, align 4, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %.064176, i64 12
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %.062178, i64 44
  store float %i.dr, ptr %i.ds, align 4, !tbaa !51
  %i.dt = load float, ptr %.063177, align 4, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.062178, i64 48
  store float %i.dt, ptr %i.du, align 4, !tbaa !51
  %i.dv = getelementptr inbounds nuw i8, ptr %.063177, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %.062178, i64 52
  store float %i.dw, ptr %i.dx, align 4, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %.063177, i64 8
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.062178, i64 56
  store float %i.dz, ptr %i.ea, align 4, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %.063177, i64 12
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %.062178, i64 60
  store float %i.ec, ptr %i.ed, align 4, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %.066174, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.065175, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.064176, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.063177, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.062178, i64 64
  %i.ej = add nuw nsw i32 %.0179, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ej, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !430

._crit_edge182.split:                             ; preds = %._crit_edge, %.noexc72.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
end_hunk_1
begin_hunk_2_@_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.24:bb.a
  %.16584.ph = phi ptr [ %.064.lcssa, %iter.check ], [ %.064.lcssa, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ] ; 3 uses
  %.16783.ph = phi ptr [ %.066.lcssa, %iter.check ], [ %.066.lcssa, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ] ; 3 uses
  %.16982.ph = phi ptr [ %.068.lcssa, %iter.check ], [ %.068.lcssa, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ] ; 3 uses
  %i.cb = sub i32 %i.ar, %.16385.ph
  %.neg = add i32 %.16385.ph, 1
  %xtraiter = and i32 %i.cb, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph88.prol.loopexit, label %.lr.ph88.prol

.lr.ph88.prol:                                    ; preds = %.lr.ph88.preheader
  %i.cc = load i16, ptr %.187.ph, align 2, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %.16186.ph, i64 2
  store i16 %i.cc, ptr %.16186.ph, align 2, !tbaa !61
  %i.ce = getelementptr inbounds nuw i8, ptr %.187.ph, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %.16982.ph, i64 2
  store i16 %i.cf, ptr %.16982.ph, align 2, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %.187.ph, i64 4
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %.16783.ph, i64 2
  store i16 %i.ci, ptr %.16783.ph, align 2, !tbaa !61
  %i.ck = getelementptr inbounds nuw i8, ptr %.187.ph, i64 6
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %.16584.ph, i64 2
  store i16 %i.cl, ptr %.16584.ph, align 2, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %.187.ph, i64 8
  %i.co = add nuw nsw i32 %.16385.ph, 1
  br label %.lr.ph88.prol.loopexit

.lr.ph88.prol.loopexit:                           ; preds = %.lr.ph88.prol, %.lr.ph88.preheader
  %.187.unr = phi ptr [ %.187.ph, %.lr.ph88.preheader ], [ %i.cn, %.lr.ph88.prol ]
  %.16186.unr = phi ptr [ %.16186.ph, %.lr.ph88.preheader ], [ %i.cd, %.lr.ph88.prol ]
  %.16385.unr = phi i32 [ %.16385.ph, %.lr.ph88.preheader ], [ %i.co, %.lr.ph88.prol ]
  %.16584.unr = phi ptr [ %.16584.ph, %.lr.ph88.preheader ], [ %i.cm, %.lr.ph88.prol ]
  %.16783.unr = phi ptr [ %.16783.ph, %.lr.ph88.preheader ], [ %i.cj, %.lr.ph88.prol ]
  %.16982.unr = phi ptr [ %.16982.ph, %.lr.ph88.preheader ], [ %i.cg, %.lr.ph88.prol ]
  %i.cp = icmp eq i32 %i.ar, %.neg
  br i1 %i.cp, label %._crit_edge, label %.lr.ph88

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.05975 = phi ptr [ %i.dd, %.lr.ph ], [ %i.y, %bb.c ] ; 3 uses
  %.06074 = phi ptr [ %i.de, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  %.06273 = phi i32 [ %i.di, %.lr.ph ], [ 0, %bb.c ]
  %.06472 = phi ptr [ %i.dh, %.lr.ph ], [ %i.ap, %bb.c ] ; 2 uses
  %.06671 = phi ptr [ %i.dg, %.lr.ph ], [ %i.am, %bb.c ] ; 2 uses
  %.06870 = phi ptr [ %i.df, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %i.cq = load <8 x i16>, ptr %.05975, align 1, !tbaa !56 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05975, i64 16
  %i.cs = load <8 x i16>, ptr %i.cr, align 1, !tbaa !56 ; 2 uses
  %i.ct = shufflevector <8 x i16> %i.cq, <8 x i16> %i.cs, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %i.cu = bitcast <8 x i16> %i.ct to <2 x i64>
  %i.cv = shufflevector <8 x i16> %i.cq, <8 x i16> %i.cs, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.cw = bitcast <8 x i16> %i.cv to <2 x i64>
  %i.cx = extractelement <2 x i64> %i.cu, i64 0
  store i64 %i.cx, ptr %.06074, align 1, !tbaa !56
  %i.cy = bitcast <8 x i16> %i.ct to <2 x i64>
  %i.cz = extractelement <2 x i64> %i.cy, i64 1
  store i64 %i.cz, ptr %.06870, align 1, !tbaa !56
  %i.da = extractelement <2 x i64> %i.cw, i64 0
  store i64 %i.da, ptr %.06671, align 1, !tbaa !56
  %i.db = bitcast <8 x i16> %i.cv to <2 x i64>
  %i.dc = extractelement <2 x i64> %i.db, i64 1
  store i64 %i.dc, ptr %.06472, align 1, !tbaa !56
  %i.dd = getelementptr inbounds nuw i8, ptr %.05975, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06074, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.06870, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.06671, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.06472, i64 8 ; 2 uses
  %i.di = add nuw nsw i32 %.06273, 4              ; 3 uses
  %i.dj = or disjoint i32 %i.di, 3
  %i.dk = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph, label %.preheader, !llvm.loop !484

.lr.ph88:                                         ; preds = %.lr.ph88.prol.loopexit, %.lr.ph88
  %.187 = phi ptr [ %i.ej, %.lr.ph88 ], [ %.187.unr, %.lr.ph88.prol.loopexit ] ; 9 uses
  %.16186 = phi ptr [ %i.dz, %.lr.ph88 ], [ %.16186.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16385 = phi i32 [ %i.ek, %.lr.ph88 ], [ %.16385.unr, %.lr.ph88.prol.loopexit ]
  %.16584 = phi ptr [ %i.ei, %.lr.ph88 ], [ %.16584.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16783 = phi ptr [ %i.ef, %.lr.ph88 ], [ %.16783.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16982 = phi ptr [ %i.ec, %.lr.ph88 ], [ %.16982.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %i.dm = load i16, ptr %.187, align 2, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %.16186, i64 2
  store i16 %i.dm, ptr %.16186, align 2, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %.187, i64 2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !61
  %i.dq = getelementptr inbounds nuw i8, ptr %.16982, i64 2
  store i16 %i.dp, ptr %.16982, align 2, !tbaa !61
  %i.dr = getelementptr inbounds nuw i8, ptr %.187, i64 4
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %.16783, i64 2
  store i16 %i.ds, ptr %.16783, align 2, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %.187, i64 6
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %.16584, i64 2
  store i16 %i.dv, ptr %.16584, align 2, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %.187, i64 8
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !61
  %i.dz = getelementptr inbounds nuw i8, ptr %.16186, i64 4
  store i16 %i.dy, ptr %i.dn, align 2, !tbaa !61
  %i.ea = getelementptr inbounds nuw i8, ptr %.187, i64 10
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !61
  %i.ec = getelementptr inbounds nuw i8, ptr %.16982, i64 4
  store i16 %i.eb, ptr %i.dq, align 2, !tbaa !61
  %i.ed = getelementptr inbounds nuw i8, ptr %.187, i64 12
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !61
  %i.ef = getelementptr inbounds nuw i8, ptr %.16783, i64 4
  store i16 %i.ee, ptr %i.dt, align 2, !tbaa !61
  %i.eg = getelementptr inbounds nuw i8, ptr %.187, i64 14
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !61
  %i.ei = getelementptr inbounds nuw i8, ptr %.16584, i64 4
  store i16 %i.eh, ptr %i.dw, align 2, !tbaa !61
  %i.ej = getelementptr inbounds nuw i8, ptr %.187, i64 16
  %i.ek = add nuw nsw i32 %.16385, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ek, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph88, !llvm.loop !485

._crit_edge:                                      ; preds = %.lr.ph88.prol.loopexit, %.lr.ph88, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond102.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond102.not, label %._crit_edge93, label %bb.c

._crit_edge93:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge93, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.25(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74.split, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 24 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16   ; 18 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = sext i32 %i.s to i64                     ; 4 uses
  %i.u = sext i32 %i.n to i64                     ; 18 uses
  %i.v = mul i64 %i.p, %i.u                       ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.x, %i.t
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 6 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge74.split

.lr.ph.preheader:                                 ; preds = %.lr.ph73
  %i.aa = sext i32 %i.k to i64                    ; 5 uses
  %i.ab = add nsw i32 %i.j, 1
  %i.ac = mul i64 %i.x, %i.t
  %i.ad = mul i64 %i.ac, %i.aa
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ad
  %i.ae = sub i32 %i.j, %i.k
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = add nsw i64 %i.aa, %i.af
  %i.ah = mul i64 %i.x, %i.ag
  %i.ai = mul i64 %i.ah, %i.t
  %i.aj = add nsw i32 %i.y, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = getelementptr i8, ptr %i.q, i64 %i.ai
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al  ; 2 uses
  %i.ao = mul i64 %i.x, %i.t                      ; 2 uses
  %i.ap = shl nsw i64 %i.aa, 3                    ; 15 uses
  %i.aq = or disjoint i64 %i.ap, 7
  %i.ar = mul i64 %i.p, %i.aq
  %i.as = mul i64 %i.ar, %i.u
  %scevgep81 = getelementptr i8, ptr %i.l, i64 %i.as
  %i.at = shl nuw nsw i64 %i.af, 3                ; 8 uses
  %i.au = add nsw i64 %i.ap, %i.at
  %i.av = or disjoint i64 %i.au, 7
  %i.aw = mul i64 %i.p, %i.av
  %i.ax = mul i64 %i.aw, %i.u
  %i.ay = shl nuw nsw i64 %i.ak, 1                ; 8 uses
  %i.az = getelementptr i8, ptr %i.l, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ay
  %i.bb = mul i64 %i.p, %i.u
  %6 = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %7 = insertelement <2 x i64> %6, i64 %i.ao, i64 1
  %8 = shl <2 x i64> %7, <i64 3, i64 0>
  %i.bc = or disjoint i64 %i.ap, 6
  %i.bd = mul i64 %i.p, %i.bc
  %i.be = mul i64 %i.bd, %i.u
  %scevgep83 = getelementptr i8, ptr %i.l, i64 %i.be
  %i.bf = add nsw i64 %i.ap, %i.at
  %i.bg = or disjoint i64 %i.bf, 6
  %i.bh = mul i64 %i.p, %i.bg
  %i.bi = mul i64 %i.bh, %i.u
  %i.bj = getelementptr i8, ptr %i.l, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.ay
  %i.bl = or disjoint i64 %i.ap, 5
  %i.bm = mul i64 %i.p, %i.bl
  %i.bn = mul i64 %i.bm, %i.u
  %scevgep85 = getelementptr i8, ptr %i.l, i64 %i.bn
  %i.bo = add nsw i64 %i.ap, %i.at
  %i.bp = or disjoint i64 %i.bo, 5
  %i.bq = mul i64 %i.p, %i.bp
  %i.br = mul i64 %i.bq, %i.u
  %i.bs = getelementptr i8, ptr %i.l, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.ay
  %i.bu = or disjoint i64 %i.ap, 4
  %i.bv = mul i64 %i.p, %i.bu
  %i.bw = mul i64 %i.bv, %i.u
  %scevgep87 = getelementptr i8, ptr %i.l, i64 %i.bw
  %i.bx = add nsw i64 %i.ap, %i.at
  %i.by = or disjoint i64 %i.bx, 4
  %i.bz = mul i64 %i.p, %i.by
  %i.ca = mul i64 %i.bz, %i.u
  %i.cb = getelementptr i8, ptr %i.l, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.ay
  %i.cd = or disjoint i64 %i.ap, 3
  %i.ce = mul i64 %i.p, %i.cd
  %i.cf = mul i64 %i.ce, %i.u
  %scevgep89 = getelementptr i8, ptr %i.l, i64 %i.cf
  %i.cg = add nsw i64 %i.ap, %i.at
  %i.ch = or disjoint i64 %i.cg, 3
  %i.ci = mul i64 %i.p, %i.ch
  %i.cj = mul i64 %i.ci, %i.u
  %i.ck = getelementptr i8, ptr %i.l, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.ay
  %i.cm = or disjoint i64 %i.ap, 2
  %i.cn = mul i64 %i.p, %i.cm
  %i.co = mul i64 %i.cn, %i.u
  %scevgep91 = getelementptr i8, ptr %i.l, i64 %i.co
  %i.cp = add nsw i64 %i.ap, %i.at
  %i.cq = or disjoint i64 %i.cp, 2
  %i.cr = mul i64 %i.p, %i.cq
  %i.cs = mul i64 %i.cr, %i.u
  %i.ct = getelementptr i8, ptr %i.l, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.ay
  %i.cv = or disjoint i64 %i.ap, 1
  %i.cw = mul i64 %i.p, %i.cv
  %i.cx = mul i64 %i.cw, %i.u
  %scevgep93 = getelementptr i8, ptr %i.l, i64 %i.cx
  %i.cy = add nsw i64 %i.ap, %i.at
  %i.cz = or disjoint i64 %i.cy, 1
  %i.da = mul i64 %i.p, %i.cz
  %i.db = mul i64 %i.da, %i.u
  %i.dc = getelementptr i8, ptr %i.l, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.ay
  %i.de = insertelement <8 x ptr> poison, ptr %i.ba, i64 0
  %i.df = insertelement <8 x ptr> %i.de, ptr %i.an, i64 1
  %i.dg = insertelement <8 x ptr> %i.df, ptr %i.bt, i64 2
  %i.dh = insertelement <8 x ptr> %i.dg, ptr %i.cl, i64 3
  %i.di = insertelement <8 x ptr> %i.dh, ptr %i.dd, i64 4
  %i.dj = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 3, i32 1, i32 4, i32 1>
  %i.dk = getelementptr i8, <8 x ptr> %i.dj, <8 x i64> <i64 2, i64 16, i64 2, i64 16, i64 2, i64 16, i64 2, i64 16>
  %i.dl = mul i64 %i.p, %i.u
  %i.dm = mul i64 %i.dl, %i.aa
  %i.dn = shl i64 %i.dm, 3
  %scevgep95 = getelementptr i8, ptr %i.l, i64 %i.dn
  %i.do = add nsw i64 %i.ap, %i.at
  %i.dp = mul i64 %i.p, %i.do
  %i.dq = mul i64 %i.dp, %i.u
  %i.dr = getelementptr i8, ptr %i.l, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.ay
  %i.dt = insertelement <8 x ptr> poison, ptr %i.an, i64 0
  %i.du = insertelement <8 x ptr> %i.dt, ptr %i.bk, i64 1
  %i.dv = insertelement <8 x ptr> %i.du, ptr %i.cc, i64 2
  %i.dw = insertelement <8 x ptr> %i.dv, ptr %i.cu, i64 3
  %i.dx = insertelement <8 x ptr> %i.dw, ptr %i.ds, i64 4
  %i.dy = shufflevector <8 x ptr> %i.dx, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 2, i32 0, i32 3, i32 0, i32 4>
  %i.dz = getelementptr i8, <8 x ptr> %i.dy, <8 x i64> <i64 16, i64 2, i64 16, i64 2, i64 16, i64 2, i64 16, i64 2>
  %i.ea = zext nneg i32 %i.y to i64               ; 5 uses
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <8 x i32> zeroinitializer
  %i.eb = insertelement <8 x i64> poison, i64 %i.ao, i64 0
  %10 = shufflevector <8 x i64> %i.eb, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ec = insertelement <8 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.ed = insertelement <8 x ptr> %i.ec, ptr %scevgep83, i64 1
  %i.ee = insertelement <8 x ptr> %i.ed, ptr %scevgep87, i64 3
  %i.ef = insertelement <8 x ptr> %i.ee, ptr %scevgep91, i64 5
  %i.eg = insertelement <8 x ptr> %i.ef, ptr %scevgep95, i64 7
  %i.eh = shufflevector <8 x ptr> %i.eg, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.ei = shufflevector <8 x ptr> %i.ec, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.ej = insertelement <8 x ptr> %i.ei, ptr %scevgep81, i64 0
  %i.ek = insertelement <8 x ptr> %i.ej, ptr %scevgep85, i64 2
  %i.el = insertelement <8 x ptr> %i.ek, ptr %scevgep89, i64 4
  %i.em = insertelement <8 x ptr> %i.el, ptr %scevgep93, i64 6
  %min.iters.check = icmp ult i32 %i.y, 8
  %i.en = icmp ult <8 x ptr> %i.eh, %i.dk
  %i.eo = icmp ult <8 x ptr> %i.em, %i.dz
  %i.ep = or <8 x i64> %9, %10
  %i.eq = and <8 x i1> %i.eo, %i.en
  %i.er = icmp slt <8 x i64> %i.ep, zeroinitializer
  %rdx.op = or <8 x i1> %i.er, %i.eq
  %i.es = bitcast <8 x i1> %rdx.op to i8
  %.not = icmp eq i8 %i.es, 0
  %min.iters.check139 = icmp ult i32 %i.y, 32
  %i.et = and i64 %i.ea, 24
  %n.vec = and i64 %i.ea, 2147483616              ; 6 uses
  %i.eu = trunc nuw nsw i64 %n.vec to i32
  %i.ev = shl nuw nsw i64 %n.vec, 4
  %i.ew = shl nuw nsw i64 %n.vec, 1               ; 8 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ea
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  %n.vec164 = and i64 %i.ea, 2147483640           ; 5 uses
  %i.ex = trunc nuw nsw i64 %n.vec164 to i32
  %i.ey = shl nuw nsw i64 %n.vec164, 4
  %i.ez = shl nuw nsw i64 %n.vec164, 1            ; 8 uses
  %cmp.n185 = icmp eq i64 %n.vec164, %i.ea
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.fa = shl nsw i64 %indvars.iv, 3              ; 8 uses
  %i.fb = mul i64 %i.v, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fb ; 6 uses
  %i.fd = or disjoint i64 %i.fa, 1
  %i.fe = mul i64 %i.v, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fe ; 6 uses
  %i.fg = or disjoint i64 %i.fa, 2
  %i.fh = mul i64 %i.v, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fh ; 6 uses
  %i.fj = or disjoint i64 %i.fa, 3
  %i.fk = mul i64 %i.v, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fk ; 6 uses
  %i.fm = or disjoint i64 %i.fa, 4
  %i.fn = mul i64 %i.v, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fn ; 6 uses
  %i.fp = or disjoint i64 %i.fa, 5
  %i.fq = mul i64 %i.v, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fq ; 6 uses
  %i.fs = or disjoint i64 %i.fa, 6
  %i.ft = mul i64 %i.v, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ft ; 6 uses
  %i.fv = or disjoint i64 %i.fa, 7
  %i.fw = mul i64 %i.v, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fw ; 6 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  br i1 %.not, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.ev
  %i.ga = getelementptr i8, ptr %i.fx, i64 %i.ew
  %i.gb = getelementptr i8, ptr %i.fu, i64 %i.ew
  %i.gc = getelementptr i8, ptr %i.fr, i64 %i.ew
  %i.gd = getelementptr i8, ptr %i.fo, i64 %i.ew
  %i.ge = getelementptr i8, ptr %i.fl, i64 %i.ew
  %i.gf = getelementptr i8, ptr %i.fi, i64 %i.ew
  %i.gg = getelementptr i8, ptr %i.ff, i64 %i.ew
  %i.gh = getelementptr i8, ptr %i.fc, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gi = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fy, i64 %i.gi
  %i.gj = shl i64 %index, 1                       ; 8 uses
  %next.gep140 = getelementptr i8, ptr %i.fx, i64 %i.gj
  %next.gep141 = getelementptr i8, ptr %i.fu, i64 %i.gj
  %next.gep142 = getelementptr i8, ptr %i.fr, i64 %i.gj
  %next.gep143 = getelementptr i8, ptr %i.fo, i64 %i.gj
  %next.gep144 = getelementptr i8, ptr %i.fl, i64 %i.gj
  %next.gep145 = getelementptr i8, ptr %i.fi, i64 %i.gj
  %next.gep146 = getelementptr i8, ptr %i.ff, i64 %i.gj
  %next.gep147 = getelementptr i8, ptr %i.fc, i64 %i.gj
  %wide.load = load <32 x i16>, ptr %next.gep147, align 2, !tbaa !61, !alias.scope !507
  %wide.load148 = load <32 x i16>, ptr %next.gep146, align 2, !tbaa !61, !alias.scope !508
  %wide.load149 = load <32 x i16>, ptr %next.gep145, align 2, !tbaa !61, !alias.scope !509
  %wide.load150 = load <32 x i16>, ptr %next.gep144, align 2, !tbaa !61, !alias.scope !510
  %wide.load151 = load <32 x i16>, ptr %next.gep143, align 2, !tbaa !61, !alias.scope !511
  %wide.load152 = load <32 x i16>, ptr %next.gep142, align 2, !tbaa !61, !alias.scope !512
  %wide.load153 = load <32 x i16>, ptr %next.gep141, align 2, !tbaa !61, !alias.scope !513
  %wide.load154 = load <32 x i16>, ptr %next.gep140, align 2, !tbaa !61, !alias.scope !514
  %i.gk = shufflevector <32 x i16> %wide.load, <32 x i16> %wide.load148, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.gl = shufflevector <32 x i16> %wide.load149, <32 x i16> %wide.load150, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.gm = shufflevector <32 x i16> %wide.load151, <32 x i16> %wide.load152, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.gn = shufflevector <32 x i16> %wide.load153, <32 x i16> %wide.load154, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.go = shufflevector <64 x i16> %i.gk, <64 x i16> %i.gl, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.gp = shufflevector <64 x i16> %i.gm, <64 x i16> %i.gn, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %interleaved.vec = shufflevector <128 x i16> %i.go, <128 x i16> %i.gp, <256 x i32> <i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 1, i32 33, i32 65, i32 97, i32 129, i32 161, i32 193, i32 225, i32 2, i32 34, i32 66, i32 98, i32 130, i32 162, i32 194, i32 226, i32 3, i32 35, i32 67, i32 99, i32 131, i32 163, i32 195, i32 227, i32 4, i32 36, i32 68, i32 100, i32 132, i32 164, i32 196, i32 228, i32 5, i32 37, i32 69, i32 101, i32 133, i32 165, i32 197, i32 229, i32 6, i32 38, i32 70, i32 102, i32 134, i32 166, i32 198, i32 230, i32 7, i32 39, i32 71, i32 103, i32 135, i32 167, i32 199, i32 231, i32 8, i32 40, i32 72, i32 104, i32 136, i32 168, i32 200, i32 232, i32 9, i32 41, i32 73, i32 105, i32 137, i32 169, i32 201, i32 233, i32 10, i32 42, i32 74, i32 106, i32 138, i32 170, i32 202, i32 234, i32 11, i32 43, i32 75, i32 107, i32 139, i32 171, i32 203, i32 235, i32 12, i32 44, i32 76, i32 108, i32 140, i32 172, i32 204, i32 236, i32 13, i32 45, i32 77, i32 109, i32 141, i32 173, i32 205, i32 237, i32 14, i32 46, i32 78, i32 110, i32 142, i32 174, i32 206, i32 238, i32 15, i32 47, i32 79, i32 111, i32 143, i32 175, i32 207, i32 239, i32 16, i32 48, i32 80, i32 112, i32 144, i32 176, i32 208, i32 240, i32 17, i32 49, i32 81, i32 113, i32 145, i32 177, i32 209, i32 241, i32 18, i32 50, i32 82, i32 114, i32 146, i32 178, i32 210, i32 242, i32 19, i32 51, i32 83, i32 115, i32 147, i32 179, i32 211, i32 243, i32 20, i32 52, i32 84, i32 116, i32 148, i32 180, i32 212, i32 244, i32 21, i32 53, i32 85, i32 117, i32 149, i32 181, i32 213, i32 245, i32 22, i32 54, i32 86, i32 118, i32 150, i32 182, i32 214, i32 246, i32 23, i32 55, i32 87, i32 119, i32 151, i32 183, i32 215, i32 247, i32 24, i32 56, i32 88, i32 120, i32 152, i32 184, i32 216, i32 248, i32 25, i32 57, i32 89, i32 121, i32 153, i32 185, i32 217, i32 249, i32 26, i32 58, i32 90, i32 122, i32 154, i32 186, i32 218, i32 250, i32 27, i32 59, i32 91, i32 123, i32 155, i32 187, i32 219, i32 251, i32 28, i32 60, i32 92, i32 124, i32 156, i32 188, i32 220, i32 252, i32 29, i32 61, i32 93, i32 125, i32 157, i32 189, i32 221, i32 253, i32 30, i32 62, i32 94, i32 126, i32 158, i32 190, i32 222, i32 254, i32 31, i32 63, i32 95, i32 127, i32 159, i32 191, i32 223, i32 255>
  store <256 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !61, !alias.scope !515, !noalias !516
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gr = getelementptr i8, ptr %i.fy, i64 %i.ey
  %i.gs = getelementptr i8, ptr %i.fx, i64 %i.ez
  %i.gt = getelementptr i8, ptr %i.fu, i64 %i.ez
  %i.gu = getelementptr i8, ptr %i.fr, i64 %i.ez
  %i.gv = getelementptr i8, ptr %i.fo, i64 %i.ez
  %i.gw = getelementptr i8, ptr %i.fl, i64 %i.ez
  %i.gx = getelementptr i8, ptr %i.fi, i64 %i.ez
  %i.gy = getelementptr i8, ptr %i.ff, i64 %i.ez
  %i.gz = getelementptr i8, ptr %i.fc, i64 %i.ez
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %i.ha = shl i64 %index165, 4
  %next.gep166 = getelementptr i8, ptr %i.fy, i64 %i.ha
  %i.hb = shl i64 %index165, 1                    ; 8 uses
  %next.gep167 = getelementptr i8, ptr %i.fx, i64 %i.hb
  %next.gep168 = getelementptr i8, ptr %i.fu, i64 %i.hb
  %next.gep169 = getelementptr i8, ptr %i.fr, i64 %i.hb
  %next.gep170 = getelementptr i8, ptr %i.fo, i64 %i.hb
  %next.gep171 = getelementptr i8, ptr %i.fl, i64 %i.hb
  %next.gep172 = getelementptr i8, ptr %i.fi, i64 %i.hb
  %next.gep173 = getelementptr i8, ptr %i.ff, i64 %i.hb
  %next.gep174 = getelementptr i8, ptr %i.fc, i64 %i.hb
  %wide.load175 = load <8 x i16>, ptr %next.gep174, align 2, !tbaa !61, !alias.scope !507
  %wide.load176 = load <8 x i16>, ptr %next.gep173, align 2, !tbaa !61, !alias.scope !508
  %wide.load177 = load <8 x i16>, ptr %next.gep172, align 2, !tbaa !61, !alias.scope !509
  %wide.load178 = load <8 x i16>, ptr %next.gep171, align 2, !tbaa !61, !alias.scope !510
  %wide.load179 = load <8 x i16>, ptr %next.gep170, align 2, !tbaa !61, !alias.scope !511
  %wide.load180 = load <8 x i16>, ptr %next.gep169, align 2, !tbaa !61, !alias.scope !512
  %wide.load181 = load <8 x i16>, ptr %next.gep168, align 2, !tbaa !61, !alias.scope !513
  %wide.load182 = load <8 x i16>, ptr %next.gep167, align 2, !tbaa !61, !alias.scope !514
  %i.hc = shufflevector <8 x i16> %wide.load175, <8 x i16> %wide.load176, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hd = shufflevector <8 x i16> %wide.load177, <8 x i16> %wide.load178, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.he = shufflevector <8 x i16> %wide.load179, <8 x i16> %wide.load180, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hf = shufflevector <8 x i16> %wide.load181, <8 x i16> %wide.load182, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hg = shufflevector <16 x i16> %i.hc, <16 x i16> %i.hd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hh = shufflevector <16 x i16> %i.he, <16 x i16> %i.hf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec183 = shufflevector <32 x i16> %i.hg, <32 x i16> %i.hh, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec183, ptr %next.gep166, align 2, !tbaa !61, !alias.scope !515, !noalias !516
  %index.next184 = add nuw i64 %index165, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next184, %n.vec164
  br i1 %i.hi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !505

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n185, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.069.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.eu, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ]
  %.05068.ph = phi ptr [ %i.fy, %iter.check ], [ %i.fy, %vector.memcheck ], [ %i.fz, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ]
  %.05167.ph = phi ptr [ %i.fx, %iter.check ], [ %i.fx, %vector.memcheck ], [ %i.ga, %vec.epilog.iter.check ], [ %i.gs, %vec.epilog.middle.block ]
  %.05266.ph = phi ptr [ %i.fu, %iter.check ], [ %i.fu, %vector.memcheck ], [ %i.gb, %vec.epilog.iter.check ], [ %i.gt, %vec.epilog.middle.block ]
  %.05365.ph = phi ptr [ %i.fr, %iter.check ], [ %i.fr, %vector.memcheck ], [ %i.gc, %vec.epilog.iter.check ], [ %i.gu, %vec.epilog.middle.block ]
  %.05464.ph = phi ptr [ %i.fo, %iter.check ], [ %i.fo, %vector.memcheck ], [ %i.gd, %vec.epilog.iter.check ], [ %i.gv, %vec.epilog.middle.block ]
  %.05563.ph = phi ptr [ %i.fl, %iter.check ], [ %i.fl, %vector.memcheck ], [ %i.ge, %vec.epilog.iter.check ], [ %i.gw, %vec.epilog.middle.block ]
  %.05662.ph = phi ptr [ %i.fi, %iter.check ], [ %i.fi, %vector.memcheck ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gx, %vec.epilog.middle.block ]
  %.05761.ph = phi ptr [ %i.ff, %iter.check ], [ %i.ff, %vector.memcheck ], [ %i.gg, %vec.epilog.iter.check ], [ %i.gy, %vec.epilog.middle.block ]
  %.05860.ph = phi ptr [ %i.fc, %iter.check ], [ %i.fc, %vector.memcheck ], [ %i.gh, %vec.epilog.iter.check ], [ %i.gz, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.069 = phi i32 [ %i.ih, %vec.epilog.scalar.ph ], [ %.069.ph, %vec.epilog.scalar.ph.preheader ]
  %.05068 = phi ptr [ %i.ig, %vec.epilog.scalar.ph ], [ %.05068.ph, %vec.epilog.scalar.ph.preheader ] ; 9 uses
  %.05167 = phi ptr [ %i.id, %vec.epilog.scalar.ph ], [ %.05167.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05266 = phi ptr [ %i.ia, %vec.epilog.scalar.ph ], [ %.05266.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05365 = phi ptr [ %i.hx, %vec.epilog.scalar.ph ], [ %.05365.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05464 = phi ptr [ %i.hu, %vec.epilog.scalar.ph ], [ %.05464.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05563 = phi ptr [ %i.hr, %vec.epilog.scalar.ph ], [ %.05563.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05662 = phi ptr [ %i.ho, %vec.epilog.scalar.ph ], [ %.05662.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05761 = phi ptr [ %i.hl, %vec.epilog.scalar.ph ], [ %.05761.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05860 = phi ptr [ %i.hj, %vec.epilog.scalar.ph ], [ %.05860.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.hk = load i16, ptr %.05860, align 2, !tbaa !61
  store i16 %i.hk, ptr %.05068, align 2, !tbaa !61
  %i.hl = getelementptr inbounds nuw i8, ptr %.05761, i64 2
  %i.hm = load i16, ptr %.05761, align 2, !tbaa !61
  %i.hn = getelementptr inbounds nuw i8, ptr %.05068, i64 2
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !61
  %i.ho = getelementptr inbounds nuw i8, ptr %.05662, i64 2
  %i.hp = load i16, ptr %.05662, align 2, !tbaa !61
  %i.hq = getelementptr inbounds nuw i8, ptr %.05068, i64 4
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !61
  %i.hr = getelementptr inbounds nuw i8, ptr %.05563, i64 2
  %i.hs = load i16, ptr %.05563, align 2, !tbaa !61
  %i.ht = getelementptr inbounds nuw i8, ptr %.05068, i64 6
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !61
  %i.hu = getelementptr inbounds nuw i8, ptr %.05464, i64 2
  %i.hv = load i16, ptr %.05464, align 2, !tbaa !61
  %i.hw = getelementptr inbounds nuw i8, ptr %.05068, i64 8
  store i16 %i.hv, ptr %i.hw, align 2, !tbaa !61
  %i.hx = getelementptr inbounds nuw i8, ptr %.05365, i64 2
  %i.hy = load i16, ptr %.05365, align 2, !tbaa !61
  %i.hz = getelementptr inbounds nuw i8, ptr %.05068, i64 10
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !61
end_hunk_2
begin_hunk_3_@_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.36:bb.a
  %.1193.ph = phi ptr [ %.059.lcssa, %iter.check ], [ %.059.lcssa, %vector.memcheck ], [ %i.bf, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 6 uses
  %.161192.ph = phi ptr [ %.060.lcssa, %iter.check ], [ %.060.lcssa, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 3 uses
  %.163191.ph = phi i32 [ %.062.lcssa, %iter.check ], [ %.062.lcssa, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ] ; 4 uses
  %.165190.ph = phi ptr [ %.064.lcssa, %iter.check ], [ %.064.lcssa, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ] ; 3 uses
  %.167189.ph = phi ptr [ %.066.lcssa, %iter.check ], [ %.066.lcssa, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ] ; 3 uses
  %.169188.ph = phi ptr [ %.068.lcssa, %iter.check ], [ %.068.lcssa, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ] ; 3 uses
  %i.cc = sub i32 %i.as, %.163191.ph
  %.neg = add i32 %.163191.ph, 1
  %xtraiter = and i32 %i.cc, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph194.prol.loopexit, label %.lr.ph194.prol

.lr.ph194.prol:                                   ; preds = %.lr.ph194.preheader
  %i.cd = load i16, ptr %.1193.ph, align 2, !tbaa !61
  %i.ce = getelementptr inbounds nuw i8, ptr %.161192.ph, i64 2
  store i16 %i.cd, ptr %.161192.ph, align 2, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %.169188.ph, i64 2
  store i16 %i.cg, ptr %.169188.ph, align 2, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 4
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !61
  %i.ck = getelementptr inbounds nuw i8, ptr %.167189.ph, i64 2
  store i16 %i.cj, ptr %.167189.ph, align 2, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %.165190.ph, i64 2
  store i16 %i.cm, ptr %.165190.ph, align 2, !tbaa !61
  %i.co = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 8
  %i.cp = add nuw nsw i32 %.163191.ph, 1
  br label %.lr.ph194.prol.loopexit

.lr.ph194.prol.loopexit:                          ; preds = %.lr.ph194.prol, %.lr.ph194.preheader
  %.1193.unr = phi ptr [ %.1193.ph, %.lr.ph194.preheader ], [ %i.co, %.lr.ph194.prol ]
  %.161192.unr = phi ptr [ %.161192.ph, %.lr.ph194.preheader ], [ %i.ce, %.lr.ph194.prol ]
  %.163191.unr = phi i32 [ %.163191.ph, %.lr.ph194.preheader ], [ %i.cp, %.lr.ph194.prol ]
  %.165190.unr = phi ptr [ %.165190.ph, %.lr.ph194.preheader ], [ %i.cn, %.lr.ph194.prol ]
  %.167189.unr = phi ptr [ %.167189.ph, %.lr.ph194.preheader ], [ %i.ck, %.lr.ph194.prol ]
  %.169188.unr = phi ptr [ %.169188.ph, %.lr.ph194.preheader ], [ %i.ch, %.lr.ph194.prol ]
  %i.cq = icmp eq i32 %i.as, %.neg
  br i1 %i.cq, label %._crit_edge, label %.lr.ph194

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.059181 = phi ptr [ %i.de, %.lr.ph ], [ %i.x, %.noexc ] ; 3 uses
  %.060180 = phi ptr [ %i.df, %.lr.ph ], [ %i.ae, %.noexc ] ; 2 uses
  %.062179 = phi i32 [ %i.dj, %.lr.ph ], [ 0, %.noexc ]
  %.064178 = phi ptr [ %i.di, %.lr.ph ], [ %i.aq, %.noexc ] ; 2 uses
  %.066177 = phi ptr [ %i.dh, %.lr.ph ], [ %i.am, %.noexc ] ; 2 uses
  %.068176 = phi ptr [ %i.dg, %.lr.ph ], [ %i.ai, %.noexc ] ; 2 uses
  %i.cr = load <8 x i16>, ptr %.059181, align 1, !tbaa !56 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.059181, i64 16
  %i.ct = load <8 x i16>, ptr %i.cs, align 1, !tbaa !56 ; 2 uses
  %i.cu = shufflevector <8 x i16> %i.cr, <8 x i16> %i.ct, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %i.cv = bitcast <8 x i16> %i.cu to <2 x i64>
  %i.cw = shufflevector <8 x i16> %i.cr, <8 x i16> %i.ct, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.cx = bitcast <8 x i16> %i.cw to <2 x i64>
  %i.cy = extractelement <2 x i64> %i.cv, i64 0
  store i64 %i.cy, ptr %.060180, align 1, !tbaa !56
  %i.cz = bitcast <8 x i16> %i.cu to <2 x i64>
  %i.da = extractelement <2 x i64> %i.cz, i64 1
  store i64 %i.da, ptr %.068176, align 1, !tbaa !56
  %i.db = extractelement <2 x i64> %i.cx, i64 0
  store i64 %i.db, ptr %.066177, align 1, !tbaa !56
  %i.dc = bitcast <8 x i16> %i.cw to <2 x i64>
  %i.dd = extractelement <2 x i64> %i.dc, i64 1
  store i64 %i.dd, ptr %.064178, align 1, !tbaa !56
  %i.de = getelementptr inbounds nuw i8, ptr %.059181, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.060180, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.068176, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.066177, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.064178, i64 8 ; 2 uses
  %i.dj = add nuw nsw i32 %.062179, 4             ; 3 uses
  %i.dk = or disjoint i32 %i.dj, 3
  %i.dl = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph, label %.preheader, !llvm.loop !601

.lr.ph194:                                        ; preds = %.lr.ph194.prol.loopexit, %.lr.ph194
  %.1193 = phi ptr [ %i.ek, %.lr.ph194 ], [ %.1193.unr, %.lr.ph194.prol.loopexit ] ; 9 uses
  %.161192 = phi ptr [ %i.ea, %.lr.ph194 ], [ %.161192.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.163191 = phi i32 [ %i.el, %.lr.ph194 ], [ %.163191.unr, %.lr.ph194.prol.loopexit ]
  %.165190 = phi ptr [ %i.ej, %.lr.ph194 ], [ %.165190.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.167189 = phi ptr [ %i.eg, %.lr.ph194 ], [ %.167189.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.169188 = phi ptr [ %i.ed, %.lr.ph194 ], [ %.169188.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %i.dn = load i16, ptr %.1193, align 2, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %.161192, i64 2
  store i16 %i.dn, ptr %.161192, align 2, !tbaa !61
  %i.dp = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !61
  %i.dr = getelementptr inbounds nuw i8, ptr %.169188, i64 2
  store i16 %i.dq, ptr %.169188, align 2, !tbaa !61
  %i.ds = getelementptr inbounds nuw i8, ptr %.1193, i64 4
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %.167189, i64 2
  store i16 %i.dt, ptr %.167189, align 2, !tbaa !61
  %i.dv = getelementptr inbounds nuw i8, ptr %.1193, i64 6
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %.165190, i64 2
  store i16 %i.dw, ptr %.165190, align 2, !tbaa !61
  %i.dy = getelementptr inbounds nuw i8, ptr %.1193, i64 8
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !61
  %i.ea = getelementptr inbounds nuw i8, ptr %.161192, i64 4
  store i16 %i.dz, ptr %i.do, align 2, !tbaa !61
  %i.eb = getelementptr inbounds nuw i8, ptr %.1193, i64 10
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !61
  %i.ed = getelementptr inbounds nuw i8, ptr %.169188, i64 4
  store i16 %i.ec, ptr %i.dr, align 2, !tbaa !61
  %i.ee = getelementptr inbounds nuw i8, ptr %.1193, i64 12
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !61
  %i.eg = getelementptr inbounds nuw i8, ptr %.167189, i64 4
  store i16 %i.ef, ptr %i.du, align 2, !tbaa !61
  %i.eh = getelementptr inbounds nuw i8, ptr %.1193, i64 14
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !61
  %i.ej = getelementptr inbounds nuw i8, ptr %.165190, i64 4
  store i16 %i.ei, ptr %i.dx, align 2, !tbaa !61
  %i.ek = getelementptr inbounds nuw i8, ptr %.1193, i64 16
  %i.el = add nuw nsw i32 %.163191, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.el, %i.as
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph194, !llvm.loop !602

._crit_edge:                                      ; preds = %.lr.ph194.prol.loopexit, %.lr.ph194, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond206.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond206.not, label %._crit_edge197, label %.noexc

._crit_edge197:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge197, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.37(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not276 = icmp sgt i32 %i.k, %i.j
  br i1 %.not276, label %._crit_edge278.split, label %.noexc72.lr.ph

.noexc72.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !630 ; 24 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !630 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !630 ; 9 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 8 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !631 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !631 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !631 ; 3 uses
  %factor.op.mul293 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 6 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc72.preheader, label %._crit_edge278.split

.noexc72.preheader:                               ; preds = %.noexc72.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 5 uses
  %i.y = add nsw i32 %i.j, 1
  %i.z = mul i64 %i.s, %i.u                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = add nsw i64 %i.x, %i.ac
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = add nsw i32 %i.v, -1
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ae
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah  ; 2 uses
  %i.ak = mul i64 %i.s, %i.u                      ; 2 uses
  %i.al = mul i64 %i.n, %i.p                      ; 2 uses
  %i.am = shl nsw i64 %i.x, 3                     ; 15 uses
  %i.an = or disjoint i64 %i.am, 7
  %i.ao = mul i64 %i.al, %i.an
  %scevgep301 = getelementptr i8, ptr %i.l, i64 %i.ao
  %i.ap = shl nuw nsw i64 %i.ac, 3                ; 8 uses
  %i.aq = add nsw i64 %i.am, %i.ap
  %i.ar = or disjoint i64 %i.aq, 7
  %i.as = mul i64 %i.al, %i.ar
  %i.at = shl nuw nsw i64 %i.ag, 1                ; 8 uses
  %i.au = getelementptr i8, ptr %i.l, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 %i.at
  %i.aw = mul i64 %i.n, %i.p                      ; 3 uses
  %6 = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %7 = insertelement <2 x i64> %6, i64 %i.ak, i64 1
  %8 = shl <2 x i64> %7, <i64 3, i64 0>
  %i.ax = or disjoint i64 %i.am, 6
  %i.ay = mul i64 %i.aw, %i.ax
  %scevgep303 = getelementptr i8, ptr %i.l, i64 %i.ay
  %i.az = add nsw i64 %i.am, %i.ap
  %i.ba = or disjoint i64 %i.az, 6
  %i.bb = mul i64 %i.aw, %i.ba
  %i.bc = getelementptr i8, ptr %i.l, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.at
  %i.be = mul i64 %i.n, %i.p                      ; 2 uses
  %i.bf = or disjoint i64 %i.am, 5
  %i.bg = mul i64 %i.be, %i.bf
  %scevgep305 = getelementptr i8, ptr %i.l, i64 %i.bg
  %i.bh = add nsw i64 %i.am, %i.ap
  %i.bi = or disjoint i64 %i.bh, 5
  %i.bj = mul i64 %i.be, %i.bi
  %i.bk = getelementptr i8, ptr %i.l, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.at
  %i.bm = mul i64 %i.n, %i.p                      ; 2 uses
  %i.bn = or disjoint i64 %i.am, 4
  %i.bo = mul i64 %i.bm, %i.bn
  %scevgep307 = getelementptr i8, ptr %i.l, i64 %i.bo
  %i.bp = add nsw i64 %i.am, %i.ap
  %i.bq = or disjoint i64 %i.bp, 4
  %i.br = mul i64 %i.bm, %i.bq
  %i.bs = getelementptr i8, ptr %i.l, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.at
  %i.bu = mul i64 %i.n, %i.p                      ; 2 uses
  %i.bv = or disjoint i64 %i.am, 3
  %i.bw = mul i64 %i.bu, %i.bv
  %scevgep309 = getelementptr i8, ptr %i.l, i64 %i.bw
  %i.bx = add nsw i64 %i.am, %i.ap
  %i.by = or disjoint i64 %i.bx, 3
  %i.bz = mul i64 %i.bu, %i.by
  %i.ca = getelementptr i8, ptr %i.l, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.at
  %i.cc = mul i64 %i.n, %i.p                      ; 2 uses
  %i.cd = or disjoint i64 %i.am, 2
  %i.ce = mul i64 %i.cc, %i.cd
  %scevgep311 = getelementptr i8, ptr %i.l, i64 %i.ce
  %i.cf = add nsw i64 %i.am, %i.ap
  %i.cg = or disjoint i64 %i.cf, 2
  %i.ch = mul i64 %i.cc, %i.cg
  %i.ci = getelementptr i8, ptr %i.l, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.at
  %i.ck = mul i64 %i.n, %i.p                      ; 2 uses
  %i.cl = or disjoint i64 %i.am, 1
  %i.cm = mul i64 %i.ck, %i.cl
  %scevgep313 = getelementptr i8, ptr %i.l, i64 %i.cm
  %i.cn = add nsw i64 %i.am, %i.ap
  %i.co = or disjoint i64 %i.cn, 1
  %i.cp = mul i64 %i.ck, %i.co
  %i.cq = getelementptr i8, ptr %i.l, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.at
  %i.cs = insertelement <8 x ptr> poison, ptr %i.av, i64 0
  %i.ct = insertelement <8 x ptr> %i.cs, ptr %i.aj, i64 1
  %i.cu = insertelement <8 x ptr> %i.ct, ptr %i.bl, i64 2
  %i.cv = insertelement <8 x ptr> %i.cu, ptr %i.cb, i64 3
  %i.cw = insertelement <8 x ptr> %i.cv, ptr %i.cr, i64 4
  %i.cx = shufflevector <8 x ptr> %i.cw, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 3, i32 1, i32 4, i32 1>
  %i.cy = getelementptr i8, <8 x ptr> %i.cx, <8 x i64> <i64 2, i64 16, i64 2, i64 16, i64 2, i64 16, i64 2, i64 16>
  %i.cz = mul i64 %i.n, %i.p                      ; 2 uses
  %i.da = mul i64 %i.cz, %i.x
  %i.db = shl i64 %i.da, 3
  %scevgep315 = getelementptr i8, ptr %i.l, i64 %i.db
  %i.dc = add nsw i64 %i.am, %i.ap
  %i.dd = mul i64 %i.cz, %i.dc
  %i.de = getelementptr i8, ptr %i.l, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 %i.at
  %i.dg = insertelement <8 x ptr> poison, ptr %i.aj, i64 0
  %i.dh = insertelement <8 x ptr> %i.dg, ptr %i.bd, i64 1
  %i.di = insertelement <8 x ptr> %i.dh, ptr %i.bt, i64 2
  %i.dj = insertelement <8 x ptr> %i.di, ptr %i.cj, i64 3
  %i.dk = insertelement <8 x ptr> %i.dj, ptr %i.df, i64 4
  %i.dl = shufflevector <8 x ptr> %i.dk, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 2, i32 0, i32 3, i32 0, i32 4>
  %i.dm = getelementptr i8, <8 x ptr> %i.dl, <8 x i64> <i64 16, i64 2, i64 16, i64 2, i64 16, i64 2, i64 16, i64 2>
  %i.dn = zext nneg i32 %i.v to i64               ; 5 uses
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <8 x i32> zeroinitializer
  %i.do = insertelement <8 x i64> poison, i64 %i.ak, i64 0
  %10 = shufflevector <8 x i64> %i.do, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.dp = insertelement <8 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %scevgep303, i64 1
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %scevgep307, i64 3
  %i.ds = insertelement <8 x ptr> %i.dr, ptr %scevgep311, i64 5
  %i.dt = insertelement <8 x ptr> %i.ds, ptr %scevgep315, i64 7
  %i.du = shufflevector <8 x ptr> %i.dt, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.dv = shufflevector <8 x ptr> %i.dp, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.dw = insertelement <8 x ptr> %i.dv, ptr %scevgep301, i64 0
  %i.dx = insertelement <8 x ptr> %i.dw, ptr %scevgep305, i64 2
  %i.dy = insertelement <8 x ptr> %i.dx, ptr %scevgep309, i64 4
  %i.dz = insertelement <8 x ptr> %i.dy, ptr %scevgep313, i64 6
  %min.iters.check = icmp ult i32 %i.v, 8
  %i.ea = icmp ult <8 x ptr> %i.du, %i.cy
  %i.eb = icmp ult <8 x ptr> %i.dz, %i.dm
  %i.ec = or <8 x i64> %9, %10
  %i.ed = and <8 x i1> %i.eb, %i.ea
  %i.ee = icmp slt <8 x i64> %i.ec, zeroinitializer
  %rdx.op = or <8 x i1> %i.ee, %i.ed
  %i.ef = bitcast <8 x i1> %rdx.op to i8
  %.not = icmp eq i8 %i.ef, 0
  %min.iters.check359 = icmp ult i32 %i.v, 32
  %i.eg = and i64 %i.dn, 24
  %n.vec = and i64 %i.dn, 2147483616              ; 6 uses
  %i.eh = trunc nuw nsw i64 %n.vec to i32
  %i.ei = shl nuw nsw i64 %n.vec, 4
  %i.ej = shl nuw nsw i64 %n.vec, 1               ; 8 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dn
  %min.epilog.iters.check = icmp eq i64 %i.eg, 0
  %n.vec384 = and i64 %i.dn, 2147483640           ; 5 uses
  %i.ek = trunc nuw nsw i64 %n.vec384 to i32
  %i.el = shl nuw nsw i64 %n.vec384, 4
  %i.em = shl nuw nsw i64 %n.vec384, 1            ; 8 uses
  %cmp.n405 = icmp eq i64 %n.vec384, %i.dn
  br label %iter.check

iter.check:                                       ; preds = %.noexc72.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc72.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.en = shl nsw i64 %indvars.iv, 3              ; 8 uses
  %.reass = mul i64 %factor.op.mul, %i.en
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 6 uses
  %i.ep = or disjoint i64 %i.en, 1
  %.reass280 = mul i64 %factor.op.mul, %i.ep
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass280 ; 6 uses
  %i.er = or disjoint i64 %i.en, 2
  %.reass282 = mul i64 %factor.op.mul, %i.er
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass282 ; 6 uses
  %i.et = or disjoint i64 %i.en, 3
  %.reass284 = mul i64 %factor.op.mul, %i.et
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass284 ; 6 uses
  %i.ev = or disjoint i64 %i.en, 4
  %.reass286 = mul i64 %factor.op.mul, %i.ev
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass286 ; 6 uses
  %i.ex = or disjoint i64 %i.en, 5
  %.reass288 = mul i64 %factor.op.mul, %i.ex
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass288 ; 6 uses
  %i.ez = or disjoint i64 %i.en, 6
  %.reass290 = mul i64 %factor.op.mul, %i.ez
  %i.fa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass290 ; 6 uses
  %i.fb = or disjoint i64 %i.en, 7
  %.reass292 = mul i64 %factor.op.mul, %i.fb
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass292 ; 6 uses
  %.reass294 = mul i64 %factor.op.mul293, %indvars.iv
  %i.fd = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass294 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  br i1 %.not, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check359, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ei
  %i.ff = getelementptr i8, ptr %i.fc, i64 %i.ej
  %i.fg = getelementptr i8, ptr %i.fa, i64 %i.ej
  %i.fh = getelementptr i8, ptr %i.ey, i64 %i.ej
  %i.fi = getelementptr i8, ptr %i.ew, i64 %i.ej
  %i.fj = getelementptr i8, ptr %i.eu, i64 %i.ej
  %i.fk = getelementptr i8, ptr %i.es, i64 %i.ej
  %i.fl = getelementptr i8, ptr %i.eq, i64 %i.ej
  %i.fm = getelementptr i8, ptr %i.eo, i64 %i.ej
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fn = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fd, i64 %i.fn
  %i.fo = shl i64 %index, 1                       ; 8 uses
  %next.gep360 = getelementptr i8, ptr %i.fc, i64 %i.fo
  %next.gep361 = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep362 = getelementptr i8, ptr %i.ey, i64 %i.fo
  %next.gep363 = getelementptr i8, ptr %i.ew, i64 %i.fo
  %next.gep364 = getelementptr i8, ptr %i.eu, i64 %i.fo
  %next.gep365 = getelementptr i8, ptr %i.es, i64 %i.fo
  %next.gep366 = getelementptr i8, ptr %i.eq, i64 %i.fo
  %next.gep367 = getelementptr i8, ptr %i.eo, i64 %i.fo
  %wide.load = load <32 x i16>, ptr %next.gep367, align 2, !tbaa !61, !alias.scope !632
  %wide.load368 = load <32 x i16>, ptr %next.gep366, align 2, !tbaa !61, !alias.scope !633
  %wide.load369 = load <32 x i16>, ptr %next.gep365, align 2, !tbaa !61, !alias.scope !634
  %wide.load370 = load <32 x i16>, ptr %next.gep364, align 2, !tbaa !61, !alias.scope !635
  %wide.load371 = load <32 x i16>, ptr %next.gep363, align 2, !tbaa !61, !alias.scope !636
  %wide.load372 = load <32 x i16>, ptr %next.gep362, align 2, !tbaa !61, !alias.scope !637
  %wide.load373 = load <32 x i16>, ptr %next.gep361, align 2, !tbaa !61, !alias.scope !638
  %wide.load374 = load <32 x i16>, ptr %next.gep360, align 2, !tbaa !61, !alias.scope !639
  %i.fp = shufflevector <32 x i16> %wide.load, <32 x i16> %wide.load368, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fq = shufflevector <32 x i16> %wide.load369, <32 x i16> %wide.load370, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fr = shufflevector <32 x i16> %wide.load371, <32 x i16> %wide.load372, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fs = shufflevector <32 x i16> %wide.load373, <32 x i16> %wide.load374, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ft = shufflevector <64 x i16> %i.fp, <64 x i16> %i.fq, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.fu = shufflevector <64 x i16> %i.fr, <64 x i16> %i.fs, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %interleaved.vec = shufflevector <128 x i16> %i.ft, <128 x i16> %i.fu, <256 x i32> <i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 1, i32 33, i32 65, i32 97, i32 129, i32 161, i32 193, i32 225, i32 2, i32 34, i32 66, i32 98, i32 130, i32 162, i32 194, i32 226, i32 3, i32 35, i32 67, i32 99, i32 131, i32 163, i32 195, i32 227, i32 4, i32 36, i32 68, i32 100, i32 132, i32 164, i32 196, i32 228, i32 5, i32 37, i32 69, i32 101, i32 133, i32 165, i32 197, i32 229, i32 6, i32 38, i32 70, i32 102, i32 134, i32 166, i32 198, i32 230, i32 7, i32 39, i32 71, i32 103, i32 135, i32 167, i32 199, i32 231, i32 8, i32 40, i32 72, i32 104, i32 136, i32 168, i32 200, i32 232, i32 9, i32 41, i32 73, i32 105, i32 137, i32 169, i32 201, i32 233, i32 10, i32 42, i32 74, i32 106, i32 138, i32 170, i32 202, i32 234, i32 11, i32 43, i32 75, i32 107, i32 139, i32 171, i32 203, i32 235, i32 12, i32 44, i32 76, i32 108, i32 140, i32 172, i32 204, i32 236, i32 13, i32 45, i32 77, i32 109, i32 141, i32 173, i32 205, i32 237, i32 14, i32 46, i32 78, i32 110, i32 142, i32 174, i32 206, i32 238, i32 15, i32 47, i32 79, i32 111, i32 143, i32 175, i32 207, i32 239, i32 16, i32 48, i32 80, i32 112, i32 144, i32 176, i32 208, i32 240, i32 17, i32 49, i32 81, i32 113, i32 145, i32 177, i32 209, i32 241, i32 18, i32 50, i32 82, i32 114, i32 146, i32 178, i32 210, i32 242, i32 19, i32 51, i32 83, i32 115, i32 147, i32 179, i32 211, i32 243, i32 20, i32 52, i32 84, i32 116, i32 148, i32 180, i32 212, i32 244, i32 21, i32 53, i32 85, i32 117, i32 149, i32 181, i32 213, i32 245, i32 22, i32 54, i32 86, i32 118, i32 150, i32 182, i32 214, i32 246, i32 23, i32 55, i32 87, i32 119, i32 151, i32 183, i32 215, i32 247, i32 24, i32 56, i32 88, i32 120, i32 152, i32 184, i32 216, i32 248, i32 25, i32 57, i32 89, i32 121, i32 153, i32 185, i32 217, i32 249, i32 26, i32 58, i32 90, i32 122, i32 154, i32 186, i32 218, i32 250, i32 27, i32 59, i32 91, i32 123, i32 155, i32 187, i32 219, i32 251, i32 28, i32 60, i32 92, i32 124, i32 156, i32 188, i32 220, i32 252, i32 29, i32 61, i32 93, i32 125, i32 157, i32 189, i32 221, i32 253, i32 30, i32 62, i32 94, i32 126, i32 158, i32 190, i32 222, i32 254, i32 31, i32 63, i32 95, i32 127, i32 159, i32 191, i32 223, i32 255>
  store <256 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !61, !alias.scope !640, !noalias !641
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fw = getelementptr i8, ptr %i.fd, i64 %i.el
  %i.fx = getelementptr i8, ptr %i.fc, i64 %i.em
  %i.fy = getelementptr i8, ptr %i.fa, i64 %i.em
  %i.fz = getelementptr i8, ptr %i.ey, i64 %i.em
  %i.ga = getelementptr i8, ptr %i.ew, i64 %i.em
  %i.gb = getelementptr i8, ptr %i.eu, i64 %i.em
  %i.gc = getelementptr i8, ptr %i.es, i64 %i.em
  %i.gd = getelementptr i8, ptr %i.eq, i64 %i.em
  %i.ge = getelementptr i8, ptr %i.eo, i64 %i.em
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index385 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next404, %vec.epilog.vector.body ] ; 3 uses
  %i.gf = shl i64 %index385, 4
  %next.gep386 = getelementptr i8, ptr %i.fd, i64 %i.gf
  %i.gg = shl i64 %index385, 1                    ; 8 uses
  %next.gep387 = getelementptr i8, ptr %i.fc, i64 %i.gg
  %next.gep388 = getelementptr i8, ptr %i.fa, i64 %i.gg
  %next.gep389 = getelementptr i8, ptr %i.ey, i64 %i.gg
  %next.gep390 = getelementptr i8, ptr %i.ew, i64 %i.gg
  %next.gep391 = getelementptr i8, ptr %i.eu, i64 %i.gg
  %next.gep392 = getelementptr i8, ptr %i.es, i64 %i.gg
  %next.gep393 = getelementptr i8, ptr %i.eq, i64 %i.gg
  %next.gep394 = getelementptr i8, ptr %i.eo, i64 %i.gg
  %wide.load395 = load <8 x i16>, ptr %next.gep394, align 2, !tbaa !61, !alias.scope !632
  %wide.load396 = load <8 x i16>, ptr %next.gep393, align 2, !tbaa !61, !alias.scope !633
  %wide.load397 = load <8 x i16>, ptr %next.gep392, align 2, !tbaa !61, !alias.scope !634
  %wide.load398 = load <8 x i16>, ptr %next.gep391, align 2, !tbaa !61, !alias.scope !635
  %wide.load399 = load <8 x i16>, ptr %next.gep390, align 2, !tbaa !61, !alias.scope !636
  %wide.load400 = load <8 x i16>, ptr %next.gep389, align 2, !tbaa !61, !alias.scope !637
  %wide.load401 = load <8 x i16>, ptr %next.gep388, align 2, !tbaa !61, !alias.scope !638
  %wide.load402 = load <8 x i16>, ptr %next.gep387, align 2, !tbaa !61, !alias.scope !639
  %i.gh = shufflevector <8 x i16> %wide.load395, <8 x i16> %wide.load396, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gi = shufflevector <8 x i16> %wide.load397, <8 x i16> %wide.load398, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gj = shufflevector <8 x i16> %wide.load399, <8 x i16> %wide.load400, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gk = shufflevector <8 x i16> %wide.load401, <8 x i16> %wide.load402, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gl = shufflevector <16 x i16> %i.gh, <16 x i16> %i.gi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gm = shufflevector <16 x i16> %i.gj, <16 x i16> %i.gk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec403 = shufflevector <32 x i16> %i.gl, <32 x i16> %i.gm, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec403, ptr %next.gep386, align 2, !tbaa !61, !alias.scope !640, !noalias !641
  %index.next404 = add nuw i64 %index385, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next404, %n.vec384
  br i1 %i.gn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !628

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n405, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0275.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.eh, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ]
  %.050274.ph = phi ptr [ %i.fd, %iter.check ], [ %i.fd, %vector.memcheck ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fw, %vec.epilog.middle.block ]
  %.051273.ph = phi ptr [ %i.fc, %iter.check ], [ %i.fc, %vector.memcheck ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fx, %vec.epilog.middle.block ]
  %.052272.ph = phi ptr [ %i.fa, %iter.check ], [ %i.fa, %vector.memcheck ], [ %i.fg, %vec.epilog.iter.check ], [ %i.fy, %vec.epilog.middle.block ]
  %.053271.ph = phi ptr [ %i.ey, %iter.check ], [ %i.ey, %vector.memcheck ], [ %i.fh, %vec.epilog.iter.check ], [ %i.fz, %vec.epilog.middle.block ]
  %.054270.ph = phi ptr [ %i.ew, %iter.check ], [ %i.ew, %vector.memcheck ], [ %i.fi, %vec.epilog.iter.check ], [ %i.ga, %vec.epilog.middle.block ]
  %.055269.ph = phi ptr [ %i.eu, %iter.check ], [ %i.eu, %vector.memcheck ], [ %i.fj, %vec.epilog.iter.check ], [ %i.gb, %vec.epilog.middle.block ]
  %.056268.ph = phi ptr [ %i.es, %iter.check ], [ %i.es, %vector.memcheck ], [ %i.fk, %vec.epilog.iter.check ], [ %i.gc, %vec.epilog.middle.block ]
  %.057267.ph = phi ptr [ %i.eq, %iter.check ], [ %i.eq, %vector.memcheck ], [ %i.fl, %vec.epilog.iter.check ], [ %i.gd, %vec.epilog.middle.block ]
  %.058266.ph = phi ptr [ %i.eo, %iter.check ], [ %i.eo, %vector.memcheck ], [ %i.fm, %vec.epilog.iter.check ], [ %i.ge, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0275 = phi i32 [ %i.hm, %vec.epilog.scalar.ph ], [ %.0275.ph, %vec.epilog.scalar.ph.preheader ]
  %.050274 = phi ptr [ %i.hl, %vec.epilog.scalar.ph ], [ %.050274.ph, %vec.epilog.scalar.ph.preheader ] ; 9 uses
  %.051273 = phi ptr [ %i.hi, %vec.epilog.scalar.ph ], [ %.051273.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.052272 = phi ptr [ %i.hf, %vec.epilog.scalar.ph ], [ %.052272.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.053271 = phi ptr [ %i.hc, %vec.epilog.scalar.ph ], [ %.053271.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.054270 = phi ptr [ %i.gz, %vec.epilog.scalar.ph ], [ %.054270.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.055269 = phi ptr [ %i.gw, %vec.epilog.scalar.ph ], [ %.055269.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.056268 = phi ptr [ %i.gt, %vec.epilog.scalar.ph ], [ %.056268.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.057267 = phi ptr [ %i.gq, %vec.epilog.scalar.ph ], [ %.057267.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.058266 = phi ptr [ %i.go, %vec.epilog.scalar.ph ], [ %.058266.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.058266, i64 2
  %i.gp = load i16, ptr %.058266, align 2, !tbaa !61
  store i16 %i.gp, ptr %.050274, align 2, !tbaa !61
  %i.gq = getelementptr inbounds nuw i8, ptr %.057267, i64 2
  %i.gr = load i16, ptr %.057267, align 2, !tbaa !61
  %i.gs = getelementptr inbounds nuw i8, ptr %.050274, i64 2
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !61
  %i.gt = getelementptr inbounds nuw i8, ptr %.056268, i64 2
  %i.gu = load i16, ptr %.056268, align 2, !tbaa !61
  %i.gv = getelementptr inbounds nuw i8, ptr %.050274, i64 4
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !61
  %i.gw = getelementptr inbounds nuw i8, ptr %.055269, i64 2
  %i.gx = load i16, ptr %.055269, align 2, !tbaa !61
  %i.gy = getelementptr inbounds nuw i8, ptr %.050274, i64 6
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !61
  %i.gz = getelementptr inbounds nuw i8, ptr %.054270, i64 2
  %i.ha = load i16, ptr %.054270, align 2, !tbaa !61
  %i.hb = getelementptr inbounds nuw i8, ptr %.050274, i64 8
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !61
  %i.hc = getelementptr inbounds nuw i8, ptr %.053271, i64 2
  %i.hd = load i16, ptr %.053271, align 2, !tbaa !61
  %i.he = getelementptr inbounds nuw i8, ptr %.050274, i64 10
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !61
end_hunk_3
