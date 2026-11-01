Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f:bb.a
  %i.em = icmp sgt i32 %i.db, 0
  br i1 %i.em, label %.lr.ph14.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit

.lr.ph14.i:                                       ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.db to i64
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.en = load ptr, ptr %i.dd, align 8, !tbaa !658
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !659 ; 2 uses
  store ptr null, ptr %i.eo, align 8, !tbaa !659
  %.not10.i = icmp eq ptr %i.ep, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.011.i = phi ptr [ %i.er, %.lr.ph.i ], [ %i.ep, %bb.h ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i, i64 288
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !663 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i, i64 noundef 296) #41
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !655

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
  %6 = load float, ptr %5, align 4, !tbaa !253, !noalias !677 ; 6 uses
  %7 = fneg float %6                              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.h = load <3 x float>, ptr %4, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.j = load <1 x float>, ptr %i.e, align 4
  %i.k = load <3 x float>, ptr %i.c, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.m = load <1 x float>, ptr %i.f, align 4
  %i.n = load <3 x float>, ptr %i.d, align 4, !tbaa !253, !noalias !678 ; 3 uses
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.p = load float, ptr %i.g, align 4, !tbaa !253, !noalias !678
  %i.q = extractelement <3 x float> %i.n, i64 2
  %i.r = extractelement <3 x float> %i.n, i64 0
  %i.s = load <2 x float>, ptr %i.b, align 4, !tbaa !253, !noalias !677 ; 3 uses
  %i.t = load float, ptr %i.a, align 4, !tbaa !253, !noalias !677 ; 5 uses
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.v = fneg float %i.u                          ; 4 uses
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.x = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.y = insertelement <4 x float> %i.w, float %7, i64 1
  %8 = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.z = insertelement <4 x float> %i.w, float 0.000000e+00, i64 2
  %9 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %i.v, i64 1
  %i.aa = insertelement <4 x float> %9, float %6, i64 2
  %10 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %3, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %12 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %2, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %14 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.v, i64 1
  %i.ab = fneg float %i.t                         ; 4 uses
  %i.ac = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ab, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = fmul <4 x float> %i.l, %i.ad
  %i.af = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.x, <4 x float> %i.ae)
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %8, <4 x float> %i.af) ; 5 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.ai = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.ab, i64 2
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ak = shufflevector <4 x float> %i.o, <4 x float> %i.ag, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.al = shufflevector <1 x float> %i.m, <1 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> <float 0.000000e+00, float poison>, float %6, i64 1
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = shufflevector <1 x float> %i.j, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.t, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.v, i64 1 ; 2 uses
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.an)
  %i.as = insertelement <2 x float> poison, float %i.p, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> <float poison, float 0.000000e+00>, float %7, i64 0
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.ar) ; 3 uses
  %15 = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 2, i32 2>
  %16 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.t, i64 1
  %17 = fmul <2 x float> %16, %i.av
  %18 = insertelement <2 x float> poison, float %i.ab, i64 0
  %19 = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %20 = insertelement <2 x float> %19, float 0.000000e+00, i64 1
  %21 = insertelement <2 x float> %i.aq, float %6, i64 0
  %22 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %3, i64 0
  %23 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %2, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %24 = shufflevector <3 x float> %i.k, <3 x float> %i.aw, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %25 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %6, i64 1
  %26 = insertelement <4 x float> %25, float %7, i64 3
  %27 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ax = fmul <4 x float> %24, %27
  %28 = shufflevector <2 x float> %i.s, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %29 = shufflevector <3 x float> %i.h, <3 x float> %28, <4 x i32> <i32 2, i32 2, i32 0, i32 3>
  %i.ay = insertelement <4 x float> %i.ag, float %i.t, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.v, i64 1
  %30 = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %30, <4 x float> %i.ax) ; 4 uses
  %31 = shufflevector <4 x float> %i.z, <4 x float> %i.ba, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.bb = insertelement <4 x float> %31, float %7, i64 3
  %32 = extractelement <4 x float> %i.ba, i64 0
  %33 = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %7, float %32) ; 2 uses
  %i.bc = fmul <4 x float> %i.bb, %i.ah
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.ak, <4 x float> %i.bc) ; 3 uses
  %i.be = extractelement <4 x float> %i.bd, i64 0 ; 2 uses
  %i.bf = extractelement <4 x float> %i.ba, i64 2
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.r, float 0.000000e+00, float %i.bf) ; 3 uses
  %34 = insertelement <2 x float> %18, float %i.bg, i64 1
  %35 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %20, <2 x float> %17)
  %36 = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %37 = insertelement <2 x float> %36, float %33, i64 0
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %37, <2 x float> %35)
  %39 = fsub <2 x float> %22, %38                 ; 2 uses
  %40 = fadd <2 x float> %23, %39                 ; 3 uses
  %i.bh = extractelement <2 x float> %40, i64 0   ; 2 uses
  %41 = fneg float %i.bh
  %42 = insertelement <2 x float> poison, float %33, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = extractelement <2 x float> %39, i64 1     ; 2 uses
  %45 = fneg float %44                            ; 2 uses
  %46 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.t, i64 0
  %47 = insertelement <4 x float> %46, float %7, i64 2
  %48 = insertelement <4 x float> %47, float %45, i64 3
  %49 = shufflevector <2 x float> %i.av, <2 x float> %40, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %50 = fmul <4 x float> %48, %49                 ; 4 uses
  %51 = shufflevector <4 x float> %50, <4 x float> %i.bd, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %52 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %15, <4 x float> %51) ; 2 uses
  %53 = shufflevector <4 x float> %52, <4 x float> %i.ba, <2 x i32> <i32 7, i32 0>
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %43, <2 x float> %53)
  %54 = fsub <2 x float> zeroinitializer, %i.bi   ; 5 uses
  %55 = extractelement <2 x float> %54, i64 0     ; 2 uses
  %56 = extractelement <2 x float> %54, i64 1     ; 2 uses
  %57 = shufflevector <2 x float> %54, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %58 = fneg <2 x float> %54
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = extractelement <4 x float> %50, i64 1
  %60 = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.bg, float %i.bj)
  %61 = tail call noundef float @llvm.fmuladd.f32(float %6, float %i.be, float %60)
  %i.bk = extractelement <4 x float> %50, i64 2
  %62 = tail call float @llvm.fmuladd.f32(float %i.u, float %i.bg, float %i.bk)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.be, float 0.000000e+00, float %62)
  %63 = fsub float 0.000000e+00, %61              ; 3 uses
  %i.bm = fneg float %63                          ; 2 uses
  %i.bn = insertelement <4 x float> %52, float %i.bl, i64 0
  %i.bo = fsub <4 x float> %11, %i.bn             ; 3 uses
  %i.bp = fadd <4 x float> %i.bo, %13             ; 5 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 0 ; 2 uses
  %i.br = fneg float %i.bq                        ; 2 uses
  %i.bs = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 2>
  %i.bt = insertelement <4 x float> poison, float %45, i64 0
  %i.bu = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %64 = fmul float %55, %i.bm
  %65 = extractelement <4 x float> %50, i64 3
  %66 = tail call noundef float @llvm.fmuladd.f32(float %56, float %63, float %65) ; 2 uses
  %67 = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bq, float %64) ; 2 uses
  %68 = fmul float %56, %i.br
  %69 = insertelement <4 x float> %i.bu, float %67, i64 1
  %70 = shufflevector <4 x float> %69, <4 x float> %57, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bv = insertelement <4 x float> %70, float %63, i64 3
  %71 = shufflevector <4 x float> %i.bp, <4 x float> %i.bo, <4 x i32> <i32 1, i32 6, i32 1, i32 poison>
  %i.bw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bm, i64 2
  %72 = shufflevector <4 x float> %59, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %73 = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %74 = shufflevector <2 x float> %54, <2 x float> %40, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.bx = insertelement <4 x float> %74, float %66, i64 3
  %i.by = insertelement <4 x float> poison, float %67, i64 0
  %i.bz = insertelement <4 x float> poison, float %66, i64 0
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %55, float %44, float %68) ; 2 uses
  %i.cb = insertelement <4 x float> %i.bt, float %i.ca, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %41, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.br, i64 3
  %i.ce = fmul <4 x float> %i.bs, %i.cd
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bv, <4 x float> %i.ce) ; 3 uses
  %75 = shufflevector <4 x float> %71, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cg = fmul <4 x float> %75, %72
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %73, <4 x float> %i.bx, <4 x float> %i.cg) ; 3 uses
  %i.ci = shufflevector <4 x float> %i.by, <4 x float> %i.cf, <4 x i32> <i32 0, i32 7, i32 6, i32 0>
  %76 = shufflevector <4 x float> %i.cf, <4 x float> %i.ch, <4 x i32> <i32 poison, i32 0, i32 4, i32 0>
  %i.cj = insertelement <4 x float> %76, float %i.ca, i64 0
  %77 = shufflevector <4 x float> %i.bz, <4 x float> %i.ch, <4 x i32> <i32 0, i32 6, i32 5, i32 0>
  %78 = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ck = insertelement <2 x float> %78, float %1, i64 1
  %i.cl = fdiv <2 x float> splat (float 1.000000e+00), %i.ck ; 6 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = extractelement <2 x float> %i.cl, i64 1
  %i.cq = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cr = fmul <4 x float> %i.ci, %i.cq           ; 3 uses
  %i.cs = fmul <4 x float> %i.cj, %i.cq           ; 2 uses
  %i.ct = fmul <4 x float> %77, %i.cq             ; 3 uses
  %i.cu = extractelement <4 x float> %i.cr, i64 2
  %i.cv = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.cw = extractelement <4 x float> %i.ct, i64 2
  %i.cx = insertelement <2 x float> %i.cl, float 0.000000e+00, i64 0
  %i.cy = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.cz = fmul <2 x float> %i.cx, %i.cy           ; 2 uses
  %i.da = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.co, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dc = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cn, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.de = fmul <4 x float> %i.cs, %i.dd           ; 2 uses
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.dg = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.db, <4 x float> %i.dh)
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> zeroinitializer, <4 x float> %i.di) ; 2 uses
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> zeroinitializer, <4 x float> %i.de)
  %i.dl = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dm = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cm, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dk) ; 2 uses
  %i.dp = extractelement <2 x float> %i.cz, i64 0
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.dp)
  %i.dr = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.cp, float %i.dq)
  %i.ds = insertelement <4 x float> %i.dj, float 0.000000e+00, i64 3
  store <4 x float> %i.ds, ptr %0, align 4, !tbaa !253, !alias.scope !679
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = shufflevector <4 x float> %i.dj, <4 x float> %i.do, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.dv = insertelement <4 x float> %i.du, float 0.000000e+00, i64 3
  store <4 x float> %i.dv, ptr %i.dt, align 4, !tbaa !253, !alias.scope !679
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dx = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dx, ptr %i.dw, align 4, !tbaa !253, !alias.scope !679
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.dr, ptr %i.dy, align 4, !tbaa !253, !alias.scope !679
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !253, !alias.scope !679
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
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody22appendDeformableAnchorEiP23btMultiBodyLinkCollider:bb.a
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i77.i
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !253, !noalias !699
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i77.i
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !253, !noalias !699
  %i.qw = call float @llvm.fmuladd.f32(float %i.qt, float %i.qv, float %i.qr)
  %indvars.iv.next.i77.i.1 = or disjoint i64 %indvars.iv.i75.i, 2 ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i77.i.1
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !253, !noalias !699
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i77.i.1
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !253, !noalias !699
  %i.rb = call float @llvm.fmuladd.f32(float %i.qy, float %i.ra, float %i.qw)
  %indvars.iv.next.i77.i.2 = or disjoint i64 %indvars.iv.i75.i, 3 ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i77.i.2
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !253, !noalias !699
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i77.i.2
  %i.rf = load float, ptr %i.re, align 4, !tbaa !253, !noalias !699
  %i.rg = call float @llvm.fmuladd.f32(float %i.rd, float %i.rf, float %i.rb) ; 3 uses
  %indvars.iv.next.i77.i.3 = add nuw nsw i64 %indvars.iv.i75.i, 4 ; 2 uses
  %niter254.next.3 = add i64 %niter254, 4         ; 2 uses
  %niter254.ncmp.3 = icmp eq i64 %niter254.next.3, %unroll_iter253
  br i1 %niter254.ncmp.3, label %.lr.ph.i83.i.preheader.unr-lcssa, label %.lr.ph.i74.i, !llvm.loop !12

