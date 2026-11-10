Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f:bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit, label %bb.h, !llvm.loop !656

_ZN11btSparseSdfILi3EE5ResetEv.exit:              ; preds = %._crit_edge.i, %bb.g
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.et = load float, ptr %i.es, align 4, !tbaa !666
  store float %i.et, ptr %i.a, align 8, !tbaa !363
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.eu, align 8, !tbaa !667
  store i32 0, ptr %i.eh, align 4, !tbaa !664
  store i32 1, ptr %i.ef, align 4, !tbaa !661
  store i32 1, ptr %i.di, align 8, !tbaa !660
  br label %bb.i

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE5ResetEv.exit, %.critedge
  %i.ev = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #42 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.ev, i8 0, i64 288, i1 false)
  %i.ew = load ptr, ptr %i.dg, align 8, !tbaa !659
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 288
  store ptr %i.ew, ptr %i.ex, align 16, !tbaa !663
  store ptr %i.ev, ptr %i.dg, align 8, !tbaa !659
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 280
  store ptr %2, ptr %i.ey, align 8, !tbaa !362
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  store i32 %i.cz, ptr %i.ez, align 16, !tbaa !662
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 256
  store i32 %i.x, ptr %i.fa, align 16, !tbaa !275
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 260
  store i32 %i.aa, ptr %i.fb, align 4, !tbaa !275
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 264
  store i32 %i.aq, ptr %i.fc, align 8, !tbaa !275
  tail call void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.ev)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.i
  %.1 = phi ptr [ %i.ev, %bb.i ], [ %.0152, %bb.e ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !667
  %i.ff = getelementptr inbounds nuw i8, ptr %.1, i64 268
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !668
  %i.fg = sext i32 %i.y to i64
  %i.fh = getelementptr inbounds [64 x i8], ptr %.1, i64 %i.fg ; 2 uses
  %i.fi = sext i32 %i.ab to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [16 x i8], ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fk = sext i32 %i.an to i64                   ; 4 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !253 ; 3 uses
  %i.fn = add i64 %.sroa.5.0.insert.shift.i, 4294967296
  %i.fo = ashr exact i64 %i.fn, 26
  %i.fp = getelementptr inbounds i8, ptr %.1, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.fp, i64 %i.fi ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fk
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !253 ; 2 uses
  %i.ft = add i64 %.sroa.5.0.insert.shift.i139, 4294967296
  %i.fu = ashr exact i64 %i.ft, 32                ; 2 uses
  %i.fv = getelementptr inbounds [16 x i8], ptr %i.fp, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fk
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !253
  %i.fy = getelementptr inbounds [16 x i8], ptr %i.fh, i64 %i.fu ; 2 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fk
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !253 ; 2 uses
  %i.gb = add i64 %.sroa.5.0.insert.shift.i145, 4294967296
  %i.gc = ashr exact i64 %i.gb, 32                ; 4 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !253 ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.gc
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !253 ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.gc
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !253
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.gc
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !253
  %i.gl = insertelement <2 x float> poison, float %i.ga, i64 0 ; 2 uses
  %i.gm = insertelement <2 x float> %i.gl, float %i.fs, i64 1 ; 2 uses
  %i.gn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fsub <2 x float> %i.gm, %i.go           ; 3 uses
  %i.gq = insertelement <2 x float> poison, float %i.fx, i64 0 ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gt = fsub <2 x float> %i.gr, %i.gs           ; 2 uses
  %i.gu = insertelement <2 x float> poison, float %i.gk, i64 0 ; 3 uses
  %i.gv = insertelement <2 x float> %i.gu, float %i.gg, i64 1 ; 2 uses
  %i.gw = insertelement <2 x float> poison, float %i.ge, i64 0 ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fsub <2 x float> %i.gv, %i.gx           ; 3 uses
  %i.gz = insertelement <2 x float> poison, float %i.gi, i64 0 ; 2 uses
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fsub <2 x float> %i.ha, %i.gv           ; 2 uses
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hd = fsub <2 x float> %i.gt, %i.gp
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.z, <2 x float> %i.gp) ; 2 uses
  %i.hf = fsub <2 x float> %i.hc, %i.gy
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.z, <2 x float> %i.gy)
  %i.hh = fsub <2 x float> %i.hg, %i.he
  %i.hi = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hj, <2 x float> %i.he) ; 4 uses
  %i.hl = insertelement <2 x float> %i.gu, float %i.ge, i64 1
  %i.hm = insertelement <2 x float> %i.gl, float %i.fm, i64 1
  %i.hn = fsub <2 x float> %i.hl, %i.hm           ; 2 uses
  %i.ho = insertelement <2 x float> %i.gz, float %i.gg, i64 1
  %i.hp = insertelement <2 x float> %i.gq, float %i.fs, i64 1
  %i.hq = fsub <2 x float> %i.ho, %i.hp
  %i.hr = fsub <2 x float> %i.hq, %i.hn
  %i.hs = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.hs, <2 x float> %i.hn) ; 2 uses
  %i.hu = extractelement <2 x float> %i.ht, i64 0
  %i.hv = extractelement <2 x float> %i.ht, i64 1 ; 2 uses
  %i.hw = fsub float %i.hu, %i.hv
  %i.hx = extractelement <2 x float> %i.z, i64 1
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.hw, float %i.hx, float %i.hv) ; 3 uses
  %foldExtExtBinop165 = fmul <2 x float> %i.hk, %i.hk
  %i.hz = extractelement <2 x float> %foldExtExtBinop165, i64 0
  %i.ia = extractelement <2 x float> %i.hk, i64 1 ; 2 uses
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.ia, float %i.hz)
  %i.ic = tail call noundef float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.ib) ; 2 uses
  %i.id = fcmp ult float %i.ic, f0x28800000
  br i1 %i.id, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ic)
  %i.ie = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x float> %i.hk, %i.ig
  %i.ii = fmul float %i.hy, %i.ie
  %i.ij = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %_ZN9btVector313safeNormalizeEv.exit

bb.k:                                             ; preds = %.loopexit
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.ik, align 4, !tbaa !253
  br label %_ZN9btVector313safeNormalizeEv.exit

_ZN9btVector313safeNormalizeEv.exit:              ; preds = %bb.j, %bb.k
  %.sink.i = phi float [ 0.000000e+00, %bb.k ], [ %i.ii, %bb.j ]
  %i.il = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.k ], [ %i.ij, %bb.j ]
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.il, ptr %3, align 4, !tbaa !253
  store float %.sink.i, ptr %i.im, align 4, !tbaa !253
  %i.in = shufflevector <2 x float> %i.gy, <2 x float> %i.gp, <2 x i32> <i32 1, i32 3>
  %i.io = insertelement <2 x float> %i.gw, float %i.fm, i64 1
  %i.ip = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.hs, <2 x float> %i.io) ; 2 uses
  %i.iq = shufflevector <2 x float> %i.hb, <2 x float> %i.gt, <2 x i32> <i32 0, i32 3>
  %i.ir = insertelement <2 x float> %i.gu, float %i.ga, i64 1
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.hs, <2 x float> %i.ir)
  %i.it = fsub <2 x float> %i.is, %i.ip
  %i.iu = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iu, <2 x float> %i.ip) ; 2 uses
  %i.iw = extractelement <2 x float> %i.iv, i64 0
  %i.ix = extractelement <2 x float> %i.iv, i64 1 ; 2 uses
  %i.iy = fsub float %i.iw, %i.ix
  %i.iz = tail call noundef float @llvm.fmuladd.f32(float %i.iy, float %i.ap, float %i.ix)
  %i.ja = fsub float %i.iz, %4
  ret float %i.ja
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.c = load float, ptr %5, align 4, !tbaa !253, !noalias !677 ; 6 uses
  %i.d = fneg float %i.c                          ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.j = load <3 x float>, ptr %4, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.l = load <1 x float>, ptr %i.g, align 4
  %i.m = load <3 x float>, ptr %i.e, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.o = load <1 x float>, ptr %i.h, align 4
  %i.p = load <3 x float>, ptr %i.f, align 4, !tbaa !253, !noalias !678 ; 3 uses
  %i.q = shufflevector <3 x float> %i.p, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.r = load float, ptr %i.i, align 4, !tbaa !253, !noalias !678
  %i.s = extractelement <3 x float> %i.p, i64 2
  %i.t = extractelement <3 x float> %i.p, i64 0
  %i.u = load <2 x float>, ptr %i.b, align 4, !tbaa !253, !noalias !677 ; 3 uses
  %i.v = load float, ptr %i.a, align 4, !tbaa !253, !noalias !677 ; 5 uses
  %i.w = extractelement <2 x float> %i.u, i64 0   ; 2 uses
  %i.x = fneg float %i.w                          ; 4 uses
  %i.y = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %6 = shufflevector <4 x float> %i.y, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.z = insertelement <4 x float> %i.y, float %i.d, i64 1
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ab = insertelement <4 x float> %i.y, float 0.000000e+00, i64 2
  %i.ac = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %i.x, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.c, i64 2
  %i.ae = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %3, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ag = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %2, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ai = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.x, i64 1
  %i.aj = fneg float %i.v                         ; 4 uses
  %i.ak = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aj, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.am = fmul <4 x float> %i.n, %i.al
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %6, <4 x float> %i.am)
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.aa, <4 x float> %i.an) ; 5 uses
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.aq = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.aj, i64 2
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.as = shufflevector <4 x float> %i.q, <4 x float> %i.ao, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.at = shufflevector <1 x float> %i.o, <1 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = shufflevector <1 x float> %i.l, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.x, i64 1 ; 2 uses
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av)
  %i.ba = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.d, i64 0
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bc, <2 x float> %i.az) ; 3 uses
  %i.be = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 2, i32 2>
  %i.bf = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.v, i64 1
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bi = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float 0.000000e+00, i64 1
  %i.bk = insertelement <2 x float> %i.ay, float %i.c, i64 0
  %i.bl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %3, i64 0
  %i.bm = insertelement <2 x float> <float poison, float -0.000000e+00>, float %2, i64 0
  %i.bn = shufflevector <2 x float> %i.bd, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bo = shufflevector <3 x float> %i.m, <3 x float> %i.bn, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %i.bp = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.c, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.d, i64 3
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bs = fmul <4 x float> %i.bo, %i.br
  %i.bt = shufflevector <2 x float> %i.u, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bu = shufflevector <3 x float> %i.j, <3 x float> %i.bt, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %i.bv = insertelement <4 x float> %i.ao, float %i.v, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.x, i64 1
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.bx, <4 x float> %i.bs) ; 4 uses
  %i.bz = shufflevector <4 x float> %i.ab, <4 x float> %i.by, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.ca = insertelement <4 x float> %i.bz, float %i.d, i64 3
  %i.cb = extractelement <4 x float> %i.by, i64 0
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.d, float %i.cb) ; 2 uses
  %i.cd = fmul <4 x float> %i.ca, %i.ap
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.as, <4 x float> %i.cd) ; 3 uses
  %i.cf = extractelement <4 x float> %i.ce, i64 0 ; 2 uses
  %i.cg = extractelement <4 x float> %i.by, i64 2
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %i.cg) ; 3 uses
  %i.ci = insertelement <2 x float> %i.bh, float %i.ch, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.bj, <2 x float> %i.bg)
  %i.ck = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cl = insertelement <2 x float> %i.ck, float %i.cc, i64 0
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.cl, <2 x float> %i.cj)
  %i.cn = fsub <2 x float> %i.bl, %i.cm           ; 2 uses
  %i.co = fadd <2 x float> %i.bm, %i.cn           ; 3 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0 ; 2 uses
  %i.cq = fneg float %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = extractelement <2 x float> %i.cn, i64 1 ; 2 uses
  %i.cu = fneg float %i.ct                        ; 2 uses
  %i.cv = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.cw = insertelement <4 x float> %i.cv, float %i.d, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.cu, i64 3
  %i.cy = shufflevector <2 x float> %i.bd, <2 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.cz = fmul <4 x float> %i.cx, %i.cy           ; 4 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> %i.ce, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.be, <4 x float> %i.da) ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.by, <2 x i32> <i32 7, i32 0>
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cs, <2 x float> %i.dc)
  %i.de = fsub <2 x float> zeroinitializer, %i.dd ; 5 uses
  %i.df = extractelement <2 x float> %i.de, i64 0 ; 2 uses
  %i.dg = extractelement <2 x float> %i.de, i64 1 ; 2 uses
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.di = fneg <2 x float> %i.de
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dk = extractelement <4 x float> %i.cz, i64 1
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ch, float %i.dk)
  %i.dm = tail call noundef float @llvm.fmuladd.f32(float %i.c, float %i.cf, float %i.dl)
  %i.dn = extractelement <4 x float> %i.cz, i64 2
  %i.do = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ch, float %i.dn)
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float 0.000000e+00, float %i.do)
  %i.dq = fsub float 0.000000e+00, %i.dm          ; 3 uses
  %i.dr = fneg float %i.dq                        ; 2 uses
  %i.ds = insertelement <4 x float> %i.db, float %i.dp, i64 0
  %i.dt = fsub <4 x float> %i.af, %i.ds           ; 3 uses
  %i.du = fadd <4 x float> %i.dt, %i.ah           ; 5 uses
  %i.dv = extractelement <4 x float> %i.du, i64 0 ; 2 uses
  %i.dw = fneg float %i.dv                        ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 2>
  %i.dy = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.dz = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ea = fmul float %i.df, %i.dr
  %i.eb = extractelement <4 x float> %i.cz, i64 3
  %i.ec = tail call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dq, float %i.eb) ; 2 uses
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.dv, float %i.ea) ; 2 uses
  %i.ee = fmul float %i.dg, %i.dw
  %i.ef = insertelement <4 x float> %i.dz, float %i.ed, i64 1
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> %i.dh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.eh = insertelement <4 x float> %i.eg, float %i.dq, i64 3
  %i.ei = shufflevector <4 x float> %i.du, <4 x float> %i.dt, <4 x i32> <i32 1, i32 6, i32 1, i32 poison>
  %i.ej = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.dr, i64 2
  %i.ek = shufflevector <4 x float> %i.dj, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.el = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.em = shufflevector <2 x float> %i.de, <2 x float> %i.co, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.en = insertelement <4 x float> %i.em, float %i.ec, i64 3
  %i.eo = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ep = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.df, float %i.ct, float %i.ee) ; 2 uses
  %i.er = insertelement <4 x float> %i.dy, float %i.eq, i64 1
  %i.es = insertelement <4 x float> %i.er, float %i.cq, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.dw, i64 3
  %i.eu = fmul <4 x float> %i.dx, %i.et
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.eh, <4 x float> %i.eu) ; 3 uses
  %i.ew = shufflevector <4 x float> %i.ei, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ex = fmul <4 x float> %i.ew, %i.ek
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.en, <4 x float> %i.ex) ; 3 uses
  %i.ez = shufflevector <4 x float> %i.eo, <4 x float> %i.ev, <4 x i32> <i32 0, i32 7, i32 6, i32 0>
  %i.fa = shufflevector <4 x float> %i.ev, <4 x float> %i.ey, <4 x i32> <i32 poison, i32 0, i32 4, i32 0>
  %i.fb = insertelement <4 x float> %i.fa, float %i.eq, i64 0
  %i.fc = shufflevector <4 x float> %i.ep, <4 x float> %i.ey, <4 x i32> <i32 0, i32 6, i32 5, i32 0>
  %i.fd = shufflevector <4 x float> %i.ey, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fe = insertelement <2 x float> %i.fd, float %1, i64 1
  %i.ff = fdiv <2 x float> splat (float 1.000000e+00), %i.fe ; 6 uses
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fj = extractelement <2 x float> %i.ff, i64 1
  %i.fk = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fl = fmul <4 x float> %i.ez, %i.fk           ; 3 uses
  %i.fm = fmul <4 x float> %i.fb, %i.fk           ; 2 uses
  %i.fn = fmul <4 x float> %i.fc, %i.fk           ; 3 uses
  %i.fo = extractelement <4 x float> %i.fl, i64 2
  %i.fp = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.fq = extractelement <4 x float> %i.fn, i64 2
  %i.fr = insertelement <2 x float> %i.ff, float 0.000000e+00, i64 0
  %i.fs = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ft = fmul <2 x float> %i.fr, %i.fs           ; 2 uses
  %7 = shufflevector <4 x float> %i.fi, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.fu = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %8 = shufflevector <4 x float> %i.fh, <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 1, i32 poison, i32 7>
  %i.fv = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.fw = fmul <4 x float> %i.fm, %i.fv           ; 2 uses
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.fy = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.fu, <4 x float> %i.fz)
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> zeroinitializer, <4 x float> %i.ga) ; 2 uses
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> zeroinitializer, <4 x float> %i.fw)
  %i.gd = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %9 = shufflevector <4 x float> %i.fg, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 5, i32 6, i32 poison>
  %i.ge = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.ge, <4 x float> %i.gc) ; 2 uses
  %i.gg = extractelement <2 x float> %i.ft, i64 0
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.gg)
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.fq, float %i.fj, float %i.gh)
  %i.gj = insertelement <4 x float> %i.gb, float 0.000000e+00, i64 3
  store <4 x float> %i.gj, ptr %0, align 4, !tbaa !253, !alias.scope !679
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = shufflevector <4 x float> %i.gb, <4 x float> %i.gf, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.gm = insertelement <4 x float> %i.gl, float 0.000000e+00, i64 3
  store <4 x float> %i.gm, ptr %i.gk, align 4, !tbaa !253, !alias.scope !679
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.go = shufflevector <4 x float> %i.gf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.go, ptr %i.gn, align 4, !tbaa !253, !alias.scope !679
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.gi, ptr %i.gp, align 4, !tbaa !253, !alias.scope !679
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !253, !alias.scope !679
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(872) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !203  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !204
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f
  tail call void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %i.g)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !203
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [872 x i8], ptr %i.j, i64 %i.k ; 14 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.l, ptr noundef nonnull align 8 dereferenceable(872) %1, i64 64, i1 false), !tbaa.struct !364
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 16, i1 false), !tbaa.struct !260
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !260
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !260
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, ptr noundef nonnull align 8 dereferenceable(28) %i.t, i64 28, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.u, ptr noundef nonnull align 4 dereferenceable(48) %i.v, i64 16, i1 false), !tbaa.struct !260
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !260
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !260
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.aa, ptr noundef nonnull align 8 dereferenceable(204) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 400 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ac, ptr noundef nonnull align 8 dereferenceable(204) %i.ad)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ae, ptr noundef nonnull align 8 dereferenceable(204) %i.af)
          to label %_ZN10btSoftBody25DeformableNodeRigidAnchorC2ERKS0_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ac) #39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.ag, %bb.e ]
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.aa) #39
  resume { ptr, i32 } %.pn.i.i.i

