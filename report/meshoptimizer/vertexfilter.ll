Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexfilter?download=true
inline.NumInlined: 39
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@meshopt_decodeFilterQuat:bb.a
  %.16..16. = load <4 x float>, ptr %.16..16..sroa_idx, align 16 ; 3 uses
  %i.bt = shufflevector <4 x float> %.0..0., <4 x float> %.16..16., <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bu = shufflevector <4 x float> %.0..0., <4 x float> %.16..16., <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bv = bitcast <4 x float> %i.bt to <4 x i32>  ; 2 uses
  %i.bw = shl <4 x i32> %i.bv, splat (i32 16)
  %i.bx = ashr exact <4 x i32> %i.bw, splat (i32 16)
  %i.by = ashr <4 x i32> %i.bv, splat (i32 16)
  %i.bz = bitcast <4 x float> %i.bu to <4 x i32>  ; 2 uses
  %i.ca = shl <4 x i32> %i.bz, splat (i32 16)
  %i.cb = ashr exact <4 x i32> %i.ca, splat (i32 16)
  %i.cc = ashr <4 x i32> %i.bz, splat (i32 16)
  %i.cd = or <4 x i32> %i.cc, splat (i32 3)
  %i.ce = sitofp <4 x i32> %i.cd to <4 x float>   ; 4 uses
  %i.cf = sitofp <4 x i32> %i.bx to <4 x float>   ; 3 uses
  %i.cg = sitofp <4 x i32> %i.by to <4 x float>   ; 3 uses
  %i.ch = sitofp <4 x i32> %i.cb to <4 x float>   ; 3 uses
  %i.ci = fadd nnan <4 x float> %i.ce, %i.ce
  %i.cj = fmul nnan <4 x float> %i.ci, %i.ce
  %i.ck = fmul nnan <4 x float> %i.cf, %i.cf
  %i.cl = fmul nnan <4 x float> %i.cg, %i.cg
  %i.cm = fmul nnan <4 x float> %i.ch, %i.ch
  %i.cn = fadd <4 x float> %i.cl, %i.cm
  %i.co = fadd <4 x float> %i.ck, %i.cn
  %i.cp = fsub <4 x float> %i.cj, %i.co
  %i.cq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cp, <4 x float> zeroinitializer)
  %i.cr = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cq)
  %i.cs = fdiv <4 x float> splat (float f0x46B50389), %i.ce ; 4 uses
  %i.ct = fmul <4 x float> %i.cs, %i.cf
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ct)
  %i.cv = fmul <4 x float> %i.cs, %i.cg
  %i.cw = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cv)
  %i.cx = fmul <4 x float> %i.cs, %i.ch
  %i.cy = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cx)
  %i.cz = fmul <4 x float> %i.cr, %i.cs
  %i.da = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cz)
  %.inner20 = and <4 x i32> %i.cu, splat (i32 65535)
  %i.db = shl <4 x i32> %i.cy, splat (i32 16)
  %.inner21 = or disjoint <4 x i32> %.inner20, %i.db
  %.inner22 = and <4 x i32> %i.da, splat (i32 65535)
  %i.dc = shl <4 x i32> %i.cw, splat (i32 16)
  %.inner23 = or disjoint <4 x i32> %.inner22, %i.dc
  %i.dd = bitcast <4 x i32> %.inner23 to <8 x i16> ; 2 uses
  %i.de = bitcast <4 x i32> %.inner21 to <8 x i16> ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dg = bitcast <8 x i16> %i.df to <2 x i64>    ; 2 uses
  %i.dh = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.di = bitcast <8 x i16> %i.dh to <2 x i64>    ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.dg, i64 0 ; 2 uses
  %bc.i = bitcast <4 x float> %.0..0. to <8 x i16> ; 2 uses
  %i.dj = extractelement <8 x i16> %bc.i, i64 3
  %i.dk = sext i16 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 4
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.0.vec.extract.i, i64 %.sroa.0.0.vec.extract.i, i64 %i.dl)
  store i64 %i.dm, ptr %i.a, align 16, !tbaa !19
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.dg, i64 1 ; 2 uses
  %i.dn = extractelement <8 x i16> %bc.i, i64 7
  %i.do = sext i16 %i.dn to i64
  %i.dp = shl nsw i64 %i.do, 4
  %i.dq = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.8.vec.extract.i, i64 %.sroa.0.8.vec.extract.i, i64 %i.dp)
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.dq, ptr %.8..8..sroa_idx, align 8, !tbaa !19
  %.sroa.5.16.vec.extract.i = extractelement <2 x i64> %i.di, i64 0 ; 2 uses
  %bc68.i = bitcast <4 x float> %.16..16. to <8 x i16> ; 2 uses
  %i.dr = extractelement <8 x i16> %bc68.i, i64 3
  %i.ds = sext i16 %i.dr to i64
  %i.dt = shl nsw i64 %i.ds, 4
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.5.16.vec.extract.i, i64 %.sroa.5.16.vec.extract.i, i64 %i.dt)
  %.16..16..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.du, ptr %.16..16..sroa_idx24, align 16, !tbaa !19
  %.sroa.5.24.vec.extract.i = extractelement <2 x i64> %i.di, i64 1 ; 2 uses
  %i.dv = extractelement <8 x i16> %bc68.i, i64 7
  %i.dw = sext i16 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 4
  %i.dy = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.5.24.vec.extract.i, i64 %.sroa.5.24.vec.extract.i, i64 %i.dx)
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.dy, ptr %.24..24..sroa_idx, align 8, !tbaa !19
  br label %_ZN7meshoptL20decodeFilterQuatSimdEPsm.exit, !llvm.loop !17

