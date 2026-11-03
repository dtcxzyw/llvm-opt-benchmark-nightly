Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bgfg_gsoc?download=true
inline.NumInlined: 1192
inline.NumDeleted: 479
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv6bgsegm28BackgroundSubtractorLSBPDesc18calcLocalSVDValuesERKNS_12_OutputArrayERKNS_3MatE:bb.a
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i ; 2 uses
  %i.cc = load float, ptr %.sink.i, align 4, !tbaa !44 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !44
  %i.cf = mul i64 %i.ca, %indvars.iv
  %.sink.idx.i69 = select i1 %i.aq, i64 0, i64 %i.cf
  %.sink.i70 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i69 ; 2 uses
  %i.cg = load float, ptr %.sink.i70, align 4, !tbaa !44 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sink.i70, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.cj = mul i64 %i.ca, %indvars.iv.next
  %.sink.idx.i75 = select i1 %i.aq, i64 0, i64 %i.cj
  %.sink.i76 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i75 ; 2 uses
  %i.ck = load float, ptr %.sink.i76, align 4, !tbaa !44 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sink.i76, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !44
  %i.cn = call fastcc noundef float @_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff(float noundef %i.cc, float noundef %i.cc, float noundef %i.ce, float noundef %i.cg, float noundef %i.cg, float noundef %i.ci, float noundef %i.ck, float noundef %i.ck, float noundef %i.cm)
  %i.co = load i64, ptr %i.az, align 8
  %i.cp = mul i64 %i.co, %indvars.iv
  %.sink.idx.i81 = select i1 %i.aw, i64 0, i64 %i.cp
  %.sink.i82 = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink.idx.i81
  store float %i.cn, ptr %.sink.i82, align 4, !tbaa !44
  %i.cq = load i64, ptr %i.at, align 8            ; 3 uses
  %i.cr = mul i64 %i.cq, %i.bz
  %.sink.idx.i83 = select i1 %i.aq, i64 0, i64 %i.cr
  %.sink.i84 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i83 ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %.sink.i84, i64 %i.bb
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !44
  %i.cu = getelementptr inbounds [4 x i8], ptr %.sink.i84, i64 %i.bd
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !44 ; 2 uses
  %i.cw = mul i64 %i.cq, %indvars.iv
  %.sink.idx.i89 = select i1 %i.aq, i64 0, i64 %i.cw
  %.sink.i90 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i89 ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %.sink.i90, i64 %i.bb
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !44
  %i.cz = getelementptr inbounds [4 x i8], ptr %.sink.i90, i64 %i.bd
  %i.da = load float, ptr %i.cz, align 4, !tbaa !44 ; 2 uses
  %i.db = mul i64 %i.cq, %indvars.iv.next
  %.sink.idx.i95 = select i1 %i.aq, i64 0, i64 %i.db
  %.sink.i96 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i95 ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %.sink.i96, i64 %i.bb
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !44
  %i.de = getelementptr inbounds [4 x i8], ptr %.sink.i96, i64 %i.bd
  %i.df = load float, ptr %i.de, align 4, !tbaa !44 ; 2 uses
  %i.dg = call fastcc noundef float @_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff(float noundef %i.ct, float noundef %i.cv, float noundef %i.cv, float noundef %i.cy, float noundef %i.da, float noundef %i.da, float noundef %i.dd, float noundef %i.df, float noundef %i.df)
  %i.dh = load i64, ptr %i.az, align 8
  %i.di = mul i64 %i.dh, %indvars.iv
  %.sink.idx.i101 = select i1 %i.aw, i64 0, i64 %i.di
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i101
  store float %i.dg, ptr %gep, align 4, !tbaa !44
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.u, !llvm.loop !173