_ZN10btSoftBody25DeformableNodeRigidAnchorC2ERKS0_.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 816
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 816
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 848
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !353
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !353
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 856
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !260
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !203
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody12removeAnchorEi(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1220 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !203  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i32 [ %i.g, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.07 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]   ; 4 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.l = sext i32 %.07 to i64
  %i.m = getelementptr inbounds [872 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 848
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !353
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE13removeAtIndexEi.exit, label %bb.c

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE13removeAtIndexEi.exit: ; preds = %bb.b
  %i.q = add nsw i32 %i.j, -1
  tail call void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE4swapEii(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i32 noundef %.07, i32 noundef %i.q)
  %i.r = load i32, ptr %i.f, align 4, !tbaa !203
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.f, align 4, !tbaa !203
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [872 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 608
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.w) #39
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 400
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.x) #39
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.y) #39
  %.pre = load i32, ptr %i.f, align 4, !tbaa !203
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = add nsw i32 %.07, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE13removeAtIndexEi.exit
  %i.aa = phi i32 [ %.pre, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE13removeAtIndexEi.exit ], [ %i.j, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.07, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE13removeAtIndexEi.exit ], [ %i.z, %bb.c ] ; 2 uses
  %i.ab = icmp slt i32 %.1, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !680
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody22appendDeformableAnchorEiP23btMultiBodyLinkCollider(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.btSoftBody::DeformableNodeRigidAnchor", align 8 ; 98 uses
  %4 = alloca %class.btVector3, align 4           ; 7 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 9 uses
  %7 = alloca %class.btVector3, align 8           ; 9 uses
  %8 = alloca %class.btVector3, align 8           ; 9 uses
  %9 = alloca %struct.btMultiBodyJacobianData, align 8 ; 31 uses
  %10 = alloca %struct.btMultiBodyJacobianData, align 8 ; 31 uses
  %11 = alloca %struct.btMultiBodyJacobianData, align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i8 1, ptr %i.b, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr null, ptr %i.c, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 196
  store i32 0, ptr %i.d, align 4, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i32 0, ptr %i.e, align 8, !tbaa !163
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i8 1, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 240
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody18setAngularVelocityERK9btVector3:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.535.8.vec.extract = extractelement <2 x float> %.sroa.11.0.pn.i.ph, i64 0
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !170
  %i.cw = getelementptr inbounds nuw [256 x i8], ptr %i.cv, i64 %indvars.iv ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !253
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.da = load float, ptr %1, align 4, !tbaa !253 ; 2 uses
  %i.db = load <2 x float>, ptr %i.cz, align 4, !tbaa !253 ; 2 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x float> %i.dc, float %i.cy, i64 1
  %i.de = fsub <2 x float> %i.dd, %i.cr           ; 2 uses
  %i.df = fsub <2 x float> %i.db, %i.cs           ; 2 uses
  %i.dg = load <2 x float>, ptr %i.cu, align 4, !tbaa !253 ; 3 uses
  %i.dh = fneg <2 x float> %i.df
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dj = insertelement <2 x float> %i.di, float %i.da, i64 1
  %i.dk = fmul <2 x float> %i.dj, %i.dh
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.de, <2 x float> %i.dk)
  %i.dm = extractelement <2 x float> %i.de, i64 1
  %i.dn = fneg float %i.dm
  %i.do = extractelement <2 x float> %i.dg, i64 0
  %i.dp = fmul float %i.do, %i.dn
  %i.dq = extractelement <2 x float> %i.df, i64 0
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dq, float %i.dp)
  %i.ds = fadd <2 x float> %.sroa.014.0.pn.i.ph, %i.dl
  %i.dt = fadd float %.sroa.535.8.vec.extract, %i.dr
  %.sroa.3.12.vec.insert.i27 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dt, i64 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store <2 x float> %i.ds, ptr %i.du, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i27, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !259
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !171
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next, %i.dw
  br i1 %i.dx, label %bb.e, label %._crit_edge, !llvm.loop !787
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody17getRigidTransformEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.btTransform) align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %class.btMatrix3x3, align 16        ; 7 uses
  %3 = alloca %class.btVector3, align 4           ; 3 uses
  %4 = alloca %class.btMatrix3x3, align 8         ; 12 uses
  %5 = alloca %class.btMatrix3x3, align 8         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 932
  %i.b = load i32, ptr %i.a, align 4, !tbaa !171  ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph.i, label %_ZNK10btSoftBody15getCenterOfMassEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 3 uses
  br label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 3 uses
  %.056.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader.new ], [ %i.s, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.f = getelementptr inbounds nuw [256 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load float, ptr %i.g, align 8, !tbaa !268 ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %i.j = fdiv float 1.000000e+00, %i.h
  %i.k = select i1 %i.i, float %i.j, float 0.000000e+00
  %i.l = fadd float %.056.i.i, %i.k
  %i.m = getelementptr inbounds nuw [256 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %i.o = load float, ptr %i.n, align 8, !tbaa !268 ; 2 uses
  %i.p = fcmp ogt float %i.o, 0.000000e+00
  %i.q = fdiv float 1.000000e+00, %i.o
  %i.r = select i1 %i.p, float %i.q, float 0.000000e+00
  %i.s = fadd float %i.l, %i.r                    ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !14

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.sroa.11.033.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %.sroa.11.8.vec.insert31.i, %bb.b ] ; 2 uses
  %.sroa.08.032.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.ah, %bb.b ]
  %i.t = getelementptr inbounds nuw [256 x i8], ptr %i.e, i64 %indvars.iv.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.w = load float, ptr %i.v, align 8, !tbaa !268 ; 2 uses
  %i.x = fcmp ogt float %i.w, 0.000000e+00
  %i.y = fdiv float 1.000000e+00, %i.w
  %i.z = select i1 %i.x, float %i.y, float 0.000000e+00 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !253
  %i.ac = fmul float %i.z, %i.ab
  %i.ad = load <2 x float>, ptr %i.u, align 8, !tbaa !253
  %i.ae = insertelement <2 x float> poison, float %i.z, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = fadd <2 x float> %.sroa.08.032.i, %i.ag ; 3 uses
  %.sroa.11.8.vec.extract29.i = extractelement <2 x float> %.sroa.11.033.i, i64 0
  %i.ai = fadd float %.sroa.11.8.vec.extract29.i, %i.ac
  %.sroa.11.8.vec.insert31.i = insertelement <2 x float> %.sroa.11.033.i, float %i.ai, i64 0 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i.i.preheader, label %bb.b, !llvm.loop !17

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aj = icmp eq i32 %i.b, 1
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i.i

_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK10btSoftBody15getCenterOfMassEv.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.1, %_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa ]
  %.056.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.s, %_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod41 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.e, i64 %indvars.iv.i.i.epil.init
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.am = load float, ptr %i.al, align 8, !tbaa !268 ; 2 uses
  %i.an = fcmp ogt float %i.am, 0.000000e+00
  %i.ao = fdiv float 1.000000e+00, %i.am
  %i.ap = select i1 %i.an, float %i.ao, float 0.000000e+00
  %i.aq = fadd float %.056.i.i.epil.init, %i.ap
  br label %_ZNK10btSoftBody15getCenterOfMassEv.exit

_ZNK10btSoftBody15getCenterOfMassEv.exit:         ; preds = %.lr.ph.i.i.epil.preheader, %_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.11.0.lcssa41.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.11.8.vec.insert31.i, %_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa ], [ %.sroa.11.8.vec.insert31.i, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.08.0.lcssa39.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ah, %_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.i.i.epil.preheader ]
  %.05.lcssa.i.i = phi float [ 0.000000e+00, %bb.a ], [ %i.s, %_ZNK10btSoftBody15getCenterOfMassEv.exit.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.i.epil.preheader ]
  %i.ar = fdiv float 1.000000e+00, %.05.lcssa.i.i ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %.sroa.08.0.lcssa39.i, %i.at ; 2 uses
  %.sroa.11.8.vec.extract.i = extractelement <2 x float> %.sroa.11.0.lcssa41.i, i64 0
  %i.av = fmul float %.sroa.11.8.vec.extract.i, %i.ar ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK10btSoftBody15getCenterOfMassEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !157
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !170
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.bc = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = insertelement <4 x float> %i.bc, float 1.000000e+00, i64 3
  %i.be = insertelement <4 x float> %i.bd, float %i.av, i64 2
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_ZNK10btSoftBody15getCenterOfMassEv.exit
  %.sroa.11.8.vec.insert27.i = insertelement <2 x float> %.sroa.11.0.lcssa41.i, float %i.av, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.bf = call noundef i32 @_Z26singularValueDecompositionRK11btMatrix3x3RS_R9btVector3S2_f(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(48) %5, float noundef f0x37800000) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !253, !noalias !795
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bs = load float, ptr %i.br, align 8, !tbaa !253, !noalias !795
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !253, !noalias !795
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.au, ptr %i.bw, align 4
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %.sroa.11.8.vec.insert27.i, ptr %.sroa.628.0..sroa_idx, align 4, !tbaa !259
  %i.bx = load <2 x float>, ptr %4, align 8, !tbaa !253, !noalias !796 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bg, align 8, !tbaa !253, !noalias !796 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bh, align 8, !tbaa !253, !noalias !796 ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cb = load <2 x float>, ptr %5, align 8, !tbaa !253, !noalias !795 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %6 = shufflevector <4 x float> %i.cc, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ce = shufflevector <4 x float> %6, <4 x float> %i.cd, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.cf = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ch = shufflevector <2 x float> %i.cb, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ci = fmul <4 x float> %i.cg, %i.ch
  %i.cj = insertelement <4 x float> %i.cc, float 0.000000e+00, i64 3
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.cd, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cm = shufflevector <2 x float> %i.cb, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cm, <4 x float> %i.ci)
  %i.co = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bp, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load <2 x float>, ptr %i.bq, align 8, !tbaa !253, !noalias !795 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.bi, align 4, !tbaa !253, !noalias !796 ; 2 uses
  %i.ct = load float, ptr %i.bl, align 8, !tbaa !253, !noalias !796
  %i.cu = load <2 x float>, ptr %i.bj, align 4, !tbaa !253, !noalias !796 ; 2 uses
  %i.cv = load float, ptr %i.bm, align 8, !tbaa !253, !noalias !796
  %i.cw = load <2 x float>, ptr %i.bk, align 4, !tbaa !253, !noalias !796 ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cy = load float, ptr %i.bn, align 8, !tbaa !253, !noalias !796
  %i.cz = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %7 = shufflevector <4 x float> %i.cz, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.da = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.db = shufflevector <4 x float> %7, <4 x float> %i.da, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.dc = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.db, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.de = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.cp, <4 x float> %i.cn)
  %i.df = insertelement <4 x float> %i.cz, float 0.000000e+00, i64 3
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.da, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.di = shufflevector <2 x float> %i.cr, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dj = fmul <4 x float> %i.dh, %i.di
  %i.dk = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dl = insertelement <4 x float> %i.dk, float 0.000000e+00, i64 3
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.dn = shufflevector <2 x float> %i.cr, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.do = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dn, <4 x float> %i.dj)
  %i.dp = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bs, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.dq, <4 x float> %i.do)
  store <4 x float> %i.de, ptr %0, align 4
  store <4 x float> %i.dr, ptr %i.cq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dt = load <2 x float>, ptr %i.bt, align 8, !tbaa !253, !noalias !795 ; 2 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dv = shufflevector <2 x float> %i.cs, <2 x float> %i.cu, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dw = insertelement <4 x float> %i.dv, float 1.000000e+00, i64 3
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.dy = fmul <4 x float> %i.du, %i.dx
  %i.dz = shufflevector <2 x float> %i.dt, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ea = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dz, <4 x float> %i.dy)
  %i.eb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ct, i64 0
  %i.ec = insertelement <4 x float> %i.eb, float %i.cv, i64 1
  %i.ed = insertelement <4 x float> %i.ec, float %i.cy, i64 2
  %i.ee = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bv, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.ef, <4 x float> %i.ea)
  store <4 x float> %i.eg, ptr %i.ds, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.eh = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gd, %bb.c ]
  %i.ei = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gb, %bb.c ]
  %i.ej = phi float [ 0.000000e+00, %.lr.ph ], [ %i.fz, %bb.c ]
  %i.ek = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.fy, %bb.c ]
  %i.el = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ga, %bb.c ]
  %i.em = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.gc, %bb.c ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv ; 3 uses
  %i.eo = getelementptr inbounds nuw [256 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.er = load float, ptr %i.eq, align 4, !tbaa !253
  %i.es = load float, ptr %i.en, align 4, !tbaa !253, !noalias !797
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !253, !noalias !797
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !253, !noalias !797
  %i.ex = load <2 x float>, ptr %i.ep, align 4, !tbaa !253
  %i.ey = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.er, i64 2
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fb = fsub <4 x float> %i.be, %i.fa           ; 2 uses
  %i.fc = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.es, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fe = fmul <4 x float> %i.fd, %i.fb
  %i.ff = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ej, i64 2
  %i.fg = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fi = fsub <4 x float> %i.fh, %i.fe           ; 3 uses
  store <4 x float> %i.fi, ptr %2, align 16, !tbaa !253
  %i.fj = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.eu, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fl = insertelement <4 x float> %i.fb, float 1.000000e+00, i64 3 ; 2 uses
  %i.fm = fmul <4 x float> %i.fk, %i.fl
  %i.fn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ei, i64 2
  %i.fo = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fq = fsub <4 x float> %i.fp, %i.fm           ; 3 uses
  store <4 x float> %i.fq, ptr %i.ba, align 16, !tbaa !253
  %i.fr = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ew, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ft = fmul <4 x float> %i.fs, %i.fl
  %i.fu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.eh, i64 2
  %i.fv = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> %i.fu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fx = fsub <4 x float> %i.fw, %i.ft           ; 3 uses
  store <4 x float> %i.fx, ptr %i.bb, align 16, !tbaa !253
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.fy = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fz = extractelement <4 x float> %i.fi, i64 2
  %i.ga = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gb = extractelement <4 x float> %i.fq, i64 2
  %i.gc = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gd = extractelement <4 x float> %i.fx, i64 2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !794
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z26singularValueDecompositionRK11btMatrix3x3RS_R9btVector3S2_f(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(48) %3, float noundef %4) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.GivensRotation, align 4      ; 8 uses
  %6 = alloca %class.GivensRotation, align 4      ; 8 uses
  %7 = alloca %class.btMatrix2x2, align 8         ; 8 uses
  %8 = alloca %class.btMatrix2x2, align 16        ; 7 uses
  %9 = alloca %class.GivensRotation, align 4      ; 8 uses
  %10 = alloca %class.GivensRotation, align 4     ; 7 uses
  %11 = alloca %class.btMatrix2x2, align 8        ; 7 uses
  %12 = alloca %class.btMatrix2x2, align 16       ; 7 uses
  %13 = alloca %class.GivensRotation, align 4     ; 8 uses
  %14 = alloca %class.GivensRotation, align 4     ; 8 uses
  %15 = alloca %class.btMatrix2x2, align 8        ; 8 uses
  %16 = alloca %class.btMatrix2x2, align 16       ; 7 uses
  %17 = alloca %class.btMatrix3x3, align 8        ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !260
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !260
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !260
  store float 1.000000e+00, ptr %1, align 4, !tbaa !253
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !253
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.h, align 4, !tbaa !253
  store float 1.000000e+00, ptr %3, align 4, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.l, align 4, !tbaa !253
  call void @_Z15makeUpperBidiagR11btMatrix3x3S0_S0_(ptr noundef nonnull align 4 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %3)
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.n = load <2 x float>, ptr %17, align 8, !tbaa !253 ; 5 uses
  %i.o = extractelement <2 x float> %i.n, i64 1   ; 6 uses
  %i.p = extractelement <2 x float> %i.n, i64 0   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 5 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !253 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 5 uses
  %i.u = load <2 x float>, ptr %i.q, align 4, !tbaa !253 ; 4 uses
  %i.v = load float, ptr %i.t, align 8, !tbaa !253 ; 6 uses
  %i.w = fmul float %i.p, %i.o
  %i.x = extractelement <2 x float> %i.u, i64 0   ; 4 uses
  %i.y = fmul float %i.x, %i.v
  %foldExtExtBinop = fmul <2 x float> %i.u, %i.u
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aa = call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.z)
  %i.ab = call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.aa)
  %i.ac = call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.ab)
  %i.ad = call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, f0x34000000
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = call nnan float @llvm.sqrt.f32(float %i.ad)
  %i.af = fmul nnan float %sqrt, 5.000000e-01     ; 2 uses
  %i.ag = fcmp ogt float %i.af, 1.000000e+00
  %.sroa.speculated = select i1 %i.ag, float %i.af, float 1.000000e+00
  %i.ah = fmul float %4, %.sroa.speculated
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0113 = phi float [ %i.ah, %bb.b ], [ %4, %bb.a ] ; 8 uses
  %i.ai = shufflevector <2 x float> %i.n, <2 x float> %i.u, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %i.aj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ai) ; 2 uses
  %i.ak = insertelement <4 x float> poison, float %.0113, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = fcmp ule <4 x float> %i.aj, %i.al
  %i.an = bitcast <4 x i1> %i.am to i4
  %i.ao = icmp eq i4 %i.an, 0
  %i.ap = extractelement <4 x float> %i.aj, i64 0 ; 2 uses
  br i1 %i.ao, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.au = call noundef float @llvm.fabs.f32(float %i.s)
  %i.av = fcmp ogt float %i.au, %.0113
  br i1 %i.av, label %.lr.ph347, label %.critedge