_ZN7meshoptL20decodeFilterQuatSimdEPsm.exit:      ; preds = %.lr.ph.i, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bs, ptr nonnull align 16 %i.a, i64 %i.br, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7meshoptL12dispatchSimdIsEEvPFvPT_mES2_mm.exit

_ZN7meshoptL12dispatchSimdIsEEvPFvPT_mES2_mm.exit: ; preds = %_ZN7meshoptL20decodeFilterQuatSimdEPsm.exit14, %_ZN7meshoptL20decodeFilterQuatSimdEPsm.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_decodeFilterExp(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %i.b = lshr i64 %2, 2
  %i.c = mul i64 %i.b, %1                         ; 4 uses
  %i.d = and i64 %i.c, -4                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.e = add i64 %i.c, -4                         ; 2 uses
  %i.f = lshr i64 %i.e, 2                         ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.i.i ; 2 uses
  %i.j = load <4 x i32>, ptr %i.i, align 1, !tbaa !9 ; 2 uses
  %i.k = ashr <4 x i32> %i.j, splat (i32 1)
  %i.l = and <4 x i32> %i.k, splat (i32 -8388608)
  %i.m = add nsw <4 x i32> %i.l, splat (i32 1065353216)
  %i.n = shl <4 x i32> %i.j, splat (i32 8)
  %i.o = ashr exact <4 x i32> %i.n, splat (i32 8)
  %i.p = sitofp <4 x i32> %i.o to <4 x float>
  %i.q = bitcast <4 x i32> %i.m to <4 x float>
  %i.r = fmul <4 x float> %i.p, %i.q
  store <4 x float> %i.r, ptr %i.i, align 1, !tbaa !9
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load <4 x i32>, ptr %i.t, align 1, !tbaa !9 ; 2 uses
  %i.v = ashr <4 x i32> %i.u, splat (i32 1)
  %i.w = and <4 x i32> %i.v, splat (i32 -8388608)
  %i.x = add nsw <4 x i32> %i.w, splat (i32 1065353216)
  %i.y = shl <4 x i32> %i.u, splat (i32 8)
  %i.z = ashr exact <4 x i32> %i.y, splat (i32 8)
  %i.aa = sitofp <4 x i32> %i.z to <4 x float>
  %i.ab = bitcast <4 x i32> %i.x to <4 x float>
  %i.ac = fmul <4 x float> %i.aa, %i.ab
  store <4 x float> %i.ac, ptr %i.t, align 1, !tbaa !9
  %i.ad = add nuw i64 %.013.i.i, 8                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !20

_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.ae = and i64 %i.e, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ae, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ad, %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.i.i.epil.init ; 2 uses
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !9 ; 2 uses
  %i.ah = ashr <4 x i32> %i.ag, splat (i32 1)
  %i.ai = and <4 x i32> %i.ah, splat (i32 -8388608)
  %i.aj = add nsw <4 x i32> %i.ai, splat (i32 1065353216)
  %i.ak = shl <4 x i32> %i.ag, splat (i32 8)
  %i.al = ashr exact <4 x i32> %i.ak, splat (i32 8)
  %i.am = sitofp <4 x i32> %i.al to <4 x float>
  %i.an = bitcast <4 x i32> %i.aj to <4 x float>
  %i.ao = fmul <4 x float> %i.am, %i.an
  store <4 x float> %i.ao, ptr %i.af, align 1, !tbaa !9
  br label %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i

_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i:     ; preds = %.lr.ph.i.i.epil.preheader, %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i.loopexit.unr-lcssa, %bb.a
  %.not.i = icmp eq i64 %i.d, %i.c
  br i1 %.not.i, label %_ZN7meshoptL12dispatchSimdIjEEvPFvPT_mES2_mm.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.ap = and i64 %i.c, 3                         ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %i.ar, i64 %i.aq, i1 false)
  %.not.i20.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i20.i, label %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit23.i, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.b
  %.0..0..0..0..i = load <4 x i32>, ptr %i.a, align 16, !tbaa !9 ; 2 uses
  %i.as = ashr <4 x i32> %.0..0..0..0..i, splat (i32 1)
  %i.at = and <4 x i32> %i.as, splat (i32 -8388608)
  %i.au = add nsw <4 x i32> %i.at, splat (i32 1065353216)
  %i.av = shl <4 x i32> %.0..0..0..0..i, splat (i32 8)
  %i.aw = ashr exact <4 x i32> %i.av, splat (i32 8)
  %i.ax = sitofp <4 x i32> %i.aw to <4 x float>
  %i.ay = bitcast <4 x i32> %i.au to <4 x float>
  %i.az = fmul <4 x float> %i.ax, %i.ay
  store <4 x float> %i.az, ptr %i.a, align 16, !tbaa !9
  br label %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit23.i, !llvm.loop !20

