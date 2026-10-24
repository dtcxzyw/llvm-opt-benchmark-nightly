Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Colors?download=true
inline.NumInlined: 6654
inline.NumDeleted: 2190
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZZZN3tev18toLinearSrgbPremulIfEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEibENKUlmE_clEmENKUlTyiE_clIN5xsimd5batchIfNSN_4sse2EEEEEDai:bb.a
  %i.bq = fmul <4 x float> %i.af, %i.bp
  %i.br = fadd <4 x float> %i.bc, %i.bq
  %i.bs = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bt = fmul <4 x float> %i.ae, %i.bs
  %i.bu = fadd <4 x float> %i.bh, %i.bt
  store <4 x float> %i.bu, ptr %3, align 16, !alias.scope !1566
  %i.bv = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bw = fmul <4 x float> %i.ae, %i.bv
  %i.bx = fadd <4 x float> %i.bm, %i.bw
  store <4 x float> %i.bx, ptr %i.an, align 16, !alias.scope !1566
  %i.by = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bz = fmul <4 x float> %i.ae, %i.by
  %i.ca = fadd <4 x float> %i.bz, %i.br
  store <4 x float> %i.ca, ptr %i.ao, align 16, !alias.scope !1566
  call void @_ZN3tev8ituth27314invTransferRgbIN5xsimd5batchIfNS2_4sse2EEEEEN7nanogui5ArrayIT_Lm3EEENS0_9ETransferERKS9_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Array.399") align 16 %2, i8 noundef zeroext %i.ak, ptr noundef nonnull align 16 dereferenceable(48) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !423, !nonnull !112, !align !166
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !93 ; 2 uses
  %.not63 = icmp eq i64 %i.cd, 0
  br i1 %.not63, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !424, !nonnull !112, !align !166 ; 3 uses
  %i.cg = sext i32 %1 to i64                      ; 4 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !408
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !122
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !122
  %i.cn = sext i32 %i.cm to i64                   ; 4 uses
  %i.co = mul nsw i64 %i.cn, %i.cg
  %i.cp = add nsw i64 %i.cg, 1
  %i.cq = mul nsw i64 %i.cp, %i.cn
  %i.cr = add nsw i64 %i.cg, 2
  %i.cs = mul nsw i64 %i.cr, %i.cn
  %i.ct = add nsw i64 %i.cg, 3
  %i.cu = mul nsw i64 %i.ct, %i.cn
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01257 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %bb.b ] ; 3 uses
  %i.cv = mul i64 %.01257, %i.k
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.h, i64 %i.cv ; 4 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.o
  %i.cw = load float, ptr %gep.i, align 4, !tbaa !59
  %.sroa.0.0.vec.insert.i = insertelement <4 x float> poison, float %i.cw, i64 0
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.q
  %i.cx = load float, ptr %gep.1.i, align 4, !tbaa !59
  %.sroa.0.4.vec.insert.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i, float %i.cx, i64 1
  %gep.2.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.s
  %i.cy = load float, ptr %gep.2.i, align 4, !tbaa !59
  %.sroa.0.8.vec.insert.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i, float %i.cy, i64 2
  %gep.3.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u
  %i.cz = load float, ptr %gep.3.i, align 4, !tbaa !59
  %.sroa.0.12.vec.insert.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i, float %i.cz, i64 3
  %i.da = fmul <4 x float> %.sroa.0.12.vec.insert.i, %i.z
  %i.db = fadd <4 x float> %i.da, %i.ad
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.01257
  store <4 x float> %i.db, ptr %i.dc, align 16
  %i.dd = add nuw nsw i64 %.01257, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !1564