bb.d:                                             ; preds = %bb.g
  %i.aw = fmul float %i.eo, %i.en
  %i.ax = extractelement <2 x float> %i.er, i64 0 ; 3 uses
  %i.ay = fmul float %i.ax, %i.es
  %i.az = call noundef float @llvm.fabs.f32(float %i.ep)
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody10clusterComEPKNS_7ClusterE:bb.a

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.sroa.015.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader ]
  %i.w = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.y = load float, ptr %i.x, align 4, !tbaa !253 ; 3 uses
  %i.z = fmul float %.sroa.015.0.lcssa, %i.y
  %i.aa = extractelement <2 x float> %i.w, i64 0
  %i.ab = fmul float %i.aa, %i.y
  %i.ac = extractelement <2 x float> %i.w, i64 1
  %i.ad = fmul float %i.ac, %i.y
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.z, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ab, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.sroa.015.019 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.bf, %bb.b ]
  %i.ae = phi <2 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.bg, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !316 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !253
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !253 ; 2 uses
  %i.al = fmul float %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !253
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.an
  %i.ar = fadd float %.sroa.015.019, %i.al
  %i.as = fadd <2 x float> %i.ae, %i.aq
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !316 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.ax = load float, ptr %i.av, align 4, !tbaa !253
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !253 ; 2 uses
  %i.az = fmul float %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !253
  %i.bc = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %i.bb
  %i.bf = fadd float %i.ar, %i.az                 ; 3 uses
  %i.bg = fadd <2 x float> %i.as, %i.be           ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK10btSoftBody10clusterComEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0, i32 noundef %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !378  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !410  ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !411  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !161  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %i.g, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ao, %bb.b ]
  %i.n = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.ap, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !316  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.s = load float, ptr %i.q, align 4, !tbaa !253
  %i.t = load float, ptr %i.r, align 4, !tbaa !253 ; 2 uses
  %i.u = fmul float %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !253
  %i.x = insertelement <2 x float> poison, float %i.t, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.y, %i.w
  %i.aa = fadd float %.sroa.015.019.i, %i.u
  %i.ab = fadd <2 x float> %i.n, %i.z
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !316 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !253
  %i.ah = load float, ptr %i.af, align 4, !tbaa !253 ; 2 uses
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !253
  %i.al = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.am, %i.ak
  %i.ao = fadd float %i.aa, %i.ai                 ; 3 uses
  %i.ap = fadd <2 x float> %i.ab, %i.an           ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !21

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ao, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.ap, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.epil.init
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !316 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  %i.au = load float, ptr %i.as, align 4, !tbaa !253
  %i.av = load float, ptr %i.at, align 4, !tbaa !253 ; 2 uses
  %i.aw = fmul float %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !tbaa !253
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %i.ay
  %i.bc = fadd float %.sroa.015.019.i.epil.init, %i.aw
  %i.bd = fadd <2 x float> %.epil.init, %i.bb
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit:  ; preds = %.epil.preheader, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ao, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.bc, %.epil.preheader ]
  %i.be = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ap, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.bd, %.epil.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !253 ; 3 uses
  %i.bh = fmul float %.sroa.015.0.lcssa.i, %i.bg
  %i.bi = extractelement <2 x float> %i.be, i64 0
  %i.bj = fmul float %i.bi, %i.bg
  %i.bk = extractelement <2 x float> %i.be, i64 1
  %i.bl = fmul float %i.bk, %i.bg
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bh, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bj, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert.i.i, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN10btSoftBody15clusterVelocityEPKNS_7ClusterERK9btVector3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !253 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.g = load float, ptr %i.f, align 4, !tbaa !253 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.a, align 4, !tbaa !253
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.k = load float, ptr %i.h, align 4, !tbaa !253
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !253 ; 2 uses
  %i.m = fneg float %i.k
  %i.n = fmul float %i.g, %i.m
  %i.o = load float, ptr %i.c, align 4, !tbaa !253
  %i.p = load <2 x float>, ptr %i.b, align 4, !tbaa !253 ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.o, float %i.e, float %i.n)
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.e, i64 0
  %i.t = fneg <2 x float> %i.s
  %i.u = fmul <2 x float> %i.p, %i.t
  %i.v = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.w = insertelement <2 x float> %i.v, float %i.g, i64 0
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.l, <2 x float> %i.u)
  %i.y = fadd float %i.q, %i.i
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !253
  %i.aa = fadd <2 x float> %i.z, %i.x             ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %2 = shufflevector <2 x float> %i.aa, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ab, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10btSoftBody15clusterVImpulseEPNS_7ClusterERK9btVector3S4_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load float, ptr %i.a, align 4, !tbaa !253 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load float, ptr %i.d, align 4, !tbaa !253
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load float, ptr %i.g, align 4, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load float, ptr %i.i, align 4, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.l = load float, ptr %i.k, align 4, !tbaa !253
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load float, ptr %i.m, align 4, !tbaa !253
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !253
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !253
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !253
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !253
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.y = load float, ptr %2, align 4, !tbaa !253
  %i.z = load <3 x float>, ptr %2, align 4, !tbaa !253 ; 2 uses
  %i.aa = shufflevector <3 x float> %i.z, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 2 uses
  %i.ab = fmul float %i.y, %i.b                   ; 2 uses
  %i.ac = load <3 x float>, ptr %1, align 4, !tbaa !253 ; 2 uses
  %i.ad = fneg <3 x float> %i.z
  %i.ae = shufflevector <3 x float> %i.ac, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.af = fmul <3 x float> %i.ae, %i.ad
  %i.ag = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ac, <3 x float> %i.aa, <3 x float> %i.af) ; 6 uses
  %i.ah = load <2 x float>, ptr %i.c, align 4, !tbaa !253 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.f, align 4, !tbaa !253 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.ak = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.an = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.an, <2 x float> %i.al)
  %i.ap = insertelement <2 x float> poison, float %i.e, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.h, i64 1
  %i.ar = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.ao) ; 2 uses
  %i.at = extractelement <3 x float> %i.ag, i64 2
  %i.au = fmul float %i.at, %i.l
  %i.av = extractelement <3 x float> %i.ag, i64 1
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.j, float %i.av, float %i.au)
  %i.ax = extractelement <3 x float> %i.ag, i64 0
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.ax, float %i.aw) ; 2 uses
  %i.az = fadd float %i.ab, %i.p
  store float %i.az, ptr %i.o, align 4, !tbaa !253
  %i.ba = fadd float %i.ab, %i.v
  store float %i.ba, ptr %i.u, align 4, !tbaa !253
  %i.bb = load <2 x float>, ptr %i.w, align 4, !tbaa !253
  %i.bc = insertelement <2 x float> poison, float %i.b, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <3 x float> %i.aa, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bf = fmul <2 x float> %i.bd, %i.be           ; 3 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = fadd float %i.bg, %i.r
  store float %i.bh, ptr %i.q, align 4, !tbaa !253
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = fadd float %i.bi, %i.t
  store float %i.bj, ptr %i.s, align 4, !tbaa !253
  %i.bk = fadd <2 x float> %i.bf, %i.bb
  store <2 x float> %i.bk, ptr %i.w, align 4, !tbaa !253
  %i.bl = load <2 x float>, ptr %i.x, align 4, !tbaa !253
  %i.bm = fadd <2 x float> %i.as, %i.bl
  store <2 x float> %i.bm, ptr %i.x, align 4, !tbaa !253
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !253
  %i.bp = fadd float %i.ay, %i.bo
  store float %i.bp, ptr %i.bn, align 4, !tbaa !253
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !253
  %i.bs = fadd <2 x float> %i.as, %i.br
  store <2 x float> %i.bs, ptr %i.bq, align 4, !tbaa !253
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !253
  %i.bv = fadd float %i.ay, %i.bu
  store float %i.bv, ptr %i.bt, align 4, !tbaa !253
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !413
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !413
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10btSoftBody15clusterDImpulseEPNS_7ClusterERK9btVector3S4_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load float, ptr %i.a, align 4, !tbaa !253 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !253 ; 3 uses
  %i.e = fmul float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load float, ptr %i.g, align 4, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load float, ptr %i.j, align 4, !tbaa !253
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load float, ptr %i.l, align 4, !tbaa !253
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.o = load float, ptr %i.n, align 4, !tbaa !253
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = load float, ptr %i.p, align 4, !tbaa !253
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.s = load <2 x float>, ptr %2, align 4, !tbaa !253 ; 3 uses
  %i.t = insertelement <2 x float> poison, float %i.b, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = load <2 x float>, ptr %i.r, align 4, !tbaa !253
  %i.x = fadd <2 x float> %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !253
  %i.aa = fadd float %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ac = load <3 x float>, ptr %1, align 4, !tbaa !253 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.f, align 4, !tbaa !253 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.i, align 4, !tbaa !253 ; 2 uses
  %i.af = shufflevector <2 x float> %i.s, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ag = insertelement <3 x float> %i.af, float %i.d, i64 2
  %i.ah = fneg <3 x float> %i.ag
  %i.ai = shufflevector <3 x float> %i.ac, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.aj = fmul <3 x float> %i.ai, %i.ah
  %i.ak = shufflevector <2 x float> %i.s, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.al = insertelement <3 x float> %i.ak, float %i.d, i64 1
  %i.am = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ac, <3 x float> %i.al, <3 x float> %i.aj) ; 6 uses
  %i.an = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ao = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ar = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.ap)
  %i.at = insertelement <2 x float> poison, float %i.h, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.k, i64 1
  %i.av = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.av, <2 x float> %i.as)
  %i.ax = extractelement <3 x float> %i.am, i64 2
  %i.ay = fmul float %i.ax, %i.o
  %i.az = extractelement <3 x float> %i.am, i64 1
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.m, float %i.az, float %i.ay)
  %i.bb = extractelement <3 x float> %i.am, i64 0
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.bb, float %i.ba)
  store <2 x float> %i.x, ptr %i.r, align 4, !tbaa !253
  store float %i.aa, ptr %i.y, align 4, !tbaa !253
  %i.bd = load <2 x float>, ptr %i.ab, align 4, !tbaa !253
  %i.be = fadd <2 x float> %i.aw, %i.bd
  store <2 x float> %i.be, ptr %i.ab, align 4, !tbaa !253
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !253
  %i.bh = fadd float %i.bc, %i.bg
  store float %i.bh, ptr %i.bf, align 4, !tbaa !253
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !414
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !414
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10btSoftBody14clusterImpulseEPNS_7ClusterERK9btVector3RKNS_7ImpulseE(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(33) %2) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.e = load float, ptr %i.d, align 4, !tbaa !253 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load float, ptr %i.g, align 4, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load float, ptr %i.j, align 4, !tbaa !253
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load float, ptr %i.l, align 4, !tbaa !253
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.o = load float, ptr %i.n, align 4, !tbaa !253
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = load float, ptr %i.p, align 4, !tbaa !253
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !253
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !253
end_hunk_2
begin_hunk_3_@_ZN10btSoftBody18initializeClustersEv:bb.a
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !950

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.prol
  %i.ag = load float, ptr %i.af, align 4, !tbaa !253
  store float %i.ag, ptr %i.ae, align 4, !tbaa !253
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !951

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !253
  store float %i.al, ptr %i.aj, align 4, !tbaa !253
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !253
  store float %i.ao, ptr %i.am, align 4, !tbaa !253
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.1
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !253
  store float %i.ar, ptr %i.ap, align 4, !tbaa !253
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.2
  %i.au = load float, ptr %i.at, align 4, !tbaa !253
  store float %i.au, ptr %i.as, align 4, !tbaa !253
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !952

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !160, !range !262, !noundef !263
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.ay, align 8, !tbaa !160
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !161
  store i32 %i.j, ptr %i.n, align 8, !tbaa !163
  %.pre190.pre = load i32, ptr %i.i, align 4, !tbaa !410
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %.pre190 = phi i32 [ %i.j, %..lr.ph.i_crit_edge ], [ %.pre190.pre, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.az = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.ba = sext i32 %i.l to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.j to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bc = sub nsw i64 %wide.trip.count.i, %i.ba
  %i.bd = shl nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bd, i1 false), !tbaa !253
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.b
  %i.be = phi i32 [ %.pre190, %.lr.ph.i ], [ %i.j, %bb.b ] ; 11 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !162
  %i.bf = icmp sgt i32 %i.be, 0                   ; 3 uses
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %.pre193 = load float, ptr %i.h, align 4, !tbaa !427
  %i.bg = fdiv float 1.000000e+00, %.pre193       ; 2 uses
  store float %i.bg, ptr %i.h, align 4, !tbaa !427
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !411
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !161
  %wide.trip.count = zext nneg i32 %i.be to i64   ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k
  %i.bm = fdiv float 1.000000e+00, %i.en          ; 3 uses
  store float %i.bm, ptr %i.h, align 4, !tbaa !427
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !411 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !161 ; 3 uses
  %xtraiter242 = and i64 %wide.trip.count, 1
  %i.br = icmp eq i32 %i.be, 1
  br i1 %i.br, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.new
  %indvars.iv.i81 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.i82.1, %bb.g ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %._crit_edge.new ], [ %i.ct, %bb.g ]
  %i.bs = phi <2 x float> [ zeroinitializer, %._crit_edge.new ], [ %i.cu, %bb.g ]
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.1, %bb.g ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i81
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !316 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i81
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !253
  %i.by = load float, ptr %i.bw, align 4, !tbaa !253 ; 2 uses
  %i.bz = fmul float %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !253
  %i.cc = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fadd float %.sroa.015.019.i, %i.bz
  %i.cg = fadd <2 x float> %i.bs, %i.ce
  %indvars.iv.next.i82 = or disjoint i64 %indvars.iv.i81, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i82
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !316 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next.i82
  %i.cl = load float, ptr %i.cj, align 4, !tbaa !253
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !253 ; 2 uses
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !253
  %i.cq = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fadd float %i.cf, %i.cn                 ; 3 uses
  %i.cu = fadd <2 x float> %i.cg, %i.cs           ; 3 uses
  %indvars.iv.next.i82.1 = add nuw nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !21

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv.i81.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i82.1, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i81.epil.init
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !316 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i81.epil.init
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !253
  %i.da = load float, ptr %i.cy, align 4, !tbaa !253 ; 2 uses
  %i.db = fmul float %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !253
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %i.dd
  %i.dh = fadd float %.sroa.015.019.i.epil.init, %i.db
  %i.di = fadd <2 x float> %.epil.init, %i.dg
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit:  ; preds = %.epil.preheader, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge.thread
  %i.dj = phi float [ %i.bg, %._crit_edge.thread ], [ %i.bm, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.bm, %.epil.preheader ] ; 2 uses
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %._crit_edge.thread ], [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.dh, %.epil.preheader ]
  %i.dk = phi <2 x float> [ zeroinitializer, %._crit_edge.thread ], [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.di, %.epil.preheader ]
  %i.dl = fmul float %i.dj, %.sroa.015.0.lcssa.i  ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.dn, %i.dk           ; 3 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dp = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.do, <2 x i32> <i32 0, i32 2>
  %1 = shufflevector <2 x float> %i.do, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 3 uses
  store <2 x float> %i.dp, ptr %i.dq, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  store <2 x float> %1, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !259
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dr, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i8 0, i64 48, i1 false)
  br i1 %i.bf, label %.lr.ph163, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge: ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit
  %.phi.trans.insert194 = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.du = load <2 x float>, ptr %.phi.trans.insert194, align 4, !tbaa !253
  %.pre199 = load float, ptr %.phi.trans.insert198, align 8, !tbaa !253
  %.pre201 = load float, ptr %.phi.trans.insert200, align 4, !tbaa !253, !noalias !959 ; 2 uses
  %i.dv = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.pre201, i64 1
  br label %._crit_edge164

.lr.ph163:                                        ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !411
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !161
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 188 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 172 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %.promoted165 = load float, ptr %i.ea, align 4, !tbaa !253
  %i.ed = load <2 x float>, ptr %i.eb, align 4, !tbaa !253
  %.promoted168 = load float, ptr %i.ec, align 8, !tbaa !253
  %wide.trip.count182 = zext nneg i32 %i.be to i64
  %i.ee = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.promoted168, i64 1
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !316
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !268 ; 2 uses
  %i.ej = fcmp oeq float %i.ei, 0.000000e+00
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.bk, align 8, !tbaa !423
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.el = fdiv float 1.000000e+00, %i.ei
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi float [ %i.el, %bb.j ], [ f0x5D5E0B6B, %bb.i ] ; 2 uses
  store float %.sink, ptr %i.ek, align 4, !tbaa !253
  %i.em = load float, ptr %i.h, align 4, !tbaa !427
  %i.en = fadd float %.sink, %i.em                ; 2 uses
  store float %i.en, ptr %i.h, align 4, !tbaa !427
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !955

bb.l:                                             ; preds = %.lr.ph163, %bb.l
  %indvars.iv179 = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next180, %bb.l ] ; 3 uses
  %i.eo = phi float [ 0.000000e+00, %.lr.ph163 ], [ %i.fn, %bb.l ]
  %i.ep = phi float [ %.promoted165, %.lr.ph163 ], [ %i.fp, %bb.l ]
  %i.eq = phi <2 x float> [ %i.ed, %.lr.ph163 ], [ %i.fu, %bb.l ]
  %i.er = phi <2 x float> [ %i.ee, %.lr.ph163 ], [ %i.fz, %bb.l ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv179
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !316 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !253
  %i.ew = fsub float %i.ev, %i.dl                 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ey = fmul float %i.ew, %i.ew
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv179
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !253 ; 3 uses
  %i.fb = load <2 x float>, ptr %i.ex, align 4, !tbaa !253
  %i.fc = fsub <2 x float> %i.fb, %i.do           ; 5 uses
  %i.fd = fmul <2 x float> %i.fc, %i.fc           ; 2 uses
  %i.fe = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fd)
  %i.ff = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fadd <2 x float> %i.fg, %i.fd
  %i.fi = insertelement <2 x float> poison, float %i.fa, i64 0 ; 2 uses
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.ep, i64 1
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fh, <2 x float> %i.fl) ; 3 uses
  %i.fn = extractelement <2 x float> %i.fm, i64 0 ; 3 uses
  store float %i.fn, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !253
  %i.fo = extractelement <2 x float> %i.fc, i64 0
  %i.fp = extractelement <2 x float> %i.fm, i64 1 ; 3 uses
  store float %i.fp, ptr %i.ea, align 4, !tbaa !253
  %i.fq = fneg float %i.ew
  %i.fr = fmul float %i.fa, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fc, <2 x float> %i.eq) ; 3 uses
  store <2 x float> %i.fu, ptr %i.eb, align 4, !tbaa !253
  %i.fv = fneg float %i.fo
  %i.fw = fmul float %i.fa, %i.fv
  %i.fx = insertelement <2 x float> %i.fi, float %i.fw, i64 1
  %i.fy = insertelement <2 x float> %i.fc, float %i.fe, i64 0
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fy, <2 x float> %i.er) ; 3 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  store float %i.ga, ptr %i.ds, align 8, !tbaa !253
  %i.gb = extractelement <2 x float> %i.fz, i64 1 ; 2 uses
  store float %i.gb, ptr %i.ec, align 8, !tbaa !253
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %._crit_edge164, label %bb.l, !llvm.loop !956

._crit_edge164:                                   ; preds = %bb.l, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge
  %i.gc = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.ga, %bb.l ] ; 4 uses
  %i.gd = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fn, %bb.l ] ; 2 uses
  %i.ge = phi float [ %.pre201, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fp, %bb.l ] ; 3 uses
  %i.gf = phi float [ %.pre199, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.gb, %bb.l ] ; 5 uses
  %i.gg = phi <2 x float> [ %i.dv, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fm, %bb.l ]
  %i.gh = phi <2 x float> [ %i.du, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fu, %bb.l ] ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.gl = fneg float %i.gf                        ; 2 uses
  %i.gm = fmul float %i.gf, %i.gl
  %i.gn = fneg <2 x float> %i.gg
  %i.go = extractelement <2 x float> %i.gh, i64 1 ; 3 uses
  %i.gp = fneg float %i.go                        ; 2 uses
  %i.gq = fmul float %i.go, %i.gp
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.gc, float %i.gd, float %i.gq)
  %i.gs = extractelement <2 x float> %i.gh, i64 0 ; 3 uses
  %i.gt = fneg float %i.gs
  %i.gu = fmul float %i.gs, %i.gt
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.gc, float %i.ge, float %i.gu)
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.ge, float %i.gd, float %i.gm) ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.gz = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ha = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.gz, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hc = fmul <4 x float> %i.gy, %i.hb
  %i.hd = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.gf, i64 0
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> %i.gx, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %2 = shufflevector <4 x float> %i.gx, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 1, i32 poison, i32 6, i32 poison>
  %i.hf = insertelement <4 x float> %2, float %i.gf, i64 1
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.hg, <4 x float> %i.hc) ; 2 uses
  %i.hi = extractelement <4 x float> %i.hh, i64 0
  %i.hj = fmul float %i.gs, %i.hi
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gw, float %i.hj)
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !259
  %i.hl = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.gc, i64 1
  %i.hn = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.gl, i64 1
  %i.hp = fmul <2 x float> %i.hm, %i.ho
  %i.hq = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hr = insertelement <2 x float> %i.hq, float %i.gf, i64 0
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.hr, <2 x float> %i.hp) ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 0
  %i.hu = tail call noundef float @llvm.fmuladd.f32(float %i.go, float %i.ht, float %i.hk)
  %i.hv = fdiv float 1.000000e+00, %i.hu          ; 5 uses
  %i.hw = fmul float %i.gw, %i.hv
  %i.hx = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.hv, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.hz = fmul <4 x float> %i.hh, %i.hy
  %i.ia = fmul float %i.gr, %i.hv
  %i.ib = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.hs, %i.ic           ; 2 uses
  %i.ie = fmul float %i.gv, %i.hv
  store float %i.hw, ptr %i.ds, align 8
  store <4 x float> %i.hz, ptr %i.gi, align 4
  store float %i.ia, ptr %i.gk, align 4
  %i.if = extractelement <2 x float> %i.id, i64 1
  store float %i.if, ptr %i.gj, align 8
  store <2 x float> %i.id, ptr %i.dt, align 8
  store float %i.ie, ptr %.sroa.5142.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.6143.0..sroa_idx, align 4, !tbaa !259
  %i.ig = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float 1.000000e+00, ptr %i.ig, align 8, !tbaa !253
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ii, align 4, !tbaa !253
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ik = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ik, align 8, !tbaa !253
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  store i32 0, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !260
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 4 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !158 ; 2 uses
  %i.ip = icmp sgt i32 %i.be, %i.io
  br i1 %i.ip, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.m:                                             ; preds = %._crit_edge164
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !159
  %i.is = icmp slt i32 %i.ir, %i.be
  br i1 %i.is, label %bb.n, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i94 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i94, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.it = sext i32 %i.be to i64
  %i.iu = shl nsw i64 %i.it, 4
  %i.iv = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.iu, i32 noundef 16)
  %.pre.i95 = load i32, ptr %i.in, align 4, !tbaa !158
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.o, %bb.n
  %i.iw = phi i32 [ %.pre.i95, %bb.o ], [ %i.io, %bb.n ] ; 4 uses
  %.0.i.i.i96 = phi ptr [ %i.iv, %bb.o ], [ null, %bb.n ] ; 4 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i.i98, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i98:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  %wide.trip.count.i.i.i99 = zext nneg i32 %i.iw to i64 ; 2 uses
  %xtraiter248 = and i64 %wide.trip.count.i.i.i99, 1
  %i.iz = icmp eq i32 %i.iw, 1
  br i1 %i.iz, label %.epil.preheader247, label %.lr.ph.i.i.i98.new