_ZN7meshoptL19decodeFilterExpSimdEPjm.exit23.i:   ; preds = %.lr.ph.i21.i, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ar, ptr nonnull align 16 %i.a, i64 %i.aq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7meshoptL12dispatchSimdIjEEvPFvPT_mES2_mm.exit

_ZN7meshoptL12dispatchSimdIjEEvPFvPT_mES2_mm.exit: ; preds = %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit.i, %_ZN7meshoptL19decodeFilterExpSimdEPjm.exit23.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_decodeFilterColor(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca <8 x float>, align 16         ; 8 uses
  %.sroa.0.i = alloca <4 x i32>, align 16         ; 7 uses
  %i.a = icmp eq i64 %2, 4
  %i.b = and i64 %1, -4                           ; 7 uses
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.047.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.c = shl i64 %.047.i.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = load <4 x i32>, ptr %i.d, align 1, !tbaa !9 ; 5 uses
  %i.f = shl <4 x i32> %i.e, splat (i32 16)
  %i.g = ashr <4 x i32> %i.f, splat (i32 24)      ; 2 uses
  %i.h = shl <4 x i32> %i.e, splat (i32 8)
  %i.i = ashr <4 x i32> %i.h, splat (i32 24)      ; 3 uses
  %i.j = lshr <4 x i32> %i.e, splat (i32 24)      ; 3 uses
  %i.k = lshr <4 x i32> %i.e, splat (i32 25)
  %i.l = or <4 x i32> %i.j, %i.k                  ; 2 uses
  %i.m = lshr <4 x i32> %i.l, splat (i32 2)
  %i.n = or <4 x i32> %i.m, %i.l                  ; 2 uses
  %i.o = lshr <4 x i32> %i.n, splat (i32 4)
  %i.p = or <4 x i32> %i.o, %i.n                  ; 2 uses
  %i.q = shl nuw nsw <4 x i32> %i.j, splat (i32 1)
  %i.r = and <4 x i32> %i.p, %i.q
  %i.s = uitofp nneg <4 x i32> %i.p to <4 x float>
  %i.t = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.s)
  %i.u = fmul <4 x float> %i.t, splat (float 2.550000e+02) ; 4 uses
  %i.v = and <4 x i32> %i.e, splat (i32 255)      ; 3 uses
  %i.w = sub nsw <4 x i32> %i.v, %i.i
  %i.x = add nsw <4 x i32> %i.w, %i.g
  %i.y = add nsw <4 x i32> %i.i, %i.v
  %i.z = add nsw <4 x i32> %i.i, %i.g
  %i.aa = sub nsw <4 x i32> %i.v, %i.z
  %i.ab = sitofp <4 x i32> %i.x to <4 x float>
  %i.ac = fmul <4 x float> %i.u, %i.ab
  %i.ad = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ac)
  %i.ae = sitofp <4 x i32> %i.y to <4 x float>
  %i.af = fmul <4 x float> %i.u, %i.ae
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.af)
  %i.ah = sitofp <4 x i32> %i.aa to <4 x float>
  %i.ai = fmul <4 x float> %i.u, %i.ah
  %i.aj = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ai)
  %i.ak = and <4 x i32> %i.j, splat (i32 1)
  %i.al = or disjoint <4 x i32> %i.r, %i.ak
  %i.am = uitofp nneg <4 x i32> %i.al to <4 x float>
  %i.an = fmul <4 x float> %i.u, %i.am
  %i.ao = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.an)
  %i.ap = shl <4 x i32> %i.ag, splat (i32 8)
  %i.aq = or <4 x i32> %i.ap, %i.ad
  %i.ar = shl <4 x i32> %i.aj, splat (i32 16)
  %i.as = or <4 x i32> %i.aq, %i.ar
  %i.at = shl <4 x i32> %i.ao, splat (i32 24)
  %i.au = or <4 x i32> %i.as, %i.at
  store <4 x i32> %i.au, ptr %i.d, align 1, !tbaa !9
  %i.av = add nuw i64 %.047.i.i, 4                ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.b
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i, !llvm.loop !21

