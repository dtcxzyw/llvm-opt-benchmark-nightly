Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexfilter?download=true
inline.NumInlined: 39
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@meshopt_decodeFilterQuat:bb.a
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
  %i.a = alloca [16 x i16], align 16              ; 9 uses
  %.sroa.0.i = alloca <4 x i32>, align 16         ; 7 uses
  %i.b = icmp eq i64 %2, 4
  %i.c = and i64 %1, -4                           ; 7 uses
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.047.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = shl i64 %.047.i.i, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = load <4 x i32>, ptr %i.e, align 1, !tbaa !9 ; 5 uses
  %i.g = shl <4 x i32> %i.f, splat (i32 16)
  %i.h = ashr <4 x i32> %i.g, splat (i32 24)      ; 2 uses
  %i.i = shl <4 x i32> %i.f, splat (i32 8)
  %i.j = ashr <4 x i32> %i.i, splat (i32 24)      ; 3 uses
  %i.k = lshr <4 x i32> %i.f, splat (i32 24)      ; 3 uses
  %i.l = lshr <4 x i32> %i.f, splat (i32 25)
  %i.m = or <4 x i32> %i.k, %i.l                  ; 2 uses
  %i.n = lshr <4 x i32> %i.m, splat (i32 2)
  %i.o = or <4 x i32> %i.n, %i.m                  ; 2 uses
  %i.p = lshr <4 x i32> %i.o, splat (i32 4)
  %i.q = or <4 x i32> %i.p, %i.o                  ; 2 uses
  %i.r = shl nuw nsw <4 x i32> %i.k, splat (i32 1)
  %i.s = and <4 x i32> %i.q, %i.r
  %i.t = uitofp nneg <4 x i32> %i.q to <4 x float>
  %i.u = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.t)
  %i.v = fmul <4 x float> %i.u, splat (float 2.550000e+02) ; 4 uses
  %i.w = and <4 x i32> %i.f, splat (i32 255)      ; 3 uses
  %i.x = sub nsw <4 x i32> %i.w, %i.j
  %3 = add nsw <4 x i32> %i.x, %i.h
  %i.y = add nsw <4 x i32> %i.j, %i.w
  %i.z = add nsw <4 x i32> %i.j, %i.h
  %i.aa = sub nsw <4 x i32> %i.w, %i.z
  %i.ab = sitofp <4 x i32> %3 to <4 x float>
  %i.ac = fmul <4 x float> %i.v, %i.ab
  %i.ad = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ac)
  %i.ae = sitofp <4 x i32> %i.y to <4 x float>
  %i.af = fmul <4 x float> %i.v, %i.ae
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.af)
  %i.ah = sitofp <4 x i32> %i.aa to <4 x float>
  %i.ai = fmul <4 x float> %i.v, %i.ah
  %i.aj = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ai)
  %i.ak = and <4 x i32> %i.k, splat (i32 1)
  %i.al = or disjoint <4 x i32> %i.s, %i.ak
  %i.am = uitofp nneg <4 x i32> %i.al to <4 x float>
  %i.an = fmul <4 x float> %i.v, %i.am
  %i.ao = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.an)
  %i.ap = shl <4 x i32> %i.ag, splat (i32 8)
  %i.aq = or <4 x i32> %i.ap, %i.ad
  %i.ar = shl <4 x i32> %i.aj, splat (i32 16)
  %i.as = or <4 x i32> %i.aq, %i.ar
  %i.at = shl <4 x i32> %i.ao, splat (i32 24)
  %i.au = or <4 x i32> %i.as, %i.at
  store <4 x i32> %i.au, ptr %i.e, align 1, !tbaa !9
  %i.av = add nuw i64 %.047.i.i, 4                ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.c
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i, !llvm.loop !21