.lr.ph.i.i.i98.new:                               ; preds = %.lr.ph.i.i.i98
  %unroll_iter251 = and i64 %wide.trip.count.i.i.i99, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i98.new
  %indvars.iv.i.i.i100 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %indvars.iv.next.i.i.i101.1, %bb.p ] ; 4 uses
  %niter252 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %niter252.next.1, %bb.p ]
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !157
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %indvars.iv.i.i.i100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ja, ptr noundef nonnull align 4 dereferenceable(16) %i.jc, i64 16, i1 false), !tbaa.struct !260
  %indvars.iv.next.i.i.i101 = or disjoint i64 %indvars.iv.i.i.i100, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i101
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !157
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %indvars.iv.next.i.i.i101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(16) %i.jf, i64 16, i1 false), !tbaa.struct !260
  %indvars.iv.next.i.i.i101.1 = add nuw nsw i64 %indvars.iv.i.i.i100, 2 ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.p, !llvm.loop !1

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i98
  %indvars.iv.i.i.i100.epil.init = phi i64 [ 0, %.lr.ph.i.i.i98 ], [ %indvars.iv.next.i.i.i101.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod250 = trunc i32 %i.iw to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100.epil.init
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !157
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %indvars.iv.i.i.i100.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jg, ptr noundef nonnull align 4 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !260
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader247, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !157 ; 2 uses
  %.not.i5.i.i97 = icmp eq ptr %i.jk, null
  br i1 %.not.i5.i.i97, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !156, !range !262, !noundef !263
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.r, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jk)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.r, %bb.q, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i8 1, ptr %i.jo, align 8, !tbaa !156
  store ptr %.0.i.i.i96, ptr %i.jj, align 8, !tbaa !157
  store i32 %i.be, ptr %i.iq, align 8, !tbaa !159
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %._crit_edge164
  store i32 %i.be, ptr %i.in, align 4, !tbaa !158
  br i1 %i.bf, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %bb.s
  %indvars.iv184 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next185, %bb.s ] ; 3 uses
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !411
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv184
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !316 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !253
  %i.jw = load <2 x float>, ptr %i.dq, align 8, !tbaa !253
  %i.jx = fsub <2 x float> %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !253
  %i.ka = load float, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !253
  %i.kb = fsub float %i.jz, %i.ka
  %.sroa.3.12.vec.insert.i105 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kb, i64 0
  %i.kc = load ptr, ptr %i.jq, align 8, !tbaa !157
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv184 ; 2 uses
  store <2 x float> %i.jx, ptr %i.kd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i105, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !259
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ke = load i32, ptr %i.in, align 4, !tbaa !158
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp slt i64 %indvars.iv.next185, %i.kf
  br i1 %i.kg, label %bb.s, label %._crit_edge171, !llvm.loop !957

._crit_edge171:                                   ; preds = %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kh = load i32, ptr %i.a, align 4, !tbaa !235
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next188, %i.ki
  br i1 %i.kj, label %bb.b, label %._crit_edge175, !llvm.loop !958

._crit_edge175:                                   ; preds = %._crit_edge171, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CProfileSample, align 1      ; 6 uses
  %2 = alloca %class.btMatrix3x3, align 8         ; 14 uses
  %3 = alloca %class.btMatrix3x3, align 4         ; 7 uses
  %4 = alloca %class.btMatrix3x3, align 4         ; 4 uses
  %5 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1748 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN10btSoftBody10updatePoseEv:bb.a
  %i.de = load <2 x float>, ptr %2, align 8, !tbaa !253, !noalias !1043 ; 2 uses
  %i.df = load <2 x float>, ptr %i.bx, align 8, !tbaa !253, !noalias !1043 ; 2 uses
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dh = load <2 x float>, ptr %i.bz, align 8, !tbaa !253, !noalias !1043 ; 2 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> %i.de, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dj = shufflevector <2 x float> %i.df, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.dk = shufflevector <3 x float> %i.di, <3 x float> %i.dj, <3 x i32> <i32 0, i32 1, i32 4>
  %i.dl = shufflevector <1 x float> %i.cw, <1 x float> poison, <3 x i32> zeroinitializer
  %i.dm = fmul <3 x float> %i.dk, %i.dl
  %i.dn = shufflevector <2 x float> %i.dh, <2 x float> %i.de, <3 x i32> <i32 0, i32 2, i32 poison> ; 2 uses
  %i.do = shufflevector <3 x float> %i.dn, <3 x float> %i.dj, <3 x i32> <i32 0, i32 1, i32 3>
  %i.dp = shufflevector <1 x float> %i.cu, <1 x float> poison, <3 x i32> zeroinitializer
  %i.dq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.do, <3 x float> %i.dp, <3 x float> %i.dm)
  %i.dr = shufflevector <1 x float> %i.cy, <1 x float> poison, <3 x i32> zeroinitializer
  %i.ds = load <2 x float>, ptr %i.ba, align 8, !tbaa !253, !noalias !1042 ; 3 uses
  %i.dt = load <2 x float>, ptr %1, align 8, !tbaa !253, !noalias !1042 ; 3 uses
  %i.du = load <2 x float>, ptr %i.az, align 8, !tbaa !253, !noalias !1042 ; 3 uses
  %i.dv = load <2 x float>, ptr %i.cc, align 4, !tbaa !253, !noalias !1043 ; 3 uses
  %i.dw = load float, ptr %i.cf, align 8, !tbaa !253, !noalias !1043
  %i.dx = load <2 x float>, ptr %i.cd, align 4, !tbaa !253, !noalias !1043 ; 3 uses
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dz = load float, ptr %i.cg, align 8, !tbaa !253, !noalias !1043
  %i.ea = load <2 x float>, ptr %i.ce, align 4, !tbaa !253, !noalias !1043 ; 3 uses
  %i.eb = load float, ptr %i.ch, align 8, !tbaa !253, !noalias !1043
  %i.ec = shufflevector <2 x float> %i.ea, <2 x float> %i.dv, <3 x i32> <i32 0, i32 2, i32 poison> ; 2 uses
  %i.ed = shufflevector <2 x float> %i.dx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ee = shufflevector <3 x float> %i.ec, <3 x float> %i.ed, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ef = shufflevector <1 x float> %i.cq, <1 x float> poison, <3 x i32> zeroinitializer
  %i.eg = fmul <3 x float> %i.ee, %i.ef
  %i.eh = shufflevector <3 x float> %i.dn, <3 x float> %i.dg, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.ei = shufflevector <1 x float> %i.co, <1 x float> poison, <3 x i32> zeroinitializer
  %i.ej = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eh, <3 x float> %i.ei, <3 x float> %i.eg)
  %i.ek = shufflevector <2 x float> %i.ea, <2 x float> %i.dv, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.el = shufflevector <3 x float> %i.ek, <3 x float> %i.ed, <3 x i32> <i32 0, i32 1, i32 4>
  %i.em = shufflevector <1 x float> %i.cs, <1 x float> poison, <3 x i32> zeroinitializer
  %i.en = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.el, <3 x float> %i.em, <3 x float> %i.ej) ; 6 uses
  %i.eo = shufflevector <2 x float> %i.dv, <2 x float> %i.dx, <3 x i32> <i32 poison, i32 1, i32 3>
  %i.ep = shufflevector <2 x float> %i.ea, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.eq = shufflevector <3 x float> %i.eo, <3 x float> %i.ep, <3 x i32> <i32 4, i32 1, i32 2>
  %i.er = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eq, <3 x float> %i.dr, <3 x float> %i.dq) ; 6 uses
  %i.es = shufflevector <3 x float> %i.ec, <3 x float> %i.dy, <3 x i32> <i32 0, i32 1, i32 3>
  %i.et = shufflevector <1 x float> %i.ck, <1 x float> poison, <3 x i32> zeroinitializer
  %i.eu = fmul <3 x float> %i.es, %i.et
  %i.ev = shufflevector <1 x float> %i.ci, <1 x float> poison, <3 x i32> zeroinitializer
  %i.ew = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eh, <3 x float> %i.ev, <3 x float> %i.eu)
  %i.ex = insertelement <3 x float> poison, float %i.eb, i64 0
  %i.ey = insertelement <3 x float> %i.ex, float %i.dw, i64 1
  %i.ez = insertelement <3 x float> %i.ey, float %i.dz, i64 2
  %i.fa = shufflevector <1 x float> %i.cm, <1 x float> poison, <3 x i32> zeroinitializer
  %i.fb = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ez, <3 x float> %i.fa, <3 x float> %i.ew) ; 6 uses
  %i.fc = shufflevector <3 x float> %i.fb, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fd = fmul <2 x float> %i.fc, %i.ds
  %i.fe = shufflevector <3 x float> %i.fb, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.fe, <2 x float> %i.fd)
  %i.fg = shufflevector <3 x float> %i.fb, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.fg, <2 x float> %i.ff) ; 4 uses
  %i.fi = extractelement <3 x float> %i.fb, i64 2
  %i.fj = fmul float %i.fi, %i.dc
  %i.fk = extractelement <3 x float> %i.fb, i64 1
  %i.fl = call float @llvm.fmuladd.f32(float %i.da, float %i.fk, float %i.fj)
  %i.fm = extractelement <3 x float> %i.fb, i64 0
  %i.fn = call noundef float @llvm.fmuladd.f32(float %i.dd, float %i.fm, float %i.fl) ; 3 uses
  %i.fo = shufflevector <3 x float> %i.en, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fp = fmul <2 x float> %i.fo, %i.ds
  %i.fq = shufflevector <3 x float> %i.en, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.fq, <2 x float> %i.fp)
  %i.fs = shufflevector <3 x float> %i.en, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ft = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.fs, <2 x float> %i.fr) ; 4 uses
  %i.fu = shufflevector <3 x float> %i.er, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fv = fmul <2 x float> %i.ds, %i.fu
  %i.fw = shufflevector <3 x float> %i.er, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.fw, <2 x float> %i.fv)
  %i.fy = shufflevector <3 x float> %i.er, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.fy, <2 x float> %i.fx) ; 4 uses
  %i.ga = shufflevector <3 x float> %i.en, <3 x float> %i.er, <2 x i32> <i32 2, i32 5>
  %i.gb = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %i.ga, %i.gc
  %i.ge = insertelement <2 x float> poison, float %i.da, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = shufflevector <3 x float> %i.en, <3 x float> %i.er, <2 x i32> <i32 1, i32 4>
  %i.gh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gg, <2 x float> %i.gd)
  %i.gi = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = shufflevector <3 x float> %i.en, <3 x float> %i.er, <2 x i32> <i32 0, i32 3>
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gk, <2 x float> %i.gh) ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  store <2 x float> %i.fh, ptr %i.gm, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  store float %i.fn, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 796
  store float 0.000000e+00, ptr %.sroa.659.0..sroa_idx, align 4, !tbaa !259
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  store <2 x float> %i.ft, ptr %i.gn, align 8
  %.sroa.1062.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.go = extractelement <2 x float> %i.gl, i64 0 ; 3 uses
  store float %i.go, ptr %.sroa.1062.16..sroa_idx, align 8
  %.sroa.1163.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 812
  store float 0.000000e+00, ptr %.sroa.1163.16..sroa_idx, align 4, !tbaa !259
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  store <2 x float> %i.fz, ptr %i.gp, align 8
  %.sroa.1564.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.gq = extractelement <2 x float> %i.gl, i64 1 ; 3 uses
  store float %i.gq, ptr %.sroa.1564.32..sroa_idx, align 8
  %.sroa.1665.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 828
  store float 0.000000e+00, ptr %.sroa.1665.32..sroa_idx, align 4, !tbaa !259
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !462 ; 3 uses
  %i.gt = fcmp ogt float %i.gs, 1.000000e+00
  br i1 %i.gt, label %bb.i, label %bb.j

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.gu = phi float [ %.promoted90, %.lr.ph ], [ %i.ht, %bb.h ]
  %i.gv = phi <2 x float> [ %i.bm, %.lr.ph ], [ %i.ic, %bb.h ]
  %i.gw = phi <2 x float> [ %i.bn, %.lr.ph ], [ %i.hs, %bb.h ]
  %i.gx = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ik, %bb.h ]
  %i.gy = phi <2 x float> [ %i.bo, %.lr.ph ], [ %i.ig, %bb.h ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.ha = getelementptr inbounds nuw [256 x i8], ptr %i.bg, i64 %indvars.iv ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !253
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 20
  %i.he = load float, ptr %i.hd, align 4, !tbaa !253
  %i.hf = fsub float %i.he, %.sroa.082.4.vec.extract
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !253
  %i.hi = load float, ptr %i.gz, align 4, !tbaa !253 ; 2 uses
  %i.hj = fmul float %i.hf, %i.hi                 ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !253 ; 2 uses
  %i.hn = load <2 x float>, ptr %i.hk, align 4, !tbaa !253 ; 3 uses
  %i.ho = fmul float %i.hj, %i.hm
  %i.hp = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x float> %i.hq, %i.hn
  %i.hs = fadd <2 x float> %i.hr, %i.gw           ; 2 uses
  store <2 x float> %i.hs, ptr %i.ba, align 8, !tbaa !253
  %i.ht = fadd float %i.ho, %i.gu                 ; 2 uses
  store float %i.ht, ptr %i.bl, align 8, !tbaa !253
  %i.hu = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.hh, i64 1
  %i.hw = fsub <2 x float> %i.hv, %i.bp
  %i.hx = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.hw, %i.hy           ; 3 uses
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x float> %i.ia, %i.hn
  %i.ic = fadd <2 x float> %i.ib, %i.gv           ; 2 uses
  store <2 x float> %i.ic, ptr %1, align 8, !tbaa !253
  %i.id = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x float> %i.hz, %i.ie
  %i.ig = fadd <2 x float> %i.if, %i.gy           ; 3 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0
  store float %i.ih, ptr %i.bk, align 8, !tbaa !253
  %i.ii = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = fmul <2 x float> %i.ii, %i.hn
  %i.ik = fadd <2 x float> %i.ij, %i.gx           ; 2 uses
  store <2 x float> %i.ik, ptr %i.az, align 8, !tbaa !253
  %i.il = extractelement <2 x float> %i.ig, i64 1
  store float %i.il, ptr %.sroa.580.0..sroa_idx, align 8, !tbaa !253
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !1041

bb.i:                                             ; preds = %_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_.exit
  %i.im = extractelement <2 x float> %i.fz, i64 1 ; 2 uses
  %i.in = fneg float %i.im
  %i.io = fmul float %i.go, %i.in
  %i.ip = extractelement <2 x float> %i.ft, i64 1 ; 2 uses
  %i.iq = call float @llvm.fmuladd.f32(float %i.ip, float %i.gq, float %i.io)
  %i.ir = fneg float %i.gq
  %i.is = extractelement <2 x float> %i.ft, i64 0 ; 2 uses
  %i.it = fmul float %i.is, %i.ir
  %i.iu = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  %i.iv = call float @llvm.fmuladd.f32(float %i.go, float %i.iu, float %i.it)
  %i.iw = extractelement <2 x float> %i.fh, i64 1
  %i.ix = fmul float %i.iw, %i.iv
  %i.iy = extractelement <2 x float> %i.fh, i64 0
  %i.iz = call float @llvm.fmuladd.f32(float %i.iy, float %i.iq, float %i.ix)
  %i.ja = fneg float %i.iu
  %i.jb = fmul float %i.ip, %i.ja
  %i.jc = call float @llvm.fmuladd.f32(float %i.is, float %i.im, float %i.jb)
  %i.jd = call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.jc, float %i.iz)
  %i.je = fdiv float 1.000000e+00, %i.jd          ; 3 uses
  %i.jf = fcmp olt float %i.je, 1.000000e+00
  %i.jg = fcmp ogt float %i.je, %i.gs
  %..i = select i1 %i.jg, float %i.gs, float %i.je
  %i.jh = select i1 %i.jf, float 1.000000e+00, float %..i ; 2 uses
  %i.ji = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jk = fmul <2 x float> %i.fh, %i.jj
  %i.jl = fmul float %i.fn, %i.jh
  %.sroa.3.12.vec.insert.i.i40 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jl, i64 0
  %i.jm = fmul <2 x float> %i.ft, %i.jj
  %i.jn = fmul <2 x float> %i.fz, %i.jj
  %i.jo = fmul <2 x float> %i.gl, %i.jj           ; 2 uses
  %i.jp = insertelement <2 x float> %i.jo, float 0.000000e+00, i64 1
  %4 = shufflevector <2 x float> %i.jo, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.jk, ptr %i.gm, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i40, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !259
  store <2 x float> %i.jm, ptr %i.gn, align 8
  store <2 x float> %i.jp, ptr %.sroa.1062.16..sroa_idx, align 8, !tbaa !259
  store <2 x float> %i.jn, ptr %i.gp, align 8
  store <2 x float> %4, ptr %.sroa.1564.32..sroa_idx, align 8, !tbaa !259
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE6resizeEiRKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(808) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !207  ; 4 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv34 = phi i64 [ %i.e, %.preheader ], [ %indvars.iv.next35, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !206
  %i.g = getelementptr inbounds [808 x i8], ptr %i.f, i64 %indvars.iv34 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.h) #39
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.i) #39
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.j) #39
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, 1 ; 2 uses
  %lftr.wideiv37 = trunc i64 %indvars.iv.next35 to i32
  %exitcond38.not = icmp eq i32 %i.b, %lftr.wideiv37
  br i1 %exitcond38.not, label %.loopexit, label %bb.b, !llvm.loop !1044

bb.c:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %1, %i.b
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  tail call void @_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 776
  %i.u = sext i32 %i.b to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN10btSoftBody8RContactC2ERKS0_.exit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZN10btSoftBody8RContactC2ERKS0_.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !206
  %i.w = getelementptr inbounds [808 x i8], ptr %i.v, i64 %indvars.iv ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %i.w, ptr noundef nonnull align 8 dereferenceable(808) %2, i64 72, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 16, i1 false), !tbaa.struct !260
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !260
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !260
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, ptr noundef nonnull align 8 dereferenceable(28) %i.p, i64 28, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 152 ; 2 uses
  tail call void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ab, ptr noundef nonnull align 8 dereferenceable(204) %i.q)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 360 ; 2 uses
  invoke void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ac, ptr noundef nonnull align 8 dereferenceable(204) %i.r)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 568
  invoke void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ad, ptr noundef nonnull align 8 dereferenceable(204) %i.s)
          to label %_ZN10btSoftBody8RContactC2ERKS0_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ac) #39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ae, %bb.f ]
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ab) #39
  resume { ptr, i32 } %.pn.i

_ZN10btSoftBody8RContactC2ERKS0_.exit:            ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 776
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !1045

.loopexit:                                        ; preds = %_ZN10btSoftBody8RContactC2ERKS0_.exit, %bb.b, %bb.c
  store i32 %1, ptr %i.a, align 4, !tbaa !207
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody8RContactD2Ev(ptr noundef nonnull align 8 dead_on_return(808) dereferenceable(808) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.a) #39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.b) #39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.c) #39
  ret void
}

declare void @_ZN6btDbvt19optimizeIncrementalEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody16solveConstraintsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 8           ; 6 uses
  %2 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  tail call void @_ZN10btSoftBody13applyClustersEb(ptr noundef nonnull align 8 dereferenceable(2064) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.b = load i32, ptr %i.a, align 4, !tbaa !179  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !316  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !316  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !253
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !253
  %i.o = fsub <2 x float> %i.m, %i.n              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !253
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = load float, ptr %i.r, align 4, !tbaa !253
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x float> %i.o, ptr %i.u, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.445.0..sroa_idx, align 8, !tbaa !259
  %foldExtExtBinop = fmul <2 x float> %i.o, %i.o
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.w = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.v)
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.aa = load float, ptr %i.z, align 8, !tbaa !406
  %i.ab = fmul float %i.aa, %i.y
  %i.ac = fdiv float 1.000000e+00, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store float %i.ac, ptr %i.ad, align 8, !tbaa !463
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1046

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !199 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph140, label %._crit_edge141

.lr.ph140:                                        ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count177 = zext nneg i32 %i.af to i64
  br label %bb.c