._crit_edge61:                                    ; preds = %bb.c, %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !425, !nonnull !112, !align !274
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !61
  %.not = icmp eq i32 %i.dg, 3
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph60, %bb.c
  %.058 = phi i64 [ 0, %.lr.ph60 ], [ %i.dk, %bb.c ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.058
  %i.di = load <4 x float>, ptr %i.dh, align 16, !tbaa !88 ; 4 uses
  %i.dj = mul i64 %.058, %i.ck
  %invariant.gep.i14 = getelementptr [4 x i8], ptr %i.ch, i64 %i.dj ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.di, i64 0
  %gep.i15 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.co
  store float %.sroa.0.0.vec.extract.i, ptr %gep.i15, align 4, !tbaa !59
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.di, i64 1
  %gep.1.i16 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cq
  store float %.sroa.0.4.vec.extract.i, ptr %gep.1.i16, align 4, !tbaa !59
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.di, i64 2
  %gep.2.i17 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cs
  store float %.sroa.0.8.vec.extract.i, ptr %gep.2.i17, align 4, !tbaa !59
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.di, i64 3
  %gep.3.i18 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cu
  store float %.sroa.0.12.vec.extract.i, ptr %gep.3.i18, align 4, !tbaa !59
  %i.dk = add nuw nsw i64 %.058, 1                ; 2 uses
  %exitcond64.not = icmp eq i64 %i.dk, %i.cd
  br i1 %exitcond64.not, label %._crit_edge61, label %bb.c, !llvm.loop !1565

bb.d:                                             ; preds = %._crit_edge61
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !424, !nonnull !112, !align !166 ; 3 uses
  %i.dn = sext i32 %1 to i64                      ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !416, !nonnull !112, !align !166 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !408
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !122
  %i.dt = sext i32 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !122
  %i.dx = sext i32 %i.dw to i64                   ; 4 uses
  %invariant.gep.i19 = getelementptr [4 x i8], ptr %i.dq, i64 %i.du ; 4 uses
  %i.dy = mul nsw i64 %i.dx, %i.dn
  %gep.i20 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.dy
  %i.dz = load float, ptr %gep.i20, align 4, !tbaa !59
  %i.ea = add nsw i64 %i.dn, 1                    ; 2 uses
  %i.eb = mul nsw i64 %i.ea, %i.dx
  %gep.1.i22 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.eb
  %i.ec = load float, ptr %gep.1.i22, align 4, !tbaa !59
  %i.ed = add nsw i64 %i.dn, 2                    ; 2 uses
  %i.ee = mul nsw i64 %i.ed, %i.dx
  %gep.2.i24 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.ee
  %i.ef = load float, ptr %gep.2.i24, align 4, !tbaa !59
  %i.eg = add nsw i64 %i.dn, 3                    ; 2 uses
  %i.eh = mul nsw i64 %i.eg, %i.dx
  %gep.3.i26 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.eh
  %i.ei = load float, ptr %gep.3.i26, align 4, !tbaa !59
  %i.ej = load ptr, ptr %i.dm, align 8, !tbaa !408
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !122
  %i.em = sext i32 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !122
  %i.eq = sext i32 %i.ep to i64                   ; 4 uses
  %invariant.gep.i28 = getelementptr [4 x i8], ptr %i.ej, i64 %i.en ; 4 uses
  %i.er = mul nsw i64 %i.eq, %i.dn
  %gep.i30 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.er
  store float %i.dz, ptr %gep.i30, align 4, !tbaa !59
  %i.es = mul nsw i64 %i.ea, %i.eq
  %gep.1.i32 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.es
  store float %i.ec, ptr %gep.1.i32, align 4, !tbaa !59
  %i.et = mul nsw i64 %i.ed, %i.eq
  %gep.2.i34 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.et
  store float %i.ef, ptr %gep.2.i34, align 4, !tbaa !59
  %i.eu = mul nsw i64 %i.eg, %i.eq
  %gep.3.i36 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.eu
  store float %i.ei, ptr %gep.3.i36, align 4, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev18toLinearSrgbPremulIfEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEibENKUlmE_clEmENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.31", align 8 ; 19 uses
  %3 = alloca %"struct.nanogui::Array.31", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !59
  %i.c = load ptr, ptr %0, align 8, !tbaa !415, !nonnull !112, !align !166
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93   ; 7 uses
  %.not26 = icmp eq i64 %i.d, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416, !nonnull !112, !align !166 ; 3 uses
  %i.g = sext i32 %1 to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !408
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !122  ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !122
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, %i.g
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !417, !nonnull !112, !align !274 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !419 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !420 ; 9 uses
  %min.iters.check = icmp ugt i64 %i.d, 3
  %ident.check.not = icmp eq i32 %i.j, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %index
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !59 ; 4 uses
  %i.w = extractelement <4 x float> %wide.load, i64 0
  %i.x = tail call float @llvm.fma.f32(float %i.w, float %i.s, float %i.u)
  %i.y = extractelement <4 x float> %wide.load, i64 1
  %i.z = tail call float @llvm.fma.f32(float %i.y, float %i.s, float %i.u)
  %i.aa = extractelement <4 x float> %wide.load, i64 2
  %i.ab = tail call float @llvm.fma.f32(float %i.aa, float %i.s, float %i.u)
  %i.ac = extractelement <4 x float> %wide.load, i64 3
  %i.ad = tail call float @llvm.fma.f32(float %i.ac, float %i.s, float %i.u)
  %i.ae = insertelement <4 x float> poison, float %i.x, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ab, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.ah, ptr %i.ai, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1567

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01721.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01721.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.01721.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = mul i64 %.01721.prol, %i.k
  %i.al = getelementptr [4 x i8], ptr %i.p, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !59
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.s, float %i.u)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01721.prol
  store float %i.an, ptr %i.ao, align 4, !tbaa !59
  %i.ap = add nuw nsw i64 %.01721.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1568

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01721.unr = phi i64 [ %.01721.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = sub i64 %.01721.ph, %i.d
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.loopexit, label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load float, ptr %2, align 8, !tbaa !59
  %.pre29 = load float, ptr %i.a, align 4, !tbaa !59
  %.pre30 = load float, ptr %i.b, align 8, !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.as = phi float [ %.pre30, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.at = phi float [ %.pre29, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.au = phi float [ %.pre, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !421, !nonnull !112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !422, !nonnull !112, !align !274 ; 9 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !59
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.bb, float %i.au, float 0.000000e+00)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !59
  %i.bf = tail call noundef float @llvm.fma.f32(float %i.be, float %i.au, float 0.000000e+00)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !59
  %i.bi = tail call noundef float @llvm.fma.f32(float %i.bh, float %i.au, float 0.000000e+00)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !59
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bk, float %i.at, float %i.bc)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !59
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bn, float %i.at, float %i.bf)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !59
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.at, float %i.bi)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !59
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.as, float %i.bl)
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !59
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float %i.as, float %i.bo)
  %.sroa.0.4.vec.insert35.i = insertelement <2 x float> %i.bv, float %i.by, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !59
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float %i.as, float %i.br)
  store <2 x float> %.sroa.0.4.vec.insert35.i, ptr %3, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cb, ptr %.sroa.27.0..sroa_idx, align 8
  %i.cc = call { <2 x float>, float } @_ZN3tev8ituth27314invTransferRgbIfEEN7nanogui5ArrayIT_Lm3EEENS0_9ETransferERKS5_(i8 noundef zeroext %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %3) #31 ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.cc, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.cc, 1
  store <2 x float> %.fca.0.extract, ptr %2, align 8
  store float %.fca.1.extract, ptr %i.b, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !423, !nonnull !112, !align !166
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !93 ; 7 uses
  %.not27 = icmp eq i64 %i.cf, 0
  br i1 %.not27, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !424, !nonnull !112, !align !166 ; 3 uses
  %i.ci = sext i32 %1 to i64
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !408
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !122 ; 2 uses
  %i.cm = sext i32 %i.cl to i64                   ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !122
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cp, %i.ci
  %i.cr = getelementptr [4 x i8], ptr %i.cj, i64 %i.cq ; 6 uses
  %min.iters.check35 = icmp ugt i64 %i.cf, 7
  %ident.check33.not = icmp eq i32 %i.cl, 1
  %or.cond46 = select i1 %min.iters.check35, i1 %ident.check33.not, i1 false
  br i1 %or.cond46, label %vector.ph36, label %scalar.ph34.preheader