_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i:  ; preds = %.lr.ph.i.i, %bb.b
  %.not.i = icmp eq i64 %i.c, %1
  br i1 %.not.i, label %_ZN7meshoptL12dispatchSimdIhEEvPFvPT_mES2_mm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store <4 x i32> zeroinitializer, ptr %.sroa.0.i, align 16
  %i.ax = and i64 %1, 3                           ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 2                ; 2 uses
  %i.az = shl i64 %i.c, 2
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
  %4 = add nsw <4 x i32> %i.bs, %i.bc
  %i.bt = add nsw <4 x i32> %i.be, %i.br
  %i.bu = add nsw <4 x i32> %i.be, %i.bc
  %i.bv = sub nsw <4 x i32> %i.br, %i.bu
  %i.bw = sitofp <4 x i32> %4 to <4 x float>
  %i.bx = fmul <4 x float> %i.bq, %i.bw
  %i.by = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bx)
  %i.bz = sitofp <4 x i32> %i.bt to <4 x float>
  %i.ca = fmul <4 x float> %i.bq, %i.bz
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ca)
  %i.cc = sitofp <4 x i32> %i.bv to <4 x float>
  %i.cd = fmul <4 x float> %i.bq, %i.cc
  %i.ce = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.cd)
  %i.cf = and <4 x i32> %i.bf, splat (i32 1)
  %i.cg = or disjoint <4 x i32> %i.bn, %i.cf
  %i.ch = uitofp nneg <4 x i32> %i.cg to <4 x float>
  %i.ci = fmul <4 x float> %i.bq, %i.ch
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ci)
  %i.ck = shl <4 x i32> %i.cb, splat (i32 8)
  %i.cl = or <4 x i32> %i.ck, %i.by
  %i.cm = shl <4 x i32> %i.ce, splat (i32 16)
  %i.cn = or <4 x i32> %i.cl, %i.cm
  %i.co = shl <4 x i32> %i.cj, splat (i32 24)
  %i.cp = or <4 x i32> %i.cn, %i.co
  store <4 x i32> %i.cp, ptr %.sroa.0.i, align 16, !tbaa !9
  br label %_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit23.i, !llvm.loop !21