end_hunk_4
begin_hunk_5_@_ZN10btSoftBody17updateDeformationEv:bb.a
  %i.af = load float, ptr %i.ae, align 4, !tbaa !253
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !253
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !253
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !316 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load float, ptr %i.am, align 4, !tbaa !253
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !253
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !253
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 5 uses
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 188 ; 3 uses
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %.scalar = fsub float %i.s, %i.t
  %i.bc = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar188 = fsub float %i.af, %i.t
  %i.be = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar188, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar189 = fsub float %i.an, %i.t
  %i.bg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar189, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bi = load <2 x float>, ptr %i.as, align 8, !tbaa !253, !noalias !1195 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.at, align 8, !tbaa !253, !noalias !1195 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.au, align 8, !tbaa !253, !noalias !1195 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float 0.000000e+00, i64 3
  %i.bn = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = insertelement <4 x float> %i.bn, float 0.000000e+00, i64 3
  %i.bp = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float 0.000000e+00, i64 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 5 uses
  %.sroa.9161.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 204 ; 3 uses
  %.sroa.10162.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 208 ; 2 uses
  %.scalar190 = fsub float %i.v, %i.x
  %i.bs = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar190, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar191 = fsub float %i.ah, %i.x
  %i.bu = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar191, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar192 = fsub float %i.ap, %i.x
  %i.bw = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar192, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.by = load <2 x float>, ptr %i.aw, align 4, !tbaa !253, !noalias !1195 ; 2 uses
  %i.bz = load float, ptr %i.az, align 8, !tbaa !253, !noalias !1195
  %i.ca = load <2 x float>, ptr %i.av, align 4, !tbaa !253, !noalias !1195 ; 2 uses
  %i.cb = load float, ptr %i.ay, align 8, !tbaa !253, !noalias !1195
  %i.cc = load <2 x float>, ptr %i.ax, align 4, !tbaa !253, !noalias !1195 ; 2 uses
  %i.cd = load float, ptr %i.ba, align 8, !tbaa !253, !noalias !1195
  %i.ce = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.bm, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cg = fmul <4 x float> %i.cf, %i.bf
  %i.ch = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.bo, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.bd, <4 x float> %i.cg)
  %i.ck = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> %i.bq, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.bh, <4 x float> %i.cj)
  %i.cn = shufflevector <2 x float> %i.bj, <2 x float> %i.by, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float 1.000000e+00, i64 3 ; 2 uses
  %i.cp = fmul <4 x float> %i.bv, %i.co
  %i.cq = shufflevector <2 x float> %i.bi, <2 x float> %i.ca, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cr = insertelement <4 x float> %i.cq, float 0.000000e+00, i64 3 ; 2 uses
  %i.cs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.bt, <4 x float> %i.cp)
  %i.ct = shufflevector <2 x float> %i.bk, <2 x float> %i.cc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float 0.000000e+00, i64 3 ; 2 uses
  %i.cv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.bx, <4 x float> %i.cs)
  store <4 x float> %i.cm, ptr %i.bb, align 8
  store <4 x float> %i.cv, ptr %i.br, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 216 ; 5 uses
  %.sroa.14165.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 220 ; 3 uses
  %.sroa.15166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 224 ; 3 uses
  %.scalar193 = fsub float %i.z, %i.ab
  %i.cx = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar193, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar194 = fsub float %i.aj, %i.ab
  %i.cz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar194, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar195 = fsub float %i.ar, %i.ab
  %i.db = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar195, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = insertelement <4 x float> %i.co, float %i.bz, i64 2
  %i.de = fmul <4 x float> %i.da, %i.dd
  %i.df = insertelement <4 x float> %i.cr, float %i.cb, i64 2
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.cy, <4 x float> %i.de)
  %i.dh = insertelement <4 x float> %i.cu, float %i.cd, i64 2
  %i.di = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dc, <4 x float> %i.dg)
  store <4 x float> %i.di, ptr %i.cw, align 8
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !194
  %i.dk = getelementptr inbounds nuw [152 x i8], ptr %i.dj, i64 %indvars.iv ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 16, i1 false), !tbaa.struct !260
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !260
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !260
  %i.dn = load float, ptr %i.bb, align 8, !tbaa !253
  %i.do = load float, ptr %.sroa.9161.16..sroa_idx, align 4, !tbaa !253 ; 2 uses
  %i.dp = load float, ptr %.sroa.15166.32..sroa_idx, align 8, !tbaa !253 ; 2 uses
  %i.dq = load float, ptr %.sroa.10162.16..sroa_idx, align 8, !tbaa !253 ; 2 uses
  %i.dr = load float, ptr %.sroa.14165.32..sroa_idx, align 4, !tbaa !253 ; 2 uses
  %i.ds = fneg float %i.dr
  %i.dt = fmul float %i.dq, %i.ds
  %i.du = call float @llvm.fmuladd.f32(float %i.do, float %i.dp, float %i.dt)
  %i.dv = load float, ptr %.sroa.4157.0..sroa_idx, align 4, !tbaa !253
  %i.dw = load float, ptr %i.cw, align 8, !tbaa !253 ; 2 uses
  %i.dx = load float, ptr %i.br, align 8, !tbaa !253 ; 2 uses
  %i.dy = fneg float %i.dp
  %i.dz = fmul float %i.dx, %i.dy
  %i.ea = call float @llvm.fmuladd.f32(float %i.dq, float %i.dw, float %i.dz)
  %i.eb = fmul float %i.dv, %i.ea
  %i.ec = call float @llvm.fmuladd.f32(float %i.dn, float %i.du, float %i.eb)
  %i.ed = load float, ptr %.sroa.5158.0..sroa_idx, align 8, !tbaa !253
  %i.ee = fneg float %i.dw
  %i.ef = fmul float %i.do, %i.ee
  %i.eg = call float @llvm.fmuladd.f32(float %i.dx, float %i.dr, float %i.ef)
  %i.eh = call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.eg, float %i.ec)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 52
  store float %i.eh, ptr %i.ei, align 4, !tbaa !1197
  %i.ej = load float, ptr %i.bb, align 8, !tbaa !253, !noalias !1198 ; 2 uses
  %i.ek = load float, ptr %i.br, align 8, !tbaa !253, !noalias !1198 ; 2 uses
  %i.el = load float, ptr %i.cw, align 8, !tbaa !253, !noalias !1198 ; 2 uses
  %i.em = load float, ptr %.sroa.4157.0..sroa_idx, align 4, !tbaa !253, !noalias !1198 ; 2 uses
  %i.en = load float, ptr %.sroa.9161.16..sroa_idx, align 4, !tbaa !253, !noalias !1198 ; 2 uses
  %i.eo = load float, ptr %.sroa.14165.32..sroa_idx, align 4, !tbaa !253, !noalias !1198 ; 2 uses
  %i.ep = load float, ptr %.sroa.5158.0..sroa_idx, align 8, !tbaa !253, !noalias !1198 ; 2 uses
  %i.eq = load float, ptr %.sroa.10162.16..sroa_idx, align 8, !tbaa !253, !noalias !1198 ; 2 uses
  %i.er = load float, ptr %.sroa.15166.32..sroa_idx, align 8, !tbaa !253, !noalias !1198 ; 2 uses
  %i.es = fmul float %i.ek, %i.ek
  %i.et = call float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.es)
  %i.eu = call noundef float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.et)
  %i.ev = fmul float %i.en, %i.en
  %i.ew = call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.ev)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.ew)
  %i.ey = fmul float %i.eq, %i.eq
  %i.ez = call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.ey)
  %i.fa = call noundef float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.ez)
  %i.fb = fadd float %i.eu, %i.ex
  %i.fc = fadd float %i.fb, %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store float %i.fc, ptr %i.fd, align 4, !tbaa !1199
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.ff = load <2 x float>, ptr %i.cw, align 8, !tbaa !253, !noalias !1200 ; 3 uses
  %i.fg = load <2 x float>, ptr %i.br, align 8, !tbaa !253, !noalias !1200 ; 3 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  %i.fi = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float 0.000000e+00, i64 3
  %i.fk = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fl = insertelement <4 x float> %i.fk, float -0.000000e+00, i64 3
  %i.fm = fneg float %i.fh
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.fo = load <2 x float>, ptr %.sroa.14165.32..sroa_idx, align 4, !tbaa !253, !noalias !1200 ; 3 uses
  %i.fp = load float, ptr %.sroa.15166.32..sroa_idx, align 8, !tbaa !253, !noalias !1200
  %i.fq = fneg float %i.fp                        ; 2 uses
  %i.fr = load <2 x float>, ptr %i.bb, align 8, !tbaa !253, !noalias !1200 ; 3 uses
  %i.fs = shufflevector <2 x float> %i.ff, <2 x float> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.ft = fneg <2 x float> %i.fs
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fv = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.fu, <4 x i32> <i32 5, i32 poison, i32 4, i32 3>
  %i.fw = insertelement <4 x float> %i.fv, float %i.fq, i64 1
  %i.fx = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> %i.fl, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fz = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.ga = insertelement <4 x float> %i.fz, float 0.000000e+00, i64 3
  %i.gb = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fq, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gd = shufflevector <2 x float> %i.ff, <2 x float> %i.fo, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %i.ge = insertelement <4 x float> %i.gd, float -0.000000e+00, i64 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  %i.gg = load <2 x float>, ptr %.sroa.9161.16..sroa_idx, align 4, !tbaa !253, !noalias !1200 ; 3 uses
  %i.gh = fneg <2 x float> %i.gg
  %i.gi = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> %i.fj, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.gl = load <2 x float>, ptr %.sroa.4157.0..sroa_idx, align 4, !tbaa !253, !noalias !1200 ; 2 uses
  %i.gm = fmul <4 x float> %i.gj, %i.fw
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.fy, <4 x float> %i.gm)
  %i.go = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gp = shufflevector <4 x float> %i.ga, <4 x float> %i.go, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.gq = fmul <4 x float> %i.gp, %i.gc
  %i.gr = shufflevector <4 x float> %i.gp, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.gs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %i.ge, <4 x float> %i.gq)
  %i.gt = shufflevector <2 x float> %i.fr, <2 x float> %i.gl, <4 x i32> <i32 3, i32 0, i32 2, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float 0.000000e+00, i64 3
  %i.gv = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fm, i64 2
  %i.gw = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gy = fmul <4 x float> %i.gu, %i.gx
  %i.gz = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %3 = shufflevector <4 x float> %i.gz, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 0, i32 7>
  %i.ha = shufflevector <4 x float> %i.go, <4 x float> %3, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hb = shufflevector <2 x float> %i.fg, <2 x float> %i.fr, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.hc = insertelement <4 x float> %i.hb, float -0.000000e+00, i64 3
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> %i.gz, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.he = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.hd, <4 x float> %i.gy)
  store <4 x float> %i.gn, ptr %i.fe, align 4
  store <4 x float> %i.gs, ptr %i.fn, align 4
  store <4 x float> %i.he, ptr %i.gf, align 4
  %i.hf = load ptr, ptr %i.m, align 8, !tbaa !316 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %.sroa.0108.0.copyload = load float, ptr %i.hg, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 36
  %.sroa.4109.0.copyload = load float, ptr %.sroa.4109.0..sroa_idx, align 4
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %.sroa.5110.0.copyload = load float, ptr %.sroa.5110.0..sroa_idx, align 8
  %i.hh = load ptr, ptr %i.n, align 8, !tbaa !316 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %.sroa.0104.0.copyload = load float, ptr %i.hi, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 36
  %.sroa.4105.0.copyload = load float, ptr %.sroa.4105.0..sroa_idx, align 4
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %.sroa.5106.0.copyload = load float, ptr %.sroa.5106.0..sroa_idx, align 8
  %i.hj = load ptr, ptr %i.ac, align 8, !tbaa !316 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %.sroa.0100.0.copyload = load float, ptr %i.hk, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 36
  %.sroa.4101.0.copyload = load float, ptr %.sroa.4101.0..sroa_idx, align 4
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %.sroa.5102.0.copyload = load float, ptr %.sroa.5102.0..sroa_idx, align 8
  %i.hl = load ptr, ptr %i.ak, align 8, !tbaa !316 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %.sroa.096.0.copyload = load float, ptr %i.hm, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 36
  %.sroa.497.0.copyload = load float, ptr %.sroa.497.0..sroa_idx, align 4
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %.sroa.598.0.copyload = load float, ptr %.sroa.598.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.hn = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  %i.ho = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.hp = getelementptr inbounds nuw i8, ptr %i.l, i64 244
  %i.hq = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 260
  %i.hs = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %i.ht = getelementptr inbounds nuw i8, ptr %i.l, i64 276
  %i.hu = load <12 x float>, ptr %i.hn, align 4, !tbaa !253 ; 4 uses
  %i.hv = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0104.0.copyload, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hx = shufflevector <12 x float> %i.hu, <12 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.hy = insertelement <4 x float> %i.hx, float 1.000000e+00, i64 3
  %i.hz = fmul <4 x float> %i.hw, %i.hy
  %i.ia = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0108.0.copyload, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ic = shufflevector <12 x float> %i.hu, <12 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.id = insertelement <4 x float> %i.ic, float -0.000000e+00, i64 3 ; 3 uses
  %i.ie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.id, <4 x float> %i.hz)
  %i.if = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0100.0.copyload, i64 0
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ih = shufflevector <12 x float> %i.hu, <12 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 poison>
  %i.ii = insertelement <4 x float> %i.ih, float -0.000000e+00, i64 3
  %i.ij = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.ii, <4 x float> %i.ie)
  %i.ik = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.096.0.copyload, i64 0
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.im = shufflevector <12 x float> %i.hu, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 poison>
  %i.in = insertelement <4 x float> %i.im, float -0.000000e+00, i64 3
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.in, <4 x float> %i.ij)
  %i.ip = load <2 x float>, ptr %i.hs, align 8, !tbaa !253 ; 2 uses
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ir = load <2 x float>, ptr %i.hq, align 8, !tbaa !253 ; 2 uses
  %i.is = load <2 x float>, ptr %i.ho, align 8, !tbaa !253 ; 2 uses
  %i.it = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4105.0.copyload, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.iv = shufflevector <2 x float> %i.is, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iw = insertelement <4 x float> %i.iv, float 1.000000e+00, i64 3
  %i.ix = shufflevector <2 x float> %i.ir, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iy = shufflevector <4 x float> %i.iw, <4 x float> %i.ix, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.iz = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ja = shufflevector <4 x float> %i.iy, <4 x float> %i.iz, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jb = fmul <4 x float> %i.iu, %i.ja
  %i.jc = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4109.0.copyload, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.je = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jd, <4 x float> %i.id, <4 x float> %i.jb)
  %i.jf = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4101.0.copyload, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %4 = shufflevector <4 x float> %i.iv, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.jh = shufflevector <4 x float> %4, <4 x float> %i.ix, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> %i.iz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %i.ji, <4 x float> %i.je)
  %i.jk = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.497.0.copyload, i64 0
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jm = load <2 x float>, ptr %i.ht, align 4, !tbaa !253
  %i.jn = load <2 x float>, ptr %i.hr, align 4, !tbaa !253
  %i.jo = load <2 x float>, ptr %i.hp, align 4, !tbaa !253
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %5 = shufflevector <4 x float> %i.jp, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.jq = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jr = shufflevector <4 x float> %5, <4 x float> %i.jq, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.js = shufflevector <2 x float> %i.jm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jt = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.ju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jl, <4 x float> %i.jt, <4 x float> %i.jj)
  %i.jv = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5106.0.copyload, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jx = shufflevector <2 x float> %i.is, <2 x float> %i.ir, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jy = insertelement <4 x float> %i.jx, float 1.000000e+00, i64 3
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ka = fmul <4 x float> %i.jw, %i.jz
  %i.kb = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5110.0.copyload, i64 0
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kc, <4 x float> %i.id, <4 x float> %i.ka)
  %i.ke = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5102.0.copyload, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kg = insertelement <4 x float> %i.jp, float -0.000000e+00, i64 3
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> %i.jq, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.kj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kf, <4 x float> %i.ki, <4 x float> %i.kd)
  %i.kk = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.598.0.copyload, i64 0
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.km = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kl, <4 x float> %i.jt, <4 x float> %i.kj)
  store <4 x float> %i.io, ptr %2, align 16, !tbaa !253
  store <4 x float> %i.ju, ptr %i.f, align 16, !tbaa !253
  store <4 x float> %i.km, ptr %i.g, align 16, !tbaa !253
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !253
  call void @_ZN11btMatrix3x315extractRotationER12btQuaternionfi(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef f0x3C23D70A, i32 noundef 100)
  %i.kn = load float, ptr %1, align 16, !tbaa !253 ; 6 uses
  %i.ko = load float, ptr %i.h, align 4, !tbaa !253 ; 5 uses
  %i.kp = fmul float %i.ko, %i.ko
  %i.kq = call float @llvm.fmuladd.f32(float %i.kn, float %i.kn, float %i.kp)
  %i.kr = load float, ptr %i.i, align 8, !tbaa !253 ; 4 uses
  %i.ks = call float @llvm.fmuladd.f32(float %i.kr, float %i.kr, float %i.kq)
  %i.kt = load float, ptr %i.j, align 4, !tbaa !253 ; 5 uses
  %i.ku = call noundef float @llvm.fmuladd.f32(float %i.kt, float %i.kt, float %i.ks)
  %i.kv = fdiv float 2.000000e+00, %i.ku          ; 3 uses
  %i.kw = fmul float %i.kn, %i.kv                 ; 2 uses
  %i.kx = fmul float %i.ko, %i.kv                 ; 3 uses
  %i.ky = fmul float %i.kr, %i.kv                 ; 4 uses
  %i.kz = fmul float %i.kt, %i.kw                 ; 2 uses
  %i.la = fmul float %i.kt, %i.kx                 ; 2 uses
  %i.lb = fmul float %i.kt, %i.ky                 ; 2 uses
  %i.lc = fmul float %i.kn, %i.kw                 ; 2 uses
  %i.ld = fmul float %i.kn, %i.kx                 ; 2 uses
  %i.le = fmul float %i.kn, %i.ky                 ; 2 uses
  %i.lf = fmul float %i.ko, %i.kx                 ; 2 uses
  %i.lg = fmul float %i.ko, %i.ky                 ; 2 uses
  %i.lh = fmul float %i.kr, %i.ky                 ; 2 uses
  %i.li = fadd float %i.lf, %i.lh
  %i.lj = fsub float 1.000000e+00, %i.li
  %i.lk = fsub float %i.ld, %i.lb
  %i.ll = fadd float %i.le, %i.la
  %i.lm = fadd float %i.ld, %i.lb
  %i.ln = fadd float %i.lc, %i.lh
  %i.lo = fsub float 1.000000e+00, %i.ln
  %i.lp = fsub float %i.lg, %i.kz
  %i.lq = fsub float %i.le, %i.la
  %i.lr = fadd float %i.lg, %i.kz
  %i.ls = fadd float %i.lc, %i.lf
  %i.lt = fsub float 1.000000e+00, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  store float %i.lj, ptr %i.lu, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 108
  store float %i.lk, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  store float %i.ll, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 116
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !259
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  store float %i.lm, ptr %i.lv, align 4
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 124
  store float %i.lo, ptr %.sroa.9.16..sroa_idx, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  store float %i.lp, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 132
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !259
  %i.lw = getelementptr inbounds nuw i8, ptr %i.dk, i64 136
  store float %i.lq, ptr %i.lw, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 140
  store float %i.lr, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  store float %i.lt, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 148
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 4, !tbaa !259
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lx = load i32, ptr %i.a, align 4, !tbaa !191
  %i.ly = sext i32 %i.lx to i64
  %i.lz = icmp slt i64 %indvars.iv.next, %i.ly
  br i1 %i.lz, label %bb.b, label %._crit_edge, !llvm.loop !1194
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11btMatrix3x315extractRotationER12btQuaternionfi(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #30 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load float, ptr %1, align 4, !tbaa !253
  %i.j = load <2 x float>, ptr %1, align 4
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.l = load <4 x float>, ptr %1, align 4
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.pre170 = load float, ptr %i.b, align 4, !tbaa !253
  %i.n = insertelement <2 x float> %i.m, float %.pre, i64 1
  %i.o = insertelement <2 x float> %i.k, float %.pre170, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0166 = phi i32 [ 0, %.lr.ph ], [ %i.gh, %bb.c ]
  %i.p = phi <2 x float> [ %i.n, %.lr.ph ], [ %i.gi, %bb.c ] ; 7 uses
  %i.q = phi <2 x float> [ %i.o, %.lr.ph ], [ %i.gj, %bb.c ] ; 9 uses
  %i.r = extractelement <2 x float> %i.q, i64 1   ; 4 uses
  %i.s = extractelement <2 x float> %i.q, i64 0   ; 2 uses
  %i.t = extractelement <2 x float> %i.p, i64 1   ; 5 uses
  %i.u = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.w)
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.x)
  %i.z = fdiv float 2.000000e+00, %i.y            ; 2 uses
  %i.aa = load float, ptr %i.i, align 4, !tbaa !253 ; 3 uses
  %i.ab = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.p, %i.ac            ; 3 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.af = fmul <2 x float> %i.q, %i.ad            ; 3 uses
  %i.ag = fmul <2 x float> %i.p, %i.ad            ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  %shift = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop175 = fsub <2 x float> %i.af, %shift ; 3 uses
  %i.ai = extractelement <2 x float> %foldExtExtBinop175, i64 0
  %i.aj = extractelement <2 x float> %i.ag, i64 1
  %i.ak = load <2 x float>, ptr %i.c, align 4, !tbaa !253 ; 4 uses
  %i.al = load float, ptr %i.f, align 4, !tbaa !253 ; 2 uses
  %i.am = extractelement <2 x float> %i.ak, i64 0
  %i.an = fneg float %i.am
  %i.ao = load <2 x float>, ptr %i.d, align 4, !tbaa !253 ; 3 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0 ; 2 uses
  %i.aq = fneg float %i.ap
  %i.ar = shufflevector <2 x float> %i.ak, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.as = shufflevector <2 x float> %i.ak, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.at = load float, ptr %i.h, align 4, !tbaa !253 ; 3 uses
  %i.au = fmul float %i.s, %i.z                   ; 3 uses
  %i.av = fmul float %i.r, %i.au                  ; 2 uses
  %i.aw = fmul float %i.t, %i.au                  ; 2 uses
  %i.ax = fmul float %i.s, %i.au                  ; 2 uses
  %i.ay = fmul float %i.r, %i.ae                  ; 2 uses
  %i.az = fmul float %i.t, %i.ae                  ; 2 uses
  %i.ba = fadd float %i.ax, %i.ah
  %i.bb = fsub float 1.000000e+00, %i.ba          ; 3 uses
  %i.bc = fsub float %i.aw, %i.ay                 ; 3 uses
  %i.bd = fadd float %i.az, %i.av                 ; 3 uses
  %i.be = fadd float %i.aw, %i.ay                 ; 3 uses
  %i.bf = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ag)
  %i.bg = fsub float 1.000000e+00, %i.bf          ; 3 uses
  %i.bh = fsub float %i.az, %i.av                 ; 3 uses
  %i.bi = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.af) ; 3 uses
  %i.bj = fadd float %i.aj, %i.ax
  %i.bk = fsub float 1.000000e+00, %i.bj          ; 3 uses
  %i.bl = load float, ptr %0, align 4, !tbaa !253 ; 3 uses
  %i.bm = fmul float %i.bh, %i.an
  %i.bn = load <2 x float>, ptr %i.g, align 4, !tbaa !253 ; 4 uses
  %i.bo = fmul float %i.bb, %i.aq
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bl, float %i.bo)
  %i.bq = fneg float %i.bl
  %i.br = fmul float %i.be, %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.be, i64 1
  %i.bu = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bm, i64 1
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ar, <2 x float> %i.bv)
  %i.bx = load float, ptr %i.e, align 4, !tbaa !253 ; 2 uses
  %i.by = fneg <2 x float> %i.bn
  %i.bz = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.al, i64 1
  %i.cb = fneg <2 x float> %i.ca
  %i.cc = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.bi, i64 1
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bg, i64 1
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.as, <2 x float> %i.ce)
  %i.ci = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.bd, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.be, i64 2
  %i.cl = insertelement <4 x float> %i.ck, float %i.bg, i64 3
  %i.cm = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float %i.al, i64 3