vector.ph36:                                      ; preds = %.lr.ph24
  %n.vec37 = and i64 %i.cf, -8                    ; 3 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index39 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load40 = load <4 x float>, ptr %i.cs, align 8, !tbaa !59
  %wide.load41 = load <4 x float>, ptr %i.ct, align 8, !tbaa !59
  %i.cu = getelementptr [4 x i8], ptr %i.cr, i64 %index39 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  store <4 x float> %wide.load40, ptr %i.cu, align 4, !tbaa !59
  store <4 x float> %wide.load41, ptr %i.cv, align 4, !tbaa !59
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.cw = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.cw, label %middle.block43, label %vector.body38, !llvm.loop !1569

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %i.cf, %n.vec37
  br i1 %cmp.n44, label %._crit_edge25, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph24, %middle.block43
  %.022.ph = phi i64 [ 0, %.lr.ph24 ], [ %n.vec37, %middle.block43 ] ; 3 uses
  %xtraiter47 = and i64 %i.cf, 3                  ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol

scalar.ph34.prol:                                 ; preds = %scalar.ph34.preheader, %scalar.ph34.prol
  %.022.prol = phi i64 [ %i.db, %scalar.ph34.prol ], [ %.022.ph, %scalar.ph34.preheader ] ; 3 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %scalar.ph34.prol ], [ 0, %scalar.ph34.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.022.prol
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !59
  %i.cz = mul i64 %.022.prol, %i.cm
  %i.da = getelementptr [4 x i8], ptr %i.cr, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !59
  %i.db = add nuw nsw i64 %.022.prol, 1           ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol, !llvm.loop !1570

scalar.ph34.prol.loopexit:                        ; preds = %scalar.ph34.prol, %scalar.ph34.preheader
  %.022.unr = phi i64 [ %.022.ph, %scalar.ph34.preheader ], [ %i.db, %scalar.ph34.prol ]
  %i.dc = sub i64 %.022.ph, %i.cf
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %._crit_edge25, label %scalar.ph34

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01721 = phi i64 [ %i.eb, %scalar.ph ], [ %.01721.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.de = mul i64 %.01721, %i.k
  %i.df = getelementptr [4 x i8], ptr %i.p, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !59
  %i.dh = tail call noundef float @llvm.fma.f32(float %i.dg, float %i.s, float %i.u)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01721
  store float %i.dh, ptr %i.di, align 4, !tbaa !59
  %i.dj = add nuw nsw i64 %.01721, 1              ; 2 uses
  %i.dk = mul i64 %i.dj, %i.k
  %i.dl = getelementptr [4 x i8], ptr %i.p, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !59
  %i.dn = tail call noundef float @llvm.fma.f32(float %i.dm, float %i.s, float %i.u)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dj
  store float %i.dn, ptr %i.do, align 4, !tbaa !59
  %i.dp = add nuw nsw i64 %.01721, 2              ; 2 uses
  %i.dq = mul i64 %i.dp, %i.k
  %i.dr = getelementptr [4 x i8], ptr %i.p, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !59
  %i.dt = tail call noundef float @llvm.fma.f32(float %i.ds, float %i.s, float %i.u)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  store float %i.dt, ptr %i.du, align 4, !tbaa !59
  %i.dv = add nuw nsw i64 %.01721, 3              ; 2 uses
  %i.dw = mul i64 %i.dv, %i.k
  %i.dx = getelementptr [4 x i8], ptr %i.p, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !59
  %i.dz = tail call noundef float @llvm.fma.f32(float %i.dy, float %i.s, float %i.u)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dv
  store float %i.dz, ptr %i.ea, align 4, !tbaa !59
  %i.eb = add nuw nsw i64 %.01721, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eb, %i.d
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !1571

._crit_edge25:                                    ; preds = %scalar.ph34.prol.loopexit, %scalar.ph34, %middle.block43, %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
begin_hunk_1_@_ZZZN3tev18toLinearSrgbPremulIhEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEibENKUlmE_clEmENKUlTyiE_clIN5xsimd5batchIfNSN_4sse2EEEEEDai:bb.a
  %i.bq = fmul <4 x float> %i.af, %i.bp
  %i.br = fadd <4 x float> %i.bc, %i.bq
  %i.bs = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bt = fmul <4 x float> %i.ae, %i.bs
  %i.bu = fadd <4 x float> %i.bh, %i.bt
  store <4 x float> %i.bu, ptr %3, align 16, !alias.scope !1817
  %i.bv = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bw = fmul <4 x float> %i.ae, %i.bv
  %i.bx = fadd <4 x float> %i.bm, %i.bw
  store <4 x float> %i.bx, ptr %i.an, align 16, !alias.scope !1817
  %i.by = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bz = fmul <4 x float> %i.ae, %i.by
  %i.ca = fadd <4 x float> %i.bz, %i.br
  store <4 x float> %i.ca, ptr %i.ao, align 16, !alias.scope !1817
  call void @_ZN3tev8ituth27314invTransferRgbIN5xsimd5batchIfNS2_4sse2EEEEEN7nanogui5ArrayIT_Lm3EEENS0_9ETransferERKS9_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Array.399") align 16 %2, i8 noundef zeroext %i.ak, ptr noundef nonnull align 16 dereferenceable(48) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !439, !nonnull !112, !align !166
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !93 ; 2 uses
  %.not63 = icmp eq i64 %i.cd, 0
  br i1 %.not63, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !440, !nonnull !112, !align !166 ; 3 uses
  %i.cg = sext i32 %1 to i64                      ; 4 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !408
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !122
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !122
  %i.cn = sext i32 %i.cm to i64                   ; 4 uses
  %i.co = mul nsw i64 %i.cn, %i.cg
  %i.cp = add nsw i64 %i.cg, 1
  %i.cq = mul nsw i64 %i.cp, %i.cn
  %i.cr = add nsw i64 %i.cg, 2
  %i.cs = mul nsw i64 %i.cr, %i.cn
  %i.ct = add nsw i64 %i.cg, 3
  %i.cu = mul nsw i64 %i.ct, %i.cn
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01257 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %bb.b ] ; 3 uses
  %i.cv = mul i64 %.01257, %i.k
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.h, i64 %i.cv ; 4 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.o
  %i.cw = load float, ptr %gep.i, align 4, !tbaa !59
  %.sroa.0.0.vec.insert.i = insertelement <4 x float> poison, float %i.cw, i64 0
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.q
  %i.cx = load float, ptr %gep.1.i, align 4, !tbaa !59
  %.sroa.0.4.vec.insert.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i, float %i.cx, i64 1
  %gep.2.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.s
  %i.cy = load float, ptr %gep.2.i, align 4, !tbaa !59
  %.sroa.0.8.vec.insert.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i, float %i.cy, i64 2
  %gep.3.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u
  %i.cz = load float, ptr %gep.3.i, align 4, !tbaa !59
  %.sroa.0.12.vec.insert.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i, float %i.cz, i64 3
  %i.da = fmul <4 x float> %.sroa.0.12.vec.insert.i, %i.z
  %i.db = fadd <4 x float> %i.da, %i.ad
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.01257
  store <4 x float> %i.db, ptr %i.dc, align 16
  %i.dd = add nuw nsw i64 %.01257, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !1815

._crit_edge61:                                    ; preds = %bb.c, %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !441, !nonnull !112, !align !274
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !61
  %.not = icmp eq i32 %i.dg, 3
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph60, %bb.c
  %.058 = phi i64 [ 0, %.lr.ph60 ], [ %i.dk, %bb.c ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.058
  %i.di = load <4 x float>, ptr %i.dh, align 16, !tbaa !88 ; 4 uses
  %i.dj = mul i64 %.058, %i.ck
  %invariant.gep.i14 = getelementptr [4 x i8], ptr %i.ch, i64 %i.dj ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.di, i64 0
  %gep.i15 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.co
  store float %.sroa.0.0.vec.extract.i, ptr %gep.i15, align 4, !tbaa !59
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.di, i64 1
  %gep.1.i16 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cq
  store float %.sroa.0.4.vec.extract.i, ptr %gep.1.i16, align 4, !tbaa !59
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.di, i64 2
  %gep.2.i17 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cs
  store float %.sroa.0.8.vec.extract.i, ptr %gep.2.i17, align 4, !tbaa !59
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.di, i64 3
  %gep.3.i18 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cu
  store float %.sroa.0.12.vec.extract.i, ptr %gep.3.i18, align 4, !tbaa !59
  %i.dk = add nuw nsw i64 %.058, 1                ; 2 uses
  %exitcond64.not = icmp eq i64 %i.dk, %i.cd
  br i1 %exitcond64.not, label %._crit_edge61, label %bb.c, !llvm.loop !1816

bb.d:                                             ; preds = %._crit_edge61
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !440, !nonnull !112, !align !166 ; 3 uses
  %i.dn = sext i32 %1 to i64                      ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !435, !nonnull !112, !align !166 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !408
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !122
  %i.dt = sext i32 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !122
  %i.dx = sext i32 %i.dw to i64                   ; 4 uses
  %invariant.gep.i19 = getelementptr [4 x i8], ptr %i.dq, i64 %i.du ; 4 uses
  %i.dy = mul nsw i64 %i.dx, %i.dn
  %gep.i20 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.dy
  %i.dz = load float, ptr %gep.i20, align 4, !tbaa !59
  %i.ea = add nsw i64 %i.dn, 1                    ; 2 uses
  %i.eb = mul nsw i64 %i.ea, %i.dx
  %gep.1.i22 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.eb
  %i.ec = load float, ptr %gep.1.i22, align 4, !tbaa !59
  %i.ed = add nsw i64 %i.dn, 2                    ; 2 uses
  %i.ee = mul nsw i64 %i.ed, %i.dx
  %gep.2.i24 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.ee
  %i.ef = load float, ptr %gep.2.i24, align 4, !tbaa !59
  %i.eg = add nsw i64 %i.dn, 3                    ; 2 uses
  %i.eh = mul nsw i64 %i.eg, %i.dx
  %gep.3.i26 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.eh
  %i.ei = load float, ptr %gep.3.i26, align 4, !tbaa !59
  %i.ej = load ptr, ptr %i.dm, align 8, !tbaa !408
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !122
  %i.em = sext i32 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !122
  %i.eq = sext i32 %i.ep to i64                   ; 4 uses
  %invariant.gep.i28 = getelementptr [4 x i8], ptr %i.ej, i64 %i.en ; 4 uses
  %i.er = mul nsw i64 %i.eq, %i.dn
  %gep.i30 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.er
  store float %i.dz, ptr %gep.i30, align 4, !tbaa !59
  %i.es = mul nsw i64 %i.ea, %i.eq
  %gep.1.i32 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.es
  store float %i.ec, ptr %gep.1.i32, align 4, !tbaa !59
  %i.et = mul nsw i64 %i.ed, %i.eq
  %gep.2.i34 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.et
  store float %i.ef, ptr %gep.2.i34, align 4, !tbaa !59
  %i.eu = mul nsw i64 %i.eg, %i.eq
  %gep.3.i36 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.eu
  store float %i.ei, ptr %gep.3.i36, align 4, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev18toLinearSrgbPremulIhEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEibENKUlmE_clEmENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.31", align 8 ; 19 uses
  %3 = alloca %"struct.nanogui::Array.31", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !59
  %i.c = load ptr, ptr %0, align 8, !tbaa !434, !nonnull !112, !align !166
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93   ; 7 uses
  %.not26 = icmp eq i64 %i.d, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !435, !nonnull !112, !align !166 ; 3 uses
  %i.g = sext i32 %1 to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !408
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !122  ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !122
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, %i.g
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !436, !nonnull !112, !align !274 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !419 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !420 ; 9 uses
  %min.iters.check = icmp ugt i64 %i.d, 3
  %ident.check.not = icmp eq i32 %i.j, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %index
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !59 ; 4 uses
  %i.w = extractelement <4 x float> %wide.load, i64 0
  %i.x = tail call float @llvm.fma.f32(float %i.w, float %i.s, float %i.u)
  %i.y = extractelement <4 x float> %wide.load, i64 1
  %i.z = tail call float @llvm.fma.f32(float %i.y, float %i.s, float %i.u)
  %i.aa = extractelement <4 x float> %wide.load, i64 2
  %i.ab = tail call float @llvm.fma.f32(float %i.aa, float %i.s, float %i.u)
  %i.ac = extractelement <4 x float> %wide.load, i64 3
  %i.ad = tail call float @llvm.fma.f32(float %i.ac, float %i.s, float %i.u)
  %i.ae = insertelement <4 x float> poison, float %i.x, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ab, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.ah, ptr %i.ai, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1818

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01721.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01721.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.01721.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = mul i64 %.01721.prol, %i.k
  %i.al = getelementptr [4 x i8], ptr %i.p, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !59
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.s, float %i.u)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01721.prol
  store float %i.an, ptr %i.ao, align 4, !tbaa !59
  %i.ap = add nuw nsw i64 %.01721.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1819

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01721.unr = phi i64 [ %.01721.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = sub i64 %.01721.ph, %i.d
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.loopexit, label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load float, ptr %2, align 8, !tbaa !59
  %.pre29 = load float, ptr %i.a, align 4, !tbaa !59
  %.pre30 = load float, ptr %i.b, align 8, !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.as = phi float [ %.pre30, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.at = phi float [ %.pre29, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.au = phi float [ %.pre, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !437, !nonnull !112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !438, !nonnull !112, !align !274 ; 9 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !59
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.bb, float %i.au, float 0.000000e+00)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !59
  %i.bf = tail call noundef float @llvm.fma.f32(float %i.be, float %i.au, float 0.000000e+00)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !59
  %i.bi = tail call noundef float @llvm.fma.f32(float %i.bh, float %i.au, float 0.000000e+00)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !59
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bk, float %i.at, float %i.bc)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !59
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bn, float %i.at, float %i.bf)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !59
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.at, float %i.bi)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !59
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.as, float %i.bl)
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !59
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float %i.as, float %i.bo)
  %.sroa.0.4.vec.insert35.i = insertelement <2 x float> %i.bv, float %i.by, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !59
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float %i.as, float %i.br)
  store <2 x float> %.sroa.0.4.vec.insert35.i, ptr %3, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cb, ptr %.sroa.27.0..sroa_idx, align 8
  %i.cc = call { <2 x float>, float } @_ZN3tev8ituth27314invTransferRgbIfEEN7nanogui5ArrayIT_Lm3EEENS0_9ETransferERKS5_(i8 noundef zeroext %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %3) #31 ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.cc, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.cc, 1
  store <2 x float> %.fca.0.extract, ptr %2, align 8
  store float %.fca.1.extract, ptr %i.b, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !439, !nonnull !112, !align !166
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !93 ; 7 uses
  %.not27 = icmp eq i64 %i.cf, 0
  br i1 %.not27, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !440, !nonnull !112, !align !166 ; 3 uses
  %i.ci = sext i32 %1 to i64
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !408
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !122 ; 2 uses
  %i.cm = sext i32 %i.cl to i64                   ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !122
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cp, %i.ci
  %i.cr = getelementptr [4 x i8], ptr %i.cj, i64 %i.cq ; 6 uses
  %min.iters.check35 = icmp ugt i64 %i.cf, 7
  %ident.check33.not = icmp eq i32 %i.cl, 1
  %or.cond46 = select i1 %min.iters.check35, i1 %ident.check33.not, i1 false
  br i1 %or.cond46, label %vector.ph36, label %scalar.ph34.preheader