_ZN7meshoptL22decodeFilterColorSimd8EPhm.exit23.i: ; preds = %.lr.ph.i21.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull align 16 %.sroa.0.i, i64 %i.ay, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN7meshoptL12dispatchSimdIhEEvPFvPT_mES2_mm.exit

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %bb.d, %.lr.ph.i.i5
  %.060.i.i = phi i64 [ %i.eo, %.lr.ph.i.i5 ], [ 0, %bb.d ] ; 2 uses
  %.idx.i.i = shl i64 %.060.i.i, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 3 uses
  %i.cr = load <4 x float>, ptr %i.cq, align 1, !tbaa !9 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !tbaa !9 ; 2 uses
  %i.cu = shufflevector <4 x float> %i.cr, <4 x float> %i.ct, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cv = shufflevector <4 x float> %i.cr, <4 x float> %i.ct, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cw = bitcast <4 x float> %i.cu to <4 x i32>  ; 2 uses
  %i.cx = ashr <4 x i32> %i.cw, splat (i32 16)    ; 2 uses
  %i.cy = bitcast <4 x float> %i.cv to <4 x i32>  ; 3 uses
  %i.cz = shl <4 x i32> %i.cy, splat (i32 16)
  %i.da = ashr exact <4 x i32> %i.cz, splat (i32 16) ; 3 uses
  %i.db = lshr <4 x i32> %i.cy, splat (i32 16)    ; 3 uses
  %i.dc = lshr <4 x i32> %i.cy, splat (i32 17)
  %i.dd = or <4 x i32> %i.db, %i.dc               ; 2 uses
  %i.de = lshr <4 x i32> %i.dd, splat (i32 2)
  %i.df = or <4 x i32> %i.de, %i.dd               ; 2 uses
  %i.dg = lshr <4 x i32> %i.df, splat (i32 4)
  %i.dh = or <4 x i32> %i.dg, %i.df               ; 2 uses
  %i.di = lshr <4 x i32> %i.dh, splat (i32 8)
  %i.dj = or <4 x i32> %i.di, %i.dh               ; 2 uses
  %i.dk = shl nuw nsw <4 x i32> %i.db, splat (i32 1)
  %i.dl = and <4 x i32> %i.dj, %i.dk
  %i.dm = uitofp nneg <4 x i32> %i.dj to <4 x float>
  %i.dn = fdiv <4 x float> splat (float 6.553500e+04), %i.dm ; 4 uses
  %i.do = and <4 x i32> %i.cw, splat (i32 65535)  ; 3 uses
  %i.dp = add nsw <4 x i32> %i.do, %i.cx
  %i.dq = sub nsw <4 x i32> %i.dp, %i.da
  %i.dr = add nsw <4 x i32> %i.da, %i.do
  %i.ds = add nsw <4 x i32> %i.cx, %i.da
  %i.dt = sub nsw <4 x i32> %i.do, %i.ds
  %i.du = sitofp <4 x i32> %i.dq to <4 x float>
  %i.dv = fmul <4 x float> %i.dn, %i.du
  %i.dw = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.dv)
  %i.dx = sitofp <4 x i32> %i.dr to <4 x float>
  %i.dy = fmul <4 x float> %i.dn, %i.dx
  %i.dz = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.dy)
  %i.ea = sitofp <4 x i32> %i.dt to <4 x float>
  %i.eb = fmul <4 x float> %i.dn, %i.ea
  %i.ec = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.eb)
  %i.ed = and <4 x i32> %i.db, splat (i32 1)
  %i.ee = or disjoint <4 x i32> %i.dl, %i.ed
  %i.ef = uitofp nneg <4 x i32> %i.ee to <4 x float>
  %i.eg = fmul <4 x float> %i.dn, %i.ef
  %i.eh = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.eg)
  %.inner = and <4 x i32> %i.dw, splat (i32 65535)
  %i.ei = shl <4 x i32> %i.ec, splat (i32 16)
  %.inner26.a = or disjoint <4 x i32> %.inner, %i.ei
  %.inner27 = and <4 x i32> %i.dz, splat (i32 65535)
  %i.ej = shl <4 x i32> %i.eh, splat (i32 16)
  %.inner28 = or disjoint <4 x i32> %.inner27, %i.ej
  %i.ek = bitcast <4 x i32> %.inner26.a to <8 x i16> ; 2 uses
  %i.el = bitcast <4 x i32> %.inner28 to <8 x i16> ; 2 uses
  %i.em = shufflevector <8 x i16> %i.ek, <8 x i16> %i.el, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.en = shufflevector <8 x i16> %i.ek, <8 x i16> %i.el, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.em, ptr %i.cq, align 1, !tbaa !9
  store <8 x i16> %i.en, ptr %i.cs, align 1, !tbaa !9
  %i.eo = add nuw i64 %.060.i.i, 4                ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.c
  br i1 %i.ep, label %.lr.ph.i.i5, label %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i, !llvm.loop !22

_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i: ; preds = %.lr.ph.i.i5, %bb.d
  %.not.i6 = icmp eq i64 %i.c, %1
  br i1 %.not.i6, label %_ZN7meshoptL12dispatchSimdIhEEvPFvPT_mES2_mm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.eq = and i64 %1, 3                           ; 2 uses
  %i.er = shl nuw nsw i64 %i.eq, 3                ; 2 uses
  %.idx.i = shl i64 %i.c, 3
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.es, i64 %i.er, i1 false)
  %.not.i20.i7 = icmp eq i64 %i.eq, 0
  br i1 %.not.i20.i7, label %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit24.i, label %.lr.ph.i21.i8