.lr.ph.i83.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i74.i
  %lcmp.mod250.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod250.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil.preheader

.lr.ph.i74.i.epil.preheader:                      ; preds = %.lr.ph.i83.i.preheader.unr-lcssa, %.lr.ph.i74.i.preheader
  %indvars.iv.i75.i.epil.init = phi i64 [ 0, %.lr.ph.i74.i.preheader ], [ %indvars.iv.next.i77.i.3, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %.089.i76.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i74.i.preheader ], [ %i.rg, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %lcmp.mod252 = icmp ne i64 %xtraiter248, 0
  call void @llvm.assume(i1 %lcmp.mod252)
  br label %.lr.ph.i74.i.epil

.lr.ph.i74.i.epil:                                ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i74.i.epil.preheader
  %indvars.iv.i75.i.epil = phi i64 [ %indvars.iv.next.i77.i.epil, %.lr.ph.i74.i.epil ], [ %indvars.iv.i75.i.epil.init, %.lr.ph.i74.i.epil.preheader ] ; 3 uses
  %.089.i76.i.epil = phi float [ %i.rl, %.lr.ph.i74.i.epil ], [ %.089.i76.i.epil.init, %.lr.ph.i74.i.epil.preheader ]
  %epil.iter249 = phi i64 [ %epil.iter249.next, %.lr.ph.i74.i.epil ], [ 0, %.lr.ph.i74.i.epil.preheader ]
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i75.i.epil
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !253, !noalias !699
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i75.i.epil
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !253, !noalias !699
  %i.rl = call float @llvm.fmuladd.f32(float %i.ri, float %i.rk, float %.089.i76.i.epil) ; 2 uses
  %indvars.iv.next.i77.i.epil = add nuw nsw i64 %indvars.iv.i75.i.epil, 1
  %epil.iter249.next = add i64 %epil.iter249, 1   ; 2 uses
  %epil.iter249.cmp.not = icmp eq i64 %epil.iter249.next, %xtraiter248
  br i1 %epil.iter249.cmp.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil, !llvm.loop !691

.lr.ph.i83.i.preheader:                           ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i83.i.preheader.unr-lcssa
  %.lcssa204 = phi float [ %i.rg, %.lr.ph.i83.i.preheader.unr-lcssa ], [ %i.rl, %.lr.ph.i74.i.epil ]
  %xtraiter255 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.rm = icmp ult i64 %i.kl, 3
  br i1 %i.rm, label %.lr.ph.i83.i.epil.preheader, label %.lr.ph.i83.i.preheader.new

.lr.ph.i83.i.preheader.new:                       ; preds = %.lr.ph.i83.i.preheader
  %unroll_iter260 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.lr.ph.i83.i, %.lr.ph.i83.i.preheader.new
  %indvars.iv.i84.i = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i83.i ] ; 6 uses
  %.089.i85.i = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader.new ], [ %i.sg, %.lr.ph.i83.i ]
  %niter261 = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %niter261.next.3, %.lr.ph.i83.i ]
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i84.i
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !253, !noalias !699
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i84.i
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !253, !noalias !699
  %i.rr = call float @llvm.fmuladd.f32(float %i.ro, float %i.rq, float %.089.i85.i)
  %indvars.iv.next.i86.i = or disjoint i64 %indvars.iv.i84.i, 1 ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i86.i
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !253, !noalias !699
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next.i86.i
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !253, !noalias !699
  %i.rw = call float @llvm.fmuladd.f32(float %i.rt, float %i.rv, float %i.rr)
  %indvars.iv.next.i86.i.1 = or disjoint i64 %indvars.iv.i84.i, 2 ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i86.i.1
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !253, !noalias !699
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next.i86.i.1
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !253, !noalias !699
  %i.sb = call float @llvm.fmuladd.f32(float %i.ry, float %i.sa, float %i.rw)
  %indvars.iv.next.i86.i.2 = or disjoint i64 %indvars.iv.i84.i, 3 ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i86.i.2
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !253, !noalias !699
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next.i86.i.2
  %i.sf = load float, ptr %i.se, align 4, !tbaa !253, !noalias !699
  %i.sg = call float @llvm.fmuladd.f32(float %i.sd, float %i.sf, float %i.sb) ; 3 uses
  %indvars.iv.next.i86.i.3 = add nuw nsw i64 %indvars.iv.i84.i, 4 ; 2 uses
  %niter261.next.3 = add i64 %niter261, 4         ; 2 uses
  %niter261.ncmp.3 = icmp eq i64 %niter261.next.3, %unroll_iter260
  br i1 %niter261.ncmp.3, label %.lr.ph.i92.i.preheader.unr-lcssa, label %.lr.ph.i83.i, !llvm.loop !12

.lr.ph.i92.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i83.i
  %lcmp.mod257.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil.preheader

