Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_group?download=true
inline.NumInlined: 2366
inline.NumDeleted: 909
loop-unroll.NumCompletelyUnrolled: 500
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 593
begin_hunk_0_@_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi:bb.a
  %i.bj = select <4 x i1> %i.bh, <4 x float> %i.bi, <4 x float> zeroinitializer ; 2 uses
  %i.bk = fcmp oge <4 x float> %i.bj, splat (float f0x4F000000)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bj)
  %i.bm = select <4 x i1> %i.bk, <4 x i32> splat (i32 2147483647), <4 x i32> %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.07684.us.us
  store <4 x i32> %i.bm, ptr %i.bn, align 16, !tbaa !57
  %i.bo = add nuw i64 %.07684.us.us, 4            ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.ah
  br i1 %i.bp, label %bb.b, label %._crit_edge.split.us.us, !llvm.loop !0

._crit_edge.split.us.us:                          ; preds = %bb.b
  %i.bq = add nuw i64 %.07585.us, 1               ; 2 uses
  %exitcond95.not = icmp eq i64 %i.bq, %i.af
  br i1 %exitcond95.not, label %._crit_edge88.split, label %.lr.ph.us, !llvm.loop !1

._crit_edge88.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph87, %.loopexit
  ret void

.lr.ph:                                           ; preds = %.lr.ph87.split, %._crit_edge.split
  %.07585 = phi i64 [ %i.by, %._crit_edge.split ], [ 0, %.lr.ph87.split ] ; 3 uses
  %.not79 = icmp ult i64 %.07585, %i.ag
  %i.br = select i1 %.not79, i64 0, i64 2
  %i.bs = shl i64 %.07585, 3
  %i.bt = mul i64 %i.bs, %5                       ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.br
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bt
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.bt
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.bt
  br label %bb.c

._crit_edge.split:                                ; preds = %bb.c
  %i.by = add nuw i64 %.07585, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.af
  br i1 %exitcond.not, label %._crit_edge88.split, label %.lr.ph, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.07684 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %bb.c ] ; 5 uses
  %i.bz = icmp uge i64 %.07684, %i.ai
  %i.ca = zext i1 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !56
  %i.cd = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.07684
  %i.cg = load <4 x float>, ptr %i.cf, align 16, !tbaa !57
  %i.ch = fmul <4 x float> %i.ae, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.07684
  %i.cj = load <4 x float>, ptr %i.ci, align 16, !tbaa !57
  %i.ck = fmul <4 x float> %i.ch, %i.cj           ; 2 uses
  %i.cl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ck)
  %i.cm = fcmp ole <4 x float> %i.ce, %i.cl
  %i.cn = tail call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.ck)
  %i.co = select <4 x i1> %i.cm, <4 x float> %i.cn, <4 x float> zeroinitializer ; 2 uses
  %i.cp = fcmp oge <4 x float> %i.co, splat (float f0x4F000000)
  %i.cq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.co)
  %i.cr = select <4 x i1> %i.cp, <4 x i32> splat (i32 2147483647), <4 x i32> %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.07684
  store <4 x i32> %i.cr, ptr %i.cs, align 16, !tbaa !57
  %i.ct = add nuw i64 %.07684, 4                  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.ah
  br i1 %i.cu, label %bb.c, label %._crit_edge.split, !llvm.loop !0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, float noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 14 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  %i.c = shl nuw i32 1, %3
  %i.d = and i32 %i.c, 258062
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = zext i32 %3 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.idx.i = mul nuw nsw i64 %i.g, 24
  %i.k = getelementptr i8, ptr %i.j, i64 %.idx.i
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %1
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load float, ptr %i.o, align 4, !tbaa !54
  %i.q = load i32, ptr %8, align 4, !tbaa !55     ; 9 uses
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %i.p, %i.r
  %i.t = or i64 %5, %4
  %or.cond.not = icmp ult i64 %i.t, 2
  br i1 %or.cond.not, label %.loopexit229, label %.preheader228

.preheader228:                                    ; preds = %bb.b
  %i.u = uitofp i64 %4 to float
  %i.v = fmul nnan float %i.u, 3.000000e-03
  %i.w = uitofp i64 %5 to float
  %i.x = fmul float %i.v, %i.w                    ; 2 uses
  %i.y = fcmp ogt float %i.x, 8.000000e-02
  %i.z = select i1 %i.y, float 8.000000e-02, float %i.x
  %i.aa = load <4 x float>, ptr %6, align 4, !tbaa !56
  %i.ab = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = fsub <4 x float> %i.aa, %i.ac           ; 2 uses
  %i.ae = fpext <4 x float> %i.ad to <4 x double>
  %i.af = fcmp olt <4 x double> %i.ae, splat (double 5.400000e-01)
  %i.ag = select <4 x i1> %i.af, <4 x float> splat (float 5.400000e-01), <4 x float> %i.ad
  store <4 x float> %i.ag, ptr %6, align 4, !tbaa !56
  br label %.loopexit229

.loopexit229:                                     ; preds = %.preheader228, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ah = shl i64 %5, 3                           ; 4 uses
  %factor.op.mul237 = shl i64 %4, 3               ; 5 uses
  %.not252 = icmp eq i64 %i.ah, 0
  br i1 %.not252, label %._crit_edge242, label %.preheader227.lr.ph

.preheader227.lr.ph:                              ; preds = %.loopexit229
  %.not253 = icmp eq i64 %factor.op.mul237, 0
  %i.ai = lshr exact i64 %i.ah, 1
  %i.aj = lshr exact i64 %factor.op.mul237, 1
  %i.ak = icmp eq i64 %1, 1
  %i.al = mul i64 %5, 7
  %i.am = mul i64 %4, 7
  %i.an = add i64 %i.ah, -1
  %i.ao = add i64 %factor.op.mul237, -1
  %i.ap = shl i64 %4, 2
  %i.aq = shl i64 %5, 2
  br i1 %.not253, label %._crit_edge242, label %.preheader227.us

.preheader227.us:                                 ; preds = %.preheader227.lr.ph, %._crit_edge.us
  %.0178241.us = phi i64 [ %i.cl, %._crit_edge.us ], [ 0, %.preheader227.lr.ph ] ; 7 uses
  %.0183238.us = phi float [ %.4.us, %._crit_edge.us ], [ 0.000000e+00, %.preheader227.lr.ph ]
  %i.ar = phi <2 x float> [ %i.cj, %._crit_edge.us ], [ zeroinitializer, %.preheader227.lr.ph ]
  %factor.op.mul.reass.us = mul i64 %factor.op.mul237, %.0178241.us
  %i.as = icmp ult i64 %.0178241.us, %5
  %.not198.us = icmp ult i64 %.0178241.us, %i.ai
  %i.at = select i1 %.not198.us, i64 0, i64 2
  %.not199.us = icmp uge i64 %.0178241.us, %i.al
  %i.au = icmp eq i64 %.0178241.us, %i.an
  %i.av = icmp uge i64 %.0178241.us, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %.preheader227.us, %bb.h
  %.0177234.us = phi i64 [ 0, %.preheader227.us ], [ %i.ck, %bb.h ] ; 7 uses
  %.1184231.us = phi float [ %.0183238.us, %.preheader227.us ], [ %.4.us, %bb.h ] ; 4 uses
  %i.aw = phi <2 x float> [ %i.ar, %.preheader227.us ], [ %i.cj, %bb.h ] ; 2 uses
  %i.ax = icmp ult i64 %.0177234.us, %4
  %or.cond.us = and i1 %i.as, %i.ax
  br i1 %or.cond.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = add i64 %.0177234.us, %factor.op.mul.reass.us ; 2 uses
  %i.az = icmp uge i64 %.0177234.us, %i.aj
  %i.ba = zext i1 %i.az to i64
  %i.bb = or disjoint i64 %i.at, %i.ba            ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ay
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !56
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ay
  %i.bf = load float, ptr %i.be, align 4, !tbaa !56
  %i.bg = fmul float %i.s, %i.bf
  %i.bh = fmul float %2, %i.bg
  %i.bi = fmul float %i.bd, %i.bh                 ; 3 uses
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi) ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bb
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !56
  %i.bm = fcmp olt float %i.bj, %i.bl
  %i.bn = tail call float @llvm.rint.f32(float %i.bi)
  %i.bo = select i1 %i.bm, float 0.000000e+00, float %i.bn ; 3 uses
  %i.bp = fsub float %i.bi, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bp, i64 1
  %i.bs = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.br) ; 3 uses
  %i.bt = fadd <2 x float> %i.aw, %i.bs           ; 2 uses
  %i.bu = fcmp oeq float %i.bo, 0.000000e+00      ; 2 uses
  %or.cond3.us = and i1 %i.ak, %i.bu
  br i1 %or.cond3.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !56 ; 2 uses
  %i.bx = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.by = fcmp olt float %i.bw, %i.bx
  %spec.store.select220.us = select i1 %i.by, float %i.bx, float %i.bw
  store float %spec.store.select220.us, ptr %i.bv, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.bu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !56
  %i.cb = extractelement <2 x float> %i.bs, i64 0
  %i.cc = fadd float %i.cb, %i.ca
  store float %i.cc, ptr %i.bz, align 4, !tbaa !56
  %i.cd = icmp uge i64 %.0177234.us, %i.am
  %i.ce = and i1 %.not199.us, %i.cd
  %i.cf = icmp eq i64 %.0177234.us, %i.ao
  %i.cg = or i1 %i.au, %i.cf
  %.not200.us = icmp uge i64 %.0177234.us, %i.ap
  %i.ch = and i1 %i.av, %i.cg
  %or.cond5.us = and i1 %.not200.us, %i.ch
  %brmerge.us = or i1 %i.ce, %or.cond5.us
  %i.ci = fadd float %.1184231.us, %i.bj
  %spec.select221.us = select i1 %brmerge.us, float %i.ci, float %.1184231.us
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.4.us = phi float [ %.1184231.us, %bb.c ], [ %.1184231.us, %bb.f ], [ %spec.select221.us, %bb.g ] ; 3 uses
  %i.cj = phi <2 x float> [ %i.aw, %bb.c ], [ %i.bt, %bb.f ], [ %i.bt, %bb.g ] ; 4 uses
  %i.ck = add nuw i64 %.0177234.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %factor.op.mul237
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !223

._crit_edge.us:                                   ; preds = %bb.h
  %i.cl = add nuw i64 %.0178241.us, 1             ; 2 uses
  %exitcond256.not = icmp eq i64 %i.cl, %i.ah
  br i1 %exitcond256.not, label %._crit_edge242.loopexit254, label %.preheader227.us, !llvm.loop !224