.lr.ph.i21.i8:                                    ; preds = %bb.e
  %.0..0..0..0..i = load <4 x float>, ptr %i.a, align 16, !tbaa !9 ; 2 uses
  %.16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..i = load <4 x float>, ptr %.16..16..16..16..sroa_idx, align 16, !tbaa !9 ; 2 uses
  %i.et = shufflevector <4 x float> %.0..0..0..0..i, <4 x float> %.16..16..16..16..i, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.eu = shufflevector <4 x float> %.0..0..0..0..i, <4 x float> %.16..16..16..16..i, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ev = bitcast <4 x float> %i.et to <4 x i32>  ; 2 uses
  %i.ew = ashr <4 x i32> %i.ev, splat (i32 16)    ; 2 uses
  %i.ex = bitcast <4 x float> %i.eu to <4 x i32>  ; 3 uses
  %i.ey = shl <4 x i32> %i.ex, splat (i32 16)
  %i.ez = ashr exact <4 x i32> %i.ey, splat (i32 16) ; 3 uses
  %i.fa = lshr <4 x i32> %i.ex, splat (i32 16)    ; 3 uses
  %i.fb = lshr <4 x i32> %i.ex, splat (i32 17)
  %i.fc = or <4 x i32> %i.fa, %i.fb               ; 2 uses
  %i.fd = lshr <4 x i32> %i.fc, splat (i32 2)
  %i.fe = or <4 x i32> %i.fd, %i.fc               ; 2 uses
  %i.ff = lshr <4 x i32> %i.fe, splat (i32 4)
  %i.fg = or <4 x i32> %i.ff, %i.fe               ; 2 uses
  %i.fh = lshr <4 x i32> %i.fg, splat (i32 8)
  %i.fi = or <4 x i32> %i.fh, %i.fg               ; 2 uses
  %i.fj = shl nuw nsw <4 x i32> %i.fa, splat (i32 1)
  %i.fk = and <4 x i32> %i.fi, %i.fj
  %i.fl = uitofp nneg <4 x i32> %i.fi to <4 x float>
  %i.fm = fdiv <4 x float> splat (float 6.553500e+04), %i.fl ; 4 uses
  %i.fn = and <4 x i32> %i.ev, splat (i32 65535)  ; 3 uses
  %i.fo = add nsw <4 x i32> %i.fn, %i.ew
  %i.fp = sub nsw <4 x i32> %i.fo, %i.ez
  %i.fq = add nsw <4 x i32> %i.ez, %i.fn
  %i.fr = add nsw <4 x i32> %i.ew, %i.ez
  %i.fs = sub nsw <4 x i32> %i.fn, %i.fr
  %i.ft = sitofp <4 x i32> %i.fp to <4 x float>
  %i.fu = fmul <4 x float> %i.fm, %i.ft
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fu)
  %i.fw = sitofp <4 x i32> %i.fq to <4 x float>
  %i.fx = fmul <4 x float> %i.fm, %i.fw
  %i.fy = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fx)
  %i.fz = sitofp <4 x i32> %i.fs to <4 x float>
  %i.ga = fmul <4 x float> %i.fm, %i.fz
  %i.gb = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ga)
  %i.gc = and <4 x i32> %i.fa, splat (i32 1)
  %i.gd = or disjoint <4 x i32> %i.fk, %i.gc
  %i.ge = uitofp nneg <4 x i32> %i.gd to <4 x float>
  %i.gf = fmul <4 x float> %i.fm, %i.ge
  %i.gg = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.gf)
  %.inner29 = and <4 x i32> %i.fv, splat (i32 65535)
  %i.gh = shl <4 x i32> %i.gb, splat (i32 16)
  %.inner30 = or disjoint <4 x i32> %.inner29, %i.gh
  %.inner31 = and <4 x i32> %i.fy, splat (i32 65535)
  %i.gi = shl <4 x i32> %i.gg, splat (i32 16)
  %.inner32 = or disjoint <4 x i32> %.inner31, %i.gi
  %i.gj = bitcast <4 x i32> %.inner30 to <8 x i16> ; 2 uses
  %i.gk = bitcast <4 x i32> %.inner32 to <8 x i16> ; 2 uses
  %i.gl = shufflevector <8 x i16> %i.gj, <8 x i16> %i.gk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gm = shufflevector <8 x i16> %i.gj, <8 x i16> %i.gk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.gl, ptr %i.a, align 16, !tbaa !9
  %.16..16..16..16..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> %i.gm, ptr %.16..16..16..16..sroa_idx33, align 16, !tbaa !9
  br label %_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit24.i, !llvm.loop !22

_ZN7meshoptL23decodeFilterColorSimd16EPtm.exit24.i: ; preds = %.lr.ph.i21.i8, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.es, ptr nonnull align 16 %i.a, i64 %i.er, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
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
end_hunk_0