._crit_edge:                                      ; preds = %bb.v, %.preheader
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.v:                                             ; preds = %.lr.ph166, %bb.v
  %indvars.iv168 = phi i64 [ 1, %.lr.ph166 ], [ %indvars.iv.next169, %bb.v ] ; 8 uses
  %i.dj = add nsw i64 %indvars.iv168, -1          ; 4 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !44 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv168
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !44 ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next169
  %i.dp = load float, ptr %i.do, align 4, !tbaa !44 ; 2 uses
  %i.dq = load i64, ptr %i.bj, align 8
  %.sink.idx.i115 = select i1 %i.bk, i64 0, i64 %i.dq
  %.sink.i116 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink.idx.i115 ; 3 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %.sink.i116, i64 %i.dj
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !44
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sink.i116, i64 %indvars.iv168
  %i.du = load float, ptr %i.dt, align 4, !tbaa !44
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i116, i64 %indvars.iv.next169
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !44
  %i.dx = call fastcc noundef float @_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff(float noundef %i.dl, float noundef %i.dn, float noundef %i.dp, float noundef %i.dl, float noundef %i.dn, float noundef %i.dp, float noundef %i.ds, float noundef %i.du, float noundef %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv168
  store float %i.dx, ptr %i.dy, align 4, !tbaa !44
  %i.dz = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.ea = mul i64 %i.dz, %i.br
  %.sink.idx.i123 = select i1 %i.bk, i64 0, i64 %i.ea
  %.sink.i124 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink.idx.i123 ; 3 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %.sink.i124, i64 %i.dj
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !44
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sink.i124, i64 %indvars.iv168
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !44
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sink.i124, i64 %indvars.iv.next169
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !44
  %i.eh = mul i64 %i.dz, %i.bs
  %.sink.idx.i129 = select i1 %i.bk, i64 0, i64 %i.eh
  %.sink.i130 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink.idx.i129 ; 3 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %.sink.i130, i64 %i.dj
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !44 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sink.i130, i64 %indvars.iv168
  %i.el = load float, ptr %i.ek, align 4, !tbaa !44 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sink.i130, i64 %indvars.iv.next169
  %i.en = load float, ptr %i.em, align 4, !tbaa !44 ; 2 uses
  %i.eo = call fastcc noundef float @_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff(float noundef %i.ec, float noundef %i.ee, float noundef %i.eg, float noundef %i.ej, float noundef %i.el, float noundef %i.en, float noundef %i.ej, float noundef %i.el, float noundef %i.en)
  %i.ep = load i64, ptr %i.bp, align 8
  %i.eq = mul i64 %i.ep, %i.bs
  %.sink.idx.i141 = select i1 %i.bt, i64 0, i64 %i.eq
  %.sink.i142 = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sink.idx.i141
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sink.i142, i64 %indvars.iv168
  store float %i.eo, ptr %i.er, align 4, !tbaa !44
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %._crit_edge, label %bb.v, !llvm.loop !174

bb.w:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.pn58 = phi { ptr, i32 } [ %i.bw, %bb.r ], [ %i.bx, %bb.s ], [ %i.by, %bb.t ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.w ], [ %i.bv, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.x
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.x ], [ %i.bu, %bb.p ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn58.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef float @_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) unnamed_addr #4 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %4, i64 1 ; 2 uses
  %i.c = fmul <2 x float> %i.b, %i.b
  %i.d = insertelement <4 x float> poison, float %1, i64 0
  %i.e = insertelement <4 x float> %i.d, float %4, i64 2
  %i.f = insertelement <4 x float> %i.e, float %7, i64 3 ; 2 uses
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.h = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.i = fmul <4 x float> %i.g, %i.h
  %i.j = insertelement <2 x float> poison, float %0, i64 0
  %i.k = insertelement <2 x float> %i.j, float %3, i64 1 ; 2 uses
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.k, <2 x float> %i.c)
  %i.m = insertelement <2 x float> poison, float %2, i64 0
  %i.n = insertelement <2 x float> %i.m, float %5, i64 1 ; 2 uses
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.n, <2 x float> %i.l) ; 2 uses
  %i.p = insertelement <4 x float> poison, float %0, i64 0
  %i.q = insertelement <4 x float> %i.p, float %3, i64 2
  %i.r = insertelement <4 x float> %i.q, float %6, i64 3 ; 2 uses
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.t = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %i.t, <4 x float> %i.i)
  %i.v = insertelement <4 x float> poison, float %2, i64 0
  %i.w = insertelement <4 x float> %i.v, float %5, i64 2
  %i.x = insertelement <4 x float> %i.w, float %8, i64 3 ; 2 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.z = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.z, <4 x float> %i.u) ; 4 uses
  %i.ab = extractelement <2 x float> %i.o, i64 0  ; 2 uses
  %i.ac = extractelement <2 x float> %i.o, i64 1  ; 2 uses
  %i.ad = fadd float %i.ab, %i.ac
  %i.ae = extractelement <4 x float> %i.aa, i64 3 ; 2 uses
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = fdiv float %i.af, 3.000000e+00          ; 7 uses
  %i.ah = fsub float %i.ab, %i.ag                 ; 3 uses
  %i.ai = fsub float %i.ac, %i.ag                 ; 3 uses
  %i.aj = fsub float %i.ae, %i.ag                 ; 3 uses
  %i.ak = fmul float %i.ai, %i.ai
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ak)
  %i.am = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.al)
  %i.an = extractelement <4 x float> %i.aa, i64 1 ; 3 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = extractelement <4 x float> %i.aa, i64 0 ; 3 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = extractelement <4 x float> %i.aa, i64 2 ; 3 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.aq)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float 2.000000e+00, float %i.am)
  %i.au = fdiv float %i.at, 6.000000e+00
  %i.av = tail call noundef float @sqrtf(float noundef %i.au) #24 ; 3 uses
  %i.aw = fcmp oeq float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = fdiv float 1.000000e+00, %i.av          ; 6 uses
  %i.ay = fmul float %i.ah, %i.ax
  %i.az = fmul float %i.ap, %i.ax                 ; 2 uses
  %i.ba = fmul float %i.an, %i.ax                 ; 3 uses
  %i.bb = fmul float %i.ai, %i.ax                 ; 2 uses
  %i.bc = fmul float %i.ar, %i.ax                 ; 3 uses
  %i.bd = fmul float %i.aj, %i.ax                 ; 2 uses
  %i.be = fneg float %i.bc
  %i.bf = fmul float %i.bc, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bd, float %i.bf)
  %i.bh = fmul float %i.ba, 2.000000e+00
  %i.bi = fneg float %i.az
  %i.bj = fmul float %i.bd, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bc, float %i.bj)
  %i.bl = fmul float %i.az, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bg, float %i.bl)
  %i.bn = fneg float %i.ba
  %i.bo = fmul float %i.ba, %i.bn
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.bb, float %i.bm)
  %i.bq = fmul float %i.bp, 5.000000e-01          ; 3 uses
  %i.br = fcmp ugt float %i.bq, -1.000000e+00
  br i1 %i.br, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bs = fcmp ult float %i.bq, 1.000000e+00
  br i1 %i.bs, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bt = tail call noundef float @acosf(float noundef %i.bq) #24
  %i.bu = fdiv float %i.bt, 3.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.092 = phi float [ %i.bu, %bb.d ], [ f0x3F860A92, %bb.b ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bv = fmul float %i.av, 2.000000e+00          ; 2 uses
  %i.bw = tail call noundef float @cosf(float noundef %.092) #24
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bw, float %i.ag) ; 3 uses
  %i.by = fmul float %i.ag, 3.000000e+00
  %i.bz = fcmp olt float %i.bx, %i.by
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ca = fadd float %.092, f0x40060A92
  %i.cb = tail call noundef float @cosf(float noundef %i.ca) #24
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.cb, float %i.ag) ; 2 uses
  %i.cd = fcmp olt float %i.cc, 0.000000e+00
  %i.ce = fneg float %i.bx
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ag, float 3.000000e+00, float %i.ce)
  %.sroa.speculated99 = select i1 %i.cd, float 0.000000e+00, float %i.cc ; 2 uses
  %i.cg = fsub float %i.cf, %.sroa.speculated99   ; 2 uses
  %i.ch = fcmp olt float %i.cg, 0.000000e+00
  %.sroa.speculated = select i1 %i.ch, float 0.000000e+00, float %i.cg
  %i.ci = insertelement <2 x float> poison, float %.sroa.speculated, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %.sroa.speculated99, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ck = phi <2 x float> [ %i.cj, %bb.f ], [ zeroinitializer, %bb.e ]
  %i.cl = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fdiv <2 x float> %i.ck, %i.cm           ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = tail call noundef float @sqrtf(float noundef %i.co) #24
  %i.cq = extractelement <2 x float> %i.cn, i64 1
  %i.cr = tail call noundef float @sqrtf(float noundef %i.cq) #24
  %i.cs = fadd float %i.cp, %i.cr
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.093 = phi float [ %i.cs, %bb.g ], [ 0.000000e+00, %bb.a ]
  ret float %.093
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6bgsegm28BackgroundSubtractorLSBPDesc25computeFromLocalSVDValuesERKNS_12_OutputArrayERKNS_3MatEPKNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Range", align 4         ; 6 uses
  %7 = alloca %"class.cv::bgsegm::(anonymous namespace)::ParallelFromLocalSVDValues", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.17, i32 noundef 109) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ai, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.l = icmp eq i32 %i.b, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.b, 0
  %i.q = zext i1 %i.p to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.r = phi i32 [ %i.o, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %i.s = icmp eq i32 %i.b, 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp sgt i32 %i.b, -1
  %i.w = zext i1 %i.v to i32
  %i.x = select i1 %i.s, i32 %i.u, i32 %i.w       ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.x to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.r to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  tail call void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.0.0.insert.insert.i, i32 noundef 4, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.y = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !178
  %i.z = icmp eq i32 %i.y, 65536
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26, !noalias !178
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.ab)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.i:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ac = mul nsw i32 %i.x, %i.r
  store i32 0, ptr %6, align 4, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv6bgsegm12_GLOBAL__N_126ParallelFromLocalSVDValuesE, i64 16), ptr %7, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ae, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %5, ptr %i.af, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.ag, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %2, ptr %i.ah, align 8, !tbaa !49
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef -1.000000e+00)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.k:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN2cv6bgsegm28BackgroundSubtractorLSBPImplD2Ev:bb.a
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !90
  %i.z = load ptr, ptr %.val, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24, !inline_history !3
  %i.ac = load ptr, ptr %.val, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24, !inline_history !3
  br label %_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i3 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i5 = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i5, 1
  br i1 %i.ai, label %bb.m, label %_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6, !prof !100

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24
  br label %_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6