._crit_edge242.loopexit254:                       ; preds = %._crit_edge.us
  %i.cm = extractelement <2 x float> %i.cj, i64 1
  %i.cn = fpext float %i.cm to double
  %i.co = fmul double %i.cn, f0x40025AAAAACCDC00
  %i.cp = fptrunc double %i.co to float
  %i.cq = fpext float %i.cp to double
  %i.cr = extractelement <2 x float> %i.cj, i64 0
  br label %._crit_edge242

._crit_edge242:                                   ; preds = %.preheader227.lr.ph, %._crit_edge242.loopexit254, %.loopexit229
  %.0183.lcssa = phi float [ 0.000000e+00, %.loopexit229 ], [ %.4.us, %._crit_edge242.loopexit254 ], [ 0.000000e+00, %.preheader227.lr.ph ]
  %.0180.lcssa = phi double [ 0.000000e+00, %.loopexit229 ], [ %i.cq, %._crit_edge242.loopexit254 ], [ 0.000000e+00, %.preheader227.lr.ph ] ; 2 uses
  %.0179.lcssa = phi float [ 0.000000e+00, %.loopexit229 ], [ %i.cr, %._crit_edge242.loopexit254 ], [ 0.000000e+00, %.preheader227.lr.ph ] ; 2 uses
  %i.cs = icmp eq i64 %1, 1                       ; 2 uses
  br i1 %i.cs, label %bb.i, label %bb.x

bb.i:                                             ; preds = %._crit_edge242
  %i.ct = fmul float %.0179.lcssa, 8.000000e+00
  %i.cu = mul i64 %5, %4
  %i.cv = uitofp i64 %i.cu to float
  %i.cw = fcmp olt float %i.ct, %i.cv
  br i1 %i.cw, label %.preheader225.preheader, label %bb.x

.preheader225.preheader:                          ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !56
  %i.cz = fcmp oeq float %i.cy, 0.000000e+00      ; 2 uses
  br i1 %i.cz, label %bb.j, label %.preheader225.1

bb.j:                                             ; preds = %.preheader225.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !56
  %i.dc = fpext float %i.db to double
  %i.dd = fcmp ogt double %i.dc, 4.600000e-01
  br i1 %i.dd, label %bb.k, label %.preheader225.1

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.de = add nsw i32 %i.q, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !56
  br label %.loopexit226

.preheader225.1:                                  ; preds = %.preheader225.preheader, %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dg = load float, ptr %i.df, align 8, !tbaa !56
  %i.dh = fcmp oeq float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.l, label %.preheader225.2

bb.l:                                             ; preds = %.preheader225.1
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dj = load float, ptr %i.di, align 8, !tbaa !56
  %i.dk = fpext float %i.dj to double
  %i.dl = fcmp ogt double %i.dk, 4.600000e-01
  br i1 %i.dl, label %bb.k, label %.preheader225.2

.preheader225.2:                                  ; preds = %bb.l, %.preheader225.1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !56 ; 3 uses
  %i.do = fcmp oeq float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.m, label %.loopexit226

bb.m:                                             ; preds = %.preheader225.2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !56
  %i.dr = fpext float %i.dq to double
  %i.ds = fcmp ogt double %i.dr, 4.600000e-01
  br i1 %i.ds, label %bb.k, label %.loopexit226

.loopexit226:                                     ; preds = %.preheader225.2, %bb.m, %bb.k
  %i.dt = phi float [ %.pre, %bb.k ], [ %i.dn, %bb.m ], [ %i.dn, %.preheader225.2 ]
  %.0176 = phi i32 [ %i.de, %bb.k ], [ %i.q, %bb.m ], [ %i.q, %.preheader225.2 ] ; 8 uses
  %i.du = fcmp oeq float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.loopexit226
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !56
  %i.dx = fpext float %i.dw to double             ; 2 uses
  %i.dy = fcmp ogt double %i.dx, 4.600000e-01
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = fmul nnan double %i.dx, 9.999000e-01
  %i.ea = sitofp i32 %.0176 to double
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = sitofp i32 %i.q to double
  %i.ed = fdiv double %i.eb, %i.ec
  %i.ee = fptrunc double %i.ed to float
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.ee, ptr %i.ef, align 4, !tbaa !56
  br label %bb.x

bb.p:                                             ; preds = %bb.n, %.loopexit226
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !56 ; 2 uses
  %i.ei = fpext float %i.eh to double
  %i.ej = fcmp ogt double %i.ei, 4.600000e-01
  br i1 %i.ej, label %._crit_edge266, label %bb.r

._crit_edge266:                                   ; preds = %bb.q
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre268 = load float, ptr %.phi.trans.insert267, align 8, !tbaa !56
  br label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.el = load float, ptr %i.ek, align 8, !tbaa !56
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eo = load float, ptr %i.en, align 8, !tbaa !56 ; 2 uses
  %i.ep = fpext float %i.eo to double
  %i.eq = fcmp ogt double %i.ep, 4.600000e-01
  br i1 %i.eq, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %bb.s
  %.phi.trans.insert264 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre265 = load float, ptr %.phi.trans.insert264, align 4, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge266, %._crit_edge
  %i.er = phi float [ %i.eo, %._crit_edge ], [ %.pre268, %._crit_edge266 ] ; 2 uses
  %i.es = phi float [ %.pre265, %._crit_edge ], [ %i.eh, %._crit_edge266 ] ; 2 uses
  %i.et = fcmp olt float %i.es, %i.er
  %i.eu = select i1 %i.et, float %i.er, float %i.es
  %i.ev = fpext float %i.eu to double
  %i.ew = fmul double %i.ev, 9.999000e-01
  %i.ex = sitofp i32 %.0176 to double
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = sitofp i32 %i.q to double
  %i.fa = fdiv double %i.ey, %i.ez
  %i.fb = fptrunc double %i.fa to float           ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.fb, ptr %i.fc, align 4, !tbaa !56
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.fb, ptr %i.fd, align 4, !tbaa !56
  br label %bb.x

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.fe = load float, ptr %i.a, align 16, !tbaa !56
  %i.ff = fcmp oeq float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fg = load float, ptr %i.b, align 16, !tbaa !56
  %i.fh = fpext float %i.fg to double             ; 2 uses
  %i.fi = fcmp ogt double %i.fh, 4.600000e-01
  br i1 %i.fi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fj = fmul nnan double %i.fh, 9.999000e-01
  %i.fk = sitofp i32 %.0176 to double
  %i.fl = fmul double %i.fj, %i.fk
  %i.fm = sitofp i32 %i.q to double
  %i.fn = fdiv double %i.fl, %i.fm
  %i.fo = fptrunc double %i.fn to float
  store float %i.fo, ptr %6, align 4, !tbaa !56
  br label %bb.x

bb.x:                                             ; preds = %bb.o, %bb.u, %bb.v, %bb.w, %bb.t, %bb.i, %._crit_edge242
  %i.fp = phi i32 [ %.0176, %bb.o ], [ %.0176, %bb.u ], [ %.0176, %bb.v ], [ %.0176, %bb.w ], [ %.0176, %bb.t ], [ %i.q, %bb.i ], [ %i.q, %._crit_edge242 ] ; 2 uses
  %i.fq = load float, ptr %i.a, align 16, !tbaa !56 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !56 ; 2 uses
  %i.ft = fadd float %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !56 ; 2 uses
  %i.fw = fadd float %i.ft, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !56 ; 2 uses
  %i.fz = fadd float %i.fw, %i.fy                 ; 2 uses
  %i.ga = fadd float %i.fz, 1.000000e+00          ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi.mul, i64 %1
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !56
  %i.gd = fmul float %.0183.lcssa, %i.gc          ; 2 uses
  %i.ge = fcmp ult float %i.gd, %i.ga
  br i1 %i.ge, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gf = fdiv float %i.gd, %i.ga
  %i.gg = sitofp i32 %i.fp to float
  %i.gh = fadd float %i.gf, %i.gg
  %i.gi = fptosi float %i.gh to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.gi, i32 255) ; 2 uses
  store i32 %spec.store.select, ptr %8, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gj = phi i32 [ %spec.store.select, %bb.y ], [ %i.fp, %bb.x ] ; 4 uses
  %i.gk = icmp eq i32 %3, 0
  %i.gl = fcmp olt float %i.fz, 1.100000e+01
  %or.cond222 = and i1 %i.gk, %i.gl
  br i1 %or.cond222, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.gm = tail call i32 @llvm.smin.i32(i32 %i.gj, i32 254)
  %spec.store.select201 = add nsw i32 %i.gm, 1
  br label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.gn = icmp ugt i32 %3, 3
  br i1 %i.gn, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.go = fpext float %.0179.lcssa to double
  %i.gp = fmul double %i.go, f0x40025AAAAACCDC00
  %i.gq = fptrunc double %i.gp to float
  %i.gr = and i32 %3, -2
  %or.cond7 = icmp eq i32 %i.gr, 10
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 3
  %switch.selectcmp204 = icmp eq i32 %3, 4
  %switch.select205 = select i1 %switch.selectcmp204, i64 0, i64 %switch.select
  %.0174 = select i1 %or.cond7, i64 1, i64 %switch.select205 ; 2 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul1, i64 %.0174
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %1
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !60
  %i.gv = uitofp i64 %4 to double
  %i.gw = fmul double %i.gu, %i.gv
  %i.gx = uitofp i64 %5 to double
  %i.gy = fmul double %i.gw, %i.gx
  %i.gz = fmul double %i.gy, 8.000000e+00
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul2, i64 %.0174
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %1
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !60
  %i.hd = fpext float %i.gq to double
  %i.he = fmul double %i.hc, %i.hd
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.gz, double 8.000000e+00, double %i.he) ; 2 uses
  %i.hg = fcmp olt double %i.hf, %.0180.lcssa
  br i1 %i.hg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hh = fdiv double %.0180.lcssa, %i.hf
  %i.hi = fptosi double %i.hh to i32
  %i.hj = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %i.hk = tail call i32 @llvm.umin.i32(i32 %i.hj, i32 2)
  %i.hl = add nsw i32 %i.gj, %i.hk
  %spec.store.select202 = tail call i32 @llvm.smin.i32(i32 %i.hl, i32 255)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %.thread
  %spec.store.select201.sink = phi i32 [ %spec.store.select201, %.thread ], [ %spec.store.select202, %bb.ac ] ; 2 uses
  store i32 %spec.store.select201.sink, ptr %8, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %bb.aa
  %9 = phi i32 [ %i.gj, %bb.aa ], [ %i.gj, %bb.ab ], [ %spec.store.select201.sink, %.sink.split ] ; 2 uses
  %i.hm = mul i64 %5, %4
  %i.hn = trunc i64 %i.hm to i32                  ; 5 uses
  %i.ho = fptosi float %i.fq to i32
  %i.hp = sdiv i32 %i.hn, 2                       ; 4 uses
  %i.hq = add nsw i32 %i.hp, %i.ho
  %i.hr = sdiv i32 %i.hq, %i.hn
  %i.hs = fptosi float %i.fs to i32
  %i.ht = add nsw i32 %i.hp, %i.hs
  %i.hu = sdiv i32 %i.ht, %i.hn
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %i.hr)
  %i.hv = fptosi float %i.fv to i32
  %i.hw = add nsw i32 %i.hp, %i.hv
  %i.hx = sdiv i32 %i.hw, %i.hn
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.hx, i32 %.sroa.speculated)
  %i.hy = fptosi float %i.fy to i32
  %i.hz = add nsw i32 %i.hp, %i.hy
  %i.ia = sdiv i32 %i.hz, %i.hn
  %.sroa.speculated.2 = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 %.sroa.speculated.1)
  %i.ib = sdiv i32 %9, 2
  %spec.select223 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.2, i32 15) ; 2 uses
  %i.ic = sub nsw i32 %9, %spec.select223
  br i1 %i.cs, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ad
  %i.id = sitofp i32 %spec.select223 to double    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.if = load <2 x float>, ptr %i.ie, align 4, !tbaa !56
  %i.ig = fpext <2 x float> %i.if to <2 x double>
  %i.ih = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> splat (double 1.000000e-02), <2 x double> %i.ig)
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float>
  store <2 x float> %i.ik, ptr %i.ie, align 4, !tbaa !56
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !56
  %i.in = fpext float %i.im to double
  %i.io = tail call double @llvm.fmuladd.f64(double %i.id, double 1.000000e-02, double %i.in)
  %i.ip = fptrunc double %i.io to float
  store float %i.ip, ptr %i.il, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ad
  %.sroa.speculated208 = tail call i32 @llvm.smax.i32(i32 %i.ib, i32 %i.ic)
  %spec.select203 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated208, i32 4)
  store i32 %spec.select203, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE425QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i1 noundef zeroext %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noalias nofree noundef captures(none) %9, ptr noalias nofree noundef captures(none) %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !164
  %i.e = icmp slt i32 %i.d, 6
  br i1 %i.e, label %.loopexit.2, label %bb.b