.lr.ph.i83.i.epil.preheader:                      ; preds = %.lr.ph.i92.i.preheader.unr-lcssa, %.lr.ph.i83.i.preheader
  %indvars.iv.i84.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.preheader ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %.089.i85.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader ], [ %i.sg, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %lcmp.mod259 = icmp ne i64 %xtraiter255, 0
  call void @llvm.assume(i1 %lcmp.mod259)
  br label %.lr.ph.i83.i.epil

.lr.ph.i83.i.epil:                                ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i83.i.epil.preheader
  %indvars.iv.i84.i.epil = phi i64 [ %indvars.iv.next.i86.i.epil, %.lr.ph.i83.i.epil ], [ %indvars.iv.i84.i.epil.init, %.lr.ph.i83.i.epil.preheader ] ; 3 uses
  %.089.i85.i.epil = phi float [ %i.sl, %.lr.ph.i83.i.epil ], [ %.089.i85.i.epil.init, %.lr.ph.i83.i.epil.preheader ]
  %epil.iter256 = phi i64 [ %epil.iter256.next, %.lr.ph.i83.i.epil ], [ 0, %.lr.ph.i83.i.epil.preheader ]
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i84.i.epil
  %i.si = load float, ptr %i.sh, align 4, !tbaa !253, !noalias !699
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i84.i.epil
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !253, !noalias !699
  %i.sl = call float @llvm.fmuladd.f32(float %i.si, float %i.sk, float %.089.i85.i.epil) ; 2 uses
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter256.next = add i64 %epil.iter256, 1   ; 2 uses
  %epil.iter256.cmp.not = icmp eq i64 %epil.iter256.next, %xtraiter255
  br i1 %epil.iter256.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !692

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa203 = phi float [ %i.sg, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.sl, %.lr.ph.i83.i.epil ]
  %xtraiter262 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.sm = icmp ult i64 %i.kl, 3
  br i1 %i.sm, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter267 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.tg, %.lr.ph.i92.i ]
  %niter268 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter268.next.3, %.lr.ph.i92.i ]
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i93.i
  %i.so = load float, ptr %i.sn, align 4, !tbaa !253, !noalias !699
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i93.i
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !253, !noalias !699
  %i.sr = call float @llvm.fmuladd.f32(float %i.so, float %i.sq, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i95.i
  %i.st = load float, ptr %i.ss, align 4, !tbaa !253, !noalias !699
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i95.i
  %i.sv = load float, ptr %i.su, align 4, !tbaa !253, !noalias !699
  %i.sw = call float @llvm.fmuladd.f32(float %i.st, float %i.sv, float %i.sr)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i95.i.1
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !253, !noalias !699
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i95.i.1
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !253, !noalias !699
  %i.tb = call float @llvm.fmuladd.f32(float %i.sy, float %i.ta, float %i.sw)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i95.i.2
  %i.td = load float, ptr %i.tc, align 4, !tbaa !253, !noalias !699
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i95.i.2
  %i.tf = load float, ptr %i.te, align 4, !tbaa !253, !noalias !699
  %i.tg = call float @llvm.fmuladd.f32(float %i.td, float %i.tf, float %i.tb) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter268.next.3 = add i64 %niter268, 4         ; 2 uses
  %niter268.ncmp.3 = icmp eq i64 %niter268.next.3, %unroll_iter267
  br i1 %niter268.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !12

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod264.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod264.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.tg, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod266 = icmp ne i64 %xtraiter262, 0
  call void @llvm.assume(i1 %lcmp.mod266)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.tl, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter263 = phi i64 [ %epil.iter263.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i93.i.epil
  %i.ti = load float, ptr %i.th, align 4, !tbaa !253, !noalias !699
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i93.i.epil
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !253, !noalias !699
  %i.tl = call float @llvm.fmuladd.f32(float %i.ti, float %i.tk, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter263.next = add i64 %epil.iter263, 1   ; 2 uses
  %epil.iter263.cmp.not = icmp eq i64 %epil.iter263.next, %xtraiter262
  br i1 %epil.iter263.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !693

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.tg, %.loopexit.loopexit.unr-lcssa ], [ %i.tl, %.lr.ph.i92.i.epil ]
  %i.tm = fadd float %.lcssa209, 0.000000e+00
  %i.tn = insertelement <4 x float> poison, float %.lcssa207, i64 0
  %i.to = insertelement <4 x float> %i.tn, float %.lcssa206, i64 1
  %i.tp = insertelement <4 x float> %i.to, float %.lcssa205, i64 2
  %i.tq = insertelement <4 x float> %i.tp, float %.lcssa208, i64 3
  %i.tr = fadd <4 x float> %i.tq, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ts = insertelement <4 x float> poison, float %.lcssa203, i64 0
  %i.tt = insertelement <4 x float> %i.ts, float %.lcssa, i64 1
  %i.tu = insertelement <4 x float> %i.tt, float %.lcssa204, i64 2
  %i.tv = fadd <4 x float> %i.tu, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float poison>
  %i.tw = shufflevector <4 x float> %i.tv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.08.lcssa.i26121126140151171188214.i = phi float [ 0.000000e+00, %bb.j ], [ %i.tm, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.j ], [ %.lcssa210, %.loopexit.loopexit ]
  %i.tx = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.tr, %.loopexit.loopexit ] ; 6 uses
  %i.ty = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.tw, %.loopexit.loopexit ] ; 2 uses
  %i.tz = fadd float %i.ki, %.08.lcssa.i115119128138153169190212.i ; 4 uses
  %i.ua = insertelement <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.ki, i64 1 ; 2 uses
  %i.ub = fadd <4 x float> %i.ua, %i.tx           ; 6 uses
  %i.uc = fadd <4 x float> %i.ua, %i.ty           ; 4 uses
  %i.ud = shufflevector <4 x float> %i.ty, <4 x float> %i.uc, <4 x i32> <i32 2, i32 0, i32 5, i32 5>
  %i.ue = fneg <4 x float> %i.ud                  ; 3 uses
  %i.uf = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ug = insertelement <4 x float> %i.uf, float %.08.lcssa.i26121126140151171188214.i, i64 3
  %i.uh = fmul <4 x float> %i.ug, %i.ue
  %i.ui = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ub, <4 x float> %i.uc, <4 x float> %i.uh) ; 4 uses
  %i.uj = extractelement <4 x float> %i.ui, i64 1
  %i.uk = extractelement <4 x float> %i.ui, i64 0
  %i.ul = extractelement <4 x float> %i.ub, i64 3
  %i.um = extractelement <4 x float> %i.ub, i64 1
  %i.un = fneg float %i.um
  %12 = extractelement <4 x float> %i.tx, i64 3
  %i.uo = fmul float %12, %i.un
  %i.up = extractelement <4 x float> %i.tx, i64 2 ; 2 uses
  %i.uq = extractelement <4 x float> %i.tx, i64 0
  %i.ur = call noundef float @llvm.fmuladd.f32(float %.08.lcssa.i26121126140151171188214.i, float %i.up, float %i.uo)
  %i.us = insertelement <4 x float> %i.ui, float %i.ur, i64 2
  %i.ut = extractelement <2 x float> %i.jw, i64 0
  %i.uu = extractelement <2 x float> %i.jv, i64 0
  %i.uv = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 0>
  %i.uw = shufflevector <2 x float> %i.jv, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.ux = shufflevector <2 x float> %i.kb, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.uy = shufflevector <3 x float> %i.ux, <3 x float> %i.uw, <4 x i32> <i32 0, i32 5, i32 4, i32 4>
  %i.uz = shufflevector <2 x float> %i.jx, <2 x float> %i.kb, <4 x i32> <i32 0, i32 3, i32 2, i32 2>
  %i.va = extractelement <4 x float> %i.ui, i64 2 ; 2 uses
  %i.vb = fmul float %.08.lcssa.i26121126140151171188214.i, %i.va
  %i.vc = call float @llvm.fmuladd.f32(float %i.tz, float %i.uj, float %i.vb)
  %i.vd = call noundef float @llvm.fmuladd.f32(float %i.ul, float %i.uk, float %i.vc)
  %i.ve = fdiv float 1.000000e+00, %i.vd          ; 3 uses
  %i.vf = fmul float %i.va, %i.ve                 ; 2 uses
  %i.vg = fneg float %i.up
  %13 = shufflevector <4 x float> %i.tx, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.vh = insertelement <2 x float> %13, float %i.tz, i64 0
  %i.vi = shufflevector <4 x float> %i.ue, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vj = insertelement <2 x float> %i.vi, float %i.vg, i64 0
  %i.vk = fmul <2 x float> %i.vh, %i.vj
  %14 = shufflevector <4 x float> %i.ub, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.vl = insertelement <2 x float> %14, float %i.tz, i64 1
  %i.vm = shufflevector <4 x float> %i.tx, <4 x float> %i.uc, <2 x i32> <i32 0, i32 5>
  %i.vn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> %i.vm, <2 x float> %i.vk)
  %i.vo = insertelement <2 x float> poison, float %i.ve, i64 0
  %i.vp = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vq = fmul <2 x float> %i.vn, %i.vp           ; 3 uses
  %i.vr = insertelement <4 x float> poison, float %i.ve, i64 0
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vt = fmul <4 x float> %i.us, %i.vs           ; 5 uses
  %i.vu = fneg float %i.uq
  %i.vv = insertelement <2 x float> poison, float %.08.lcssa.i26121126140151171188214.i, i64 0
  %i.vw = insertelement <2 x float> %i.vv, float %i.tz, i64 1 ; 2 uses
  %i.vx = shufflevector <4 x float> %i.ue, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.vy = insertelement <2 x float> %i.vx, float %i.vu, i64 0
  %i.vz = fmul <2 x float> %i.vw, %i.vy
  %i.wa = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wb = shufflevector <4 x float> %i.ub, <4 x float> %i.uc, <2 x i32> <i32 1, i32 6>
  %i.wc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wa, <2 x float> %i.wb, <2 x float> %i.vz)
  %i.wd = fmul <2 x float> %i.wc, %i.vp           ; 3 uses
  %i.we = fmul float %i.ut, %i.vf
  %i.wf = extractelement <4 x float> %i.vt, i64 1
  %i.wg = call float @llvm.fmuladd.f32(float %i.wf, float %i.uu, float %i.we)
  %i.wh = insertelement <4 x float> %i.uv, float %i.wg, i64 0
  %i.wi = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.vf, i64 1
  %i.wj = shufflevector <2 x float> %i.vq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wk = shufflevector <4 x float> %i.wi, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.wl = fmul <4 x float> %i.wh, %i.wk
  %i.wm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vt, <4 x float> %i.uy, <4 x float> %i.wl) ; 2 uses
  %shift = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.jz, %shift
  %i.wn = shufflevector <4 x float> %i.vt, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 poison, i32 poison>
  %i.wo = shufflevector <2 x float> %i.wd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wp = shufflevector <4 x float> %i.wn, <4 x float> %i.wo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wq = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wr = shufflevector <4 x float> %i.wq, <4 x float> %i.wm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ws = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wp, <4 x float> %i.uz, <4 x float> %i.wr) ; 4 uses
  %i.wt = shufflevector <2 x float> %i.jz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wu = shufflevector <4 x float> %i.ws, <4 x float> %i.wt, <4 x i32> <i32 0, i32 5, i32 4, i32 5>
  %i.wv = fmul <4 x float> %i.wu, %i.wk
  %i.ww = shufflevector <2 x float> %i.wd, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.wx = shufflevector <4 x float> %i.ww, <4 x float> %i.vt, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.wy = shufflevector <2 x float> %i.jx, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.wz = shufflevector <2 x float> %i.kc, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.xa = shufflevector <3 x float> %i.wz, <3 x float> %i.wy, <4 x i32> <i32 0, i32 5, i32 4, i32 5>
  %i.xb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wx, <4 x float> %i.xa, <4 x float> %i.wv) ; 2 uses
  %i.xc = extractelement <2 x float> %i.vq, i64 0
  %i.xd = fmul float %i.ka, %i.xc
  %i.xe = shufflevector <4 x float> %i.vt, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.xf = shufflevector <4 x float> %i.xe, <4 x float> %i.wo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xg = shufflevector <2 x float> %i.kc, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.xh = insertelement <3 x float> %i.xg, float %i.jy, i64 2
  %i.xi = shufflevector <3 x float> %i.xh, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.xj = insertelement <4 x float> %i.xb, float %i.xd, i64 0
  %i.xk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xf, <4 x float> %i.xi, <4 x float> %i.xj) ; 4 uses
  %i.xl = extractelement <4 x float> %i.xk, i64 0
  %i.xm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.xn = shufflevector <2 x float> %i.jw, <2 x float> %i.jz, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.xo = insertelement <4 x float> %i.xn, float 0.000000e+00, i64 3
  %i.xp = insertelement <4 x float> %i.xo, float %i.ka, i64 2 ; 3 uses
  %i.xq = shufflevector <4 x float> %i.ws, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.xr = fmul <4 x float> %i.xp, %i.xq
  %i.xs = shufflevector <2 x float> %i.jv, <2 x float> %i.jx, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.xt = insertelement <4 x float> %i.xs, float 0.000000e+00, i64 3
  %i.xu = insertelement <4 x float> %i.xt, float %i.jy, i64 2 ; 3 uses
  %i.xv = shufflevector <4 x float> %i.wm, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.xw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> %i.xv, <4 x float> %i.xr)
  %i.xx = shufflevector <2 x float> %i.kb, <2 x float> %i.kc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.xy = insertelement <4 x float> %i.xx, float 0.000000e+00, i64 3
  %i.xz = insertelement <4 x float> %i.xy, float %i.kd, i64 2 ; 3 uses
  %i.ya = shufflevector <4 x float> %i.ws, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.yb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xz, <4 x float> %i.ya, <4 x float> %i.xw)
  store <4 x float> %i.yb, ptr %i.xm, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.yd = shufflevector <4 x float> %i.xb, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.ye = fmul <4 x float> %i.xp, %i.yd
  %i.yf = shufflevector <4 x float> %i.ws, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.yg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> %i.yf, <4 x float> %i.ye)
  %i.yh = shufflevector <4 x float> %i.xk, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.yi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xz, <4 x float> %i.yh, <4 x float> %i.yg)
  store <4 x float> %i.yi, ptr %i.yc, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.yk = extractelement <2 x float> %i.wd, i64 0
  %i.yl = call noundef float @llvm.fmuladd.f32(float %i.yk, float %i.kd, float %i.xl)
  %i.ym = shufflevector <4 x float> %i.xk, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.yn = fmul <4 x float> %i.xp, %i.ym
  %i.yo = shufflevector <4 x float> %i.xk, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.yp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> %i.yo, <4 x float> %i.yn)
  %i.yq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.yl, i64 0
  %i.yr = shufflevector <4 x float> %i.yq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ys = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xz, <4 x float> %i.yr, <4 x float> %i.yp)
  store <4 x float> %i.ys, ptr %i.yj, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.yu = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yt, ptr noundef nonnull align 8 dereferenceable(204) %9)
          to label %bb.k unwind label %bb.p       ; 0 uses

