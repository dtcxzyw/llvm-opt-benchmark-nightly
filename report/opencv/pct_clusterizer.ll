Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pct_clusterizer?download=true
inline.NumInlined: 336
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK2cv11xfeatures2d14pct_signatures19PCTClusterizer_Impl12cropClustersERNS_3MatE:bb.a
  br i1 %i.an, label %bb.i, label %._crit_edge, !llvm.loop !121

bb.m:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn23.pn = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.ap, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.p ], [ %i.ao, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h, %bb.g
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %.pn23.pn.pn, %bb.q ], [ %i.ab, %bb.h ], [ %.pn.pn.pn, %bb.g ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn23.pn.pn.pn

bb.s:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #5

declare void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #5

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef float @_ZN2cv11xfeatures2d14pct_signaturesL15computeDistanceEiRKNS_3MatEiS4_i(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, i32 noundef %4) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  switch i32 %0, label %bb.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = icmp slt i32 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = load i64, ptr %i.f, align 8
  %i.h = sext i32 %2 to i64
  %i.i = mul i64 %i.g, %i.h
  %.sink.idx.i.i = select i1 %i.c, i64 0, i64 %i.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink.idx.i.i ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52
  %i.l = icmp slt i32 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.p = load i64, ptr %i.o, align 8
  %i.q = sext i32 %4 to i64
  %i.r = mul i64 %i.p, %i.q
  %.sink.idx.i14.i = select i1 %i.l, i64 0, i64 %i.r
  %.sink.i15.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink.idx.i14.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i15.i, i64 4
  %i.u = load <4 x float>, ptr %i.s, align 4, !tbaa !54
  %i.v = load <4 x float>, ptr %i.t, align 4, !tbaa !54
  %i.w = fsub <4 x float> %i.u, %i.v
  %i.x = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.w)
  %i.y = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.x)
  %i.z = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.y) ; 4 uses
  %shift = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.z, %shift
  %shift65 = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop66 = fadd <4 x float> %foldExtExtBinop, %shift65
  %shift68 = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop69 = fadd <4 x float> %foldExtExtBinop66, %shift68
  %i.aa = extractelement <4 x float> %foldExtExtBinop69, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i15.i, i64 20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !54
  %i.af = fsub float %i.ac, %i.ae
  %i.ag = tail call noundef float @llvm.fabs.f32(float %i.af)
  %sqrt.4.i = tail call float @llvm.sqrt.f32(float %i.ag)
  %sqrt58 = tail call float @llvm.sqrt.f32(float %sqrt.4.i)
  %i.ah = fadd float %i.aa, %sqrt58
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink.i15.i, i64 24
  %i.ak = load <2 x float>, ptr %i.ai, align 4, !tbaa !54
  %i.al = load <2 x float>, ptr %i.aj, align 4, !tbaa !54
  %i.am = fsub <2 x float> %i.ak, %i.al
  %i.an = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.am) ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %sqrt.5.i = tail call float @llvm.sqrt.f32(float %i.ao)
  %sqrt57 = tail call float @llvm.sqrt.f32(float %sqrt.5.i)
  %i.ap = fadd float %i.ah, %sqrt57
  %i.aq = extractelement <2 x float> %i.an, i64 1
  %sqrt.6.i = tail call float @llvm.sqrt.f32(float %i.aq)
  %sqrt = tail call float @llvm.sqrt.f32(float %sqrt.6.i)
  %i.ar = fadd float %i.ap, %sqrt                 ; 2 uses
  %i.as = fmul float %i.ar, %i.ar                 ; 2 uses
  %i.at = fmul float %i.as, %i.as
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !52
  %i.aw = icmp slt i32 %i.av, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = sext i32 %2 to i64
  %i.bc = mul i64 %i.ba, %i.bb
  %.sink.idx.i.i34 = select i1 %i.aw, i64 0, i64 %i.bc
  %.sink.i.i35 = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink.idx.i.i34 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !52
  %i.bf = icmp slt i32 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = sext i32 %4 to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %.sink.idx.i12.i = select i1 %i.bf, i64 0, i64 %i.bl
  %.sink.i13.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink.idx.i12.i ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink.i.i35, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink.i13.i, i64 4
  %i.bo = load <4 x float>, ptr %i.bm, align 4, !tbaa !54
  %i.bp = load <4 x float>, ptr %i.bn, align 4, !tbaa !54
  %i.bq = fsub <4 x float> %i.bo, %i.bp
  %i.br = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bq)
  %i.bs = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.br) ; 4 uses
  %shift71 = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop72 = fadd <4 x float> %i.bs, %shift71
  %shift74 = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop75 = fadd <4 x float> %foldExtExtBinop72, %shift74
  %shift77 = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop78 = fadd <4 x float> %foldExtExtBinop75, %shift77
  %i.bt = extractelement <4 x float> %foldExtExtBinop78, i64 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink.i.i35, i64 20
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink.i13.i, i64 20
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !54
  %i.by = fsub float %i.bv, %i.bx
  %i.bz = tail call noundef float @llvm.fabs.f32(float %i.by)
  %sqrt.4.i40 = tail call float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fadd float %i.bt, %sqrt.4.i40
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink.i.i35, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i13.i, i64 24
  %i.cd = load <2 x float>, ptr %i.cb, align 4, !tbaa !54
  %i.ce = load <2 x float>, ptr %i.cc, align 4, !tbaa !54
  %i.cf = fsub <2 x float> %i.cd, %i.ce
  %i.cg = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cf)
  %7 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cg) ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %i.ch = fadd float %i.ca, %8
  %i.ci = extractelement <2 x float> %7, i64 1
  %i.cj = fadd float %i.ch, %i.ci                 ; 2 uses
  %i.ck = fmul float %i.cj, %i.cj
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !52
  %i.cn = icmp slt i32 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !53
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = sext i32 %2 to i64
  %i.ct = mul i64 %i.cr, %i.cs
  %.sink.idx.i.i43 = select i1 %i.cn, i64 0, i64 %i.ct
  %.sink.i.i44 = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sink.idx.i.i43 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !52
  %i.cw = icmp slt i32 %i.cv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !53
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = sext i32 %4 to i64
  %i.dc = mul i64 %i.da, %i.db
  %.sink.idx.i11.i = select i1 %i.cw, i64 0, i64 %i.dc
  %.sink.i12.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sink.idx.i11.i ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink.i.i44, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %.sink.i12.i, i64 4
  %i.df = load <4 x float>, ptr %i.dd, align 4, !tbaa !54
  %i.dg = load <4 x float>, ptr %i.de, align 4, !tbaa !54
  %i.dh = fsub <4 x float> %i.df, %i.dg
  %i.di = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dh) ; 4 uses
  %shift80 = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop81 = fadd <4 x float> %i.di, %shift80
  %shift83 = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop84 = fadd <4 x float> %foldExtExtBinop81, %shift83
  %shift86 = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop87 = fadd <4 x float> %foldExtExtBinop84, %shift86
  %i.dj = extractelement <4 x float> %foldExtExtBinop87, i64 0
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink.i.i44, i64 20
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !54
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink.i12.i, i64 20
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !54
  %i.do = fsub float %i.dl, %i.dn
  %i.dp = tail call noundef float @llvm.fabs.f32(float %i.do)
  %i.dq = fadd float %i.dj, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink.i.i44, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.sink.i12.i, i64 24
  %i.dt = load <2 x float>, ptr %i.dr, align 4, !tbaa !54
  %i.du = load <2 x float>, ptr %i.ds, align 4, !tbaa !54
  %i.dv = fsub <2 x float> %i.dt, %i.du
  %i.dw = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dv) ; 2 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 0
  %i.dy = fadd float %i.dq, %i.dx
  %i.dz = extractelement <2 x float> %i.dw, i64 1
  %i.ea = fadd float %i.dy, %i.dz
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !52
  %i.ed = icmp slt i32 %i.ec, 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !53
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = sext i32 %2 to i64
  %i.ej = mul i64 %i.eh, %i.ei
  %.sink.idx.i.i45 = select i1 %i.ed, i64 0, i64 %i.ej
  %.sink.i.i46 = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink.idx.i.i45 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.em = icmp slt i32 %i.el, 2
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !53
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = sext i32 %4 to i64
  %i.es = mul i64 %i.eq, %i.er
  %.sink.idx.i12.i47 = select i1 %i.em, i64 0, i64 %i.es
  %.sink.i13.i48 = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sink.idx.i12.i47 ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !54
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink.i13.i48, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !54
  %i.ex = fsub float %i.eu, %i.ew                 ; 2 uses
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float 0.000000e+00)
  %i.ez = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 8
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !54
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink.i13.i48, i64 8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !54
  %i.fd = fsub float %i.fa, %i.fc                 ; 2 uses
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.fd, float %i.ey)
  %i.ff = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 12
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !54
  %i.fh = getelementptr inbounds nuw i8, ptr %.sink.i13.i48, i64 12
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !54
  %i.fj = fsub float %i.fg, %i.fi                 ; 2 uses
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fe)
  %i.fl = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 16
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !54
  %i.fn = getelementptr inbounds nuw i8, ptr %.sink.i13.i48, i64 16
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !54
  %i.fp = fsub float %i.fm, %i.fo                 ; 2 uses
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fp, float %i.fk)
  %i.fr = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 20
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !54
  %i.ft = getelementptr inbounds nuw i8, ptr %.sink.i13.i48, i64 20
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !54
  %i.fv = fsub float %i.fs, %i.fu                 ; 2 uses
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.fq)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 24
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !54
  %i.fz = getelementptr inbounds nuw i8, ptr %.sink.i13.i48, i64 24
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !54
  %i.gb = fsub float %i.fy, %i.ga                 ; 2 uses
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gb, float %i.fw)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sink.i.i46, i64 28
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !54
  %i.gf = getelementptr inbounds nuw i8, ptr %.sink.i13.i48, i64 28
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !54
  %i.gh = fsub float %i.ge, %i.gg                 ; 2 uses
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gh, float %i.gc)
  %i.gj = tail call noundef float @sqrtf(float noundef %i.gi) #16
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !52
  %i.gm = icmp slt i32 %i.gl, 2
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !53
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = sext i32 %2 to i64
  %i.gs = mul i64 %i.gq, %i.gr
  %.sink.idx.i.i49 = select i1 %i.gm, i64 0, i64 %i.gs
  %.sink.i.i50 = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sink.idx.i.i49 ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !52
  %i.gv = icmp slt i32 %i.gu, 2
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !53
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = sext i32 %4 to i64
  %i.hb = mul i64 %i.gz, %i.ha
  %.sink.idx.i12.i51 = select i1 %i.gv, i64 0, i64 %i.hb
  %.sink.i13.i52 = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.sink.idx.i12.i51 ; 7 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sink.i.i50, i64 4
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !54
  %i.he = getelementptr inbounds nuw i8, ptr %.sink.i13.i52, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !54
  %i.hg = fsub float %i.hd, %i.hf                 ; 2 uses
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hg, float 0.000000e+00)
  %i.hi = getelementptr inbounds nuw i8, ptr %.sink.i.i50, i64 8
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !54
  %i.hk = getelementptr inbounds nuw i8, ptr %.sink.i13.i52, i64 8
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !54
  %i.hm = fsub float %i.hj, %i.hl                 ; 2 uses
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.hm, float %i.hh)
  %i.ho = getelementptr inbounds nuw i8, ptr %.sink.i.i50, i64 12
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !54
  %i.hq = getelementptr inbounds nuw i8, ptr %.sink.i13.i52, i64 12
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !54
  %i.hs = fsub float %i.hp, %i.hr                 ; 2 uses
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.hs, float %i.hn)
  %i.hu = getelementptr inbounds nuw i8, ptr %.sink.i.i50, i64 16
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !54
  %i.hw = getelementptr inbounds nuw i8, ptr %.sink.i13.i52, i64 16
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !54
  %i.hy = fsub float %i.hv, %i.hx                 ; 2 uses
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.ht)
  %i.ia = getelementptr inbounds nuw i8, ptr %.sink.i.i50, i64 20
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !54
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink.i13.i52, i64 20
  %i.id = load float, ptr %i.ic, align 4, !tbaa !54
  %i.ie = fsub float %i.ib, %i.id                 ; 2 uses
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.ie, float %i.hz)
  %i.ig = getelementptr inbounds nuw i8, ptr %.sink.i.i50, i64 24
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !54
  %i.ii = getelementptr inbounds nuw i8, ptr %.sink.i13.i52, i64 24
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !54
  %i.ik = fsub float %i.ih, %i.ij                 ; 2 uses
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.ik, float %i.if)
  %i.im = getelementptr inbounds nuw i8, ptr %.sink.i.i50, i64 28
  %i.in = load float, ptr %i.im, align 4, !tbaa !54
  %i.io = getelementptr inbounds nuw i8, ptr %.sink.i13.i52, i64 28
  %i.ip = load float, ptr %i.io, align 4, !tbaa !54
  %i.iq = fsub float %i.in, %i.ip                 ; 2 uses
  %i.ir = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %i.iq, float %i.il)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !52
  %i.iu = icmp slt i32 %i.it, 2
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !53
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 128
end_hunk_0
begin_hunk_1_@_ZN2cv11xfeatures2d14pct_signaturesL15computeDistanceEiRKNS_3MatEiS4_i:bb.a
  %foldExtExtBinop91 = fmul <4 x float> %i.jo, %foldExtExtBinop89
  %foldExtExtBinop93 = fmul <4 x float> %i.jo, %foldExtExtBinop91
  %i.jr = extractelement <4 x float> %foldExtExtBinop93, i64 0
  %i.js = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.jq, float 0.000000e+00)
  %i.jt = extractelement <4 x float> %i.jo, i64 1
  %foldExtExtBinop95 = fmul <4 x float> %i.jo, %i.jp
  %foldExtExtBinop97 = fmul <4 x float> %i.jo, %foldExtExtBinop95
  %foldExtExtBinop99 = fmul <4 x float> %i.jo, %foldExtExtBinop97
  %i.ju = extractelement <4 x float> %foldExtExtBinop99, i64 1
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.jt, float %i.js)
  %i.jw = extractelement <4 x float> %i.jo, i64 2
  %foldExtExtBinop101 = fmul <4 x float> %i.jo, %i.jp
  %foldExtExtBinop103 = fmul <4 x float> %i.jo, %foldExtExtBinop101
  %foldExtExtBinop105 = fmul <4 x float> %i.jo, %foldExtExtBinop103
  %i.jx = extractelement <4 x float> %foldExtExtBinop105, i64 2
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.jw, float %i.jv)
  %i.jz = extractelement <4 x float> %i.jo, i64 3
  %foldExtExtBinop107 = fmul <4 x float> %i.jo, %i.jp
  %foldExtExtBinop109 = fmul <4 x float> %i.jo, %foldExtExtBinop107
  %foldExtExtBinop111 = fmul <4 x float> %i.jo, %foldExtExtBinop109
  %i.ka = extractelement <4 x float> %foldExtExtBinop111, i64 3
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.ka, float %i.jz, float %i.jy)
  %i.kc = getelementptr inbounds nuw i8, ptr %.sink.i.i54, i64 20
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !54
  %i.ke = getelementptr inbounds nuw i8, ptr %.sink.i16.i, i64 20
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !54
  %i.kg = fsub float %i.kd, %i.kf                 ; 5 uses
  %i.kh = tail call noundef float @llvm.fabs.f32(float %i.kg)
  %i.ki = fmul float %i.kg, %i.kh
  %i.kj = fmul float %i.kg, %i.ki
  %i.kk = fmul float %i.kg, %i.kj
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kk, float %i.kg, float %i.kb)
  %i.km = getelementptr inbounds nuw i8, ptr %.sink.i.i54, i64 24
  %i.kn = getelementptr inbounds nuw i8, ptr %.sink.i16.i, i64 24
  %i.ko = load <2 x float>, ptr %i.km, align 4, !tbaa !54
  %i.kp = load <2 x float>, ptr %i.kn, align 4, !tbaa !54
  %i.kq = fsub <2 x float> %i.ko, %i.kp           ; 9 uses
  %i.kr = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kq) ; 2 uses
  %i.ks = extractelement <2 x float> %i.kq, i64 0
  %foldExtExtBinop113 = fmul <2 x float> %i.kq, %i.kr
  %foldExtExtBinop115 = fmul <2 x float> %i.kq, %foldExtExtBinop113
  %foldExtExtBinop117 = fmul <2 x float> %i.kq, %foldExtExtBinop115
  %i.kt = extractelement <2 x float> %foldExtExtBinop117, i64 0
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.ks, float %i.kl)
  %i.kv = extractelement <2 x float> %i.kq, i64 1
  %foldExtExtBinop119 = fmul <2 x float> %i.kq, %i.kr
  %foldExtExtBinop121 = fmul <2 x float> %i.kq, %foldExtExtBinop119
  %foldExtExtBinop123 = fmul <2 x float> %i.kq, %foldExtExtBinop121
  %i.kw = extractelement <2 x float> %foldExtExtBinop123, i64 1
  %i.kx = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.kv, float %i.ku)
  %i.ky = tail call noundef float @powf(float noundef %i.kx, float noundef 2.000000e-01) #16
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !52
  %i.lb = icmp slt i32 %i.la, 2
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !53
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.lf = load i64, ptr %i.le, align 8
  %i.lg = sext i32 %2 to i64
  %i.lh = mul i64 %i.lf, %i.lg
  %.sink.idx.i.i55 = select i1 %i.lb, i64 0, i64 %i.lh
  %.sink.i.i56 = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.sink.idx.i.i55 ; 7 uses
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !52
  %i.lk = icmp slt i32 %i.lj, 2
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !53
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = sext i32 %4 to i64
  %i.lq = mul i64 %i.lo, %i.lp
  %.sink.idx.i13.i = select i1 %i.lk, i64 0, i64 %i.lq
  %.sink.i14.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.sink.idx.i13.i ; 7 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sink.i.i56, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !54
  %i.lt = getelementptr inbounds nuw i8, ptr %.sink.i14.i, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !54
  %i.lv = fsub float %i.ls, %i.lu                 ; 2 uses
  %i.lw = fcmp ogt float %i.lv, 0.000000e+00
  %.1.i = select i1 %i.lw, float %i.lv, float 0.000000e+00 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.sink.i.i56, i64 8
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !54
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink.i14.i, i64 8
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !54
  %i.mb = fsub float %i.ly, %i.ma                 ; 2 uses
  %i.mc = fcmp ogt float %i.mb, %.1.i
  %.1.1.i = select i1 %i.mc, float %i.mb, float %.1.i ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sink.i.i56, i64 12
  %i.me = load float, ptr %i.md, align 4, !tbaa !54
  %i.mf = getelementptr inbounds nuw i8, ptr %.sink.i14.i, i64 12
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !54
  %i.mh = fsub float %i.me, %i.mg                 ; 2 uses
  %i.mi = fcmp ogt float %i.mh, %.1.1.i
  %.1.2.i = select i1 %i.mi, float %i.mh, float %.1.1.i ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sink.i.i56, i64 16
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !54
  %i.ml = getelementptr inbounds nuw i8, ptr %.sink.i14.i, i64 16
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !54
  %i.mn = fsub float %i.mk, %i.mm                 ; 2 uses
  %i.mo = fcmp ogt float %i.mn, %.1.2.i
  %.1.3.i = select i1 %i.mo, float %i.mn, float %.1.2.i ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sink.i.i56, i64 20
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !54
  %i.mr = getelementptr inbounds nuw i8, ptr %.sink.i14.i, i64 20
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !54
  %i.mt = fsub float %i.mq, %i.ms                 ; 2 uses
  %i.mu = fcmp ogt float %i.mt, %.1.3.i
  %.1.4.i = select i1 %i.mu, float %i.mt, float %.1.3.i ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sink.i.i56, i64 24
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !54
  %i.mx = getelementptr inbounds nuw i8, ptr %.sink.i14.i, i64 24
  %i.my = load float, ptr %i.mx, align 4, !tbaa !54
  %i.mz = fsub float %i.mw, %i.my                 ; 2 uses
  %i.na = fcmp ogt float %i.mz, %.1.4.i
  %.1.5.i = select i1 %i.na, float %i.mz, float %.1.4.i ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sink.i.i56, i64 28
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !54
  %i.nd = getelementptr inbounds nuw i8, ptr %.sink.i14.i, i64 28
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !54
  %i.nf = fsub float %i.nc, %i.ne                 ; 2 uses
  %i.ng = fcmp ogt float %i.nf, %.1.5.i
  %.1.6.i = select i1 %i.ng, float %i.nf, float %.1.5.i
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv11xfeatures2d14pct_signaturesL15computeDistanceEiRKNS_3MatEiS4_i, ptr noundef nonnull @.str.5, i32 noundef 208) #15
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.nh = landingpad { ptr, i32 }
          cleanup
  %i.ni = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !32
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.nh

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.032 = phi float [ %i.at, %bb.b ], [ %i.ck, %bb.c ], [ %i.ea, %bb.d ], [ %i.gj, %bb.e ], [ %i.ir, %bb.f ], [ %i.ky, %bb.g ], [ %.1.6.i, %bb.h ]
  ret float %.032
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #10