.loopexit.2:                                      ; preds = %bb.a
  %i.f = load i32, ptr %8, align 4, !tbaa !55     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.h = load float, ptr %i.g, align 8, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3876
  %i.j = load float, ptr %i.i, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.k, ptr noundef nonnull %8) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !56
  %i.l = load i32, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0, float noundef %i.h, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %8) #48
  %i.m = load i32, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %.idx = shl i64 %1, 3
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2, float noundef %i.j, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef nonnull %8) #48
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.o = load i32, ptr %8, align 4, !tbaa !55
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.o)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  store i32 %.sroa.speculated.2, ptr %8, align 4, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56
  %.pre = load i32, ptr %8, align 4, !tbaa !55, !noalias !230
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.2
  %i.p = phi i32 [ %.pre, %bb.b ], [ %.sroa.speculated.2, %.loopexit.2 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42, !noalias !230 ; 3 uses
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51, !noalias !230
  %.idx.i.i = mul nuw nsw i64 %i.u, 24
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53, !noalias !230 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !54, !noalias !230
  %i.ad = sitofp i32 %i.p to float                ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = shl i64 %6, 3                           ; 4 uses
  %.not91.i = icmp eq i64 %i.ah, 0
  br i1 %.not91.i, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = shl i64 %5, 3                           ; 4 uses
  %.not92.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr exact i64 %i.aj, 1
  br i1 %.not92.i, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.split.i

.lr.ph87.split.i:                                 ; preds = %.lr.ph87.i
  %i.al = icmp eq i64 %5, 1
  br i1 %i.al, label %.lr.ph.us.i, label %.lr.ph.i

.lr.ph.us.i:                                      ; preds = %.lr.ph87.split.i, %._crit_edge.split.us.us.i
  %.07585.us.i = phi i64 [ %i.bp, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.us.i = icmp ult i64 %.07585.us.i, %i.ai ; 2 uses
  %i.am = shl i64 %.07585.us.i, 3                 ; 3 uses
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.us.i, i64 0, i64 8
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not79.us.i, i64 4, i64 12
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.am
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.aq = load float, ptr %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !56, !noalias !230
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = load float, ptr %.sroa.sel73.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !56, !noalias !230
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us.i
  %.07684.us.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.bn, %bb.d ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07684.us.us.i
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !57, !noalias !230
  %i.ay = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.av, <4 x float> %i.as, <4 x float> %i.ax)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.07684.us.us.i
  %i.ba = load <4 x float>, ptr %i.az, align 16, !tbaa !57, !noalias !230
  %i.bb = fmul <4 x float> %i.ag, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.07684.us.us.i
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !tbaa !57, !alias.scope !231, !noalias !232
  %i.be = fmul <4 x float> %i.bb, %i.bd           ; 2 uses
  %i.bf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.be)
  %i.bg = fcmp ole <4 x float> %i.ay, %i.bf
  %i.bh = tail call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.be)
  %i.bi = select <4 x i1> %i.bg, <4 x float> %i.bh, <4 x float> zeroinitializer ; 2 uses
  %i.bj = fcmp oge <4 x float> %i.bi, splat (float f0x4F000000)
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bi)
  %i.bl = select <4 x i1> %i.bj, <4 x i32> splat (i32 2147483647), <4 x i32> %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.07684.us.us.i
  store <4 x i32> %i.bl, ptr %i.bm, align 16, !tbaa !57, !alias.scope !232, !noalias !231
  %i.bn = add nuw nsw i64 %.07684.us.us.i, 4      ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.aj
  br i1 %i.bo, label %bb.d, label %._crit_edge.split.us.us.i, !llvm.loop !0

._crit_edge.split.us.us.i:                        ; preds = %bb.d
  %i.bp = add nuw i64 %.07585.us.i, 1             ; 2 uses
  %exitcond95.not.i = icmp eq i64 %i.bp, %i.ah
  br i1 %exitcond95.not.i, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.us.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %.lr.ph87.split.i, %._crit_edge.split.i
  %.07585.i = phi i64 [ %i.bv, %._crit_edge.split.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi:bb.a

bb.b:                                             ; preds = %bb.b, %.lr.ph.us
  %.07684.us.us = phi i64 [ 0, %.lr.ph.us ], [ %i.bk, %bb.b ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.07684.us.us
  %i.ax = load <8 x float>, ptr %i.aw, align 32, !tbaa !57
  %i.ay = fmul <8 x float> %i.ae, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.07684.us.us
  %i.ba = load <8 x float>, ptr %i.az, align 32, !tbaa !57
  %i.bb = fmul <8 x float> %i.ay, %i.ba           ; 2 uses
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = fcmp oge <8 x float> %i.bc, %i.av
  %i.be = tail call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.bb)
  %i.bf = select <8 x i1> %i.bd, <8 x float> %i.be, <8 x float> zeroinitializer ; 2 uses
  %i.bg = fcmp oge <8 x float> %i.bf, splat (float f0x4F000000)
  %i.bh = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.bf)
  %i.bi = select <8 x i1> %i.bg, <8 x i32> splat (i32 2147483647), <8 x i32> %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.07684.us.us
  store <8 x i32> %i.bi, ptr %i.bj, align 32, !tbaa !57
  %i.bk = add nuw i64 %.07684.us.us, 8            ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.ah
  br i1 %i.bl, label %bb.b, label %._crit_edge.split.us.us, !llvm.loop !4

._crit_edge.split.us.us:                          ; preds = %bb.b
  %i.bm = add nuw i64 %.07585.us, 1               ; 2 uses
  %exitcond95.not = icmp eq i64 %i.bm, %i.af
  br i1 %exitcond95.not, label %._crit_edge88.split, label %.lr.ph.us, !llvm.loop !5

._crit_edge88.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph87, %.loopexit
  ret void

.lr.ph:                                           ; preds = %.lr.ph87.split, %._crit_edge.split
  %.07585 = phi i64 [ %i.bu, %._crit_edge.split ], [ 0, %.lr.ph87.split ] ; 3 uses
  %.not79 = icmp ult i64 %.07585, %i.ag
  %i.bn = select i1 %.not79, i64 0, i64 2
  %i.bo = shl i64 %.07585, 3
  %i.bp = mul i64 %i.bo, %5                       ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.bn
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bp
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.bp
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.bp
  br label %bb.c

._crit_edge.split:                                ; preds = %bb.c
  %i.bu = add nuw i64 %.07585, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.af
  br i1 %exitcond.not, label %._crit_edge88.split, label %.lr.ph, !llvm.loop !5

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.07684 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %bb.c ] ; 5 uses
  %i.bv = icmp uge i64 %.07684, %i.ai
  %i.bw = zext i1 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !56
  %i.bz = insertelement <8 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <8 x float> %i.bz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.07684
  %i.cc = load <8 x float>, ptr %i.cb, align 32, !tbaa !57
  %i.cd = fmul <8 x float> %i.ae, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.07684
  %i.cf = load <8 x float>, ptr %i.ce, align 32, !tbaa !57
  %i.cg = fmul <8 x float> %i.cd, %i.cf           ; 2 uses
  %i.ch = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cg)
  %i.ci = fcmp oge <8 x float> %i.ch, %i.ca
  %i.cj = tail call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.cg)
  %i.ck = select <8 x i1> %i.ci, <8 x float> %i.cj, <8 x float> zeroinitializer ; 2 uses
  %i.cl = fcmp oge <8 x float> %i.ck, splat (float f0x4F000000)
  %i.cm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ck)
  %i.cn = select <8 x i1> %i.cl, <8 x i32> splat (i32 2147483647), <8 x i32> %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.07684
  store <8 x i32> %i.cn, ptr %i.co, align 32, !tbaa !57
  %i.cp = add nuw i64 %.07684, 8                  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.ah
  br i1 %i.cq, label %bb.c, label %._crit_edge.split, !llvm.loop !4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, float noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 14 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  %i.c = shl nuw i32 1, %3
  %i.d = and i32 %i.c, 258062
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = zext i32 %3 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.idx.i = mul nuw nsw i64 %i.g, 24
  %i.k = getelementptr i8, ptr %i.j, i64 %.idx.i
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %1
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load float, ptr %i.o, align 4, !tbaa !54
  %i.q = load i32, ptr %8, align 4, !tbaa !55     ; 9 uses
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %i.p, %i.r
  %i.t = or i64 %5, %4
  %or.cond.not = icmp ult i64 %i.t, 2
  br i1 %or.cond.not, label %.loopexit229, label %.preheader228