bb.k:                                             ; preds = %.loopexit
  %i.yv = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 2 uses
  %i.yw = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yv, ptr noundef nonnull align 8 dereferenceable(204) %10)
          to label %bb.l unwind label %bb.p       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.yx = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 2 uses
  %i.yy = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yx, ptr noundef nonnull align 8 dereferenceable(204) %11)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.yz = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yz, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !260
  %i.za = getelementptr inbounds nuw i8, ptr %3, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.za, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !260
  %i.zb = load <2 x float>, ptr %i.cg, align 8, !tbaa !253
  %i.zc = load <2 x float>, ptr %i.ch, align 8, !tbaa !253 ; 3 uses
  %i.zd = fsub <2 x float> %i.zb, %i.zc
  %i.ze = load float, ptr %i.ci, align 8, !tbaa !253
  %i.zf = load float, ptr %i.cj, align 8, !tbaa !253 ; 2 uses
  %i.zg = fsub float %i.ze, %i.zf
  %.sroa.3.12.vec.insert.i66 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zg, i64 0
  %i.zh = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x float> %i.zd, ptr %i.zh, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i66, ptr %.sroa.52.0..sroa_idx, align 8, !tbaa !259
  %i.zi = load float, ptr %i.cm, align 8, !tbaa !253, !noalias !700
  %i.zj = load float, ptr %i.cn, align 8, !tbaa !253, !noalias !700
  %i.zk = load float, ptr %i.co, align 8, !tbaa !253, !noalias !700
  %i.zl = extractelement <2 x float> %i.zc, i64 0
  %i.zm = extractelement <2 x float> %i.zc, i64 1
  %i.zn = load ptr, ptr %i.bv, align 8, !tbaa !170
  %i.zo = getelementptr inbounds [256 x i8], ptr %i.zn, i64 %i.bx ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zr = load <2 x float>, ptr %i.cd, align 8, !tbaa !253, !noalias !700 ; 2 uses
  %i.zs = load <2 x float>, ptr %i.ck, align 8, !tbaa !253, !noalias !700 ; 2 uses
  %i.zt = load <2 x float>, ptr %i.cl, align 8, !tbaa !253, !noalias !700 ; 2 uses
  %i.zu = fneg float %i.zl                        ; 2 uses
  %i.zv = fneg float %i.zm                        ; 2 uses
  %i.zw = fneg float %i.zf
  %i.zx = insertelement <2 x float> poison, float %i.zv, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = fmul <2 x float> %i.zs, %i.zy
  %i.aaa = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.aab = shufflevector <2 x float> %i.aaa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zr, <2 x float> %i.aab, <2 x float> %i.zz)
  %i.aad = insertelement <2 x float> poison, float %i.zw, i64 0 ; 2 uses
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zt, <2 x float> %i.aae, <2 x float> %i.aac)
  %i.aag = load float, ptr %i.zq, align 4, !tbaa !253 ; 2 uses
  %i.aah = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.aai = shufflevector <2 x float> %i.aah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaj = load <2 x float>, ptr %i.zp, align 4, !tbaa !253 ; 4 uses
  %i.aak = shufflevector <2 x float> %i.aaj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aal = shufflevector <2 x float> %i.aaj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aam = fmul <2 x float> %i.zs, %i.aal
  %i.aan = shufflevector <2 x float> %i.aaj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aan, <2 x float> %i.zr, <2 x float> %i.aam)
  %i.aap = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aai, <2 x float> %i.zt, <2 x float> %i.aao)
  %i.aaq = insertelement <2 x float> poison, float %i.zj, i64 0
  %i.aar = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aas = insertelement <2 x float> %i.aaj, float %i.zv, i64 0
  %i.aat = fmul <2 x float> %i.aar, %i.aas
  %i.aau = insertelement <2 x float> poison, float %i.zi, i64 0
  %i.aav = shufflevector <2 x float> %i.aau, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaw = insertelement <2 x float> %i.aak, float %i.zu, i64 0
  %i.aax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aav, <2 x float> %i.aaw, <2 x float> %i.aat)
  %i.aay = insertelement <2 x float> poison, float %i.zk, i64 0
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aba = insertelement <2 x float> %i.aad, float %i.aag, i64 1
  %i.abb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaz, <2 x float> %i.aba, <2 x float> %i.aax) ; 2 uses
  %i.abc = fadd <2 x float> %i.aaf, %i.aap
  %shift199 = shufflevector <2 x float> %i.abb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop200 = fadd <2 x float> %i.abb, %shift199
  %.sroa.3.12.vec.insert.i4.i.i202 = insertelement <2 x float> %foldExtExtBinop200, float 0.000000e+00, i64 1
  %i.abd = getelementptr inbounds nuw i8, ptr %3, i64 856
  store <2 x float> %i.abc, ptr %i.abd, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 864
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i202, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !259
  %i.abe = load ptr, ptr %i.eu, align 8, !tbaa !353
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 132 ; 2 uses
  %i.abg = load i8, ptr %i.abf, align 4
  %i.abh = or i8 %i.abg, 1
  store i8 %i.abh, ptr %i.abf, align 4
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 1216
  invoke void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.abi, ptr noundef nonnull align 8 dereferenceable(872) %3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.yx) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.yv) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.yt) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void

bb.o:                                             ; preds = %bb.a
  %i.abj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.q

bb.p:                                             ; preds = %bb.g, %bb.h, %bb.i, %.loopexit, %bb.k, %bb.l, %bb.m
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
end_hunk_1
begin_hunk_2_@_ZNK15btSoftColliders14CollideSDF_RDF6DoNodeERN10btSoftBody4FaceE:bb.a
  %i.ra = call float @llvm.fmuladd.f32(float %i.qx, float %i.qz, float %.089.i76.i)
  %indvars.iv.next.i77.i = or disjoint i64 %indvars.iv.i75.i, 1 ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i77.i
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !253, !noalias !1486
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv.next.i77.i
  %i.re = load float, ptr %i.rd, align 4, !tbaa !253, !noalias !1486
  %i.rf = call float @llvm.fmuladd.f32(float %i.rc, float %i.re, float %i.ra)
  %indvars.iv.next.i77.i.1 = or disjoint i64 %indvars.iv.i75.i, 2 ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i77.i.1
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !253, !noalias !1486
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv.next.i77.i.1
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !253, !noalias !1486
  %i.rk = call float @llvm.fmuladd.f32(float %i.rh, float %i.rj, float %i.rf)
  %indvars.iv.next.i77.i.2 = or disjoint i64 %indvars.iv.i75.i, 3 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i77.i.2
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !253, !noalias !1486
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv.next.i77.i.2
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !253, !noalias !1486
  %i.rp = call float @llvm.fmuladd.f32(float %i.rm, float %i.ro, float %i.rk) ; 3 uses
  %indvars.iv.next.i77.i.3 = add nuw nsw i64 %indvars.iv.i75.i, 4 ; 2 uses
  %niter284.next.3 = add i64 %niter284, 4         ; 2 uses
  %niter284.ncmp.3 = icmp eq i64 %niter284.next.3, %unroll_iter283
  br i1 %niter284.ncmp.3, label %.lr.ph.i83.i.preheader.unr-lcssa, label %.lr.ph.i74.i, !llvm.loop !12

.lr.ph.i83.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i74.i
  %lcmp.mod280.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod280.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil.preheader