end_hunk_5
begin_hunk_6_@_ZN10btSoftBody6LJoint7PrepareEfi:bb.a

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.gy = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %_ZNK10btSoftBody4Body7invMassEv.exit
  %i.gz = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  %.not5.i38 = icmp eq ptr %i.gz, null
  br i1 %.not5.i38, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 372
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.an:                                            ; preds = %bb.al
  %i.hb = load ptr, ptr %i.i, align 8, !tbaa !383 ; 2 uses
  %.not6.i40 = icmp eq ptr %i.hb, null
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 216
  %spec.select.i41 = select i1 %.not6.i40, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.hc
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.am, %bb.an
  %.0.i39 = phi ptr [ %i.ha, %bb.am ], [ %spec.select.i41, %bb.an ]
  %i.hd = load ptr, ptr %i.e, align 8, !tbaa !494 ; 2 uses
  %.not.i43 = icmp eq ptr %i.hd, null
  br i1 %.not.i43, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 452
  %i.hf = load float, ptr %i.he, align 4, !tbaa !345
  br label %_ZNK10btSoftBody4Body7invMassEv.exit46

bb.ap:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.hg = load ptr, ptr %i.bl, align 8, !tbaa !383 ; 2 uses
  %.not4.i45 = icmp eq ptr %i.hg, null
  br i1 %.not4.i45, label %_ZNK10btSoftBody4Body7invMassEv.exit46, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 164
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !427
  br label %_ZNK10btSoftBody4Body7invMassEv.exit46

_ZNK10btSoftBody4Body7invMassEv.exit46:           ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.i44 = phi float [ %i.hf, %bb.ao ], [ %i.hi, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %i.hj = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %bb.ar, label %bb.at, !prof !359

bb.ar:                                            ; preds = %_ZNK10btSoftBody4Body7invMassEv.exit46
  %i.hl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  %.not.i51 = icmp eq i32 %i.hl, 0
  br i1 %.not.i51, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.hm = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZNK10btSoftBody4Body7invMassEv.exit46
  %i.hn = load ptr, ptr %i.e, align 8, !tbaa !494 ; 2 uses
  %.not5.i47 = icmp eq ptr %i.hn, null
  br i1 %.not5.i47, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 372
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52

bb.av:                                            ; preds = %bb.at
  %i.hp = load ptr, ptr %i.bl, align 8, !tbaa !383 ; 2 uses
  %.not6.i49 = icmp eq ptr %i.hp, null
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 216
  %spec.select.i50 = select i1 %.not6.i49, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.hq
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52:  ; preds = %bb.au, %bb.av
  %.0.i48 = phi ptr [ %i.ho, %bb.au ], [ %spec.select.i50, %bb.av ]
  call fastcc void @_ZL13ImpulseMatrixfRK11btMatrix3x3RK9btVector3fS1_S4_(ptr dead_on_unwind noalias writable align 4 %3, float noundef %.0.i37, ptr noundef nonnull align 4 dereferenceable(48) %.0.i39, ptr noundef nonnull align 4 dereferenceable(16) %i.bk, float noundef %.0.i44, ptr noundef nonnull align 4 dereferenceable(48) %.0.i48, ptr noundef nonnull align 4 dereferenceable(16) %i.cp)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.hr, ptr noundef nonnull align 4 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !260
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ht, ptr noundef nonnull align 4 dereferenceable(16) %i.hs, i64 16, i1 false), !tbaa.struct !260
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hv, ptr noundef nonnull align 4 dereferenceable(16) %i.hu, i64 16, i1 false), !tbaa.struct !260
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hx = load float, ptr %i.hw, align 8, !tbaa !387 ; 5 uses
  %i.hy = fcmp ogt float %i.hx, 0.000000e+00
  %.pre = load float, ptr %i.er, align 4, !tbaa !253 ; 3 uses
  br i1 %i.hy, label %bb.aw, label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52._crit_edge

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52._crit_edge: ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre74 = load float, ptr %.phi.trans.insert, align 8, !tbaa !253
  %.pre75 = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !253
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ib = load <2 x float>, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.id = load float, ptr %i.ic, align 4, !tbaa !253
  %i.ie = fmul float %i.hx, %.pre                 ; 2 uses
  %i.if = load float, ptr %i.hz, align 8, !tbaa !253 ; 2 uses
  %i.ig = fmul float %i.hx, %i.if                 ; 2 uses
  %i.ih = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !253 ; 2 uses
  %i.ii = fmul float %i.hx, %i.ih                 ; 2 uses
  %i.ij = load <2 x float>, ptr %i.hr, align 4, !tbaa !253 ; 2 uses
  %i.ik = load <2 x float>, ptr %i.ht, align 4, !tbaa !253 ; 2 uses
  %i.il = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.io = fmul <2 x float> %i.im, %i.in
  %i.ip = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ir, <2 x float> %i.io)
  %i.it = insertelement <2 x float> %i.ib, float %i.id, i64 1
  %i.iu = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iv, <2 x float> %i.is)
  %i.ix = load float, ptr %i.hv, align 4, !tbaa !253
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !253
  %i.ja = fmul float %i.ig, %i.iz
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ie, float %i.ja)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !253
  %i.je = tail call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.ii, float %i.jb)
  %.sroa.3.12.vec.insert.i60 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.je, i64 0
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.iw, ptr %i.jf, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> %.sroa.3.12.vec.insert.i60, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !259
  %i.jg = fsub float 1.000000e+00, %i.hx          ; 3 uses
  %i.jh = fmul float %i.jg, %.pre                 ; 2 uses
  store float %i.jh, ptr %i.er, align 4, !tbaa !253
  %i.ji = fmul float %i.jg, %i.if                 ; 2 uses
  store float %i.ji, ptr %i.hz, align 8, !tbaa !253
  %i.jj = fmul float %i.jg, %i.ih                 ; 2 uses
  store float %i.jj, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !253
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52._crit_edge, %bb.aw
  %i.jk = phi float [ %i.jj, %bb.aw ], [ %.pre75, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52._crit_edge ]
  %i.jl = phi float [ %i.ji, %bb.aw ], [ %.pre74, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52._crit_edge ]
  %i.jm = phi float [ %i.jh, %bb.aw ], [ %.pre, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit52._crit_edge ]
  %i.jn = sitofp i32 %2 to float
  %i.jo = fdiv float 1.000000e+00, %i.jn          ; 3 uses
  %i.jp = fmul float %i.jo, %i.jm
  store float %i.jp, ptr %i.er, align 4, !tbaa !253
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jr = fmul float %i.jo, %i.jl
  store float %i.jr, ptr %i.jq, align 8, !tbaa !253
  %i.js = fmul float %i.jo, %i.jk
  store float %i.js, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !253
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfRK11btMatrix3x3RK9btVector3fS1_S4_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, float noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !253, !noalias !1217 ; 5 uses
  %i.c = fneg float %i.b                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = load float, ptr %i.h, align 4, !tbaa !253, !noalias !1218 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !253, !noalias !1219 ; 5 uses
  %i.l = fneg float %i.k                          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = load float, ptr %i.r, align 4, !tbaa !253, !noalias !1220 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !253, !alias.scope !1221
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !253, !alias.scope !1221
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load <2 x float>, ptr %3, align 4, !tbaa !253, !noalias !1217 ; 5 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ab = load <2 x float>, ptr %2, align 4, !tbaa !253, !noalias !1218 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.d, align 4, !tbaa !253, !noalias !1218 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.e, align 4, !tbaa !253, !noalias !1218 ; 3 uses
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %7 = shufflevector <4 x float> %i.ae, <4 x float> <float 0.000000e+00, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 4, i32 1, i32 2, i32 7>
  %i.af = insertelement <4 x float> %i.ae, float 1.000000e+00, i64 3
  %i.ag = insertelement <4 x float> %i.af, float %i.c, i64 1 ; 3 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ai = fmul <4 x float> %7, %i.ah
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.am = insertelement <4 x float> poison, float %i.b, i64 0
  %i.an = insertelement <4 x float> %i.al, float %i.b, i64 0
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.an, <4 x float> %i.ai)
  %i.ap = shufflevector <2 x float> %i.ad, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aq = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ar = insertelement <4 x float> %i.aq, float -0.000000e+00, i64 3
  %i.as = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.as, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.ag, <4 x i32> <i32 1, i32 5, i32 5, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float 1.000000e+00, i64 3
  %i.aw = fmul <4 x float> %i.at, %i.av
  %8 = shufflevector <4 x float> %i.aj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.ax = shufflevector <4 x float> %i.am, <4 x float> %i.aj, <4 x i32> <i32 0, i32 5, i32 5, i32 poison>
  %i.ay = insertelement <4 x float> %i.ax, float -0.000000e+00, i64 3
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %i.ay, <4 x float> %i.aw) ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ad, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.bb = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.c, i64 1
  %i.bc = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.b, i64 0 ; 2 uses
  %i.bd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bf = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.c, i64 1
  %i.bg = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.b, i64 1
  %i.bh = shufflevector <4 x float> %i.ag, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 1, i32 7>
  %i.bi = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %1, i64 2
  %i.bj = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, float %1, i64 2
  %i.bk = load <2 x float>, ptr %6, align 4, !tbaa !253, !noalias !1219 ; 4 uses
  %i.bl = load float, ptr %i.m, align 4, !tbaa !253, !noalias !1219 ; 2 uses
  %i.bm = load <2 x float>, ptr %5, align 4, !tbaa !253, !noalias !1220 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.n, align 4, !tbaa !253, !noalias !1220 ; 3 uses
  %i.bo = load <2 x float>, ptr %i.o, align 4, !tbaa !253, !noalias !1220 ; 3 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %9 = shufflevector <4 x float> %i.bp, <4 x float> <float 0.000000e+00, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 4, i32 1, i32 2, i32 7>
  %i.bq = insertelement <4 x float> %i.bp, float 1.000000e+00, i64 3
  %i.br = insertelement <4 x float> %i.bq, float %i.l, i64 1 ; 3 uses
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bt = fmul <4 x float> %9, %i.bs
  %i.bu = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.bx = insertelement <4 x float> poison, float %i.k, i64 0
  %i.by = insertelement <4 x float> %i.bw, float %i.k, i64 0
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.by, <4 x float> %i.bt)
  %i.ca = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cb = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.cc = insertelement <4 x float> %i.cb, float -0.000000e+00, i64 3
  %i.cd = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ce = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.cd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.br, <4 x i32> <i32 1, i32 5, i32 5, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3
  %i.ch = fmul <4 x float> %i.ce, %i.cg
  %10 = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.ci = shufflevector <4 x float> %i.bx, <4 x float> %i.bu, <4 x i32> <i32 0, i32 5, i32 5, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float -0.000000e+00, i64 3
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.cj, <4 x float> %i.ch) ; 2 uses
  %i.cl = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.cm = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.l, i64 1
  %i.cn = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.k, i64 0 ; 2 uses
  %i.co = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.s, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cq = load <2 x float>, ptr %i.f, align 4, !tbaa !253, !noalias !1218 ; 2 uses
  %i.cr = load <2 x float>, ptr %i.g, align 4, !tbaa !253, !noalias !1218 ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %11 = shufflevector <4 x float> %i.cs, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.ct = shufflevector <4 x float> %i.bc, <4 x float> %i.cs, <4 x i32> <i32 0, i32 5, i32 5, i32 3>
  %i.cu = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cv = fmul <4 x float> %i.cu, %i.bb
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %i.ct, <4 x float> %i.cw)
  %i.cy = insertelement <2 x float> %i.aa, float %i.bl, i64 1 ; 2 uses
  %i.cz = fneg <2 x float> %i.cy                  ; 3 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.db = shufflevector <2 x float> %i.z, <2 x float> %i.bk, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.dc = shufflevector <2 x float> %i.ac, <2 x float> %i.bn, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.dd = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.df = fmul <4 x float> %i.db, %i.de
  %i.dg = shufflevector <2 x float> %i.ab, <2 x float> %i.bm, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.dh = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> %i.dh, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.da, <4 x float> %i.df) ; 3 uses
  %i.dk = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dj, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.az, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.dm = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 0, i32 7>
  %i.dn = insertelement <4 x float> %i.da, float 0.000000e+00, i64 3
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> %i.aq, <4 x i32> <i32 0, i32 4, i32 poison, i32 3> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.dr = extractelement <2 x float> %i.bo, i64 0
  %i.ds = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.l, i64 1
  %i.dt = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <4 x float> %i.dt, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.du = shufflevector <4 x float> %12, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 poison, i32 3> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.dw = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.k, i64 1
  %i.dx = shufflevector <4 x float> %i.br, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 1, i32 7>
  %i.dy = shufflevector <4 x float> %i.du, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.dz = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, float %4, i64 2 ; 2 uses
  %i.ea = load <4 x float>, ptr %i.p, align 4     ; 3 uses
  %i.eb = load <2 x float>, ptr %i.q, align 4, !tbaa !253, !noalias !1220 ; 2 uses
  %13 = shufflevector <4 x float> %i.ea, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.ec = shufflevector <4 x float> %i.cn, <4 x float> %i.ea, <4 x i32> <i32 0, i32 5, i32 5, i32 3>
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ee = fmul <4 x float> %i.ed, %i.cm
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %i.ec, <4 x float> %i.ef)
  %i.eh = shufflevector <2 x float> %i.cz, <2 x float> %i.ad, <4 x i32> <i32 1, i32 1, i32 2, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float %i.i, i64 3
  %i.ej = shufflevector <4 x float> %i.ea, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ek = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.em = fmul <4 x float> %i.ek, %i.el
  %i.en = shufflevector <4 x float> %i.em, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 4, i32 6>
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> %i.ej, <4 x float> %i.en) ; 6 uses
  %i.ep = insertelement <4 x float> %i.eo, float 1.000000e+00, i64 3
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.ck, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.er = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 0, i32 7>
  %14 = shufflevector <4 x float> %i.eo, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 poison, i32 poison, i32 7>
  %15 = shufflevector <4 x float> %i.eo, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 poison, i32 poison, i32 7>
  %i.es = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = insertelement <2 x float> <float poison, float 0.000000e+00>, float %1, i64 0
  %i.eu = extractelement <4 x float> %i.dj, i64 3
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.eu) ; 2 uses
  %i.ew = extractelement <4 x float> %i.eo, i64 1
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.ew) ; 2 uses
  %i.ey = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ev, i64 0
  %i.ez = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ex, i64 0
  %i.fa = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = shufflevector <2 x float> %i.z, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.fd = fneg <2 x float> %i.fc                  ; 5 uses
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %i.ar, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.ff, <4 x float> %i.ao) ; 4 uses
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.ff, <4 x float> %i.az) ; 3 uses
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ff, <4 x float> %i.cx) ; 4 uses
  %16 = shufflevector <4 x float> %i.fe, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 0, i32 7>
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %16, <4 x float> %i.dl) ; 2 uses
  %i.fk = fmul <4 x float> %i.dm, %i.fh
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.fg, <4 x float> %i.fk)
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.fi, <4 x float> %i.fl)
  %i.fn = fmul <4 x float> %i.bg, %i.fj
  %i.fo = shufflevector <4 x float> %14, <4 x float> %i.fg, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.fo, <4 x float> %i.fn)
  %i.fq = shufflevector <4 x float> %15, <4 x float> %i.fi, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.fq, <4 x float> %i.fp)
  %i.fs = shufflevector <4 x float> %i.fj, <4 x float> %i.fh, <2 x i32> <i32 0, i32 5>
  %i.ft = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x float> %i.fs, %i.ft
  %i.fv = shufflevector <4 x float> %i.eo, <4 x float> %i.fg, <2 x i32> <i32 2, i32 5>
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fv, <2 x float> %i.fu)
  %i.fx = shufflevector <4 x float> %i.eo, <4 x float> %i.fi, <2 x i32> <i32 3, i32 5>
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> zeroinitializer, <2 x float> %i.fw)
  %i.fz = fsub <4 x float> %i.bi, %i.fm
  %i.ga = fsub <4 x float> %i.bj, %i.fr
  %i.gb = fsub <2 x float> %i.et, %i.fy
  %i.gc = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> %i.cc, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.gd, <4 x float> %i.bz) ; 4 uses
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.gd, <4 x float> %i.ck) ; 3 uses
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.gd, <4 x float> %i.eg) ; 4 uses
  %17 = shufflevector <4 x float> %i.fe, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 1, i32 7>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %17, <4 x float> %i.eq) ; 2 uses
  %i.gi = fmul <4 x float> %i.er, %i.gf
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.ge, <4 x float> %i.gi)
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.gg, <4 x float> %i.gj)
  %i.gl = shufflevector <4 x float> %i.fh, <4 x float> %i.gf, <2 x i32> <i32 0, i32 4>
  %i.gm = fmul <2 x float> %i.gl, %i.fd
  %i.gn = shufflevector <4 x float> %i.fg, <4 x float> %i.ge, <2 x i32> <i32 0, i32 4>
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.gn, <2 x float> %i.gm)
  %i.gp = shufflevector <4 x float> %i.fi, <4 x float> %i.gg, <2 x i32> <i32 0, i32 4>
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> zeroinitializer, <2 x float> %i.go)
  %i.gr = fmul <4 x float> %i.dw, %i.gh
  %i.gs = shufflevector <4 x float> %i.ey, <4 x float> %i.ge, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.gs, <4 x float> %i.gr)
  %i.gu = shufflevector <4 x float> %i.ez, <4 x float> %i.gg, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.gu, <4 x float> %i.gt)
  %i.gw = shufflevector <4 x float> %i.gh, <4 x float> %i.gf, <2 x i32> <i32 0, i32 5>
  %i.gx = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = fmul <2 x float> %i.gw, %i.gx
  %i.gz = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ha = insertelement <2 x float> %i.gz, float %i.ev, i64 0
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.ha, <2 x float> %i.gy)
  %i.hc = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.hd = insertelement <2 x float> %i.hc, float %i.ex, i64 0
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> zeroinitializer, <2 x float> %i.hb)
  %i.hf = fsub <4 x float> %i.dz, %i.gk
  %i.hg = fsub <2 x float> zeroinitializer, %i.gq ; 2 uses
  %i.hh = fsub <4 x float> %i.dz, %i.gv
  %i.hi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %4, i64 0
  %i.hj = fsub <2 x float> %i.hi, %i.he
  %i.hk = fadd <4 x float> %i.fz, %i.hf           ; 6 uses
  %shift = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.hg, %shift ; 3 uses
  %i.hl = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.hm = fadd <4 x float> %i.ga, %i.hh           ; 6 uses
  %i.hn = fadd <2 x float> %i.gb, %i.hj           ; 4 uses
  %i.ho = extractelement <4 x float> %i.hm, i64 2 ; 2 uses
  %i.hp = shufflevector <4 x float> %i.hm, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> %i.hn, <2 x i32> <i32 0, i32 2>
  %i.hr = fneg <2 x float> %i.hq                  ; 3 uses
  %i.hs = extractelement <4 x float> %i.hk, i64 0 ; 3 uses
  %i.ht = extractelement <2 x float> %i.hr, i64 1
  %i.hu = extractelement <4 x float> %i.hm, i64 1
  %i.hv = extractelement <4 x float> %i.hk, i64 1 ; 3 uses
  %i.hw = extractelement <4 x float> %i.hk, i64 2 ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hk, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.hy = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.hx, <2 x i32> <i32 0, i32 3>
  %i.hz = fmul <2 x float> %i.hy, %i.hr
  %i.ia = shufflevector <4 x float> %i.hm, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %i.hn, <2 x float> %i.hz) ; 2 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0
  %i.id = extractelement <2 x float> %i.hr, i64 0
  %i.ie = fmul float %i.hw, %i.id
  %i.if = fneg float %i.hs
  %i.ig = fmul float %i.hv, %i.if
  %i.ih = extractelement <2 x float> %i.hn, i64 1 ; 4 uses
  %i.ii = fneg float %i.ho
  %i.ij = fmul float %i.ih, %i.ii
  %i.ik = tail call noundef float @llvm.fmuladd.f32(float %i.hv, float %i.hl, float %i.ij)
  %i.il = fneg float %i.hl
  %i.im = fmul float %i.hw, %i.il
  %i.in = tail call noundef float @llvm.fmuladd.f32(float %i.ih, float %i.hs, float %i.im)
  %i.io = fmul float %i.hs, %i.ht
  %i.ip = fneg float %i.hu                        ; 2 uses
  %i.iq = fmul float %i.ho, %i.ip
  %i.ir = fmul float %i.ih, %i.ip
  %i.is = shufflevector <4 x float> %i.hk, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.it = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.is, <2 x i32> <i32 0, i32 3>
  %i.iu = shufflevector <2 x float> %i.hn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.iv = shufflevector <4 x float> %i.hm, <4 x float> %i.iu, <2 x i32> <i32 1, i32 4>
  %i.iw = insertelement <2 x float> poison, float %i.io, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.ir, i64 1
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iv, <2 x float> %i.ix) ; 2 uses
  %i.iz = extractelement <2 x float> %i.iy, i64 0
  %i.ja = fmul float %i.hv, %i.iz
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.ic, float %i.ja)
  %i.jc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iq, i64 0
  %i.jd = insertelement <4 x float> %i.jc, float %i.ie, i64 1
  %i.je = insertelement <4 x float> %i.jd, float %i.ig, i64 2
  %i.jf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hk, <4 x float> %i.hm, <4 x float> %i.je) ; 2 uses
  %i.jg = extractelement <4 x float> %i.jf, i64 0
  %i.jh = tail call noundef float @llvm.fmuladd.f32(float %i.ih, float %i.jg, float %i.jb)
  %i.ji = fdiv float 1.000000e+00, %i.jh          ; 4 uses
  %i.jj = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jl = fmul <2 x float> %i.ib, %i.jk
  %i.jm = fmul float %i.ik, %i.ji
  %i.jn = fmul <2 x float> %i.iy, %i.jk
  %i.jo = fmul float %i.in, %i.ji
  %i.jp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ji, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.jr = fmul <4 x float> %i.jf, %i.jq
  store <2 x float> %i.jl, ptr %0, align 4, !tbaa !253, !alias.scope !1221
  store float %i.jm, ptr %i.t, align 4, !tbaa !253, !alias.scope !1221
  store <2 x float> %i.jn, ptr %i.v, align 4, !tbaa !253, !alias.scope !1221
  store float %i.jo, ptr %i.w, align 4, !tbaa !253, !alias.scope !1221
  store <4 x float> %i.jr, ptr %i.y, align 4, !tbaa !253, !alias.scope !1221
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody6LJoint5SolveEff(ptr noundef nonnull align 8 dereferenceable(216) %0, float %1, float noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.btSoftBody::Impulse", align 8 ; 9 uses
  %4 = alloca %"struct.btSoftBody::Impulse", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !494  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !383  ; 5 uses
  %.not2.i.i = icmp eq ptr %i.e, null
  br i1 %.not2.i.i, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 420
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 428
  %.sroa.5.0.copyload.i.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !259
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 436
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.j = load float, ptr %i.b, align 8, !tbaa !253 ; 2 uses
  %i.k = load float, ptr %i.g, align 4, !tbaa !253 ; 2 uses
  %i.l = load <2 x float>, ptr %i.h, align 4, !tbaa !253 ; 3 uses
  %i.m = load <2 x float>, ptr %i.i, align 4, !tbaa !253 ; 3 uses
  %i.n = fneg <2 x float> %i.m
  %i.o = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.k, i64 1
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.j, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.s, <2 x float> %i.q)
  %i.u = fneg float %i.j
  %i.v = extractelement <2 x float> %i.l, i64 0
  %i.w = fmul float %i.v, %i.u
  %i.x = extractelement <2 x float> %i.m, i64 0
  %i.y = tail call float @llvm.fmuladd.f32(float %i.k, float %i.x, float %i.w)
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %.sroa.5.0.copyload8.i.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !tbaa !259
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %.sroa.0.0.copyload6.i.i = load <2 x float>, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 372
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ad = load float, ptr %i.b, align 8, !tbaa !253 ; 2 uses
  %i.ae = load float, ptr %i.aa, align 8, !tbaa !253 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !253 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.ac, align 4, !tbaa !253 ; 3 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ae, i64 1
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.ad, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = fneg float %i.ad
  %i.ap = extractelement <2 x float> %i.af, i64 0
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ag, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ar, float %i.aq)
  %.sroa.3.12.vec.insert.i.i7.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i17.i = phi <2 x float> [ %.sroa.5.0.copyload.i.i, %bb.c ], [ %.sroa.5.0.copyload8.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.0.0.i15.i = phi <2 x float> [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.0.0.copyload6.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.0.0.i3.i = phi <2 x float> [ %i.t, %bb.c ], [ %i.an, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.5.0.i4.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i, %bb.c ], [ %.sroa.3.12.vec.insert.i.i7.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %i.at = shufflevector <2 x float> %.sroa.5.0.i17.i, <2 x float> %.sroa.0.0.i15.i, <3 x i32> <i32 0, i32 2, i32 3>
  %i.au = shufflevector <2 x float> %.sroa.5.0.i4.i, <2 x float> %.sroa.0.0.i3.i, <3 x i32> <i32 0, i32 2, i32 3>
  %i.av = fadd <3 x float> %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !494 ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.az, null
  br i1 %.not.i.i1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !383 ; 5 uses
  %.not2.i.i23 = icmp eq ptr %i.ba, null
  br i1 %.not2.i.i23, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30, label %bb.g

bb.f:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 420
  %.sroa.0.0.copyload.i.i2 = load <2 x float>, ptr %i.bb, align 4
  %.sroa.5.0..sroa_idx.i.i3 = getelementptr inbounds nuw i8, ptr %i.az, i64 428
  %.sroa.5.0.copyload.i.i4 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i3, align 4, !tbaa !259
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 436
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 440
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bf = load float, ptr %i.ax, align 8, !tbaa !253 ; 2 uses
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !253 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !382  ; 2 uses
  %.not2.i.i = icmp eq ptr %i.i, null
  br i1 %.not2.i.i, label %_ZNK10btSoftBody4Body8activateEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.i, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit.i

_ZNK10btSoftBody4Body8activateEv.exit.i:          ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !494  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.k, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK10btSoftBody4Body8activateEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !382  ; 2 uses
  %.not2.i2.i = icmp eq ptr %i.m, null
  br i1 %.not2.i2.i, label %_ZN10btSoftBody5Joint7PrepareEfi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.m, i1 noundef zeroext false)
  br label %_ZN10btSoftBody5Joint7PrepareEfi.exit

_ZN10btSoftBody5Joint7PrepareEfi.exit:            ; preds = %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.k, !prof !359

bb.h:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.j unwind label %common.resume ; 4 uses

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.r, i64 16, i1 false), !tbaa.struct !260
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !260
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !260
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !260
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !382  ; 2 uses
  %.not5.i = icmp eq ptr %i.w, null
  br i1 %.not5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit

bb.m:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !383  ; 2 uses
  %.not6.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.z
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.x, %bb.l ], [ %spec.select.i, %bb.m ] ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !253
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !253
  %i.ai = load float, ptr %i.aa, align 8, !tbaa !253 ; 2 uses
  %i.aj = load <2 x float>, ptr %.0.i, align 4, !tbaa !253 ; 2 uses
  %i.ak = load float, ptr %i.ab, align 4, !tbaa !253 ; 2 uses
  %i.al = load float, ptr %i.ae, align 8, !tbaa !253 ; 2 uses
  %i.am = load <2 x float>, ptr %i.af, align 4, !tbaa !253 ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <2 x float> %i.aj, <2 x float> %i.am, <2 x i32> <i32 1, i32 3>
  %i.aq = fmul <2 x float> %i.ao, %i.ap
  %i.ar = shufflevector <2 x float> %i.aj, <2 x float> %i.am, <2 x i32> <i32 0, i32 2>
  %i.as = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.at, <2 x float> %i.aq)
  %i.av = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ah, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.au)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !253
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !253
  %i.be = fmul float %i.ak, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ai, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !253
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.al, float %i.bf)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bi, i64 0
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <2 x float> %i.az, ptr %i.bj, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !259
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %bb.q, !prof !359