.preheader228:                                    ; preds = %bb.b
  %i.u = uitofp i64 %4 to float
  %i.v = fmul nnan float %i.u, 3.000000e-03
  %i.w = uitofp i64 %5 to float
  %i.x = fmul float %i.v, %i.w                    ; 2 uses
  %i.y = fcmp ogt float %i.x, 8.000000e-02
  %i.z = select i1 %i.y, float 8.000000e-02, float %i.x
  %i.aa = load <4 x float>, ptr %6, align 4, !tbaa !56
  %i.ab = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = fsub <4 x float> %i.aa, %i.ac           ; 2 uses
  %i.ae = fpext <4 x float> %i.ad to <4 x double>
  %i.af = fcmp olt <4 x double> %i.ae, splat (double 5.400000e-01)
  %i.ag = select <4 x i1> %i.af, <4 x float> splat (float 5.400000e-01), <4 x float> %i.ad
  store <4 x float> %i.ag, ptr %6, align 4, !tbaa !56
  br label %.loopexit229

.loopexit229:                                     ; preds = %.preheader228, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ah = shl i64 %5, 3                           ; 4 uses
  %factor.op.mul237 = shl i64 %4, 3               ; 5 uses
  %.not252 = icmp eq i64 %i.ah, 0
  br i1 %.not252, label %._crit_edge242, label %.preheader227.lr.ph

.preheader227.lr.ph:                              ; preds = %.loopexit229
  %.not253 = icmp eq i64 %factor.op.mul237, 0
  %i.ai = lshr exact i64 %i.ah, 1
  %i.aj = lshr exact i64 %factor.op.mul237, 1
  %i.ak = icmp eq i64 %1, 1
  %i.al = mul i64 %5, 7
  %i.am = mul i64 %4, 7
  %i.an = add i64 %i.ah, -1
  %i.ao = add i64 %factor.op.mul237, -1
  %i.ap = shl i64 %4, 2
  %i.aq = shl i64 %5, 2
  br i1 %.not253, label %._crit_edge242, label %.preheader227.us

.preheader227.us:                                 ; preds = %.preheader227.lr.ph, %._crit_edge.us
  %.0178241.us = phi i64 [ %i.cl, %._crit_edge.us ], [ 0, %.preheader227.lr.ph ] ; 7 uses
  %.0183238.us = phi float [ %.4.us, %._crit_edge.us ], [ 0.000000e+00, %.preheader227.lr.ph ]
  %i.ar = phi <2 x float> [ %i.cj, %._crit_edge.us ], [ zeroinitializer, %.preheader227.lr.ph ]
  %factor.op.mul.reass.us = mul i64 %factor.op.mul237, %.0178241.us
  %i.as = icmp ult i64 %.0178241.us, %5
  %.not198.us = icmp ult i64 %.0178241.us, %i.ai
  %i.at = select i1 %.not198.us, i64 0, i64 2
  %.not199.us = icmp uge i64 %.0178241.us, %i.al
  %i.au = icmp eq i64 %.0178241.us, %i.an
  %i.av = icmp uge i64 %.0178241.us, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %.preheader227.us, %bb.h
  %.0177234.us = phi i64 [ 0, %.preheader227.us ], [ %i.ck, %bb.h ] ; 7 uses
  %.1184231.us = phi float [ %.0183238.us, %.preheader227.us ], [ %.4.us, %bb.h ] ; 4 uses
  %i.aw = phi <2 x float> [ %i.ar, %.preheader227.us ], [ %i.cj, %bb.h ] ; 2 uses
  %i.ax = icmp ult i64 %.0177234.us, %4
  %or.cond.us = and i1 %i.as, %i.ax
  br i1 %or.cond.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = add i64 %.0177234.us, %factor.op.mul.reass.us ; 2 uses
  %i.az = icmp uge i64 %.0177234.us, %i.aj
  %i.ba = zext i1 %i.az to i64
  %i.bb = or disjoint i64 %i.at, %i.ba            ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ay
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !56
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ay
  %i.bf = load float, ptr %i.be, align 4, !tbaa !56
  %i.bg = fmul float %i.s, %i.bf
  %i.bh = fmul float %2, %i.bg
  %i.bi = fmul float %i.bd, %i.bh                 ; 3 uses
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi) ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bb
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !56
  %i.bm = fcmp olt float %i.bj, %i.bl
  %i.bn = tail call float @llvm.rint.f32(float %i.bi)
  %i.bo = select i1 %i.bm, float 0.000000e+00, float %i.bn ; 3 uses
  %i.bp = fsub float %i.bi, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bp, i64 1
  %i.bs = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.br) ; 3 uses
  %i.bt = fadd <2 x float> %i.aw, %i.bs           ; 2 uses
  %i.bu = fcmp oeq float %i.bo, 0.000000e+00      ; 2 uses
  %or.cond3.us = and i1 %i.ak, %i.bu
  br i1 %or.cond3.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !56 ; 2 uses
  %i.bx = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.by = fcmp olt float %i.bw, %i.bx
  %spec.store.select220.us = select i1 %i.by, float %i.bx, float %i.bw
  store float %spec.store.select220.us, ptr %i.bv, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.bu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !56
  %i.cb = extractelement <2 x float> %i.bs, i64 0
  %i.cc = fadd float %i.cb, %i.ca
  store float %i.cc, ptr %i.bz, align 4, !tbaa !56
  %i.cd = icmp uge i64 %.0177234.us, %i.am
  %i.ce = and i1 %.not199.us, %i.cd
  %i.cf = icmp eq i64 %.0177234.us, %i.ao
  %i.cg = or i1 %i.au, %i.cf
  %.not200.us = icmp uge i64 %.0177234.us, %i.ap
  %i.ch = and i1 %i.av, %i.cg
  %or.cond5.us = and i1 %.not200.us, %i.ch
  %brmerge.us = or i1 %i.ce, %or.cond5.us
  %i.ci = fadd float %.1184231.us, %i.bj
  %spec.select221.us = select i1 %brmerge.us, float %i.ci, float %.1184231.us
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.4.us = phi float [ %.1184231.us, %bb.c ], [ %.1184231.us, %bb.f ], [ %spec.select221.us, %bb.g ] ; 3 uses
  %i.cj = phi <2 x float> [ %i.aw, %bb.c ], [ %i.bt, %bb.f ], [ %i.bt, %bb.g ] ; 4 uses
  %i.ck = add nuw i64 %.0177234.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %factor.op.mul237
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !935

._crit_edge.us:                                   ; preds = %bb.h
  %i.cl = add nuw i64 %.0178241.us, 1             ; 2 uses
  %exitcond256.not = icmp eq i64 %i.cl, %i.ah
  br i1 %exitcond256.not, label %._crit_edge242.loopexit254, label %.preheader227.us, !llvm.loop !936

._crit_edge242.loopexit254:                       ; preds = %._crit_edge.us
  %i.cm = extractelement <2 x float> %i.cj, i64 1
  %i.cn = fpext float %i.cm to double
  %i.co = fmul double %i.cn, f0x40025AAAAACCDC00
  %i.cp = fptrunc double %i.co to float
  %i.cq = fpext float %i.cp to double
  %i.cr = extractelement <2 x float> %i.cj, i64 0
  br label %._crit_edge242

._crit_edge242:                                   ; preds = %.preheader227.lr.ph, %._crit_edge242.loopexit254, %.loopexit229
  %.0183.lcssa = phi float [ 0.000000e+00, %.loopexit229 ], [ %.4.us, %._crit_edge242.loopexit254 ], [ 0.000000e+00, %.preheader227.lr.ph ]
  %.0180.lcssa = phi double [ 0.000000e+00, %.loopexit229 ], [ %i.cq, %._crit_edge242.loopexit254 ], [ 0.000000e+00, %.preheader227.lr.ph ] ; 2 uses
  %.0179.lcssa = phi float [ 0.000000e+00, %.loopexit229 ], [ %i.cr, %._crit_edge242.loopexit254 ], [ 0.000000e+00, %.preheader227.lr.ph ] ; 2 uses
  %i.cs = icmp eq i64 %1, 1                       ; 2 uses
  br i1 %i.cs, label %bb.i, label %bb.x

bb.i:                                             ; preds = %._crit_edge242
  %i.ct = fmul float %.0179.lcssa, 8.000000e+00
  %i.cu = mul i64 %5, %4
  %i.cv = uitofp i64 %i.cu to float
  %i.cw = fcmp olt float %i.ct, %i.cv
  br i1 %i.cw, label %.preheader225.preheader, label %bb.x

.preheader225.preheader:                          ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !56
  %i.cz = fcmp oeq float %i.cy, 0.000000e+00      ; 2 uses
  br i1 %i.cz, label %bb.j, label %.preheader225.1

bb.j:                                             ; preds = %.preheader225.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !56
  %i.dc = fpext float %i.db to double
  %i.dd = fcmp ogt double %i.dc, 4.600000e-01
  br i1 %i.dd, label %bb.k, label %.preheader225.1

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.de = add nsw i32 %i.q, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !56
  br label %.loopexit226

.preheader225.1:                                  ; preds = %.preheader225.preheader, %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dg = load float, ptr %i.df, align 8, !tbaa !56
  %i.dh = fcmp oeq float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.l, label %.preheader225.2

bb.l:                                             ; preds = %.preheader225.1
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dj = load float, ptr %i.di, align 8, !tbaa !56
  %i.dk = fpext float %i.dj to double
  %i.dl = fcmp ogt double %i.dk, 4.600000e-01
  br i1 %i.dl, label %bb.k, label %.preheader225.2

.preheader225.2:                                  ; preds = %bb.l, %.preheader225.1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !56 ; 3 uses
  %i.do = fcmp oeq float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.m, label %.loopexit226

bb.m:                                             ; preds = %.preheader225.2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !56
  %i.dr = fpext float %i.dq to double
  %i.ds = fcmp ogt double %i.dr, 4.600000e-01
  br i1 %i.ds, label %bb.k, label %.loopexit226

.loopexit226:                                     ; preds = %.preheader225.2, %bb.m, %bb.k
  %i.dt = phi float [ %.pre, %bb.k ], [ %i.dn, %bb.m ], [ %i.dn, %.preheader225.2 ]
  %.0176 = phi i32 [ %i.de, %bb.k ], [ %i.q, %bb.m ], [ %i.q, %.preheader225.2 ] ; 8 uses
  %i.du = fcmp oeq float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.loopexit226
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !56
  %i.dx = fpext float %i.dw to double             ; 2 uses
  %i.dy = fcmp ogt double %i.dx, 4.600000e-01
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = fmul nnan double %i.dx, 9.999000e-01
  %i.ea = sitofp i32 %.0176 to double
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = sitofp i32 %i.q to double
  %i.ed = fdiv double %i.eb, %i.ec
  %i.ee = fptrunc double %i.ed to float
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.ee, ptr %i.ef, align 4, !tbaa !56
  br label %bb.x