.lr.ph.i74.i.epil.preheader:                      ; preds = %.lr.ph.i83.i.preheader.unr-lcssa, %.lr.ph.i74.i.preheader
  %indvars.iv.i75.i.epil.init = phi i64 [ 0, %.lr.ph.i74.i.preheader ], [ %indvars.iv.next.i77.i.3, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %.089.i76.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i74.i.preheader ], [ %i.rp, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %lcmp.mod282 = icmp ne i64 %xtraiter278, 0
  call void @llvm.assume(i1 %lcmp.mod282)
  br label %.lr.ph.i74.i.epil

.lr.ph.i74.i.epil:                                ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i74.i.epil.preheader
  %indvars.iv.i75.i.epil = phi i64 [ %indvars.iv.next.i77.i.epil, %.lr.ph.i74.i.epil ], [ %indvars.iv.i75.i.epil.init, %.lr.ph.i74.i.epil.preheader ] ; 3 uses
  %.089.i76.i.epil = phi float [ %i.ru, %.lr.ph.i74.i.epil ], [ %.089.i76.i.epil.init, %.lr.ph.i74.i.epil.preheader ]
  %epil.iter279 = phi i64 [ %epil.iter279.next, %.lr.ph.i74.i.epil ], [ 0, %.lr.ph.i74.i.epil.preheader ]
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.i75.i.epil
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !253, !noalias !1486
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv.i75.i.epil
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !253, !noalias !1486
  %i.ru = call float @llvm.fmuladd.f32(float %i.rr, float %i.rt, float %.089.i76.i.epil) ; 2 uses
  %indvars.iv.next.i77.i.epil = add nuw nsw i64 %indvars.iv.i75.i.epil, 1
  %epil.iter279.next = add i64 %epil.iter279, 1   ; 2 uses
  %epil.iter279.cmp.not = icmp eq i64 %epil.iter279.next, %xtraiter278
  br i1 %epil.iter279.cmp.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil, !llvm.loop !1481

.lr.ph.i83.i.preheader:                           ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i83.i.preheader.unr-lcssa
  %.lcssa234 = phi float [ %i.rp, %.lr.ph.i83.i.preheader.unr-lcssa ], [ %i.ru, %.lr.ph.i74.i.epil ]
  %xtraiter285 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.rv = icmp ult i64 %i.ku, 3
  br i1 %i.rv, label %.lr.ph.i83.i.epil.preheader, label %.lr.ph.i83.i.preheader.new

.lr.ph.i83.i.preheader.new:                       ; preds = %.lr.ph.i83.i.preheader
  %unroll_iter290 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.lr.ph.i83.i, %.lr.ph.i83.i.preheader.new
  %indvars.iv.i84.i = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i83.i ] ; 6 uses
  %.089.i85.i = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader.new ], [ %i.sp, %.lr.ph.i83.i ]
  %niter291 = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %niter291.next.3, %.lr.ph.i83.i ]
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.i84.i
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !253, !noalias !1486
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i84.i
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !253, !noalias !1486
  %i.sa = call float @llvm.fmuladd.f32(float %i.rx, float %i.rz, float %.089.i85.i)
  %indvars.iv.next.i86.i = or disjoint i64 %indvars.iv.i84.i, 1 ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i86.i
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !253, !noalias !1486
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i86.i
  %i.se = load float, ptr %i.sd, align 4, !tbaa !253, !noalias !1486
  %i.sf = call float @llvm.fmuladd.f32(float %i.sc, float %i.se, float %i.sa)
  %indvars.iv.next.i86.i.1 = or disjoint i64 %indvars.iv.i84.i, 2 ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i86.i.1
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !253, !noalias !1486
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i86.i.1
  %i.sj = load float, ptr %i.si, align 4, !tbaa !253, !noalias !1486
  %i.sk = call float @llvm.fmuladd.f32(float %i.sh, float %i.sj, float %i.sf)
  %indvars.iv.next.i86.i.2 = or disjoint i64 %indvars.iv.i84.i, 3 ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i86.i.2
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !253, !noalias !1486
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i86.i.2
  %i.so = load float, ptr %i.sn, align 4, !tbaa !253, !noalias !1486
  %i.sp = call float @llvm.fmuladd.f32(float %i.sm, float %i.so, float %i.sk) ; 3 uses
  %indvars.iv.next.i86.i.3 = add nuw nsw i64 %indvars.iv.i84.i, 4 ; 2 uses
  %niter291.next.3 = add i64 %niter291, 4         ; 2 uses
  %niter291.ncmp.3 = icmp eq i64 %niter291.next.3, %unroll_iter290
  br i1 %niter291.ncmp.3, label %.lr.ph.i92.i.preheader.unr-lcssa, label %.lr.ph.i83.i, !llvm.loop !12

.lr.ph.i92.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i83.i
  %lcmp.mod287.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod287.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil.preheader

.lr.ph.i83.i.epil.preheader:                      ; preds = %.lr.ph.i92.i.preheader.unr-lcssa, %.lr.ph.i83.i.preheader
  %indvars.iv.i84.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.preheader ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %.089.i85.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader ], [ %i.sp, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %lcmp.mod289 = icmp ne i64 %xtraiter285, 0
  call void @llvm.assume(i1 %lcmp.mod289)
  br label %.lr.ph.i83.i.epil

.lr.ph.i83.i.epil:                                ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i83.i.epil.preheader
  %indvars.iv.i84.i.epil = phi i64 [ %indvars.iv.next.i86.i.epil, %.lr.ph.i83.i.epil ], [ %indvars.iv.i84.i.epil.init, %.lr.ph.i83.i.epil.preheader ] ; 3 uses
  %.089.i85.i.epil = phi float [ %i.su, %.lr.ph.i83.i.epil ], [ %.089.i85.i.epil.init, %.lr.ph.i83.i.epil.preheader ]
  %epil.iter286 = phi i64 [ %epil.iter286.next, %.lr.ph.i83.i.epil ], [ 0, %.lr.ph.i83.i.epil.preheader ]
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.i84.i.epil
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !253, !noalias !1486
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i84.i.epil
  %i.st = load float, ptr %i.ss, align 4, !tbaa !253, !noalias !1486
  %i.su = call float @llvm.fmuladd.f32(float %i.sr, float %i.st, float %.089.i85.i.epil) ; 2 uses
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter286.next = add i64 %epil.iter286, 1   ; 2 uses
  %epil.iter286.cmp.not = icmp eq i64 %epil.iter286.next, %xtraiter285
  br i1 %epil.iter286.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !1482

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa233 = phi float [ %i.sp, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.su, %.lr.ph.i83.i.epil ]
  %xtraiter292 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.sv = icmp ult i64 %i.ku, 3
  br i1 %i.sv, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter297 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.tp, %.lr.ph.i92.i ]
  %niter298 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter298.next.3, %.lr.ph.i92.i ]
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.i93.i
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !253, !noalias !1486
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.i93.i
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !253, !noalias !1486
  %i.ta = call float @llvm.fmuladd.f32(float %i.sx, float %i.sz, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i95.i
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !253, !noalias !1486
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i95.i
  %i.te = load float, ptr %i.td, align 4, !tbaa !253, !noalias !1486
  %i.tf = call float @llvm.fmuladd.f32(float %i.tc, float %i.te, float %i.ta)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i95.i.1
  %i.th = load float, ptr %i.tg, align 4, !tbaa !253, !noalias !1486
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i95.i.1
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !253, !noalias !1486
  %i.tk = call float @llvm.fmuladd.f32(float %i.th, float %i.tj, float %i.tf)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next.i95.i.2
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !253, !noalias !1486
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i95.i.2
  %i.to = load float, ptr %i.tn, align 4, !tbaa !253, !noalias !1486
  %i.tp = call float @llvm.fmuladd.f32(float %i.tm, float %i.to, float %i.tk) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter298.next.3 = add i64 %niter298, 4         ; 2 uses
  %niter298.ncmp.3 = icmp eq i64 %niter298.next.3, %unroll_iter297
  br i1 %niter298.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !12

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod294.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod294.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.tp, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod296 = icmp ne i64 %xtraiter292, 0
  call void @llvm.assume(i1 %lcmp.mod296)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.tu, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter293 = phi i64 [ %epil.iter293.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.i93.i.epil
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !253, !noalias !1486
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.i93.i.epil
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !253, !noalias !1486
  %i.tu = call float @llvm.fmuladd.f32(float %i.tr, float %i.tt, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter293.next = add i64 %epil.iter293, 1   ; 2 uses
  %epil.iter293.cmp.not = icmp eq i64 %epil.iter293.next, %xtraiter292
  br i1 %epil.iter293.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !1483

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.tp, %.loopexit.loopexit.unr-lcssa ], [ %i.tu, %.lr.ph.i92.i.epil ]
  %i.tv = insertelement <4 x float> poison, float %.lcssa238, i64 0
  %i.tw = insertelement <4 x float> %i.tv, float %.lcssa235, i64 1
  %i.tx = insertelement <4 x float> %i.tw, float %.lcssa237, i64 2
  %i.ty = insertelement <4 x float> %i.tx, float %.lcssa239, i64 3
  %i.tz = fadd <4 x float> %i.ty, zeroinitializer
  %i.ua = insertelement <4 x float> poison, float %.lcssa233, i64 0
  %i.ub = insertelement <4 x float> %i.ua, float %.lcssa, i64 1
  %i.uc = insertelement <4 x float> %i.ub, float %.lcssa234, i64 2
  %i.ud = fadd <4 x float> %i.uc, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float poison>
  %i.ue = shufflevector <4 x float> %i.ud, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.y ], [ %.lcssa240, %.loopexit.loopexit ]
  %.08.lcssa.i53157165194208.i = phi float [ 0.000000e+00, %bb.y ], [ %.lcssa236, %.loopexit.loopexit ]
  %i.uf = phi <4 x float> [ zeroinitializer, %bb.y ], [ %i.ue, %.loopexit.loopexit ] ; 2 uses
  %i.ug = phi <4 x float> [ zeroinitializer, %bb.y ], [ %i.tz, %.loopexit.loopexit ] ; 8 uses
  %i.uh = fadd float %i.en, %.08.lcssa.i115119128138153169190212.i ; 3 uses
  %i.ui = fadd float %i.en, %.08.lcssa.i53157165194208.i ; 4 uses
  %i.uj = insertelement <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.en, i64 1
  %i.uk = fadd <4 x float> %i.uj, %i.uf           ; 4 uses
  %i.ul = shufflevector <4 x float> %i.uf, <4 x float> %i.uk, <4 x i32> <i32 2, i32 0, i32 5, i32 5>
  %i.um = fneg <4 x float> %i.ul                  ; 3 uses
  %i.un = insertelement <4 x float> %i.ug, float %i.ui, i64 0
  %i.uo = fmul <4 x float> %i.un, %i.um
  %i.up = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 1, i32 0>
  %i.uq = insertelement <4 x float> %i.up, float %i.ui, i64 1
  %i.ur = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uq, <4 x float> %i.uk, <4 x float> %i.uo) ; 6 uses
  %i.us = shufflevector <4 x float> %i.ug, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.ut = insertelement <2 x float> %i.us, float %i.ui, i64 0
  %i.uu = fneg <2 x float> %i.ut
  %i.uv = insertelement <4 x float> %i.ug, float %i.uh, i64 1 ; 2 uses
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ux = shufflevector <4 x float> %i.um, <4 x float> %i.ur, <4 x i32> <i32 poison, i32 poison, i32 0, i32 6>
  %i.uy = shufflevector <2 x float> %i.uu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> %i.ux, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.va = fmul <4 x float> %i.uw, %i.uz
  %i.vb = shufflevector <4 x float> %i.uv, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 1>
  %i.vc = shufflevector <4 x float> %i.uk, <4 x float> %i.ur, <4 x i32> <i32 poison, i32 poison, i32 1, i32 5>
  %i.vd = shufflevector <4 x float> %i.vc, <4 x float> %i.ug, <4 x i32> <i32 5, i32 6, i32 2, i32 3>
  %i.ve = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vb, <4 x float> %i.vd, <4 x float> %i.va) ; 3 uses
  %i.vf = extractelement <4 x float> %i.ve, i64 3
  %i.vg = shufflevector <4 x float> %i.ur, <4 x float> %i.ve, <4 x i32> <i32 1, i32 3, i32 4, i32 1>
  %i.vh = shufflevector <4 x float> %i.ur, <4 x float> %i.ve, <4 x i32> <i32 2, i32 6, i32 5, i32 2>
  %i.vi = extractelement <4 x float> %i.ur, i64 0
  %i.vj = extractelement <4 x float> %i.ug, i64 0
  %i.vk = call noundef float @llvm.fmuladd.f32(float %i.vj, float %i.vi, float %i.vf)
  %i.vl = fdiv float 1.000000e+00, %i.vk
  %i.vm = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.vn = fneg <4 x float> %i.ug
  %i.vo = shufflevector <4 x float> %i.vn, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.vp = shufflevector <2 x float> %i.vm, <2 x float> %i.vo, <2 x i32> <i32 0, i32 2>
  %i.vq = shufflevector <4 x float> %i.um, <4 x float> %i.ug, <2 x i32> <i32 1, i32 7>
  %i.vr = fmul <2 x float> %i.vp, %i.vq
  %i.vs = insertelement <2 x float> %i.us, float %i.uh, i64 1
  %i.vt = shufflevector <4 x float> %i.uk, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.vu = insertelement <2 x float> %i.vt, float %i.ui, i64 1
  %i.vv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vs, <2 x float> %i.vu, <2 x float> %i.vr)
  %i.vw = shufflevector <4 x float> %i.ur, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.vx = shufflevector <2 x float> %i.vv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vy = shufflevector <4 x float> %i.vw, <4 x float> %i.vx, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.vz = insertelement <4 x float> poison, float %i.vl, i64 0
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.wb = fmul <4 x float> %i.vy, %i.wa           ; 3 uses
  %i.wc = fmul <4 x float> %i.vg, %i.wa           ; 3 uses
  %i.wd = fmul <4 x float> %i.vh, %i.wa           ; 3 uses
  %i.we = fmul <4 x float> %i.kj, %i.wd
  %i.wf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wc, <4 x float> %i.kh, <4 x float> %i.we)
  %i.wg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wb, <4 x float> %i.km, <4 x float> %i.wf) ; 6 uses
  %i.wh = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wi = insertelement <2 x float> %i.wh, float %i.kk, i64 1 ; 2 uses
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.wk = shufflevector <4 x float> %i.wd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.wl = fmul <4 x float> %i.wj, %i.wk
  %i.wm = shufflevector <4 x float> %i.wc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.wn = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wo = insertelement <2 x float> %i.wn, float %i.kf, i64 1 ; 2 uses
  %i.wp = shufflevector <2 x float> %i.wo, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.wq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wm, <4 x float> %i.wp, <4 x float> %i.wl)
  %i.wr = shufflevector <4 x float> %i.wb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ws = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wt = insertelement <2 x float> %i.ws, float %i.kn, i64 1 ; 2 uses
  %i.wu = shufflevector <2 x float> %i.wt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.wv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wr, <4 x float> %i.wu, <4 x float> %i.wq) ; 5 uses
  %i.ww = shufflevector <2 x float> %i.ki, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.wx = shufflevector <4 x float> %i.wd, <4 x float> %i.ww, <4 x i32> <i32 2, i32 4, i32 poison, i32 5>
  %i.wy = insertelement <4 x float> %i.wx, float %i.kk, i64 2
  %i.wz = shufflevector <4 x float> %i.wg, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.xa = insertelement <2 x float> %i.wz, float %i.kk, i64 0
  %i.xb = shufflevector <2 x float> %i.xa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.xc = fmul <4 x float> %i.wy, %i.xb
  %i.xd = shufflevector <2 x float> %i.kg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.xe = shufflevector <4 x float> %i.wc, <4 x float> %i.xd, <4 x i32> <i32 2, i32 4, i32 poison, i32 5>
  %i.xf = shufflevector <4 x float> %i.xe, <4 x float> %i.wg, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.xg = shufflevector <4 x float> %i.wg, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.xh = insertelement <2 x float> %i.xg, float %i.kf, i64 0
  %i.xi = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.xj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xf, <4 x float> %i.xi, <4 x float> %i.xc)
  %i.xk = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.xl = shufflevector <4 x float> %i.wb, <4 x float> %i.xk, <4 x i32> <i32 2, i32 4, i32 poison, i32 5>
  %i.xm = shufflevector <4 x float> %i.xl, <4 x float> %i.wg, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.xn = shufflevector <4 x float> %i.wg, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.xo = insertelement <2 x float> %i.xn, float %i.kn, i64 0
  %i.xp = shufflevector <2 x float> %i.xo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.xq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xm, <4 x float> %i.xp, <4 x float> %i.xj) ; 3 uses
  %i.xr = insertelement <4 x float> %i.ww, float %i.kk, i64 2
  %i.xs = shufflevector <4 x float> %i.wv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.xt = fmul <4 x float> %i.xr, %i.xs
  %i.xu = insertelement <4 x float> %i.xd, float %i.kf, i64 2
  %i.xv = shufflevector <4 x float> %i.wg, <4 x float> %i.wv, <4 x i32> <i32 3, i32 3, i32 3, i32 4>
  %i.xw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> %i.xv, <4 x float> %i.xt)
  %i.xx = insertelement <4 x float> %i.xk, float %i.kn, i64 2
  %i.xy = shufflevector <4 x float> %i.wv, <4 x float> %i.xq, <4 x i32> <i32 2, i32 2, i32 2, i32 4>
  %i.xz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xx, <4 x float> %i.xy, <4 x float> %i.xw) ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.yb = shufflevector <4 x float> %i.xq, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 3, i32 2, i32 7>
  store <4 x float> %i.yb, ptr %i.ya, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.yd = insertelement <4 x float> %i.xz, float 0.000000e+00, i64 3
  store <4 x float> %i.yd, ptr %i.yc, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.yf = extractelement <4 x float> %i.xz, i64 3
  store float %i.yf, ptr %i.ye, align 8
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.yg = shufflevector <4 x float> %i.wv, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.yh = fmul <2 x float> %i.wi, %i.yg
  %i.yi = shufflevector <4 x float> %i.wv, <4 x float> poison, <2 x i32> zeroinitializer
  %i.yj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wo, <2 x float> %i.yi, <2 x float> %i.yh)
  %i.yk = shufflevector <4 x float> %i.xq, <4 x float> poison, <2 x i32> zeroinitializer
  %i.yl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> %i.yk, <2 x float> %i.yj)
  store <2 x float> %i.yl, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.17117.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 108
  store float 0.000000e+00, ptr %.sroa.17117.32..sroa_idx, align 4, !tbaa !259
  %i.ym = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.yn = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ym, ptr noundef nonnull align 8 dereferenceable(204) %10)
          to label %bb.z unwind label %bb.ac      ; 0 uses