_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i:  ; preds = %.lr.ph.i.i, %bb.b
  %.not.i = icmp eq i64 %i.b, %1
  br i1 %.not.i, label %_ZN7meshoptL12dispatchSimdIhEEvPFvPT_mES2_mm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store <4 x i32> zeroinitializer, ptr %.sroa.0.i, align 16
  %i.ax = and i64 %1, 3                           ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 2                ; 2 uses
  %i.az = shl i64 %i.b, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0.i, ptr align 1 %i.ba, i64 %i.ay, i1 false)
  %.not.i20.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i20.i, label %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit23.i, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.c
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i = load <4 x i32>, ptr %.sroa.0.i, align 16, !tbaa !9 ; 5 uses
  %i.bb = shl <4 x i32> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, splat (i32 16)
  %i.bc = ashr <4 x i32> %i.bb, splat (i32 24)    ; 2 uses
  %i.bd = shl <4 x i32> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, splat (i32 8)
  %i.be = ashr <4 x i32> %i.bd, splat (i32 24)    ; 3 uses
  %i.bf = lshr <4 x i32> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, splat (i32 24) ; 3 uses
  %i.bg = lshr <4 x i32> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, splat (i32 25)
  %i.bh = or <4 x i32> %i.bf, %i.bg               ; 2 uses
  %i.bi = lshr <4 x i32> %i.bh, splat (i32 2)
  %i.bj = or <4 x i32> %i.bi, %i.bh               ; 2 uses
  %i.bk = lshr <4 x i32> %i.bj, splat (i32 4)
  %i.bl = or <4 x i32> %i.bk, %i.bj               ; 2 uses
  %i.bm = shl nuw nsw <4 x i32> %i.bf, splat (i32 1)
  %i.bn = and <4 x i32> %i.bl, %i.bm
  %i.bo = uitofp nneg <4 x i32> %i.bl to <4 x float>
  %i.bp = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.bo)
  %i.bq = fmul <4 x float> %i.bp, splat (float 2.550000e+02) ; 4 uses
  %i.br = and <4 x i32> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, splat (i32 255) ; 3 uses
  %i.bs = sub nsw <4 x i32> %i.br, %i.be
  %i.bt = add nsw <4 x i32> %i.bs, %i.bc
  %i.bu = add nsw <4 x i32> %i.be, %i.br
  %i.bv = add nsw <4 x i32> %i.be, %i.bc
  %i.bw = sub nsw <4 x i32> %i.br, %i.bv
  %i.bx = sitofp <4 x i32> %i.bt to <4 x float>
  %i.by = fmul <4 x float> %i.bq, %i.bx
  %i.bz = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.by)
  %i.ca = sitofp <4 x i32> %i.bu to <4 x float>
  %i.cb = fmul <4 x float> %i.bq, %i.ca
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cb)
  %i.cd = sitofp <4 x i32> %i.bw to <4 x float>
  %i.ce = fmul <4 x float> %i.bq, %i.cd
  %i.cf = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ce)
  %i.cg = and <4 x i32> %i.bf, splat (i32 1)
  %i.ch = or disjoint <4 x i32> %i.bn, %i.cg
  %i.ci = uitofp nneg <4 x i32> %i.ch to <4 x float>
  %i.cj = fmul <4 x float> %i.bq, %i.ci
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cj)
  %i.cl = shl <4 x i32> %i.cc, splat (i32 8)
  %i.cm = or <4 x i32> %i.cl, %i.bz
  %i.cn = shl <4 x i32> %i.cf, splat (i32 16)
  %i.co = or <4 x i32> %i.cm, %i.cn
  %i.cp = shl <4 x i32> %i.ck, splat (i32 24)
  %i.cq = or <4 x i32> %i.co, %i.cp
  store <4 x i32> %i.cq, ptr %.sroa.0.i, align 16, !tbaa !9
  br label %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit23.i, !llvm.loop !21