bb.p:                                             ; preds = %bb.n, %.loopexit226
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !56 ; 2 uses
  %i.ei = fpext float %i.eh to double
  %i.ej = fcmp ogt double %i.ei, 4.600000e-01
  br i1 %i.ej, label %._crit_edge266, label %bb.r

._crit_edge266:                                   ; preds = %bb.q
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre268 = load float, ptr %.phi.trans.insert267, align 8, !tbaa !56
  br label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.el = load float, ptr %i.ek, align 8, !tbaa !56
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eo = load float, ptr %i.en, align 8, !tbaa !56 ; 2 uses
  %i.ep = fpext float %i.eo to double
  %i.eq = fcmp ogt double %i.ep, 4.600000e-01
  br i1 %i.eq, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %bb.s
  %.phi.trans.insert264 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre265 = load float, ptr %.phi.trans.insert264, align 4, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge266, %._crit_edge
  %i.er = phi float [ %i.eo, %._crit_edge ], [ %.pre268, %._crit_edge266 ] ; 2 uses
  %i.es = phi float [ %.pre265, %._crit_edge ], [ %i.eh, %._crit_edge266 ] ; 2 uses
  %i.et = fcmp olt float %i.es, %i.er
  %i.eu = select i1 %i.et, float %i.er, float %i.es
  %i.ev = fpext float %i.eu to double
  %i.ew = fmul double %i.ev, 9.999000e-01
  %i.ex = sitofp i32 %.0176 to double
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = sitofp i32 %i.q to double
  %i.fa = fdiv double %i.ey, %i.ez
  %i.fb = fptrunc double %i.fa to float           ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.fb, ptr %i.fc, align 4, !tbaa !56
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.fb, ptr %i.fd, align 4, !tbaa !56
  br label %bb.x

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.fe = load float, ptr %i.a, align 16, !tbaa !56
  %i.ff = fcmp oeq float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fg = load float, ptr %i.b, align 16, !tbaa !56
  %i.fh = fpext float %i.fg to double             ; 2 uses
  %i.fi = fcmp ogt double %i.fh, 4.600000e-01
  br i1 %i.fi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fj = fmul nnan double %i.fh, 9.999000e-01
  %i.fk = sitofp i32 %.0176 to double
  %i.fl = fmul double %i.fj, %i.fk
  %i.fm = sitofp i32 %i.q to double
  %i.fn = fdiv double %i.fl, %i.fm
  %i.fo = fptrunc double %i.fn to float
  store float %i.fo, ptr %6, align 4, !tbaa !56
  br label %bb.x

bb.x:                                             ; preds = %bb.o, %bb.u, %bb.v, %bb.w, %bb.t, %bb.i, %._crit_edge242
  %i.fp = phi i32 [ %.0176, %bb.o ], [ %.0176, %bb.u ], [ %.0176, %bb.v ], [ %.0176, %bb.w ], [ %.0176, %bb.t ], [ %i.q, %bb.i ], [ %i.q, %._crit_edge242 ] ; 2 uses
  %i.fq = load float, ptr %i.a, align 16, !tbaa !56 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !56 ; 2 uses
  %i.ft = fadd float %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !56 ; 2 uses
  %i.fw = fadd float %i.ft, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !56 ; 2 uses
  %i.fz = fadd float %i.fw, %i.fy                 ; 2 uses
  %i.ga = fadd float %i.fz, 1.000000e+00          ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi.mul, i64 %1
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !56
  %i.gd = fmul float %.0183.lcssa, %i.gc          ; 2 uses
  %i.ge = fcmp ult float %i.gd, %i.ga
  br i1 %i.ge, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gf = fdiv float %i.gd, %i.ga
  %i.gg = sitofp i32 %i.fp to float
  %i.gh = fadd float %i.gf, %i.gg
  %i.gi = fptosi float %i.gh to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.gi, i32 255) ; 2 uses
  store i32 %spec.store.select, ptr %8, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gj = phi i32 [ %spec.store.select, %bb.y ], [ %i.fp, %bb.x ] ; 4 uses
  %i.gk = icmp eq i32 %3, 0
  %i.gl = fcmp olt float %i.fz, 1.100000e+01
  %or.cond222 = and i1 %i.gk, %i.gl
  br i1 %or.cond222, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.gm = tail call i32 @llvm.smin.i32(i32 %i.gj, i32 254)
  %spec.store.select201 = add nsw i32 %i.gm, 1
  br label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.gn = icmp ugt i32 %3, 3
  br i1 %i.gn, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.go = fpext float %.0179.lcssa to double
  %i.gp = fmul double %i.go, f0x40025AAAAACCDC00
  %i.gq = fptrunc double %i.gp to float
  %i.gr = and i32 %3, -2
  %or.cond7 = icmp eq i32 %i.gr, 10
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 3
  %switch.selectcmp204 = icmp eq i32 %3, 4
  %switch.select205 = select i1 %switch.selectcmp204, i64 0, i64 %switch.select
  %.0174 = select i1 %or.cond7, i64 1, i64 %switch.select205 ; 2 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul1, i64 %.0174
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %1
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !60
  %i.gv = uitofp i64 %4 to double
  %i.gw = fmul double %i.gu, %i.gv
  %i.gx = uitofp i64 %5 to double
  %i.gy = fmul double %i.gw, %i.gx
  %i.gz = fmul double %i.gy, 8.000000e+00
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul2, i64 %.0174
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %1
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !60
  %i.hd = fpext float %i.gq to double
  %i.he = fmul double %i.hc, %i.hd
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.gz, double 8.000000e+00, double %i.he) ; 2 uses
  %i.hg = fcmp olt double %i.hf, %.0180.lcssa
  br i1 %i.hg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hh = fdiv double %.0180.lcssa, %i.hf
  %i.hi = fptosi double %i.hh to i32
  %i.hj = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %i.hk = tail call i32 @llvm.umin.i32(i32 %i.hj, i32 2)
  %i.hl = add nsw i32 %i.gj, %i.hk
  %spec.store.select202 = tail call i32 @llvm.smin.i32(i32 %i.hl, i32 255)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %.thread
  %spec.store.select201.sink = phi i32 [ %spec.store.select201, %.thread ], [ %spec.store.select202, %bb.ac ] ; 2 uses
  store i32 %spec.store.select201.sink, ptr %8, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %bb.aa
  %9 = phi i32 [ %i.gj, %bb.aa ], [ %i.gj, %bb.ab ], [ %spec.store.select201.sink, %.sink.split ] ; 2 uses
  %i.hm = mul i64 %5, %4
  %i.hn = trunc i64 %i.hm to i32                  ; 5 uses
  %i.ho = fptosi float %i.fq to i32
  %i.hp = sdiv i32 %i.hn, 2                       ; 4 uses
  %i.hq = add nsw i32 %i.hp, %i.ho
  %i.hr = sdiv i32 %i.hq, %i.hn
  %i.hs = fptosi float %i.fs to i32
  %i.ht = add nsw i32 %i.hp, %i.hs
  %i.hu = sdiv i32 %i.ht, %i.hn
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %i.hr)
  %i.hv = fptosi float %i.fv to i32
  %i.hw = add nsw i32 %i.hp, %i.hv
  %i.hx = sdiv i32 %i.hw, %i.hn
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.hx, i32 %.sroa.speculated)
  %i.hy = fptosi float %i.fy to i32
  %i.hz = add nsw i32 %i.hp, %i.hy
  %i.ia = sdiv i32 %i.hz, %i.hn
  %.sroa.speculated.2 = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 %.sroa.speculated.1)
  %i.ib = sdiv i32 %9, 2
  %spec.select223 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.2, i32 15) ; 2 uses
  %i.ic = sub nsw i32 %9, %spec.select223
  br i1 %i.cs, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ad
  %i.id = sitofp i32 %spec.select223 to double    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.if = load <2 x float>, ptr %i.ie, align 4, !tbaa !56
  %i.ig = fpext <2 x float> %i.if to <2 x double>
  %i.ih = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> splat (double 1.000000e-02), <2 x double> %i.ig)
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float>
  store <2 x float> %i.ik, ptr %i.ie, align 4, !tbaa !56
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !56
  %i.in = fpext float %i.im to double
  %i.io = tail call double @llvm.fmuladd.f64(double %i.id, double 1.000000e-02, double %i.in)
  %i.ip = fptrunc double %i.io to float
  store float %i.ip, ptr %i.il, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ad
  %.sroa.speculated208 = tail call i32 @llvm.smax.i32(i32 %i.ib, i32 %i.ic)
  %spec.select203 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated208, i32 4)
  store i32 %spec.select203, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_AVX225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i1 noundef zeroext %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noalias nofree noundef captures(none) %9, ptr noalias nofree noundef captures(none) %10) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !164
  %i.e = icmp slt i32 %i.d, 6
  br i1 %i.e, label %.loopexit.2, label %bb.b