bb.z:                                             ; preds = %.loopexit
  %i.yo = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.yp = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yo, ptr noundef nonnull align 8 dereferenceable(204) %11)
          to label %bb.aa unwind label %bb.ac     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.yq = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.yr = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yq, ptr noundef nonnull align 8 dereferenceable(204) %12)
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ys = getelementptr inbounds nuw i8, ptr %2, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ys, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !260
  %i.yt = getelementptr inbounds nuw i8, ptr %2, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yt, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !260
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.ad

bb.ac:                                            ; preds = %bb.v, %bb.w, %bb.x, %bb.aa, %bb.z, %.loopexit
  %i.yu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.ag

bb.ad:                                            ; preds = %bb.j, %bb.ab, %bb.p
  %i.yv = load ptr, ptr %i.cm, align 8, !tbaa !523
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 1344
  invoke void @_ZN20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.yw, ptr noundef nonnull align 8 dereferenceable(904) %2)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.e, %bb.ad
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.i, %bb.ad, %bb.f
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float 0.000000e+00, ptr %i.yy, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.yz = getelementptr inbounds nuw i8, ptr %2, i64 608
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.yz) #39
  %i.za = getelementptr inbounds nuw i8, ptr %2, i64 400
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.za) #39
  %i.zb = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.zb) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.yu, %bb.ac ], [ %i.yx, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @_ZN10btSoftBody22DeformableRigidContactD2Ev(ptr noundef nonnull align 8 dead_on_return(904) dereferenceable(904) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %.pn81.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(904) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !219  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !220
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f
  tail call void @_ZN20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %i.g)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !219
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [904 x i8], ptr %i.j, i64 %i.k ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.l, ptr noundef nonnull align 8 dereferenceable(904) %1, i64 64, i1 false), !tbaa.struct !364
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
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.fadd.v2f32
!471 = !{!"_ZTS20btAlignedObjectArrayIPK10btDbvtNodeE", !470, i64 0, !37, i64 4, !37, i64 8, !437, i64 16, !46, i64 24}
!472 = !{!471, !46, i64 24}
!473 = !{!471, !437, i64 16}
!474 = !{!471, !37, i64 4}
!475 = !{!471, !37, i64 8}
!476 = !{!"_ZTS12btDbvtAabbMm", !53, i64 0, !53, i64 16}
!477 = !{i64 0, i64 16, !259, i64 16, i64 16, !259}
!478 = !{!"_ZTS11btDbvntNode", !476, i64 0, !53, i64 32, !55, i64 48, !36, i64 56, !43, i64 72}
!479 = !{!478, !43, i64 72}
!480 = !{!147, !126, i64 1544}
!481 = !{!"p1 _ZTS24btCollisionObjectWrapper", !43, i64 0}
!482 = !{!"p1 _ZTS11btTransform", !43, i64 0}
!483 = !{!"_ZTS24btCollisionObjectWrapper", !481, i64 0, !57, i64 8, !331, i64 16, !482, i64 24, !482, i64 32, !37, i64 40, !37, i64 44}
!484 = !{!483, !57, i64 8}
!485 = !{!483, !482, i64 24}
!486 = !{i64 4}
!487 = !{!483, !331, i64 16}
!488 = !{!346, !331, i64 0}
!489 = !{!346, !55, i64 40}
!490 = !{!483, !482, i64 32}
!491 = !{!"_ZTSN15btGjkEpaSolver28sResults7eStatusE", !36, i64 0}
!492 = !{!"_ZTSN15btGjkEpaSolver28sResultsE", !491, i64 0, !36, i64 4, !53, i64 36, !55, i64 52}
!493 = !{!492, !55, i64 52}
!494 = !{!381, !320, i64 8}
!495 = !{i64 0, i64 16, !259, i64 16, i64 16, !259, i64 32, i64 1, !259}
!496 = !{!386, !55, i64 92}
!497 = !{!"_ZTSN10btSoftBody6CJointE", !386, i64 0, !37, i64 184, !37, i64 188, !36, i64 192, !53, i64 224, !55, i64 240}
!498 = !{!497, !37, i64 184}
!499 = !{!497, !37, i64 188}
!500 = !{!412, !55, i64 408}
!501 = !{!412, !55, i64 412}
!502 = !{!"_ZTSN10btSoftBody8RContactE", !346, i64 0, !79, i64 64, !52, i64 72, !53, i64 120, !55, i64 136, !55, i64 140, !55, i64 144, !348, i64 152, !348, i64 360, !348, i64 568, !53, i64 776, !53, i64 792}
!503 = !{!502, !79, i64 64}
!504 = !{!502, !55, i64 144}
!505 = !{!"_ZTSN15btSoftColliders13CollideSDF_RSE", !453, i64 0, !284, i64 8, !481, i64 16, !320, i64 24, !55, i64 32, !55, i64 36}
!506 = !{!505, !284, i64 8}
!507 = !{!505, !481, i64 16}
!508 = !{!505, !320, i64 24}
!509 = !{!"_ZTSN15btSoftColliders11ClusterBaseE", !453, i64 0, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24}
!510 = !{!509, !55, i64 8}
!511 = !{!"_ZTSN15btSoftColliders12CollideCL_RSE", !509, i64 0, !284, i64 32, !481, i64 40}
!512 = !{!511, !284, i64 32}
!513 = !{!511, !481, i64 40}
!514 = !{!509, !55, i64 12}
!515 = !{!509, !55, i64 16}
!516 = !{!509, !55, i64 20}
!517 = !{!147, !126, i64 1680}
!518 = !{!"_ZTSN15btSoftColliders13CollideSDF_RDE", !453, i64 0, !284, i64 8, !481, i64 16, !320, i64 24, !55, i64 32, !55, i64 36}
!519 = !{!518, !284, i64 8}
!520 = !{!518, !481, i64 16}
!521 = !{!518, !320, i64 24}
!522 = !{!"_ZTSN15btSoftColliders14CollideSDF_RDFE", !453, i64 0, !284, i64 8, !481, i64 16, !320, i64 24, !55, i64 32, !55, i64 36}
!523 = !{!522, !284, i64 8}
!524 = !{!522, !481, i64 16}
!525 = !{!522, !320, i64 24}
!526 = !{!"_ZTSN15btSoftColliders12CollideVF_SSE", !453, i64 0, !36, i64 8, !55, i64 24}
!527 = !{!526, !55, i64 24}
!528 = !{!"_ZTSN15btSoftColliders12CollideVF_DDE", !453, i64 0, !36, i64 8, !55, i64 24, !46, i64 28}
!529 = !{!528, !46, i64 28}
!530 = !{!"_ZTSN15btSoftColliders12CollideFF_DDE", !453, i64 0, !36, i64 8, !55, i64 24, !46, i64 28}
!531 = !{!530, !46, i64 28}
!532 = !{!129, !128, i64 16}
!533 = !{!478, !55, i64 48}
!534 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt7sStknNNELj16EE"}
!535 = !{!"p1 _ZTSN6btDbvt7sStknNNE", !43, i64 0}
!536 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt7sStknNNEE", !534, i64 0, !37, i64 4, !37, i64 8, !535, i64 16, !46, i64 24}
!537 = !{!536, !535, i64 16}
!538 = !{!"_ZTSN15btSoftColliders10CollideCCDE", !453, i64 0, !36, i64 8, !55, i64 24, !55, i64 28, !46, i64 32}
!539 = !{!538, !46, i64 32}
!540 = !{!"_ZTS18btAlignedAllocatorI9btHashPtrLj16EE"}
!541 = !{!"p1 _ZTS9btHashPtr", !43, i64 0}
!542 = !{!"_ZTS20btAlignedObjectArrayI9btHashPtrE", !540, i64 0, !37, i64 4, !37, i64 8, !541, i64 16, !46, i64 24}
!543 = !{!542, !46, i64 24}
!544 = !{!542, !541, i64 16}
!545 = !{!542, !37, i64 4}
!546 = !{!542, !37, i64 8}
!547 = !{!"_ZTS18btVector3FloatData", !36, i64 0}
!548 = !{!147, !55, i64 488}
!549 = !{!58, !55, i64 244}
!550 = !{!"_ZTS13btConvexShape", !281, i64 0}
!551 = !{!"_ZTS21btConvexInternalShape", !550, i64 0, !53, i64 32, !53, i64 48, !55, i64 64, !55, i64 68}
!552 = !{!551, !55, i64 64}
!553 = !{!"_ZTS27btSoftClusterCollisionShape", !551, i64 0, !377, i64 72}
!554 = !{!553, !377, i64 72}
!555 = !{!88, !88, i64 0}
!556 = !{i64 0, i64 8, !316, i64 8, i64 8, !555, i64 16, i64 16, !259, i64 32, i64 16, !259, i64 48, i64 16, !259, i64 64, i64 4, !253, i64 68, i64 4, !253, i64 72, i64 4, !253, i64 76, i64 4, !253, i64 80, i64 8, !332}
!557 = !{!538, !55, i64 28}
!558 = distinct !{!558, !264}
!559 = distinct !{!559, !261}
!560 = distinct !{!560, i1 true, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f"}
!561 = distinct !{!561, !560, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f: argument 0"}
!562 = distinct !{!562, i1 true, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_"}
!563 = distinct !{!563, !562, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_: argument 0"}
!564 = distinct !{!564, !261}
!565 = !{!147, !59, i64 408}
!566 = !{!561}
!567 = !{!563}
!568 = !{!563, !561}
!569 = !{!147, !43, i64 880}
!570 = !{!147, !55, i64 1504}
!571 = distinct !{!571, !261, !296, !297}
!572 = distinct !{!572, !264}
!573 = distinct !{!573, !261, !296}
!574 = distinct !{!574, !261}
!575 = !{!58, !56, i64 192}
!576 = !{!304, !298, i64 32}
!577 = !{!304, !299, i64 40}
!578 = distinct !{!578, !261}
!579 = distinct !{!579, !261}
!580 = distinct !{!580, !261, !296, !297}
!581 = distinct !{!581, !264}
!582 = distinct !{!582, !261, !296}
!583 = distinct !{!583, !261, !296, !297}
!584 = distinct !{!584, !264}
!585 = distinct !{!585, !261, !296}
!586 = distinct !{!586, !261, !296, !297}
!587 = distinct !{!587, !264}
!588 = distinct !{!588, !261, !296}
!589 = distinct !{!589, !261, !296, !297}
!590 = distinct !{!590, !264}
!591 = distinct !{!591, !261, !296}
!592 = distinct !{!592, !261, !296, !297}
!593 = distinct !{!593, !264}
!594 = distinct !{!594, !261, !296}
!595 = distinct !{!595, !261, !296, !297}
!596 = distinct !{!596, !264}
!597 = distinct !{!597, !261, !296}
!598 = distinct !{!598, !261, !296, !297}
!599 = distinct !{!599, !264}
!600 = distinct !{!600, !261, !296}
!601 = distinct !{!601, !261, !296, !297}
!602 = distinct !{!602, !264}
!603 = distinct !{!603, !261, !296}
!604 = distinct !{!604, !261, !296, !297}
!605 = distinct !{!605, !264}
!606 = distinct !{!606, !261, !296}
!607 = distinct !{!607, !261}
!608 = distinct !{!608, !261}
!609 = distinct !{!609, !261}
!610 = distinct !{!610, !261}
!611 = distinct !{!611, i1 true, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f"}
!612 = distinct !{!612, !611, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f: argument 0"}
!613 = distinct !{!613, i1 true, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_"}
!614 = distinct !{!614, !613, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_: argument 0"}
!615 = !{!612}
!616 = !{!614}
!617 = !{!614, !612}
!618 = distinct !{!618, !261}
!619 = distinct !{!619, !261}
!620 = distinct !{!620, !261}
!621 = distinct !{!621, !261}
!622 = distinct !{!622, !261, !296, !297}
!623 = distinct !{!623, !261}
!624 = distinct !{!624, !261, !297, !296}
!625 = distinct !{!625, !261}
!626 = distinct !{!626, !261}
!627 = distinct !{!627, !261}
!628 = distinct !{!628, !261}
!629 = distinct !{!629, !264}
!630 = distinct !{!630, !261, !296, !297}
!631 = distinct !{!631, !261, !297, !296}
!632 = distinct !{!632, !261}
!633 = distinct !{!633, !264}
!634 = distinct !{!634, !261}
!635 = distinct !{!635, !261}
!636 = distinct !{!636, i1 true, !"_ZNK11btTransform7inverseEv"}
!637 = distinct !{!637, !636, !"_ZNK11btTransform7inverseEv: argument 0"}
!638 = distinct !{!638, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!639 = distinct !{!639, !638, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!640 = !{!639, !637}
!641 = !{!637}
!642 = distinct !{!642, !261, !296, !297}
!643 = distinct !{!643, !264}
!644 = distinct !{!644, !261, !296}
!645 = distinct !{!645, !261}
!646 = distinct !{!646, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!647 = distinct !{!647, !646, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!648 = distinct !{!648, i1 true, !"_ZNK11btTransform7inverseEv"}
!649 = distinct !{!649, !648, !"_ZNK11btTransform7inverseEv: argument 0"}
!650 = distinct !{!650, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!651 = distinct !{!651, !650, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!652 = !{!647}
!653 = !{!651, !649}
!654 = distinct !{!654, !261}
!655 = distinct !{!655, !261}
!656 = distinct !{!656, !261}
!657 = !{!302, !37, i64 4}
!658 = !{!302, !301, i64 16}
!659 = !{!360, !360, i64 0}
!660 = !{!303, !37, i64 56}
!661 = !{!303, !37, i64 52}
!662 = !{!361, !37, i64 272}
!663 = !{!361, !360, i64 288}
!664 = !{!303, !37, i64 44}
!665 = !{!303, !37, i64 48}
!666 = !{!303, !55, i64 36}
!667 = !{!303, !37, i64 40}
!668 = !{!361, !37, i64 268}
!669 = distinct !{!669, i1 true, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3"}
!670 = distinct !{!670, !669, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3: argument 0"}
!671 = distinct !{!671, i1 true, !"_ZL5CrossRK9btVector3"}
!672 = distinct !{!672, !671, !"_ZL5CrossRK9btVector3: argument 0"}
!673 = distinct !{!673, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!674 = distinct !{!674, !673, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!675 = distinct !{!675, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!676 = distinct !{!676, !675, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!677 = !{!672, !670}
!678 = !{!674, !670}
!679 = !{!676}
!680 = distinct !{!680, !261}
!681 = distinct !{!681, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!682 = distinct !{!682, !681, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!683 = distinct !{!683, i1 true, !"_ZL12OuterProductPKfS0_S0_S0_S0_S0_i"}
!684 = distinct !{!684, !683, !"_ZL12OuterProductPKfS0_S0_S0_S0_S0_i: argument 0"}
!685 = distinct !{!685, !264}
!686 = distinct !{!686, !264}
!687 = distinct !{!687, !264}
!688 = distinct !{!688, !264}
!689 = distinct !{!689, !264}
!690 = distinct !{!690, !264}
!691 = distinct !{!691, !264}
!692 = distinct !{!692, !264}
!693 = distinct !{!693, !264}
!694 = distinct !{!694, i1 true, !"_ZNK11btTransform7inverseEv"}
!695 = distinct !{!695, !694, !"_ZNK11btTransform7inverseEv: argument 0"}
!696 = distinct !{!696, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!697 = distinct !{!697, !696, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!698 = !{!682}
!699 = !{!684}
!700 = !{!697, !695}
!701 = distinct !{!701, !261, !296, !297}
!702 = distinct !{!702, !264}
!703 = distinct !{!703, !261, !296}
!704 = distinct !{!704, !261, !296, !297}
!705 = distinct !{!705, !264}
!706 = distinct !{!706, !261, !296}
!707 = distinct !{!707, !264}
!708 = distinct !{!708, !264}
!709 = distinct !{!709, !264}
!710 = distinct !{!710, !264}
!711 = distinct !{!711, !264}
!712 = distinct !{!712, !264}
!713 = distinct !{!713, !264}
!714 = distinct !{!714, !264}
!715 = distinct !{!715, !264}
!716 = distinct !{!716, !261, !296, !297}
!717 = distinct !{!717, !264}
!718 = distinct !{!718, !261, !296}
!719 = distinct !{!719, !261, !296, !297}
!720 = distinct !{!720, !264}
!721 = distinct !{!721, !261, !296}
!722 = distinct !{!722, !261, !296, !297}
!723 = distinct !{!723, !264}
!724 = distinct !{!724, !261, !296}
!725 = distinct !{!725, !261, !296, !297}
!726 = distinct !{!726, !264}
!727 = distinct !{!727, !261, !296}
!728 = distinct !{!728, !261, !296, !297}
!729 = distinct !{!729, !264}
!730 = distinct !{!730, !261, !296}
!731 = distinct !{!731, !261, !296, !297}
!732 = distinct !{!732, !264}
!733 = distinct !{!733, !261, !296}
!734 = distinct !{!734, !261, !296, !297}
!735 = distinct !{!735, !264}
!736 = distinct !{!736, !261, !296}
!737 = distinct !{!737, !261, !296, !297}
!738 = distinct !{!738, !264}
!739 = distinct !{!739, !261, !296}
!740 = distinct !{!740, i1 true, !"_ZNK11btTransform7inverseEv"}
!741 = distinct !{!741, !740, !"_ZNK11btTransform7inverseEv: argument 0"}
!742 = distinct !{!742, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!743 = distinct !{!743, !742, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!744 = distinct !{!744, i1 true, !"_ZNK11btTransform7inverseEv"}
!745 = distinct !{!745, !744, !"_ZNK11btTransform7inverseEv: argument 0"}
!746 = distinct !{!746, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!747 = distinct !{!747, !746, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!748 = distinct !{!748, !261, !296, !297}
!749 = distinct !{!749, !264}
!750 = distinct !{!750, !261, !296}
!751 = !{!743, !741}
!752 = !{!741}
!753 = !{!747, !745}
!754 = !{!745}
!755 = distinct !{!755, i1 true, !"_ZNK11btTransform7inverseEv"}
!756 = distinct !{!756, !755, !"_ZNK11btTransform7inverseEv: argument 0"}
!757 = distinct !{!757, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!758 = distinct !{!758, !757, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!759 = distinct !{!759, i1 true, !"_ZNK11btTransform7inverseEv"}
!760 = distinct !{!760, !759, !"_ZNK11btTransform7inverseEv: argument 0"}
!761 = distinct !{!761, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!762 = distinct !{!762, !761, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!763 = distinct !{!763, !261, !296, !297}
!764 = distinct !{!764, !264}
!765 = distinct !{!765, !261, !296}
!766 = !{!758, !756}
!767 = !{!762, !760}
!768 = !{!"_ZTSN10btSoftBody6AJoint5SpecsE", !384, i64 0, !53, i64 12, !388, i64 32}
!769 = !{!768, !388, i64 32}
!770 = distinct !{!770, !261}
!771 = distinct !{!771, !261}
!772 = distinct !{!772, !264}
!773 = distinct !{!773, !261}
!774 = distinct !{!774, !261, !296, !297}
!775 = distinct !{!775, !261}
!776 = distinct !{!776, !261, !297, !296}
!777 = distinct !{!777, !261, !296, !297}
!778 = distinct !{!778, !261, !297, !296}
!779 = distinct !{!779, !264}
!780 = distinct !{!780, !261}
!781 = distinct !{!781, !261}
!782 = distinct !{!782, !261}
!783 = distinct !{!783, !261, !296, !297}
!784 = distinct !{!784, !261, !297, !296}
!785 = distinct !{!785, !261}
!786 = distinct !{!786, !261}
!787 = distinct !{!787, !261}
!788 = distinct !{!788, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!789 = distinct !{!789, !788, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!790 = distinct !{!790, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!791 = distinct !{!791, !790, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!792 = distinct !{!792, i1 true, !"_ZL12OuterProductRK9btVector3S1_"}
!793 = distinct !{!793, !792, !"_ZL12OuterProductRK9btVector3S1_: argument 0"}
!794 = distinct !{!794, !261}
!795 = !{!789}
!796 = !{!791}
!797 = !{!793}
!798 = distinct !{!798, !261}
!799 = !{!399, !55, i64 8}
!800 = !{!399, !55, i64 4}
!801 = distinct !{!801, i1 true, !"_ZNK11btTransform7inverseEv"}
!802 = distinct !{!802, !801, !"_ZNK11btTransform7inverseEv: argument 0"}
!803 = distinct !{!803, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!804 = distinct !{!804, !803, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!805 = distinct !{!805, i1 true, !"_ZNK11btTransformmlERKS_"}
!806 = distinct !{!806, !805, !"_ZNK11btTransformmlERKS_: argument 0"}
!807 = distinct !{!807, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!808 = distinct !{!808, !807, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!809 = !{!804, !802}
!810 = !{!802}
!811 = !{!806}
!812 = !{!808, !806}
!813 = distinct !{!813, !261}
!814 = distinct !{!814, !261}
!815 = distinct !{!815, !264}
!816 = distinct !{!816, !261}
!817 = distinct !{!817, !261}
!818 = distinct !{!818, !261}
!819 = distinct !{!819, !261}
!820 = !{!329, !55, i64 232}
!821 = distinct !{!821, !261, !296, !297}
!822 = distinct !{!822, !261, !297, !296}
!823 = distinct !{!823, !261, !296, !297}
!824 = distinct !{!824, !264}
!825 = distinct !{!825, !261, !296}
!826 = distinct !{!826, i1 false, !"LVerDomain"}
!827 = distinct !{!827, !826}
!828 = distinct !{!828, !826}
!829 = distinct !{!829, !261, !296, !297}
!830 = distinct !{!830, !261}
!831 = distinct !{!831, !261, !296}
!832 = distinct !{!832, !261}
!833 = distinct !{!833, i1 true, !"_ZNK11btMatrix3x37inverseEv"}
!834 = distinct !{!834, !833, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!835 = distinct !{!835, !261}
!836 = !{!827}
!837 = !{!828}
!838 = !{!834}
!839 = distinct !{!839, !261}
!840 = distinct !{!840, !261}
!841 = distinct !{!841, !261}
!842 = distinct !{!842, !261}
!843 = distinct !{!843, !261, !296, !297}
!844 = distinct !{!844, !264}
!845 = distinct !{!845, !261, !296}
!846 = distinct !{!846, !261, !296, !297}
!847 = distinct !{!847, !264}
!848 = distinct !{!848, !261, !296}
!849 = distinct !{!849, !261}
!850 = distinct !{!850, !261}
!851 = distinct !{!851, !261}
!852 = distinct !{!852, !261}
!853 = distinct !{!853, !261}
!854 = distinct !{!854, !261}
!855 = distinct !{!855, !261}
!856 = distinct !{!856, !261}
!857 = distinct !{!857, !261}
!858 = distinct !{!858, !261}
!859 = distinct !{!859, !261, !296, !297}
!860 = distinct !{!860, !264}
!861 = distinct !{!861, !261, !296}
!862 = distinct !{!862, !261, !296, !297}
!863 = distinct !{!863, !264}
!864 = distinct !{!864, !261, !296}
!865 = distinct !{!865, !261}
!866 = distinct !{!866, !261}
!867 = distinct !{!867, !261}
!868 = distinct !{!868, !261}
!869 = distinct !{!869, !261}
!870 = distinct !{!870, !261, !296, !297}
!871 = distinct !{!871, !264}
!872 = distinct !{!872, !261, !296}
!873 = distinct !{!873, !261}
!874 = distinct !{!874, !261, !296, !297}
end_hunk_3