_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6: ; preds = %_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4, %bb.m
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6bgsegm28BackgroundSubtractorLSBPImplD0Ev(ptr noundef nonnull align 8 dereferenceable(984) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6bgsegm28BackgroundSubtractorLSBPImplD2Ev(ptr noundef nonnull align 8 dead_on_return(984) dereferenceable(984) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 984) #26
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv6bgsegm12_GLOBAL__N_122ParallelLocalSVDValuesD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK2cv6bgsegm12_GLOBAL__N_122ParallelLocalSVDValuesclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge47.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !371  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !167, !align !168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !167, !align !168 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  br i1 %i.g, label %.preheader.lr.ph.split, label %._crit_edge47.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.n = add nsw i32 %i.f, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !41
  %i.t = icmp slt i32 %i.s, 2                     ; 3 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !42   ; 3 uses
  %i.v = load i32, ptr %i.p, align 4, !tbaa !41
  %i.w = icmp slt i32 %i.v, 2
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.y = sext i32 %i.a to i64
  %wide.trip.count52 = sext i32 %i.c to i64
  %wide.trip.count = zext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv49 = phi i64 [ %i.y, %.preheader.lr.ph.split ], [ %indvars.iv.next50, %._crit_edge ] ; 4 uses
  %i.z = add nsw i64 %indvars.iv49, -1
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 3 uses
  br label %bb.b

._crit_edge47.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff.exit
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %._crit_edge47.split, label %.preheader, !llvm.loop !368

bb.b:                                             ; preds = %.preheader, %_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff.exit
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff.exit ] ; 5 uses
  %i.aa = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ab = load i64, ptr %i.j, align 8             ; 3 uses
  %i.ac = mul i64 %i.ab, %i.z
  %.sink.idx.i = select i1 %i.t, i64 0, i64 %i.ac
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink.idx.i ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.aa
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv.next
  %i.ag = load float, ptr %i.af, align 4, !tbaa !44 ; 2 uses
  %i.ah = mul i64 %i.ab, %indvars.iv49
  %.sink.idx.i31 = select i1 %i.t, i64 0, i64 %i.ah
  %.sink.i32 = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink.idx.i31 ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %.sink.i32, i64 %i.aa
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i32, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sink.i32, i64 %indvars.iv.next
  %i.al = load float, ptr %i.ak, align 4, !tbaa !44 ; 3 uses
  %i.am = mul i64 %i.ab, %indvars.iv.next50
  %.sink.idx.i37 = select i1 %i.t, i64 0, i64 %i.am
  %.sink.i38 = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink.idx.i37 ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.sink.i38, i64 %i.aa
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sink.i38, i64 %indvars.iv.next
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !44 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ad, align 4, !tbaa !44 ; 3 uses
  %i.ar = load float, ptr %i.ae, align 4, !tbaa !44
  %i.as = load <2 x float>, ptr %i.ai, align 4, !tbaa !44 ; 4 uses
  %i.at = load float, ptr %i.aj, align 4, !tbaa !44
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> %i.as, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.av = fmul <2 x float> %i.au, %i.au
  %i.aw = shufflevector <2 x float> %i.aq, <2 x float> %i.as, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.aw, <2 x float> %i.av)
  %i.ay = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.al, i64 1 ; 2 uses
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.az, <2 x float> %i.ax) ; 2 uses
  %i.bb = load <2 x float>, ptr %i.an, align 4, !tbaa !44 ; 2 uses
  %i.bc = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.at, i64 1
  %i.be = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 5, i32 poison> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.bi = fmul <4 x float> %i.bg, %i.bh
  %i.bj = shufflevector <2 x float> %i.aq, <2 x float> %i.as, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bl = shufflevector <2 x float> %i.as, <2 x float> %i.bb, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bl, <4 x float> %i.bi)
  %i.bn = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.al, i64 1
  %i.bp = insertelement <4 x float> %i.bo, float %i.ap, i64 2
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.br = insertelement <4 x float> poison, float %i.al, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.ap, i64 1
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.bt, <4 x float> %i.bm) ; 6 uses
  %i.bv = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bw = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bx = fadd float %i.bv, %i.bw
  %i.by = extractelement <4 x float> %i.bu, i64 3 ; 2 uses
  %i.bz = fadd float %i.bx, %i.by
  %i.ca = fdiv float %i.bz, 3.000000e+00          ; 7 uses
  %i.cb = fsub float %i.bv, %i.ca                 ; 3 uses
  %i.cc = fsub float %i.bw, %i.ca                 ; 3 uses
  %i.cd = fsub float %i.by, %i.ca                 ; 3 uses
  %i.ce = fmul float %i.cc, %i.cc
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.ce)
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cf)
  %foldExtExtBinop = fmul <4 x float> %i.bu, %i.bu
  %i.ch = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.ci = extractelement <4 x float> %i.bu, i64 0 ; 2 uses
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.ch)
  %i.ck = extractelement <4 x float> %i.bu, i64 2 ; 3 uses
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cj)
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float 2.000000e+00, float %i.cg)
  %i.cn = fdiv float %i.cm, 6.000000e+00
  %i.co = tail call noundef float @sqrtf(float noundef %i.cn) #24 ; 3 uses
  %i.cp = fcmp oeq float %i.co, 0.000000e+00
  br i1 %i.cp, label %_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cq = fdiv float 1.000000e+00, %i.co          ; 5 uses
  %i.cr = fmul float %i.cq, %i.cb
  %i.cs = fmul float %i.cq, %i.cc                 ; 2 uses
  %i.ct = fmul float %i.ck, %i.cq                 ; 3 uses
  %i.cu = fmul float %i.cq, %i.cd                 ; 2 uses
  %i.cv = fneg float %i.ct
  %i.cw = fmul float %i.ct, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cu, float %i.cw)
  %i.cy = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cz = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x float> %i.cy, %i.da           ; 4 uses
  %i.dc = extractelement <2 x float> %i.db, i64 1
  %i.dd = fmul float %i.dc, 2.000000e+00
  %i.de = fneg <2 x float> %i.db                  ; 2 uses
  %i.df = extractelement <2 x float> %i.de, i64 0
  %i.dg = fmul float %i.cu, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.ct, float %i.dg)
  %i.di = extractelement <2 x float> %i.db, i64 0
  %i.dj = fmul float %i.di, %i.dh
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cx, float %i.dj)
  %foldExtExtBinop59 = fmul <2 x float> %i.db, %i.de
  %i.dl = extractelement <2 x float> %foldExtExtBinop59, i64 1
  %i.dm = tail call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.cs, float %i.dk)
  %i.dn = fmul float %i.dm, 5.000000e-01          ; 3 uses
  %i.do = fcmp ugt float %i.dn, -1.000000e+00
  br i1 %i.do, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.dp = fcmp ult float %i.dn, 1.000000e+00
  br i1 %i.dp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dq = tail call noundef float @acosf(float noundef %i.dn) #24
  %i.dr = fdiv float %i.dq, 3.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.092.i = phi float [ %i.dr, %bb.e ], [ f0x3F860A92, %bb.c ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.ds = fmul float %i.co, 2.000000e+00          ; 2 uses
  %i.dt = tail call noundef float @cosf(float noundef %.092.i) #24
  %i.du = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.dt, float %i.ca) ; 3 uses
  %i.dv = fmul float %i.ca, 3.000000e+00
  %i.dw = fcmp olt float %i.du, %i.dv
  br i1 %i.dw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dx = fadd float %.092.i, f0x40060A92
  %i.dy = tail call noundef float @cosf(float noundef %i.dx) #24
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.dy, float %i.ca) ; 2 uses
  %i.ea = fcmp olt float %i.dz, 0.000000e+00
  %i.eb = fneg float %i.du
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.ca, float 3.000000e+00, float %i.eb)
  %.sroa.speculated99.i = select i1 %i.ea, float 0.000000e+00, float %i.dz ; 2 uses
  %i.ed = fsub float %i.ec, %.sroa.speculated99.i ; 2 uses
  %i.ee = fcmp olt float %i.ed, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ee, float 0.000000e+00, float %i.ed
  %i.ef = insertelement <2 x float> poison, float %.sroa.speculated.i, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %.sroa.speculated99.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.eh = phi <2 x float> [ %i.eg, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ei = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fdiv <2 x float> %i.eh, %i.ej           ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = tail call noundef float @sqrtf(float noundef %i.el) #24
  %i.en = extractelement <2 x float> %i.ek, i64 1
  %i.eo = tail call noundef float @sqrtf(float noundef %i.en) #24
  %i.ep = fadd float %i.em, %i.eo
  br label %_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff.exit

_ZN2cv6bgsegm12_GLOBAL__N_18localSVDEfffffffff.exit: ; preds = %bb.b, %bb.h
  %.093.i = phi float [ %i.ep, %bb.h ], [ 0.000000e+00, %bb.b ]
  %i.eq = load i64, ptr %i.m, align 8
  %i.er = mul i64 %i.eq, %indvars.iv49
  %.sink.idx.i43 = select i1 %i.w, i64 0, i64 %i.er
  %.sink.i44 = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink.idx.i43
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sink.i44, i64 %indvars.iv
  store float %.093.i, ptr %i.es, align 4, !tbaa !44
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !369
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv6bgsegm12_GLOBAL__N_126ParallelFromLocalSVDValuesD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK2cv6bgsegm12_GLOBAL__N_126ParallelFromLocalSVDValuesclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !374, !nonnull !167, !align !168 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !375, !nonnull !167, !align !168 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.02735 = phi i32 [ %i.a, %.lr.ph ], [ %i.ak, %bb.c ] ; 3 uses
  %i.u = load i32, ptr %i.e, align 8, !tbaa !376  ; 2 uses
  %i.v = sdiv i32 %.02735, %i.u                   ; 2 uses
  %i.w = srem i32 %.02735, %i.u                   ; 2 uses
  %i.x = load i32, ptr %i.h, align 4, !tbaa !41
  %i.y = icmp slt i32 %i.x, 2
  %i.z = load i64, ptr %i.k, align 8
  %i.aa = sext i32 %i.v to i64                    ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %.sink.idx.i = select i1 %i.y, i64 0, i64 %i.ab
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink.idx.i
  %i.ac = sext i32 %i.w to i64                    ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.ac ; 2 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !23
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !41
  %i.af = icmp slt i32 %i.ae, 2
  %i.ag = load i64, ptr %i.q, align 8
  %i.ah = mul i64 %i.ag, %i.aa
  %.sink.idx.i30 = select i1 %i.af, i64 0, i64 %i.ah
  %.sink.i31 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.idx.i30
  %i.ai = getelementptr inbounds [4 x i8], ptr %.sink.i31, i64 %i.ac
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !44
  br label %bb.d

bb.c:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %.02735, 1                  ; 2 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !32
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !372

bb.d:                                             ; preds = %bb.b, %bb.g
  %i.an = phi i32 [ 0, %bb.b ], [ %i.bo, %bb.g ]  ; 3 uses
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !378
  %i.ar = add nsw i32 %i.aq, %i.v                 ; 3 uses
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !379
  %i.at = add nsw i32 %i.as, %i.w                 ; 3 uses
  %i.au = icmp sgt i32 %i.ar, -1
  %i.av = icmp sgt i32 %i.at, -1
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = load i32, ptr %i.t, align 4
  %i.ax = icmp slt i32 %i.ar, %i.aw
  %or.cond41 = select i1 %or.cond, i1 %i.ax, i1 false
  %i.ay = load i32, ptr %i.e, align 8
  %i.az = icmp slt i32 %i.at, %i.ay
  %or.cond43 = select i1 %or.cond41, i1 %i.az, i1 false
  br i1 %or.cond43, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !41
  %i.bb = icmp slt i32 %i.ba, 2
  %i.bc = load i64, ptr %i.q, align 8
  %i.bd = zext nneg i32 %i.ar to i64
  %i.be = mul i64 %i.bc, %i.bd
  %.sink.idx.i32 = select i1 %i.bb, i64 0, i64 %i.be
  %.sink.i33 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.idx.i32
  %i.bf = zext nneg i32 %i.at to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sink.i33, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !44
  %i.bi = fsub float %i.bh, %i.aj
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp ogt float %i.bj, 5.000000e-02
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !100

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.e) #26
  br label %_ZSt8_DestroyIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPEEvPT_.exit