.loopexit.2:                                      ; preds = %bb.a
  %i.f = load i32, ptr %8, align 4, !tbaa !55     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.h = load float, ptr %i.g, align 8, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3876
  %i.j = load float, ptr %i.i, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.k, ptr noundef nonnull %8) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !56
  %i.l = load i32, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0, float noundef %i.h, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %8) #48
  %i.m = load i32, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %.idx = shl i64 %1, 3
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2, float noundef %i.j, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef nonnull %8) #48
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.o = load i32, ptr %8, align 4, !tbaa !55
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.o)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  store i32 %.sroa.speculated.2, ptr %8, align 4, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56
  %.pre = load i32, ptr %8, align 4, !tbaa !55, !noalias !944
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.2
  %i.p = phi i32 [ %.pre, %bb.b ], [ %.sroa.speculated.2, %.loopexit.2 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42, !noalias !944 ; 3 uses
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51, !noalias !944
  %.idx.i.i = mul nuw nsw i64 %i.u, 24
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53, !noalias !944 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !54, !noalias !944
  %i.ad = sitofp i32 %i.p to float                ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = insertelement <8 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ah = shl i64 %6, 3                           ; 4 uses
  %.not91.i = icmp eq i64 %i.ah, 0
  br i1 %.not91.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = shl i64 %5, 3                           ; 3 uses
  %.not92.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr exact i64 %i.aj, 1
  br i1 %.not92.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.split.i

.lr.ph87.split.i:                                 ; preds = %.lr.ph87.i
  %i.al = icmp eq i64 %5, 1
  br i1 %i.al, label %.lr.ph.us.i, label %.lr.ph.i

.lr.ph.us.i:                                      ; preds = %.lr.ph87.split.i, %.lr.ph.us.i
  %.07585.us.i = phi i64 [ %i.bg, %.lr.ph.us.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.us.i = icmp ult i64 %.07585.us.i, %i.ai ; 2 uses
  %i.am = shl i64 %.07585.us.i, 3                 ; 3 uses
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.us.i, i64 0, i64 8
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not79.us.i, i64 4, i64 12
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.am
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.aq = load float, ptr %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !56, !noalias !944
  %i.ar = insertelement <8 x float> poison, float %i.aq, i64 0
  %i.as = load float, ptr %.sroa.sel73.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !56, !noalias !944
  %i.at = insertelement <8 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <8 x float> %i.at, <8 x float> %i.ar, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8>
  %i.av = load <8 x float>, ptr %i.an, align 32, !tbaa !57, !noalias !944
  %i.aw = fmul <8 x float> %i.ag, %i.av
  %i.ax = load <8 x float>, ptr %i.ao, align 32, !tbaa !57, !alias.scope !945, !noalias !946
  %i.ay = fmul <8 x float> %i.aw, %i.ax           ; 2 uses
  %i.az = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ay)
  %i.ba = fcmp oge <8 x float> %i.az, %i.au
  %i.bb = tail call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.ay)
  %i.bc = select <8 x i1> %i.ba, <8 x float> %i.bb, <8 x float> zeroinitializer ; 2 uses
  %i.bd = fcmp oge <8 x float> %i.bc, splat (float f0x4F000000)
  %i.be = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.bc)
  %i.bf = select <8 x i1> %i.bd, <8 x i32> splat (i32 2147483647), <8 x i32> %i.be
  store <8 x i32> %i.bf, ptr %i.ap, align 32, !tbaa !57, !alias.scope !946, !noalias !945
  %i.bg = add nuw i64 %.07585.us.i, 1             ; 2 uses
  %exitcond95.not.i = icmp eq i64 %i.bg, %i.ah
  br i1 %exitcond95.not.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.us.i, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.lr.ph87.split.i, %._crit_edge.split.i
  %.07585.i = phi i64 [ %i.bm, %._crit_edge.split.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.i = icmp ult i64 %.07585.i, %i.ai
  %i.bh = shl i64 %.07585.i, 3
  %i.bi = mul i64 %i.bh, %5                       ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.i, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bi
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bi
  br label %bb.d

._crit_edge.split.i:                              ; preds = %bb.d
  %i.bm = add nuw i64 %.07585.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bm, %i.ah
  br i1 %exitcond.not.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.i, !llvm.loop !5

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.07684.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ch, %bb.d ] ; 5 uses
  %i.bn = icmp uge i64 %.07684.i, %i.ak
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !56, !noalias !944
  %i.br = insertelement <8 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.07684.i
  %i.bu = load <8 x float>, ptr %i.bt, align 32, !tbaa !57, !noalias !944
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi:bb.a
  %i.bl = fmul <4 x float> %i.bi, %i.bk           ; 4 uses
  %i.bm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bl) ; 2 uses
  %i.bn = fcmp oge <4 x float> %i.bm, %i.bf
  %i.bo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.bl) ; 2 uses
  %i.bp = fadd <4 x float> %i.bl, %i.bo
  %i.bq = fsub <4 x float> %i.bp, %i.bo
  %i.br = fcmp uge <4 x float> %i.bm, splat (float f0x4B000000)
  %.v.us.us = select <4 x i1> %i.br, <4 x float> %i.bl, <4 x float> %i.bq
  %i.bs = select <4 x i1> %i.bn, <4 x float> %.v.us.us, <4 x float> zeroinitializer ; 2 uses
  %i.bt = fcmp oge <4 x float> %i.bs, splat (float f0x4F000000)
  %i.bu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bs)
  %i.bv = select <4 x i1> %i.bt, <4 x i32> splat (i32 2147483647), <4 x i32> %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.07695.us.us
  store <4 x i32> %i.bv, ptr %i.bw, align 16, !tbaa !57
  %i.bx = add nuw i64 %.07695.us.us, 4            ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.ah
  br i1 %i.by, label %bb.b, label %._crit_edge.split.us.us, !llvm.loop !7

._crit_edge.split.us.us:                          ; preds = %bb.b
  %i.bz = add nuw i64 %.07596.us, 1               ; 2 uses
  %exitcond106.not = icmp eq i64 %i.bz, %i.af
  br i1 %exitcond106.not, label %._crit_edge99.split, label %.lr.ph.us, !llvm.loop !8

._crit_edge99.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph98, %.loopexit
  ret void

.lr.ph:                                           ; preds = %.lr.ph98.split, %._crit_edge.split
  %.07596 = phi i64 [ %i.ch, %._crit_edge.split ], [ 0, %.lr.ph98.split ] ; 3 uses
  %.not79 = icmp ult i64 %.07596, %i.ag
  %i.ca = select i1 %.not79, i64 0, i64 2
  %i.cb = shl i64 %.07596, 3
  %i.cc = mul i64 %i.cb, %5                       ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ca
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cc
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.cc
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.cc
  br label %bb.c

._crit_edge.split:                                ; preds = %bb.c
  %i.ch = add nuw i64 %.07596, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %i.af
  br i1 %exitcond.not, label %._crit_edge99.split, label %.lr.ph, !llvm.loop !8

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.07695 = phi i64 [ 0, %.lr.ph ], [ %i.df, %bb.c ] ; 5 uses
  %i.ci = icmp uge i64 %.07695, %i.ai
  %i.cj = zext i1 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !56
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.07695
  %i.cp = load <4 x float>, ptr %i.co, align 16, !tbaa !57
  %i.cq = fmul <4 x float> %i.ae, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.07695
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !tbaa !57
  %i.ct = fmul <4 x float> %i.cq, %i.cs           ; 4 uses
  %i.cu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ct) ; 2 uses
  %i.cv = fcmp ole <4 x float> %i.cn, %i.cu
  %i.cw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.ct) ; 2 uses
  %i.cx = fadd <4 x float> %i.ct, %i.cw
  %i.cy = fsub <4 x float> %i.cx, %i.cw
  %i.cz = fcmp uge <4 x float> %i.cu, splat (float f0x4B000000)
  %.v = select <4 x i1> %i.cz, <4 x float> %i.ct, <4 x float> %i.cy
  %i.da = select <4 x i1> %i.cv, <4 x float> %.v, <4 x float> zeroinitializer ; 2 uses
  %i.db = fcmp oge <4 x float> %i.da, splat (float f0x4F000000)
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.da)
  %i.dd = select <4 x i1> %i.db, <4 x i32> splat (i32 2147483647), <4 x i32> %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.07695
  store <4 x i32> %i.dd, ptr %i.de, align 16, !tbaa !57
  %i.df = add nuw i64 %.07695, 4                  ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.ah
  br i1 %i.dg, label %bb.c, label %._crit_edge.split, !llvm.loop !7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, float noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 11 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  %i.c = shl nuw i32 1, %3
  %i.d = and i32 %i.c, 258062
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = zext i32 %3 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.idx.i = mul nuw nsw i64 %i.g, 24
  %i.k = getelementptr i8, ptr %i.j, i64 %.idx.i
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %1
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load float, ptr %i.o, align 4, !tbaa !54
  %i.q = load i32, ptr %8, align 4, !tbaa !55     ; 9 uses
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %i.p, %i.r
  %i.t = or i64 %5, %4
  %or.cond.not = icmp ult i64 %i.t, 2
  br i1 %or.cond.not, label %.loopexit227, label %.preheader226

.preheader226:                                    ; preds = %bb.b
  %i.u = uitofp i64 %4 to float
  %i.v = fmul nnan float %i.u, 3.000000e-03
  %i.w = uitofp i64 %5 to float
  %i.x = fmul float %i.v, %i.w                    ; 2 uses
  %i.y = fcmp ogt float %i.x, 8.000000e-02
  %i.z = select i1 %i.y, float 8.000000e-02, float %i.x
  %i.aa = load <4 x float>, ptr %6, align 4, !tbaa !56
  %i.ab = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = fsub <4 x float> %i.aa, %i.ac           ; 2 uses
  %i.ae = fpext <4 x float> %i.ad to <4 x double>
  %i.af = fcmp olt <4 x double> %i.ae, splat (double 5.400000e-01)
  %i.ag = select <4 x i1> %i.af, <4 x float> splat (float 5.400000e-01), <4 x float> %i.ad
  store <4 x float> %i.ag, ptr %6, align 4, !tbaa !56
  br label %.loopexit227

.loopexit227:                                     ; preds = %.preheader226, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ah = shl i64 %5, 3                           ; 4 uses
  %factor.op.mul235 = shl i64 %4, 3               ; 5 uses
  %.not250 = icmp eq i64 %i.ah, 0
  br i1 %.not250, label %._crit_edge240, label %.preheader225.lr.ph

.preheader225.lr.ph:                              ; preds = %.loopexit227
  %.not251 = icmp eq i64 %factor.op.mul235, 0
  %i.ai = lshr exact i64 %i.ah, 1
  %i.aj = lshr exact i64 %factor.op.mul235, 1
  %i.ak = icmp eq i64 %1, 1
  %i.al = mul i64 %5, 7
  %i.am = mul i64 %4, 7
  %i.an = add i64 %i.ah, -1
  %i.ao = add i64 %factor.op.mul235, -1
  %i.ap = shl i64 %4, 2
  %i.aq = shl i64 %5, 2
  br i1 %.not251, label %._crit_edge240, label %.preheader225.us