bb.n:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bn = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  %.not.i16 = icmp eq i32 %i.bn, 0
  br i1 %.not.i16, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.p unwind label %common.resume ; 4 uses

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.bo, i64 16, i1 false), !tbaa.struct !260
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !260
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !260
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !260
  %i.bs = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !382 ; 2 uses
  %.not5.i12 = icmp eq ptr %i.bt, null
  br i1 %.not5.i12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

common.resume:                                    ; preds = %bb.i, %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  resume { ptr, i32 } %i.bv

bb.s:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !383 ; 2 uses
  %.not6.i14 = icmp eq ptr %i.bw, null
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %spec.select.i15 = select i1 %.not6.i14, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.bx
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

_ZNK10btSoftBody4Body5xformEv.exit17:             ; preds = %bb.r, %bb.s
  %.0.i13 = phi ptr [ %i.bu, %bb.r ], [ %spec.select.i15, %bb.s ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !253
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i13, i64 24
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !253
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i13, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i13, i64 40
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !253 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cj = load float, ptr %i.bj, align 8, !tbaa !253 ; 3 uses
  %i.ck = load <2 x float>, ptr %.0.i13, align 4, !tbaa !253 ; 2 uses
  %i.cl = load <3 x float>, ptr %i.by, align 8, !tbaa !253 ; 3 uses
  %i.cm = load <2 x float>, ptr %i.cb, align 4, !tbaa !253 ; 2 uses
  %i.cn = load <2 x float>, ptr %i.ce, align 4, !tbaa !253 ; 4 uses
  %i.co = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.cq = fmul <2 x float> %i.co, %i.cp
  %i.cr = shufflevector <2 x float> %i.cn, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cs = fmul <2 x float> %i.cr, %i.co
  %i.ct = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.cu = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cu, <2 x float> %i.cq)
  %i.cw = shufflevector <2 x float> %i.cn, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cu, <2 x float> %i.cs)
  %i.cy = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cg, i64 1
  %i.da = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.da, <2 x float> %i.cv) ; 6 uses
  %i.dc = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.ca, i64 1
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.da, <2 x float> %i.cx) ; 3 uses
  %i.df = shufflevector <2 x float> %i.db, <2 x float> %i.de, <2 x i32> <i32 3, i32 0>
  %3 = shufflevector <2 x float> %i.db, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.df, ptr %i.ch, align 8
  store <2 x float> %3, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !259
  %i.dg = load <2 x float>, ptr %i.ci, align 4, !tbaa !253 ; 5 uses
  %i.dh = fneg <2 x float> %i.dg
  %i.di = fmul <2 x float> %i.de, %i.dh
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x float> %i.dj, float %i.cj, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.dk, <2 x float> %i.di) ; 4 uses
  %i.dm = fneg float %i.cj
  %i.dn = extractelement <2 x float> %i.db, i64 0
  %i.do = fmul float %i.dn, %i.dm
  %i.dp = extractelement <2 x float> %i.de, i64 1 ; 2 uses
  %i.dq = extractelement <2 x float> %i.dg, i64 0
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dq, float %i.do) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.dl, %i.dl
  %i.ds = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dt = extractelement <2 x float> %i.dl, i64 0 ; 2 uses
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.ds)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.du)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dv) ; 2 uses
  %i.dw = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.dw, label %bb.t, label %_ZL12NormalizeAnyRK9btVector3.exit

bb.t:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17
  %i.dx = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dl, %i.dz
  %i.eb = fmul float %i.dr, %i.dx
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eb, i64 0
  br label %_ZL12NormalizeAnyRK9btVector3.exit

_ZL12NormalizeAnyRK9btVector3.exit:               ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17, %bb.t
  %.sroa.0.0.i = phi <2 x float> [ %i.ea, %bb.t ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i, %bb.t ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !259
  %foldExtExtBinop79 = fmul <2 x float> %i.db, %i.dg
  %i.ed = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.dp, float %i.ed)
  %i.ef = extractelement <2 x float> %i.db, i64 1
  %i.eg = extractelement <2 x float> %i.dg, i64 1
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.ef, float %i.ee) ; 3 uses
  %i.ei = fcmp olt float %i.eh, -1.000000e+00
  %i.ej = fcmp ogt float %i.eh, 1.000000e+00
  %..i = select i1 %i.ej, float 1.000000e+00, float %i.eh
  %i.ek = select i1 %i.ei, float -1.000000e+00, float %..i ; 2 uses
  %i.el = fcmp olt float %i.ek, -1.000000e+00
  %spec.store.select.i = select i1 %i.el, float -1.000000e+00, float %i.ek
  %i.em = tail call noundef float @acosf(float noundef %spec.store.select.i) #39 ; 2 uses
  %i.en = fcmp ogt float %i.em, f0x3E490FDB
  %.sroa.speculated61 = select i1 %i.en, float f0x3E490FDB, float %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ep = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.eq = fmul float %.sroa.speculated61, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.es = load float, ptr %i.er, align 4, !tbaa !496
  %i.et = fdiv float %i.es, %1                    ; 2 uses
  %i.eu = insertelement <2 x float> poison, float %.sroa.speculated61, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.ev, %.sroa.0.0.i
  %i.ex = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ew, %i.ey
  store <2 x float> %i.ez, ptr %i.ec, align 4, !tbaa !253
  %i.fa = fmul float %i.eq, %i.et
  store float %i.fa, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !253
  %i.fb = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.fc = icmp eq i8 %i.fb, 0
  br i1 %i.fc, label %bb.u, label %bb.w, !prof !359

bb.u:                                             ; preds = %_ZL12NormalizeAnyRK9btVector3.exit
  %i.fd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  %.not.i29 = icmp eq i32 %i.fd, 0
  br i1 %.not.i29, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fe = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZL12NormalizeAnyRK9btVector3.exit
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !494 ; 2 uses
  %.not5.i25 = icmp eq ptr %i.ff, null
  br i1 %.not5.i25, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 372
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.y:                                             ; preds = %bb.w
  %i.fh = load ptr, ptr %i.n, align 8, !tbaa !383 ; 2 uses
  %.not6.i27 = icmp eq ptr %i.fh, null
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 216
  %spec.select.i28 = select i1 %.not6.i27, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fi
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.x, %bb.y
  %.0.i26 = phi ptr [ %i.fg, %bb.x ], [ %spec.select.i28, %bb.y ] ; 6 uses
  %i.fj = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.z, label %bb.ab, !prof !359

bb.z:                                             ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  %.not.i34 = icmp eq i32 %i.fl, 0
  br i1 %.not.i34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fm = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !494 ; 2 uses
  %.not5.i30 = icmp eq ptr %i.fn, null
  br i1 %.not5.i30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 372
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