vector.ph36:                                      ; preds = %.lr.ph24
  %n.vec37 = and i64 %i.cf, -8                    ; 3 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index39 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load40 = load <4 x float>, ptr %i.cs, align 8, !tbaa !59
  %wide.load41 = load <4 x float>, ptr %i.ct, align 8, !tbaa !59
  %i.cu = getelementptr [4 x i8], ptr %i.cr, i64 %index39 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  store <4 x float> %wide.load40, ptr %i.cu, align 4, !tbaa !59
  store <4 x float> %wide.load41, ptr %i.cv, align 4, !tbaa !59
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.cw = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.cw, label %middle.block43, label %vector.body38, !llvm.loop !1820

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %i.cf, %n.vec37
  br i1 %cmp.n44, label %._crit_edge25, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph24, %middle.block43
  %.022.ph = phi i64 [ 0, %.lr.ph24 ], [ %n.vec37, %middle.block43 ] ; 3 uses
  %xtraiter47 = and i64 %i.cf, 3                  ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol

scalar.ph34.prol:                                 ; preds = %scalar.ph34.preheader, %scalar.ph34.prol
  %.022.prol = phi i64 [ %i.db, %scalar.ph34.prol ], [ %.022.ph, %scalar.ph34.preheader ] ; 3 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %scalar.ph34.prol ], [ 0, %scalar.ph34.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.022.prol
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !59
  %i.cz = mul i64 %.022.prol, %i.cm
  %i.da = getelementptr [4 x i8], ptr %i.cr, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !59
  %i.db = add nuw nsw i64 %.022.prol, 1           ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol, !llvm.loop !1821

scalar.ph34.prol.loopexit:                        ; preds = %scalar.ph34.prol, %scalar.ph34.preheader
  %.022.unr = phi i64 [ %.022.ph, %scalar.ph34.preheader ], [ %i.db, %scalar.ph34.prol ]
  %i.dc = sub i64 %.022.ph, %i.cf
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %._crit_edge25, label %scalar.ph34

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01721 = phi i64 [ %i.eb, %scalar.ph ], [ %.01721.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.de = mul i64 %.01721, %i.k
  %i.df = getelementptr [4 x i8], ptr %i.p, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !59
  %i.dh = tail call noundef float @llvm.fma.f32(float %i.dg, float %i.s, float %i.u)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01721
  store float %i.dh, ptr %i.di, align 4, !tbaa !59
  %i.dj = add nuw nsw i64 %.01721, 1              ; 2 uses
  %i.dk = mul i64 %i.dj, %i.k
  %i.dl = getelementptr [4 x i8], ptr %i.p, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !59
  %i.dn = tail call noundef float @llvm.fma.f32(float %i.dm, float %i.s, float %i.u)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dj
  store float %i.dn, ptr %i.do, align 4, !tbaa !59
  %i.dp = add nuw nsw i64 %.01721, 2              ; 2 uses
  %i.dq = mul i64 %i.dp, %i.k
  %i.dr = getelementptr [4 x i8], ptr %i.p, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !59
  %i.dt = tail call noundef float @llvm.fma.f32(float %i.ds, float %i.s, float %i.u)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  store float %i.dt, ptr %i.du, align 4, !tbaa !59
  %i.dv = add nuw nsw i64 %.01721, 3              ; 2 uses
  %i.dw = mul i64 %i.dv, %i.k
  %i.dx = getelementptr [4 x i8], ptr %i.p, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !59
  %i.dz = tail call noundef float @llvm.fma.f32(float %i.dy, float %i.s, float %i.u)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dv
  store float %i.dz, ptr %i.ea, align 4, !tbaa !59
  %i.eb = add nuw nsw i64 %.01721, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eb, %i.d
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !1822

._crit_edge25:                                    ; preds = %scalar.ph34.prol.loopexit, %scalar.ph34, %middle.block43, %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_1
begin_hunk_2_@_ZZZN3tev18toLinearSrgbPremulItEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEibENKUlmE_clEmENKUlTyiE_clIN5xsimd5batchIfNSN_4sse2EEEEEDai:bb.a
  %i.bq = fmul <4 x float> %i.af, %i.bp
  %i.br = fadd <4 x float> %i.bc, %i.bq
  %i.bs = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bt = fmul <4 x float> %i.ae, %i.bs
  %i.bu = fadd <4 x float> %i.bh, %i.bt
  store <4 x float> %i.bu, ptr %3, align 16, !alias.scope !1944
  %i.bv = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bw = fmul <4 x float> %i.ae, %i.bv
  %i.bx = fadd <4 x float> %i.bm, %i.bw
  store <4 x float> %i.bx, ptr %i.an, align 16, !alias.scope !1944
  %i.by = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bz = fmul <4 x float> %i.ae, %i.by
  %i.ca = fadd <4 x float> %i.bz, %i.br
  store <4 x float> %i.ca, ptr %i.ao, align 16, !alias.scope !1944
  call void @_ZN3tev8ituth27314invTransferRgbIN5xsimd5batchIfNS2_4sse2EEEEEN7nanogui5ArrayIT_Lm3EEENS0_9ETransferERKS9_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Array.399") align 16 %2, i8 noundef zeroext %i.ak, ptr noundef nonnull align 16 dereferenceable(48) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !451, !nonnull !112, !align !166
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !93 ; 2 uses
  %.not63 = icmp eq i64 %i.cd, 0
  br i1 %.not63, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !452, !nonnull !112, !align !166 ; 3 uses
  %i.cg = sext i32 %1 to i64                      ; 4 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !408
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !122
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !122
  %i.cn = sext i32 %i.cm to i64                   ; 4 uses
  %i.co = mul nsw i64 %i.cn, %i.cg
  %i.cp = add nsw i64 %i.cg, 1
  %i.cq = mul nsw i64 %i.cp, %i.cn
  %i.cr = add nsw i64 %i.cg, 2
  %i.cs = mul nsw i64 %i.cr, %i.cn
  %i.ct = add nsw i64 %i.cg, 3
  %i.cu = mul nsw i64 %i.ct, %i.cn
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01257 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %bb.b ] ; 3 uses
  %i.cv = mul i64 %.01257, %i.k
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.h, i64 %i.cv ; 4 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.o
  %i.cw = load float, ptr %gep.i, align 4, !tbaa !59
  %.sroa.0.0.vec.insert.i = insertelement <4 x float> poison, float %i.cw, i64 0
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.q
  %i.cx = load float, ptr %gep.1.i, align 4, !tbaa !59
  %.sroa.0.4.vec.insert.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i, float %i.cx, i64 1
  %gep.2.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.s
  %i.cy = load float, ptr %gep.2.i, align 4, !tbaa !59
  %.sroa.0.8.vec.insert.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i, float %i.cy, i64 2
  %gep.3.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.u
  %i.cz = load float, ptr %gep.3.i, align 4, !tbaa !59
  %.sroa.0.12.vec.insert.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i, float %i.cz, i64 3
  %i.da = fmul <4 x float> %.sroa.0.12.vec.insert.i, %i.z
  %i.db = fadd <4 x float> %i.da, %i.ad
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.01257
  store <4 x float> %i.db, ptr %i.dc, align 16
  %i.dd = add nuw nsw i64 %.01257, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !1942

._crit_edge61:                                    ; preds = %bb.c, %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !453, !nonnull !112, !align !274
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !61
  %.not = icmp eq i32 %i.dg, 3
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph60, %bb.c
  %.058 = phi i64 [ 0, %.lr.ph60 ], [ %i.dk, %bb.c ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.058
  %i.di = load <4 x float>, ptr %i.dh, align 16, !tbaa !88 ; 4 uses
  %i.dj = mul i64 %.058, %i.ck
  %invariant.gep.i14 = getelementptr [4 x i8], ptr %i.ch, i64 %i.dj ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.di, i64 0
  %gep.i15 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.co
  store float %.sroa.0.0.vec.extract.i, ptr %gep.i15, align 4, !tbaa !59
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.di, i64 1
  %gep.1.i16 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cq
  store float %.sroa.0.4.vec.extract.i, ptr %gep.1.i16, align 4, !tbaa !59
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.di, i64 2
  %gep.2.i17 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cs
  store float %.sroa.0.8.vec.extract.i, ptr %gep.2.i17, align 4, !tbaa !59
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.di, i64 3
  %gep.3.i18 = getelementptr [4 x i8], ptr %invariant.gep.i14, i64 %i.cu
  store float %.sroa.0.12.vec.extract.i, ptr %gep.3.i18, align 4, !tbaa !59
  %i.dk = add nuw nsw i64 %.058, 1                ; 2 uses
  %exitcond64.not = icmp eq i64 %i.dk, %i.cd
  br i1 %exitcond64.not, label %._crit_edge61, label %bb.c, !llvm.loop !1943

bb.d:                                             ; preds = %._crit_edge61
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !452, !nonnull !112, !align !166 ; 3 uses
  %i.dn = sext i32 %1 to i64                      ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !447, !nonnull !112, !align !166 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !408
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !122
  %i.dt = sext i32 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !122
  %i.dx = sext i32 %i.dw to i64                   ; 4 uses
  %invariant.gep.i19 = getelementptr [4 x i8], ptr %i.dq, i64 %i.du ; 4 uses
  %i.dy = mul nsw i64 %i.dx, %i.dn
  %gep.i20 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.dy
  %i.dz = load float, ptr %gep.i20, align 4, !tbaa !59
  %i.ea = add nsw i64 %i.dn, 1                    ; 2 uses
  %i.eb = mul nsw i64 %i.ea, %i.dx
  %gep.1.i22 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.eb
  %i.ec = load float, ptr %gep.1.i22, align 4, !tbaa !59
  %i.ed = add nsw i64 %i.dn, 2                    ; 2 uses
  %i.ee = mul nsw i64 %i.ed, %i.dx
  %gep.2.i24 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.ee
  %i.ef = load float, ptr %gep.2.i24, align 4, !tbaa !59
  %i.eg = add nsw i64 %i.dn, 3                    ; 2 uses
  %i.eh = mul nsw i64 %i.eg, %i.dx
  %gep.3.i26 = getelementptr [4 x i8], ptr %invariant.gep.i19, i64 %i.eh
  %i.ei = load float, ptr %gep.3.i26, align 4, !tbaa !59
  %i.ej = load ptr, ptr %i.dm, align 8, !tbaa !408
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !122
  %i.em = sext i32 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !122
  %i.eq = sext i32 %i.ep to i64                   ; 4 uses
  %invariant.gep.i28 = getelementptr [4 x i8], ptr %i.ej, i64 %i.en ; 4 uses
  %i.er = mul nsw i64 %i.eq, %i.dn
  %gep.i30 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.er
  store float %i.dz, ptr %gep.i30, align 4, !tbaa !59
  %i.es = mul nsw i64 %i.ea, %i.eq
  %gep.1.i32 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.es
  store float %i.ec, ptr %gep.1.i32, align 4, !tbaa !59
  %i.et = mul nsw i64 %i.ed, %i.eq
  %gep.2.i34 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.et
  store float %i.ef, ptr %gep.2.i34, align 4, !tbaa !59
  %i.eu = mul nsw i64 %i.eg, %i.eq
  %gep.3.i36 = getelementptr [4 x i8], ptr %invariant.gep.i28, i64 %i.eu
  store float %i.ei, ptr %gep.3.i36, align 4, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev18toLinearSrgbPremulItEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEibENKUlmE_clEmENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.31", align 8 ; 19 uses
  %3 = alloca %"struct.nanogui::Array.31", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !59
  %i.c = load ptr, ptr %0, align 8, !tbaa !446, !nonnull !112, !align !166
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93   ; 7 uses
  %.not26 = icmp eq i64 %i.d, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !447, !nonnull !112, !align !166 ; 3 uses
  %i.g = sext i32 %1 to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !408
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !122  ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !122
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, %i.g
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !448, !nonnull !112, !align !274 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !419 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !420 ; 9 uses
  %min.iters.check = icmp ugt i64 %i.d, 3
  %ident.check.not = icmp eq i32 %i.j, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %index
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !59 ; 4 uses
  %i.w = extractelement <4 x float> %wide.load, i64 0
  %i.x = tail call float @llvm.fma.f32(float %i.w, float %i.s, float %i.u)
  %i.y = extractelement <4 x float> %wide.load, i64 1
  %i.z = tail call float @llvm.fma.f32(float %i.y, float %i.s, float %i.u)
  %i.aa = extractelement <4 x float> %wide.load, i64 2
  %i.ab = tail call float @llvm.fma.f32(float %i.aa, float %i.s, float %i.u)
  %i.ac = extractelement <4 x float> %wide.load, i64 3
  %i.ad = tail call float @llvm.fma.f32(float %i.ac, float %i.s, float %i.u)
  %i.ae = insertelement <4 x float> poison, float %i.x, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ab, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.ah, ptr %i.ai, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1945

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01721.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01721.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.01721.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = mul i64 %.01721.prol, %i.k
  %i.al = getelementptr [4 x i8], ptr %i.p, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !59
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.s, float %i.u)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01721.prol
  store float %i.an, ptr %i.ao, align 4, !tbaa !59
  %i.ap = add nuw nsw i64 %.01721.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1946

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01721.unr = phi i64 [ %.01721.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = sub i64 %.01721.ph, %i.d
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.loopexit, label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load float, ptr %2, align 8, !tbaa !59
  %.pre29 = load float, ptr %i.a, align 4, !tbaa !59
  %.pre30 = load float, ptr %i.b, align 8, !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.as = phi float [ %.pre30, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.at = phi float [ %.pre29, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.au = phi float [ %.pre, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !449, !nonnull !112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !450, !nonnull !112, !align !274 ; 9 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !59
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.bb, float %i.au, float 0.000000e+00)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !59
  %i.bf = tail call noundef float @llvm.fma.f32(float %i.be, float %i.au, float 0.000000e+00)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !59
  %i.bi = tail call noundef float @llvm.fma.f32(float %i.bh, float %i.au, float 0.000000e+00)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !59
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bk, float %i.at, float %i.bc)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !59
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bn, float %i.at, float %i.bf)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !59
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.at, float %i.bi)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !59
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.as, float %i.bl)
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !59
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float %i.as, float %i.bo)
  %.sroa.0.4.vec.insert35.i = insertelement <2 x float> %i.bv, float %i.by, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !59
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float %i.as, float %i.br)
  store <2 x float> %.sroa.0.4.vec.insert35.i, ptr %3, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cb, ptr %.sroa.27.0..sroa_idx, align 8
  %i.cc = call { <2 x float>, float } @_ZN3tev8ituth27314invTransferRgbIfEEN7nanogui5ArrayIT_Lm3EEENS0_9ETransferERKS5_(i8 noundef zeroext %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %3) #31 ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.cc, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.cc, 1
  store <2 x float> %.fca.0.extract, ptr %2, align 8
  store float %.fca.1.extract, ptr %i.b, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !451, !nonnull !112, !align !166
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !93 ; 7 uses
  %.not27 = icmp eq i64 %i.cf, 0
  br i1 %.not27, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !452, !nonnull !112, !align !166 ; 3 uses
  %i.ci = sext i32 %1 to i64
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !408
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !122 ; 2 uses
  %i.cm = sext i32 %i.cl to i64                   ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !122
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cp, %i.ci
  %i.cr = getelementptr [4 x i8], ptr %i.cj, i64 %i.cq ; 6 uses
  %min.iters.check35 = icmp ugt i64 %i.cf, 7
  %ident.check33.not = icmp eq i32 %i.cl, 1
  %or.cond46 = select i1 %min.iters.check35, i1 %ident.check33.not, i1 false
  br i1 %or.cond46, label %vector.ph36, label %scalar.ph34.preheader