_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit23.i: ; preds = %.lr.ph.i21.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull align 16 %.sroa.0.i, i64 %i.ay, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN7meshoptL12dispatchSimdIhEEvPFvPT_mES2_mm.exit

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %bb.d, %.lr.ph.i.i5
  %.060.i.i = phi i64 [ %i.en, %.lr.ph.i.i5 ], [ 0, %bb.d ] ; 2 uses
  %.idx.i.i = shl i64 %.060.i.i, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %3 = load <8 x float>, ptr %i.cr, align 1, !tbaa !9 ; 2 uses
  %i.ct = shufflevector <8 x float> %3, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cu = shufflevector <8 x float> %3, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cv = bitcast <4 x float> %i.ct to <4 x i32>  ; 2 uses
  %i.cw = ashr <4 x i32> %i.cv, splat (i32 16)    ; 2 uses
  %i.cx = bitcast <4 x float> %i.cu to <4 x i32>  ; 3 uses
  %i.cy = shl <4 x i32> %i.cx, splat (i32 16)
  %i.cz = ashr exact <4 x i32> %i.cy, splat (i32 16) ; 3 uses
  %i.da = lshr <4 x i32> %i.cx, splat (i32 16)    ; 3 uses
  %i.db = lshr <4 x i32> %i.cx, splat (i32 17)
  %i.dc = or <4 x i32> %i.da, %i.db               ; 2 uses
  %i.dd = lshr <4 x i32> %i.dc, splat (i32 2)
  %i.de = or <4 x i32> %i.dd, %i.dc               ; 2 uses
  %i.df = lshr <4 x i32> %i.de, splat (i32 4)
  %i.dg = or <4 x i32> %i.df, %i.de               ; 2 uses
  %i.dh = lshr <4 x i32> %i.dg, splat (i32 8)
  %i.di = or <4 x i32> %i.dh, %i.dg               ; 2 uses
  %i.dj = shl nuw nsw <4 x i32> %i.da, splat (i32 1)
  %i.dk = and <4 x i32> %i.di, %i.dj
  %i.dl = uitofp nneg <4 x i32> %i.di to <4 x float>
  %i.dm = fdiv <4 x float> splat (float 6.553500e+04), %i.dl ; 4 uses
  %i.dn = and <4 x i32> %i.cv, splat (i32 65535)  ; 3 uses
  %i.do = add nsw <4 x i32> %i.dn, %i.cw
  %i.dp = sub nsw <4 x i32> %i.do, %i.cz
  %i.dq = add nsw <4 x i32> %i.cz, %i.dn
  %i.dr = add nsw <4 x i32> %i.cw, %i.cz
  %i.ds = sub nsw <4 x i32> %i.dn, %i.dr
  %i.dt = sitofp <4 x i32> %i.dp to <4 x float>
  %i.du = fmul <4 x float> %i.dm, %i.dt
  %i.dv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.du)
  %i.dw = sitofp <4 x i32> %i.dq to <4 x float>
  %i.dx = fmul <4 x float> %i.dm, %i.dw
  %i.dy = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.dx)
  %i.dz = sitofp <4 x i32> %i.ds to <4 x float>
  %i.ea = fmul <4 x float> %i.dm, %i.dz
  %i.eb = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ea)
  %i.ec = and <4 x i32> %i.da, splat (i32 1)
  %i.ed = or disjoint <4 x i32> %i.dk, %i.ec
  %i.ee = uitofp nneg <4 x i32> %i.ed to <4 x float>
  %i.ef = fmul <4 x float> %i.dm, %i.ee
  %i.eg = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ef)
  %.inner = and <4 x i32> %i.dv, splat (i32 65535)
  %i.eh = shl <4 x i32> %i.eb, splat (i32 16)
  %.inner26 = or disjoint <4 x i32> %.inner, %i.eh
  %.inner27 = and <4 x i32> %i.dy, splat (i32 65535)
  %i.ei = shl <4 x i32> %i.eg, splat (i32 16)
  %.inner28 = or disjoint <4 x i32> %.inner27, %i.ei
  %i.ej = bitcast <4 x i32> %.inner26 to <8 x i16> ; 2 uses
  %i.ek = bitcast <4 x i32> %.inner28 to <8 x i16> ; 2 uses
  %i.el = shufflevector <8 x i16> %i.ej, <8 x i16> %i.ek, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.em = shufflevector <8 x i16> %i.ej, <8 x i16> %i.ek, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.el, ptr %i.cr, align 1, !tbaa !9
  store <8 x i16> %i.em, ptr %i.cs, align 1, !tbaa !9
  %i.en = add nuw i64 %.060.i.i, 4                ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.b
  br i1 %i.eo, label %.lr.ph.i.i5, label %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i, !llvm.loop !22