.preheader225.us:                                 ; preds = %.preheader225.lr.ph, %._crit_edge.us
  %.0178239.us = phi i64 [ %i.cl, %._crit_edge.us ], [ 0, %.preheader225.lr.ph ] ; 7 uses
  %.0183236.us = phi float [ %.4.us, %._crit_edge.us ], [ 0.000000e+00, %.preheader225.lr.ph ]
  %i.ar = phi <2 x float> [ %i.cj, %._crit_edge.us ], [ zeroinitializer, %.preheader225.lr.ph ]
  %factor.op.mul.reass.us = mul i64 %factor.op.mul235, %.0178239.us
  %i.as = icmp ult i64 %.0178239.us, %5
  %.not198.us = icmp ult i64 %.0178239.us, %i.ai
  %i.at = select i1 %.not198.us, i64 0, i64 2
  %.not199.us = icmp uge i64 %.0178239.us, %i.al
  %i.au = icmp eq i64 %.0178239.us, %i.an
  %i.av = icmp uge i64 %.0178239.us, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %.preheader225.us, %bb.i
  %.0177232.us = phi i64 [ 0, %.preheader225.us ], [ %i.ck, %bb.i ] ; 7 uses
  %.1184229.us = phi float [ %.0183236.us, %.preheader225.us ], [ %.4.us, %bb.i ] ; 4 uses
  %i.aw = phi <2 x float> [ %i.ar, %.preheader225.us ], [ %i.cj, %bb.i ] ; 2 uses
  %i.ax = icmp ult i64 %.0177232.us, %4
  %or.cond.us = and i1 %i.as, %i.ax
  br i1 %or.cond.us, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = add i64 %.0177232.us, %factor.op.mul.reass.us ; 2 uses
  %i.az = icmp uge i64 %.0177232.us, %i.aj
  %i.ba = zext i1 %i.az to i64
  %i.bb = or disjoint i64 %i.at, %i.ba            ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ay
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !56
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ay
  %i.bf = load float, ptr %i.be, align 4, !tbaa !56
  %i.bg = fmul float %i.s, %i.bf
  %i.bh = fmul float %2, %i.bg
  %i.bi = fmul float %i.bd, %i.bh                 ; 3 uses
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi) ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bb
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !56
  %i.bm = fcmp olt float %i.bj, %i.bl
  %i.bn = tail call float @llvm.rint.f32(float %i.bi)
  %i.bo = select i1 %i.bm, float 0.000000e+00, float %i.bn ; 3 uses
  %i.bp = fsub float %i.bi, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bp, i64 1
  %i.bs = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.br) ; 3 uses
  %i.bt = fadd <2 x float> %i.aw, %i.bs           ; 3 uses
  %i.bu = fcmp oeq float %i.bo, 0.000000e+00      ; 2 uses
  %or.cond3.us = and i1 %i.ak, %i.bu
  br i1 %or.cond3.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !56 ; 2 uses
  %i.bx = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.by = fcmp olt float %i.bw, %i.bx
  %spec.store.select219.us = select i1 %i.by, float %i.bx, float %i.bw
  store float %spec.store.select219.us, ptr %i.bv, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.bu, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !56
  %i.cb = extractelement <2 x float> %i.bs, i64 0
  %i.cc = fadd float %i.cb, %i.ca
  store float %i.cc, ptr %i.bz, align 4, !tbaa !56
  %i.cd = icmp uge i64 %.0177232.us, %i.am
  %i.ce = and i1 %.not199.us, %i.cd
  %i.cf = icmp eq i64 %.0177232.us, %i.ao
  %i.cg = or i1 %i.au, %i.cf
  %.not200.us = icmp uge i64 %.0177232.us, %i.ap
  %i.ch = and i1 %i.av, %i.cg
  %or.cond5.us = and i1 %.not200.us, %i.ch
  %brmerge.us = or i1 %i.ce, %or.cond5.us
  br i1 %brmerge.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ci = fadd float %.1184229.us, %i.bj
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.c
  %.4.us = phi float [ %.1184229.us, %bb.c ], [ %.1184229.us, %bb.f ], [ %i.ci, %bb.h ], [ %.1184229.us, %bb.g ] ; 3 uses
  %i.cj = phi <2 x float> [ %i.aw, %bb.c ], [ %i.bt, %bb.f ], [ %i.bt, %bb.h ], [ %i.bt, %bb.g ] ; 4 uses
  %i.ck = add nuw i64 %.0177232.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %factor.op.mul235
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !2102

._crit_edge.us:                                   ; preds = %bb.i
  %i.cl = add nuw i64 %.0178239.us, 1             ; 2 uses
  %exitcond254.not = icmp eq i64 %i.cl, %i.ah
  br i1 %exitcond254.not, label %._crit_edge240.loopexit252, label %.preheader225.us, !llvm.loop !2103

._crit_edge240.loopexit252:                       ; preds = %._crit_edge.us
  %i.cm = extractelement <2 x float> %i.cj, i64 1
  %i.cn = fpext float %i.cm to double
  %i.co = fmul double %i.cn, f0x40025AAAAACCDC00
  %i.cp = fptrunc double %i.co to float
  %i.cq = fpext float %i.cp to double
  %i.cr = extractelement <2 x float> %i.cj, i64 0
  br label %._crit_edge240

._crit_edge240:                                   ; preds = %.preheader225.lr.ph, %._crit_edge240.loopexit252, %.loopexit227
  %.0183.lcssa = phi float [ 0.000000e+00, %.loopexit227 ], [ %.4.us, %._crit_edge240.loopexit252 ], [ 0.000000e+00, %.preheader225.lr.ph ]
  %.0180.lcssa = phi double [ 0.000000e+00, %.loopexit227 ], [ %i.cq, %._crit_edge240.loopexit252 ], [ 0.000000e+00, %.preheader225.lr.ph ] ; 2 uses
  %.0179.lcssa = phi float [ 0.000000e+00, %.loopexit227 ], [ %i.cr, %._crit_edge240.loopexit252 ], [ 0.000000e+00, %.preheader225.lr.ph ] ; 2 uses
  %i.cs = icmp eq i64 %1, 1                       ; 2 uses
  br i1 %i.cs, label %bb.j, label %bb.y

bb.j:                                             ; preds = %._crit_edge240
  %i.ct = fmul float %.0179.lcssa, 8.000000e+00
  %i.cu = mul i64 %5, %4
  %i.cv = uitofp i64 %i.cu to float
  %i.cw = fcmp olt float %i.ct, %i.cv
  br i1 %i.cw, label %.preheader223.preheader, label %bb.y

.preheader223.preheader:                          ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !56
  %i.cz = fcmp oeq float %i.cy, 0.000000e+00      ; 2 uses
  br i1 %i.cz, label %bb.k, label %.preheader223.1

bb.k:                                             ; preds = %.preheader223.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !56
  %i.dc = fpext float %i.db to double
  %i.dd = fcmp ogt double %i.dc, 4.600000e-01
  br i1 %i.dd, label %bb.l, label %.preheader223.1

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.de = add nsw i32 %i.q, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !56
  br label %.loopexit224

.preheader223.1:                                  ; preds = %.preheader223.preheader, %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dg = load float, ptr %i.df, align 8, !tbaa !56
  %i.dh = fcmp oeq float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.m, label %.preheader223.2

bb.m:                                             ; preds = %.preheader223.1
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dj = load float, ptr %i.di, align 8, !tbaa !56
  %i.dk = fpext float %i.dj to double
  %i.dl = fcmp ogt double %i.dk, 4.600000e-01
  br i1 %i.dl, label %bb.l, label %.preheader223.2

.preheader223.2:                                  ; preds = %bb.m, %.preheader223.1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !56 ; 3 uses
  %i.do = fcmp oeq float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.n, label %.loopexit224

bb.n:                                             ; preds = %.preheader223.2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !56
  %i.dr = fpext float %i.dq to double
  %i.ds = fcmp ogt double %i.dr, 4.600000e-01
  br i1 %i.ds, label %bb.l, label %.loopexit224

.loopexit224:                                     ; preds = %.preheader223.2, %bb.n, %bb.l
  %i.dt = phi float [ %.pre, %bb.l ], [ %i.dn, %bb.n ], [ %i.dn, %.preheader223.2 ]
  %.0176 = phi i32 [ %i.de, %bb.l ], [ %i.q, %bb.n ], [ %i.q, %.preheader223.2 ] ; 8 uses
  %i.du = fcmp oeq float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.loopexit224
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !56
  %i.dx = fpext float %i.dw to double             ; 2 uses
  %i.dy = fcmp ogt double %i.dx, 4.600000e-01
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dz = fmul nnan double %i.dx, 9.999000e-01
  %i.ea = sitofp i32 %.0176 to double
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = sitofp i32 %i.q to double
  %i.ed = fdiv double %i.eb, %i.ec
  %i.ee = fptrunc double %i.ed to float
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.ee, ptr %i.ef, align 4, !tbaa !56
  br label %bb.y

bb.q:                                             ; preds = %bb.o, %.loopexit224
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !56 ; 2 uses
  %i.ei = fpext float %i.eh to double
  %i.ej = fcmp ogt double %i.ei, 4.600000e-01
  br i1 %i.ej, label %._crit_edge264, label %bb.s

._crit_edge264:                                   ; preds = %bb.r
  %.phi.trans.insert265 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre266 = load float, ptr %.phi.trans.insert265, align 8, !tbaa !56
  br label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.el = load float, ptr %i.ek, align 8, !tbaa !56
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eo = load float, ptr %i.en, align 8, !tbaa !56 ; 2 uses
  %i.ep = fpext float %i.eo to double
  %i.eq = fcmp ogt double %i.ep, 4.600000e-01
  br i1 %i.eq, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.t
  %.phi.trans.insert262 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre263 = load float, ptr %.phi.trans.insert262, align 4, !tbaa !56
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge264, %._crit_edge
  %i.er = phi float [ %i.eo, %._crit_edge ], [ %.pre266, %._crit_edge264 ] ; 2 uses
  %i.es = phi float [ %.pre263, %._crit_edge ], [ %i.eh, %._crit_edge264 ] ; 2 uses
  %i.et = fcmp olt float %i.es, %i.er
  %i.eu = select i1 %i.et, float %i.er, float %i.es
  %i.ev = fpext float %i.eu to double
  %i.ew = fmul double %i.ev, 9.999000e-01
  %i.ex = sitofp i32 %.0176 to double
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = sitofp i32 %i.q to double
  %i.fa = fdiv double %i.ey, %i.ez
  %i.fb = fptrunc double %i.fa to float           ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.fb, ptr %i.fc, align 4, !tbaa !56
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.fb, ptr %i.fd, align 4, !tbaa !56
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.fe = load float, ptr %i.a, align 16, !tbaa !56
  %i.ff = fcmp oeq float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fg = load float, ptr %i.b, align 16, !tbaa !56
  %i.fh = fpext float %i.fg to double             ; 2 uses
  %i.fi = fcmp ogt double %i.fh, 4.600000e-01
  br i1 %i.fi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fj = fmul nnan double %i.fh, 9.999000e-01
  %i.fk = sitofp i32 %.0176 to double
  %i.fl = fmul double %i.fj, %i.fk
  %i.fm = sitofp i32 %i.q to double
  %i.fn = fdiv double %i.fl, %i.fm
  %i.fo = fptrunc double %i.fn to float
  store float %i.fo, ptr %6, align 4, !tbaa !56
  br label %bb.y