declare void @_ZN2cv6reduceERKNS_11_InputArrayERKNS_12_OutputArrayEiii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @_ZN2cv7sortIdxERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { noreturn }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 int", !8, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!10, !9, i64 8}
!12 = !{!10, !9, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!9, !9, i64 0}
!15 = !{!10, !9, i64 16}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!5, !5, i64 0}
!18 = !{!"_ZTSN2cv9AlgorithmE"}
!19 = !{!"_ZTSN2cv11xfeatures2d14pct_signatures14PCTClusterizerE", !18, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !10, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorIiSaIiEE", !21, i64 0}
!23 = !{!"float", !4, i64 0}
!24 = !{!"_ZTSN2cv11xfeatures2d14pct_signatures19PCTClusterizer_ImplE", !19, i64 0, !22, i64 8, !5, i64 32, !5, i64 36, !5, i64 40, !23, i64 44, !23, i64 48, !5, i64 52}
!25 = !{!24, !5, i64 32}
!26 = !{!24, !5, i64 36}
!27 = !{!24, !5, i64 40}
!28 = !{!24, !23, i64 44}
!29 = !{!24, !23, i64 48}
!30 = !{!24, !5, i64 52}
!31 = !{!"p1 omnipotent char", !8, i64 0}
!32 = !{!4, !4, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!34 = !{!"long", !4, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !34, i64 8, !4, i64 16}
!36 = !{!35, !31, i64 0}
!37 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!38 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !37, i64 16}
!39 = !{!38, !8, i64 8}
!40 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!41 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!42 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!43 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !42, i64 4, !5, i64 8, !4, i64 12}
!44 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!45 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !40, i64 56, !41, i64 64, !43, i64 72, !44, i64 128}
!46 = !{!45, !5, i64 8}
!47 = !{!"_ZTSN2cv5Rect_IiEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!48 = !{!47, !5, i64 0}
!49 = !{!47, !5, i64 4}
!50 = !{!47, !5, i64 8}
!51 = !{!47, !5, i64 12}
!52 = !{!45, !5, i64 4}
!53 = !{!45, !31, i64 24}
!54 = !{!23, !23, i64 0}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!45, !5, i64 0}
!57 = !{!38, !5, i64 0}
!58 = !{!37, !5, i64 0}
!59 = !{!37, !5, i64 4}
!60 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!61 = !{!60, !5, i64 0}
!62 = !{!60, !5, i64 4}
!63 = distinct !{!63, i1 false, !"_ZN2cvL7makePtrINS_11xfeatures2d14pct_signatures19PCTClusterizer_ImplEJSt6vectorIiSaIiEEiiiffiEEENS_3PtrIT_EEDpRKT0_"}
!64 = distinct !{!64, !63, !"_ZN2cvL7makePtrINS_11xfeatures2d14pct_signatures19PCTClusterizer_ImplEJSt6vectorIiSaIiEEiiiffiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!65 = distinct !{!65, i1 false, !"_ZSt11make_sharedIN2cv11xfeatures2d14pct_signatures19PCTClusterizer_ImplEJRKSt6vectorIiSaIiEERKiSA_SA_RKfSC_SA_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESF_E4typeEEDpOT0_"}
!66 = distinct !{!66, !65, !"_ZSt11make_sharedIN2cv11xfeatures2d14pct_signatures19PCTClusterizer_ImplEJRKSt6vectorIiSaIiEERKiSA_SA_RKfSC_SA_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESF_E4typeEEDpOT0_: argument 0"}
!67 = !{!66, !64}
!68 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!69 = !{!68, !5, i64 8}
!70 = !{!68, !5, i64 12}
!71 = !{!"vtable pointer", !3, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p1 _ZTSN2cv11xfeatures2d14pct_signatures14PCTClusterizerE", !8, i64 0}
!74 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!75 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0}
!76 = !{!"_ZTSSt12__shared_ptrIN2cv11xfeatures2d14pct_signatures14PCTClusterizerELN9__gnu_cxx12_Lock_policyE2EE", !73, i64 0, !75, i64 8}
!77 = !{!76, !73, i64 0}
!78 = !{!75, !74, i64 0}
!79 = !{!"_ZTSSt9type_info", !31, i64 8}
!80 = !{!79, !31, i64 8}
!81 = distinct !{!81, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!82 = distinct !{!82, !81, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!83 = distinct !{!83, !55}
!84 = distinct !{!84, !55}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !55}
!87 = distinct !{!87, !55}
!88 = distinct !{!88, !55}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !100}
!91 = distinct !{!91, !55}
!92 = distinct !{!92, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!93 = distinct !{!93, !92, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!94 = !{!82}
!95 = !{!"double", !4, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!43, !5, i64 0}
!98 = !{!"branch_weights", i32 1, i32 1048575}
!99 = !{!45, !5, i64 12}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!93}
!102 = !{!33, !31, i64 0}
!103 = !{!34, !34, i64 0}
!104 = !{!35, !34, i64 8}
!105 = distinct !{!105, i1 false, !"_ZNK2cv3Mat3rowEi"}
!106 = distinct !{!106, !105, !"_ZNK2cv3Mat3rowEi: argument 0"}
!107 = distinct !{!107, !55}
!108 = !{!106}
!109 = distinct !{!109, !55}
!110 = distinct !{!110, i1 false, !"_ZNK2cv3Mat3rowEi"}
!111 = distinct !{!111, !110, !"_ZNK2cv3Mat3rowEi: argument 0"}
!112 = distinct !{!112, i1 false, !"_ZNK2cv3Mat3rowEi"}
!113 = distinct !{!113, !112, !"_ZNK2cv3Mat3rowEi: argument 0"}
!114 = distinct !{!114, !55}
!115 = !{!111}
!116 = !{!113}
!117 = distinct !{!117, i1 false, !"_ZNK2cv3Mat3rowEi"}
!118 = distinct !{!118, !117, !"_ZNK2cv3Mat3rowEi: argument 0"}
!119 = distinct !{!119, i1 false, !"_ZNK2cv3Mat3rowEi"}
!120 = distinct !{!120, !119, !"_ZNK2cv3Mat3rowEi: argument 0"}
!121 = distinct !{!121, !55}
!122 = !{!118}
!123 = !{!120}
end_hunk_1