bb.ad:                                            ; preds = %bb.ab
  %i.fp = load ptr, ptr %i.bk, align 8, !tbaa !383 ; 2 uses
  %.not6.i32 = icmp eq ptr %i.fp, null
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 216
  %spec.select.i33 = select i1 %.not6.i32, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fq
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35:  ; preds = %bb.ac, %bb.ad
  %.0.i31 = phi ptr [ %i.fo, %bb.ac ], [ %spec.select.i33, %bb.ad ] ; 6 uses
  %i.fr = load float, ptr %.0.i26, align 4, !tbaa !253, !noalias !1229
  %i.fs = load float, ptr %.0.i31, align 4, !tbaa !253, !noalias !1229
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i26, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i31, i64 4
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.fx = load float, ptr %i.fv, align 4, !tbaa !253, !noalias !1229
  %i.fy = load float, ptr %i.fw, align 4, !tbaa !253, !noalias !1229
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i26, i64 20
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i31, i64 20
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32
  %i.gd = load float, ptr %i.gb, align 4, !tbaa !253, !noalias !1229
  %i.ge = load float, ptr %i.gc, align 4, !tbaa !253, !noalias !1229
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i26, i64 36
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i31, i64 36
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gk = load float, ptr %i.gj, align 8, !tbaa !387 ; 5 uses
  %i.gl = fcmp ogt float %i.gk, 0.000000e+00
  %i.gm = load <2 x float>, ptr %i.ft, align 4, !tbaa !253, !noalias !1229 ; 2 uses
  %i.gn = load <2 x float>, ptr %i.fu, align 4, !tbaa !253, !noalias !1229 ; 2 uses
  %i.go = fadd <2 x float> %i.gm, %i.gn           ; 5 uses
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gr = insertelement <2 x float> %i.gq, float %i.fr, i64 1
  %i.gs = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gt = insertelement <2 x float> %i.gs, float %i.fs, i64 1
  %i.gu = fadd <2 x float> %i.gr, %i.gt           ; 4 uses
  %i.gv = load <2 x float>, ptr %i.fz, align 4, !tbaa !253, !noalias !1229 ; 2 uses
  %i.gw = load <2 x float>, ptr %i.ga, align 4, !tbaa !253, !noalias !1229 ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x float> %i.gx, float %i.fx, i64 1
  %i.gz = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ha = insertelement <2 x float> %i.gz, float %i.fy, i64 1
  %i.hb = fadd <2 x float> %i.gy, %i.ha           ; 4 uses
  %i.hc = fadd <2 x float> %i.gv, %i.gw           ; 4 uses
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.he = load <2 x float>, ptr %i.gf, align 4, !tbaa !253, !noalias !1229 ; 2 uses
  %i.hf = load <2 x float>, ptr %i.gg, align 4, !tbaa !253, !noalias !1229 ; 2 uses
  %i.hg = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hh = insertelement <2 x float> %i.hg, float %i.gd, i64 1
  %i.hi = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hj = insertelement <2 x float> %i.hi, float %i.ge, i64 1
  %i.hk = fadd <2 x float> %i.hh, %i.hj           ; 4 uses
  %i.hl = fadd <2 x float> %i.he, %i.hf           ; 3 uses
  %i.hm = fneg <2 x float> %i.hl                  ; 2 uses
  %i.hn = fneg <2 x float> %i.hk
  %i.ho = fmul <2 x float> %i.hb, %i.hm
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.hk, <2 x float> %i.ho) ; 3 uses
  %i.hq = extractelement <2 x float> %i.go, i64 1
  %i.hr = fmul <2 x float> %i.go, %i.hn
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.hl, <2 x float> %i.hr)
  %i.ht = fneg <2 x float> %i.hc
  %i.hu = fmul <2 x float> %i.gu, %i.ht
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.hb, <2 x float> %i.hu)
  %i.hw = shufflevector <2 x float> %i.hk, <2 x float> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.hx = fneg <2 x float> %i.hw
end_hunk_7
begin_hunk_8_@_ZL12bernsteinCCDPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_R9btVector3:bb.a
  %i.lh = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.jq, float %i.lg)
  %i.li = insertelement <4 x float> %i.aw, float %i.jp, i64 1
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lk = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ll = insertelement <2 x float> %i.lk, float %i.kp, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ln = fmul <4 x float> %i.lj, %i.lm
  %i.lo = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.lp = insertelement <2 x float> %i.lo, float %i.ko, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.lr = insertelement <4 x float> %i.as, float %i.jo, i64 1
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %i.ls, <4 x float> %i.ln)
  %i.lu = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.lv = insertelement <2 x float> %i.lu, float %i.ky, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.lx = insertelement <4 x float> %i.bc, float %i.jq, i64 1
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %i.ly, <4 x float> %i.lt) ; 4 uses
  %i.ma = extractelement <4 x float> %i.lz, i64 0
  %i.mb = fadd float %i.lh, %i.ma                 ; 4 uses
  %shift27 = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop28 = fadd <4 x float> %shift27, %i.lz
  %i.mc = extractelement <4 x float> %foldExtExtBinop28, i64 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.md = extractelement <4 x float> %i.lz, i64 3 ; 4 uses
  %i.me = tail call noundef float @llvm.fabs.f32(float %i.md)
  %i.mf = fcmp olt float %i.me, f0x37480000
  br i1 %i.mf, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZL18hasSeparatingPlanePKN10btSoftBody4FaceEPKNS_4NodeERKf.exit.i
  %i.mg = tail call noundef float @llvm.fabs.f32(float %i.mc)
  %i.mh = fcmp olt float %i.mg, f0x37480000
  br i1 %i.mh, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.mi = tail call noundef float @llvm.fabs.f32(float %i.mb)
  %i.mj = fcmp olt float %i.mi, f0x37480000
  br i1 %i.mj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mk = tail call noundef float @llvm.fabs.f32(float %i.le)
  %i.ml = fcmp olt float %i.mk, f0x37480000
  br i1 %i.ml, label %.thread103.i, label %.thread111.i

.thread103.i:                                     ; preds = %bb.k
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !253
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %.val69.i, ptr %i.mm, align 4, !tbaa !253
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.mn = fneg float %i.le
  %i.mo = fdiv float %i.mn, %i.mb
  store float %i.mo, ptr %i.a, align 4, !tbaa !253
  br label %.lr.ph.i

bb.m:                                             ; preds = %bb.i
  %i.mp = fdiv float %i.mb, %i.mc
  %i.mq = fdiv float %i.le, %i.mc
  %i.mr = call noundef i32 @_Z7SolveP2Pfff(ptr noundef nonnull %i.a, float noundef %i.mp, float noundef %i.mq)
  br label %bb.o

bb.n:                                             ; preds = %_ZL18hasSeparatingPlanePKN10btSoftBody4FaceEPKNS_4NodeERKf.exit.i
  %i.ms = fdiv float %i.mc, %i.md
  %i.mt = fdiv float %i.mb, %i.md
  %i.mu = fdiv float %i.le, %i.md
  %i.mv = call noundef i32 @_Z7SolveP3Pffff(ptr noundef nonnull %i.a, float noundef %i.ms, float noundef %i.mt, float noundef %i.mu)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.064.i = phi i32 [ %i.mv, %bb.n ], [ %i.mr, %bb.m ] ; 3 uses
  %i.mw = icmp sgt i32 %.064.i, 1
  br i1 %i.mw, label %._crit_edge.i, label %.thread107.i

._crit_edge.i:                                    ; preds = %bb.o
  %.pre.i = load float, ptr %i.a, align 4, !tbaa !253
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre120.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !253
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.thread103.i
  %i.mx = phi float [ %.val69.i, %.thread103.i ], [ %.pre120.i, %._crit_edge.i ] ; 4 uses
  %i.my = phi float [ 0.000000e+00, %.thread103.i ], [ %.pre.i, %._crit_edge.i ] ; 4 uses
  %.064105.i = phi i32 [ 2, %.thread103.i ], [ %.064.i, %._crit_edge.i ] ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.na = fcmp ogt float %i.my, %i.mx
  br i1 %i.na, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.mx, ptr %i.a, align 4, !tbaa !253
  store float %i.my, ptr %i.mz, align 4, !tbaa !253
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.nb = phi float [ %i.mx, %bb.p ], [ %i.my, %bb.q ] ; 2 uses
  %i.nc = phi float [ %i.my, %bb.p ], [ %i.mx, %bb.q ] ; 3 uses
  %i.nd = icmp samesign ugt i32 %.064105.i, 2
  br i1 %i.nd, label %bb.s, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !253 ; 3 uses
  %i.ng = fcmp ogt float %i.nc, %i.nf
  br i1 %i.ng, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store float %i.nf, ptr %i.a, align 4, !tbaa !253
  store float %i.nc, ptr %i.ne, align 4, !tbaa !253
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.nh = phi float [ %i.nc, %bb.t ], [ %i.nf, %bb.s ] ; 2 uses
  %i.ni = fcmp ogt float %i.nb, %i.nh
  br i1 %i.ni, label %bb.v, label %.lr.ph.i

bb.v:                                             ; preds = %bb.u
  store float %i.nh, ptr %i.mz, align 4, !tbaa !253
  store float %i.nb, ptr %i.ne, align 4, !tbaa !253
  br label %.lr.ph.i

.thread107.i:                                     ; preds = %bb.o
  %.not114.i = icmp eq i32 %.064.i, 1
  br i1 %.not114.i, label %.lr.ph.i, label %.thread111.i

.lr.ph.i:                                         ; preds = %.thread107.i, %bb.v, %bb.u, %bb.r, %bb.l
  %.064102109136.i = phi i32 [ 1, %.thread107.i ], [ 1, %bb.l ], [ %.064105.i, %bb.v ], [ %.064105.i, %bb.u ], [ 2, %bb.r ]
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %8, i64 12
  %wide.trip.count.i = zext nneg i32 %.064102109136.i to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.nq = load float, ptr %i.np, align 4, !tbaa !253 ; 4 uses
  %i.nr = fcmp ugt float %i.nq, 0.000000e+00
  br i1 %i.nr, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ns = load float, ptr %2, align 4, !tbaa !253
  %i.nt = fadd float %i.ns, f0x34000000
  %i.nu = fcmp ogt float %i.nq, %i.nt
  br i1 %i.nu, label %.thread111.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.nv = load ptr, ptr %i.p, align 8, !tbaa !316 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 48
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !253
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 52
  %i.oa = load float, ptr %i.nw, align 4, !tbaa !253
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.oc = load ptr, ptr %i.cz, align 8, !tbaa !316 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 48
  %i.of = load float, ptr %i.oe, align 4, !tbaa !253
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 52
  %i.oh = load float, ptr %i.od, align 4, !tbaa !253
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.oj = load ptr, ptr %i.dg, align 8, !tbaa !316 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 48
  %i.om = load float, ptr %i.ol, align 4, !tbaa !253
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 52
  %i.oo = load float, ptr %i.ok, align 4, !tbaa !253
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.oq = load float, ptr %i.fy, align 4, !tbaa !253
  %i.or = fmul float %i.nq, %i.oq
  %i.os = load <2 x float>, ptr %i.fs, align 4, !tbaa !253
  %i.ot = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.ov = fmul <2 x float> %i.ou, %i.os
  %i.ow = load <2 x float>, ptr %i.o, align 4, !tbaa !253
  %i.ox = fadd <2 x float> %i.ov, %i.ow
  %i.oy = load float, ptr %i.v, align 4, !tbaa !253
  %i.oz = fadd float %i.or, %i.oy
  %.sroa.3.12.vec.insert.i152.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oz, i64 0
  store <2 x float> %i.ox, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i152.i, ptr %i.nm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.pa = load <2 x float>, ptr %i.nz, align 4, !tbaa !253 ; 2 uses
  %i.pb = fmul <2 x float> %i.ou, %i.pa
  %i.pc = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pd = insertelement <2 x float> %i.pc, float %i.ny, i64 1
  %i.pe = fmul <2 x float> %i.ou, %i.pd
  %i.pf = load <2 x float>, ptr %i.ob, align 4, !tbaa !253 ; 2 uses
  %i.pg = fadd <2 x float> %i.pb, %i.pf           ; 4 uses
  %i.ph = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pi = insertelement <2 x float> %i.ph, float %i.oa, i64 1
  %i.pj = fadd <2 x float> %i.pe, %i.pi           ; 3 uses
  %i.pk = shufflevector <2 x float> %i.pg, <2 x float> %i.pj, <2 x i32> <i32 3, i32 0>
  %9 = shufflevector <2 x float> %i.pg, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.pk, ptr %4, align 8
  store <2 x float> %9, ptr %i.nj, align 8
  %i.pl = load <2 x float>, ptr %i.og, align 4, !tbaa !253 ; 2 uses
  %i.pm = fmul <2 x float> %i.ou, %i.pl
  %i.pn = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.po = insertelement <2 x float> %i.pn, float %i.of, i64 1
  %i.pp = fmul <2 x float> %i.ou, %i.po
  %i.pq = load <2 x float>, ptr %i.oi, align 4, !tbaa !253 ; 2 uses
  %i.pr = fadd <2 x float> %i.pm, %i.pq           ; 3 uses
  %i.ps = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pt = insertelement <2 x float> %i.ps, float %i.oh, i64 1
  %i.pu = fadd <2 x float> %i.pp, %i.pt           ; 2 uses
  %i.pv = shufflevector <2 x float> %i.pr, <2 x float> %i.pu, <2 x i32> <i32 3, i32 0>
  %10 = shufflevector <2 x float> %i.pr, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.pv, ptr %5, align 8
  store <2 x float> %10, ptr %i.nk, align 8
  %i.pw = load <2 x float>, ptr %i.on, align 4, !tbaa !253 ; 2 uses
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.py = insertelement <2 x float> %i.px, float %i.om, i64 1
  %i.pz = fmul <2 x float> %i.ou, %i.py
  %i.qa = fmul <2 x float> %i.ou, %i.pw
  %i.qb = load <2 x float>, ptr %i.op, align 4, !tbaa !253 ; 2 uses
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qd = insertelement <2 x float> %i.qc, float %i.oo, i64 1
  %i.qe = fadd <2 x float> %i.pz, %i.qd           ; 3 uses
  %i.qf = fadd <2 x float> %i.qa, %i.qb           ; 2 uses
  %i.qg = shufflevector <2 x float> %i.qe, <2 x float> %i.qf, <2 x i32> <i32 1, i32 2>
  %i.qh = insertelement <2 x float> %i.qe, float 0.000000e+00, i64 1
  store <2 x float> %i.qg, ptr %6, align 8
  store <2 x float> %i.qh, ptr %i.nl, align 8
  %i.qi = fsub <2 x float> %i.pr, %i.pg           ; 2 uses
  %i.qj = fsub <2 x float> %i.pu, %i.pj           ; 2 uses
  %i.qk = fsub <2 x float> %i.qe, %i.pj           ; 2 uses
  %i.ql = fsub <2 x float> %i.qf, %i.pg           ; 2 uses
  %i.qm = fneg <2 x float> %i.ql
  %i.qn = fmul <2 x float> %i.qj, %i.qm
  %i.qo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qi, <2 x float> %i.qk, <2 x float> %i.qn) ; 4 uses
  %i.qp = extractelement <2 x float> %i.qk, i64 1
  %i.qq = fneg float %i.qp
  %i.qr = extractelement <2 x float> %i.qi, i64 0
  %i.qs = fmul float %i.qr, %i.qq
  %i.qt = extractelement <2 x float> %i.qj, i64 1
  %i.qu = extractelement <2 x float> %i.ql, i64 0
  %i.qv = call float @llvm.fmuladd.f32(float %i.qt, float %i.qu, float %i.qs) ; 4 uses
  %.sroa.3.12.vec.insert.i167.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qv, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i167.i, ptr %i.nn, align 8
  %foldExtExtBinop30 = fmul <2 x float> %i.qo, %i.qo
  %i.qw = extractelement <2 x float> %foldExtExtBinop30, i64 1
  %i.qx = extractelement <2 x float> %i.qo, i64 0 ; 2 uses
  %i.qy = call float @llvm.fmuladd.f32(float %i.qx, float %i.qx, float %i.qw)
  %i.qz = call noundef float @llvm.fmuladd.f32(float %i.qv, float %i.qv, float %i.qy) ; 2 uses
  %i.ra = fcmp ult float %i.qz, f0x28800000
  br i1 %i.ra, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.qz)
  %i.rb = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.rc = insertelement <2 x float> poison, float %i.rb, i64 0
  %i.rd = shufflevector <2 x float> %i.rc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.re = fmul <2 x float> %i.qo, %i.rd
  %i.rf = fmul float %i.qv, %i.rb
  br label %_ZN9btVector313safeNormalizeEv.exit.i

bb.aa:                                            ; preds = %bb.y
  store float 0.000000e+00, ptr %i.no, align 4, !tbaa !253
  br label %_ZN9btVector313safeNormalizeEv.exit.i

_ZN9btVector313safeNormalizeEv.exit.i:            ; preds = %bb.aa, %bb.z
  %.sink.i.i = phi float [ 0.000000e+00, %bb.aa ], [ %i.rf, %bb.z ]
  %i.rg = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.aa ], [ %i.re, %bb.z ]
  store <2 x float> %i.rg, ptr %8, align 8, !tbaa !253
  store float %.sink.i.i, ptr %i.nn, align 8, !tbaa !253
  %i.rh = call fastcc noundef zeroext i1 @_ZL13proximityTestRK9btVector3S1_S1_S1_S1_RKfRS_(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, float f0x358637BD, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br i1 %i.rh, label %.thread111.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN9btVector313safeNormalizeEv.exit.i, %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread111.i, label %bb.w, !llvm.loop !1496

.thread111.i:                                     ; preds = %bb.ab, %_ZN9btVector313safeNormalizeEv.exit.i, %bb.x, %.thread107.i, %bb.k
  %.3.i = phi i1 [ false, %.thread107.i ], [ false, %bb.k ], [ false, %bb.x ], [ false, %bb.ab ], [ true, %_ZN9btVector313safeNormalizeEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %_ZL28continuousCollisionDetectionPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_R9btVector3.exit

_ZL28continuousCollisionDetectionPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_R9btVector3.exit: ; preds = %bb.h, %bb.a, %.thread111.i, %_ZL15bernsteinVFTestPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZL15bernsteinVFTestPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_.exit ], [ %.3.i, %.thread111.i ], [ false, %bb.h ]
  ret i1 %.0
}

declare noundef i32 @_Z7SolveP2Pfff(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare noundef i32 @_Z7SolveP3Pffff(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders10CollideCCD5RepelEPN10btSoftBody4FaceES3_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !316  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !316  ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %.thread44, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !316  ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !316  ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.thread44, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !316  ; 3 uses
  %i.n = icmp eq ptr %i.d, %i.m
  %i.o = icmp eq ptr %i.g, %i.m
  %or.cond = or i1 %i.n, %i.o
  %i.p = icmp eq ptr %i.j, %i.m
  %or.cond67 = or i1 %or.cond, %i.p
  br i1 %or.cond67, label %.thread44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !316  ; 3 uses
  %i.s = icmp eq ptr %i.d, %i.r
  %i.t = icmp eq ptr %i.g, %i.r
  %or.cond68 = or i1 %i.s, %i.t
  %i.u = icmp eq ptr %i.j, %i.r
  %or.cond69 = or i1 %or.cond68, %i.u
  br i1 %or.cond69, label %.thread44, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.14.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !316 ; 4 uses
  %i.ae = call fastcc noundef zeroext i1 @_ZL12bernsteinCCDPKN10btSoftBody4FaceEPKNS_4NodeERKfS7_R9btVector3(ptr noundef %2, ptr noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.v, float f0x37480000, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br i1 %i.ae, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %.sroa.10.48.copyload = load <2 x float>, ptr %i.w, align 8 ; 5 uses
  %.sroa.14.48.copyload = load <2 x float>, ptr %.sroa.14.48..sroa_idx, align 8 ; 4 uses
  %i.af = load i8, ptr %i.x, align 8, !tbaa !539, !range !262, !noundef !263
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = extractelement <2 x float> %.sroa.14.48.copyload, i64 0
  br i1 %i.ag, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !316 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load float, ptr %i.ai, align 4, !tbaa !253
  %i.am = load float, ptr %i.ak, align 4, !tbaa !253
  %i.an = fsub float %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !253
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !253
  %i.as = fsub <2 x float> %i.aq, %i.ar           ; 2 uses
  %.sroa.10.48.vec.extract = extractelement <2 x float> %.sroa.10.48.copyload, i64 0
  %shift = shufflevector <2 x float> %.sroa.10.48.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.as
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.10.48.vec.extract, float %i.an, float %i.at)
  %.sroa.14.56.vec.extract = extractelement <2 x float> %.sroa.14.48.copyload, i64 0
  %i.av = extractelement <2 x float> %i.as, i64 1
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %.sroa.14.56.vec.extract, float %i.av, float %i.au)
  %i.ax = fcmp olt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ay = fneg <2 x float> %.sroa.10.48.copyload
  %i.az = fneg float %i.ah
  %.sroa.3.12.vec.insert.i31 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.10.0 = phi <2 x float> [ %.sroa.10.48.copyload, %bb.h ], [ %i.ay, %bb.i ], [ %.sroa.10.48.copyload, %bb.g ]
  %.sroa.14.0 = phi <2 x float> [ %.sroa.14.48.copyload, %bb.h ], [ %.sroa.3.12.vec.insert.i31, %bb.i ], [ %.sroa.14.48.copyload, %bb.g ]
  %i.ba = load ptr, ptr %i.z, align 8, !tbaa !468 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 444
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !354
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !468 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 444
  %i.bf = load float, ptr %i.be, align 4, !tbaa !354
  %i.bg = fmul float %i.bc, %i.bf
  %i.bh = load float, ptr %i.ab, align 4, !tbaa !557
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 1380 ; 5 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !215 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 1384 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !216
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit
end_hunk_8