vector.ph36:                                      ; preds = %.lr.ph24
  %n.vec37 = and i64 %i.cf, -8                    ; 3 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index39 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load40 = load <4 x float>, ptr %i.cs, align 8, !tbaa !59
  %wide.load41 = load <4 x float>, ptr %i.ct, align 8, !tbaa !59
  %i.cu = getelementptr [4 x i8], ptr %i.cr, i64 %index39 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  store <4 x float> %wide.load40, ptr %i.cu, align 4, !tbaa !59
  store <4 x float> %wide.load41, ptr %i.cv, align 4, !tbaa !59
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.cw = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.cw, label %middle.block43, label %vector.body38, !llvm.loop !1947

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %i.cf, %n.vec37
  br i1 %cmp.n44, label %._crit_edge25, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph24, %middle.block43
  %.022.ph = phi i64 [ 0, %.lr.ph24 ], [ %n.vec37, %middle.block43 ] ; 3 uses
  %xtraiter47 = and i64 %i.cf, 3                  ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol

scalar.ph34.prol:                                 ; preds = %scalar.ph34.preheader, %scalar.ph34.prol
  %.022.prol = phi i64 [ %i.db, %scalar.ph34.prol ], [ %.022.ph, %scalar.ph34.preheader ] ; 3 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %scalar.ph34.prol ], [ 0, %scalar.ph34.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.022.prol
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !59
  %i.cz = mul i64 %.022.prol, %i.cm
  %i.da = getelementptr [4 x i8], ptr %i.cr, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !59
  %i.db = add nuw nsw i64 %.022.prol, 1           ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol, !llvm.loop !1948

scalar.ph34.prol.loopexit:                        ; preds = %scalar.ph34.prol, %scalar.ph34.preheader
  %.022.unr = phi i64 [ %.022.ph, %scalar.ph34.preheader ], [ %i.db, %scalar.ph34.prol ]
  %i.dc = sub i64 %.022.ph, %i.cf
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %._crit_edge25, label %scalar.ph34

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01721 = phi i64 [ %i.eb, %scalar.ph ], [ %.01721.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.de = mul i64 %.01721, %i.k
  %i.df = getelementptr [4 x i8], ptr %i.p, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !59
  %i.dh = tail call noundef float @llvm.fma.f32(float %i.dg, float %i.s, float %i.u)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01721
  store float %i.dh, ptr %i.di, align 4, !tbaa !59
  %i.dj = add nuw nsw i64 %.01721, 1              ; 2 uses
  %i.dk = mul i64 %i.dj, %i.k
  %i.dl = getelementptr [4 x i8], ptr %i.p, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !59
  %i.dn = tail call noundef float @llvm.fma.f32(float %i.dm, float %i.s, float %i.u)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dj
  store float %i.dn, ptr %i.do, align 4, !tbaa !59
  %i.dp = add nuw nsw i64 %.01721, 2              ; 2 uses
  %i.dq = mul i64 %i.dp, %i.k
  %i.dr = getelementptr [4 x i8], ptr %i.p, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !59
  %i.dt = tail call noundef float @llvm.fma.f32(float %i.ds, float %i.s, float %i.u)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  store float %i.dt, ptr %i.du, align 4, !tbaa !59
  %i.dv = add nuw nsw i64 %.01721, 3              ; 2 uses
  %i.dw = mul i64 %i.dv, %i.k
  %i.dx = getelementptr [4 x i8], ptr %i.p, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !59
  %i.dz = tail call noundef float @llvm.fma.f32(float %i.dy, float %i.s, float %i.u)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dv
  store float %i.dz, ptr %i.ea, align 4, !tbaa !59
  %i.eb = add nuw nsw i64 %.01721, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eb, %i.d
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !1949

._crit_edge25:                                    ; preds = %scalar.ph34.prol.loopexit, %scalar.ph34, %middle.block43, %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_2