_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i: ; preds = %.lr.ph.i.i5, %bb.d
  %.not.i6 = icmp eq i64 %i.b, %1
  br i1 %.not.i6, label %_ZN7meshoptL12dispatchSimdIhEEvPFvPT_mES2_mm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store <8 x float> zeroinitializer, ptr %.sroa.0, align 16
  %i.ep = and i64 %1, 3                           ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 3                ; 2 uses
  %.idx.i = shl i64 %i.b, 3
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0, ptr align 2 %i.er, i64 %i.eq, i1 false)
  %.not.i20.i7 = icmp eq i64 %i.ep, 0
  br i1 %.not.i20.i7, label %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit24.i, label %.lr.ph.i21.i8

.lr.ph.i21.i8:                                    ; preds = %bb.e
  %.sroa.0.0..sroa.0.0. = load <8 x float>, ptr %.sroa.0, align 16, !tbaa !9 ; 2 uses
  %i.es = shufflevector <8 x float> %.sroa.0.0..sroa.0.0., <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.et = shufflevector <8 x float> %.sroa.0.0..sroa.0.0., <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.eu = bitcast <4 x float> %i.es to <4 x i32>  ; 2 uses
  %i.ev = ashr <4 x i32> %i.eu, splat (i32 16)    ; 2 uses
  %i.ew = bitcast <4 x float> %i.et to <4 x i32>  ; 3 uses
  %i.ex = shl <4 x i32> %i.ew, splat (i32 16)
  %i.ey = ashr exact <4 x i32> %i.ex, splat (i32 16) ; 3 uses
  %i.ez = lshr <4 x i32> %i.ew, splat (i32 16)    ; 3 uses
  %i.fa = lshr <4 x i32> %i.ew, splat (i32 17)
  %i.fb = or <4 x i32> %i.ez, %i.fa               ; 2 uses
  %i.fc = lshr <4 x i32> %i.fb, splat (i32 2)
  %i.fd = or <4 x i32> %i.fc, %i.fb               ; 2 uses
  %i.fe = lshr <4 x i32> %i.fd, splat (i32 4)
  %i.ff = or <4 x i32> %i.fe, %i.fd               ; 2 uses
  %i.fg = lshr <4 x i32> %i.ff, splat (i32 8)
  %i.fh = or <4 x i32> %i.fg, %i.ff               ; 2 uses
  %i.fi = shl nuw nsw <4 x i32> %i.ez, splat (i32 1)
  %i.fj = and <4 x i32> %i.fh, %i.fi
  %i.fk = uitofp nneg <4 x i32> %i.fh to <4 x float>
  %i.fl = fdiv <4 x float> splat (float 6.553500e+04), %i.fk ; 4 uses
  %i.fm = and <4 x i32> %i.eu, splat (i32 65535)  ; 3 uses
  %i.fn = add nsw <4 x i32> %i.fm, %i.ev
  %i.fo = sub nsw <4 x i32> %i.fn, %i.ey
  %i.fp = add nsw <4 x i32> %i.ey, %i.fm
  %i.fq = add nsw <4 x i32> %i.ev, %i.ey
  %i.fr = sub nsw <4 x i32> %i.fm, %i.fq
  %i.fs = sitofp <4 x i32> %i.fo to <4 x float>
  %i.ft = fmul <4 x float> %i.fl, %i.fs
  %i.fu = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ft)
  %i.fv = sitofp <4 x i32> %i.fp to <4 x float>
  %i.fw = fmul <4 x float> %i.fl, %i.fv
  %i.fx = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fw)
  %i.fy = sitofp <4 x i32> %i.fr to <4 x float>
  %i.fz = fmul <4 x float> %i.fl, %i.fy
  %i.ga = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fz)
  %i.gb = and <4 x i32> %i.ez, splat (i32 1)
  %i.gc = or disjoint <4 x i32> %i.fj, %i.gb
  %i.gd = uitofp nneg <4 x i32> %i.gc to <4 x float>
  %i.ge = fmul <4 x float> %i.fl, %i.gd
  %i.gf = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ge)
  %.inner29 = and <4 x i32> %i.fu, splat (i32 65535)
  %i.gg = shl <4 x i32> %i.ga, splat (i32 16)
  %.inner30 = or disjoint <4 x i32> %.inner29, %i.gg
  %.inner31 = and <4 x i32> %i.fx, splat (i32 65535)
  %i.gh = shl <4 x i32> %i.gf, splat (i32 16)
  %.inner32 = or disjoint <4 x i32> %.inner31, %i.gh
  %i.gi = bitcast <4 x i32> %.inner30 to <8 x i16> ; 2 uses
  %i.gj = bitcast <4 x i32> %.inner32 to <8 x i16> ; 2 uses
  %i.gk = shufflevector <8 x i16> %i.gi, <8 x i16> %i.gj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gl = shufflevector <8 x i16> %i.gi, <8 x i16> %i.gj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.gk, ptr %.sroa.0, align 16, !tbaa !9
  %.16..16..16..16..sroa_idx33 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <8 x i16> %i.gl, ptr %.16..16..16..16..sroa_idx33, align 16, !tbaa !9
  br label %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit24.i, !llvm.loop !22