_ZSt8_DestroyIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6bgsegm28BackgroundSubtractorGSOCImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(952) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 952) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6bgsegm28BackgroundSubtractorGSOCImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(952) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv6bgsegm28BackgroundSubtractorGSOCImplD2Ev(ptr noundef nonnull align 8 dead_on_return(936) dereferenceable(936) %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6bgsegm28BackgroundSubtractorGSOCImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(952) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6bgsegm28BackgroundSubtractorGSOCImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 952) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6bgsegm28BackgroundSubtractorGSOCImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6bgsegm28BackgroundSubtractorLSBPImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6bgsegm28BackgroundSubtractorLSBPImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6bgsegm28BackgroundSubtractorLSBPImplD2Ev(ptr noundef nonnull align 8 dead_on_return(984) dereferenceable(984) %i.b) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 984) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6bgsegm28BackgroundSubtractorLSBPImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv6bgsegm28BackgroundSubtractorLSBPImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelGSOCELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !45}
!3 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"_ZTSN2cv10DataLayoutE", !9, i64 0}
!14 = !{!"_ZTSN2cv8MatShapeE", !10, i64 0, !13, i64 4, !10, i64 8, !9, i64 12}
!15 = !{!14, !10, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !19, i64 8, !9, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!10, !10, i64 0}
!24 = !{!"_ZTSN2cv5Size_IiEE", !10, i64 0, !10, i64 4}
!25 = !{!"_ZTSN2cv11_InputArrayE", !10, i64 0, !16, i64 8, !24, i64 16}
!26 = !{!25, !16, i64 8}
!27 = !{!24, !10, i64 0}
!28 = !{!24, !10, i64 4}
!29 = !{!25, !10, i64 0}
!30 = !{!"_ZTSN2cv5RangeE", !10, i64 0, !10, i64 4}
!31 = !{!30, !10, i64 0}
!32 = !{!30, !10, i64 4}
!33 = !{!"vtable pointer", !8, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTSN2cv3MatE", !16, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTSN2cv12MatAllocatorE", !16, i64 0}
!38 = !{!"p1 _ZTSN2cv8UMatDataE", !16, i64 0}
!39 = !{!"_ZTSN2cv7MatStepE", !9, i64 0}
!40 = !{!"_ZTSN2cv3MatE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !37, i64 56, !38, i64 64, !14, i64 72, !39, i64 128}
!41 = !{!40, !10, i64 4}
!42 = !{!40, !17, i64 24}
!43 = !{!"float", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!47 = !{!"p1 _ZTSN2cv6Point_IiEE", !16, i64 0}
!48 = !{!"_ZTSN2cv6bgsegm12_GLOBAL__N_126ParallelFromLocalSVDValuesE", !46, i64 0, !24, i64 8, !35, i64 16, !35, i64 24, !47, i64 32}
!49 = !{!48, !47, i64 32}
!50 = !{!"_ZTSN2cv9AlgorithmE"}
!51 = !{!"_ZTSN2cv20BackgroundSubtractorE", !50, i64 0}
!52 = !{!"_ZTSN2cv6bgsegm24BackgroundSubtractorGSOCE", !51, i64 0}
!53 = !{!"p1 _ZTSN2cv6bgsegm12_GLOBAL__N_119BackgroundModelGSOCE", !16, i64 0}
!54 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!55 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0}
!56 = !{!"_ZTSSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelGSOCELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !55, i64 8}
!57 = !{!"_ZTSSt10shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelGSOCEE", !56, i64 0}
!58 = !{!"_ZTSN2cv3PtrINS_6bgsegm12_GLOBAL__N_119BackgroundModelGSOCEEE", !57, i64 0}
!59 = !{!"_ZTSN2cv3RNGE", !19, i64 0}
!60 = !{!"_ZTSN2cv6bgsegm28BackgroundSubtractorGSOCImplE", !52, i64 0, !58, i64 8, !58, i64 24, !19, i64 40, !10, i64 48, !10, i64 52, !43, i64 56, !43, i64 60, !19, i64 64, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !43, i64 88, !43, i64 92, !40, i64 96, !40, i64 304, !40, i64 512, !40, i64 720, !59, i64 928}
!61 = !{!60, !10, i64 48}
!62 = !{!60, !10, i64 52}
!63 = !{!60, !43, i64 56}
!64 = !{!60, !43, i64 60}
!65 = !{!60, !19, i64 64}
!66 = !{!60, !43, i64 72}
!67 = !{!60, !43, i64 76}
!68 = !{!60, !43, i64 80}
!69 = !{!60, !43, i64 84}
!70 = !{!60, !43, i64 88}
!71 = !{!60, !43, i64 92}
!72 = !{!59, !19, i64 0}
!73 = !{!55, !54, i64 0}
!74 = !{!18, !17, i64 0}
!75 = !{!19, !19, i64 0}
!76 = !{!20, !19, i64 8}
!77 = !{!"double", !9, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p1 _ZTSN2cv5MatOpE", !16, i64 0}
!80 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !9, i64 0}
!81 = !{!"_ZTSN2cv3VecIdLi4EEE", !80, i64 0}
!82 = !{!"_ZTSN2cv7Scalar_IdEE", !81, i64 0}
!83 = !{!"_ZTSN2cv7MatExprE", !79, i64 0, !10, i64 8, !40, i64 16, !40, i64 224, !40, i64 432, !77, i64 640, !77, i64 648, !82, i64 656}
!84 = !{!83, !79, i64 0}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!40, !10, i64 0}
!87 = !{!56, !53, i64 0}
!88 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!89 = !{!88, !10, i64 8}
!90 = !{!88, !10, i64 12}
!91 = !{!"p1 _ZTSN2cv6bgsegm12_GLOBAL__N_120BackgroundSampleGSOCE", !16, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN2cv6bgsegm12_GLOBAL__N_120BackgroundSampleGSOCESaIS3_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIN2cv6bgsegm12_GLOBAL__N_120BackgroundSampleGSOCESaIS3_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIN2cv6bgsegm12_GLOBAL__N_120BackgroundSampleGSOCESaIS3_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIN2cv6bgsegm12_GLOBAL__N_120BackgroundSampleGSOCESaIS3_EE", !94, i64 0}
!96 = !{!"_ZTSN2cv6bgsegm12_GLOBAL__N_115BackgroundModelINS1_20BackgroundSampleGSOCEEE", !95, i64 0, !24, i64 24, !10, i64 32, !10, i64 36}
!97 = !{!96, !10, i64 32}
!98 = !{!96, !10, i64 36}
!99 = !{!92, !91, i64 0}
!100 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!101 = !{!"llvm.loop.unswitch.partial.disable"}
!102 = !{!"p1 _ZTSN2cv6Point_IfEE", !16, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 8}
!105 = !{!103, !102, i64 0}
!106 = !{!103, !102, i64 16}
!107 = !{!"llvm.loop.isvectorized", i32 1}
!108 = !{!"llvm.loop.unroll.runtime.disable"}
!109 = !{!"_ZTSN2cv6Point_IfEE", !43, i64 0, !43, i64 4}
!110 = !{!109, !43, i64 0}
!111 = !{!109, !43, i64 4}
!112 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !44, i64 12, i64 4, !23, i64 16, i64 8, !75, i64 24, i64 8, !75}
!113 = !{!"p1 _ZTSN2cv6bgsegm28BackgroundSubtractorGSOCImplE", !16, i64 0}
!114 = !{!"_ZTSN2cv6bgsegm12ParallelGSOCE", !46, i64 0, !24, i64 8, !113, i64 16, !35, i64 24, !77, i64 32, !35, i64 40}
!115 = !{!114, !113, i64 16}
!116 = !{!114, !77, i64 32}
!117 = !{!60, !19, i64 40}
!118 = !{!"_ZTSN2cv7Point3_IfEE", !43, i64 0, !43, i64 4, !43, i64 8}
!119 = !{!"_ZTSN2cv6bgsegm12_GLOBAL__N_120BackgroundSampleGSOCE", !118, i64 0, !10, i64 12, !19, i64 16, !19, i64 24}
!120 = !{!119, !19, i64 16}
!121 = !{!"_ZTSN2cv5utils7logging8LogLevelE", !9, i64 0}
!122 = !{!"_ZTSN2cv5utils7logging6LogTagE", !17, i64 0, !121, i64 8}
!123 = !{!122, !121, i64 8}
!124 = !{!122, !17, i64 0}
!125 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!126 = !{!"_ZTSSt6locale", !125, i64 0}
!127 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !126, i64 56}
!128 = !{!127, !17, i64 40}
!129 = !{!127, !17, i64 32}
!130 = !{!"_ZTSSi", !19, i64 8}
!131 = !{!130, !19, i64 8}
!132 = !{!119, !19, i64 24}
!133 = !{!118, !43, i64 8}
!134 = !{!"_ZTSN2cv6bgsegm24BackgroundSubtractorLSBPE", !51, i64 0}
!135 = !{!"p1 _ZTSN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPE", !16, i64 0}
!136 = !{!"_ZTSSt12__shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPELN9__gnu_cxx12_Lock_policyE2EE", !135, i64 0, !55, i64 8}
!137 = !{!"_ZTSSt10shared_ptrIN2cv6bgsegm12_GLOBAL__N_119BackgroundModelLSBPEE", !136, i64 0}
!138 = !{!"_ZTSN2cv3PtrINS_6bgsegm12_GLOBAL__N_119BackgroundModelLSBPEEE", !137, i64 0}
!139 = !{!"_ZTSN2cv6bgsegm28BackgroundSubtractorLSBPImplE", !134, i64 0, !138, i64 8, !138, i64 24, !10, i64 40, !10, i64 44, !10, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !10, i64 84, !10, i64 88, !40, i64 96, !40, i64 304, !40, i64 512, !59, i64 720, !9, i64 728}
!140 = !{!139, !10, i64 40}
!141 = !{!139, !10, i64 44}
end_hunk_2