bb.y:                                             ; preds = %bb.p, %bb.v, %bb.w, %bb.x, %bb.u, %bb.j, %._crit_edge240
  %i.fp = phi i32 [ %.0176, %bb.p ], [ %.0176, %bb.v ], [ %.0176, %bb.w ], [ %.0176, %bb.x ], [ %.0176, %bb.u ], [ %i.q, %bb.j ], [ %i.q, %._crit_edge240 ] ; 2 uses
  %i.fq = load <4 x float>, ptr %i.a, align 16, !tbaa !56 ; 5 uses
  %shift = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.fq, %shift
  %shift277 = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop278 = fadd <4 x float> %foldExtExtBinop, %shift277
  %shift280 = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop281 = fadd <4 x float> %foldExtExtBinop278, %shift280
  %i.fr = extractelement <4 x float> %foldExtExtBinop281, i64 0 ; 2 uses
  %i.fs = fadd float %i.fr, 1.000000e+00          ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi.mul, i64 %1
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !56
  %i.fv = fmul float %.0183.lcssa, %i.fu          ; 2 uses
  %i.fw = fcmp ult float %i.fv, %i.fs
  br i1 %i.fw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = fdiv float %i.fv, %i.fs
  %i.fy = sitofp i32 %i.fp to float
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = fptosi float %i.fz to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 255) ; 2 uses
  store i32 %spec.store.select, ptr %8, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gb = phi i32 [ %spec.store.select, %bb.z ], [ %i.fp, %bb.y ] ; 4 uses
  %i.gc = icmp eq i32 %3, 0
  %i.gd = fcmp olt float %i.fr, 1.100000e+01
  %or.cond220 = and i1 %i.gc, %i.gd
  br i1 %or.cond220, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.aa
  %i.ge = tail call i32 @llvm.smin.i32(i32 %i.gb, i32 254)
  %spec.store.select201 = add nsw i32 %i.ge, 1
  br label %.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.gf = icmp ugt i32 %3, 3
  br i1 %i.gf, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.gg = fpext float %.0179.lcssa to double
  %i.gh = fmul double %i.gg, f0x40025AAAAACCDC00
  %i.gi = fptrunc double %i.gh to float
  %i.gj = and i32 %3, -2
  %or.cond7 = icmp eq i32 %i.gj, 10
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 3
  %switch.selectcmp203 = icmp eq i32 %3, 4
  %switch.select204 = select i1 %switch.selectcmp203, i64 0, i64 %switch.select
  %.0174 = select i1 %or.cond7, i64 1, i64 %switch.select204 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul1, i64 %.0174
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %1
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !60
  %i.gn = uitofp i64 %4 to double
  %i.go = fmul double %i.gm, %i.gn
  %i.gp = uitofp i64 %5 to double
  %i.gq = fmul double %i.go, %i.gp
  %i.gr = fmul double %i.gq, 8.000000e+00
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul2, i64 %.0174
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %1
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !60
  %i.gv = fpext float %i.gi to double
  %i.gw = fmul double %i.gu, %i.gv
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gr, double 8.000000e+00, double %i.gw) ; 2 uses
  %i.gy = fcmp olt double %i.gx, %.0180.lcssa
  br i1 %i.gy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gz = fdiv double %.0180.lcssa, %i.gx
  %i.ha = fptosi double %i.gz to i32
  %i.hb = tail call i32 @llvm.smax.i32(i32 %i.ha, i32 0)
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.hb, i32 2)
  %i.hd = add nsw i32 %i.gb, %i.hc
  %spec.store.select202 = tail call i32 @llvm.smin.i32(i32 %i.hd, i32 255)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ad, %.thread
  %spec.store.select201.sink = phi i32 [ %spec.store.select201, %.thread ], [ %spec.store.select202, %bb.ad ] ; 2 uses
  store i32 %spec.store.select201.sink, ptr %8, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %bb.ab
  %9 = phi i32 [ %i.gb, %bb.ab ], [ %i.gb, %bb.ac ], [ %spec.store.select201.sink, %.sink.split ] ; 2 uses
  %i.he = mul i64 %5, %4
  %i.hf = trunc i64 %i.he to i32                  ; 5 uses
  %i.hg = fptosi <4 x float> %i.fq to <4 x i32>
  %i.hh = sdiv i32 %i.hf, 2
  %i.hi = insertelement <4 x i32> poison, i32 %i.hh, i64 0
  %i.hj = shufflevector <4 x i32> %i.hi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hk = add nsw <4 x i32> %i.hj, %i.hg          ; 4 uses
  %i.hl = extractelement <4 x i32> %i.hk, i64 0
  %i.hm = sdiv i32 %i.hl, %i.hf
  %i.hn = extractelement <4 x i32> %i.hk, i64 1
  %i.ho = sdiv i32 %i.hn, %i.hf
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ho, i32 %i.hm)
  %i.hp = extractelement <4 x i32> %i.hk, i64 2
  %i.hq = sdiv i32 %i.hp, %i.hf
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.hq, i32 %.sroa.speculated)
  %i.hr = extractelement <4 x i32> %i.hk, i64 3
  %i.hs = sdiv i32 %i.hr, %i.hf
  %.sroa.speculated.2 = tail call i32 @llvm.smin.i32(i32 %i.hs, i32 %.sroa.speculated.1)
  %i.ht = sdiv i32 %9, 2
  %spec.select221 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.2, i32 15) ; 2 uses
  %i.hu = sub nsw i32 %9, %spec.select221
  br i1 %i.cs, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ae
  %i.hv = sitofp i32 %spec.select221 to double    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.hx = load <2 x float>, ptr %i.hw, align 4, !tbaa !56
  %i.hy = fpext <2 x float> %i.hx to <2 x double>
  %i.hz = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> splat (double 1.000000e-02), <2 x double> %i.hy)
  %i.ic = fptrunc <2 x double> %i.ib to <2 x float>
  store <2 x float> %i.ic, ptr %i.hw, align 4, !tbaa !56
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !56
  %i.if = fpext float %i.ie to double
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.hv, double 1.000000e-02, double %i.if)
  %i.ih = fptrunc double %i.ig to float
  store float %i.ih, ptr %i.id, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ae
  %.sroa.speculated207 = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 %i.hu)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated207, i32 4)
  store i32 %spec.select, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i1 noundef zeroext %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noalias nofree noundef captures(none) %9, ptr noalias nofree noundef captures(none) %10) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !164
  %i.e = icmp slt i32 %i.d, 6
  br i1 %i.e, label %.loopexit.2, label %bb.b

.loopexit.2:                                      ; preds = %bb.a
  %i.f = load i32, ptr %8, align 4, !tbaa !55     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.h = load float, ptr %i.g, align 8, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3876
  %i.j = load float, ptr %i.i, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.k, ptr noundef nonnull %8) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !56
  %i.l = load i32, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0, float noundef %i.h, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %8) #48
  %i.m = load i32, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %.idx = shl i64 %1, 3
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2, float noundef %i.j, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef nonnull %8) #48
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.o = load i32, ptr %8, align 4, !tbaa !55
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.o)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  store i32 %.sroa.speculated.2, ptr %8, align 4, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56
  %.pre = load i32, ptr %8, align 4, !tbaa !55, !noalias !2109
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.2
  %i.p = phi i32 [ %.pre, %bb.b ], [ %.sroa.speculated.2, %.loopexit.2 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42, !noalias !2109 ; 3 uses
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51, !noalias !2109
  %.idx.i.i = mul nuw nsw i64 %i.u, 24
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53, !noalias !2109 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !54, !noalias !2109
  %i.ad = sitofp i32 %i.p to float                ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = shl i64 %6, 3                           ; 4 uses
  %.not102.i = icmp eq i64 %i.ah, 0
  br i1 %.not102.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = shl i64 %5, 3                           ; 4 uses
  %.not103.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr exact i64 %i.aj, 1
  br i1 %.not103.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph98.split.i

.lr.ph98.split.i:                                 ; preds = %.lr.ph98.i
  %i.al = icmp eq i64 %5, 1
  br i1 %i.al, label %.lr.ph.us.i, label %.lr.ph.i

.lr.ph.us.i:                                      ; preds = %.lr.ph98.split.i, %._crit_edge.split.us.us.i
  %.07596.us.i = phi i64 [ %i.by, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph98.split.i ] ; 3 uses
  %.not79.us.i = icmp ult i64 %.07596.us.i, %i.ai ; 2 uses
  %i.am = shl i64 %.07596.us.i, 3                 ; 3 uses
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.us.i, i64 0, i64 8
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not79.us.i, i64 4, i64 12
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.am
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.aq = load float, ptr %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !56, !noalias !2109
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = load float, ptr %.sroa.sel73.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !56, !noalias !2109
  %i.at = insertelement <4 x float> poison, float %i.as, i64 0
  %i.au = bitcast <4 x float> %i.ar to <4 x i32>
  %i.av = shufflevector <4 x i32> %i.au, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aw = bitcast <4 x float> %i.at to <4 x i32>
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us.i
  %.07695.us.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.bw, %bb.d ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07695.us.us.i
  %i.az = load <4 x i32>, ptr %i.ay, align 16, !tbaa !57, !noalias !2109 ; 2 uses
  %i.ba = and <4 x i32> %i.az, %i.av
  %i.bb = xor <4 x i32> %i.az, splat (i32 -1)
  %i.bc = and <4 x i32> %i.ax, %i.bb
  %i.bd = or <4 x i32> %i.bc, %i.ba
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.07695.us.us.i
  %i.bg = load <4 x float>, ptr %i.bf, align 16, !tbaa !57, !noalias !2109
  %i.bh = fmul <4 x float> %i.ag, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.07695.us.us.i
  %i.bj = load <4 x float>, ptr %i.bi, align 16, !tbaa !57, !alias.scope !2110, !noalias !2111
  %i.bk = fmul <4 x float> %i.bh, %i.bj           ; 4 uses
  %i.bl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bk) ; 2 uses
  %i.bm = fcmp oge <4 x float> %i.bl, %i.be
  %i.bn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.bk) ; 2 uses
  %i.bo = fadd <4 x float> %i.bk, %i.bn
  %i.bp = fsub <4 x float> %i.bo, %i.bn
  %i.bq = fcmp uge <4 x float> %i.bl, splat (float f0x4B000000)
  %.v.us.us.i = select <4 x i1> %i.bq, <4 x float> %i.bk, <4 x float> %i.bp
  %i.br = select <4 x i1> %i.bm, <4 x float> %.v.us.us.i, <4 x float> zeroinitializer ; 2 uses
  %i.bs = fcmp oge <4 x float> %i.br, splat (float f0x4F000000)
  %i.bt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.br)
  %i.bu = select <4 x i1> %i.bs, <4 x i32> splat (i32 2147483647), <4 x i32> %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.07695.us.us.i
  store <4 x i32> %i.bu, ptr %i.bv, align 16, !tbaa !57, !alias.scope !2111, !noalias !2110
  %i.bw = add nuw nsw i64 %.07695.us.us.i, 4      ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.aj
  br i1 %i.bx, label %bb.d, label %._crit_edge.split.us.us.i, !llvm.loop !7

._crit_edge.split.us.us.i:                        ; preds = %bb.d
  %i.by = add nuw i64 %.07596.us.i, 1             ; 2 uses
  %exitcond106.not.i = icmp eq i64 %i.by, %i.ah
  br i1 %exitcond106.not.i, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.us.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %.lr.ph98.split.i, %._crit_edge.split.i
end_hunk_2