_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit24.i: ; preds = %.lr.ph.i21.i8, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.er, ptr nonnull align 16 %.sroa.0, i64 %i.eq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZN7meshoptL12dispatchSimdIhEEvPFvPT_mES2_mm.exit

_ZN7meshoptL12dispatchSimdIhEEvPFvPT_mES2_mm.exit: ; preds = %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit24.i, %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i, %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit23.i, %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_encodeFilterOct(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.tr = trunc i64 %2 to i32
  %i.a = shl i32 %.tr, 1
  %i.b = add nsw i32 %3, -1
  %notmask.i = shl nsw i32 -1, %i.b
  %i.c = xor i32 %notmask.i, -1
  %i.d = uitofp nneg i32 %i.c to float            ; 2 uses
  %i.e = fadd float %i.d, 5.000000e-01
  %i.f = fptosi float %i.e to i32                 ; 2 uses
  %i.g = add nsw i32 %i.a, -1
  %notmask.i62 = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask.i62, -1
  %i.i = uitofp nneg i32 %i.h to float
  %i.j = icmp eq i64 %2, 4
  %i.k = trunc i32 %i.f to i16
  %i.l = trunc i32 %i.f to i8
  %i.m = insertelement <2 x float> poison, float %i.d, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.063 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.f ] ; 2 uses
  %i.o = shl i64 %.063, 2                         ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.o ; 3 uses
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.v = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.q) ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.v, %shift
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = tail call float @llvm.fabs.f32(float %i.s)
  %i.y = fadd float %i.w, %i.x                    ; 2 uses
  %i.z = fcmp oeq float %i.y, 0.000000e+00
  %i.aa = fdiv float 1.000000e+00, %i.y
  %i.ab = select i1 %i.z, float 0.000000e+00, float %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.q, %i.ad            ; 3 uses
  %i.af = fcmp ult float %i.s, 0.000000e+00
  br i1 %i.af, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ae)
  %i.ah = fcmp oge <2 x float> %i.ae, zeroinitializer
  %i.ai = fsub <2 x float> splat (float 1.000000e+00), %i.ag
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = fneg <2 x float> %i.aj
  %i.al = select <2 x i1> %i.ah, <2 x float> %i.aj, <2 x float> %i.ak
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.am = phi <2 x float> [ %i.al, %bb.c ], [ %i.ae, %bb.b ] ; 3 uses
  %i.an = fcmp oge <2 x float> %i.am, zeroinitializer
  %i.ao = fcmp oge <2 x float> %i.am, splat (float -1.000000e+00)
  %i.ap = select <2 x i1> %i.an, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.aq = select <2 x i1> %i.ao, <2 x float> %i.am, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.ar = fcmp ole <2 x float> %i.aq, splat (float 1.000000e+00)
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.aq, <2 x float> splat (float 1.000000e+00)
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.n, <2 x float> %i.ap)
  %i.au = fptosi <2 x float> %i.at to <2 x i32>   ; 3 uses
  %i.av = fcmp oge float %i.u, 0.000000e+00
  %i.aw = select i1 %i.av, float 5.000000e-01, float -5.000000e-01
  %i.ax = fcmp oge float %i.u, -1.000000e+00
  %i.ay = select i1 %i.ax, float %i.u, float -1.000000e+00 ; 2 uses
  %i.az = fcmp ole float %i.ay, 1.000000e+00
  %i.ba = select i1 %i.az, float %i.ay, float 1.000000e+00
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.i, float %i.aw)
  %i.bc = fptosi float %i.bb to i32               ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.bd = bitcast <2 x i32> %i.au to <8 x i8>
  %i.be = extractelement <8 x i8> %i.bd, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 4 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !9
  %i.bg = bitcast <2 x i32> %i.au to <8 x i8>
  %i.bh = extractelement <8 x i8> %i.bg, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 %i.l, ptr %i.bj, align 1, !tbaa !9
  %i.bk = trunc i32 %i.bc to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %.thread
  %i.bm = trunc <2 x i32> %i.au to <2 x i16>
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o ; 3 uses
  store <2 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i16 %i.k, ptr %i.bo, align 2, !tbaa !14
  %i.bp = trunc i32 %i.bc to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.br = add nuw i64 %.063, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_encodeFilterQuat(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %3, -1
  %notmask.i = shl nsw i32 -1, %i.a
  %i.b = xor i32 %notmask.i, -1
  %i.c = uitofp nneg i32 %i.b to float            ; 3 uses
  %i.d = fadd float %i.c, 5.000000e-01
  %i.e = fptosi float %i.d to i32
  %i.f = and i32 %i.e, 65532
  %i.g = insertelement <2 x float> poison, float %i.c, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.045 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.b ] ; 2 uses
  %i.i = shl i64 %.045, 2                         ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.i ; 9 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.i
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !12
  %i.m = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.l) ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 1
  %i.p = fcmp ogt float %i.o, %i.n                ; 2 uses
  %i.q = zext i1 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = zext i1 %i.p to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = tail call float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp ogt float %i.t, %i.x
  %i.z = select i1 %i.y, i32 2, i32 %i.q          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = tail call float @llvm.fabs.f32(float %i.ab)
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = tail call float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp ogt float %i.ac, %i.ag
  %i.ai = select i1 %i.ah, i32 3, i32 %i.z        ; 5 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp olt float %i.al, 0.000000e+00
  %i.an = select i1 %i.am, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.ao = add nuw nsw i32 %i.ai, 1
  %i.ap = and i32 %i.ao, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = xor i32 %i.ai, 2
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = add nuw nsw i32 %i.ai, 3
  %i.ay = and i32 %i.ax, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = fmul float %i.bb, f0x3FB504F3
end_hunk_0
