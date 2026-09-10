Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/mp?download=true
inline.NumInlined: 114
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 69
begin_hunk_0_@mul:.preheader31
bb.j:                                             ; preds = %bb.i
  %i.eq = add i16 %i.dz, -7
  %i.er = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63, align 8, !tbaa !20 ; 2 uses
  %.not.i.7 = icmp eq i16 %i.er, 0
  br i1 %.not.i.7, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.es = add i16 %i.dz, -8
  %i.et = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64, align 2, !tbaa !20 ; 2 uses
  %.not.i.8 = icmp eq i16 %i.et, 0
  br i1 %.not.i.8, label %bb.l, label %.preheader.i

bb.l:                                             ; preds = %bb.k
  %i.eu = add i16 %i.dz, -9
  %i.ev = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65, align 4, !tbaa !20 ; 2 uses
  %.not.i.9 = icmp eq i16 %i.ev, 0
  br i1 %.not.i.9, label %bb.m, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.ew = add i16 %i.dz, -10
  %i.ex = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66, align 2, !tbaa !20 ; 2 uses
  %.not.i.10 = icmp eq i16 %i.ex, 0
  br i1 %.not.i.10, label %bb.n, label %.preheader.i

bb.n:                                             ; preds = %bb.m
  %i.ey = add i16 %i.dz, -11
  %i.ez = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67, align 16, !tbaa !20
  %.not.i.11 = icmp eq i16 %i.ez, 0
  br i1 %.not.i.11, label %bb.o, label %.lr.ph47.i

bb.o:                                             ; preds = %bb.n
  %i.fa = add i16 %i.dz, -12
  %i.fb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68, align 2, !tbaa !20
  %.not.i.12 = icmp eq i16 %i.fb, 0
  br i1 %.not.i.12, label %bb.p, label %.lr.ph47.i

bb.p:                                             ; preds = %bb.o
  %i.fc = add i16 %i.dz, -13
  %i.fd = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep69, align 4, !tbaa !20
  %.not.i.13 = icmp eq i16 %i.fd, 0
  br i1 %.not.i.13, label %bb.q, label %.lr.ph47.i

bb.q:                                             ; preds = %bb.p
  %i.fe = add i16 %i.dz, -14
  %i.ff = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep70, align 2, !tbaa !20
  %.not.i.14 = icmp eq i16 %i.ff, 0
  br i1 %.not.i.14, label %bb.r, label %.lr.ph47.i

bb.r:                                             ; preds = %bb.q
  %i.fg = add i16 %i.dz, -15
  %i.fh = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep71, align 8, !tbaa !20
  %.not.i.15 = icmp eq i16 %i.fh, 0
  br i1 %.not.i.15, label %bb.s, label %.lr.ph47.i

bb.s:                                             ; preds = %bb.r
  %i.fi = add i16 %i.dz, -16
  %i.fj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep72, align 2, !tbaa !20
  %.not.i.16 = icmp eq i16 %i.fj, 0
  br i1 %.not.i.16, label %bb.t, label %.lr.ph47.i

bb.t:                                             ; preds = %bb.s
  %i.fk = add i16 %i.dz, -17
  %i.fl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep73, align 4, !tbaa !20
  %.not.i.17 = icmp eq i16 %i.fl, 0
  br i1 %.not.i.17, label %bb.u, label %.lr.ph47.i

bb.u:                                             ; preds = %bb.t
  %i.fm = add i16 %i.dz, -18
  %i.fn = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep74, align 2, !tbaa !20
  %.not.i.18 = icmp eq i16 %i.fn, 0
  br i1 %.not.i.18, label %bb.v, label %.lr.ph47.i

bb.v:                                             ; preds = %bb.u
  %i.fo = add i16 %i.dz, -19
  %i.fp = load i16, ptr %i.a, align 16, !tbaa !20
  %.not.i.19 = icmp eq i16 %i.fp, 0
  br i1 %.not.i.19, label %bb.w, label %.lr.ph47.i

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %pack.exit

.preheader.i:                                     ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.ph = phi i16 [ %i.ex, %bb.m ], [ %i.ev, %bb.l ], [ %i.et, %bb.k ], [ %i.er, %bb.j ], [ %i.ep, %bb.i ], [ %i.en, %bb.h ], [ %i.el, %bb.g ], [ %i.ej, %bb.f ], [ %i.eh, %bb.e ], [ %i.ef, %bb.d ], [ %i.ed, %bb.c ]
  %indvars.iv73.in.i.lcssa.sroa.phi.ph = phi ptr [ %indvars.iv73.i.lcssa.sroa.gep65, %bb.m ], [ %indvars.iv73.i.lcssa.sroa.gep64, %bb.l ], [ %indvars.iv73.i.lcssa.sroa.gep63, %bb.k ], [ %indvars.iv73.i.lcssa.sroa.gep62, %bb.j ], [ %indvars.iv73.i.lcssa.sroa.gep61, %bb.i ], [ %indvars.iv73.i.lcssa.sroa.gep60, %bb.h ], [ %indvars.iv73.i.lcssa.sroa.gep59, %bb.g ], [ %indvars.iv73.i.lcssa.sroa.gep58, %bb.f ], [ %indvars.iv73.i.lcssa.sroa.gep57, %bb.e ], [ %indvars.iv73.i.lcssa.sroa.gep, %bb.d ], [ %indvars.iv73.in.i.lcssa.sroa.gep, %bb.c ] ; 2 uses
  %.03341.i.lcssa.ph = phi i16 [ %i.ew, %bb.m ], [ %i.eu, %bb.l ], [ %i.es, %bb.k ], [ %i.eq, %bb.j ], [ %i.eo, %bb.i ], [ %i.em, %bb.h ], [ %i.ek, %bb.g ], [ %i.ei, %bb.f ], [ %i.eg, %bb.e ], [ %i.ee, %bb.d ], [ %i.dz, %bb.c ]
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %.03341.i.lcssa.ph, ptr %i.fq, align 2, !tbaa !26
  store i16 %i.ec, ptr %2, align 2, !tbaa !24
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %.ph, ptr %i.fs, align 2, !tbaa !20
  %i.ft = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.ph, i64 -4
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !20
  %i.fw = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.ph, i64 -20
  %i.fx = load <8 x i16>, ptr %i.fw, align 2, !tbaa !20
  store <8 x i16> %i.fx, ptr %i.fr, align 2, !tbaa !20
  br label %pack.exit

.lr.ph47.i:                                       ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.03341.i.lcssa = phi i16 [ %i.fm, %bb.u ], [ %i.fo, %bb.v ], [ %i.ey, %bb.n ], [ %i.fa, %bb.o ], [ %i.fc, %bb.p ], [ %i.fe, %bb.q ], [ %i.fg, %bb.r ], [ %i.fi, %bb.s ], [ %i.fk, %bb.t ]
  %indvars.iv59.i.lcssa = phi i64 [ 2, %bb.u ], [ 0, %bb.v ], [ 16, %bb.n ], [ 14, %bb.o ], [ 12, %bb.p ], [ 10, %bb.q ], [ 8, %bb.r ], [ 6, %bb.s ], [ 4, %bb.t ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %.03341.i.lcssa, ptr %i.fy, align 2, !tbaa !26
  store i16 %i.ec, ptr %2, align 2, !tbaa !24
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ga = sub nuw nsw i64 22, %indvars.iv59.i.lcssa
  %scevgep = getelementptr i8, ptr %2, i64 %i.ga
  %i.gb = add nuw nsw i64 %indvars.iv59.i.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.gb, i1 false), !tbaa !20
  %i.gc = sub nuw nsw i64 18, %indvars.iv59.i.lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.fz, i8 0, i64 %i.gc, i1 false), !tbaa !20
  br label %pack.exit

pack.exit:                                        ; preds = %bb.w, %.preheader.i, %.lr.ph47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @bench_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @fftaccuracy_done() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cached_bluestein_w, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @bench_free(ptr noundef nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @cached_bluestein_y, align 8, !tbaa !30 ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @bench_free(ptr noundef nonnull %i.b) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr @cached_bluestein_w, align 8, !tbaa !30
  store ptr null, ptr @cached_bluestein_y, align 8, !tbaa !30
  store i32 -1, ptr @cached_bluestein_n, align 4, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc double @toreal(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !26   ; 8 uses
  %.not = icmp eq i16 %i.b, -32768
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20   ; 3 uses
  %i.f = uitofp i16 %i.e to double
  %i.g = fmul nnan double %i.f, f0x3EF0000000000000 ; 2 uses
  %.not5863 = icmp eq i16 %i.e, 0
  br i1 %.not5863, label %.lr.ph70, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = zext i16 %i.e to i64
  br label %.lr.ph

.preheader62:                                     ; preds = %.lr.ph
  %i.i = icmp samesign ult i32 %.04364, 37
  br i1 %i.i, label %.lr.ph70, label %.preheader61

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04265 = phi i64 [ %i.j, %.lr.ph ], [ %i.h, %.lr.ph.preheader ]
  %.04364 = phi i32 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.j = lshr i64 %.04265, 1                      ; 2 uses
  %i.k = add nuw nsw i32 %.04364, 1               ; 2 uses
  %.not58 = icmp eq i64 %i.j, 0
  br i1 %.not58, label %.preheader62, label %.lr.ph, !llvm.loop !38

.preheader61:                                     ; preds = %.lr.ph70, %.lr.ph70.1, %.lr.ph70.2, %.preheader62
  %.051.lcssa = phi double [ %i.g, %.preheader62 ], [ %i.ae, %.lr.ph70 ], [ %i.aj, %.lr.ph70.1 ], [ %i.ao, %.lr.ph70.2 ]
  %.047.lcssa = phi double [ f0x3DF0000000000000, %.preheader62 ], [ f0x3CF0000000000000, %.lr.ph70 ], [ f0x3BF0000000000000, %.lr.ph70.1 ], [ f0x3AF0000000000000, %.lr.ph70.2 ] ; 2 uses
  %.044.lcssa = phi i64 [ 9, %.preheader62 ], [ 8, %.lr.ph70 ], [ 7, %.lr.ph70.1 ], [ 6, %.lr.ph70.2 ] ; 2 uses
  %i.l = getelementptr [2 x i8], ptr %i.c, i64 %.044.lcssa
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !20
  %i.o = uitofp i16 %i.n to double
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %.047.lcssa, double 0.000000e+00)
  %i.q = fmul double %.047.lcssa, f0x3EF0000000000000 ; 2 uses
  %i.r = fmul double %i.q, f0x3EF0000000000000    ; 2 uses
  %indvars.iv.next104.2 = add nsw i64 %.044.lcssa, -3 ; 2 uses
  %i.s = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv.next104.2
  %i.t = load <2 x i16>, ptr %i.s, align 2, !tbaa !20
  %i.u = uitofp <2 x i16> %i.t to <2 x double>    ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.q, double %i.p)
  %i.x = extractelement <2 x double> %i.u, i64 0
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.r, double %i.w) ; 2 uses
  %i.z = fmul double %i.r, f0x3EF0000000000000
  %i.aa = and i64 %indvars.iv.next104.2, 4294967295 ; 10 uses
  %1 = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1) ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph80.preheader, label %vector.main.loop.iter.check

.lr.ph70:                                         ; preds = %.preheader62, %bb.b
  %.169.ph = phi i32 [ %i.k, %.preheader62 ], [ 0, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !20
  %i.ad = uitofp i16 %i.ac to double
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double f0x3DF0000000000000, double %i.g) ; 2 uses
  %i.af = icmp samesign ult i32 %.169.ph, 22
  br i1 %i.af, label %.lr.ph70.1, label %.preheader61

.lr.ph70.1:                                       ; preds = %.lr.ph70
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !20
  %i.ai = uitofp i16 %i.ah to double
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double f0x3CF0000000000000, double %i.ae) ; 2 uses
  %i.ak = icmp ult i32 %.169.ph, 6
  br i1 %i.ak, label %.lr.ph70.2, label %.preheader61

.lr.ph70.2:                                       ; preds = %.lr.ph70.1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i16, ptr %i.al, align 2, !tbaa !20
  %i.an = uitofp i16 %i.am to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double f0x3BF0000000000000, double %i.aj)
  br label %.preheader61

vector.main.loop.iter.check:                      ; preds = %.preheader61
  %min.iters.check126 = icmp samesign ult i64 %i.aa, 16
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph.a

vector.ph.a:                                      ; preds = %vector.main.loop.iter.check
  %2 = and i64 %1, 12
  %n.vec = and i64 %1, 4294967280                 ; 3 uses
  %3 = sub nsw i64 %i.aa, %n.vec
  %i.ap = getelementptr [2 x i8], ptr %i.c, i64 %i.aa ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -16
  %i.ar = getelementptr i8, ptr %i.ap, i64 -32
  %wide.load = load <8 x i16>, ptr %i.aq, align 2, !tbaa !20
  %wide.load128 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !20
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse129 = shufflevector <8 x i16> %wide.load128, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.as = freeze <8 x i16> %reverse
  %i.at = freeze <8 x i16> %reverse129
  %bin.rdx.a = or <8 x i16> %i.at, %i.as
  %4 = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx.a) ; 3 uses
  %cmp.n.a = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n.a, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph.a
  %min.epilog.iters.check = icmp eq i64 %2, 0
  br i1 %min.epilog.iters.check, label %.lr.ph80.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %4, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %1, 4294967292              ; 3 uses
  %5 = sub nsw i64 %i.aa, %n.vec130
  %i.au = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  %i.av = getelementptr [2 x i8], ptr %i.c, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi132 = phi <4 x i16> [ %i.au, %vec.epilog.ph ], [ %i.ba, %vec.epilog.vector.body ]
  %i.aw = xor i64 %index131, -1
  %i.ax = getelementptr [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -6
  %wide.load133 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !20
  %reverse134 = shufflevector <4 x i16> %wide.load133, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.az = freeze <4 x i16> %reverse134
  %i.ba = or <4 x i16> %i.az, %vec.phi132         ; 2 uses
  %index.next135 = add nuw i64 %index131, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next135, %n.vec130
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bc = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ba) ; 2 uses
  %cmp.n136 = icmp eq i64 %i.aa, %n.vec130
  br i1 %cmp.n136, label %._crit_edge, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %.preheader61, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv106.ph = phi i64 [ %i.aa, %.preheader61 ], [ %3, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ]
  %.079.ph = phi i16 [ 0, %.preheader61 ], [ %4, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.lr.ph80
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.lr.ph80 ], [ %indvars.iv106.ph, %.lr.ph80.preheader ] ; 2 uses
  %.079 = phi i16 [ %i.bf, %.lr.ph80 ], [ %.079.ph, %.lr.ph80.preheader ]
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next107
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !20
  %.fr119 = freeze i16 %i.be
  %i.bf = or i16 %.fr119, %.079                   ; 2 uses
  %i.bg = icmp samesign ugt i64 %indvars.iv106, 1
  br i1 %i.bg, label %.lr.ph80, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph80, %vec.epilog.middle.block, %vector.ph.a
  %.lcssa122 = phi i16 [ %i.bc, %vec.epilog.middle.block ], [ %4, %vector.ph.a ], [ %i.bf, %.lr.ph80 ]
  %i.bh = icmp eq i16 %.lcssa122, 0
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.z, double 3.276800e+04, double %i.y)
  %i.bj = select i1 %i.bh, double %i.y, double %i.bi
  %i.bk = fadd double %.051.lcssa, %i.bj          ; 5 uses
  %i.bl = sext i16 %i.b to i32                    ; 3 uses
  %i.bm = icmp sgt i16 %i.b, 0
  br i1 %i.bm, label %.lr.ph85.preheader, label %.preheader

.lr.ph85.preheader:                               ; preds = %._crit_edge
  %xtraiter150 = and i32 %i.bl, 7
  %i.bn = icmp ult i16 %i.b, 8
  br i1 %i.bn, label %.lr.ph85.epil.preheader, label %.lr.ph85.preheader.new

.lr.ph85.preheader.new:                           ; preds = %.lr.ph85.preheader
  %unroll_iter155 = and i32 %i.bl, 32760
  br label %.lr.ph85

.preheader:                                       ; preds = %._crit_edge
  %i.bo = icmp slt i16 %i.b, 0
  br i1 %i.bo, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %.preheader
  %i.bp = sub nsw i32 0, %i.bl                    ; 2 uses
  %xtraiter = and i32 %i.bp, 7                    ; 3 uses
  %i.bq = icmp ugt i16 %i.b, -8
  br i1 %i.bq, label %.lr.ph90.epil.preheader, label %.lr.ph90.preheader.new

.lr.ph90.preheader.new:                           ; preds = %.lr.ph90.preheader
  %unroll_iter = and i32 %i.bp, 65528
  br label %.lr.ph90

.lr.ph85:                                         ; preds = %.lr.ph85, %.lr.ph85.preheader.new
  %.15282 = phi double [ %i.bk, %.lr.ph85.preheader.new ], [ %i.by, %.lr.ph85 ]
  %niter156 = phi i32 [ 0, %.lr.ph85.preheader.new ], [ %niter156.next.7, %.lr.ph85 ]
  %i.br = fmul double %.15282, 6.553600e+04
  %i.bs = fmul double %i.br, 6.553600e+04
  %i.bt = fmul double %i.bs, 6.553600e+04
  %i.bu = fmul double %i.bt, 6.553600e+04
  %i.bv = fmul double %i.bu, 6.553600e+04
  %i.bw = fmul double %i.bv, 6.553600e+04
  %i.bx = fmul double %i.bw, 6.553600e+04
  %i.by = fmul double %i.bx, 6.553600e+04         ; 3 uses
  %niter156.next.7 = add i32 %niter156, 8         ; 2 uses
  %niter156.ncmp.7 = icmp eq i32 %niter156.next.7, %unroll_iter155
  br i1 %niter156.ncmp.7, label %._crit_edge91.loopexit.unr-lcssa, label %.lr.ph85, !llvm.loop !41

.lr.ph90:                                         ; preds = %.lr.ph90, %.lr.ph90.preheader.new
  %.25388 = phi double [ %i.bk, %.lr.ph90.preheader.new ], [ %i.cg, %.lr.ph90 ]
  %niter = phi i32 [ 0, %.lr.ph90.preheader.new ], [ %niter.next.7, %.lr.ph90 ]
  %i.bz = fmul double %.25388, f0x3EF0000000000000
  %i.ca = fmul double %i.bz, f0x3EF0000000000000
  %i.cb = fmul double %i.ca, f0x3EF0000000000000
  %i.cc = fmul double %i.cb, f0x3EF0000000000000
  %i.cd = fmul double %i.cc, f0x3EF0000000000000
  %i.ce = fmul double %i.cd, f0x3EF0000000000000
  %i.cf = fmul double %i.ce, f0x3EF0000000000000
  %i.cg = fmul double %i.cf, f0x3EF0000000000000  ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge91.loopexit139.unr-lcssa, label %.lr.ph90, !llvm.loop !42

._crit_edge91.loopexit.unr-lcssa:                 ; preds = %.lr.ph85
  %i.ch = and i16 %i.b, 7
  %lcmp.mod152.not = icmp eq i16 %i.ch, 0
  br i1 %lcmp.mod152.not, label %._crit_edge91, label %.lr.ph85.epil.preheader

.lr.ph85.epil.preheader:                          ; preds = %._crit_edge91.loopexit.unr-lcssa, %.lr.ph85.preheader
  %.15282.epil.init = phi double [ %i.bk, %.lr.ph85.preheader ], [ %i.by, %._crit_edge91.loopexit.unr-lcssa ]
  %i.ci = and i16 %i.b, 7
  %lcmp.mod154 = icmp ne i16 %i.ci, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph85.epil

.lr.ph85.epil:                                    ; preds = %.lr.ph85.epil, %.lr.ph85.epil.preheader
  %.15282.epil = phi double [ %i.cj, %.lr.ph85.epil ], [ %.15282.epil.init, %.lr.ph85.epil.preheader ]
  %epil.iter151 = phi i32 [ %epil.iter151.next, %.lr.ph85.epil ], [ 0, %.lr.ph85.epil.preheader ]
  %i.cj = fmul double %.15282.epil, 6.553600e+04  ; 2 uses
  %epil.iter151.next = add i32 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i32 %epil.iter151.next, %xtraiter150
  br i1 %epil.iter151.cmp.not, label %._crit_edge91, label %.lr.ph85.epil, !llvm.loop !43

._crit_edge91.loopexit139.unr-lcssa:              ; preds = %.lr.ph90
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge91, label %.lr.ph90.epil.preheader

.lr.ph90.epil.preheader:                          ; preds = %._crit_edge91.loopexit139.unr-lcssa, %.lr.ph90.preheader
  %.25388.epil.init = phi double [ %i.bk, %.lr.ph90.preheader ], [ %i.cg, %._crit_edge91.loopexit139.unr-lcssa ]
  %lcmp.mod149 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph90.epil

.lr.ph90.epil:                                    ; preds = %.lr.ph90.epil, %.lr.ph90.epil.preheader
  %.25388.epil = phi double [ %i.ck, %.lr.ph90.epil ], [ %.25388.epil.init, %.lr.ph90.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph90.epil ], [ 0, %.lr.ph90.epil.preheader ]
  %i.ck = fmul double %.25388.epil, f0x3EF0000000000000 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge91, label %.lr.ph90.epil, !llvm.loop !44

._crit_edge91:                                    ; preds = %._crit_edge91.loopexit139.unr-lcssa, %.lr.ph90.epil, %._crit_edge91.loopexit.unr-lcssa, %.lr.ph85.epil, %.preheader
  %.253.lcssa = phi double [ %i.bk, %.preheader ], [ %i.cj, %.lr.ph85.epil ], [ %i.by, %._crit_edge91.loopexit.unr-lcssa ], [ %i.cg, %._crit_edge91.loopexit139.unr-lcssa ], [ %i.ck, %.lr.ph90.epil ] ; 2 uses
  %i.cl = load i16, ptr %0, align 2, !tbaa !24
  %i.cm = icmp eq i16 %i.cl, -1
  %i.cn = fneg double %.253.lcssa
  %.354 = select i1 %i.cm, double %i.cn, double %.253.lcssa
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge91
  %.055 = phi double [ %.354, %._crit_edge91 ], [ 0.000000e+00, %bb.a ]
  ret double %.055
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @submag0(i32 noundef range(i32 -1, 2) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [10 x i16], align 16              ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !26   ; 12 uses
  %i.d = sext i16 %i.c to i32                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !26
  %i.g = sext i16 %i.f to i32                     ; 3 uses
  %i.h = sub nsw i32 %i.d, %i.g
  %i.i = icmp slt i32 %i.h, 10
  %indvars.iv73.i.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %indvars.iv73.i.lcssa.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %indvars.iv73.i.lcssa.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %indvars.iv73.i.lcssa.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %indvars.iv73.i.lcssa.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %indvars.iv73.i.lcssa.sroa.gep58 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %indvars.iv73.i.lcssa.sroa.gep59 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %indvars.iv73.i.lcssa.sroa.gep60 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %indvars.iv73.i.lcssa.sroa.gep61 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br i1 %i.i, label %.lr.ph, label %.lr.ph38

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.l = sext i16 %i.c to i64
  %i.m = sub nsw i32 0, %i.g
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.l, %i.n                   ; 2 uses
  %i.p = add nsw i32 %i.g, 10
  %i.q = sub nsw i32 %i.p, %i.d                   ; 4 uses
  %wide.trip.count = zext i32 %i.q to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.r = add nsw i32 %i.q, -1
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.c

.preheader.unr-lcssa:                             ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next46.3, %.preheader.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.unr-lcssa ]
  %.034.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cx, %.preheader.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv45.epil = phi i64 [ %indvars.iv45.epil.init, %.epil.preheader ], [ %indvars.iv.next46.epil, %bb.b ] ; 3 uses
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.034.epil = phi i64 [ %.034.epil.init, %.epil.preheader ], [ %i.af, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv45.epil
  %i.u = load i16, ptr %i.t, align 2, !tbaa !20
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.k, i64 %indvars.iv.epil
  %i.x = load i16, ptr %i.w, align 2, !tbaa !20
  %i.y = zext i16 %i.x to i64
  %i.z = sub nsw i64 %i.v, %i.y
  %i.aa = add nsw i64 %i.z, %.034.epil            ; 2 uses
  %i.ab = trunc i64 %i.aa to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv45.epil
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !20
  %i.ad = add nsw i64 %i.aa, 2147483648
  %i.ae = lshr i64 %i.ad, 16
  %i.af = add nsw i64 %i.ae, -32768               ; 2 uses
  %indvars.iv.next46.epil = add nuw nsw i64 %indvars.iv45.epil, 1
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !48

.preheader:                                       ; preds = %bb.b, %.preheader.unr-lcssa
  %.lcssa = phi i64 [ %i.cx, %.preheader.unr-lcssa ], [ %i.af, %bb.b ]
  %i.ag = icmp samesign ult i32 %i.q, 10
  br i1 %i.ag, label %.lr.ph38, label %._crit_edge

.lr.ph38:                                         ; preds = %bb.a, %.preheader
  %.0.lcssa85 = phi i64 [ %.lcssa, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.025.lcssa84 = phi i32 [ %i.q, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.ai = zext nneg i32 %.025.lcssa84 to i64      ; 3 uses
  %i.aj = sub nsw i64 2, %i.ai
  %xtraiter92 = and i64 %i.aj, 3                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph38, %.prol.preheader
  %indvars.iv50.prol = phi i64 [ %indvars.iv.next51.prol, %.prol.preheader ], [ %i.ai, %.lr.ph38 ] ; 3 uses
  %.137.prol = phi i64 [ %i.as, %.prol.preheader ], [ %.0.lcssa85, %.lr.ph38 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph38 ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv50.prol
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !20
  %i.am = zext i16 %i.al to i64
  %i.an = add nsw i64 %.137.prol, %i.am           ; 2 uses
  %i.ao = trunc i64 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv50.prol
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !20
  %i.aq = add nsw i64 %i.an, 2147483648
  %i.ar = lshr i64 %i.aq, 16
  %i.as = add nsw i64 %i.ar, -32768               ; 2 uses
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter92
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !49

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph38
  %indvars.iv50.unr = phi i64 [ %i.ai, %.lr.ph38 ], [ %indvars.iv.next51.prol, %.prol.preheader ]
  %.137.unr = phi i64 [ %.0.lcssa85, %.lr.ph38 ], [ %i.as, %.prol.preheader ]
  %i.at = add nsw i32 %.025.lcssa84, -7
  %i.au = icmp ult i32 %i.at, 3
  br i1 %i.au, label %._crit_edge, label %.lr.ph38.new

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next46.3, %bb.c ] ; 6 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.034 = phi i64 [ 0, %.lr.ph.new ], [ %i.cx, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv45
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !20
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !20
  %i.ba = zext i16 %i.az to i64
  %i.bb = sub nsw i64 %i.ax, %i.ba
  %i.bc = add nsw i64 %i.bb, %.034                ; 2 uses
  %i.bd = trunc i64 %i.bc to i16
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv45
  store i16 %i.bd, ptr %i.be, align 8, !tbaa !20
  %i.bf = add nsw i64 %i.bc, 2147483648
  %i.bg = lshr i64 %i.bf, 16
  %i.bh = add nsw i64 %i.bg, -32768
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next46
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !20
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !20
  %i.bo = zext i16 %i.bn to i64
  %i.bp = sub nsw i64 %i.bk, %i.bo
  %i.bq = add nsw i64 %i.bp, %i.bh                ; 2 uses
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !20
  %i.bt = add nsw i64 %i.bq, 2147483648
  %i.bu = lshr i64 %i.bt, 16
  %i.bv = add nsw i64 %i.bu, -32768
  %indvars.iv.next46.1 = or disjoint i64 %indvars.iv45, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next46.1
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !20
  %i.by = zext i16 %i.bx to i64
  %i.bz = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !20
  %i.cc = zext i16 %i.cb to i64
  %i.cd = sub nsw i64 %i.by, %i.cc
  %i.ce = add nsw i64 %i.cd, %i.bv                ; 2 uses
  %i.cf = trunc i64 %i.ce to i16
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.1
  store i16 %i.cf, ptr %i.cg, align 4, !tbaa !20
  %i.ch = add nsw i64 %i.ce, 2147483648
  %i.ci = lshr i64 %i.ch, 16
  %i.cj = add nsw i64 %i.ci, -32768
  %indvars.iv.next46.2 = or disjoint i64 %indvars.iv45, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next46.2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !20
  %i.cm = zext i16 %i.cl to i64
  %i.cn = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.co = getelementptr i8, ptr %i.cn, i64 6
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !20
  %i.cq = zext i16 %i.cp to i64
  %i.cr = sub nsw i64 %i.cm, %i.cq
  %i.cs = add nsw i64 %i.cr, %i.cj                ; 2 uses
  %i.ct = trunc i64 %i.cs to i16
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.2
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !20
  %i.cv = add nsw i64 %i.cs, 2147483648
  %i.cw = lshr i64 %i.cv, 16
  %i.cx = add nsw i64 %i.cw, -32768               ; 3 uses
  %indvars.iv.next46.3 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %bb.c, !llvm.loop !3

.lr.ph38.new:                                     ; preds = %.prol.loopexit, %.lr.ph38.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.3, %.lr.ph38.new ], [ %indvars.iv50.unr, %.prol.loopexit ] ; 6 uses
  %.137 = phi i64 [ %i.eh, %.lr.ph38.new ], [ %.137.unr, %.prol.loopexit ]
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv50
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !20
  %i.da = zext i16 %i.cz to i64
  %i.db = add nsw i64 %.137, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i16
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv50
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !20
  %i.de = add nsw i64 %i.db, 2147483648
  %i.df = lshr i64 %i.de, 16
  %i.dg = add nsw i64 %i.df, -32768
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.next51
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !20
  %i.dj = zext i16 %i.di to i64
  %i.dk = add nsw i64 %i.dg, %i.dj                ; 2 uses
  %i.dl = trunc i64 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !20
  %i.dn = add nsw i64 %i.dk, 2147483648
  %i.do = lshr i64 %i.dn, 16
  %i.dp = add nsw i64 %i.do, -32768
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.next51.1
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !20
  %i.ds = zext i16 %i.dr to i64
  %i.dt = add nsw i64 %i.dp, %i.ds                ; 2 uses
  %i.du = trunc i64 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.1
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !20
  %i.dw = add nsw i64 %i.dt, 2147483648
  %i.dx = lshr i64 %i.dw, 16
  %i.dy = add nsw i64 %i.dx, -32768
  %indvars.iv.next51.2 = add nuw nsw i64 %indvars.iv50, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.next51.2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !20
  %i.eb = zext i16 %i.ea to i64
  %i.ec = add nsw i64 %i.dy, %i.eb                ; 2 uses
  %i.ed = trunc i64 %i.ec to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.2
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !20
  %i.ef = add nsw i64 %i.ec, 2147483648
  %i.eg = lshr i64 %i.ef, 16
  %i.eh = add nsw i64 %i.eg, -32768
  %indvars.iv.next51.3 = add nuw nsw i64 %indvars.iv50, 4 ; 2 uses
  %exitcond53.not.3 = icmp eq i64 %indvars.iv.next51.3, 10
  br i1 %exitcond53.not.3, label %._crit_edge, label %.lr.ph38.new, !llvm.loop !4

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph38.new, %.preheader
  %i.ei = load i16, ptr %1, align 2, !tbaa !24    ; 2 uses
  %i.ej = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not = icmp eq i16 %i.ej, 0
  br i1 %.not.i.not.not, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %._crit_edge
  %i.ek = add i16 %i.c, -1
  %i.el = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54, align 16, !tbaa !20
  %.not.i.1 = icmp eq i16 %i.el, 0
  br i1 %.not.i.1, label %bb.e, label %.lr.ph47.i

bb.e:                                             ; preds = %bb.d
  %i.em = add i16 %i.c, -2
  %i.en = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55, align 2, !tbaa !20
  %.not.i.2 = icmp eq i16 %i.en, 0
  br i1 %.not.i.2, label %bb.f, label %.lr.ph47.i

bb.f:                                             ; preds = %bb.e
  %i.eo = add i16 %i.c, -3
  %i.ep = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56, align 4, !tbaa !20
  %.not.i.3 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.3, label %bb.g, label %.lr.ph47.i

bb.g:                                             ; preds = %bb.f
  %i.eq = add i16 %i.c, -4
  %i.er = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57, align 2, !tbaa !20
  %.not.i.4 = icmp eq i16 %i.er, 0
  br i1 %.not.i.4, label %bb.h, label %.lr.ph47.i

bb.h:                                             ; preds = %bb.g
  %i.es = add i16 %i.c, -5
  %i.et = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58, align 8, !tbaa !20
  %.not.i.5 = icmp eq i16 %i.et, 0
  br i1 %.not.i.5, label %bb.i, label %.lr.ph47.i

bb.i:                                             ; preds = %bb.h
  %i.eu = add i16 %i.c, -6
  %i.ev = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59, align 2, !tbaa !20
  %.not.i.6 = icmp eq i16 %i.ev, 0
  br i1 %.not.i.6, label %bb.j, label %.lr.ph47.i

bb.j:                                             ; preds = %bb.i
  %i.ew = add i16 %i.c, -7
  %i.ex = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60, align 4, !tbaa !20
  %.not.i.7 = icmp eq i16 %i.ex, 0
  br i1 %.not.i.7, label %bb.k, label %.lr.ph47.i

bb.k:                                             ; preds = %bb.j
  %i.ey = add i16 %i.c, -8
  %i.ez = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61, align 2, !tbaa !20
  %.not.i.8 = icmp eq i16 %i.ez, 0
  br i1 %.not.i.8, label %bb.l, label %.lr.ph47.i

bb.l:                                             ; preds = %bb.k
  %i.fa = add i16 %i.c, -9
  %i.fb = load i16, ptr %i.a, align 16, !tbaa !20
  %.not.i.9 = icmp eq i16 %i.fb, 0
  br i1 %.not.i.9, label %bb.m, label %.lr.ph47.i

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %pack.exit

.preheader.i:                                     ; preds = %._crit_edge
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.c, ptr %i.fc, align 2, !tbaa !26
  %i.fd = trunc nsw i32 %0 to i16
  %i.fe = mul i16 %i.ei, %i.fd
  store i16 %i.fe, ptr %3, align 2, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %i.ej, ptr %i.fg, align 2, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fi = load i16, ptr %i.fh, align 16, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !20
  %i.fk = load <8 x i16>, ptr %i.a, align 16, !tbaa !20
  store <8 x i16> %i.fk, ptr %i.ff, align 2, !tbaa !20
  br label %pack.exit

.lr.ph47.i:                                       ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.03341.i.lcssa.ph = phi i16 [ %i.fa, %bb.l ], [ %i.ey, %bb.k ], [ %i.ew, %bb.j ], [ %i.eu, %bb.i ], [ %i.es, %bb.h ], [ %i.eq, %bb.g ], [ %i.eo, %bb.f ], [ %i.em, %bb.e ], [ %i.ek, %bb.d ]
  %indvars.iv59.i.lcssa.ph = phi i64 [ 0, %bb.l ], [ 2, %bb.k ], [ 4, %bb.j ], [ 6, %bb.i ], [ 8, %bb.h ], [ 10, %bb.g ], [ 12, %bb.f ], [ 14, %bb.e ], [ 16, %bb.d ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.03341.i.lcssa.ph, ptr %i.fl, align 2, !tbaa !26
  %i.fm = trunc nsw i32 %0 to i16
  %i.fn = mul i16 %i.ei, %i.fm
  store i16 %i.fn, ptr %3, align 2, !tbaa !24
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fp = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph
  %scevgep = getelementptr i8, ptr %3, i64 %i.fp
  %i.fq = add nuw nsw i64 %indvars.iv59.i.lcssa.ph, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.fq, i1 false), !tbaa !20
  %i.fr = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.fo, i8 0, i64 %i.fr, i1 false), !tbaa !20
  br label %pack.exit

pack.exit:                                        ; preds = %bb.m, %.preheader.i, %.lr.ph47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @addmag0(i32 noundef range(i32 -1, 2) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [11 x i16], align 16              ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !26   ; 13 uses
  %i.d = sext i16 %i.c to i32                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !26
  %i.g = sext i16 %i.f to i32                     ; 3 uses
  %i.h = sub nsw i32 %i.d, %i.g
  %i.i = icmp slt i32 %i.h, 10
  %indvars.iv73.i.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep60 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %indvars.iv73.i.lcssa.sroa.gep61 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %indvars.iv73.i.lcssa.sroa.gep62 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %indvars.iv73.i.lcssa.sroa.gep63 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %indvars.iv73.i.lcssa.sroa.gep64 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %indvars.iv73.i.lcssa.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %indvars.iv73.i.lcssa.sroa.gep66 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %indvars.iv73.i.lcssa.sroa.gep67 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %indvars.iv73.i.lcssa.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %indvars.iv73.in.i.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br i1 %i.i, label %.lr.ph, label %.lr.ph40

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.l = sext i16 %i.c to i64
  %i.m = sub nsw i32 0, %i.g
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.l, %i.n                   ; 2 uses
  %i.p = add nsw i32 %i.g, 10
  %i.q = sub nsw i32 %i.p, %i.d                   ; 5 uses
  %wide.trip.count = zext i32 %i.q to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.r = add nsw i32 %i.q, -1
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.c

.preheader.unr-lcssa:                             ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %indvars.iv51.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next52.3, %.preheader.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.unr-lcssa ]
  %.036.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cl, %.preheader.unr-lcssa ]
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv51.epil = phi i64 [ %indvars.iv51.epil.init, %.epil.preheader ], [ %indvars.iv.next52.epil, %bb.b ] ; 3 uses
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.036.epil = phi i64 [ %.036.epil.init, %.epil.preheader ], [ %i.ad, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv51.epil
  %i.u = load i16, ptr %i.t, align 2, !tbaa !20
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.k, i64 %indvars.iv.epil
  %i.x = load i16, ptr %i.w, align 2, !tbaa !20
  %i.y = zext i16 %i.x to i64
  %i.z = add nuw nsw i64 %.036.epil, %i.v
  %i.aa = add nuw nsw i64 %i.z, %i.y              ; 2 uses
  %i.ab = trunc i64 %i.aa to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv51.epil
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !20
  %i.ad = lshr i64 %i.aa, 16                      ; 2 uses
  %indvars.iv.next52.epil = add nuw nsw i64 %indvars.iv51.epil, 1
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !50

.preheader:                                       ; preds = %bb.b, %.preheader.unr-lcssa
  %.lcssa101 = phi i64 [ %i.cl, %.preheader.unr-lcssa ], [ %i.ad, %bb.b ] ; 2 uses
  %i.ae = icmp samesign ult i32 %i.q, 10
  br i1 %i.ae, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %bb.a, %.preheader
  %.0.lcssa94 = phi i64 [ %.lcssa101, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.027.lcssa93 = phi i32 [ %i.q, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  %i.ag = zext nneg i32 %.027.lcssa93 to i64      ; 3 uses
  %i.ah = sub nsw i64 2, %i.ag
  %xtraiter104 = and i64 %i.ah, 7                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph40, %.prol.preheader
  %indvars.iv56.prol = phi i64 [ %indvars.iv.next57.prol, %.prol.preheader ], [ %i.ag, %.lr.ph40 ] ; 3 uses
  %.139.prol = phi i64 [ %i.ao, %.prol.preheader ], [ %.0.lcssa94, %.lr.ph40 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph40 ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv56.prol
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !20
  %i.ak = zext i16 %i.aj to i64
  %i.al = add nuw nsw i64 %.139.prol, %i.ak       ; 2 uses
  %i.am = trunc i64 %i.al to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv56.prol
  store i16 %i.am, ptr %i.an, align 2, !tbaa !20
  %i.ao = lshr i64 %i.al, 16                      ; 3 uses
  %indvars.iv.next57.prol = add nuw nsw i64 %indvars.iv56.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter104
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !51

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph40
  %.lcssa.unr = phi i64 [ poison, %.lr.ph40 ], [ %i.ao, %.prol.preheader ]
  %indvars.iv56.unr = phi i64 [ %i.ag, %.lr.ph40 ], [ %indvars.iv.next57.prol, %.prol.preheader ]
  %.139.unr = phi i64 [ %.0.lcssa94, %.lr.ph40 ], [ %i.ao, %.prol.preheader ]
  %i.ap = add nsw i32 %.027.lcssa93, -3
  %i.aq = icmp ult i32 %i.ap, 7
  br i1 %i.aq, label %._crit_edge, label %.lr.ph40.new

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv51 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next52.3, %bb.c ] ; 6 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.036 = phi i64 [ 0, %.lr.ph.new ], [ %i.cl, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv51
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !20
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.av = load i16, ptr %i.au, align 2, !tbaa !20
  %i.aw = zext i16 %i.av to i64
  %i.ax = add nuw nsw i64 %.036, %i.at
  %i.ay = add nuw nsw i64 %i.ax, %i.aw            ; 2 uses
  %i.az = trunc i64 %i.ay to i16
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv51
  store i16 %i.az, ptr %i.ba, align 8, !tbaa !20
  %i.bb = lshr i64 %i.ay, 16
  %indvars.iv.next52 = or disjoint i64 %indvars.iv51, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !20
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !20
  %i.bi = zext i16 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.bb, %i.be
  %i.bk = add nuw nsw i64 %i.bj, %i.bi            ; 2 uses
  %i.bl = trunc i64 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next52
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !20
  %i.bn = lshr i64 %i.bk, 16
  %indvars.iv.next52.1 = or disjoint i64 %indvars.iv51, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.1
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !20
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !20
  %i.bu = zext i16 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bn, %i.bq
  %i.bw = add nuw nsw i64 %i.bv, %i.bu            ; 2 uses
  %i.bx = trunc i64 %i.bw to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next52.1
  store i16 %i.bx, ptr %i.by, align 4, !tbaa !20
  %i.bz = lshr i64 %i.bw, 16
  %indvars.iv.next52.2 = or disjoint i64 %indvars.iv51, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !20
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.ce = getelementptr i8, ptr %i.cd, i64 6
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !20
  %i.cg = zext i16 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.bz, %i.cc
  %i.ci = add nuw nsw i64 %i.ch, %i.cg            ; 2 uses
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next52.2
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !20
  %i.cl = lshr i64 %i.ci, 16                      ; 3 uses
  %indvars.iv.next52.3 = add nuw nsw i64 %indvars.iv51, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %bb.c, !llvm.loop !5

.lr.ph40.new:                                     ; preds = %.prol.loopexit, %.lr.ph40.new
  %indvars.iv56 = phi i64 [ %indvars.iv.next57.7, %.lr.ph40.new ], [ %indvars.iv56.unr, %.prol.loopexit ] ; 10 uses
  %.139 = phi i64 [ %i.ep, %.lr.ph40.new ], [ %.139.unr, %.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv56
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !20
  %i.co = zext i16 %i.cn to i64
  %i.cp = add nuw nsw i64 %.139, %i.co            ; 2 uses
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv56
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !20
  %i.cs = lshr i64 %i.cp, 16
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !20
  %i.cv = zext i16 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cs, %i.cv            ; 2 uses
  %i.cx = trunc i64 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !20
  %i.cz = lshr i64 %i.cw, 16
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.1
  %i.db = load i16, ptr %i.da, align 2, !tbaa !20
  %i.dc = zext i16 %i.db to i64
  %i.dd = add nuw nsw i64 %i.cz, %i.dc            ; 2 uses
  %i.de = trunc i64 %i.dd to i16
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.1
  store i16 %i.de, ptr %i.df, align 2, !tbaa !20
  %i.dg = lshr i64 %i.dd, 16
  %indvars.iv.next57.2 = add nuw nsw i64 %indvars.iv56, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !20
  %i.dj = zext i16 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dg, %i.dj            ; 2 uses
  %i.dl = trunc i64 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.2
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !20
  %i.dn = lshr i64 %i.dk, 16
  %indvars.iv.next57.3 = add nuw nsw i64 %indvars.iv56, 4 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.3
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !20
  %i.dq = zext i16 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dn, %i.dq            ; 2 uses
  %i.ds = trunc i64 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.3
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !20
  %i.du = lshr i64 %i.dr, 16
  %indvars.iv.next57.4 = add nuw nsw i64 %indvars.iv56, 5 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.4
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !20
  %i.dx = zext i16 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.du, %i.dx            ; 2 uses
  %i.dz = trunc i64 %i.dy to i16
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.4
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !20
  %i.eb = lshr i64 %i.dy, 16
  %indvars.iv.next57.5 = add nuw nsw i64 %indvars.iv56, 6 ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.5
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !20
  %i.ee = zext i16 %i.ed to i64
  %i.ef = add nuw nsw i64 %i.eb, %i.ee            ; 2 uses
  %i.eg = trunc i64 %i.ef to i16
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.5
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !20
  %i.ei = lshr i64 %i.ef, 16
  %indvars.iv.next57.6 = add nuw nsw i64 %indvars.iv56, 7 ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next57.6
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !20
  %i.el = zext i16 %i.ek to i64
  %i.em = add nuw nsw i64 %i.ei, %i.el            ; 2 uses
  %i.en = trunc i64 %i.em to i16
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next57.6
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !20
  %i.ep = lshr i64 %i.em, 16                      ; 2 uses
  %indvars.iv.next57.7 = add nuw nsw i64 %indvars.iv56, 8 ; 2 uses
  %exitcond59.not.7 = icmp eq i64 %indvars.iv.next57.7, 10
  br i1 %exitcond59.not.7, label %._crit_edge, label %.lr.ph40.new, !llvm.loop !6

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph40.new, %.preheader
  %.128.lcssa = phi i32 [ %i.q, %.preheader ], [ 10, %.lr.ph40.new ], [ 10, %.prol.loopexit ]
  %.1.lcssa = phi i64 [ %.lcssa101, %.preheader ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ep, %.lr.ph40.new ]
  %i.eq = trunc nuw nsw i64 %.1.lcssa to i16
  %i.er = zext nneg i32 %.128.lcssa to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.er
  store i16 %i.eq, ptr %i.es, align 2, !tbaa !20
  %i.et = add i16 %i.c, 1
  %i.eu = load i16, ptr %1, align 2, !tbaa !24    ; 2 uses
  %i.ev = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep, align 4, !tbaa !20 ; 2 uses
  %.not.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %._crit_edge
  %i.ew = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60, align 2, !tbaa !20 ; 2 uses
  %.not.i.1 = icmp eq i16 %i.ew, 0
  br i1 %.not.i.1, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.ex = add i16 %i.c, -1
  %i.ey = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61, align 16, !tbaa !20
  %.not.i.2 = icmp eq i16 %i.ey, 0
  br i1 %.not.i.2, label %bb.f, label %.lr.ph47.i

bb.f:                                             ; preds = %bb.e
  %i.ez = add i16 %i.c, -2
  %i.fa = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62, align 2, !tbaa !20
  %.not.i.3 = icmp eq i16 %i.fa, 0
  br i1 %.not.i.3, label %bb.g, label %.lr.ph47.i

bb.g:                                             ; preds = %bb.f
  %i.fb = add i16 %i.c, -3
  %i.fc = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63, align 4, !tbaa !20
  %.not.i.4 = icmp eq i16 %i.fc, 0
  br i1 %.not.i.4, label %bb.h, label %.lr.ph47.i

bb.h:                                             ; preds = %bb.g
  %i.fd = add i16 %i.c, -4
  %i.fe = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64, align 2, !tbaa !20
  %.not.i.5 = icmp eq i16 %i.fe, 0
  br i1 %.not.i.5, label %bb.i, label %.lr.ph47.i

bb.i:                                             ; preds = %bb.h
  %i.ff = add i16 %i.c, -5
  %i.fg = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65, align 8, !tbaa !20
  %.not.i.6 = icmp eq i16 %i.fg, 0
  br i1 %.not.i.6, label %bb.j, label %.lr.ph47.i

bb.j:                                             ; preds = %bb.i
  %i.fh = add i16 %i.c, -6
  %i.fi = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66, align 2, !tbaa !20
  %.not.i.7 = icmp eq i16 %i.fi, 0
  br i1 %.not.i.7, label %bb.k, label %.lr.ph47.i

bb.k:                                             ; preds = %bb.j
  %i.fj = add i16 %i.c, -7
  %i.fk = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67, align 4, !tbaa !20
  %.not.i.8 = icmp eq i16 %i.fk, 0
  br i1 %.not.i.8, label %bb.l, label %.lr.ph47.i

bb.l:                                             ; preds = %bb.k
  %i.fl = add i16 %i.c, -8
  %i.fm = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68, align 2, !tbaa !20
  %.not.i.9 = icmp eq i16 %i.fm, 0
  br i1 %.not.i.9, label %bb.m, label %.lr.ph47.i

bb.m:                                             ; preds = %bb.l
  %i.fn = add i16 %i.c, -9
  %i.fo = load i16, ptr %i.a, align 16, !tbaa !20
  %.not.i.10 = icmp eq i16 %i.fo, 0
  br i1 %.not.i.10, label %bb.n, label %.lr.ph47.i

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %pack.exit

.preheader.i:                                     ; preds = %._crit_edge, %bb.d
  %i.fp = phi i16 [ %i.ev, %._crit_edge ], [ %i.ew, %bb.d ]
  %indvars.iv73.in.i.lcssa.sroa.phi = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep, %._crit_edge ], [ %indvars.iv73.i.lcssa.sroa.gep, %bb.d ] ; 2 uses
  %.03341.i.lcssa = phi i16 [ %i.et, %._crit_edge ], [ %i.c, %bb.d ]
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.03341.i.lcssa, ptr %i.fq, align 2, !tbaa !26
  %i.fr = trunc nsw i32 %0 to i16
  %i.fs = mul i16 %i.eu, %i.fr
  store i16 %i.fs, ptr %3, align 2, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %i.fp, ptr %i.fu, align 2, !tbaa !20
  %i.fv = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi, i64 -4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !20
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !20
  %i.fy = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi, i64 -20
  %i.fz = load <8 x i16>, ptr %i.fy, align 2, !tbaa !20
  store <8 x i16> %i.fz, ptr %i.ft, align 2, !tbaa !20
  br label %pack.exit

.lr.ph47.i:                                       ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.03341.i.lcssa.ph = phi i16 [ %i.fn, %bb.m ], [ %i.fl, %bb.l ], [ %i.fj, %bb.k ], [ %i.fh, %bb.j ], [ %i.ff, %bb.i ], [ %i.fd, %bb.h ], [ %i.fb, %bb.g ], [ %i.ez, %bb.f ], [ %i.ex, %bb.e ]
  %indvars.iv59.i.lcssa.ph = phi i64 [ 0, %bb.m ], [ 2, %bb.l ], [ 4, %bb.k ], [ 6, %bb.j ], [ 8, %bb.i ], [ 10, %bb.h ], [ 12, %bb.g ], [ 14, %bb.f ], [ 16, %bb.e ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.03341.i.lcssa.ph, ptr %i.ga, align 2, !tbaa !26
  %i.gb = trunc nsw i32 %0 to i16
  %i.gc = mul i16 %i.eu, %i.gb
  store i16 %i.gc, ptr %3, align 2, !tbaa !24
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ge = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph
  %scevgep = getelementptr i8, ptr %3, i64 %i.ge
  %i.gf = add nuw nsw i64 %indvars.iv59.i.lcssa.ph, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.gf, i1 false), !tbaa !20
  %i.gg = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.gd, i8 0, i64 %i.gg, i1 false), !tbaa !20
  br label %pack.exit

pack.exit:                                        ; preds = %bb.n, %.preheader.i, %.lr.ph47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i32 @power_of_two(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @fft0(i32 noundef %0, ptr nofree noundef %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca [10 x i16], align 16              ; 24 uses
  %i.b = alloca [10 x i16], align 16              ; 24 uses
  %i.c = alloca [11 x i16], align 16              ; 30 uses
  %i.d = alloca [11 x i16], align 16              ; 30 uses
  %i.e = alloca [10 x i16], align 16              ; 24 uses
  %i.f = alloca [10 x i16], align 16              ; 24 uses
  %i.g = alloca [11 x i16], align 16              ; 30 uses
  %i.h = alloca [11 x i16], align 16              ; 30 uses
  %i.i = alloca [11 x i16], align 16              ; 30 uses
  %i.j = alloca [11 x i16], align 16              ; 30 uses
  %i.k = alloca [10 x i16], align 16              ; 24 uses
  %i.l = alloca [10 x i16], align 16              ; 24 uses
  %i.m = alloca [11 x i16], align 16              ; 30 uses
  %i.n = alloca [11 x i16], align 16              ; 30 uses
  %i.o = alloca [10 x i16], align 16              ; 24 uses
  %i.p = alloca [10 x i16], align 16              ; 24 uses
  %i.q = alloca [11 x i16], align 16              ; 30 uses
  %i.r = alloca [11 x i16], align 16              ; 30 uses
  %i.s = alloca [10 x i16], align 16              ; 24 uses
  %i.t = alloca [10 x i16], align 16              ; 24 uses
  %i.u = alloca [10 x i16], align 16              ; 24 uses
  %i.v = alloca [10 x i16], align 16              ; 24 uses
  %i.w = alloca [11 x i16], align 16              ; 30 uses
  %i.x = alloca [11 x i16], align 16              ; 30 uses
  %.sroa.0.i = alloca %struct.anon, align 16      ; 6 uses
  %3 = alloca [1 x %struct.anon], align 16        ; 12 uses
  %4 = alloca [1 x %struct.anon], align 16        ; 12 uses
  %5 = alloca [1 x %struct.anon], align 16        ; 15 uses
  %6 = alloca [1 x %struct.anon], align 16        ; 15 uses
  %7 = alloca [1 x %struct.anon], align 16        ; 5 uses
  %8 = alloca [1 x %struct.anon], align 16        ; 5 uses
  %9 = alloca [1 x %struct.anon], align 16        ; 17 uses
  %10 = alloca [1 x %struct.anon], align 16       ; 17 uses
  %11 = alloca [1 x %struct.anon], align 16       ; 30 uses
  %12 = alloca [1 x %struct.anon], align 16       ; 30 uses
  %i.y = icmp sgt i32 %0, 1
  br i1 %i.y, label %.lr.ph.preheader.i, label %._crit_edge1159

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.z = add nsw i32 %0, -1
  %wide.trip.count.i = zext nneg i32 %i.z to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.02629.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.aj, %bb.d ] ; 3 uses
  %i.aa = zext nneg i32 %.02629.i to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.i, %i.aa
  br i1 %i.ab, label %bb.b, label %.preheader1525

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 2 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !22
  %i.ad = shl nuw nsw i32 %.02629.i, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ae ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ac, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.af, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 2 dereferenceable(24) %i.ag, i64 24, i1 false), !tbaa.struct !22
  %i.ah = getelementptr i8, ptr %i.af, i64 24     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ah, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.preheader1525

.preheader1525:                                   ; preds = %bb.b, %.lr.ph.i
  br label %bb.c

bb.c:                                             ; preds = %.preheader1525, %bb.c
  %.1.i = phi i32 [ %i.aj, %bb.c ], [ %.02629.i, %.preheader1525 ]
  %.0.i = phi i32 [ %i.ai, %bb.c ], [ %0, %.preheader1525 ]
  %i.ai = lshr i32 %.0.i, 1                       ; 3 uses
  %i.aj = xor i32 %i.ai, %.1.i                    ; 3 uses
  %i.ak = and i32 %i.aj, %i.ai
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.c, label %bb.d, !llvm.loop !52

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.lr.ph, label %.lr.ph.i, !llvm.loop !53

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 70 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 70 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 22 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 22 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 18 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 18 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 14 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 14 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 6 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep60.i = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %indvars.iv73.i.lcssa.sroa.gep61.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %indvars.iv73.i.lcssa.sroa.gep62.i = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %indvars.iv73.i.lcssa.sroa.gep63.i = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %indvars.iv73.i.lcssa.sroa.gep64.i = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %indvars.iv73.i.lcssa.sroa.gep65.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %indvars.iv73.i.lcssa.sroa.gep66.i = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %indvars.iv73.i.lcssa.sroa.gep67.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %indvars.iv73.i.lcssa.sroa.gep68.i = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %indvars.iv73.in.i.lcssa.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 2 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 78 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 22 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 18 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 14 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 6 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep.i45 = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep60.i46 = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  %indvars.iv73.i.lcssa.sroa.gep61.i47 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %indvars.iv73.i.lcssa.sroa.gep62.i48 = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %indvars.iv73.i.lcssa.sroa.gep63.i49 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %indvars.iv73.i.lcssa.sroa.gep64.i50 = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %indvars.iv73.i.lcssa.sroa.gep65.i51 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %indvars.iv73.i.lcssa.sroa.gep66.i52 = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %indvars.iv73.i.lcssa.sroa.gep67.i53 = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %indvars.iv73.i.lcssa.sroa.gep68.i54 = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %indvars.iv73.in.i.lcssa.sroa.gep.i55 = getelementptr inbounds nuw i8, ptr %i.w, i64 22
  %indvars.iv73.i.lcssa.sroa.gep.i94 = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %indvars.iv73.i.lcssa.sroa.gep54.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %indvars.iv73.i.lcssa.sroa.gep56.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %indvars.iv73.i.lcssa.sroa.gep57.i = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %indvars.iv73.i.lcssa.sroa.gep58.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %indvars.iv73.i.lcssa.sroa.gep59.i = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %indvars.iv73.i.lcssa.sroa.gep60.i95 = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %indvars.iv73.i.lcssa.sroa.gep61.i96 = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %indvars.iv73.i.lcssa.sroa.gep.i118 = getelementptr inbounds nuw i8, ptr %i.u, i64 18
  %indvars.iv73.i.lcssa.sroa.gep54.i119 = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep55.i120 = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %indvars.iv73.i.lcssa.sroa.gep56.i121 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %indvars.iv73.i.lcssa.sroa.gep57.i122 = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %indvars.iv73.i.lcssa.sroa.gep58.i123 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %indvars.iv73.i.lcssa.sroa.gep59.i124 = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %indvars.iv73.i.lcssa.sroa.gep60.i125 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %indvars.iv73.i.lcssa.sroa.gep61.i126 = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %indvars.iv73.i.lcssa.sroa.gep.i161 = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  %indvars.iv73.i.lcssa.sroa.gep54.i162 = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep55.i163 = getelementptr inbounds nuw i8, ptr %i.t, i64 14
  %indvars.iv73.i.lcssa.sroa.gep56.i164 = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %indvars.iv73.i.lcssa.sroa.gep57.i165 = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %indvars.iv73.i.lcssa.sroa.gep58.i166 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %indvars.iv73.i.lcssa.sroa.gep59.i167 = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %indvars.iv73.i.lcssa.sroa.gep60.i168 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %indvars.iv73.i.lcssa.sroa.gep61.i169 = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 2 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 78 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 22 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 18 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 14 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 6 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep.i203 = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %indvars.iv73.i.lcssa.sroa.gep54.i204 = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep55.i205 = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  %indvars.iv73.i.lcssa.sroa.gep56.i206 = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %indvars.iv73.i.lcssa.sroa.gep57.i207 = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %indvars.iv73.i.lcssa.sroa.gep58.i208 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %indvars.iv73.i.lcssa.sroa.gep59.i209 = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %indvars.iv73.i.lcssa.sroa.gep60.i210 = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %indvars.iv73.i.lcssa.sroa.gep61.i211 = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %indvars.iv73.i.lcssa.sroa.gep.i245 = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep60.i246 = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %indvars.iv73.i.lcssa.sroa.gep61.i247 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %indvars.iv73.i.lcssa.sroa.gep62.i248 = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %indvars.iv73.i.lcssa.sroa.gep63.i249 = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %indvars.iv73.i.lcssa.sroa.gep64.i250 = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %indvars.iv73.i.lcssa.sroa.gep65.i251 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %indvars.iv73.i.lcssa.sroa.gep66.i252 = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %indvars.iv73.i.lcssa.sroa.gep67.i253 = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %indvars.iv73.i.lcssa.sroa.gep68.i254 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %indvars.iv73.in.i.lcssa.sroa.gep.i255 = getelementptr inbounds nuw i8, ptr %i.r, i64 22
  %indvars.iv73.i.lcssa.sroa.gep.i294 = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep60.i295 = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %indvars.iv73.i.lcssa.sroa.gep61.i296 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %indvars.iv73.i.lcssa.sroa.gep62.i297 = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  %indvars.iv73.i.lcssa.sroa.gep63.i298 = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %indvars.iv73.i.lcssa.sroa.gep64.i299 = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %indvars.iv73.i.lcssa.sroa.gep65.i300 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %indvars.iv73.i.lcssa.sroa.gep66.i301 = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %indvars.iv73.i.lcssa.sroa.gep67.i302 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %indvars.iv73.i.lcssa.sroa.gep68.i303 = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %indvars.iv73.in.i.lcssa.sroa.gep.i304 = getelementptr inbounds nuw i8, ptr %i.q, i64 22
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 70 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 18 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep.i347 = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %indvars.iv73.i.lcssa.sroa.gep54.i348 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep55.i349 = getelementptr inbounds nuw i8, ptr %i.p, i64 14
  %indvars.iv73.i.lcssa.sroa.gep56.i350 = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %indvars.iv73.i.lcssa.sroa.gep57.i351 = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %indvars.iv73.i.lcssa.sroa.gep58.i352 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %indvars.iv73.i.lcssa.sroa.gep59.i353 = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %indvars.iv73.i.lcssa.sroa.gep60.i354 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %indvars.iv73.i.lcssa.sroa.gep61.i355 = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %indvars.iv73.i.lcssa.sroa.gep.i389 = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  %indvars.iv73.i.lcssa.sroa.gep54.i390 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep55.i391 = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %indvars.iv73.i.lcssa.sroa.gep56.i392 = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %indvars.iv73.i.lcssa.sroa.gep57.i393 = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %indvars.iv73.i.lcssa.sroa.gep58.i394 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %indvars.iv73.i.lcssa.sroa.gep59.i395 = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %indvars.iv73.i.lcssa.sroa.gep60.i396 = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %indvars.iv73.i.lcssa.sroa.gep61.i397 = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %indvars.iv73.i.lcssa.sroa.gep.i431 = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep60.i432 = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %indvars.iv73.i.lcssa.sroa.gep61.i433 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %indvars.iv73.i.lcssa.sroa.gep62.i434 = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %indvars.iv73.i.lcssa.sroa.gep63.i435 = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %indvars.iv73.i.lcssa.sroa.gep64.i436 = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %indvars.iv73.i.lcssa.sroa.gep65.i437 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %indvars.iv73.i.lcssa.sroa.gep66.i438 = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %indvars.iv73.i.lcssa.sroa.gep67.i439 = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %indvars.iv73.i.lcssa.sroa.gep68.i440 = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %indvars.iv73.in.i.lcssa.sroa.gep.i441 = getelementptr inbounds nuw i8, ptr %i.n, i64 22
  %indvars.iv73.i.lcssa.sroa.gep.i480 = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep60.i481 = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %indvars.iv73.i.lcssa.sroa.gep61.i482 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %indvars.iv73.i.lcssa.sroa.gep62.i483 = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %indvars.iv73.i.lcssa.sroa.gep63.i484 = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %indvars.iv73.i.lcssa.sroa.gep64.i485 = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %indvars.iv73.i.lcssa.sroa.gep65.i486 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %indvars.iv73.i.lcssa.sroa.gep66.i487 = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %indvars.iv73.i.lcssa.sroa.gep67.i488 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %indvars.iv73.i.lcssa.sroa.gep68.i489 = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %indvars.iv73.in.i.lcssa.sroa.gep.i490 = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 70 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 6 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep.i533 = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  %indvars.iv73.i.lcssa.sroa.gep54.i534 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %indvars.iv73.i.lcssa.sroa.gep55.i535 = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %indvars.iv73.i.lcssa.sroa.gep56.i536 = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %indvars.iv73.i.lcssa.sroa.gep57.i537 = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %indvars.iv73.i.lcssa.sroa.gep58.i538 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %indvars.iv73.i.lcssa.sroa.gep59.i539 = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %indvars.iv73.i.lcssa.sroa.gep60.i540 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
end_hunk_0
begin_hunk_1_@fft0:bb.a
mcexp.exit:                                       ; preds = %bb.k, %bb.h, %bb.i
  %i.dz = icmp sgt i32 %0, %indvars1211
  br i1 %i.dz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mcexp.exit, %sub.exit37
  %indvars.iv1208 = phi i64 [ %indvars.iv.next1209, %sub.exit37 ], [ %indvars.iv, %mcexp.exit ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv1208, 48
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 67 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.df ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.ea, i64 24, i1 false), !tbaa.struct !22
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 17 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.ec, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.eb, i64 24, i1 false), !tbaa.struct !22
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 17 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.ed, i64 24, i1 false), !tbaa.struct !22
  call fastcc void @mul(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %9)
  call fastcc void @mul(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %10)
  %i.ee = load i16, ptr %9, align 16, !tbaa !24   ; 7 uses
  %i.ef = load i16, ptr %10, align 16, !tbaa !24  ; 3 uses
  %i.eg = icmp eq i16 %i.ee, %i.ef
  %i.eh = load i16, ptr %i.ap, align 2, !tbaa !26 ; 29 uses
  %i.ei = load i16, ptr %i.aq, align 2, !tbaa !26 ; 29 uses
  %i.ej = icmp sgt i16 %i.eh, %i.ei
  br i1 %i.ej, label %abscmp.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ek = icmp slt i16 %i.eh, %i.ei
  br i1 %i.ek, label %abscmp.exit, label %.preheader.i160

.preheader.i160:                                  ; preds = %bb.l
  %i.el = load i16, ptr %i.at, align 2, !tbaa !20 ; 2 uses
  %i.em = load i16, ptr %i.au, align 2, !tbaa !20 ; 2 uses
  %i.en = icmp ugt i16 %i.el, %i.em
  br i1 %i.en, label %abscmp.exit, label %bb.ad

bb.m:                                             ; preds = %bb.ad
  %i.eo = load i16, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %i.ep = load i16, ptr %i.aw, align 4, !tbaa !20 ; 2 uses
  %i.eq = icmp ugt i16 %i.eo, %i.ep
  br i1 %i.eq, label %abscmp.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = icmp ult i16 %i.eo, %i.ep
  br i1 %i.er, label %abscmp.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.es = load i16, ptr %i.ax, align 2, !tbaa !20 ; 2 uses
  %i.et = load i16, ptr %i.ay, align 2, !tbaa !20 ; 2 uses
  %i.eu = icmp ugt i16 %i.es, %i.et
  br i1 %i.eu, label %abscmp.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ev = icmp ult i16 %i.es, %i.et
  br i1 %i.ev, label %abscmp.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ew = load i16, ptr %i.az, align 16, !tbaa !20 ; 2 uses
  %i.ex = load i16, ptr %i.ba, align 16, !tbaa !20 ; 2 uses
  %i.ey = icmp ugt i16 %i.ew, %i.ex
  br i1 %i.ey, label %abscmp.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ez = icmp ult i16 %i.ew, %i.ex
  br i1 %i.ez, label %abscmp.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fa = load i16, ptr %i.bb, align 2, !tbaa !20 ; 2 uses
  %i.fb = load i16, ptr %i.bc, align 2, !tbaa !20 ; 2 uses
  %i.fc = icmp ugt i16 %i.fa, %i.fb
  br i1 %i.fc, label %abscmp.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fd = icmp ult i16 %i.fa, %i.fb
  br i1 %i.fd, label %abscmp.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fe = load i16, ptr %i.bd, align 4, !tbaa !20 ; 2 uses
  %i.ff = load i16, ptr %i.be, align 4, !tbaa !20 ; 2 uses
  %i.fg = icmp ugt i16 %i.fe, %i.ff
  br i1 %i.fg, label %abscmp.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fh = icmp ult i16 %i.fe, %i.ff
  br i1 %i.fh, label %abscmp.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = load i16, ptr %i.bf, align 2, !tbaa !20 ; 2 uses
  %i.fj = load i16, ptr %i.bg, align 2, !tbaa !20 ; 2 uses
  %i.fk = icmp ugt i16 %i.fi, %i.fj
  br i1 %i.fk, label %abscmp.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fl = icmp ult i16 %i.fi, %i.fj
  br i1 %i.fl, label %abscmp.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fm = load i16, ptr %i.bh, align 8, !tbaa !20 ; 2 uses
  %i.fn = load i16, ptr %i.bi, align 8, !tbaa !20 ; 2 uses
  %i.fo = icmp ugt i16 %i.fm, %i.fn
  br i1 %i.fo, label %abscmp.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = icmp ult i16 %i.fm, %i.fn
  br i1 %i.fp, label %abscmp.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fq = load i16, ptr %i.bj, align 2, !tbaa !20 ; 2 uses
  %i.fr = load i16, ptr %i.bk, align 2, !tbaa !20 ; 2 uses
  %i.fs = icmp ugt i16 %i.fq, %i.fr
  br i1 %i.fs, label %abscmp.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ft = icmp ult i16 %i.fq, %i.fr
  br i1 %i.ft, label %abscmp.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = load i16, ptr %i.ar, align 4, !tbaa !20
  %i.fv = load i16, ptr %i.as, align 4, !tbaa !20
  %i.fw = icmp ugt i16 %i.fu, %i.fv
  br label %abscmp.exit

bb.ad:                                            ; preds = %.preheader.i160
  %i.fx = icmp ult i16 %i.el, %i.em
  br i1 %i.fx, label %abscmp.exit, label %bb.m

abscmp.exit:                                      ; preds = %bb.ac, %.lr.ph, %bb.l, %.preheader.i160, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ad
  %.014.i = phi i1 [ false, %bb.l ], [ true, %.lr.ph ], [ false, %bb.ad ], [ true, %.preheader.i160 ], [ false, %bb.z ], [ true, %bb.m ], [ false, %bb.n ], [ false, %bb.x ], [ true, %bb.o ], [ false, %bb.p ], [ %i.fw, %bb.ac ], [ true, %bb.q ], [ false, %bb.r ], [ true, %bb.y ], [ true, %bb.s ], [ false, %bb.t ], [ false, %bb.ab ], [ true, %bb.u ], [ false, %bb.v ], [ true, %bb.aa ], [ true, %bb.w ] ; 2 uses
  br i1 %i.eg, label %bb.ae, label %bb.bf

bb.ae:                                            ; preds = %abscmp.exit
  br i1 %.014.i, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #12
  %i.fy = sext i16 %i.eh to i32                   ; 2 uses
  %i.fz = sext i16 %i.ei to i32                   ; 3 uses
  %i.ga = sub nsw i32 %i.fy, %i.fz
  %i.gb = icmp slt i32 %i.ga, 10
  br i1 %i.gb, label %.lr.ph.i150, label %.lr.ph38.i127

.lr.ph.i150:                                      ; preds = %bb.af
  %i.gc = sext i16 %i.eh to i64
  %i.gd = sub nsw i32 0, %i.fz
  %i.ge = sext i32 %i.gd to i64
  %i.gf = add nsw i64 %i.ge, %i.gc                ; 2 uses
  %reass.sub1160 = sub nsw i32 %i.fz, %i.fy       ; 3 uses
  %i.gg = add nsw i32 %reass.sub1160, 10          ; 2 uses
  %wide.trip.count.i151 = zext i32 %i.gg to i64   ; 2 uses
  %xtraiter1558 = and i64 %wide.trip.count.i151, 3 ; 3 uses
  %i.gh = add nsw i32 %reass.sub1160, 9
  %i.gi = icmp ult i32 %i.gh, 3
  br i1 %i.gi, label %.epil.preheader1557, label %.lr.ph.i150.new

.lr.ph.i150.new:                                  ; preds = %.lr.ph.i150
  %unroll_iter1563 = and i64 %wide.trip.count.i151, 4294967292
  br label %bb.ah

.preheader.i158.unr-lcssa:                        ; preds = %bb.ah
  %lcmp.mod1560.not = icmp eq i64 %xtraiter1558, 0
  br i1 %lcmp.mod1560.not, label %.preheader.i158, label %.epil.preheader1557

.epil.preheader1557:                              ; preds = %.preheader.i158.unr-lcssa, %.lr.ph.i150
  %indvars.iv45.i152.epil.init = phi i64 [ 0, %.lr.ph.i150 ], [ %indvars.iv.next46.i155.3, %.preheader.i158.unr-lcssa ]
  %indvars.iv.i153.epil.init = phi i64 [ %i.gf, %.lr.ph.i150 ], [ %indvars.iv.next.i156.3, %.preheader.i158.unr-lcssa ]
  %.034.i154.epil.init = phi i64 [ 0, %.lr.ph.i150 ], [ %i.jm, %.preheader.i158.unr-lcssa ]
  %lcmp.mod1562 = icmp ne i64 %xtraiter1558, 0
  tail call void @llvm.assume(i1 %lcmp.mod1562)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader1557
  %indvars.iv45.i152.epil = phi i64 [ %indvars.iv45.i152.epil.init, %.epil.preheader1557 ], [ %indvars.iv.next46.i155.epil, %bb.ag ] ; 3 uses
  %indvars.iv.i153.epil = phi i64 [ %indvars.iv.i153.epil.init, %.epil.preheader1557 ], [ %indvars.iv.next.i156.epil, %bb.ag ] ; 2 uses
  %.034.i154.epil = phi i64 [ %.034.i154.epil.init, %.epil.preheader1557 ], [ %i.gv, %bb.ag ]
  %epil.iter1559 = phi i64 [ 0, %.epil.preheader1557 ], [ %epil.iter1559.next, %bb.ag ]
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv45.i152.epil
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !20
  %i.gl = zext i16 %i.gk to i64
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i153.epil
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !20
  %i.go = zext i16 %i.gn to i64
  %i.gp = sub nsw i64 %i.gl, %i.go
  %i.gq = add nsw i64 %i.gp, %.034.i154.epil      ; 2 uses
  %i.gr = trunc i64 %i.gq to i16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv45.i152.epil
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !20
  %i.gt = add nsw i64 %i.gq, 2147483648
  %i.gu = lshr i64 %i.gt, 16
  %i.gv = add nsw i64 %i.gu, -32768               ; 2 uses
  %indvars.iv.next46.i155.epil = add nuw nsw i64 %indvars.iv45.i152.epil, 1
  %indvars.iv.next.i156.epil = add nsw i64 %indvars.iv.i153.epil, 1
  %epil.iter1559.next = add i64 %epil.iter1559, 1 ; 2 uses
  %epil.iter1559.cmp.not = icmp eq i64 %epil.iter1559.next, %xtraiter1558
  br i1 %epil.iter1559.cmp.not, label %.preheader.i158, label %bb.ag, !llvm.loop !54

.preheader.i158:                                  ; preds = %bb.ag, %.preheader.i158.unr-lcssa
  %.lcssa1494 = phi i64 [ %i.jm, %.preheader.i158.unr-lcssa ], [ %i.gv, %bb.ag ]
  %i.gw = icmp slt i32 %reass.sub1160, 0
  br i1 %i.gw, label %.lr.ph38.i127, label %._crit_edge.i134

.lr.ph38.i127:                                    ; preds = %bb.af, %.preheader.i158
  %.0.lcssa85.i128 = phi i64 [ %.lcssa1494, %.preheader.i158 ], [ 0, %bb.af ] ; 2 uses
  %.025.lcssa84.i129 = phi i32 [ %i.gg, %.preheader.i158 ], [ 0, %bb.af ] ; 2 uses
  %i.gx = zext i32 %.025.lcssa84.i129 to i64      ; 3 uses
  %i.gy = sub nsw i64 2, %i.gx
  %xtraiter1567 = and i64 %i.gy, 3                ; 2 uses
  %lcmp.mod1568.not = icmp eq i64 %xtraiter1567, 0
  br i1 %lcmp.mod1568.not, label %.prol.loopexit1566, label %.prol.preheader1565

.prol.preheader1565:                              ; preds = %.lr.ph38.i127, %.prol.preheader1565
  %indvars.iv50.i130.prol = phi i64 [ %indvars.iv.next51.i132.prol, %.prol.preheader1565 ], [ %i.gx, %.lr.ph38.i127 ] ; 3 uses
  %.137.i131.prol = phi i64 [ %i.hh, %.prol.preheader1565 ], [ %.0.lcssa85.i128, %.lr.ph38.i127 ]
  %prol.iter1569 = phi i64 [ %prol.iter1569.next, %.prol.preheader1565 ], [ 0, %.lr.ph38.i127 ]
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv50.i130.prol
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !20
  %i.hb = zext i16 %i.ha to i64
  %i.hc = add nsw i64 %.137.i131.prol, %i.hb      ; 2 uses
  %i.hd = trunc i64 %i.hc to i16
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv50.i130.prol
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !20
  %i.hf = add nsw i64 %i.hc, 2147483648
  %i.hg = lshr i64 %i.hf, 16
  %i.hh = add nsw i64 %i.hg, -32768               ; 2 uses
  %indvars.iv.next51.i132.prol = add nuw nsw i64 %indvars.iv50.i130.prol, 1 ; 2 uses
  %prol.iter1569.next = add i64 %prol.iter1569, 1 ; 2 uses
  %prol.iter1569.cmp.not = icmp eq i64 %prol.iter1569.next, %xtraiter1567
  br i1 %prol.iter1569.cmp.not, label %.prol.loopexit1566, label %.prol.preheader1565, !llvm.loop !55

.prol.loopexit1566:                               ; preds = %.prol.preheader1565, %.lr.ph38.i127
  %indvars.iv50.i130.unr = phi i64 [ %i.gx, %.lr.ph38.i127 ], [ %indvars.iv.next51.i132.prol, %.prol.preheader1565 ]
  %.137.i131.unr = phi i64 [ %.0.lcssa85.i128, %.lr.ph38.i127 ], [ %i.hh, %.prol.preheader1565 ]
  %i.hi = add nsw i32 %.025.lcssa84.i129, -7
  %i.hj = icmp ult i32 %i.hi, 3
  br i1 %i.hj, label %._crit_edge.i134, label %.lr.ph38.i127.new

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i150.new
  %indvars.iv45.i152 = phi i64 [ 0, %.lr.ph.i150.new ], [ %indvars.iv.next46.i155.3, %bb.ah ] ; 6 uses
  %indvars.iv.i153 = phi i64 [ %i.gf, %.lr.ph.i150.new ], [ %indvars.iv.next.i156.3, %bb.ah ] ; 5 uses
  %.034.i154 = phi i64 [ 0, %.lr.ph.i150.new ], [ %i.jm, %bb.ah ]
  %niter1564 = phi i64 [ 0, %.lr.ph.i150.new ], [ %niter1564.next.3, %bb.ah ]
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv45.i152
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !20
  %i.hm = zext i16 %i.hl to i64
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i153
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !20
  %i.hp = zext i16 %i.ho to i64
  %i.hq = sub nsw i64 %i.hm, %i.hp
  %i.hr = add nsw i64 %i.hq, %.034.i154           ; 2 uses
  %i.hs = trunc i64 %i.hr to i16
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv45.i152
  store i16 %i.hs, ptr %i.ht, align 8, !tbaa !20
  %i.hu = add nsw i64 %i.hr, 2147483648
  %i.hv = lshr i64 %i.hu, 16
  %i.hw = add nsw i64 %i.hv, -32768
  %indvars.iv.next46.i155 = or disjoint i64 %indvars.iv45.i152, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i155
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !20
  %i.hz = zext i16 %i.hy to i64
  %i.ia = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i153
  %i.ib = getelementptr i8, ptr %i.ia, i64 2
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !20
  %i.id = zext i16 %i.ic to i64
  %i.ie = sub nsw i64 %i.hz, %i.id
  %i.if = add nsw i64 %i.ie, %i.hw                ; 2 uses
  %i.ig = trunc i64 %i.if to i16
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next46.i155
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !20
  %i.ii = add nsw i64 %i.if, 2147483648
  %i.ij = lshr i64 %i.ii, 16
  %i.ik = add nsw i64 %i.ij, -32768
  %indvars.iv.next46.i155.1 = or disjoint i64 %indvars.iv45.i152, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i155.1
  %i.im = load i16, ptr %i.il, align 8, !tbaa !20
  %i.in = zext i16 %i.im to i64
  %i.io = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i153
  %i.ip = getelementptr i8, ptr %i.io, i64 4
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !20
  %i.ir = zext i16 %i.iq to i64
  %i.is = sub nsw i64 %i.in, %i.ir
  %i.it = add nsw i64 %i.is, %i.ik                ; 2 uses
  %i.iu = trunc i64 %i.it to i16
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next46.i155.1
  store i16 %i.iu, ptr %i.iv, align 4, !tbaa !20
  %i.iw = add nsw i64 %i.it, 2147483648
  %i.ix = lshr i64 %i.iw, 16
  %i.iy = add nsw i64 %i.ix, -32768
  %indvars.iv.next46.i155.2 = or disjoint i64 %indvars.iv45.i152, 3 ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i155.2
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !20
  %i.jb = zext i16 %i.ja to i64
  %i.jc = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i153
  %i.jd = getelementptr i8, ptr %i.jc, i64 6
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !20
  %i.jf = zext i16 %i.je to i64
  %i.jg = sub nsw i64 %i.jb, %i.jf
  %i.jh = add nsw i64 %i.jg, %i.iy                ; 2 uses
  %i.ji = trunc i64 %i.jh to i16
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next46.i155.2
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !20
  %i.jk = add nsw i64 %i.jh, 2147483648
  %i.jl = lshr i64 %i.jk, 16
  %i.jm = add nsw i64 %i.jl, -32768               ; 3 uses
  %indvars.iv.next46.i155.3 = add nuw nsw i64 %indvars.iv45.i152, 4 ; 2 uses
  %indvars.iv.next.i156.3 = add nsw i64 %indvars.iv.i153, 4 ; 2 uses
  %niter1564.next.3 = add i64 %niter1564, 4       ; 2 uses
  %niter1564.ncmp.3 = icmp eq i64 %niter1564.next.3, %unroll_iter1563
  br i1 %niter1564.ncmp.3, label %.preheader.i158.unr-lcssa, label %bb.ah, !llvm.loop !3

.lr.ph38.i127.new:                                ; preds = %.prol.loopexit1566, %.lr.ph38.i127.new
  %indvars.iv50.i130 = phi i64 [ %indvars.iv.next51.i132.3, %.lr.ph38.i127.new ], [ %indvars.iv50.i130.unr, %.prol.loopexit1566 ] ; 6 uses
  %.137.i131 = phi i64 [ %i.kw, %.lr.ph38.i127.new ], [ %.137.i131.unr, %.prol.loopexit1566 ]
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv50.i130
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !20
  %i.jp = zext i16 %i.jo to i64
  %i.jq = add nsw i64 %.137.i131, %i.jp           ; 2 uses
  %i.jr = trunc i64 %i.jq to i16
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv50.i130
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !20
  %i.jt = add nsw i64 %i.jq, 2147483648
  %i.ju = lshr i64 %i.jt, 16
  %i.jv = add nsw i64 %i.ju, -32768
  %indvars.iv.next51.i132 = add nuw nsw i64 %indvars.iv50.i130, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i132
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !20
  %i.jy = zext i16 %i.jx to i64
  %i.jz = add nsw i64 %i.jv, %i.jy                ; 2 uses
  %i.ka = trunc i64 %i.jz to i16
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next51.i132
  store i16 %i.ka, ptr %i.kb, align 2, !tbaa !20
  %i.kc = add nsw i64 %i.jz, 2147483648
  %i.kd = lshr i64 %i.kc, 16
  %i.ke = add nsw i64 %i.kd, -32768
  %indvars.iv.next51.i132.1 = add nuw nsw i64 %indvars.iv50.i130, 2 ; 2 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i132.1
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !20
  %i.kh = zext i16 %i.kg to i64
  %i.ki = add nsw i64 %i.ke, %i.kh                ; 2 uses
  %i.kj = trunc i64 %i.ki to i16
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next51.i132.1
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !20
  %i.kl = add nsw i64 %i.ki, 2147483648
  %i.km = lshr i64 %i.kl, 16
  %i.kn = add nsw i64 %i.km, -32768
  %indvars.iv.next51.i132.2 = add nuw nsw i64 %indvars.iv50.i130, 3 ; 2 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i132.2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !20
  %i.kq = zext i16 %i.kp to i64
  %i.kr = add nsw i64 %i.kn, %i.kq                ; 2 uses
  %i.ks = trunc i64 %i.kr to i16
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next51.i132.2
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !20
  %i.ku = add nsw i64 %i.kr, 2147483648
  %i.kv = lshr i64 %i.ku, 16
  %i.kw = add nsw i64 %i.kv, -32768
  %indvars.iv.next51.i132.3 = add nuw nsw i64 %indvars.iv50.i130, 4 ; 2 uses
  %exitcond53.not.i133.3 = icmp eq i64 %indvars.iv.next51.i132.3, 10
  br i1 %exitcond53.not.i133.3, label %._crit_edge.i134, label %.lr.ph38.i127.new, !llvm.loop !4

._crit_edge.i134:                                 ; preds = %.prol.loopexit1566, %.lr.ph38.i127.new, %.preheader.i158
  %i.kx = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i118, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i135 = icmp eq i16 %i.kx, 0
  br i1 %.not.i.not.not.i135, label %bb.ai, label %.preheader.i.i136

bb.ai:                                            ; preds = %._crit_edge.i134
  %i.ky = add i16 %i.eh, -1
  %i.kz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i119, align 16, !tbaa !20
  %.not.i.1.i137 = icmp eq i16 %i.kz, 0
  br i1 %.not.i.1.i137, label %bb.aj, label %.lr.ph47.i.i138

bb.aj:                                            ; preds = %bb.ai
  %i.la = add i16 %i.eh, -2
  %i.lb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i120, align 2, !tbaa !20
  %.not.i.2.i142 = icmp eq i16 %i.lb, 0
  br i1 %.not.i.2.i142, label %bb.ak, label %.lr.ph47.i.i138

bb.ak:                                            ; preds = %bb.aj
  %i.lc = add i16 %i.eh, -3
  %i.ld = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i121, align 4, !tbaa !20
  %.not.i.3.i143 = icmp eq i16 %i.ld, 0
  br i1 %.not.i.3.i143, label %bb.al, label %.lr.ph47.i.i138

bb.al:                                            ; preds = %bb.ak
  %i.le = add i16 %i.eh, -4
  %i.lf = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i122, align 2, !tbaa !20
  %.not.i.4.i144 = icmp eq i16 %i.lf, 0
  br i1 %.not.i.4.i144, label %bb.am, label %.lr.ph47.i.i138

bb.am:                                            ; preds = %bb.al
  %i.lg = add i16 %i.eh, -5
  %i.lh = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i123, align 8, !tbaa !20
  %.not.i.5.i145 = icmp eq i16 %i.lh, 0
  br i1 %.not.i.5.i145, label %bb.an, label %.lr.ph47.i.i138

bb.an:                                            ; preds = %bb.am
  %i.li = add i16 %i.eh, -6
  %i.lj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i124, align 2, !tbaa !20
  %.not.i.6.i146 = icmp eq i16 %i.lj, 0
  br i1 %.not.i.6.i146, label %bb.ao, label %.lr.ph47.i.i138

bb.ao:                                            ; preds = %bb.an
  %i.lk = add i16 %i.eh, -7
  %i.ll = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i125, align 4, !tbaa !20
  %.not.i.7.i147 = icmp eq i16 %i.ll, 0
  br i1 %.not.i.7.i147, label %bb.ap, label %.lr.ph47.i.i138

bb.ap:                                            ; preds = %bb.ao
  %i.lm = add i16 %i.eh, -8
  %i.ln = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i126, align 2, !tbaa !20
  %.not.i.8.i148 = icmp eq i16 %i.ln, 0
  br i1 %.not.i.8.i148, label %bb.aq, label %.lr.ph47.i.i138

bb.aq:                                            ; preds = %bb.ap
  %i.lo = add i16 %i.eh, -9
  %i.lp = load i16, ptr %i.u, align 16, !tbaa !20
  %.not.i.9.i149 = icmp eq i16 %i.lp, 0
  br i1 %.not.i.9.i149, label %bb.ar, label %.lr.ph47.i.i138

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit159

.preheader.i.i136:                                ; preds = %._crit_edge.i134
  store i16 %i.eh, ptr %i.bl, align 2, !tbaa !26
  store i16 %i.ee, ptr %11, align 16, !tbaa !24
  store i16 %i.kx, ptr %i.bn, align 2, !tbaa !20
  %i.lq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i119, align 16, !tbaa !20
  store i16 %i.lq, ptr %i.bo, align 4, !tbaa !20
  %i.lr = load <8 x i16>, ptr %i.u, align 16, !tbaa !20
  store <8 x i16> %i.lr, ptr %i.bm, align 4, !tbaa !20
  br label %submag0.exit159

.lr.ph47.i.i138:                                  ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.03341.i.lcssa.ph.i139 = phi i16 [ %i.lo, %bb.aq ], [ %i.lm, %bb.ap ], [ %i.lk, %bb.ao ], [ %i.li, %bb.an ], [ %i.lg, %bb.am ], [ %i.le, %bb.al ], [ %i.lc, %bb.ak ], [ %i.la, %bb.aj ], [ %i.ky, %bb.ai ]
  %indvars.iv59.i.lcssa.ph.i140 = phi i64 [ 0, %bb.aq ], [ 2, %bb.ap ], [ 4, %bb.ao ], [ 6, %bb.an ], [ 8, %bb.am ], [ 10, %bb.al ], [ 12, %bb.ak ], [ 14, %bb.aj ], [ 16, %bb.ai ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i139, ptr %i.bl, align 2, !tbaa !26
  store i16 %i.ee, ptr %11, align 16, !tbaa !24
  %i.ls = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i140
  %scevgep.i141 = getelementptr i8, ptr %11, i64 %i.ls
  %i.lt = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i140, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i141, ptr noundef nonnull align 16 dereferenceable(1) %i.u, i64 %i.lt, i1 false), !tbaa !20
  %i.lu = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i140
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.lu, i1 false), !tbaa !20
  br label %submag0.exit159

submag0.exit159:                                  ; preds = %bb.ar, %.preheader.i.i136, %.lr.ph47.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #12
  br label %sub.exit

bb.as:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #12
  %i.lv = sext i16 %i.ei to i32                   ; 2 uses
  %i.lw = sext i16 %i.eh to i32                   ; 3 uses
  %i.lx = sub nsw i32 %i.lv, %i.lw
  %i.ly = icmp slt i32 %i.lx, 10
  br i1 %i.ly, label %.lr.ph.i112, label %.lr.ph38.i

.lr.ph.i112:                                      ; preds = %bb.as
  %i.lz = sext i16 %i.ei to i64
  %i.ma = sub nsw i32 0, %i.lw
  %i.mb = sext i32 %i.ma to i64
  %i.mc = add nsw i64 %i.lz, %i.mb                ; 2 uses
  %i.md = add nsw i32 %i.lw, 10
  %i.me = sub nsw i32 %i.md, %i.lv                ; 4 uses
  %wide.trip.count.i113 = zext i32 %i.me to i64   ; 2 uses
  %xtraiter1545 = and i64 %wide.trip.count.i113, 3 ; 3 uses
  %i.mf = add nsw i32 %i.me, -1
  %i.mg = icmp ult i32 %i.mf, 3
  br i1 %i.mg, label %.epil.preheader1544, label %.lr.ph.i112.new

.lr.ph.i112.new:                                  ; preds = %.lr.ph.i112
  %unroll_iter1550 = and i64 %wide.trip.count.i113, 4294967292
  br label %bb.au

.preheader.i117.unr-lcssa:                        ; preds = %bb.au
  %lcmp.mod1547.not = icmp eq i64 %xtraiter1545, 0
  br i1 %lcmp.mod1547.not, label %.preheader.i117, label %.epil.preheader1544

.epil.preheader1544:                              ; preds = %.preheader.i117.unr-lcssa, %.lr.ph.i112
  %indvars.iv45.i.epil.init = phi i64 [ 0, %.lr.ph.i112 ], [ %indvars.iv.next46.i.3, %.preheader.i117.unr-lcssa ]
  %indvars.iv.i114.epil.init = phi i64 [ %i.mc, %.lr.ph.i112 ], [ %indvars.iv.next.i115.3, %.preheader.i117.unr-lcssa ]
  %.034.i.epil.init = phi i64 [ 0, %.lr.ph.i112 ], [ %i.pk, %.preheader.i117.unr-lcssa ]
  %lcmp.mod1549 = icmp ne i64 %xtraiter1545, 0
  tail call void @llvm.assume(i1 %lcmp.mod1549)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader1544
  %indvars.iv45.i.epil = phi i64 [ %indvars.iv45.i.epil.init, %.epil.preheader1544 ], [ %indvars.iv.next46.i.epil, %bb.at ] ; 3 uses
  %indvars.iv.i114.epil = phi i64 [ %indvars.iv.i114.epil.init, %.epil.preheader1544 ], [ %indvars.iv.next.i115.epil, %bb.at ] ; 2 uses
  %.034.i.epil = phi i64 [ %.034.i.epil.init, %.epil.preheader1544 ], [ %i.mt, %bb.at ]
  %epil.iter1546 = phi i64 [ 0, %.epil.preheader1544 ], [ %epil.iter1546.next, %bb.at ]
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv45.i.epil
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !20
  %i.mj = zext i16 %i.mi to i64
  %i.mk = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i114.epil
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !20
  %i.mm = zext i16 %i.ml to i64
  %i.mn = sub nsw i64 %i.mj, %i.mm
  %i.mo = add nsw i64 %i.mn, %.034.i.epil         ; 2 uses
  %i.mp = trunc i64 %i.mo to i16
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv45.i.epil
  store i16 %i.mp, ptr %i.mq, align 2, !tbaa !20
  %i.mr = add nsw i64 %i.mo, 2147483648
  %i.ms = lshr i64 %i.mr, 16
  %i.mt = add nsw i64 %i.ms, -32768               ; 2 uses
  %indvars.iv.next46.i.epil = add nuw nsw i64 %indvars.iv45.i.epil, 1
  %indvars.iv.next.i115.epil = add nsw i64 %indvars.iv.i114.epil, 1
  %epil.iter1546.next = add i64 %epil.iter1546, 1 ; 2 uses
  %epil.iter1546.cmp.not = icmp eq i64 %epil.iter1546.next, %xtraiter1545
  br i1 %epil.iter1546.cmp.not, label %.preheader.i117, label %bb.at, !llvm.loop !56

.preheader.i117:                                  ; preds = %bb.at, %.preheader.i117.unr-lcssa
  %.lcssa1493 = phi i64 [ %i.pk, %.preheader.i117.unr-lcssa ], [ %i.mt, %bb.at ]
  %i.mu = icmp samesign ult i32 %i.me, 10
  br i1 %i.mu, label %.lr.ph38.i, label %._crit_edge.i97

.lr.ph38.i:                                       ; preds = %bb.as, %.preheader.i117
  %.0.lcssa85.i = phi i64 [ %.lcssa1493, %.preheader.i117 ], [ 0, %bb.as ] ; 2 uses
  %.025.lcssa84.i = phi i32 [ %i.me, %.preheader.i117 ], [ 0, %bb.as ] ; 2 uses
  %i.mv = zext nneg i32 %.025.lcssa84.i to i64    ; 3 uses
  %i.mw = sub nsw i64 2, %i.mv
  %xtraiter1554 = and i64 %i.mw, 3                ; 2 uses
  %lcmp.mod1555.not = icmp eq i64 %xtraiter1554, 0
  br i1 %lcmp.mod1555.not, label %.prol.loopexit1553, label %.prol.preheader1552

.prol.preheader1552:                              ; preds = %.lr.ph38.i, %.prol.preheader1552
  %indvars.iv50.i.prol = phi i64 [ %indvars.iv.next51.i.prol, %.prol.preheader1552 ], [ %i.mv, %.lr.ph38.i ] ; 3 uses
  %.137.i.prol = phi i64 [ %i.nf, %.prol.preheader1552 ], [ %.0.lcssa85.i, %.lr.ph38.i ]
  %prol.iter1556 = phi i64 [ %prol.iter1556.next, %.prol.preheader1552 ], [ 0, %.lr.ph38.i ]
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv50.i.prol
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !20
  %i.mz = zext i16 %i.my to i64
  %i.na = add nsw i64 %.137.i.prol, %i.mz         ; 2 uses
  %i.nb = trunc i64 %i.na to i16
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv50.i.prol
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !20
  %i.nd = add nsw i64 %i.na, 2147483648
  %i.ne = lshr i64 %i.nd, 16
  %i.nf = add nsw i64 %i.ne, -32768               ; 2 uses
  %indvars.iv.next51.i.prol = add nuw nsw i64 %indvars.iv50.i.prol, 1 ; 2 uses
  %prol.iter1556.next = add i64 %prol.iter1556, 1 ; 2 uses
  %prol.iter1556.cmp.not = icmp eq i64 %prol.iter1556.next, %xtraiter1554
  br i1 %prol.iter1556.cmp.not, label %.prol.loopexit1553, label %.prol.preheader1552, !llvm.loop !57

.prol.loopexit1553:                               ; preds = %.prol.preheader1552, %.lr.ph38.i
  %indvars.iv50.i.unr = phi i64 [ %i.mv, %.lr.ph38.i ], [ %indvars.iv.next51.i.prol, %.prol.preheader1552 ]
  %.137.i.unr = phi i64 [ %.0.lcssa85.i, %.lr.ph38.i ], [ %i.nf, %.prol.preheader1552 ]
  %i.ng = add nsw i32 %.025.lcssa84.i, -7
  %i.nh = icmp ult i32 %i.ng, 3
  br i1 %i.nh, label %._crit_edge.i97, label %.lr.ph38.i.new

bb.au:                                            ; preds = %bb.au, %.lr.ph.i112.new
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph.i112.new ], [ %indvars.iv.next46.i.3, %bb.au ] ; 6 uses
  %indvars.iv.i114 = phi i64 [ %i.mc, %.lr.ph.i112.new ], [ %indvars.iv.next.i115.3, %bb.au ] ; 5 uses
  %.034.i = phi i64 [ 0, %.lr.ph.i112.new ], [ %i.pk, %bb.au ]
  %niter1551 = phi i64 [ 0, %.lr.ph.i112.new ], [ %niter1551.next.3, %bb.au ]
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv45.i
  %i.nj = load i16, ptr %i.ni, align 4, !tbaa !20
  %i.nk = zext i16 %i.nj to i64
  %i.nl = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i114
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !20
  %i.nn = zext i16 %i.nm to i64
  %i.no = sub nsw i64 %i.nk, %i.nn
  %i.np = add nsw i64 %i.no, %.034.i              ; 2 uses
  %i.nq = trunc i64 %i.np to i16
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv45.i
  store i16 %i.nq, ptr %i.nr, align 8, !tbaa !20
  %i.ns = add nsw i64 %i.np, 2147483648
  %i.nt = lshr i64 %i.ns, 16
  %i.nu = add nsw i64 %i.nt, -32768
  %indvars.iv.next46.i = or disjoint i64 %indvars.iv45.i, 1 ; 2 uses
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !20
  %i.nx = zext i16 %i.nw to i64
  %i.ny = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i114
  %i.nz = getelementptr i8, ptr %i.ny, i64 2
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !20
  %i.ob = zext i16 %i.oa to i64
  %i.oc = sub nsw i64 %i.nx, %i.ob
  %i.od = add nsw i64 %i.oc, %i.nu                ; 2 uses
  %i.oe = trunc i64 %i.od to i16
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next46.i
  store i16 %i.oe, ptr %i.of, align 2, !tbaa !20
  %i.og = add nsw i64 %i.od, 2147483648
  %i.oh = lshr i64 %i.og, 16
  %i.oi = add nsw i64 %i.oh, -32768
  %indvars.iv.next46.i.1 = or disjoint i64 %indvars.iv45.i, 2 ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i.1
  %i.ok = load i16, ptr %i.oj, align 8, !tbaa !20
  %i.ol = zext i16 %i.ok to i64
  %i.om = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i114
  %i.on = getelementptr i8, ptr %i.om, i64 4
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !20
  %i.op = zext i16 %i.oo to i64
  %i.oq = sub nsw i64 %i.ol, %i.op
  %i.or = add nsw i64 %i.oq, %i.oi                ; 2 uses
  %i.os = trunc i64 %i.or to i16
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next46.i.1
  store i16 %i.os, ptr %i.ot, align 4, !tbaa !20
  %i.ou = add nsw i64 %i.or, 2147483648
  %i.ov = lshr i64 %i.ou, 16
  %i.ow = add nsw i64 %i.ov, -32768
  %indvars.iv.next46.i.2 = or disjoint i64 %indvars.iv45.i, 3 ; 2 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i.2
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !20
  %i.oz = zext i16 %i.oy to i64
  %i.pa = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i114
  %i.pb = getelementptr i8, ptr %i.pa, i64 6
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !20
  %i.pd = zext i16 %i.pc to i64
  %i.pe = sub nsw i64 %i.oz, %i.pd
  %i.pf = add nsw i64 %i.pe, %i.ow                ; 2 uses
  %i.pg = trunc i64 %i.pf to i16
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next46.i.2
  store i16 %i.pg, ptr %i.ph, align 2, !tbaa !20
  %i.pi = add nsw i64 %i.pf, 2147483648
  %i.pj = lshr i64 %i.pi, 16
  %i.pk = add nsw i64 %i.pj, -32768               ; 3 uses
  %indvars.iv.next46.i.3 = add nuw nsw i64 %indvars.iv45.i, 4 ; 2 uses
  %indvars.iv.next.i115.3 = add nsw i64 %indvars.iv.i114, 4 ; 2 uses
  %niter1551.next.3 = add i64 %niter1551, 4       ; 2 uses
  %niter1551.ncmp.3 = icmp eq i64 %niter1551.next.3, %unroll_iter1550
  br i1 %niter1551.ncmp.3, label %.preheader.i117.unr-lcssa, label %bb.au, !llvm.loop !3

.lr.ph38.i.new:                                   ; preds = %.prol.loopexit1553, %.lr.ph38.i.new
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i.3, %.lr.ph38.i.new ], [ %indvars.iv50.i.unr, %.prol.loopexit1553 ] ; 6 uses
  %.137.i = phi i64 [ %i.qu, %.lr.ph38.i.new ], [ %.137.i.unr, %.prol.loopexit1553 ]
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv50.i
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !20
  %i.pn = zext i16 %i.pm to i64
  %i.po = add nsw i64 %.137.i, %i.pn              ; 2 uses
  %i.pp = trunc i64 %i.po to i16
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv50.i
  store i16 %i.pp, ptr %i.pq, align 2, !tbaa !20
  %i.pr = add nsw i64 %i.po, 2147483648
  %i.ps = lshr i64 %i.pr, 16
  %i.pt = add nsw i64 %i.ps, -32768
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !20
  %i.pw = zext i16 %i.pv to i64
  %i.px = add nsw i64 %i.pt, %i.pw                ; 2 uses
  %i.py = trunc i64 %i.px to i16
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next51.i
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !20
  %i.qa = add nsw i64 %i.px, 2147483648
  %i.qb = lshr i64 %i.qa, 16
  %i.qc = add nsw i64 %i.qb, -32768
  %indvars.iv.next51.i.1 = add nuw nsw i64 %indvars.iv50.i, 2 ; 2 uses
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i.1
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !20
  %i.qf = zext i16 %i.qe to i64
  %i.qg = add nsw i64 %i.qc, %i.qf                ; 2 uses
  %i.qh = trunc i64 %i.qg to i16
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next51.i.1
  store i16 %i.qh, ptr %i.qi, align 2, !tbaa !20
  %i.qj = add nsw i64 %i.qg, 2147483648
  %i.qk = lshr i64 %i.qj, 16
  %i.ql = add nsw i64 %i.qk, -32768
  %indvars.iv.next51.i.2 = add nuw nsw i64 %indvars.iv50.i, 3 ; 2 uses
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i.2
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !20
  %i.qo = zext i16 %i.qn to i64
  %i.qp = add nsw i64 %i.ql, %i.qo                ; 2 uses
  %i.qq = trunc i64 %i.qp to i16
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next51.i.2
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !20
  %i.qs = add nsw i64 %i.qp, 2147483648
  %i.qt = lshr i64 %i.qs, 16
  %i.qu = add nsw i64 %i.qt, -32768
  %indvars.iv.next51.i.3 = add nuw nsw i64 %indvars.iv50.i, 4 ; 2 uses
  %exitcond53.not.i.3 = icmp eq i64 %indvars.iv.next51.i.3, 10
  br i1 %exitcond53.not.i.3, label %._crit_edge.i97, label %.lr.ph38.i.new, !llvm.loop !4

._crit_edge.i97:                                  ; preds = %.prol.loopexit1553, %.lr.ph38.i.new, %.preheader.i117
  %i.qv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i94, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i = icmp eq i16 %i.qv, 0
  br i1 %.not.i.not.not.i, label %bb.av, label %.preheader.i.i98

bb.av:                                            ; preds = %._crit_edge.i97
  %i.qw = add i16 %i.ei, -1
  %i.qx = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i, align 16, !tbaa !20
  %.not.i.1.i99 = icmp eq i16 %i.qx, 0
  br i1 %.not.i.1.i99, label %bb.aw, label %.lr.ph47.i.i100

bb.aw:                                            ; preds = %bb.av
  %i.qy = add i16 %i.ei, -2
  %i.qz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i, align 2, !tbaa !20
  %.not.i.2.i104 = icmp eq i16 %i.qz, 0
  br i1 %.not.i.2.i104, label %bb.ax, label %.lr.ph47.i.i100

bb.ax:                                            ; preds = %bb.aw
  %i.ra = add i16 %i.ei, -3
  %i.rb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i, align 4, !tbaa !20
  %.not.i.3.i105 = icmp eq i16 %i.rb, 0
  br i1 %.not.i.3.i105, label %bb.ay, label %.lr.ph47.i.i100

bb.ay:                                            ; preds = %bb.ax
  %i.rc = add i16 %i.ei, -4
  %i.rd = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i, align 2, !tbaa !20
  %.not.i.4.i106 = icmp eq i16 %i.rd, 0
  br i1 %.not.i.4.i106, label %bb.az, label %.lr.ph47.i.i100

bb.az:                                            ; preds = %bb.ay
  %i.re = add i16 %i.ei, -5
  %i.rf = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i, align 8, !tbaa !20
  %.not.i.5.i107 = icmp eq i16 %i.rf, 0
  br i1 %.not.i.5.i107, label %bb.ba, label %.lr.ph47.i.i100

bb.ba:                                            ; preds = %bb.az
  %i.rg = add i16 %i.ei, -6
  %i.rh = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i, align 2, !tbaa !20
  %.not.i.6.i108 = icmp eq i16 %i.rh, 0
  br i1 %.not.i.6.i108, label %bb.bb, label %.lr.ph47.i.i100

bb.bb:                                            ; preds = %bb.ba
  %i.ri = add i16 %i.ei, -7
  %i.rj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i95, align 4, !tbaa !20
  %.not.i.7.i109 = icmp eq i16 %i.rj, 0
  br i1 %.not.i.7.i109, label %bb.bc, label %.lr.ph47.i.i100

bb.bc:                                            ; preds = %bb.bb
  %i.rk = add i16 %i.ei, -8
  %i.rl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i96, align 2, !tbaa !20
  %.not.i.8.i110 = icmp eq i16 %i.rl, 0
  br i1 %.not.i.8.i110, label %bb.bd, label %.lr.ph47.i.i100

bb.bd:                                            ; preds = %bb.bc
  %i.rm = add i16 %i.ei, -9
  %i.rn = load i16, ptr %i.v, align 16, !tbaa !20
  %.not.i.9.i111 = icmp eq i16 %i.rn, 0
  br i1 %.not.i.9.i111, label %bb.be, label %.lr.ph47.i.i100

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit

.preheader.i.i98:                                 ; preds = %._crit_edge.i97
  store i16 %i.ei, ptr %i.bl, align 2, !tbaa !26
  %i.ro = sub i16 0, %i.ee
  store i16 %i.ro, ptr %11, align 16, !tbaa !24
  store i16 %i.qv, ptr %i.bn, align 2, !tbaa !20
  %i.rp = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i, align 16, !tbaa !20
  store i16 %i.rp, ptr %i.bo, align 4, !tbaa !20
  %i.rq = load <8 x i16>, ptr %i.v, align 16, !tbaa !20
  store <8 x i16> %i.rq, ptr %i.bm, align 4, !tbaa !20
  br label %submag0.exit

.lr.ph47.i.i100:                                  ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.03341.i.lcssa.ph.i101 = phi i16 [ %i.rm, %bb.bd ], [ %i.rk, %bb.bc ], [ %i.ri, %bb.bb ], [ %i.rg, %bb.ba ], [ %i.re, %bb.az ], [ %i.rc, %bb.ay ], [ %i.ra, %bb.ax ], [ %i.qy, %bb.aw ], [ %i.qw, %bb.av ]
  %indvars.iv59.i.lcssa.ph.i102 = phi i64 [ 0, %bb.bd ], [ 2, %bb.bc ], [ 4, %bb.bb ], [ 6, %bb.ba ], [ 8, %bb.az ], [ 10, %bb.ay ], [ 12, %bb.ax ], [ 14, %bb.aw ], [ 16, %bb.av ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i101, ptr %i.bl, align 2, !tbaa !26
  %i.rr = sub i16 0, %i.ee
  store i16 %i.rr, ptr %11, align 16, !tbaa !24
  %i.rs = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i102
  %scevgep.i103 = getelementptr i8, ptr %11, i64 %i.rs
  %i.rt = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i102, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i103, ptr noundef nonnull align 16 dereferenceable(1) %i.v, i64 %i.rt, i1 false), !tbaa !20
  %i.ru = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i102
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.ru, i1 false), !tbaa !20
  br label %submag0.exit

submag0.exit:                                     ; preds = %bb.be, %.preheader.i.i98, %.lr.ph47.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #12
  br label %sub.exit

bb.bf:                                            ; preds = %abscmp.exit
  br i1 %.014.i, label %bb.bg, label %bb.bu

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #12
  %i.rv = sext i16 %i.eh to i32                   ; 2 uses
  %i.rw = sext i16 %i.ei to i32                   ; 3 uses
  %i.rx = sub nsw i32 %i.rv, %i.rw
  %i.ry = icmp slt i32 %i.rx, 10
  br i1 %i.ry, label %.lr.ph.i84, label %.lr.ph40.i56

.lr.ph.i84:                                       ; preds = %bb.bg
  %i.rz = sext i16 %i.eh to i64
  %i.sa = sub nsw i32 0, %i.rw
  %i.sb = sext i32 %i.sa to i64
  %i.sc = add nsw i64 %i.sb, %i.rz                ; 2 uses
  %reass.sub = sub nsw i32 %i.rw, %i.rv           ; 3 uses
  %i.sd = add nsw i32 %reass.sub, 10              ; 3 uses
  %wide.trip.count.i85 = zext i32 %i.sd to i64    ; 2 uses
  %xtraiter1532 = and i64 %wide.trip.count.i85, 3 ; 3 uses
  %i.se = add nsw i32 %reass.sub, 9
  %i.sf = icmp ult i32 %i.se, 3
  br i1 %i.sf, label %.epil.preheader1531, label %.lr.ph.i84.new

.lr.ph.i84.new:                                   ; preds = %.lr.ph.i84
  %unroll_iter1537 = and i64 %wide.trip.count.i85, 4294967292
  br label %bb.bi

.preheader.i92.unr-lcssa:                         ; preds = %bb.bi
  %lcmp.mod1534.not = icmp eq i64 %xtraiter1532, 0
  br i1 %lcmp.mod1534.not, label %.preheader.i92, label %.epil.preheader1531

.epil.preheader1531:                              ; preds = %.preheader.i92.unr-lcssa, %.lr.ph.i84
  %indvars.iv51.i86.epil.init = phi i64 [ 0, %.lr.ph.i84 ], [ %indvars.iv.next52.i89.3, %.preheader.i92.unr-lcssa ]
  %indvars.iv.i87.epil.init = phi i64 [ %i.sc, %.lr.ph.i84 ], [ %indvars.iv.next.i90.3, %.preheader.i92.unr-lcssa ]
  %.036.i88.epil.init = phi i64 [ 0, %.lr.ph.i84 ], [ %i.ux, %.preheader.i92.unr-lcssa ]
  %lcmp.mod1536 = icmp ne i64 %xtraiter1532, 0
  tail call void @llvm.assume(i1 %lcmp.mod1536)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader1531
  %indvars.iv51.i86.epil = phi i64 [ %indvars.iv51.i86.epil.init, %.epil.preheader1531 ], [ %indvars.iv.next52.i89.epil, %bb.bh ] ; 3 uses
  %indvars.iv.i87.epil = phi i64 [ %indvars.iv.i87.epil.init, %.epil.preheader1531 ], [ %indvars.iv.next.i90.epil, %bb.bh ] ; 2 uses
  %.036.i88.epil = phi i64 [ %.036.i88.epil.init, %.epil.preheader1531 ], [ %i.sq, %bb.bh ]
  %epil.iter1533 = phi i64 [ 0, %.epil.preheader1531 ], [ %epil.iter1533.next, %bb.bh ]
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv51.i86.epil
  %i.sh = load i16, ptr %i.sg, align 2, !tbaa !20
  %i.si = zext i16 %i.sh to i64
  %i.sj = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i87.epil
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !20
  %i.sl = zext i16 %i.sk to i64
  %i.sm = add nuw nsw i64 %.036.i88.epil, %i.si
  %i.sn = add nuw nsw i64 %i.sm, %i.sl            ; 2 uses
  %i.so = trunc i64 %i.sn to i16
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv51.i86.epil
  store i16 %i.so, ptr %i.sp, align 2, !tbaa !20
  %i.sq = lshr i64 %i.sn, 16                      ; 2 uses
  %indvars.iv.next52.i89.epil = add nuw nsw i64 %indvars.iv51.i86.epil, 1
  %indvars.iv.next.i90.epil = add nsw i64 %indvars.iv.i87.epil, 1
  %epil.iter1533.next = add i64 %epil.iter1533, 1 ; 2 uses
  %epil.iter1533.cmp.not = icmp eq i64 %epil.iter1533.next, %xtraiter1532
  br i1 %epil.iter1533.cmp.not, label %.preheader.i92, label %bb.bh, !llvm.loop !58

.preheader.i92:                                   ; preds = %bb.bh, %.preheader.i92.unr-lcssa
  %.lcssa1491 = phi i64 [ %i.ux, %.preheader.i92.unr-lcssa ], [ %i.sq, %bb.bh ] ; 2 uses
  %i.sr = icmp slt i32 %reass.sub, 0
  br i1 %i.sr, label %.lr.ph40.i56, label %._crit_edge.i63

.lr.ph40.i56:                                     ; preds = %bb.bg, %.preheader.i92
  %.0.lcssa94.i57 = phi i64 [ %.lcssa1491, %.preheader.i92 ], [ 0, %bb.bg ] ; 2 uses
  %.027.lcssa93.i58 = phi i32 [ %i.sd, %.preheader.i92 ], [ 0, %bb.bg ] ; 2 uses
  %i.ss = zext i32 %.027.lcssa93.i58 to i64       ; 3 uses
  %i.st = sub nsw i64 2, %i.ss
  %xtraiter1541 = and i64 %i.st, 7                ; 2 uses
  %lcmp.mod1542.not = icmp eq i64 %xtraiter1541, 0
  br i1 %lcmp.mod1542.not, label %.prol.loopexit1540, label %.prol.preheader1539

.prol.preheader1539:                              ; preds = %.lr.ph40.i56, %.prol.preheader1539
  %indvars.iv56.i59.prol = phi i64 [ %indvars.iv.next57.i61.prol, %.prol.preheader1539 ], [ %i.ss, %.lr.ph40.i56 ] ; 3 uses
  %.139.i60.prol = phi i64 [ %i.ta, %.prol.preheader1539 ], [ %.0.lcssa94.i57, %.lr.ph40.i56 ]
  %prol.iter1543 = phi i64 [ %prol.iter1543.next, %.prol.preheader1539 ], [ 0, %.lr.ph40.i56 ]
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv56.i59.prol
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !20
  %i.sw = zext i16 %i.sv to i64
  %i.sx = add nuw nsw i64 %.139.i60.prol, %i.sw   ; 2 uses
  %i.sy = trunc i64 %i.sx to i16
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv56.i59.prol
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !20
  %i.ta = lshr i64 %i.sx, 16                      ; 3 uses
  %indvars.iv.next57.i61.prol = add nuw nsw i64 %indvars.iv56.i59.prol, 1 ; 2 uses
  %prol.iter1543.next = add i64 %prol.iter1543, 1 ; 2 uses
  %prol.iter1543.cmp.not = icmp eq i64 %prol.iter1543.next, %xtraiter1541
  br i1 %prol.iter1543.cmp.not, label %.prol.loopexit1540, label %.prol.preheader1539, !llvm.loop !59

.prol.loopexit1540:                               ; preds = %.prol.preheader1539, %.lr.ph40.i56
  %.lcssa1492.unr = phi i64 [ poison, %.lr.ph40.i56 ], [ %i.ta, %.prol.preheader1539 ]
  %indvars.iv56.i59.unr = phi i64 [ %i.ss, %.lr.ph40.i56 ], [ %indvars.iv.next57.i61.prol, %.prol.preheader1539 ]
  %.139.i60.unr = phi i64 [ %.0.lcssa94.i57, %.lr.ph40.i56 ], [ %i.ta, %.prol.preheader1539 ]
  %i.tb = add nsw i32 %.027.lcssa93.i58, -3
  %i.tc = icmp ult i32 %i.tb, 7
  br i1 %i.tc, label %._crit_edge.i63, label %.lr.ph40.i56.new

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i84.new
  %indvars.iv51.i86 = phi i64 [ 0, %.lr.ph.i84.new ], [ %indvars.iv.next52.i89.3, %bb.bi ] ; 6 uses
  %indvars.iv.i87 = phi i64 [ %i.sc, %.lr.ph.i84.new ], [ %indvars.iv.next.i90.3, %bb.bi ] ; 5 uses
  %.036.i88 = phi i64 [ 0, %.lr.ph.i84.new ], [ %i.ux, %bb.bi ]
  %niter1538 = phi i64 [ 0, %.lr.ph.i84.new ], [ %niter1538.next.3, %bb.bi ]
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv51.i86
  %i.te = load i16, ptr %i.td, align 4, !tbaa !20
  %i.tf = zext i16 %i.te to i64
  %i.tg = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i87
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !20
  %i.ti = zext i16 %i.th to i64
  %i.tj = add nuw nsw i64 %.036.i88, %i.tf
  %i.tk = add nuw nsw i64 %i.tj, %i.ti            ; 2 uses
  %i.tl = trunc i64 %i.tk to i16
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv51.i86
  store i16 %i.tl, ptr %i.tm, align 8, !tbaa !20
  %i.tn = lshr i64 %i.tk, 16
  %indvars.iv.next52.i89 = or disjoint i64 %indvars.iv51.i86, 1 ; 2 uses
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i89
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !20
  %i.tq = zext i16 %i.tp to i64
  %i.tr = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i87
  %i.ts = getelementptr i8, ptr %i.tr, i64 2
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !20
  %i.tu = zext i16 %i.tt to i64
  %i.tv = add nuw nsw i64 %i.tn, %i.tq
  %i.tw = add nuw nsw i64 %i.tv, %i.tu            ; 2 uses
  %i.tx = trunc i64 %i.tw to i16
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next52.i89
  store i16 %i.tx, ptr %i.ty, align 2, !tbaa !20
  %i.tz = lshr i64 %i.tw, 16
  %indvars.iv.next52.i89.1 = or disjoint i64 %indvars.iv51.i86, 2 ; 2 uses
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i89.1
  %i.ub = load i16, ptr %i.ua, align 8, !tbaa !20
  %i.uc = zext i16 %i.ub to i64
  %i.ud = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i87
  %i.ue = getelementptr i8, ptr %i.ud, i64 4
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !20
  %i.ug = zext i16 %i.uf to i64
  %i.uh = add nuw nsw i64 %i.tz, %i.uc
  %i.ui = add nuw nsw i64 %i.uh, %i.ug            ; 2 uses
  %i.uj = trunc i64 %i.ui to i16
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next52.i89.1
  store i16 %i.uj, ptr %i.uk, align 4, !tbaa !20
  %i.ul = lshr i64 %i.ui, 16
  %indvars.iv.next52.i89.2 = or disjoint i64 %indvars.iv51.i86, 3 ; 2 uses
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i89.2
  %i.un = load i16, ptr %i.um, align 2, !tbaa !20
  %i.uo = zext i16 %i.un to i64
  %i.up = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i87
  %i.uq = getelementptr i8, ptr %i.up, i64 6
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !20
  %i.us = zext i16 %i.ur to i64
  %i.ut = add nuw nsw i64 %i.ul, %i.uo
  %i.uu = add nuw nsw i64 %i.ut, %i.us            ; 2 uses
  %i.uv = trunc i64 %i.uu to i16
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next52.i89.2
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !20
  %i.ux = lshr i64 %i.uu, 16                      ; 3 uses
  %indvars.iv.next52.i89.3 = add nuw nsw i64 %indvars.iv51.i86, 4 ; 2 uses
  %indvars.iv.next.i90.3 = add nsw i64 %indvars.iv.i87, 4 ; 2 uses
  %niter1538.next.3 = add i64 %niter1538, 4       ; 2 uses
  %niter1538.ncmp.3 = icmp eq i64 %niter1538.next.3, %unroll_iter1537
  br i1 %niter1538.ncmp.3, label %.preheader.i92.unr-lcssa, label %bb.bi, !llvm.loop !5

.lr.ph40.i56.new:                                 ; preds = %.prol.loopexit1540, %.lr.ph40.i56.new
  %indvars.iv56.i59 = phi i64 [ %indvars.iv.next57.i61.7, %.lr.ph40.i56.new ], [ %indvars.iv56.i59.unr, %.prol.loopexit1540 ] ; 10 uses
  %.139.i60 = phi i64 [ %i.xb, %.lr.ph40.i56.new ], [ %.139.i60.unr, %.prol.loopexit1540 ]
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv56.i59
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !20
  %i.va = zext i16 %i.uz to i64
  %i.vb = add nuw nsw i64 %.139.i60, %i.va        ; 2 uses
  %i.vc = trunc i64 %i.vb to i16
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv56.i59
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !20
  %i.ve = lshr i64 %i.vb, 16
  %indvars.iv.next57.i61 = add nuw nsw i64 %indvars.iv56.i59, 1 ; 2 uses
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !20
  %i.vh = zext i16 %i.vg to i64
  %i.vi = add nuw nsw i64 %i.ve, %i.vh            ; 2 uses
  %i.vj = trunc i64 %i.vi to i16
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61
  store i16 %i.vj, ptr %i.vk, align 2, !tbaa !20
  %i.vl = lshr i64 %i.vi, 16
  %indvars.iv.next57.i61.1 = add nuw nsw i64 %indvars.iv56.i59, 2 ; 2 uses
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.1
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !20
  %i.vo = zext i16 %i.vn to i64
  %i.vp = add nuw nsw i64 %i.vl, %i.vo            ; 2 uses
  %i.vq = trunc i64 %i.vp to i16
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.1
  store i16 %i.vq, ptr %i.vr, align 2, !tbaa !20
  %i.vs = lshr i64 %i.vp, 16
  %indvars.iv.next57.i61.2 = add nuw nsw i64 %indvars.iv56.i59, 3 ; 2 uses
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.2
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !20
  %i.vv = zext i16 %i.vu to i64
  %i.vw = add nuw nsw i64 %i.vs, %i.vv            ; 2 uses
  %i.vx = trunc i64 %i.vw to i16
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.2
  store i16 %i.vx, ptr %i.vy, align 2, !tbaa !20
  %i.vz = lshr i64 %i.vw, 16
  %indvars.iv.next57.i61.3 = add nuw nsw i64 %indvars.iv56.i59, 4 ; 2 uses
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.3
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !20
  %i.wc = zext i16 %i.wb to i64
  %i.wd = add nuw nsw i64 %i.vz, %i.wc            ; 2 uses
  %i.we = trunc i64 %i.wd to i16
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.3
  store i16 %i.we, ptr %i.wf, align 2, !tbaa !20
  %i.wg = lshr i64 %i.wd, 16
  %indvars.iv.next57.i61.4 = add nuw nsw i64 %indvars.iv56.i59, 5 ; 2 uses
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.4
  %i.wi = load i16, ptr %i.wh, align 2, !tbaa !20
  %i.wj = zext i16 %i.wi to i64
  %i.wk = add nuw nsw i64 %i.wg, %i.wj            ; 2 uses
  %i.wl = trunc i64 %i.wk to i16
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.4
  store i16 %i.wl, ptr %i.wm, align 2, !tbaa !20
  %i.wn = lshr i64 %i.wk, 16
  %indvars.iv.next57.i61.5 = add nuw nsw i64 %indvars.iv56.i59, 6 ; 2 uses
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.5
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !20
  %i.wq = zext i16 %i.wp to i64
  %i.wr = add nuw nsw i64 %i.wn, %i.wq            ; 2 uses
  %i.ws = trunc i64 %i.wr to i16
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.5
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !20
  %i.wu = lshr i64 %i.wr, 16
  %indvars.iv.next57.i61.6 = add nuw nsw i64 %indvars.iv56.i59, 7 ; 2 uses
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i61.6
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !20
  %i.wx = zext i16 %i.ww to i64
  %i.wy = add nuw nsw i64 %i.wu, %i.wx            ; 2 uses
  %i.wz = trunc i64 %i.wy to i16
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next57.i61.6
  store i16 %i.wz, ptr %i.xa, align 2, !tbaa !20
  %i.xb = lshr i64 %i.wy, 16                      ; 2 uses
  %indvars.iv.next57.i61.7 = add nuw nsw i64 %indvars.iv56.i59, 8 ; 2 uses
  %exitcond59.not.i62.7 = icmp eq i64 %indvars.iv.next57.i61.7, 10
  br i1 %exitcond59.not.i62.7, label %._crit_edge.i63, label %.lr.ph40.i56.new, !llvm.loop !6

._crit_edge.i63:                                  ; preds = %.prol.loopexit1540, %.lr.ph40.i56.new, %.preheader.i92
  %.128.lcssa.i64 = phi i32 [ %i.sd, %.preheader.i92 ], [ 10, %.lr.ph40.i56.new ], [ 10, %.prol.loopexit1540 ]
  %.1.lcssa.i65 = phi i64 [ %.lcssa1491, %.preheader.i92 ], [ %.lcssa1492.unr, %.prol.loopexit1540 ], [ %i.xb, %.lr.ph40.i56.new ]
  %i.xc = trunc nuw nsw i64 %.1.lcssa.i65 to i16
  %i.xd = zext nneg i32 %.128.lcssa.i64 to i64
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.xd
  store i16 %i.xc, ptr %i.xe, align 2, !tbaa !20
  %i.xf = add i16 %i.eh, 1
  %i.xg = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i45, align 4, !tbaa !20 ; 2 uses
  %.not.i.i66 = icmp eq i16 %i.xg, 0
  br i1 %.not.i.i66, label %bb.bj, label %.preheader.i.i67

bb.bj:                                            ; preds = %._crit_edge.i63
  %i.xh = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i46, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i70 = icmp eq i16 %i.xh, 0
  br i1 %.not.i.1.i70, label %bb.bk, label %.preheader.i.i67

bb.bk:                                            ; preds = %bb.bj
  %i.xi = add i16 %i.eh, -1
  %i.xj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i47, align 16, !tbaa !20
  %.not.i.2.i71 = icmp eq i16 %i.xj, 0
  br i1 %.not.i.2.i71, label %bb.bl, label %.lr.ph47.i.i72

bb.bl:                                            ; preds = %bb.bk
  %i.xk = add i16 %i.eh, -2
  %i.xl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i48, align 2, !tbaa !20
  %.not.i.3.i76 = icmp eq i16 %i.xl, 0
  br i1 %.not.i.3.i76, label %bb.bm, label %.lr.ph47.i.i72

bb.bm:                                            ; preds = %bb.bl
  %i.xm = add i16 %i.eh, -3
  %i.xn = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i49, align 4, !tbaa !20
  %.not.i.4.i77 = icmp eq i16 %i.xn, 0
  br i1 %.not.i.4.i77, label %bb.bn, label %.lr.ph47.i.i72

bb.bn:                                            ; preds = %bb.bm
  %i.xo = add i16 %i.eh, -4
  %i.xp = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i50, align 2, !tbaa !20
  %.not.i.5.i78 = icmp eq i16 %i.xp, 0
  br i1 %.not.i.5.i78, label %bb.bo, label %.lr.ph47.i.i72

bb.bo:                                            ; preds = %bb.bn
  %i.xq = add i16 %i.eh, -5
  %i.xr = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i51, align 8, !tbaa !20
  %.not.i.6.i79 = icmp eq i16 %i.xr, 0
  br i1 %.not.i.6.i79, label %bb.bp, label %.lr.ph47.i.i72

bb.bp:                                            ; preds = %bb.bo
  %i.xs = add i16 %i.eh, -6
  %i.xt = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i52, align 2, !tbaa !20
  %.not.i.7.i80 = icmp eq i16 %i.xt, 0
  br i1 %.not.i.7.i80, label %bb.bq, label %.lr.ph47.i.i72

bb.bq:                                            ; preds = %bb.bp
  %i.xu = add i16 %i.eh, -7
  %i.xv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i53, align 4, !tbaa !20
  %.not.i.8.i81 = icmp eq i16 %i.xv, 0
  br i1 %.not.i.8.i81, label %bb.br, label %.lr.ph47.i.i72

bb.br:                                            ; preds = %bb.bq
  %i.xw = add i16 %i.eh, -8
  %i.xx = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i54, align 2, !tbaa !20
  %.not.i.9.i82 = icmp eq i16 %i.xx, 0
  br i1 %.not.i.9.i82, label %bb.bs, label %.lr.ph47.i.i72

bb.bs:                                            ; preds = %bb.br
  %i.xy = add i16 %i.eh, -9
  %i.xz = load i16, ptr %i.w, align 16, !tbaa !20
  %.not.i.10.i83 = icmp eq i16 %i.xz, 0
  br i1 %.not.i.10.i83, label %bb.bt, label %.lr.ph47.i.i72

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit93

.preheader.i.i67:                                 ; preds = %bb.bj, %._crit_edge.i63
  %i.ya = phi i16 [ %i.xg, %._crit_edge.i63 ], [ %i.xh, %bb.bj ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i68 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i55, %._crit_edge.i63 ], [ %indvars.iv73.i.lcssa.sroa.gep.i45, %bb.bj ] ; 2 uses
  %.03341.i.lcssa.i69 = phi i16 [ %i.xf, %._crit_edge.i63 ], [ %i.eh, %bb.bj ]
  store i16 %.03341.i.lcssa.i69, ptr %i.bl, align 2, !tbaa !26
  store i16 %i.ee, ptr %11, align 16, !tbaa !24
  store i16 %i.ya, ptr %i.bn, align 2, !tbaa !20
  %i.yb = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i68, i64 -4
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !20
  store i16 %i.yc, ptr %i.bo, align 4, !tbaa !20
  %i.yd = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i68, i64 -20
  %i.ye = load <8 x i16>, ptr %i.yd, align 2, !tbaa !20
  store <8 x i16> %i.ye, ptr %i.bm, align 4, !tbaa !20
  br label %addmag0.exit93

.lr.ph47.i.i72:                                   ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.03341.i.lcssa.ph.i73 = phi i16 [ %i.xy, %bb.bs ], [ %i.xw, %bb.br ], [ %i.xu, %bb.bq ], [ %i.xs, %bb.bp ], [ %i.xq, %bb.bo ], [ %i.xo, %bb.bn ], [ %i.xm, %bb.bm ], [ %i.xk, %bb.bl ], [ %i.xi, %bb.bk ]
  %indvars.iv59.i.lcssa.ph.i74 = phi i64 [ 0, %bb.bs ], [ 2, %bb.br ], [ 4, %bb.bq ], [ 6, %bb.bp ], [ 8, %bb.bo ], [ 10, %bb.bn ], [ 12, %bb.bm ], [ 14, %bb.bl ], [ 16, %bb.bk ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i73, ptr %i.bl, align 2, !tbaa !26
  store i16 %i.ee, ptr %11, align 16, !tbaa !24
  %i.yf = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i74
  %scevgep.i75 = getelementptr i8, ptr %11, i64 %i.yf
  %i.yg = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i74, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i75, ptr noundef nonnull align 16 dereferenceable(1) %i.w, i64 %i.yg, i1 false), !tbaa !20
  %i.yh = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i74
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.yh, i1 false), !tbaa !20
  br label %addmag0.exit93

addmag0.exit93:                                   ; preds = %bb.bt, %.preheader.i.i67, %.lr.ph47.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #12
  br label %sub.exit

bb.bu:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #12
  %i.yi = sext i16 %i.ei to i32                   ; 2 uses
  %i.yj = sext i16 %i.eh to i32                   ; 3 uses
  %i.yk = sub nsw i32 %i.yi, %i.yj
  %i.yl = icmp slt i32 %i.yk, 10
  br i1 %i.yl, label %.lr.ph.i39, label %.lr.ph40.i

.lr.ph.i39:                                       ; preds = %bb.bu
  %i.ym = sext i16 %i.ei to i64
  %i.yn = sub nsw i32 0, %i.yj
  %i.yo = sext i32 %i.yn to i64
  %i.yp = add nsw i64 %i.ym, %i.yo                ; 2 uses
  %i.yq = add nsw i32 %i.yj, 10
  %i.yr = sub nsw i32 %i.yq, %i.yi                ; 5 uses
  %wide.trip.count.i40 = zext i32 %i.yr to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i40, 3     ; 3 uses
  %i.ys = add nsw i32 %i.yr, -1
  %i.yt = icmp ult i32 %i.ys, 3
  br i1 %i.yt, label %.epil.preheader, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.lr.ph.i39
  %unroll_iter = and i64 %wide.trip.count.i40, 4294967292
  br label %bb.bw

.preheader.i44.unr-lcssa:                         ; preds = %bb.bw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i44, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i44.unr-lcssa, %.lr.ph.i39
  %indvars.iv51.i.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next52.i.3, %.preheader.i44.unr-lcssa ]
  %indvars.iv.i41.epil.init = phi i64 [ %i.yp, %.lr.ph.i39 ], [ %indvars.iv.next.i42.3, %.preheader.i44.unr-lcssa ]
  %.036.i.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %i.abl, %.preheader.i44.unr-lcssa ]
  %lcmp.mod1528 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1528)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.epil.preheader
  %indvars.iv51.i.epil = phi i64 [ %indvars.iv51.i.epil.init, %.epil.preheader ], [ %indvars.iv.next52.i.epil, %bb.bv ] ; 3 uses
  %indvars.iv.i41.epil = phi i64 [ %indvars.iv.i41.epil.init, %.epil.preheader ], [ %indvars.iv.next.i42.epil, %bb.bv ] ; 2 uses
  %.036.i.epil = phi i64 [ %.036.i.epil.init, %.epil.preheader ], [ %i.ze, %bb.bv ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bv ]
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i.epil
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !20
  %i.yw = zext i16 %i.yv to i64
  %i.yx = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i41.epil
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !20
  %i.yz = zext i16 %i.yy to i64
  %i.za = add nuw nsw i64 %.036.i.epil, %i.yw
  %i.zb = add nuw nsw i64 %i.za, %i.yz            ; 2 uses
  %i.zc = trunc i64 %i.zb to i16
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv51.i.epil
  store i16 %i.zc, ptr %i.zd, align 2, !tbaa !20
  %i.ze = lshr i64 %i.zb, 16                      ; 2 uses
  %indvars.iv.next52.i.epil = add nuw nsw i64 %indvars.iv51.i.epil, 1
  %indvars.iv.next.i42.epil = add nsw i64 %indvars.iv.i41.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i44, label %bb.bv, !llvm.loop !60

.preheader.i44:                                   ; preds = %bb.bv, %.preheader.i44.unr-lcssa
  %.lcssa = phi i64 [ %i.abl, %.preheader.i44.unr-lcssa ], [ %i.ze, %bb.bv ] ; 2 uses
  %i.zf = icmp samesign ult i32 %i.yr, 10
  br i1 %i.zf, label %.lr.ph40.i, label %._crit_edge.i38

.lr.ph40.i:                                       ; preds = %bb.bu, %.preheader.i44
  %.0.lcssa94.i = phi i64 [ %.lcssa, %.preheader.i44 ], [ 0, %bb.bu ] ; 2 uses
  %.027.lcssa93.i = phi i32 [ %i.yr, %.preheader.i44 ], [ 0, %bb.bu ] ; 2 uses
  %i.zg = zext nneg i32 %.027.lcssa93.i to i64    ; 3 uses
  %i.zh = sub nsw i64 2, %i.zg
  %xtraiter1529 = and i64 %i.zh, 7                ; 2 uses
  %lcmp.mod1530.not = icmp eq i64 %xtraiter1529, 0
  br i1 %lcmp.mod1530.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph40.i, %.prol.preheader
  %indvars.iv56.i.prol = phi i64 [ %indvars.iv.next57.i.prol, %.prol.preheader ], [ %i.zg, %.lr.ph40.i ] ; 3 uses
  %.139.i.prol = phi i64 [ %i.zo, %.prol.preheader ], [ %.0.lcssa94.i, %.lr.ph40.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph40.i ]
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv56.i.prol
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !20
  %i.zk = zext i16 %i.zj to i64
  %i.zl = add nuw nsw i64 %.139.i.prol, %i.zk     ; 2 uses
  %i.zm = trunc i64 %i.zl to i16
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv56.i.prol
  store i16 %i.zm, ptr %i.zn, align 2, !tbaa !20
  %i.zo = lshr i64 %i.zl, 16                      ; 3 uses
  %indvars.iv.next57.i.prol = add nuw nsw i64 %indvars.iv56.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1529
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !61

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph40.i
  %.lcssa1490.unr = phi i64 [ poison, %.lr.ph40.i ], [ %i.zo, %.prol.preheader ]
  %indvars.iv56.i.unr = phi i64 [ %i.zg, %.lr.ph40.i ], [ %indvars.iv.next57.i.prol, %.prol.preheader ]
  %.139.i.unr = phi i64 [ %.0.lcssa94.i, %.lr.ph40.i ], [ %i.zo, %.prol.preheader ]
  %i.zp = add nsw i32 %.027.lcssa93.i, -3
  %i.zq = icmp ult i32 %i.zp, 7
  br i1 %i.zq, label %._crit_edge.i38, label %.lr.ph40.i.new

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i39.new
  %indvars.iv51.i = phi i64 [ 0, %.lr.ph.i39.new ], [ %indvars.iv.next52.i.3, %bb.bw ] ; 6 uses
  %indvars.iv.i41 = phi i64 [ %i.yp, %.lr.ph.i39.new ], [ %indvars.iv.next.i42.3, %bb.bw ] ; 5 uses
  %.036.i = phi i64 [ 0, %.lr.ph.i39.new ], [ %i.abl, %bb.bw ]
  %niter = phi i64 [ 0, %.lr.ph.i39.new ], [ %niter.next.3, %bb.bw ]
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i
  %i.zs = load i16, ptr %i.zr, align 4, !tbaa !20
  %i.zt = zext i16 %i.zs to i64
  %i.zu = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i41
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !20
  %i.zw = zext i16 %i.zv to i64
  %i.zx = add nuw nsw i64 %.036.i, %i.zt
  %i.zy = add nuw nsw i64 %i.zx, %i.zw            ; 2 uses
  %i.zz = trunc i64 %i.zy to i16
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv51.i
  store i16 %i.zz, ptr %i.aaa, align 8, !tbaa !20
  %i.aab = lshr i64 %i.zy, 16
  %indvars.iv.next52.i = or disjoint i64 %indvars.iv51.i, 1 ; 2 uses
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !20
  %i.aae = zext i16 %i.aad to i64
  %i.aaf = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i41
  %i.aag = getelementptr i8, ptr %i.aaf, i64 2
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !20
  %i.aai = zext i16 %i.aah to i64
  %i.aaj = add nuw nsw i64 %i.aab, %i.aae
  %i.aak = add nuw nsw i64 %i.aaj, %i.aai         ; 2 uses
  %i.aal = trunc i64 %i.aak to i16
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next52.i
  store i16 %i.aal, ptr %i.aam, align 2, !tbaa !20
  %i.aan = lshr i64 %i.aak, 16
  %indvars.iv.next52.i.1 = or disjoint i64 %indvars.iv51.i, 2 ; 2 uses
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i.1
  %i.aap = load i16, ptr %i.aao, align 8, !tbaa !20
  %i.aaq = zext i16 %i.aap to i64
  %i.aar = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i41
  %i.aas = getelementptr i8, ptr %i.aar, i64 4
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !20
  %i.aau = zext i16 %i.aat to i64
  %i.aav = add nuw nsw i64 %i.aan, %i.aaq
  %i.aaw = add nuw nsw i64 %i.aav, %i.aau         ; 2 uses
  %i.aax = trunc i64 %i.aaw to i16
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next52.i.1
  store i16 %i.aax, ptr %i.aay, align 4, !tbaa !20
  %i.aaz = lshr i64 %i.aaw, 16
  %indvars.iv.next52.i.2 = or disjoint i64 %indvars.iv51.i, 3 ; 2 uses
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i.2
  %i.abb = load i16, ptr %i.aba, align 2, !tbaa !20
  %i.abc = zext i16 %i.abb to i64
  %i.abd = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i41
  %i.abe = getelementptr i8, ptr %i.abd, i64 6
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !20
  %i.abg = zext i16 %i.abf to i64
  %i.abh = add nuw nsw i64 %i.aaz, %i.abc
  %i.abi = add nuw nsw i64 %i.abh, %i.abg         ; 2 uses
  %i.abj = trunc i64 %i.abi to i16
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next52.i.2
  store i16 %i.abj, ptr %i.abk, align 2, !tbaa !20
  %i.abl = lshr i64 %i.abi, 16                    ; 3 uses
  %indvars.iv.next52.i.3 = add nuw nsw i64 %indvars.iv51.i, 4 ; 2 uses
  %indvars.iv.next.i42.3 = add nsw i64 %indvars.iv.i41, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i44.unr-lcssa, label %bb.bw, !llvm.loop !5

.lr.ph40.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph40.i.new
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.7, %.lr.ph40.i.new ], [ %indvars.iv56.i.unr, %.prol.loopexit ] ; 10 uses
  %.139.i = phi i64 [ %i.adp, %.lr.ph40.i.new ], [ %.139.i.unr, %.prol.loopexit ]
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv56.i
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !20
  %i.abo = zext i16 %i.abn to i64
  %i.abp = add nuw nsw i64 %.139.i, %i.abo        ; 2 uses
  %i.abq = trunc i64 %i.abp to i16
  %i.abr = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv56.i
  store i16 %i.abq, ptr %i.abr, align 2, !tbaa !20
  %i.abs = lshr i64 %i.abp, 16
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !20
  %i.abv = zext i16 %i.abu to i64
  %i.abw = add nuw nsw i64 %i.abs, %i.abv         ; 2 uses
  %i.abx = trunc i64 %i.abw to i16
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i
  store i16 %i.abx, ptr %i.aby, align 2, !tbaa !20
  %i.abz = lshr i64 %i.abw, 16
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.1
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !20
  %i.acc = zext i16 %i.acb to i64
  %i.acd = add nuw nsw i64 %i.abz, %i.acc         ; 2 uses
  %i.ace = trunc i64 %i.acd to i16
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.1
  store i16 %i.ace, ptr %i.acf, align 2, !tbaa !20
  %i.acg = lshr i64 %i.acd, 16
  %indvars.iv.next57.i.2 = add nuw nsw i64 %indvars.iv56.i, 3 ; 2 uses
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.2
  %i.aci = load i16, ptr %i.ach, align 2, !tbaa !20
  %i.acj = zext i16 %i.aci to i64
  %i.ack = add nuw nsw i64 %i.acg, %i.acj         ; 2 uses
  %i.acl = trunc i64 %i.ack to i16
  %i.acm = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.2
  store i16 %i.acl, ptr %i.acm, align 2, !tbaa !20
  %i.acn = lshr i64 %i.ack, 16
  %indvars.iv.next57.i.3 = add nuw nsw i64 %indvars.iv56.i, 4 ; 2 uses
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.3
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !20
  %i.acq = zext i16 %i.acp to i64
  %i.acr = add nuw nsw i64 %i.acn, %i.acq         ; 2 uses
  %i.acs = trunc i64 %i.acr to i16
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.3
  store i16 %i.acs, ptr %i.act, align 2, !tbaa !20
  %i.acu = lshr i64 %i.acr, 16
  %indvars.iv.next57.i.4 = add nuw nsw i64 %indvars.iv56.i, 5 ; 2 uses
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.4
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !20
  %i.acx = zext i16 %i.acw to i64
  %i.acy = add nuw nsw i64 %i.acu, %i.acx         ; 2 uses
  %i.acz = trunc i64 %i.acy to i16
  %i.ada = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.4
  store i16 %i.acz, ptr %i.ada, align 2, !tbaa !20
  %i.adb = lshr i64 %i.acy, 16
  %indvars.iv.next57.i.5 = add nuw nsw i64 %indvars.iv56.i, 6 ; 2 uses
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.5
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !20
  %i.ade = zext i16 %i.add to i64
  %i.adf = add nuw nsw i64 %i.adb, %i.ade         ; 2 uses
  %i.adg = trunc i64 %i.adf to i16
  %i.adh = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.5
  store i16 %i.adg, ptr %i.adh, align 2, !tbaa !20
  %i.adi = lshr i64 %i.adf, 16
  %indvars.iv.next57.i.6 = add nuw nsw i64 %indvars.iv56.i, 7 ; 2 uses
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i.6
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !20
  %i.adl = zext i16 %i.adk to i64
  %i.adm = add nuw nsw i64 %i.adi, %i.adl         ; 2 uses
  %i.adn = trunc i64 %i.adm to i16
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next57.i.6
  store i16 %i.adn, ptr %i.ado, align 2, !tbaa !20
  %i.adp = lshr i64 %i.adm, 16                    ; 2 uses
  %indvars.iv.next57.i.7 = add nuw nsw i64 %indvars.iv56.i, 8 ; 2 uses
  %exitcond59.not.i.7 = icmp eq i64 %indvars.iv.next57.i.7, 10
  br i1 %exitcond59.not.i.7, label %._crit_edge.i38, label %.lr.ph40.i.new, !llvm.loop !6

._crit_edge.i38:                                  ; preds = %.prol.loopexit, %.lr.ph40.i.new, %.preheader.i44
  %.128.lcssa.i = phi i32 [ %i.yr, %.preheader.i44 ], [ 10, %.lr.ph40.i.new ], [ 10, %.prol.loopexit ]
  %.1.lcssa.i = phi i64 [ %.lcssa, %.preheader.i44 ], [ %.lcssa1490.unr, %.prol.loopexit ], [ %i.adp, %.lr.ph40.i.new ]
  %i.adq = trunc nuw nsw i64 %.1.lcssa.i to i16
  %i.adr = zext nneg i32 %.128.lcssa.i to i64
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.adr
  store i16 %i.adq, ptr %i.ads, align 2, !tbaa !20
  %i.adt = add i16 %i.ei, 1
  %i.adu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i, align 4, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq i16 %i.adu, 0
  br i1 %.not.i.i, label %bb.bx, label %.preheader.i.i

bb.bx:                                            ; preds = %._crit_edge.i38
  %i.adv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i = icmp eq i16 %i.adv, 0
  br i1 %.not.i.1.i, label %bb.by, label %.preheader.i.i

bb.by:                                            ; preds = %bb.bx
  %i.adw = add i16 %i.ei, -1
  %i.adx = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i, align 16, !tbaa !20
  %.not.i.2.i = icmp eq i16 %i.adx, 0
  br i1 %.not.i.2.i, label %bb.bz, label %.lr.ph47.i.i

bb.bz:                                            ; preds = %bb.by
  %i.ady = add i16 %i.ei, -2
  %i.adz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i, align 2, !tbaa !20
  %.not.i.3.i = icmp eq i16 %i.adz, 0
  br i1 %.not.i.3.i, label %bb.ca, label %.lr.ph47.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.aea = add i16 %i.ei, -3
  %i.aeb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i, align 4, !tbaa !20
  %.not.i.4.i = icmp eq i16 %i.aeb, 0
  br i1 %.not.i.4.i, label %bb.cb, label %.lr.ph47.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.aec = add i16 %i.ei, -4
  %i.aed = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i, align 2, !tbaa !20
  %.not.i.5.i = icmp eq i16 %i.aed, 0
  br i1 %.not.i.5.i, label %bb.cc, label %.lr.ph47.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.aee = add i16 %i.ei, -5
  %i.aef = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i, align 8, !tbaa !20
  %.not.i.6.i = icmp eq i16 %i.aef, 0
  br i1 %.not.i.6.i, label %bb.cd, label %.lr.ph47.i.i

bb.cd:                                            ; preds = %bb.cc
end_hunk_1
begin_hunk_2_@fft0:bb.a
  store i16 %i.aer, ptr %i.bo, align 4, !tbaa !20
  %i.aes = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i, i64 -20
  %i.aet = load <8 x i16>, ptr %i.aes, align 2, !tbaa !20
  store <8 x i16> %i.aet, ptr %i.bm, align 4, !tbaa !20
  br label %addmag0.exit

.lr.ph47.i.i:                                     ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.03341.i.lcssa.ph.i = phi i16 [ %i.aem, %bb.cg ], [ %i.aek, %bb.cf ], [ %i.aei, %bb.ce ], [ %i.aeg, %bb.cd ], [ %i.aee, %bb.cc ], [ %i.aec, %bb.cb ], [ %i.aea, %bb.ca ], [ %i.ady, %bb.bz ], [ %i.adw, %bb.by ]
  %indvars.iv59.i.lcssa.ph.i = phi i64 [ 0, %bb.cg ], [ 2, %bb.cf ], [ 4, %bb.ce ], [ 6, %bb.cd ], [ 8, %bb.cc ], [ 10, %bb.cb ], [ 12, %bb.ca ], [ 14, %bb.bz ], [ 16, %bb.by ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i, ptr %i.bl, align 2, !tbaa !26
  %i.aeu = sub i16 0, %i.ef
  store i16 %i.aeu, ptr %11, align 16, !tbaa !24
  %i.aev = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i
  %scevgep.i = getelementptr i8, ptr %11, i64 %i.aev
  %i.aew = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 16 dereferenceable(1) %i.x, i64 %i.aew, i1 false), !tbaa !20
  %i.aex = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bm, i8 0, i64 %i.aex, i1 false), !tbaa !20
  br label %addmag0.exit

addmag0.exit:                                     ; preds = %bb.ch, %.preheader.i.i, %.lr.ph47.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #12
  br label %sub.exit

sub.exit:                                         ; preds = %submag0.exit159, %submag0.exit, %addmag0.exit93, %addmag0.exit
  call fastcc void @mul(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %9)
  call fastcc void @mul(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %10)
  %i.aey = load i16, ptr %9, align 16, !tbaa !24  ; 7 uses
  %i.aez = load i16, ptr %10, align 16, !tbaa !24 ; 3 uses
  %i.afa = icmp eq i16 %i.aey, %i.aez
  %i.afb = load i16, ptr %i.ap, align 2, !tbaa !26 ; 29 uses
  %i.afc = load i16, ptr %i.aq, align 2, !tbaa !26 ; 29 uses
  %i.afd = icmp sgt i16 %i.afb, %i.afc
  br i1 %i.afd, label %abscmp.exit346, label %bb.ci

bb.ci:                                            ; preds = %sub.exit
  %i.afe = icmp slt i16 %i.afb, %i.afc
  br i1 %i.afe, label %abscmp.exit346, label %.preheader.i343

.preheader.i343:                                  ; preds = %bb.ci
  %i.aff = load i16, ptr %i.at, align 2, !tbaa !20 ; 2 uses
  %i.afg = load i16, ptr %i.au, align 2, !tbaa !20 ; 2 uses
  %i.afh = icmp ugt i16 %i.aff, %i.afg
  br i1 %i.afh, label %abscmp.exit346, label %bb.da

bb.cj:                                            ; preds = %bb.da
  %i.afi = load i16, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %i.afj = load i16, ptr %i.aw, align 4, !tbaa !20 ; 2 uses
  %i.afk = icmp ugt i16 %i.afi, %i.afj
  br i1 %i.afk, label %abscmp.exit346, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afl = icmp ult i16 %i.afi, %i.afj
  br i1 %i.afl, label %abscmp.exit346, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.afm = load i16, ptr %i.ax, align 2, !tbaa !20 ; 2 uses
  %i.afn = load i16, ptr %i.ay, align 2, !tbaa !20 ; 2 uses
  %i.afo = icmp ugt i16 %i.afm, %i.afn
  br i1 %i.afo, label %abscmp.exit346, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afp = icmp ult i16 %i.afm, %i.afn
  br i1 %i.afp, label %abscmp.exit346, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.afq = load i16, ptr %i.az, align 16, !tbaa !20 ; 2 uses
  %i.afr = load i16, ptr %i.ba, align 16, !tbaa !20 ; 2 uses
  %i.afs = icmp ugt i16 %i.afq, %i.afr
  br i1 %i.afs, label %abscmp.exit346, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aft = icmp ult i16 %i.afq, %i.afr
  br i1 %i.aft, label %abscmp.exit346, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.afu = load i16, ptr %i.bb, align 2, !tbaa !20 ; 2 uses
  %i.afv = load i16, ptr %i.bc, align 2, !tbaa !20 ; 2 uses
  %i.afw = icmp ugt i16 %i.afu, %i.afv
  br i1 %i.afw, label %abscmp.exit346, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.afx = icmp ult i16 %i.afu, %i.afv
  br i1 %i.afx, label %abscmp.exit346, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.afy = load i16, ptr %i.bd, align 4, !tbaa !20 ; 2 uses
  %i.afz = load i16, ptr %i.be, align 4, !tbaa !20 ; 2 uses
  %i.aga = icmp ugt i16 %i.afy, %i.afz
  br i1 %i.aga, label %abscmp.exit346, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.agb = icmp ult i16 %i.afy, %i.afz
  br i1 %i.agb, label %abscmp.exit346, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.agc = load i16, ptr %i.bf, align 2, !tbaa !20 ; 2 uses
  %i.agd = load i16, ptr %i.bg, align 2, !tbaa !20 ; 2 uses
  %i.age = icmp ugt i16 %i.agc, %i.agd
  br i1 %i.age, label %abscmp.exit346, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.agf = icmp ult i16 %i.agc, %i.agd
  br i1 %i.agf, label %abscmp.exit346, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.agg = load i16, ptr %i.bh, align 8, !tbaa !20 ; 2 uses
  %i.agh = load i16, ptr %i.bi, align 8, !tbaa !20 ; 2 uses
  %i.agi = icmp ugt i16 %i.agg, %i.agh
  br i1 %i.agi, label %abscmp.exit346, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.agj = icmp ult i16 %i.agg, %i.agh
  br i1 %i.agj, label %abscmp.exit346, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.agk = load i16, ptr %i.bj, align 2, !tbaa !20 ; 2 uses
  %i.agl = load i16, ptr %i.bk, align 2, !tbaa !20 ; 2 uses
  %i.agm = icmp ugt i16 %i.agk, %i.agl
  br i1 %i.agm, label %abscmp.exit346, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.agn = icmp ult i16 %i.agk, %i.agl
  br i1 %i.agn, label %abscmp.exit346, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ago = load i16, ptr %i.ar, align 4, !tbaa !20
  %i.agp = load i16, ptr %i.as, align 4, !tbaa !20
  %i.agq = icmp ugt i16 %i.ago, %i.agp
  br label %abscmp.exit346

bb.da:                                            ; preds = %.preheader.i343
  %i.agr = icmp ult i16 %i.aff, %i.afg
  br i1 %i.agr, label %abscmp.exit346, label %bb.cj

abscmp.exit346:                                   ; preds = %bb.cz, %sub.exit, %bb.ci, %.preheader.i343, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.da
  %.014.i345 = phi i1 [ false, %bb.ci ], [ true, %sub.exit ], [ false, %bb.da ], [ true, %.preheader.i343 ], [ false, %bb.cw ], [ true, %bb.cj ], [ false, %bb.ck ], [ false, %bb.cu ], [ true, %bb.cl ], [ false, %bb.cm ], [ %i.agq, %bb.cz ], [ true, %bb.cn ], [ false, %bb.co ], [ true, %bb.cv ], [ true, %bb.cp ], [ false, %bb.cq ], [ false, %bb.cy ], [ true, %bb.cr ], [ false, %bb.cs ], [ true, %bb.cx ], [ true, %bb.ct ] ; 2 uses
  br i1 %i.afa, label %bb.db, label %bb.ee

bb.db:                                            ; preds = %abscmp.exit346
  br i1 %.014.i345, label %bb.dc, label %bb.dq

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #12
  %i.ags = sext i16 %i.afb to i32                 ; 2 uses
  %i.agt = sext i16 %i.afc to i32                 ; 3 uses
  %i.agu = sub nsw i32 %i.ags, %i.agt
  %i.agv = icmp slt i32 %i.agu, 10
  br i1 %i.agv, label %.lr.ph.i333, label %.lr.ph40.i305

.lr.ph.i333:                                      ; preds = %bb.dc
  %i.agw = sext i16 %i.afb to i64
  %i.agx = sub nsw i32 0, %i.agt
  %i.agy = sext i32 %i.agx to i64
  %i.agz = add nsw i64 %i.agy, %i.agw             ; 2 uses
  %reass.sub1162 = sub nsw i32 %i.agt, %i.ags     ; 3 uses
  %i.aha = add nsw i32 %reass.sub1162, 10         ; 3 uses
  %wide.trip.count.i334 = zext i32 %i.aha to i64  ; 2 uses
  %xtraiter1610 = and i64 %wide.trip.count.i334, 3 ; 3 uses
  %i.ahb = add nsw i32 %reass.sub1162, 9
  %i.ahc = icmp ult i32 %i.ahb, 3
  br i1 %i.ahc, label %.epil.preheader1609, label %.lr.ph.i333.new

.lr.ph.i333.new:                                  ; preds = %.lr.ph.i333
  %unroll_iter1615 = and i64 %wide.trip.count.i334, 4294967292
  br label %bb.de

.preheader.i341.unr-lcssa:                        ; preds = %bb.de
  %lcmp.mod1612.not = icmp eq i64 %xtraiter1610, 0
  br i1 %lcmp.mod1612.not, label %.preheader.i341, label %.epil.preheader1609

.epil.preheader1609:                              ; preds = %.preheader.i341.unr-lcssa, %.lr.ph.i333
  %indvars.iv51.i335.epil.init = phi i64 [ 0, %.lr.ph.i333 ], [ %indvars.iv.next52.i338.3, %.preheader.i341.unr-lcssa ]
  %indvars.iv.i336.epil.init = phi i64 [ %i.agz, %.lr.ph.i333 ], [ %indvars.iv.next.i339.3, %.preheader.i341.unr-lcssa ]
  %.036.i337.epil.init = phi i64 [ 0, %.lr.ph.i333 ], [ %i.aju, %.preheader.i341.unr-lcssa ]
  %lcmp.mod1614 = icmp ne i64 %xtraiter1610, 0
  tail call void @llvm.assume(i1 %lcmp.mod1614)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %.epil.preheader1609
  %indvars.iv51.i335.epil = phi i64 [ %indvars.iv51.i335.epil.init, %.epil.preheader1609 ], [ %indvars.iv.next52.i338.epil, %bb.dd ] ; 3 uses
  %indvars.iv.i336.epil = phi i64 [ %indvars.iv.i336.epil.init, %.epil.preheader1609 ], [ %indvars.iv.next.i339.epil, %bb.dd ] ; 2 uses
  %.036.i337.epil = phi i64 [ %.036.i337.epil.init, %.epil.preheader1609 ], [ %i.ahn, %bb.dd ]
  %epil.iter1611 = phi i64 [ 0, %.epil.preheader1609 ], [ %epil.iter1611.next, %bb.dd ]
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv51.i335.epil
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !20
  %i.ahf = zext i16 %i.ahe to i64
  %i.ahg = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i336.epil
  %i.ahh = load i16, ptr %i.ahg, align 2, !tbaa !20
  %i.ahi = zext i16 %i.ahh to i64
  %i.ahj = add nuw nsw i64 %.036.i337.epil, %i.ahf
  %i.ahk = add nuw nsw i64 %i.ahj, %i.ahi         ; 2 uses
  %i.ahl = trunc i64 %i.ahk to i16
  %i.ahm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv51.i335.epil
  store i16 %i.ahl, ptr %i.ahm, align 2, !tbaa !20
  %i.ahn = lshr i64 %i.ahk, 16                    ; 2 uses
  %indvars.iv.next52.i338.epil = add nuw nsw i64 %indvars.iv51.i335.epil, 1
  %indvars.iv.next.i339.epil = add nsw i64 %indvars.iv.i336.epil, 1
  %epil.iter1611.next = add i64 %epil.iter1611, 1 ; 2 uses
  %epil.iter1611.cmp.not = icmp eq i64 %epil.iter1611.next, %xtraiter1610
  br i1 %epil.iter1611.cmp.not, label %.preheader.i341, label %bb.dd, !llvm.loop !62

.preheader.i341:                                  ; preds = %bb.dd, %.preheader.i341.unr-lcssa
  %.lcssa1499 = phi i64 [ %i.aju, %.preheader.i341.unr-lcssa ], [ %i.ahn, %bb.dd ] ; 2 uses
  %i.aho = icmp slt i32 %reass.sub1162, 0
  br i1 %i.aho, label %.lr.ph40.i305, label %._crit_edge.i312

.lr.ph40.i305:                                    ; preds = %bb.dc, %.preheader.i341
  %.0.lcssa94.i306 = phi i64 [ %.lcssa1499, %.preheader.i341 ], [ 0, %bb.dc ] ; 2 uses
  %.027.lcssa93.i307 = phi i32 [ %i.aha, %.preheader.i341 ], [ 0, %bb.dc ] ; 2 uses
  %i.ahp = zext i32 %.027.lcssa93.i307 to i64     ; 3 uses
  %i.ahq = sub nsw i64 2, %i.ahp
  %xtraiter1619 = and i64 %i.ahq, 7               ; 2 uses
  %lcmp.mod1620.not = icmp eq i64 %xtraiter1619, 0
  br i1 %lcmp.mod1620.not, label %.prol.loopexit1618, label %.prol.preheader1617

.prol.preheader1617:                              ; preds = %.lr.ph40.i305, %.prol.preheader1617
  %indvars.iv56.i308.prol = phi i64 [ %indvars.iv.next57.i310.prol, %.prol.preheader1617 ], [ %i.ahp, %.lr.ph40.i305 ] ; 3 uses
  %.139.i309.prol = phi i64 [ %i.ahx, %.prol.preheader1617 ], [ %.0.lcssa94.i306, %.lr.ph40.i305 ]
  %prol.iter1621 = phi i64 [ %prol.iter1621.next, %.prol.preheader1617 ], [ 0, %.lr.ph40.i305 ]
  %i.ahr = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv56.i308.prol
  %i.ahs = load i16, ptr %i.ahr, align 2, !tbaa !20
  %i.aht = zext i16 %i.ahs to i64
  %i.ahu = add nuw nsw i64 %.139.i309.prol, %i.aht ; 2 uses
  %i.ahv = trunc i64 %i.ahu to i16
  %i.ahw = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv56.i308.prol
  store i16 %i.ahv, ptr %i.ahw, align 2, !tbaa !20
  %i.ahx = lshr i64 %i.ahu, 16                    ; 3 uses
  %indvars.iv.next57.i310.prol = add nuw nsw i64 %indvars.iv56.i308.prol, 1 ; 2 uses
  %prol.iter1621.next = add i64 %prol.iter1621, 1 ; 2 uses
  %prol.iter1621.cmp.not = icmp eq i64 %prol.iter1621.next, %xtraiter1619
  br i1 %prol.iter1621.cmp.not, label %.prol.loopexit1618, label %.prol.preheader1617, !llvm.loop !63

.prol.loopexit1618:                               ; preds = %.prol.preheader1617, %.lr.ph40.i305
  %.lcssa1500.unr = phi i64 [ poison, %.lr.ph40.i305 ], [ %i.ahx, %.prol.preheader1617 ]
  %indvars.iv56.i308.unr = phi i64 [ %i.ahp, %.lr.ph40.i305 ], [ %indvars.iv.next57.i310.prol, %.prol.preheader1617 ]
  %.139.i309.unr = phi i64 [ %.0.lcssa94.i306, %.lr.ph40.i305 ], [ %i.ahx, %.prol.preheader1617 ]
  %i.ahy = add nsw i32 %.027.lcssa93.i307, -3
  %i.ahz = icmp ult i32 %i.ahy, 7
  br i1 %i.ahz, label %._crit_edge.i312, label %.lr.ph40.i305.new

bb.de:                                            ; preds = %bb.de, %.lr.ph.i333.new
  %indvars.iv51.i335 = phi i64 [ 0, %.lr.ph.i333.new ], [ %indvars.iv.next52.i338.3, %bb.de ] ; 6 uses
  %indvars.iv.i336 = phi i64 [ %i.agz, %.lr.ph.i333.new ], [ %indvars.iv.next.i339.3, %bb.de ] ; 5 uses
  %.036.i337 = phi i64 [ 0, %.lr.ph.i333.new ], [ %i.aju, %bb.de ]
  %niter1616 = phi i64 [ 0, %.lr.ph.i333.new ], [ %niter1616.next.3, %bb.de ]
  %i.aia = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv51.i335
  %i.aib = load i16, ptr %i.aia, align 4, !tbaa !20
  %i.aic = zext i16 %i.aib to i64
  %i.aid = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i336
  %i.aie = load i16, ptr %i.aid, align 2, !tbaa !20
  %i.aif = zext i16 %i.aie to i64
  %i.aig = add nuw nsw i64 %.036.i337, %i.aic
  %i.aih = add nuw nsw i64 %i.aig, %i.aif         ; 2 uses
  %i.aii = trunc i64 %i.aih to i16
  %i.aij = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv51.i335
  store i16 %i.aii, ptr %i.aij, align 8, !tbaa !20
  %i.aik = lshr i64 %i.aih, 16
  %indvars.iv.next52.i338 = or disjoint i64 %indvars.iv51.i335, 1 ; 2 uses
  %i.ail = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i338
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !20
  %i.ain = zext i16 %i.aim to i64
  %i.aio = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i336
  %i.aip = getelementptr i8, ptr %i.aio, i64 2
  %i.aiq = load i16, ptr %i.aip, align 2, !tbaa !20
  %i.air = zext i16 %i.aiq to i64
  %i.ais = add nuw nsw i64 %i.aik, %i.ain
  %i.ait = add nuw nsw i64 %i.ais, %i.air         ; 2 uses
  %i.aiu = trunc i64 %i.ait to i16
  %i.aiv = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next52.i338
  store i16 %i.aiu, ptr %i.aiv, align 2, !tbaa !20
  %i.aiw = lshr i64 %i.ait, 16
  %indvars.iv.next52.i338.1 = or disjoint i64 %indvars.iv51.i335, 2 ; 2 uses
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i338.1
  %i.aiy = load i16, ptr %i.aix, align 8, !tbaa !20
  %i.aiz = zext i16 %i.aiy to i64
  %i.aja = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i336
  %i.ajb = getelementptr i8, ptr %i.aja, i64 4
  %i.ajc = load i16, ptr %i.ajb, align 2, !tbaa !20
  %i.ajd = zext i16 %i.ajc to i64
  %i.aje = add nuw nsw i64 %i.aiw, %i.aiz
  %i.ajf = add nuw nsw i64 %i.aje, %i.ajd         ; 2 uses
  %i.ajg = trunc i64 %i.ajf to i16
  %i.ajh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next52.i338.1
  store i16 %i.ajg, ptr %i.ajh, align 4, !tbaa !20
  %i.aji = lshr i64 %i.ajf, 16
  %indvars.iv.next52.i338.2 = or disjoint i64 %indvars.iv51.i335, 3 ; 2 uses
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next52.i338.2
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !20
  %i.ajl = zext i16 %i.ajk to i64
  %i.ajm = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i336
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 6
  %i.ajo = load i16, ptr %i.ajn, align 2, !tbaa !20
  %i.ajp = zext i16 %i.ajo to i64
  %i.ajq = add nuw nsw i64 %i.aji, %i.ajl
  %i.ajr = add nuw nsw i64 %i.ajq, %i.ajp         ; 2 uses
  %i.ajs = trunc i64 %i.ajr to i16
  %i.ajt = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next52.i338.2
  store i16 %i.ajs, ptr %i.ajt, align 2, !tbaa !20
  %i.aju = lshr i64 %i.ajr, 16                    ; 3 uses
  %indvars.iv.next52.i338.3 = add nuw nsw i64 %indvars.iv51.i335, 4 ; 2 uses
  %indvars.iv.next.i339.3 = add nsw i64 %indvars.iv.i336, 4 ; 2 uses
  %niter1616.next.3 = add i64 %niter1616, 4       ; 2 uses
  %niter1616.ncmp.3 = icmp eq i64 %niter1616.next.3, %unroll_iter1615
  br i1 %niter1616.ncmp.3, label %.preheader.i341.unr-lcssa, label %bb.de, !llvm.loop !5

.lr.ph40.i305.new:                                ; preds = %.prol.loopexit1618, %.lr.ph40.i305.new
  %indvars.iv56.i308 = phi i64 [ %indvars.iv.next57.i310.7, %.lr.ph40.i305.new ], [ %indvars.iv56.i308.unr, %.prol.loopexit1618 ] ; 10 uses
  %.139.i309 = phi i64 [ %i.aly, %.lr.ph40.i305.new ], [ %.139.i309.unr, %.prol.loopexit1618 ]
  %i.ajv = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv56.i308
  %i.ajw = load i16, ptr %i.ajv, align 2, !tbaa !20
  %i.ajx = zext i16 %i.ajw to i64
  %i.ajy = add nuw nsw i64 %.139.i309, %i.ajx     ; 2 uses
  %i.ajz = trunc i64 %i.ajy to i16
  %i.aka = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv56.i308
  store i16 %i.ajz, ptr %i.aka, align 2, !tbaa !20
  %i.akb = lshr i64 %i.ajy, 16
  %indvars.iv.next57.i310 = add nuw nsw i64 %indvars.iv56.i308, 1 ; 2 uses
  %i.akc = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310
  %i.akd = load i16, ptr %i.akc, align 2, !tbaa !20
  %i.ake = zext i16 %i.akd to i64
  %i.akf = add nuw nsw i64 %i.akb, %i.ake         ; 2 uses
  %i.akg = trunc i64 %i.akf to i16
  %i.akh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310
  store i16 %i.akg, ptr %i.akh, align 2, !tbaa !20
  %i.aki = lshr i64 %i.akf, 16
  %indvars.iv.next57.i310.1 = add nuw nsw i64 %indvars.iv56.i308, 2 ; 2 uses
  %i.akj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.1
  %i.akk = load i16, ptr %i.akj, align 2, !tbaa !20
  %i.akl = zext i16 %i.akk to i64
  %i.akm = add nuw nsw i64 %i.aki, %i.akl         ; 2 uses
  %i.akn = trunc i64 %i.akm to i16
  %i.ako = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.1
  store i16 %i.akn, ptr %i.ako, align 2, !tbaa !20
  %i.akp = lshr i64 %i.akm, 16
  %indvars.iv.next57.i310.2 = add nuw nsw i64 %indvars.iv56.i308, 3 ; 2 uses
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.2
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !20
  %i.aks = zext i16 %i.akr to i64
  %i.akt = add nuw nsw i64 %i.akp, %i.aks         ; 2 uses
  %i.aku = trunc i64 %i.akt to i16
  %i.akv = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.2
  store i16 %i.aku, ptr %i.akv, align 2, !tbaa !20
  %i.akw = lshr i64 %i.akt, 16
  %indvars.iv.next57.i310.3 = add nuw nsw i64 %indvars.iv56.i308, 4 ; 2 uses
  %i.akx = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.3
  %i.aky = load i16, ptr %i.akx, align 2, !tbaa !20
  %i.akz = zext i16 %i.aky to i64
  %i.ala = add nuw nsw i64 %i.akw, %i.akz         ; 2 uses
  %i.alb = trunc i64 %i.ala to i16
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.3
  store i16 %i.alb, ptr %i.alc, align 2, !tbaa !20
  %i.ald = lshr i64 %i.ala, 16
  %indvars.iv.next57.i310.4 = add nuw nsw i64 %indvars.iv56.i308, 5 ; 2 uses
  %i.ale = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.4
  %i.alf = load i16, ptr %i.ale, align 2, !tbaa !20
  %i.alg = zext i16 %i.alf to i64
  %i.alh = add nuw nsw i64 %i.ald, %i.alg         ; 2 uses
  %i.ali = trunc i64 %i.alh to i16
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.4
  store i16 %i.ali, ptr %i.alj, align 2, !tbaa !20
  %i.alk = lshr i64 %i.alh, 16
  %indvars.iv.next57.i310.5 = add nuw nsw i64 %indvars.iv56.i308, 6 ; 2 uses
  %i.all = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.5
  %i.alm = load i16, ptr %i.all, align 2, !tbaa !20
  %i.aln = zext i16 %i.alm to i64
  %i.alo = add nuw nsw i64 %i.alk, %i.aln         ; 2 uses
  %i.alp = trunc i64 %i.alo to i16
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.5
  store i16 %i.alp, ptr %i.alq, align 2, !tbaa !20
  %i.alr = lshr i64 %i.alo, 16
  %indvars.iv.next57.i310.6 = add nuw nsw i64 %indvars.iv56.i308, 7 ; 2 uses
  %i.als = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next57.i310.6
  %i.alt = load i16, ptr %i.als, align 2, !tbaa !20
  %i.alu = zext i16 %i.alt to i64
  %i.alv = add nuw nsw i64 %i.alr, %i.alu         ; 2 uses
  %i.alw = trunc i64 %i.alv to i16
  %i.alx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next57.i310.6
  store i16 %i.alw, ptr %i.alx, align 2, !tbaa !20
  %i.aly = lshr i64 %i.alv, 16                    ; 2 uses
  %indvars.iv.next57.i310.7 = add nuw nsw i64 %indvars.iv56.i308, 8 ; 2 uses
  %exitcond59.not.i311.7 = icmp eq i64 %indvars.iv.next57.i310.7, 10
  br i1 %exitcond59.not.i311.7, label %._crit_edge.i312, label %.lr.ph40.i305.new, !llvm.loop !6

._crit_edge.i312:                                 ; preds = %.prol.loopexit1618, %.lr.ph40.i305.new, %.preheader.i341
  %.128.lcssa.i313 = phi i32 [ %i.aha, %.preheader.i341 ], [ 10, %.lr.ph40.i305.new ], [ 10, %.prol.loopexit1618 ]
  %.1.lcssa.i314 = phi i64 [ %.lcssa1499, %.preheader.i341 ], [ %.lcssa1500.unr, %.prol.loopexit1618 ], [ %i.aly, %.lr.ph40.i305.new ]
  %i.alz = trunc nuw nsw i64 %.1.lcssa.i314 to i16
  %i.ama = zext nneg i32 %.128.lcssa.i313 to i64
  %i.amb = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ama
  store i16 %i.alz, ptr %i.amb, align 2, !tbaa !20
  %i.amc = add i16 %i.afb, 1
  %i.amd = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i294, align 4, !tbaa !20 ; 2 uses
  %.not.i.i315 = icmp eq i16 %i.amd, 0
  br i1 %.not.i.i315, label %bb.df, label %.preheader.i.i316

bb.df:                                            ; preds = %._crit_edge.i312
  %i.ame = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i295, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i319 = icmp eq i16 %i.ame, 0
  br i1 %.not.i.1.i319, label %bb.dg, label %.preheader.i.i316

bb.dg:                                            ; preds = %bb.df
  %i.amf = add i16 %i.afb, -1
  %i.amg = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i296, align 16, !tbaa !20
  %.not.i.2.i320 = icmp eq i16 %i.amg, 0
  br i1 %.not.i.2.i320, label %bb.dh, label %.lr.ph47.i.i321

bb.dh:                                            ; preds = %bb.dg
  %i.amh = add i16 %i.afb, -2
  %i.ami = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i297, align 2, !tbaa !20
  %.not.i.3.i325 = icmp eq i16 %i.ami, 0
  br i1 %.not.i.3.i325, label %bb.di, label %.lr.ph47.i.i321

bb.di:                                            ; preds = %bb.dh
  %i.amj = add i16 %i.afb, -3
  %i.amk = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i298, align 4, !tbaa !20
  %.not.i.4.i326 = icmp eq i16 %i.amk, 0
  br i1 %.not.i.4.i326, label %bb.dj, label %.lr.ph47.i.i321

bb.dj:                                            ; preds = %bb.di
  %i.aml = add i16 %i.afb, -4
  %i.amm = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i299, align 2, !tbaa !20
  %.not.i.5.i327 = icmp eq i16 %i.amm, 0
  br i1 %.not.i.5.i327, label %bb.dk, label %.lr.ph47.i.i321

bb.dk:                                            ; preds = %bb.dj
  %i.amn = add i16 %i.afb, -5
  %i.amo = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i300, align 8, !tbaa !20
  %.not.i.6.i328 = icmp eq i16 %i.amo, 0
  br i1 %.not.i.6.i328, label %bb.dl, label %.lr.ph47.i.i321

bb.dl:                                            ; preds = %bb.dk
  %i.amp = add i16 %i.afb, -6
  %i.amq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i301, align 2, !tbaa !20
  %.not.i.7.i329 = icmp eq i16 %i.amq, 0
  br i1 %.not.i.7.i329, label %bb.dm, label %.lr.ph47.i.i321

bb.dm:                                            ; preds = %bb.dl
  %i.amr = add i16 %i.afb, -7
  %i.ams = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i302, align 4, !tbaa !20
  %.not.i.8.i330 = icmp eq i16 %i.ams, 0
  br i1 %.not.i.8.i330, label %bb.dn, label %.lr.ph47.i.i321

bb.dn:                                            ; preds = %bb.dm
  %i.amt = add i16 %i.afb, -8
  %i.amu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i303, align 2, !tbaa !20
  %.not.i.9.i331 = icmp eq i16 %i.amu, 0
  br i1 %.not.i.9.i331, label %bb.do, label %.lr.ph47.i.i321

bb.do:                                            ; preds = %bb.dn
  %i.amv = add i16 %i.afb, -9
  %i.amw = load i16, ptr %i.q, align 16, !tbaa !20
  %.not.i.10.i332 = icmp eq i16 %i.amw, 0
  br i1 %.not.i.10.i332, label %bb.dp, label %.lr.ph47.i.i321

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit342

.preheader.i.i316:                                ; preds = %bb.df, %._crit_edge.i312
  %i.amx = phi i16 [ %i.amd, %._crit_edge.i312 ], [ %i.ame, %bb.df ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i317 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i304, %._crit_edge.i312 ], [ %indvars.iv73.i.lcssa.sroa.gep.i294, %bb.df ] ; 2 uses
  %.03341.i.lcssa.i318 = phi i16 [ %i.amc, %._crit_edge.i312 ], [ %i.afb, %bb.df ]
  store i16 %.03341.i.lcssa.i318, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  store i16 %i.amx, ptr %i.by, align 2, !tbaa !20
  %i.amy = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i317, i64 -4
  %i.amz = load i16, ptr %i.amy, align 2, !tbaa !20
  store i16 %i.amz, ptr %i.bz, align 4, !tbaa !20
  %i.ana = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i317, i64 -20
  %i.anb = load <8 x i16>, ptr %i.ana, align 2, !tbaa !20
  store <8 x i16> %i.anb, ptr %i.bx, align 4, !tbaa !20
  br label %addmag0.exit342

.lr.ph47.i.i321:                                  ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg
  %.03341.i.lcssa.ph.i322 = phi i16 [ %i.amv, %bb.do ], [ %i.amt, %bb.dn ], [ %i.amr, %bb.dm ], [ %i.amp, %bb.dl ], [ %i.amn, %bb.dk ], [ %i.aml, %bb.dj ], [ %i.amj, %bb.di ], [ %i.amh, %bb.dh ], [ %i.amf, %bb.dg ]
  %indvars.iv59.i.lcssa.ph.i323 = phi i64 [ 0, %bb.do ], [ 2, %bb.dn ], [ 4, %bb.dm ], [ 6, %bb.dl ], [ 8, %bb.dk ], [ 10, %bb.dj ], [ 12, %bb.di ], [ 14, %bb.dh ], [ 16, %bb.dg ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i322, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  %i.anc = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i323
  %scevgep.i324 = getelementptr i8, ptr %12, i64 %i.anc
  %i.and = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i323, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i324, ptr noundef nonnull align 16 dereferenceable(1) %i.q, i64 %i.and, i1 false), !tbaa !20
  %i.ane = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i323
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.ane, i1 false), !tbaa !20
  br label %addmag0.exit342

addmag0.exit342:                                  ; preds = %bb.dp, %.preheader.i.i316, %.lr.ph47.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  br label %add.exit

bb.dq:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #12
  %i.anf = sext i16 %i.afc to i32                 ; 2 uses
  %i.ang = sext i16 %i.afb to i32                 ; 3 uses
  %i.anh = sub nsw i32 %i.anf, %i.ang
  %i.ani = icmp slt i32 %i.anh, 10
  br i1 %i.ani, label %.lr.ph.i284, label %.lr.ph40.i256

.lr.ph.i284:                                      ; preds = %bb.dq
  %i.anj = sext i16 %i.afc to i64
  %i.ank = sub nsw i32 0, %i.ang
  %i.anl = sext i32 %i.ank to i64
  %i.anm = add nsw i64 %i.anj, %i.anl             ; 2 uses
  %i.ann = add nsw i32 %i.ang, 10
  %i.ano = sub nsw i32 %i.ann, %i.anf             ; 5 uses
  %wide.trip.count.i285 = zext i32 %i.ano to i64  ; 2 uses
  %xtraiter1597 = and i64 %wide.trip.count.i285, 3 ; 3 uses
  %i.anp = add nsw i32 %i.ano, -1
  %i.anq = icmp ult i32 %i.anp, 3
  br i1 %i.anq, label %.epil.preheader1596, label %.lr.ph.i284.new

.lr.ph.i284.new:                                  ; preds = %.lr.ph.i284
  %unroll_iter1602 = and i64 %wide.trip.count.i285, 4294967292
  br label %bb.ds

.preheader.i292.unr-lcssa:                        ; preds = %bb.ds
  %lcmp.mod1599.not = icmp eq i64 %xtraiter1597, 0
  br i1 %lcmp.mod1599.not, label %.preheader.i292, label %.epil.preheader1596

.epil.preheader1596:                              ; preds = %.preheader.i292.unr-lcssa, %.lr.ph.i284
  %indvars.iv51.i286.epil.init = phi i64 [ 0, %.lr.ph.i284 ], [ %indvars.iv.next52.i289.3, %.preheader.i292.unr-lcssa ]
  %indvars.iv.i287.epil.init = phi i64 [ %i.anm, %.lr.ph.i284 ], [ %indvars.iv.next.i290.3, %.preheader.i292.unr-lcssa ]
  %.036.i288.epil.init = phi i64 [ 0, %.lr.ph.i284 ], [ %i.aqi, %.preheader.i292.unr-lcssa ]
  %lcmp.mod1601 = icmp ne i64 %xtraiter1597, 0
  tail call void @llvm.assume(i1 %lcmp.mod1601)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %.epil.preheader1596
  %indvars.iv51.i286.epil = phi i64 [ %indvars.iv51.i286.epil.init, %.epil.preheader1596 ], [ %indvars.iv.next52.i289.epil, %bb.dr ] ; 3 uses
  %indvars.iv.i287.epil = phi i64 [ %indvars.iv.i287.epil.init, %.epil.preheader1596 ], [ %indvars.iv.next.i290.epil, %bb.dr ] ; 2 uses
  %.036.i288.epil = phi i64 [ %.036.i288.epil.init, %.epil.preheader1596 ], [ %i.aob, %bb.dr ]
  %epil.iter1598 = phi i64 [ 0, %.epil.preheader1596 ], [ %epil.iter1598.next, %bb.dr ]
  %i.anr = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i286.epil
  %i.ans = load i16, ptr %i.anr, align 2, !tbaa !20
  %i.ant = zext i16 %i.ans to i64
  %i.anu = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i287.epil
  %i.anv = load i16, ptr %i.anu, align 2, !tbaa !20
  %i.anw = zext i16 %i.anv to i64
  %i.anx = add nuw nsw i64 %.036.i288.epil, %i.ant
  %i.any = add nuw nsw i64 %i.anx, %i.anw         ; 2 uses
  %i.anz = trunc i64 %i.any to i16
  %i.aoa = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv51.i286.epil
  store i16 %i.anz, ptr %i.aoa, align 2, !tbaa !20
  %i.aob = lshr i64 %i.any, 16                    ; 2 uses
  %indvars.iv.next52.i289.epil = add nuw nsw i64 %indvars.iv51.i286.epil, 1
  %indvars.iv.next.i290.epil = add nsw i64 %indvars.iv.i287.epil, 1
  %epil.iter1598.next = add i64 %epil.iter1598, 1 ; 2 uses
  %epil.iter1598.cmp.not = icmp eq i64 %epil.iter1598.next, %xtraiter1597
  br i1 %epil.iter1598.cmp.not, label %.preheader.i292, label %bb.dr, !llvm.loop !64

.preheader.i292:                                  ; preds = %bb.dr, %.preheader.i292.unr-lcssa
  %.lcssa1497 = phi i64 [ %i.aqi, %.preheader.i292.unr-lcssa ], [ %i.aob, %bb.dr ] ; 2 uses
  %i.aoc = icmp samesign ult i32 %i.ano, 10
  br i1 %i.aoc, label %.lr.ph40.i256, label %._crit_edge.i263

.lr.ph40.i256:                                    ; preds = %bb.dq, %.preheader.i292
  %.0.lcssa94.i257 = phi i64 [ %.lcssa1497, %.preheader.i292 ], [ 0, %bb.dq ] ; 2 uses
  %.027.lcssa93.i258 = phi i32 [ %i.ano, %.preheader.i292 ], [ 0, %bb.dq ] ; 2 uses
  %i.aod = zext nneg i32 %.027.lcssa93.i258 to i64 ; 3 uses
  %i.aoe = sub nsw i64 2, %i.aod
  %xtraiter1606 = and i64 %i.aoe, 7               ; 2 uses
  %lcmp.mod1607.not = icmp eq i64 %xtraiter1606, 0
  br i1 %lcmp.mod1607.not, label %.prol.loopexit1605, label %.prol.preheader1604

.prol.preheader1604:                              ; preds = %.lr.ph40.i256, %.prol.preheader1604
  %indvars.iv56.i259.prol = phi i64 [ %indvars.iv.next57.i261.prol, %.prol.preheader1604 ], [ %i.aod, %.lr.ph40.i256 ] ; 3 uses
  %.139.i260.prol = phi i64 [ %i.aol, %.prol.preheader1604 ], [ %.0.lcssa94.i257, %.lr.ph40.i256 ]
  %prol.iter1608 = phi i64 [ %prol.iter1608.next, %.prol.preheader1604 ], [ 0, %.lr.ph40.i256 ]
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv56.i259.prol
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !20
  %i.aoh = zext i16 %i.aog to i64
  %i.aoi = add nuw nsw i64 %.139.i260.prol, %i.aoh ; 2 uses
  %i.aoj = trunc i64 %i.aoi to i16
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv56.i259.prol
  store i16 %i.aoj, ptr %i.aok, align 2, !tbaa !20
  %i.aol = lshr i64 %i.aoi, 16                    ; 3 uses
  %indvars.iv.next57.i261.prol = add nuw nsw i64 %indvars.iv56.i259.prol, 1 ; 2 uses
  %prol.iter1608.next = add i64 %prol.iter1608, 1 ; 2 uses
  %prol.iter1608.cmp.not = icmp eq i64 %prol.iter1608.next, %xtraiter1606
  br i1 %prol.iter1608.cmp.not, label %.prol.loopexit1605, label %.prol.preheader1604, !llvm.loop !65

.prol.loopexit1605:                               ; preds = %.prol.preheader1604, %.lr.ph40.i256
  %.lcssa1498.unr = phi i64 [ poison, %.lr.ph40.i256 ], [ %i.aol, %.prol.preheader1604 ]
  %indvars.iv56.i259.unr = phi i64 [ %i.aod, %.lr.ph40.i256 ], [ %indvars.iv.next57.i261.prol, %.prol.preheader1604 ]
  %.139.i260.unr = phi i64 [ %.0.lcssa94.i257, %.lr.ph40.i256 ], [ %i.aol, %.prol.preheader1604 ]
  %i.aom = add nsw i32 %.027.lcssa93.i258, -3
  %i.aon = icmp ult i32 %i.aom, 7
  br i1 %i.aon, label %._crit_edge.i263, label %.lr.ph40.i256.new

bb.ds:                                            ; preds = %bb.ds, %.lr.ph.i284.new
  %indvars.iv51.i286 = phi i64 [ 0, %.lr.ph.i284.new ], [ %indvars.iv.next52.i289.3, %bb.ds ] ; 6 uses
  %indvars.iv.i287 = phi i64 [ %i.anm, %.lr.ph.i284.new ], [ %indvars.iv.next.i290.3, %bb.ds ] ; 5 uses
  %.036.i288 = phi i64 [ 0, %.lr.ph.i284.new ], [ %i.aqi, %bb.ds ]
  %niter1603 = phi i64 [ 0, %.lr.ph.i284.new ], [ %niter1603.next.3, %bb.ds ]
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv51.i286
  %i.aop = load i16, ptr %i.aoo, align 4, !tbaa !20
  %i.aoq = zext i16 %i.aop to i64
  %i.aor = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i287
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !20
  %i.aot = zext i16 %i.aos to i64
  %i.aou = add nuw nsw i64 %.036.i288, %i.aoq
  %i.aov = add nuw nsw i64 %i.aou, %i.aot         ; 2 uses
  %i.aow = trunc i64 %i.aov to i16
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv51.i286
  store i16 %i.aow, ptr %i.aox, align 8, !tbaa !20
  %i.aoy = lshr i64 %i.aov, 16
  %indvars.iv.next52.i289 = or disjoint i64 %indvars.iv51.i286, 1 ; 2 uses
  %i.aoz = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i289
  %i.apa = load i16, ptr %i.aoz, align 2, !tbaa !20
  %i.apb = zext i16 %i.apa to i64
  %i.apc = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i287
  %i.apd = getelementptr i8, ptr %i.apc, i64 2
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !20
  %i.apf = zext i16 %i.ape to i64
  %i.apg = add nuw nsw i64 %i.aoy, %i.apb
  %i.aph = add nuw nsw i64 %i.apg, %i.apf         ; 2 uses
  %i.api = trunc i64 %i.aph to i16
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next52.i289
  store i16 %i.api, ptr %i.apj, align 2, !tbaa !20
  %i.apk = lshr i64 %i.aph, 16
  %indvars.iv.next52.i289.1 = or disjoint i64 %indvars.iv51.i286, 2 ; 2 uses
  %i.apl = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i289.1
  %i.apm = load i16, ptr %i.apl, align 8, !tbaa !20
  %i.apn = zext i16 %i.apm to i64
  %i.apo = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i287
  %i.app = getelementptr i8, ptr %i.apo, i64 4
  %i.apq = load i16, ptr %i.app, align 2, !tbaa !20
  %i.apr = zext i16 %i.apq to i64
  %i.aps = add nuw nsw i64 %i.apk, %i.apn
  %i.apt = add nuw nsw i64 %i.aps, %i.apr         ; 2 uses
  %i.apu = trunc i64 %i.apt to i16
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next52.i289.1
  store i16 %i.apu, ptr %i.apv, align 4, !tbaa !20
  %i.apw = lshr i64 %i.apt, 16
  %indvars.iv.next52.i289.2 = or disjoint i64 %indvars.iv51.i286, 3 ; 2 uses
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next52.i289.2
  %i.apy = load i16, ptr %i.apx, align 2, !tbaa !20
  %i.apz = zext i16 %i.apy to i64
  %i.aqa = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i287
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 6
  %i.aqc = load i16, ptr %i.aqb, align 2, !tbaa !20
  %i.aqd = zext i16 %i.aqc to i64
  %i.aqe = add nuw nsw i64 %i.apw, %i.apz
  %i.aqf = add nuw nsw i64 %i.aqe, %i.aqd         ; 2 uses
  %i.aqg = trunc i64 %i.aqf to i16
  %i.aqh = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next52.i289.2
  store i16 %i.aqg, ptr %i.aqh, align 2, !tbaa !20
  %i.aqi = lshr i64 %i.aqf, 16                    ; 3 uses
  %indvars.iv.next52.i289.3 = add nuw nsw i64 %indvars.iv51.i286, 4 ; 2 uses
  %indvars.iv.next.i290.3 = add nsw i64 %indvars.iv.i287, 4 ; 2 uses
  %niter1603.next.3 = add i64 %niter1603, 4       ; 2 uses
  %niter1603.ncmp.3 = icmp eq i64 %niter1603.next.3, %unroll_iter1602
  br i1 %niter1603.ncmp.3, label %.preheader.i292.unr-lcssa, label %bb.ds, !llvm.loop !5

.lr.ph40.i256.new:                                ; preds = %.prol.loopexit1605, %.lr.ph40.i256.new
  %indvars.iv56.i259 = phi i64 [ %indvars.iv.next57.i261.7, %.lr.ph40.i256.new ], [ %indvars.iv56.i259.unr, %.prol.loopexit1605 ] ; 10 uses
  %.139.i260 = phi i64 [ %i.asm, %.lr.ph40.i256.new ], [ %.139.i260.unr, %.prol.loopexit1605 ]
  %i.aqj = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv56.i259
  %i.aqk = load i16, ptr %i.aqj, align 2, !tbaa !20
  %i.aql = zext i16 %i.aqk to i64
  %i.aqm = add nuw nsw i64 %.139.i260, %i.aql     ; 2 uses
  %i.aqn = trunc i64 %i.aqm to i16
  %i.aqo = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv56.i259
  store i16 %i.aqn, ptr %i.aqo, align 2, !tbaa !20
  %i.aqp = lshr i64 %i.aqm, 16
  %indvars.iv.next57.i261 = add nuw nsw i64 %indvars.iv56.i259, 1 ; 2 uses
  %i.aqq = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261
  %i.aqr = load i16, ptr %i.aqq, align 2, !tbaa !20
  %i.aqs = zext i16 %i.aqr to i64
  %i.aqt = add nuw nsw i64 %i.aqp, %i.aqs         ; 2 uses
  %i.aqu = trunc i64 %i.aqt to i16
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261
  store i16 %i.aqu, ptr %i.aqv, align 2, !tbaa !20
  %i.aqw = lshr i64 %i.aqt, 16
  %indvars.iv.next57.i261.1 = add nuw nsw i64 %indvars.iv56.i259, 2 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.1
  %i.aqy = load i16, ptr %i.aqx, align 2, !tbaa !20
  %i.aqz = zext i16 %i.aqy to i64
  %i.ara = add nuw nsw i64 %i.aqw, %i.aqz         ; 2 uses
  %i.arb = trunc i64 %i.ara to i16
  %i.arc = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.1
  store i16 %i.arb, ptr %i.arc, align 2, !tbaa !20
  %i.ard = lshr i64 %i.ara, 16
  %indvars.iv.next57.i261.2 = add nuw nsw i64 %indvars.iv56.i259, 3 ; 2 uses
  %i.are = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.2
  %i.arf = load i16, ptr %i.are, align 2, !tbaa !20
  %i.arg = zext i16 %i.arf to i64
  %i.arh = add nuw nsw i64 %i.ard, %i.arg         ; 2 uses
  %i.ari = trunc i64 %i.arh to i16
  %i.arj = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.2
  store i16 %i.ari, ptr %i.arj, align 2, !tbaa !20
  %i.ark = lshr i64 %i.arh, 16
  %indvars.iv.next57.i261.3 = add nuw nsw i64 %indvars.iv56.i259, 4 ; 2 uses
  %i.arl = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.3
  %i.arm = load i16, ptr %i.arl, align 2, !tbaa !20
  %i.arn = zext i16 %i.arm to i64
  %i.aro = add nuw nsw i64 %i.ark, %i.arn         ; 2 uses
  %i.arp = trunc i64 %i.aro to i16
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.3
  store i16 %i.arp, ptr %i.arq, align 2, !tbaa !20
  %i.arr = lshr i64 %i.aro, 16
  %indvars.iv.next57.i261.4 = add nuw nsw i64 %indvars.iv56.i259, 5 ; 2 uses
  %i.ars = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.4
  %i.art = load i16, ptr %i.ars, align 2, !tbaa !20
  %i.aru = zext i16 %i.art to i64
  %i.arv = add nuw nsw i64 %i.arr, %i.aru         ; 2 uses
  %i.arw = trunc i64 %i.arv to i16
  %i.arx = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.4
  store i16 %i.arw, ptr %i.arx, align 2, !tbaa !20
  %i.ary = lshr i64 %i.arv, 16
  %indvars.iv.next57.i261.5 = add nuw nsw i64 %indvars.iv56.i259, 6 ; 2 uses
  %i.arz = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.5
  %i.asa = load i16, ptr %i.arz, align 2, !tbaa !20
  %i.asb = zext i16 %i.asa to i64
  %i.asc = add nuw nsw i64 %i.ary, %i.asb         ; 2 uses
  %i.asd = trunc i64 %i.asc to i16
  %i.ase = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.5
  store i16 %i.asd, ptr %i.ase, align 2, !tbaa !20
  %i.asf = lshr i64 %i.asc, 16
  %indvars.iv.next57.i261.6 = add nuw nsw i64 %indvars.iv56.i259, 7 ; 2 uses
  %i.asg = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next57.i261.6
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !20
  %i.asi = zext i16 %i.ash to i64
  %i.asj = add nuw nsw i64 %i.asf, %i.asi         ; 2 uses
  %i.ask = trunc i64 %i.asj to i16
  %i.asl = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next57.i261.6
  store i16 %i.ask, ptr %i.asl, align 2, !tbaa !20
  %i.asm = lshr i64 %i.asj, 16                    ; 2 uses
  %indvars.iv.next57.i261.7 = add nuw nsw i64 %indvars.iv56.i259, 8 ; 2 uses
  %exitcond59.not.i262.7 = icmp eq i64 %indvars.iv.next57.i261.7, 10
  br i1 %exitcond59.not.i262.7, label %._crit_edge.i263, label %.lr.ph40.i256.new, !llvm.loop !6

._crit_edge.i263:                                 ; preds = %.prol.loopexit1605, %.lr.ph40.i256.new, %.preheader.i292
  %.128.lcssa.i264 = phi i32 [ %i.ano, %.preheader.i292 ], [ 10, %.lr.ph40.i256.new ], [ 10, %.prol.loopexit1605 ]
  %.1.lcssa.i265 = phi i64 [ %.lcssa1497, %.preheader.i292 ], [ %.lcssa1498.unr, %.prol.loopexit1605 ], [ %i.asm, %.lr.ph40.i256.new ]
  %i.asn = trunc nuw nsw i64 %.1.lcssa.i265 to i16
  %i.aso = zext nneg i32 %.128.lcssa.i264 to i64
  %i.asp = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.aso
  store i16 %i.asn, ptr %i.asp, align 2, !tbaa !20
  %i.asq = add i16 %i.afc, 1
  %i.asr = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i245, align 4, !tbaa !20 ; 2 uses
  %.not.i.i266 = icmp eq i16 %i.asr, 0
  br i1 %.not.i.i266, label %bb.dt, label %.preheader.i.i267

bb.dt:                                            ; preds = %._crit_edge.i263
  %i.ass = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i246, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i270 = icmp eq i16 %i.ass, 0
  br i1 %.not.i.1.i270, label %bb.du, label %.preheader.i.i267

bb.du:                                            ; preds = %bb.dt
  %i.ast = add i16 %i.afc, -1
  %i.asu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i247, align 16, !tbaa !20
  %.not.i.2.i271 = icmp eq i16 %i.asu, 0
  br i1 %.not.i.2.i271, label %bb.dv, label %.lr.ph47.i.i272

bb.dv:                                            ; preds = %bb.du
  %i.asv = add i16 %i.afc, -2
  %i.asw = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i248, align 2, !tbaa !20
  %.not.i.3.i276 = icmp eq i16 %i.asw, 0
  br i1 %.not.i.3.i276, label %bb.dw, label %.lr.ph47.i.i272

bb.dw:                                            ; preds = %bb.dv
  %i.asx = add i16 %i.afc, -3
  %i.asy = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i249, align 4, !tbaa !20
  %.not.i.4.i277 = icmp eq i16 %i.asy, 0
  br i1 %.not.i.4.i277, label %bb.dx, label %.lr.ph47.i.i272

bb.dx:                                            ; preds = %bb.dw
  %i.asz = add i16 %i.afc, -4
  %i.ata = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i250, align 2, !tbaa !20
  %.not.i.5.i278 = icmp eq i16 %i.ata, 0
  br i1 %.not.i.5.i278, label %bb.dy, label %.lr.ph47.i.i272

bb.dy:                                            ; preds = %bb.dx
  %i.atb = add i16 %i.afc, -5
  %i.atc = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i251, align 8, !tbaa !20
  %.not.i.6.i279 = icmp eq i16 %i.atc, 0
  br i1 %.not.i.6.i279, label %bb.dz, label %.lr.ph47.i.i272

bb.dz:                                            ; preds = %bb.dy
  %i.atd = add i16 %i.afc, -6
  %i.ate = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i252, align 2, !tbaa !20
  %.not.i.7.i280 = icmp eq i16 %i.ate, 0
  br i1 %.not.i.7.i280, label %bb.ea, label %.lr.ph47.i.i272

bb.ea:                                            ; preds = %bb.dz
  %i.atf = add i16 %i.afc, -7
  %i.atg = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i253, align 4, !tbaa !20
  %.not.i.8.i281 = icmp eq i16 %i.atg, 0
  br i1 %.not.i.8.i281, label %bb.eb, label %.lr.ph47.i.i272

bb.eb:                                            ; preds = %bb.ea
  %i.ath = add i16 %i.afc, -8
  %i.ati = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i254, align 2, !tbaa !20
  %.not.i.9.i282 = icmp eq i16 %i.ati, 0
  br i1 %.not.i.9.i282, label %bb.ec, label %.lr.ph47.i.i272

bb.ec:                                            ; preds = %bb.eb
  %i.atj = add i16 %i.afc, -9
  %i.atk = load i16, ptr %i.r, align 16, !tbaa !20
  %.not.i.10.i283 = icmp eq i16 %i.atk, 0
  br i1 %.not.i.10.i283, label %bb.ed, label %.lr.ph47.i.i272

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit293

.preheader.i.i267:                                ; preds = %bb.dt, %._crit_edge.i263
  %i.atl = phi i16 [ %i.asr, %._crit_edge.i263 ], [ %i.ass, %bb.dt ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i268 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i255, %._crit_edge.i263 ], [ %indvars.iv73.i.lcssa.sroa.gep.i245, %bb.dt ] ; 2 uses
  %.03341.i.lcssa.i269 = phi i16 [ %i.asq, %._crit_edge.i263 ], [ %i.afc, %bb.dt ]
  store i16 %.03341.i.lcssa.i269, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  store i16 %i.atl, ptr %i.by, align 2, !tbaa !20
  %i.atm = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i268, i64 -4
  %i.atn = load i16, ptr %i.atm, align 2, !tbaa !20
  store i16 %i.atn, ptr %i.bz, align 4, !tbaa !20
  %i.ato = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i268, i64 -20
  %i.atp = load <8 x i16>, ptr %i.ato, align 2, !tbaa !20
  store <8 x i16> %i.atp, ptr %i.bx, align 4, !tbaa !20
  br label %addmag0.exit293

.lr.ph47.i.i272:                                  ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du
  %.03341.i.lcssa.ph.i273 = phi i16 [ %i.atj, %bb.ec ], [ %i.ath, %bb.eb ], [ %i.atf, %bb.ea ], [ %i.atd, %bb.dz ], [ %i.atb, %bb.dy ], [ %i.asz, %bb.dx ], [ %i.asx, %bb.dw ], [ %i.asv, %bb.dv ], [ %i.ast, %bb.du ]
  %indvars.iv59.i.lcssa.ph.i274 = phi i64 [ 0, %bb.ec ], [ 2, %bb.eb ], [ 4, %bb.ea ], [ 6, %bb.dz ], [ 8, %bb.dy ], [ 10, %bb.dx ], [ 12, %bb.dw ], [ 14, %bb.dv ], [ 16, %bb.du ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i273, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  %i.atq = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i274
  %scevgep.i275 = getelementptr i8, ptr %12, i64 %i.atq
  %i.atr = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i274, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i275, ptr noundef nonnull align 16 dereferenceable(1) %i.r, i64 %i.atr, i1 false), !tbaa !20
  %i.ats = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i274
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.ats, i1 false), !tbaa !20
  br label %addmag0.exit293

addmag0.exit293:                                  ; preds = %bb.ed, %.preheader.i.i267, %.lr.ph47.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #12
  br label %add.exit

bb.ee:                                            ; preds = %abscmp.exit346
  br i1 %.014.i345, label %bb.ef, label %bb.es

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #12
  %i.att = sext i16 %i.afb to i32                 ; 2 uses
  %i.atu = sext i16 %i.afc to i32                 ; 3 uses
  %i.atv = sub nsw i32 %i.att, %i.atu
  %i.atw = icmp slt i32 %i.atv, 10
  br i1 %i.atw, label %.lr.ph.i235, label %.lr.ph38.i212

.lr.ph.i235:                                      ; preds = %bb.ef
  %i.atx = sext i16 %i.afb to i64
  %i.aty = sub nsw i32 0, %i.atu
  %i.atz = sext i32 %i.aty to i64
  %i.aua = add nsw i64 %i.atz, %i.atx             ; 2 uses
  %reass.sub1161 = sub nsw i32 %i.atu, %i.att     ; 3 uses
  %i.aub = add nsw i32 %reass.sub1161, 10         ; 2 uses
  %wide.trip.count.i236 = zext i32 %i.aub to i64  ; 2 uses
  %xtraiter1584 = and i64 %wide.trip.count.i236, 3 ; 3 uses
  %i.auc = add nsw i32 %reass.sub1161, 9
  %i.aud = icmp ult i32 %i.auc, 3
  br i1 %i.aud, label %.epil.preheader1583, label %.lr.ph.i235.new

.lr.ph.i235.new:                                  ; preds = %.lr.ph.i235
  %unroll_iter1589 = and i64 %wide.trip.count.i236, 4294967292
  br label %bb.eh

.preheader.i243.unr-lcssa:                        ; preds = %bb.eh
  %lcmp.mod1586.not = icmp eq i64 %xtraiter1584, 0
  br i1 %lcmp.mod1586.not, label %.preheader.i243, label %.epil.preheader1583

.epil.preheader1583:                              ; preds = %.preheader.i243.unr-lcssa, %.lr.ph.i235
  %indvars.iv45.i237.epil.init = phi i64 [ 0, %.lr.ph.i235 ], [ %indvars.iv.next46.i240.3, %.preheader.i243.unr-lcssa ]
  %indvars.iv.i238.epil.init = phi i64 [ %i.aua, %.lr.ph.i235 ], [ %indvars.iv.next.i241.3, %.preheader.i243.unr-lcssa ]
  %.034.i239.epil.init = phi i64 [ 0, %.lr.ph.i235 ], [ %i.axh, %.preheader.i243.unr-lcssa ]
  %lcmp.mod1588 = icmp ne i64 %xtraiter1584, 0
  tail call void @llvm.assume(i1 %lcmp.mod1588)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.epil.preheader1583
  %indvars.iv45.i237.epil = phi i64 [ %indvars.iv45.i237.epil.init, %.epil.preheader1583 ], [ %indvars.iv.next46.i240.epil, %bb.eg ] ; 3 uses
  %indvars.iv.i238.epil = phi i64 [ %indvars.iv.i238.epil.init, %.epil.preheader1583 ], [ %indvars.iv.next.i241.epil, %bb.eg ] ; 2 uses
  %.034.i239.epil = phi i64 [ %.034.i239.epil.init, %.epil.preheader1583 ], [ %i.auq, %bb.eg ]
  %epil.iter1585 = phi i64 [ 0, %.epil.preheader1583 ], [ %epil.iter1585.next, %bb.eg ]
  %i.aue = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv45.i237.epil
  %i.auf = load i16, ptr %i.aue, align 2, !tbaa !20
  %i.aug = zext i16 %i.auf to i64
  %i.auh = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i238.epil
  %i.aui = load i16, ptr %i.auh, align 2, !tbaa !20
  %i.auj = zext i16 %i.aui to i64
  %i.auk = sub nsw i64 %i.aug, %i.auj
  %i.aul = add nsw i64 %i.auk, %.034.i239.epil    ; 2 uses
  %i.aum = trunc i64 %i.aul to i16
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv45.i237.epil
  store i16 %i.aum, ptr %i.aun, align 2, !tbaa !20
  %i.auo = add nsw i64 %i.aul, 2147483648
  %i.aup = lshr i64 %i.auo, 16
  %i.auq = add nsw i64 %i.aup, -32768             ; 2 uses
  %indvars.iv.next46.i240.epil = add nuw nsw i64 %indvars.iv45.i237.epil, 1
  %indvars.iv.next.i241.epil = add nsw i64 %indvars.iv.i238.epil, 1
  %epil.iter1585.next = add i64 %epil.iter1585, 1 ; 2 uses
  %epil.iter1585.cmp.not = icmp eq i64 %epil.iter1585.next, %xtraiter1584
  br i1 %epil.iter1585.cmp.not, label %.preheader.i243, label %bb.eg, !llvm.loop !66

.preheader.i243:                                  ; preds = %bb.eg, %.preheader.i243.unr-lcssa
  %.lcssa1496 = phi i64 [ %i.axh, %.preheader.i243.unr-lcssa ], [ %i.auq, %bb.eg ]
  %i.aur = icmp slt i32 %reass.sub1161, 0
  br i1 %i.aur, label %.lr.ph38.i212, label %._crit_edge.i219

.lr.ph38.i212:                                    ; preds = %bb.ef, %.preheader.i243
  %.0.lcssa85.i213 = phi i64 [ %.lcssa1496, %.preheader.i243 ], [ 0, %bb.ef ] ; 2 uses
  %.025.lcssa84.i214 = phi i32 [ %i.aub, %.preheader.i243 ], [ 0, %bb.ef ] ; 2 uses
  %i.aus = zext i32 %.025.lcssa84.i214 to i64     ; 3 uses
  %i.aut = sub nsw i64 2, %i.aus
  %xtraiter1593 = and i64 %i.aut, 3               ; 2 uses
  %lcmp.mod1594.not = icmp eq i64 %xtraiter1593, 0
  br i1 %lcmp.mod1594.not, label %.prol.loopexit1592, label %.prol.preheader1591

.prol.preheader1591:                              ; preds = %.lr.ph38.i212, %.prol.preheader1591
  %indvars.iv50.i215.prol = phi i64 [ %indvars.iv.next51.i217.prol, %.prol.preheader1591 ], [ %i.aus, %.lr.ph38.i212 ] ; 3 uses
  %.137.i216.prol = phi i64 [ %i.avc, %.prol.preheader1591 ], [ %.0.lcssa85.i213, %.lr.ph38.i212 ]
  %prol.iter1595 = phi i64 [ %prol.iter1595.next, %.prol.preheader1591 ], [ 0, %.lr.ph38.i212 ]
  %i.auu = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv50.i215.prol
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !20
  %i.auw = zext i16 %i.auv to i64
  %i.aux = add nsw i64 %.137.i216.prol, %i.auw    ; 2 uses
  %i.auy = trunc i64 %i.aux to i16
  %i.auz = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv50.i215.prol
  store i16 %i.auy, ptr %i.auz, align 2, !tbaa !20
  %i.ava = add nsw i64 %i.aux, 2147483648
  %i.avb = lshr i64 %i.ava, 16
  %i.avc = add nsw i64 %i.avb, -32768             ; 2 uses
  %indvars.iv.next51.i217.prol = add nuw nsw i64 %indvars.iv50.i215.prol, 1 ; 2 uses
  %prol.iter1595.next = add i64 %prol.iter1595, 1 ; 2 uses
  %prol.iter1595.cmp.not = icmp eq i64 %prol.iter1595.next, %xtraiter1593
  br i1 %prol.iter1595.cmp.not, label %.prol.loopexit1592, label %.prol.preheader1591, !llvm.loop !67

.prol.loopexit1592:                               ; preds = %.prol.preheader1591, %.lr.ph38.i212
  %indvars.iv50.i215.unr = phi i64 [ %i.aus, %.lr.ph38.i212 ], [ %indvars.iv.next51.i217.prol, %.prol.preheader1591 ]
  %.137.i216.unr = phi i64 [ %.0.lcssa85.i213, %.lr.ph38.i212 ], [ %i.avc, %.prol.preheader1591 ]
  %i.avd = add nsw i32 %.025.lcssa84.i214, -7
  %i.ave = icmp ult i32 %i.avd, 3
  br i1 %i.ave, label %._crit_edge.i219, label %.lr.ph38.i212.new

bb.eh:                                            ; preds = %bb.eh, %.lr.ph.i235.new
  %indvars.iv45.i237 = phi i64 [ 0, %.lr.ph.i235.new ], [ %indvars.iv.next46.i240.3, %bb.eh ] ; 6 uses
  %indvars.iv.i238 = phi i64 [ %i.aua, %.lr.ph.i235.new ], [ %indvars.iv.next.i241.3, %bb.eh ] ; 5 uses
  %.034.i239 = phi i64 [ 0, %.lr.ph.i235.new ], [ %i.axh, %bb.eh ]
  %niter1590 = phi i64 [ 0, %.lr.ph.i235.new ], [ %niter1590.next.3, %bb.eh ]
  %i.avf = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv45.i237
  %i.avg = load i16, ptr %i.avf, align 4, !tbaa !20
  %i.avh = zext i16 %i.avg to i64
  %i.avi = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv.i238
  %i.avj = load i16, ptr %i.avi, align 2, !tbaa !20
  %i.avk = zext i16 %i.avj to i64
  %i.avl = sub nsw i64 %i.avh, %i.avk
  %i.avm = add nsw i64 %i.avl, %.034.i239         ; 2 uses
  %i.avn = trunc i64 %i.avm to i16
  %i.avo = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv45.i237
  store i16 %i.avn, ptr %i.avo, align 8, !tbaa !20
  %i.avp = add nsw i64 %i.avm, 2147483648
  %i.avq = lshr i64 %i.avp, 16
  %i.avr = add nsw i64 %i.avq, -32768
  %indvars.iv.next46.i240 = or disjoint i64 %indvars.iv45.i237, 1 ; 2 uses
  %i.avs = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i240
  %i.avt = load i16, ptr %i.avs, align 2, !tbaa !20
  %i.avu = zext i16 %i.avt to i64
  %i.avv = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i238
  %i.avw = getelementptr i8, ptr %i.avv, i64 2
  %i.avx = load i16, ptr %i.avw, align 2, !tbaa !20
  %i.avy = zext i16 %i.avx to i64
  %i.avz = sub nsw i64 %i.avu, %i.avy
  %i.awa = add nsw i64 %i.avz, %i.avr             ; 2 uses
  %i.awb = trunc i64 %i.awa to i16
  %i.awc = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next46.i240
  store i16 %i.awb, ptr %i.awc, align 2, !tbaa !20
  %i.awd = add nsw i64 %i.awa, 2147483648
  %i.awe = lshr i64 %i.awd, 16
  %i.awf = add nsw i64 %i.awe, -32768
  %indvars.iv.next46.i240.1 = or disjoint i64 %indvars.iv45.i237, 2 ; 2 uses
  %i.awg = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i240.1
  %i.awh = load i16, ptr %i.awg, align 8, !tbaa !20
  %i.awi = zext i16 %i.awh to i64
  %i.awj = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i238
  %i.awk = getelementptr i8, ptr %i.awj, i64 4
  %i.awl = load i16, ptr %i.awk, align 2, !tbaa !20
  %i.awm = zext i16 %i.awl to i64
  %i.awn = sub nsw i64 %i.awi, %i.awm
  %i.awo = add nsw i64 %i.awn, %i.awf             ; 2 uses
  %i.awp = trunc i64 %i.awo to i16
  %i.awq = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next46.i240.1
  store i16 %i.awp, ptr %i.awq, align 4, !tbaa !20
  %i.awr = add nsw i64 %i.awo, 2147483648
  %i.aws = lshr i64 %i.awr, 16
  %i.awt = add nsw i64 %i.aws, -32768
  %indvars.iv.next46.i240.2 = or disjoint i64 %indvars.iv45.i237, 3 ; 2 uses
  %i.awu = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next46.i240.2
  %i.awv = load i16, ptr %i.awu, align 2, !tbaa !20
  %i.aww = zext i16 %i.awv to i64
  %i.awx = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i238
  %i.awy = getelementptr i8, ptr %i.awx, i64 6
  %i.awz = load i16, ptr %i.awy, align 2, !tbaa !20
  %i.axa = zext i16 %i.awz to i64
  %i.axb = sub nsw i64 %i.aww, %i.axa
  %i.axc = add nsw i64 %i.axb, %i.awt             ; 2 uses
  %i.axd = trunc i64 %i.axc to i16
  %i.axe = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next46.i240.2
  store i16 %i.axd, ptr %i.axe, align 2, !tbaa !20
  %i.axf = add nsw i64 %i.axc, 2147483648
  %i.axg = lshr i64 %i.axf, 16
  %i.axh = add nsw i64 %i.axg, -32768             ; 3 uses
  %indvars.iv.next46.i240.3 = add nuw nsw i64 %indvars.iv45.i237, 4 ; 2 uses
  %indvars.iv.next.i241.3 = add nsw i64 %indvars.iv.i238, 4 ; 2 uses
  %niter1590.next.3 = add i64 %niter1590, 4       ; 2 uses
  %niter1590.ncmp.3 = icmp eq i64 %niter1590.next.3, %unroll_iter1589
  br i1 %niter1590.ncmp.3, label %.preheader.i243.unr-lcssa, label %bb.eh, !llvm.loop !3

.lr.ph38.i212.new:                                ; preds = %.prol.loopexit1592, %.lr.ph38.i212.new
  %indvars.iv50.i215 = phi i64 [ %indvars.iv.next51.i217.3, %.lr.ph38.i212.new ], [ %indvars.iv50.i215.unr, %.prol.loopexit1592 ] ; 6 uses
  %.137.i216 = phi i64 [ %i.ayr, %.lr.ph38.i212.new ], [ %.137.i216.unr, %.prol.loopexit1592 ]
  %i.axi = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv50.i215
  %i.axj = load i16, ptr %i.axi, align 2, !tbaa !20
  %i.axk = zext i16 %i.axj to i64
  %i.axl = add nsw i64 %.137.i216, %i.axk         ; 2 uses
  %i.axm = trunc i64 %i.axl to i16
  %i.axn = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv50.i215
  store i16 %i.axm, ptr %i.axn, align 2, !tbaa !20
  %i.axo = add nsw i64 %i.axl, 2147483648
  %i.axp = lshr i64 %i.axo, 16
  %i.axq = add nsw i64 %i.axp, -32768
  %indvars.iv.next51.i217 = add nuw nsw i64 %indvars.iv50.i215, 1 ; 2 uses
  %i.axr = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i217
  %i.axs = load i16, ptr %i.axr, align 2, !tbaa !20
  %i.axt = zext i16 %i.axs to i64
  %i.axu = add nsw i64 %i.axq, %i.axt             ; 2 uses
  %i.axv = trunc i64 %i.axu to i16
  %i.axw = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next51.i217
  store i16 %i.axv, ptr %i.axw, align 2, !tbaa !20
  %i.axx = add nsw i64 %i.axu, 2147483648
  %i.axy = lshr i64 %i.axx, 16
  %i.axz = add nsw i64 %i.axy, -32768
  %indvars.iv.next51.i217.1 = add nuw nsw i64 %indvars.iv50.i215, 2 ; 2 uses
  %i.aya = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i217.1
  %i.ayb = load i16, ptr %i.aya, align 2, !tbaa !20
  %i.ayc = zext i16 %i.ayb to i64
  %i.ayd = add nsw i64 %i.axz, %i.ayc             ; 2 uses
  %i.aye = trunc i64 %i.ayd to i16
  %i.ayf = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next51.i217.1
  store i16 %i.aye, ptr %i.ayf, align 2, !tbaa !20
  %i.ayg = add nsw i64 %i.ayd, 2147483648
  %i.ayh = lshr i64 %i.ayg, 16
  %i.ayi = add nsw i64 %i.ayh, -32768
  %indvars.iv.next51.i217.2 = add nuw nsw i64 %indvars.iv50.i215, 3 ; 2 uses
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next51.i217.2
  %i.ayk = load i16, ptr %i.ayj, align 2, !tbaa !20
  %i.ayl = zext i16 %i.ayk to i64
  %i.aym = add nsw i64 %i.ayi, %i.ayl             ; 2 uses
  %i.ayn = trunc i64 %i.aym to i16
  %i.ayo = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next51.i217.2
  store i16 %i.ayn, ptr %i.ayo, align 2, !tbaa !20
  %i.ayp = add nsw i64 %i.aym, 2147483648
  %i.ayq = lshr i64 %i.ayp, 16
  %i.ayr = add nsw i64 %i.ayq, -32768
  %indvars.iv.next51.i217.3 = add nuw nsw i64 %indvars.iv50.i215, 4 ; 2 uses
  %exitcond53.not.i218.3 = icmp eq i64 %indvars.iv.next51.i217.3, 10
  br i1 %exitcond53.not.i218.3, label %._crit_edge.i219, label %.lr.ph38.i212.new, !llvm.loop !4

._crit_edge.i219:                                 ; preds = %.prol.loopexit1592, %.lr.ph38.i212.new, %.preheader.i243
  %i.ays = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i203, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i220 = icmp eq i16 %i.ays, 0
  br i1 %.not.i.not.not.i220, label %bb.ei, label %.preheader.i.i221

bb.ei:                                            ; preds = %._crit_edge.i219
  %i.ayt = add i16 %i.afb, -1
  %i.ayu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i204, align 16, !tbaa !20
  %.not.i.1.i222 = icmp eq i16 %i.ayu, 0
  br i1 %.not.i.1.i222, label %bb.ej, label %.lr.ph47.i.i223

bb.ej:                                            ; preds = %bb.ei
  %i.ayv = add i16 %i.afb, -2
  %i.ayw = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i205, align 2, !tbaa !20
  %.not.i.2.i227 = icmp eq i16 %i.ayw, 0
  br i1 %.not.i.2.i227, label %bb.ek, label %.lr.ph47.i.i223

bb.ek:                                            ; preds = %bb.ej
  %i.ayx = add i16 %i.afb, -3
  %i.ayy = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i206, align 4, !tbaa !20
  %.not.i.3.i228 = icmp eq i16 %i.ayy, 0
  br i1 %.not.i.3.i228, label %bb.el, label %.lr.ph47.i.i223

bb.el:                                            ; preds = %bb.ek
  %i.ayz = add i16 %i.afb, -4
  %i.aza = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i207, align 2, !tbaa !20
  %.not.i.4.i229 = icmp eq i16 %i.aza, 0
  br i1 %.not.i.4.i229, label %bb.em, label %.lr.ph47.i.i223

bb.em:                                            ; preds = %bb.el
  %i.azb = add i16 %i.afb, -5
  %i.azc = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i208, align 8, !tbaa !20
  %.not.i.5.i230 = icmp eq i16 %i.azc, 0
  br i1 %.not.i.5.i230, label %bb.en, label %.lr.ph47.i.i223

bb.en:                                            ; preds = %bb.em
  %i.azd = add i16 %i.afb, -6
  %i.aze = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i209, align 2, !tbaa !20
  %.not.i.6.i231 = icmp eq i16 %i.aze, 0
  br i1 %.not.i.6.i231, label %bb.eo, label %.lr.ph47.i.i223

bb.eo:                                            ; preds = %bb.en
  %i.azf = add i16 %i.afb, -7
  %i.azg = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i210, align 4, !tbaa !20
  %.not.i.7.i232 = icmp eq i16 %i.azg, 0
  br i1 %.not.i.7.i232, label %bb.ep, label %.lr.ph47.i.i223

bb.ep:                                            ; preds = %bb.eo
  %i.azh = add i16 %i.afb, -8
  %i.azi = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i211, align 2, !tbaa !20
  %.not.i.8.i233 = icmp eq i16 %i.azi, 0
  br i1 %.not.i.8.i233, label %bb.eq, label %.lr.ph47.i.i223

bb.eq:                                            ; preds = %bb.ep
  %i.azj = add i16 %i.afb, -9
  %i.azk = load i16, ptr %i.s, align 16, !tbaa !20
  %.not.i.9.i234 = icmp eq i16 %i.azk, 0
  br i1 %.not.i.9.i234, label %bb.er, label %.lr.ph47.i.i223

bb.er:                                            ; preds = %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit244

.preheader.i.i221:                                ; preds = %._crit_edge.i219
  store i16 %i.afb, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  store i16 %i.ays, ptr %i.by, align 2, !tbaa !20
  %i.azl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i204, align 16, !tbaa !20
  store i16 %i.azl, ptr %i.bz, align 4, !tbaa !20
  %i.azm = load <8 x i16>, ptr %i.s, align 16, !tbaa !20
  store <8 x i16> %i.azm, ptr %i.bx, align 4, !tbaa !20
  br label %submag0.exit244

.lr.ph47.i.i223:                                  ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei
  %.03341.i.lcssa.ph.i224 = phi i16 [ %i.azj, %bb.eq ], [ %i.azh, %bb.ep ], [ %i.azf, %bb.eo ], [ %i.azd, %bb.en ], [ %i.azb, %bb.em ], [ %i.ayz, %bb.el ], [ %i.ayx, %bb.ek ], [ %i.ayv, %bb.ej ], [ %i.ayt, %bb.ei ]
  %indvars.iv59.i.lcssa.ph.i225 = phi i64 [ 0, %bb.eq ], [ 2, %bb.ep ], [ 4, %bb.eo ], [ 6, %bb.en ], [ 8, %bb.em ], [ 10, %bb.el ], [ 12, %bb.ek ], [ 14, %bb.ej ], [ 16, %bb.ei ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i224, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aey, ptr %12, align 16, !tbaa !24
  %i.azn = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i225
  %scevgep.i226 = getelementptr i8, ptr %12, i64 %i.azn
  %i.azo = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i225, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i226, ptr noundef nonnull align 16 dereferenceable(1) %i.s, i64 %i.azo, i1 false), !tbaa !20
  %i.azp = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i225
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.azp, i1 false), !tbaa !20
  br label %submag0.exit244

submag0.exit244:                                  ; preds = %bb.er, %.preheader.i.i221, %.lr.ph47.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  br label %add.exit

bb.es:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #12
  %i.azq = sext i16 %i.afc to i32                 ; 2 uses
  %i.azr = sext i16 %i.afb to i32                 ; 3 uses
  %i.azs = sub nsw i32 %i.azq, %i.azr
  %i.azt = icmp slt i32 %i.azs, 10
  br i1 %i.azt, label %.lr.ph.i193, label %.lr.ph38.i170

.lr.ph.i193:                                      ; preds = %bb.es
  %i.azu = sext i16 %i.afc to i64
  %i.azv = sub nsw i32 0, %i.azr
  %i.azw = sext i32 %i.azv to i64
  %i.azx = add nsw i64 %i.azu, %i.azw             ; 2 uses
  %i.azy = add nsw i32 %i.azr, 10
  %i.azz = sub nsw i32 %i.azy, %i.azq             ; 4 uses
  %wide.trip.count.i194 = zext i32 %i.azz to i64  ; 2 uses
  %xtraiter1571 = and i64 %wide.trip.count.i194, 3 ; 3 uses
  %i.baa = add nsw i32 %i.azz, -1
  %i.bab = icmp ult i32 %i.baa, 3
  br i1 %i.bab, label %.epil.preheader1570, label %.lr.ph.i193.new

.lr.ph.i193.new:                                  ; preds = %.lr.ph.i193
  %unroll_iter1576 = and i64 %wide.trip.count.i194, 4294967292
  br label %bb.eu

.preheader.i201.unr-lcssa:                        ; preds = %bb.eu
  %lcmp.mod1573.not = icmp eq i64 %xtraiter1571, 0
  br i1 %lcmp.mod1573.not, label %.preheader.i201, label %.epil.preheader1570

.epil.preheader1570:                              ; preds = %.preheader.i201.unr-lcssa, %.lr.ph.i193
  %indvars.iv45.i195.epil.init = phi i64 [ 0, %.lr.ph.i193 ], [ %indvars.iv.next46.i198.3, %.preheader.i201.unr-lcssa ]
  %indvars.iv.i196.epil.init = phi i64 [ %i.azx, %.lr.ph.i193 ], [ %indvars.iv.next.i199.3, %.preheader.i201.unr-lcssa ]
  %.034.i197.epil.init = phi i64 [ 0, %.lr.ph.i193 ], [ %i.bdf, %.preheader.i201.unr-lcssa ]
  %lcmp.mod1575 = icmp ne i64 %xtraiter1571, 0
  tail call void @llvm.assume(i1 %lcmp.mod1575)
  br label %bb.et

bb.et:                                            ; preds = %bb.et, %.epil.preheader1570
  %indvars.iv45.i195.epil = phi i64 [ %indvars.iv45.i195.epil.init, %.epil.preheader1570 ], [ %indvars.iv.next46.i198.epil, %bb.et ] ; 3 uses
  %indvars.iv.i196.epil = phi i64 [ %indvars.iv.i196.epil.init, %.epil.preheader1570 ], [ %indvars.iv.next.i199.epil, %bb.et ] ; 2 uses
  %.034.i197.epil = phi i64 [ %.034.i197.epil.init, %.epil.preheader1570 ], [ %i.bao, %bb.et ]
  %epil.iter1572 = phi i64 [ 0, %.epil.preheader1570 ], [ %epil.iter1572.next, %bb.et ]
  %i.bac = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv45.i195.epil
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !20
  %i.bae = zext i16 %i.bad to i64
  %i.baf = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i196.epil
  %i.bag = load i16, ptr %i.baf, align 2, !tbaa !20
  %i.bah = zext i16 %i.bag to i64
  %i.bai = sub nsw i64 %i.bae, %i.bah
  %i.baj = add nsw i64 %i.bai, %.034.i197.epil    ; 2 uses
  %i.bak = trunc i64 %i.baj to i16
  %i.bal = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv45.i195.epil
  store i16 %i.bak, ptr %i.bal, align 2, !tbaa !20
  %i.bam = add nsw i64 %i.baj, 2147483648
  %i.ban = lshr i64 %i.bam, 16
  %i.bao = add nsw i64 %i.ban, -32768             ; 2 uses
  %indvars.iv.next46.i198.epil = add nuw nsw i64 %indvars.iv45.i195.epil, 1
  %indvars.iv.next.i199.epil = add nsw i64 %indvars.iv.i196.epil, 1
  %epil.iter1572.next = add i64 %epil.iter1572, 1 ; 2 uses
  %epil.iter1572.cmp.not = icmp eq i64 %epil.iter1572.next, %xtraiter1571
  br i1 %epil.iter1572.cmp.not, label %.preheader.i201, label %bb.et, !llvm.loop !68

.preheader.i201:                                  ; preds = %bb.et, %.preheader.i201.unr-lcssa
  %.lcssa1495 = phi i64 [ %i.bdf, %.preheader.i201.unr-lcssa ], [ %i.bao, %bb.et ]
  %i.bap = icmp samesign ult i32 %i.azz, 10
  br i1 %i.bap, label %.lr.ph38.i170, label %._crit_edge.i177

.lr.ph38.i170:                                    ; preds = %bb.es, %.preheader.i201
  %.0.lcssa85.i171 = phi i64 [ %.lcssa1495, %.preheader.i201 ], [ 0, %bb.es ] ; 2 uses
  %.025.lcssa84.i172 = phi i32 [ %i.azz, %.preheader.i201 ], [ 0, %bb.es ] ; 2 uses
  %i.baq = zext nneg i32 %.025.lcssa84.i172 to i64 ; 3 uses
  %i.bar = sub nsw i64 2, %i.baq
  %xtraiter1580 = and i64 %i.bar, 3               ; 2 uses
  %lcmp.mod1581.not = icmp eq i64 %xtraiter1580, 0
  br i1 %lcmp.mod1581.not, label %.prol.loopexit1579, label %.prol.preheader1578

.prol.preheader1578:                              ; preds = %.lr.ph38.i170, %.prol.preheader1578
  %indvars.iv50.i173.prol = phi i64 [ %indvars.iv.next51.i175.prol, %.prol.preheader1578 ], [ %i.baq, %.lr.ph38.i170 ] ; 3 uses
  %.137.i174.prol = phi i64 [ %i.bba, %.prol.preheader1578 ], [ %.0.lcssa85.i171, %.lr.ph38.i170 ]
  %prol.iter1582 = phi i64 [ %prol.iter1582.next, %.prol.preheader1578 ], [ 0, %.lr.ph38.i170 ]
  %i.bas = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv50.i173.prol
  %i.bat = load i16, ptr %i.bas, align 2, !tbaa !20
  %i.bau = zext i16 %i.bat to i64
  %i.bav = add nsw i64 %.137.i174.prol, %i.bau    ; 2 uses
  %i.baw = trunc i64 %i.bav to i16
  %i.bax = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv50.i173.prol
  store i16 %i.baw, ptr %i.bax, align 2, !tbaa !20
  %i.bay = add nsw i64 %i.bav, 2147483648
  %i.baz = lshr i64 %i.bay, 16
  %i.bba = add nsw i64 %i.baz, -32768             ; 2 uses
  %indvars.iv.next51.i175.prol = add nuw nsw i64 %indvars.iv50.i173.prol, 1 ; 2 uses
  %prol.iter1582.next = add i64 %prol.iter1582, 1 ; 2 uses
  %prol.iter1582.cmp.not = icmp eq i64 %prol.iter1582.next, %xtraiter1580
  br i1 %prol.iter1582.cmp.not, label %.prol.loopexit1579, label %.prol.preheader1578, !llvm.loop !69

.prol.loopexit1579:                               ; preds = %.prol.preheader1578, %.lr.ph38.i170
  %indvars.iv50.i173.unr = phi i64 [ %i.baq, %.lr.ph38.i170 ], [ %indvars.iv.next51.i175.prol, %.prol.preheader1578 ]
  %.137.i174.unr = phi i64 [ %.0.lcssa85.i171, %.lr.ph38.i170 ], [ %i.bba, %.prol.preheader1578 ]
  %i.bbb = add nsw i32 %.025.lcssa84.i172, -7
  %i.bbc = icmp ult i32 %i.bbb, 3
  br i1 %i.bbc, label %._crit_edge.i177, label %.lr.ph38.i170.new

bb.eu:                                            ; preds = %bb.eu, %.lr.ph.i193.new
  %indvars.iv45.i195 = phi i64 [ 0, %.lr.ph.i193.new ], [ %indvars.iv.next46.i198.3, %bb.eu ] ; 6 uses
  %indvars.iv.i196 = phi i64 [ %i.azx, %.lr.ph.i193.new ], [ %indvars.iv.next.i199.3, %bb.eu ] ; 5 uses
  %.034.i197 = phi i64 [ 0, %.lr.ph.i193.new ], [ %i.bdf, %bb.eu ]
  %niter1577 = phi i64 [ 0, %.lr.ph.i193.new ], [ %niter1577.next.3, %bb.eu ]
  %i.bbd = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv45.i195
  %i.bbe = load i16, ptr %i.bbd, align 4, !tbaa !20
  %i.bbf = zext i16 %i.bbe to i64
  %i.bbg = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv.i196
  %i.bbh = load i16, ptr %i.bbg, align 2, !tbaa !20
  %i.bbi = zext i16 %i.bbh to i64
  %i.bbj = sub nsw i64 %i.bbf, %i.bbi
  %i.bbk = add nsw i64 %i.bbj, %.034.i197         ; 2 uses
  %i.bbl = trunc i64 %i.bbk to i16
  %i.bbm = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv45.i195
  store i16 %i.bbl, ptr %i.bbm, align 8, !tbaa !20
  %i.bbn = add nsw i64 %i.bbk, 2147483648
  %i.bbo = lshr i64 %i.bbn, 16
  %i.bbp = add nsw i64 %i.bbo, -32768
  %indvars.iv.next46.i198 = or disjoint i64 %indvars.iv45.i195, 1 ; 2 uses
  %i.bbq = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i198
  %i.bbr = load i16, ptr %i.bbq, align 2, !tbaa !20
  %i.bbs = zext i16 %i.bbr to i64
  %i.bbt = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i196
  %i.bbu = getelementptr i8, ptr %i.bbt, i64 2
  %i.bbv = load i16, ptr %i.bbu, align 2, !tbaa !20
  %i.bbw = zext i16 %i.bbv to i64
  %i.bbx = sub nsw i64 %i.bbs, %i.bbw
  %i.bby = add nsw i64 %i.bbx, %i.bbp             ; 2 uses
  %i.bbz = trunc i64 %i.bby to i16
  %i.bca = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next46.i198
  store i16 %i.bbz, ptr %i.bca, align 2, !tbaa !20
  %i.bcb = add nsw i64 %i.bby, 2147483648
  %i.bcc = lshr i64 %i.bcb, 16
  %i.bcd = add nsw i64 %i.bcc, -32768
  %indvars.iv.next46.i198.1 = or disjoint i64 %indvars.iv45.i195, 2 ; 2 uses
  %i.bce = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i198.1
  %i.bcf = load i16, ptr %i.bce, align 8, !tbaa !20
  %i.bcg = zext i16 %i.bcf to i64
  %i.bch = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i196
  %i.bci = getelementptr i8, ptr %i.bch, i64 4
  %i.bcj = load i16, ptr %i.bci, align 2, !tbaa !20
  %i.bck = zext i16 %i.bcj to i64
  %i.bcl = sub nsw i64 %i.bcg, %i.bck
  %i.bcm = add nsw i64 %i.bcl, %i.bcd             ; 2 uses
  %i.bcn = trunc i64 %i.bcm to i16
  %i.bco = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next46.i198.1
  store i16 %i.bcn, ptr %i.bco, align 4, !tbaa !20
  %i.bcp = add nsw i64 %i.bcm, 2147483648
  %i.bcq = lshr i64 %i.bcp, 16
  %i.bcr = add nsw i64 %i.bcq, -32768
  %indvars.iv.next46.i198.2 = or disjoint i64 %indvars.iv45.i195, 3 ; 2 uses
  %i.bcs = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next46.i198.2
  %i.bct = load i16, ptr %i.bcs, align 2, !tbaa !20
  %i.bcu = zext i16 %i.bct to i64
  %i.bcv = getelementptr [2 x i8], ptr %i.ar, i64 %indvars.iv.i196
  %i.bcw = getelementptr i8, ptr %i.bcv, i64 6
  %i.bcx = load i16, ptr %i.bcw, align 2, !tbaa !20
  %i.bcy = zext i16 %i.bcx to i64
  %i.bcz = sub nsw i64 %i.bcu, %i.bcy
  %i.bda = add nsw i64 %i.bcz, %i.bcr             ; 2 uses
  %i.bdb = trunc i64 %i.bda to i16
  %i.bdc = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next46.i198.2
  store i16 %i.bdb, ptr %i.bdc, align 2, !tbaa !20
  %i.bdd = add nsw i64 %i.bda, 2147483648
  %i.bde = lshr i64 %i.bdd, 16
  %i.bdf = add nsw i64 %i.bde, -32768             ; 3 uses
  %indvars.iv.next46.i198.3 = add nuw nsw i64 %indvars.iv45.i195, 4 ; 2 uses
  %indvars.iv.next.i199.3 = add nsw i64 %indvars.iv.i196, 4 ; 2 uses
  %niter1577.next.3 = add i64 %niter1577, 4       ; 2 uses
  %niter1577.ncmp.3 = icmp eq i64 %niter1577.next.3, %unroll_iter1576
  br i1 %niter1577.ncmp.3, label %.preheader.i201.unr-lcssa, label %bb.eu, !llvm.loop !3

.lr.ph38.i170.new:                                ; preds = %.prol.loopexit1579, %.lr.ph38.i170.new
  %indvars.iv50.i173 = phi i64 [ %indvars.iv.next51.i175.3, %.lr.ph38.i170.new ], [ %indvars.iv50.i173.unr, %.prol.loopexit1579 ] ; 6 uses
  %.137.i174 = phi i64 [ %i.bep, %.lr.ph38.i170.new ], [ %.137.i174.unr, %.prol.loopexit1579 ]
  %i.bdg = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv50.i173
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !20
  %i.bdi = zext i16 %i.bdh to i64
  %i.bdj = add nsw i64 %.137.i174, %i.bdi         ; 2 uses
  %i.bdk = trunc i64 %i.bdj to i16
  %i.bdl = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv50.i173
  store i16 %i.bdk, ptr %i.bdl, align 2, !tbaa !20
  %i.bdm = add nsw i64 %i.bdj, 2147483648
  %i.bdn = lshr i64 %i.bdm, 16
  %i.bdo = add nsw i64 %i.bdn, -32768
  %indvars.iv.next51.i175 = add nuw nsw i64 %indvars.iv50.i173, 1 ; 2 uses
  %i.bdp = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i175
  %i.bdq = load i16, ptr %i.bdp, align 2, !tbaa !20
  %i.bdr = zext i16 %i.bdq to i64
  %i.bds = add nsw i64 %i.bdo, %i.bdr             ; 2 uses
  %i.bdt = trunc i64 %i.bds to i16
  %i.bdu = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next51.i175
  store i16 %i.bdt, ptr %i.bdu, align 2, !tbaa !20
  %i.bdv = add nsw i64 %i.bds, 2147483648
  %i.bdw = lshr i64 %i.bdv, 16
  %i.bdx = add nsw i64 %i.bdw, -32768
  %indvars.iv.next51.i175.1 = add nuw nsw i64 %indvars.iv50.i173, 2 ; 2 uses
  %i.bdy = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i175.1
  %i.bdz = load i16, ptr %i.bdy, align 2, !tbaa !20
  %i.bea = zext i16 %i.bdz to i64
  %i.beb = add nsw i64 %i.bdx, %i.bea             ; 2 uses
  %i.bec = trunc i64 %i.beb to i16
  %i.bed = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next51.i175.1
  store i16 %i.bec, ptr %i.bed, align 2, !tbaa !20
  %i.bee = add nsw i64 %i.beb, 2147483648
  %i.bef = lshr i64 %i.bee, 16
  %i.beg = add nsw i64 %i.bef, -32768
  %indvars.iv.next51.i175.2 = add nuw nsw i64 %indvars.iv50.i173, 3 ; 2 uses
  %i.beh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next51.i175.2
  %i.bei = load i16, ptr %i.beh, align 2, !tbaa !20
  %i.bej = zext i16 %i.bei to i64
  %i.bek = add nsw i64 %i.beg, %i.bej             ; 2 uses
  %i.bel = trunc i64 %i.bek to i16
  %i.bem = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next51.i175.2
  store i16 %i.bel, ptr %i.bem, align 2, !tbaa !20
  %i.ben = add nsw i64 %i.bek, 2147483648
  %i.beo = lshr i64 %i.ben, 16
  %i.bep = add nsw i64 %i.beo, -32768
  %indvars.iv.next51.i175.3 = add nuw nsw i64 %indvars.iv50.i173, 4 ; 2 uses
  %exitcond53.not.i176.3 = icmp eq i64 %indvars.iv.next51.i175.3, 10
  br i1 %exitcond53.not.i176.3, label %._crit_edge.i177, label %.lr.ph38.i170.new, !llvm.loop !4

._crit_edge.i177:                                 ; preds = %.prol.loopexit1579, %.lr.ph38.i170.new, %.preheader.i201
  %i.beq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i161, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i178 = icmp eq i16 %i.beq, 0
  br i1 %.not.i.not.not.i178, label %bb.ev, label %.preheader.i.i179

bb.ev:                                            ; preds = %._crit_edge.i177
  %i.ber = add i16 %i.afc, -1
  %i.bes = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i162, align 16, !tbaa !20
  %.not.i.1.i180 = icmp eq i16 %i.bes, 0
  br i1 %.not.i.1.i180, label %bb.ew, label %.lr.ph47.i.i181

bb.ew:                                            ; preds = %bb.ev
  %i.bet = add i16 %i.afc, -2
  %i.beu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i163, align 2, !tbaa !20
  %.not.i.2.i185 = icmp eq i16 %i.beu, 0
  br i1 %.not.i.2.i185, label %bb.ex, label %.lr.ph47.i.i181

bb.ex:                                            ; preds = %bb.ew
  %i.bev = add i16 %i.afc, -3
  %i.bew = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i164, align 4, !tbaa !20
  %.not.i.3.i186 = icmp eq i16 %i.bew, 0
  br i1 %.not.i.3.i186, label %bb.ey, label %.lr.ph47.i.i181

bb.ey:                                            ; preds = %bb.ex
  %i.bex = add i16 %i.afc, -4
  %i.bey = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i165, align 2, !tbaa !20
  %.not.i.4.i187 = icmp eq i16 %i.bey, 0
  br i1 %.not.i.4.i187, label %bb.ez, label %.lr.ph47.i.i181

bb.ez:                                            ; preds = %bb.ey
  %i.bez = add i16 %i.afc, -5
  %i.bfa = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i166, align 8, !tbaa !20
  %.not.i.5.i188 = icmp eq i16 %i.bfa, 0
  br i1 %.not.i.5.i188, label %bb.fa, label %.lr.ph47.i.i181

bb.fa:                                            ; preds = %bb.ez
  %i.bfb = add i16 %i.afc, -6
  %i.bfc = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i167, align 2, !tbaa !20
  %.not.i.6.i189 = icmp eq i16 %i.bfc, 0
  br i1 %.not.i.6.i189, label %bb.fb, label %.lr.ph47.i.i181

bb.fb:                                            ; preds = %bb.fa
  %i.bfd = add i16 %i.afc, -7
  %i.bfe = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i168, align 4, !tbaa !20
  %.not.i.7.i190 = icmp eq i16 %i.bfe, 0
  br i1 %.not.i.7.i190, label %bb.fc, label %.lr.ph47.i.i181

bb.fc:                                            ; preds = %bb.fb
  %i.bff = add i16 %i.afc, -8
  %i.bfg = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i169, align 2, !tbaa !20
  %.not.i.8.i191 = icmp eq i16 %i.bfg, 0
  br i1 %.not.i.8.i191, label %bb.fd, label %.lr.ph47.i.i181

bb.fd:                                            ; preds = %bb.fc
  %i.bfh = add i16 %i.afc, -9
  %i.bfi = load i16, ptr %i.t, align 16, !tbaa !20
  %.not.i.9.i192 = icmp eq i16 %i.bfi, 0
  br i1 %.not.i.9.i192, label %bb.fe, label %.lr.ph47.i.i181

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit202

.preheader.i.i179:                                ; preds = %._crit_edge.i177
  store i16 %i.afc, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aez, ptr %12, align 16, !tbaa !24
  store i16 %i.beq, ptr %i.by, align 2, !tbaa !20
  %i.bfj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i162, align 16, !tbaa !20
  store i16 %i.bfj, ptr %i.bz, align 4, !tbaa !20
  %i.bfk = load <8 x i16>, ptr %i.t, align 16, !tbaa !20
  store <8 x i16> %i.bfk, ptr %i.bx, align 4, !tbaa !20
  br label %submag0.exit202

.lr.ph47.i.i181:                                  ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev
  %.03341.i.lcssa.ph.i182 = phi i16 [ %i.bfh, %bb.fd ], [ %i.bff, %bb.fc ], [ %i.bfd, %bb.fb ], [ %i.bfb, %bb.fa ], [ %i.bez, %bb.ez ], [ %i.bex, %bb.ey ], [ %i.bev, %bb.ex ], [ %i.bet, %bb.ew ], [ %i.ber, %bb.ev ]
  %indvars.iv59.i.lcssa.ph.i183 = phi i64 [ 0, %bb.fd ], [ 2, %bb.fc ], [ 4, %bb.fb ], [ 6, %bb.fa ], [ 8, %bb.ez ], [ 10, %bb.ey ], [ 12, %bb.ex ], [ 14, %bb.ew ], [ 16, %bb.ev ] ; 3 uses
  store i16 %.03341.i.lcssa.ph.i182, ptr %i.bw, align 2, !tbaa !26
  store i16 %i.aez, ptr %12, align 16, !tbaa !24
  %i.bfl = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i183
  %scevgep.i184 = getelementptr i8, ptr %12, i64 %i.bfl
  %i.bfm = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i183, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i184, ptr noundef nonnull align 16 dereferenceable(1) %i.t, i64 %i.bfm, i1 false), !tbaa !20
  %i.bfn = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i183
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.bfn, i1 false), !tbaa !20
  br label %submag0.exit202

submag0.exit202:                                  ; preds = %bb.fe, %.preheader.i.i179, %.lr.ph47.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #12
  br label %add.exit

add.exit:                                         ; preds = %addmag0.exit342, %addmag0.exit293, %submag0.exit244, %submag0.exit202
  %i.bfo = load i16, ptr %5, align 16, !tbaa !24  ; 13 uses
  %i.bfp = load i16, ptr %11, align 16, !tbaa !24 ; 5 uses
  %i.bfq = icmp eq i16 %i.bfo, %i.bfp             ; 2 uses
  %i.bfr = load i16, ptr %i.ch, align 2, !tbaa !26 ; 57 uses
  %i.bfs = load i16, ptr %i.bl, align 2, !tbaa !26 ; 57 uses
  %i.bft = icmp sgt i16 %i.bfr, %i.bfs            ; 2 uses
  br i1 %i.bft, label %abscmp.exit532, label %bb.ff

bb.ff:                                            ; preds = %add.exit
  %i.bfu = icmp slt i16 %i.bfr, %i.bfs
  br i1 %i.bfu, label %abscmp.exit532, label %.preheader.i529

.preheader.i529:                                  ; preds = %bb.ff
  %i.bfv = load i16, ptr %i.cj, align 2, !tbaa !20 ; 2 uses
  %i.bfw = load i16, ptr %i.bn, align 2, !tbaa !20 ; 2 uses
  %i.bfx = icmp ugt i16 %i.bfv, %i.bfw
  br i1 %i.bfx, label %abscmp.exit532, label %bb.fx

bb.fg:                                            ; preds = %bb.fx
  %i.bfy = load i16, ptr %i.ck, align 4, !tbaa !20 ; 2 uses
  %i.bfz = load i16, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %i.bga = icmp ugt i16 %i.bfy, %i.bfz
  br i1 %i.bga, label %abscmp.exit532, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bgb = icmp ult i16 %i.bfy, %i.bfz
  br i1 %i.bgb, label %abscmp.exit532, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bgc = load i16, ptr %i.cl, align 2, !tbaa !20 ; 2 uses
  %i.bgd = load i16, ptr %i.bp, align 2, !tbaa !20 ; 2 uses
  %i.bge = icmp ugt i16 %i.bgc, %i.bgd
  br i1 %i.bge, label %abscmp.exit532, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.bgf = icmp ult i16 %i.bgc, %i.bgd
  br i1 %i.bgf, label %abscmp.exit532, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bgg = load i16, ptr %i.cm, align 16, !tbaa !20 ; 2 uses
  %i.bgh = load i16, ptr %i.bq, align 16, !tbaa !20 ; 2 uses
  %i.bgi = icmp ugt i16 %i.bgg, %i.bgh
  br i1 %i.bgi, label %abscmp.exit532, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bgj = icmp ult i16 %i.bgg, %i.bgh
  br i1 %i.bgj, label %abscmp.exit532, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.bgk = load i16, ptr %i.cn, align 2, !tbaa !20 ; 2 uses
  %i.bgl = load i16, ptr %i.br, align 2, !tbaa !20 ; 2 uses
  %i.bgm = icmp ugt i16 %i.bgk, %i.bgl
  br i1 %i.bgm, label %abscmp.exit532, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.bgn = icmp ult i16 %i.bgk, %i.bgl
  br i1 %i.bgn, label %abscmp.exit532, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bgo = load i16, ptr %i.co, align 4, !tbaa !20 ; 2 uses
  %i.bgp = load i16, ptr %i.bs, align 4, !tbaa !20 ; 2 uses
  %i.bgq = icmp ugt i16 %i.bgo, %i.bgp
  br i1 %i.bgq, label %abscmp.exit532, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.bgr = icmp ult i16 %i.bgo, %i.bgp
  br i1 %i.bgr, label %abscmp.exit532, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bgs = load i16, ptr %i.cp, align 2, !tbaa !20 ; 2 uses
  %i.bgt = load i16, ptr %i.bt, align 2, !tbaa !20 ; 2 uses
  %i.bgu = icmp ugt i16 %i.bgs, %i.bgt
  br i1 %i.bgu, label %abscmp.exit532, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bgv = icmp ult i16 %i.bgs, %i.bgt
  br i1 %i.bgv, label %abscmp.exit532, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.bgw = load i16, ptr %i.cq, align 8, !tbaa !20 ; 2 uses
  %i.bgx = load i16, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %i.bgy = icmp ugt i16 %i.bgw, %i.bgx
  br i1 %i.bgy, label %abscmp.exit532, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bgz = icmp ult i16 %i.bgw, %i.bgx
  br i1 %i.bgz, label %abscmp.exit532, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.bha = load i16, ptr %i.cr, align 2, !tbaa !20 ; 2 uses
  %i.bhb = load i16, ptr %i.bv, align 2, !tbaa !20 ; 2 uses
  %i.bhc = icmp ugt i16 %i.bha, %i.bhb
  br i1 %i.bhc, label %abscmp.exit532, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.bhd = icmp ult i16 %i.bha, %i.bhb
  br i1 %i.bhd, label %abscmp.exit532, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.bhe = load i16, ptr %i.ci, align 4, !tbaa !20
  %i.bhf = load i16, ptr %i.bm, align 4, !tbaa !20
  %i.bhg = icmp ugt i16 %i.bhe, %i.bhf
  br label %abscmp.exit532

bb.fx:                                            ; preds = %.preheader.i529
  %i.bhh = icmp ult i16 %i.bfv, %i.bfw
  br i1 %i.bhh, label %abscmp.exit532, label %bb.fg

abscmp.exit532:                                   ; preds = %bb.fw, %add.exit, %bb.ff, %.preheader.i529, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fx
  %.014.i531 = phi i1 [ false, %bb.ff ], [ true, %add.exit ], [ false, %bb.fx ], [ true, %.preheader.i529 ], [ false, %bb.ft ], [ true, %bb.fg ], [ false, %bb.fh ], [ false, %bb.fr ], [ true, %bb.fi ], [ false, %bb.fj ], [ %i.bhg, %bb.fw ], [ true, %bb.fk ], [ false, %bb.fl ], [ true, %bb.fs ], [ true, %bb.fm ], [ false, %bb.fn ], [ false, %bb.fv ], [ true, %bb.fo ], [ false, %bb.fp ], [ true, %bb.fu ], [ true, %bb.fq ] ; 2 uses
  br i1 %i.bfq, label %bb.fy, label %bb.hb

bb.fy:                                            ; preds = %abscmp.exit532
  br i1 %.014.i531, label %bb.fz, label %bb.gn

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.bhi = sext i16 %i.bfr to i32                 ; 2 uses
  %i.bhj = sext i16 %i.bfs to i32                 ; 3 uses
  %i.bhk = sub nsw i32 %i.bhi, %i.bhj
  %i.bhl = icmp slt i32 %i.bhk, 10
  br i1 %i.bhl, label %.lr.ph.i519, label %.lr.ph40.i491

.lr.ph.i519:                                      ; preds = %bb.fz
  %i.bhm = sext i16 %i.bfr to i64
  %i.bhn = sub nsw i32 0, %i.bhj
  %i.bho = sext i32 %i.bhn to i64
  %i.bhp = add nsw i64 %i.bho, %i.bhm             ; 2 uses
  %reass.sub1164 = sub nsw i32 %i.bhj, %i.bhi     ; 3 uses
  %i.bhq = add nsw i32 %reass.sub1164, 10         ; 3 uses
  %wide.trip.count.i520 = zext i32 %i.bhq to i64  ; 2 uses
  %xtraiter1662 = and i64 %wide.trip.count.i520, 3 ; 3 uses
  %i.bhr = add nsw i32 %reass.sub1164, 9
  %i.bhs = icmp ult i32 %i.bhr, 3
  br i1 %i.bhs, label %.epil.preheader1661, label %.lr.ph.i519.new

.lr.ph.i519.new:                                  ; preds = %.lr.ph.i519
  %unroll_iter1667 = and i64 %wide.trip.count.i520, 4294967292
  br label %bb.gb

.preheader.i527.unr-lcssa:                        ; preds = %bb.gb
  %lcmp.mod1664.not = icmp eq i64 %xtraiter1662, 0
  br i1 %lcmp.mod1664.not, label %.preheader.i527, label %.epil.preheader1661

.epil.preheader1661:                              ; preds = %.preheader.i527.unr-lcssa, %.lr.ph.i519
  %indvars.iv51.i521.epil.init = phi i64 [ 0, %.lr.ph.i519 ], [ %indvars.iv.next52.i524.3, %.preheader.i527.unr-lcssa ]
  %indvars.iv.i522.epil.init = phi i64 [ %i.bhp, %.lr.ph.i519 ], [ %indvars.iv.next.i525.3, %.preheader.i527.unr-lcssa ]
  %.036.i523.epil.init = phi i64 [ 0, %.lr.ph.i519 ], [ %i.bkk, %.preheader.i527.unr-lcssa ]
  %lcmp.mod1666 = icmp ne i64 %xtraiter1662, 0
  tail call void @llvm.assume(i1 %lcmp.mod1666)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ga, %.epil.preheader1661
  %indvars.iv51.i521.epil = phi i64 [ %indvars.iv51.i521.epil.init, %.epil.preheader1661 ], [ %indvars.iv.next52.i524.epil, %bb.ga ] ; 3 uses
  %indvars.iv.i522.epil = phi i64 [ %indvars.iv.i522.epil.init, %.epil.preheader1661 ], [ %indvars.iv.next.i525.epil, %bb.ga ] ; 2 uses
  %.036.i523.epil = phi i64 [ %.036.i523.epil.init, %.epil.preheader1661 ], [ %i.bid, %bb.ga ]
  %epil.iter1663 = phi i64 [ 0, %.epil.preheader1661 ], [ %epil.iter1663.next, %bb.ga ]
  %i.bht = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv51.i521.epil
  %i.bhu = load i16, ptr %i.bht, align 2, !tbaa !20
  %i.bhv = zext i16 %i.bhu to i64
  %i.bhw = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i522.epil
  %i.bhx = load i16, ptr %i.bhw, align 2, !tbaa !20
  %i.bhy = zext i16 %i.bhx to i64
  %i.bhz = add nuw nsw i64 %.036.i523.epil, %i.bhv
  %i.bia = add nuw nsw i64 %i.bhz, %i.bhy         ; 2 uses
  %i.bib = trunc i64 %i.bia to i16
  %i.bic = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv51.i521.epil
  store i16 %i.bib, ptr %i.bic, align 2, !tbaa !20
  %i.bid = lshr i64 %i.bia, 16                    ; 2 uses
  %indvars.iv.next52.i524.epil = add nuw nsw i64 %indvars.iv51.i521.epil, 1
  %indvars.iv.next.i525.epil = add nsw i64 %indvars.iv.i522.epil, 1
  %epil.iter1663.next = add i64 %epil.iter1663, 1 ; 2 uses
  %epil.iter1663.cmp.not = icmp eq i64 %epil.iter1663.next, %xtraiter1662
  br i1 %epil.iter1663.cmp.not, label %.preheader.i527, label %bb.ga, !llvm.loop !70

.preheader.i527:                                  ; preds = %bb.ga, %.preheader.i527.unr-lcssa
  %.lcssa1505 = phi i64 [ %i.bkk, %.preheader.i527.unr-lcssa ], [ %i.bid, %bb.ga ] ; 2 uses
  %i.bie = icmp slt i32 %reass.sub1164, 0
  br i1 %i.bie, label %.lr.ph40.i491, label %._crit_edge.i498

.lr.ph40.i491:                                    ; preds = %bb.fz, %.preheader.i527
  %.0.lcssa94.i492 = phi i64 [ %.lcssa1505, %.preheader.i527 ], [ 0, %bb.fz ] ; 2 uses
  %.027.lcssa93.i493 = phi i32 [ %i.bhq, %.preheader.i527 ], [ 0, %bb.fz ] ; 2 uses
  %i.bif = zext i32 %.027.lcssa93.i493 to i64     ; 3 uses
  %i.big = sub nsw i64 2, %i.bif
  %xtraiter1671 = and i64 %i.big, 7               ; 2 uses
  %lcmp.mod1672.not = icmp eq i64 %xtraiter1671, 0
  br i1 %lcmp.mod1672.not, label %.prol.loopexit1670, label %.prol.preheader1669

.prol.preheader1669:                              ; preds = %.lr.ph40.i491, %.prol.preheader1669
  %indvars.iv56.i494.prol = phi i64 [ %indvars.iv.next57.i496.prol, %.prol.preheader1669 ], [ %i.bif, %.lr.ph40.i491 ] ; 3 uses
  %.139.i495.prol = phi i64 [ %i.bin, %.prol.preheader1669 ], [ %.0.lcssa94.i492, %.lr.ph40.i491 ]
  %prol.iter1673 = phi i64 [ %prol.iter1673.next, %.prol.preheader1669 ], [ 0, %.lr.ph40.i491 ]
  %i.bih = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv56.i494.prol
  %i.bii = load i16, ptr %i.bih, align 2, !tbaa !20
  %i.bij = zext i16 %i.bii to i64
  %i.bik = add nuw nsw i64 %.139.i495.prol, %i.bij ; 2 uses
  %i.bil = trunc i64 %i.bik to i16
  %i.bim = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv56.i494.prol
  store i16 %i.bil, ptr %i.bim, align 2, !tbaa !20
  %i.bin = lshr i64 %i.bik, 16                    ; 3 uses
  %indvars.iv.next57.i496.prol = add nuw nsw i64 %indvars.iv56.i494.prol, 1 ; 2 uses
  %prol.iter1673.next = add i64 %prol.iter1673, 1 ; 2 uses
  %prol.iter1673.cmp.not = icmp eq i64 %prol.iter1673.next, %xtraiter1671
  br i1 %prol.iter1673.cmp.not, label %.prol.loopexit1670, label %.prol.preheader1669, !llvm.loop !71

.prol.loopexit1670:                               ; preds = %.prol.preheader1669, %.lr.ph40.i491
  %.lcssa1506.unr = phi i64 [ poison, %.lr.ph40.i491 ], [ %i.bin, %.prol.preheader1669 ]
  %indvars.iv56.i494.unr = phi i64 [ %i.bif, %.lr.ph40.i491 ], [ %indvars.iv.next57.i496.prol, %.prol.preheader1669 ]
  %.139.i495.unr = phi i64 [ %.0.lcssa94.i492, %.lr.ph40.i491 ], [ %i.bin, %.prol.preheader1669 ]
  %i.bio = add nsw i32 %.027.lcssa93.i493, -3
  %i.bip = icmp ult i32 %i.bio, 7
  br i1 %i.bip, label %._crit_edge.i498, label %.lr.ph40.i491.new

bb.gb:                                            ; preds = %bb.gb, %.lr.ph.i519.new
  %indvars.iv51.i521 = phi i64 [ 0, %.lr.ph.i519.new ], [ %indvars.iv.next52.i524.3, %bb.gb ] ; 6 uses
  %indvars.iv.i522 = phi i64 [ %i.bhp, %.lr.ph.i519.new ], [ %indvars.iv.next.i525.3, %bb.gb ] ; 5 uses
  %.036.i523 = phi i64 [ 0, %.lr.ph.i519.new ], [ %i.bkk, %bb.gb ]
  %niter1668 = phi i64 [ 0, %.lr.ph.i519.new ], [ %niter1668.next.3, %bb.gb ]
  %i.biq = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv51.i521
  %i.bir = load i16, ptr %i.biq, align 4, !tbaa !20
  %i.bis = zext i16 %i.bir to i64
  %i.bit = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i522
  %i.biu = load i16, ptr %i.bit, align 2, !tbaa !20
  %i.biv = zext i16 %i.biu to i64
  %i.biw = add nuw nsw i64 %.036.i523, %i.bis
  %i.bix = add nuw nsw i64 %i.biw, %i.biv         ; 2 uses
  %i.biy = trunc i64 %i.bix to i16
  %i.biz = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv51.i521
  store i16 %i.biy, ptr %i.biz, align 8, !tbaa !20
  %i.bja = lshr i64 %i.bix, 16
  %indvars.iv.next52.i524 = or disjoint i64 %indvars.iv51.i521, 1 ; 2 uses
  %i.bjb = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i524
  %i.bjc = load i16, ptr %i.bjb, align 2, !tbaa !20
  %i.bjd = zext i16 %i.bjc to i64
  %i.bje = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i522
  %i.bjf = getelementptr i8, ptr %i.bje, i64 2
  %i.bjg = load i16, ptr %i.bjf, align 2, !tbaa !20
  %i.bjh = zext i16 %i.bjg to i64
  %i.bji = add nuw nsw i64 %i.bja, %i.bjd
  %i.bjj = add nuw nsw i64 %i.bji, %i.bjh         ; 2 uses
  %i.bjk = trunc i64 %i.bjj to i16
  %i.bjl = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next52.i524
  store i16 %i.bjk, ptr %i.bjl, align 2, !tbaa !20
  %i.bjm = lshr i64 %i.bjj, 16
  %indvars.iv.next52.i524.1 = or disjoint i64 %indvars.iv51.i521, 2 ; 2 uses
  %i.bjn = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i524.1
  %i.bjo = load i16, ptr %i.bjn, align 8, !tbaa !20
  %i.bjp = zext i16 %i.bjo to i64
  %i.bjq = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i522
  %i.bjr = getelementptr i8, ptr %i.bjq, i64 4
  %i.bjs = load i16, ptr %i.bjr, align 2, !tbaa !20
  %i.bjt = zext i16 %i.bjs to i64
  %i.bju = add nuw nsw i64 %i.bjm, %i.bjp
  %i.bjv = add nuw nsw i64 %i.bju, %i.bjt         ; 2 uses
  %i.bjw = trunc i64 %i.bjv to i16
  %i.bjx = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next52.i524.1
  store i16 %i.bjw, ptr %i.bjx, align 4, !tbaa !20
  %i.bjy = lshr i64 %i.bjv, 16
  %indvars.iv.next52.i524.2 = or disjoint i64 %indvars.iv51.i521, 3 ; 2 uses
  %i.bjz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i524.2
  %i.bka = load i16, ptr %i.bjz, align 2, !tbaa !20
  %i.bkb = zext i16 %i.bka to i64
  %i.bkc = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i522
  %i.bkd = getelementptr i8, ptr %i.bkc, i64 6
  %i.bke = load i16, ptr %i.bkd, align 2, !tbaa !20
  %i.bkf = zext i16 %i.bke to i64
  %i.bkg = add nuw nsw i64 %i.bjy, %i.bkb
  %i.bkh = add nuw nsw i64 %i.bkg, %i.bkf         ; 2 uses
  %i.bki = trunc i64 %i.bkh to i16
  %i.bkj = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next52.i524.2
  store i16 %i.bki, ptr %i.bkj, align 2, !tbaa !20
  %i.bkk = lshr i64 %i.bkh, 16                    ; 3 uses
  %indvars.iv.next52.i524.3 = add nuw nsw i64 %indvars.iv51.i521, 4 ; 2 uses
  %indvars.iv.next.i525.3 = add nsw i64 %indvars.iv.i522, 4 ; 2 uses
  %niter1668.next.3 = add i64 %niter1668, 4       ; 2 uses
  %niter1668.ncmp.3 = icmp eq i64 %niter1668.next.3, %unroll_iter1667
  br i1 %niter1668.ncmp.3, label %.preheader.i527.unr-lcssa, label %bb.gb, !llvm.loop !5

.lr.ph40.i491.new:                                ; preds = %.prol.loopexit1670, %.lr.ph40.i491.new
  %indvars.iv56.i494 = phi i64 [ %indvars.iv.next57.i496.7, %.lr.ph40.i491.new ], [ %indvars.iv56.i494.unr, %.prol.loopexit1670 ] ; 10 uses
  %.139.i495 = phi i64 [ %i.bmo, %.lr.ph40.i491.new ], [ %.139.i495.unr, %.prol.loopexit1670 ]
  %i.bkl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv56.i494
  %i.bkm = load i16, ptr %i.bkl, align 2, !tbaa !20
  %i.bkn = zext i16 %i.bkm to i64
  %i.bko = add nuw nsw i64 %.139.i495, %i.bkn     ; 2 uses
  %i.bkp = trunc i64 %i.bko to i16
  %i.bkq = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv56.i494
  store i16 %i.bkp, ptr %i.bkq, align 2, !tbaa !20
  %i.bkr = lshr i64 %i.bko, 16
  %indvars.iv.next57.i496 = add nuw nsw i64 %indvars.iv56.i494, 1 ; 2 uses
  %i.bks = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496
  %i.bkt = load i16, ptr %i.bks, align 2, !tbaa !20
  %i.bku = zext i16 %i.bkt to i64
  %i.bkv = add nuw nsw i64 %i.bkr, %i.bku         ; 2 uses
  %i.bkw = trunc i64 %i.bkv to i16
  %i.bkx = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496
  store i16 %i.bkw, ptr %i.bkx, align 2, !tbaa !20
  %i.bky = lshr i64 %i.bkv, 16
  %indvars.iv.next57.i496.1 = add nuw nsw i64 %indvars.iv56.i494, 2 ; 2 uses
  %i.bkz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.1
  %i.bla = load i16, ptr %i.bkz, align 2, !tbaa !20
  %i.blb = zext i16 %i.bla to i64
  %i.blc = add nuw nsw i64 %i.bky, %i.blb         ; 2 uses
  %i.bld = trunc i64 %i.blc to i16
  %i.ble = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.1
  store i16 %i.bld, ptr %i.ble, align 2, !tbaa !20
  %i.blf = lshr i64 %i.blc, 16
  %indvars.iv.next57.i496.2 = add nuw nsw i64 %indvars.iv56.i494, 3 ; 2 uses
  %i.blg = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.2
  %i.blh = load i16, ptr %i.blg, align 2, !tbaa !20
  %i.bli = zext i16 %i.blh to i64
  %i.blj = add nuw nsw i64 %i.blf, %i.bli         ; 2 uses
  %i.blk = trunc i64 %i.blj to i16
  %i.bll = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.2
  store i16 %i.blk, ptr %i.bll, align 2, !tbaa !20
  %i.blm = lshr i64 %i.blj, 16
  %indvars.iv.next57.i496.3 = add nuw nsw i64 %indvars.iv56.i494, 4 ; 2 uses
  %i.bln = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.3
  %i.blo = load i16, ptr %i.bln, align 2, !tbaa !20
  %i.blp = zext i16 %i.blo to i64
  %i.blq = add nuw nsw i64 %i.blm, %i.blp         ; 2 uses
  %i.blr = trunc i64 %i.blq to i16
  %i.bls = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.3
  store i16 %i.blr, ptr %i.bls, align 2, !tbaa !20
  %i.blt = lshr i64 %i.blq, 16
  %indvars.iv.next57.i496.4 = add nuw nsw i64 %indvars.iv56.i494, 5 ; 2 uses
  %i.blu = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.4
  %i.blv = load i16, ptr %i.blu, align 2, !tbaa !20
  %i.blw = zext i16 %i.blv to i64
  %i.blx = add nuw nsw i64 %i.blt, %i.blw         ; 2 uses
  %i.bly = trunc i64 %i.blx to i16
  %i.blz = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.4
  store i16 %i.bly, ptr %i.blz, align 2, !tbaa !20
  %i.bma = lshr i64 %i.blx, 16
  %indvars.iv.next57.i496.5 = add nuw nsw i64 %indvars.iv56.i494, 6 ; 2 uses
  %i.bmb = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.5
  %i.bmc = load i16, ptr %i.bmb, align 2, !tbaa !20
  %i.bmd = zext i16 %i.bmc to i64
  %i.bme = add nuw nsw i64 %i.bma, %i.bmd         ; 2 uses
  %i.bmf = trunc i64 %i.bme to i16
  %i.bmg = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.5
  store i16 %i.bmf, ptr %i.bmg, align 2, !tbaa !20
  %i.bmh = lshr i64 %i.bme, 16
  %indvars.iv.next57.i496.6 = add nuw nsw i64 %indvars.iv56.i494, 7 ; 2 uses
  %i.bmi = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i496.6
  %i.bmj = load i16, ptr %i.bmi, align 2, !tbaa !20
  %i.bmk = zext i16 %i.bmj to i64
  %i.bml = add nuw nsw i64 %i.bmh, %i.bmk         ; 2 uses
  %i.bmm = trunc i64 %i.bml to i16
  %i.bmn = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next57.i496.6
  store i16 %i.bmm, ptr %i.bmn, align 2, !tbaa !20
  %i.bmo = lshr i64 %i.bml, 16                    ; 2 uses
  %indvars.iv.next57.i496.7 = add nuw nsw i64 %indvars.iv56.i494, 8 ; 2 uses
  %exitcond59.not.i497.7 = icmp eq i64 %indvars.iv.next57.i496.7, 10
  br i1 %exitcond59.not.i497.7, label %._crit_edge.i498, label %.lr.ph40.i491.new, !llvm.loop !6

._crit_edge.i498:                                 ; preds = %.prol.loopexit1670, %.lr.ph40.i491.new, %.preheader.i527
  %.128.lcssa.i499 = phi i32 [ %i.bhq, %.preheader.i527 ], [ 10, %.lr.ph40.i491.new ], [ 10, %.prol.loopexit1670 ]
  %.1.lcssa.i500 = phi i64 [ %.lcssa1505, %.preheader.i527 ], [ %.lcssa1506.unr, %.prol.loopexit1670 ], [ %i.bmo, %.lr.ph40.i491.new ]
  %i.bmp = trunc nuw nsw i64 %.1.lcssa.i500 to i16
  %i.bmq = zext nneg i32 %.128.lcssa.i499 to i64
  %i.bmr = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bmq
  store i16 %i.bmp, ptr %i.bmr, align 2, !tbaa !20
  %i.bms = add i16 %i.bfr, 1
  %i.bmt = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i480, align 4, !tbaa !20 ; 2 uses
  %.not.i.i501 = icmp eq i16 %i.bmt, 0
  br i1 %.not.i.i501, label %bb.gc, label %.preheader.i.i502

bb.gc:                                            ; preds = %._crit_edge.i498
  %i.bmu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i481, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i505 = icmp eq i16 %i.bmu, 0
  br i1 %.not.i.1.i505, label %bb.gd, label %.preheader.i.i502

bb.gd:                                            ; preds = %bb.gc
  %i.bmv = add i16 %i.bfr, -1
  %i.bmw = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i482, align 16, !tbaa !20
  %.not.i.2.i506 = icmp eq i16 %i.bmw, 0
  br i1 %.not.i.2.i506, label %bb.ge, label %.lr.ph47.i.i507

bb.ge:                                            ; preds = %bb.gd
  %i.bmx = add i16 %i.bfr, -2
  %i.bmy = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i483, align 2, !tbaa !20
  %.not.i.3.i511 = icmp eq i16 %i.bmy, 0
  br i1 %.not.i.3.i511, label %bb.gf, label %.lr.ph47.i.i507

bb.gf:                                            ; preds = %bb.ge
  %i.bmz = add i16 %i.bfr, -3
  %i.bna = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i484, align 4, !tbaa !20
  %.not.i.4.i512 = icmp eq i16 %i.bna, 0
  br i1 %.not.i.4.i512, label %bb.gg, label %.lr.ph47.i.i507

bb.gg:                                            ; preds = %bb.gf
  %i.bnb = add i16 %i.bfr, -4
  %i.bnc = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i485, align 2, !tbaa !20
  %.not.i.5.i513 = icmp eq i16 %i.bnc, 0
  br i1 %.not.i.5.i513, label %bb.gh, label %.lr.ph47.i.i507

bb.gh:                                            ; preds = %bb.gg
  %i.bnd = add i16 %i.bfr, -5
  %i.bne = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i486, align 8, !tbaa !20
  %.not.i.6.i514 = icmp eq i16 %i.bne, 0
  br i1 %.not.i.6.i514, label %bb.gi, label %.lr.ph47.i.i507

bb.gi:                                            ; preds = %bb.gh
  %i.bnf = add i16 %i.bfr, -6
  %i.bng = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i487, align 2, !tbaa !20
  %.not.i.7.i515 = icmp eq i16 %i.bng, 0
  br i1 %.not.i.7.i515, label %bb.gj, label %.lr.ph47.i.i507

bb.gj:                                            ; preds = %bb.gi
  %i.bnh = add i16 %i.bfr, -7
  %i.bni = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i488, align 4, !tbaa !20
  %.not.i.8.i516 = icmp eq i16 %i.bni, 0
  br i1 %.not.i.8.i516, label %bb.gk, label %.lr.ph47.i.i507

bb.gk:                                            ; preds = %bb.gj
  %i.bnj = add i16 %i.bfr, -8
  %i.bnk = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i489, align 2, !tbaa !20
  %.not.i.9.i517 = icmp eq i16 %i.bnk, 0
  br i1 %.not.i.9.i517, label %bb.gl, label %.lr.ph47.i.i507

bb.gl:                                            ; preds = %bb.gk
  %i.bnl = add i16 %i.bfr, -9
  %i.bnm = load i16, ptr %i.m, align 16, !tbaa !20
  %.not.i.10.i518 = icmp eq i16 %i.bnm, 0
  br i1 %.not.i.10.i518, label %bb.gm, label %.lr.ph47.i.i507

bb.gm:                                            ; preds = %bb.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit528

.preheader.i.i502:                                ; preds = %bb.gc, %._crit_edge.i498
  %i.bnn = phi i16 [ %i.bmt, %._crit_edge.i498 ], [ %i.bmu, %bb.gc ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i503 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i490, %._crit_edge.i498 ], [ %indvars.iv73.i.lcssa.sroa.gep.i480, %bb.gc ] ; 2 uses
  %.03341.i.lcssa.i504 = phi i16 [ %i.bms, %._crit_edge.i498 ], [ %i.bfr, %bb.gc ]
  %i.bno = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.i504, ptr %i.bno, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.ea, i64 22
  store i16 %i.bnn, ptr %i.bnq, align 2, !tbaa !20
  %i.bnr = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i503, i64 -4
  %i.bns = load i16, ptr %i.bnr, align 2, !tbaa !20
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store i16 %i.bns, ptr %i.bnt, align 2, !tbaa !20
  %i.bnu = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i503, i64 -20
  %i.bnv = load <8 x i16>, ptr %i.bnu, align 2, !tbaa !20
  store <8 x i16> %i.bnv, ptr %i.bnp, align 2, !tbaa !20
  br label %addmag0.exit528

.lr.ph47.i.i507:                                  ; preds = %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd
  %.03341.i.lcssa.ph.i508 = phi i16 [ %i.bnl, %bb.gl ], [ %i.bnj, %bb.gk ], [ %i.bnh, %bb.gj ], [ %i.bnf, %bb.gi ], [ %i.bnd, %bb.gh ], [ %i.bnb, %bb.gg ], [ %i.bmz, %bb.gf ], [ %i.bmx, %bb.ge ], [ %i.bmv, %bb.gd ]
  %indvars.iv59.i.lcssa.ph.i509 = phi i64 [ 0, %bb.gl ], [ 2, %bb.gk ], [ 4, %bb.gj ], [ 6, %bb.gi ], [ 8, %bb.gh ], [ 10, %bb.gg ], [ 12, %bb.gf ], [ 14, %bb.ge ], [ 16, %bb.gd ] ; 3 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.ph.i508, ptr %i.bnw, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.bny = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i509
  %scevgep.i510 = getelementptr i8, ptr %i.ea, i64 %i.bny
  %i.bnz = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i509, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i510, ptr noundef nonnull align 16 dereferenceable(1) %i.m, i64 %i.bnz, i1 false), !tbaa !20
  %i.boa = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i509
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bnx, i8 0, i64 %i.boa, i1 false), !tbaa !20
  br label %addmag0.exit528

addmag0.exit528:                                  ; preds = %bb.gm, %.preheader.i.i502, %.lr.ph47.i.i507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  br label %add.exit34

bb.gn:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  %i.bob = sext i16 %i.bfs to i32                 ; 2 uses
  %i.boc = sext i16 %i.bfr to i32                 ; 3 uses
  %i.bod = sub nsw i32 %i.bob, %i.boc
  %i.boe = icmp slt i32 %i.bod, 10
  br i1 %i.boe, label %.lr.ph.i470, label %.lr.ph40.i442

.lr.ph.i470:                                      ; preds = %bb.gn
  %i.bof = sext i16 %i.bfs to i64
  %i.bog = sub nsw i32 0, %i.boc
  %i.boh = sext i32 %i.bog to i64
  %i.boi = add nsw i64 %i.bof, %i.boh             ; 2 uses
  %i.boj = add nsw i32 %i.boc, 10
  %i.bok = sub nsw i32 %i.boj, %i.bob             ; 5 uses
  %wide.trip.count.i471 = zext i32 %i.bok to i64  ; 2 uses
  %xtraiter1649 = and i64 %wide.trip.count.i471, 3 ; 3 uses
  %i.bol = add nsw i32 %i.bok, -1
  %i.bom = icmp ult i32 %i.bol, 3
  br i1 %i.bom, label %.epil.preheader1648, label %.lr.ph.i470.new

.lr.ph.i470.new:                                  ; preds = %.lr.ph.i470
  %unroll_iter1654 = and i64 %wide.trip.count.i471, 4294967292
  br label %bb.gp

.preheader.i478.unr-lcssa:                        ; preds = %bb.gp
  %lcmp.mod1651.not = icmp eq i64 %xtraiter1649, 0
  br i1 %lcmp.mod1651.not, label %.preheader.i478, label %.epil.preheader1648

.epil.preheader1648:                              ; preds = %.preheader.i478.unr-lcssa, %.lr.ph.i470
  %indvars.iv51.i472.epil.init = phi i64 [ 0, %.lr.ph.i470 ], [ %indvars.iv.next52.i475.3, %.preheader.i478.unr-lcssa ]
  %indvars.iv.i473.epil.init = phi i64 [ %i.boi, %.lr.ph.i470 ], [ %indvars.iv.next.i476.3, %.preheader.i478.unr-lcssa ]
  %.036.i474.epil.init = phi i64 [ 0, %.lr.ph.i470 ], [ %i.bre, %.preheader.i478.unr-lcssa ]
  %lcmp.mod1653 = icmp ne i64 %xtraiter1649, 0
  tail call void @llvm.assume(i1 %lcmp.mod1653)
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.epil.preheader1648
  %indvars.iv51.i472.epil = phi i64 [ %indvars.iv51.i472.epil.init, %.epil.preheader1648 ], [ %indvars.iv.next52.i475.epil, %bb.go ] ; 3 uses
  %indvars.iv.i473.epil = phi i64 [ %indvars.iv.i473.epil.init, %.epil.preheader1648 ], [ %indvars.iv.next.i476.epil, %bb.go ] ; 2 uses
  %.036.i474.epil = phi i64 [ %.036.i474.epil.init, %.epil.preheader1648 ], [ %i.box, %bb.go ]
  %epil.iter1650 = phi i64 [ 0, %.epil.preheader1648 ], [ %epil.iter1650.next, %bb.go ]
  %i.bon = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv51.i472.epil
  %i.boo = load i16, ptr %i.bon, align 2, !tbaa !20
  %i.bop = zext i16 %i.boo to i64
  %i.boq = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i473.epil
  %i.bor = load i16, ptr %i.boq, align 2, !tbaa !20
  %i.bos = zext i16 %i.bor to i64
  %i.bot = add nuw nsw i64 %.036.i474.epil, %i.bop
  %i.bou = add nuw nsw i64 %i.bot, %i.bos         ; 2 uses
  %i.bov = trunc i64 %i.bou to i16
  %i.bow = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv51.i472.epil
  store i16 %i.bov, ptr %i.bow, align 2, !tbaa !20
  %i.box = lshr i64 %i.bou, 16                    ; 2 uses
  %indvars.iv.next52.i475.epil = add nuw nsw i64 %indvars.iv51.i472.epil, 1
  %indvars.iv.next.i476.epil = add nsw i64 %indvars.iv.i473.epil, 1
  %epil.iter1650.next = add i64 %epil.iter1650, 1 ; 2 uses
  %epil.iter1650.cmp.not = icmp eq i64 %epil.iter1650.next, %xtraiter1649
  br i1 %epil.iter1650.cmp.not, label %.preheader.i478, label %bb.go, !llvm.loop !72

.preheader.i478:                                  ; preds = %bb.go, %.preheader.i478.unr-lcssa
  %.lcssa1503 = phi i64 [ %i.bre, %.preheader.i478.unr-lcssa ], [ %i.box, %bb.go ] ; 2 uses
  %i.boy = icmp samesign ult i32 %i.bok, 10
  br i1 %i.boy, label %.lr.ph40.i442, label %._crit_edge.i449

.lr.ph40.i442:                                    ; preds = %bb.gn, %.preheader.i478
  %.0.lcssa94.i443 = phi i64 [ %.lcssa1503, %.preheader.i478 ], [ 0, %bb.gn ] ; 2 uses
  %.027.lcssa93.i444 = phi i32 [ %i.bok, %.preheader.i478 ], [ 0, %bb.gn ] ; 2 uses
  %i.boz = zext nneg i32 %.027.lcssa93.i444 to i64 ; 3 uses
  %i.bpa = sub nsw i64 2, %i.boz
  %xtraiter1658 = and i64 %i.bpa, 7               ; 2 uses
  %lcmp.mod1659.not = icmp eq i64 %xtraiter1658, 0
  br i1 %lcmp.mod1659.not, label %.prol.loopexit1657, label %.prol.preheader1656

.prol.preheader1656:                              ; preds = %.lr.ph40.i442, %.prol.preheader1656
  %indvars.iv56.i445.prol = phi i64 [ %indvars.iv.next57.i447.prol, %.prol.preheader1656 ], [ %i.boz, %.lr.ph40.i442 ] ; 3 uses
  %.139.i446.prol = phi i64 [ %i.bph, %.prol.preheader1656 ], [ %.0.lcssa94.i443, %.lr.ph40.i442 ]
  %prol.iter1660 = phi i64 [ %prol.iter1660.next, %.prol.preheader1656 ], [ 0, %.lr.ph40.i442 ]
  %i.bpb = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv56.i445.prol
  %i.bpc = load i16, ptr %i.bpb, align 2, !tbaa !20
  %i.bpd = zext i16 %i.bpc to i64
  %i.bpe = add nuw nsw i64 %.139.i446.prol, %i.bpd ; 2 uses
  %i.bpf = trunc i64 %i.bpe to i16
  %i.bpg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv56.i445.prol
  store i16 %i.bpf, ptr %i.bpg, align 2, !tbaa !20
  %i.bph = lshr i64 %i.bpe, 16                    ; 3 uses
  %indvars.iv.next57.i447.prol = add nuw nsw i64 %indvars.iv56.i445.prol, 1 ; 2 uses
  %prol.iter1660.next = add i64 %prol.iter1660, 1 ; 2 uses
  %prol.iter1660.cmp.not = icmp eq i64 %prol.iter1660.next, %xtraiter1658
  br i1 %prol.iter1660.cmp.not, label %.prol.loopexit1657, label %.prol.preheader1656, !llvm.loop !73

.prol.loopexit1657:                               ; preds = %.prol.preheader1656, %.lr.ph40.i442
  %.lcssa1504.unr = phi i64 [ poison, %.lr.ph40.i442 ], [ %i.bph, %.prol.preheader1656 ]
  %indvars.iv56.i445.unr = phi i64 [ %i.boz, %.lr.ph40.i442 ], [ %indvars.iv.next57.i447.prol, %.prol.preheader1656 ]
  %.139.i446.unr = phi i64 [ %.0.lcssa94.i443, %.lr.ph40.i442 ], [ %i.bph, %.prol.preheader1656 ]
  %i.bpi = add nsw i32 %.027.lcssa93.i444, -3
  %i.bpj = icmp ult i32 %i.bpi, 7
  br i1 %i.bpj, label %._crit_edge.i449, label %.lr.ph40.i442.new

bb.gp:                                            ; preds = %bb.gp, %.lr.ph.i470.new
  %indvars.iv51.i472 = phi i64 [ 0, %.lr.ph.i470.new ], [ %indvars.iv.next52.i475.3, %bb.gp ] ; 6 uses
  %indvars.iv.i473 = phi i64 [ %i.boi, %.lr.ph.i470.new ], [ %indvars.iv.next.i476.3, %bb.gp ] ; 5 uses
  %.036.i474 = phi i64 [ 0, %.lr.ph.i470.new ], [ %i.bre, %bb.gp ]
  %niter1655 = phi i64 [ 0, %.lr.ph.i470.new ], [ %niter1655.next.3, %bb.gp ]
  %i.bpk = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv51.i472
  %i.bpl = load i16, ptr %i.bpk, align 4, !tbaa !20
  %i.bpm = zext i16 %i.bpl to i64
  %i.bpn = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i473
  %i.bpo = load i16, ptr %i.bpn, align 2, !tbaa !20
  %i.bpp = zext i16 %i.bpo to i64
  %i.bpq = add nuw nsw i64 %.036.i474, %i.bpm
  %i.bpr = add nuw nsw i64 %i.bpq, %i.bpp         ; 2 uses
  %i.bps = trunc i64 %i.bpr to i16
  %i.bpt = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv51.i472
  store i16 %i.bps, ptr %i.bpt, align 8, !tbaa !20
  %i.bpu = lshr i64 %i.bpr, 16
  %indvars.iv.next52.i475 = or disjoint i64 %indvars.iv51.i472, 1 ; 2 uses
  %i.bpv = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i475
  %i.bpw = load i16, ptr %i.bpv, align 2, !tbaa !20
  %i.bpx = zext i16 %i.bpw to i64
  %i.bpy = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i473
  %i.bpz = getelementptr i8, ptr %i.bpy, i64 2
  %i.bqa = load i16, ptr %i.bpz, align 2, !tbaa !20
  %i.bqb = zext i16 %i.bqa to i64
  %i.bqc = add nuw nsw i64 %i.bpu, %i.bpx
  %i.bqd = add nuw nsw i64 %i.bqc, %i.bqb         ; 2 uses
  %i.bqe = trunc i64 %i.bqd to i16
  %i.bqf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next52.i475
  store i16 %i.bqe, ptr %i.bqf, align 2, !tbaa !20
  %i.bqg = lshr i64 %i.bqd, 16
  %indvars.iv.next52.i475.1 = or disjoint i64 %indvars.iv51.i472, 2 ; 2 uses
  %i.bqh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i475.1
  %i.bqi = load i16, ptr %i.bqh, align 8, !tbaa !20
  %i.bqj = zext i16 %i.bqi to i64
  %i.bqk = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i473
  %i.bql = getelementptr i8, ptr %i.bqk, i64 4
  %i.bqm = load i16, ptr %i.bql, align 2, !tbaa !20
  %i.bqn = zext i16 %i.bqm to i64
  %i.bqo = add nuw nsw i64 %i.bqg, %i.bqj
  %i.bqp = add nuw nsw i64 %i.bqo, %i.bqn         ; 2 uses
  %i.bqq = trunc i64 %i.bqp to i16
  %i.bqr = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next52.i475.1
  store i16 %i.bqq, ptr %i.bqr, align 4, !tbaa !20
  %i.bqs = lshr i64 %i.bqp, 16
  %indvars.iv.next52.i475.2 = or disjoint i64 %indvars.iv51.i472, 3 ; 2 uses
  %i.bqt = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i475.2
  %i.bqu = load i16, ptr %i.bqt, align 2, !tbaa !20
  %i.bqv = zext i16 %i.bqu to i64
  %i.bqw = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i473
  %i.bqx = getelementptr i8, ptr %i.bqw, i64 6
  %i.bqy = load i16, ptr %i.bqx, align 2, !tbaa !20
  %i.bqz = zext i16 %i.bqy to i64
  %i.bra = add nuw nsw i64 %i.bqs, %i.bqv
  %i.brb = add nuw nsw i64 %i.bra, %i.bqz         ; 2 uses
  %i.brc = trunc i64 %i.brb to i16
  %i.brd = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next52.i475.2
  store i16 %i.brc, ptr %i.brd, align 2, !tbaa !20
  %i.bre = lshr i64 %i.brb, 16                    ; 3 uses
  %indvars.iv.next52.i475.3 = add nuw nsw i64 %indvars.iv51.i472, 4 ; 2 uses
  %indvars.iv.next.i476.3 = add nsw i64 %indvars.iv.i473, 4 ; 2 uses
  %niter1655.next.3 = add i64 %niter1655, 4       ; 2 uses
  %niter1655.ncmp.3 = icmp eq i64 %niter1655.next.3, %unroll_iter1654
  br i1 %niter1655.ncmp.3, label %.preheader.i478.unr-lcssa, label %bb.gp, !llvm.loop !5

.lr.ph40.i442.new:                                ; preds = %.prol.loopexit1657, %.lr.ph40.i442.new
  %indvars.iv56.i445 = phi i64 [ %indvars.iv.next57.i447.7, %.lr.ph40.i442.new ], [ %indvars.iv56.i445.unr, %.prol.loopexit1657 ] ; 10 uses
  %.139.i446 = phi i64 [ %i.bti, %.lr.ph40.i442.new ], [ %.139.i446.unr, %.prol.loopexit1657 ]
  %i.brf = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv56.i445
  %i.brg = load i16, ptr %i.brf, align 2, !tbaa !20
  %i.brh = zext i16 %i.brg to i64
  %i.bri = add nuw nsw i64 %.139.i446, %i.brh     ; 2 uses
  %i.brj = trunc i64 %i.bri to i16
  %i.brk = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv56.i445
  store i16 %i.brj, ptr %i.brk, align 2, !tbaa !20
  %i.brl = lshr i64 %i.bri, 16
  %indvars.iv.next57.i447 = add nuw nsw i64 %indvars.iv56.i445, 1 ; 2 uses
  %i.brm = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447
  %i.brn = load i16, ptr %i.brm, align 2, !tbaa !20
  %i.bro = zext i16 %i.brn to i64
  %i.brp = add nuw nsw i64 %i.brl, %i.bro         ; 2 uses
  %i.brq = trunc i64 %i.brp to i16
  %i.brr = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447
  store i16 %i.brq, ptr %i.brr, align 2, !tbaa !20
  %i.brs = lshr i64 %i.brp, 16
  %indvars.iv.next57.i447.1 = add nuw nsw i64 %indvars.iv56.i445, 2 ; 2 uses
  %i.brt = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.1
  %i.bru = load i16, ptr %i.brt, align 2, !tbaa !20
  %i.brv = zext i16 %i.bru to i64
  %i.brw = add nuw nsw i64 %i.brs, %i.brv         ; 2 uses
  %i.brx = trunc i64 %i.brw to i16
  %i.bry = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.1
  store i16 %i.brx, ptr %i.bry, align 2, !tbaa !20
  %i.brz = lshr i64 %i.brw, 16
  %indvars.iv.next57.i447.2 = add nuw nsw i64 %indvars.iv56.i445, 3 ; 2 uses
  %i.bsa = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.2
  %i.bsb = load i16, ptr %i.bsa, align 2, !tbaa !20
  %i.bsc = zext i16 %i.bsb to i64
  %i.bsd = add nuw nsw i64 %i.brz, %i.bsc         ; 2 uses
  %i.bse = trunc i64 %i.bsd to i16
  %i.bsf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.2
  store i16 %i.bse, ptr %i.bsf, align 2, !tbaa !20
  %i.bsg = lshr i64 %i.bsd, 16
  %indvars.iv.next57.i447.3 = add nuw nsw i64 %indvars.iv56.i445, 4 ; 2 uses
  %i.bsh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.3
  %i.bsi = load i16, ptr %i.bsh, align 2, !tbaa !20
  %i.bsj = zext i16 %i.bsi to i64
  %i.bsk = add nuw nsw i64 %i.bsg, %i.bsj         ; 2 uses
  %i.bsl = trunc i64 %i.bsk to i16
  %i.bsm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.3
  store i16 %i.bsl, ptr %i.bsm, align 2, !tbaa !20
  %i.bsn = lshr i64 %i.bsk, 16
  %indvars.iv.next57.i447.4 = add nuw nsw i64 %indvars.iv56.i445, 5 ; 2 uses
  %i.bso = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.4
  %i.bsp = load i16, ptr %i.bso, align 2, !tbaa !20
  %i.bsq = zext i16 %i.bsp to i64
  %i.bsr = add nuw nsw i64 %i.bsn, %i.bsq         ; 2 uses
  %i.bss = trunc i64 %i.bsr to i16
  %i.bst = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.4
  store i16 %i.bss, ptr %i.bst, align 2, !tbaa !20
  %i.bsu = lshr i64 %i.bsr, 16
  %indvars.iv.next57.i447.5 = add nuw nsw i64 %indvars.iv56.i445, 6 ; 2 uses
  %i.bsv = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.5
  %i.bsw = load i16, ptr %i.bsv, align 2, !tbaa !20
  %i.bsx = zext i16 %i.bsw to i64
  %i.bsy = add nuw nsw i64 %i.bsu, %i.bsx         ; 2 uses
  %i.bsz = trunc i64 %i.bsy to i16
  %i.bta = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.5
  store i16 %i.bsz, ptr %i.bta, align 2, !tbaa !20
  %i.btb = lshr i64 %i.bsy, 16
  %indvars.iv.next57.i447.6 = add nuw nsw i64 %indvars.iv56.i445, 7 ; 2 uses
  %i.btc = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i447.6
  %i.btd = load i16, ptr %i.btc, align 2, !tbaa !20
  %i.bte = zext i16 %i.btd to i64
  %i.btf = add nuw nsw i64 %i.btb, %i.bte         ; 2 uses
  %i.btg = trunc i64 %i.btf to i16
  %i.bth = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next57.i447.6
  store i16 %i.btg, ptr %i.bth, align 2, !tbaa !20
  %i.bti = lshr i64 %i.btf, 16                    ; 2 uses
  %indvars.iv.next57.i447.7 = add nuw nsw i64 %indvars.iv56.i445, 8 ; 2 uses
  %exitcond59.not.i448.7 = icmp eq i64 %indvars.iv.next57.i447.7, 10
  br i1 %exitcond59.not.i448.7, label %._crit_edge.i449, label %.lr.ph40.i442.new, !llvm.loop !6

._crit_edge.i449:                                 ; preds = %.prol.loopexit1657, %.lr.ph40.i442.new, %.preheader.i478
  %.128.lcssa.i450 = phi i32 [ %i.bok, %.preheader.i478 ], [ 10, %.lr.ph40.i442.new ], [ 10, %.prol.loopexit1657 ]
  %.1.lcssa.i451 = phi i64 [ %.lcssa1503, %.preheader.i478 ], [ %.lcssa1504.unr, %.prol.loopexit1657 ], [ %i.bti, %.lr.ph40.i442.new ]
  %i.btj = trunc nuw nsw i64 %.1.lcssa.i451 to i16
  %i.btk = zext nneg i32 %.128.lcssa.i450 to i64
  %i.btl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.btk
  store i16 %i.btj, ptr %i.btl, align 2, !tbaa !20
  %i.btm = add i16 %i.bfs, 1
  %i.btn = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i431, align 4, !tbaa !20 ; 2 uses
  %.not.i.i452 = icmp eq i16 %i.btn, 0
  br i1 %.not.i.i452, label %bb.gq, label %.preheader.i.i453

bb.gq:                                            ; preds = %._crit_edge.i449
  %i.bto = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i432, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i456 = icmp eq i16 %i.bto, 0
  br i1 %.not.i.1.i456, label %bb.gr, label %.preheader.i.i453

bb.gr:                                            ; preds = %bb.gq
  %i.btp = add i16 %i.bfs, -1
  %i.btq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i433, align 16, !tbaa !20
  %.not.i.2.i457 = icmp eq i16 %i.btq, 0
  br i1 %.not.i.2.i457, label %bb.gs, label %.lr.ph47.i.i458

bb.gs:                                            ; preds = %bb.gr
  %i.btr = add i16 %i.bfs, -2
  %i.bts = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i434, align 2, !tbaa !20
  %.not.i.3.i462 = icmp eq i16 %i.bts, 0
  br i1 %.not.i.3.i462, label %bb.gt, label %.lr.ph47.i.i458

bb.gt:                                            ; preds = %bb.gs
  %i.btt = add i16 %i.bfs, -3
  %i.btu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i435, align 4, !tbaa !20
  %.not.i.4.i463 = icmp eq i16 %i.btu, 0
  br i1 %.not.i.4.i463, label %bb.gu, label %.lr.ph47.i.i458

bb.gu:                                            ; preds = %bb.gt
  %i.btv = add i16 %i.bfs, -4
  %i.btw = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i436, align 2, !tbaa !20
  %.not.i.5.i464 = icmp eq i16 %i.btw, 0
  br i1 %.not.i.5.i464, label %bb.gv, label %.lr.ph47.i.i458

bb.gv:                                            ; preds = %bb.gu
  %i.btx = add i16 %i.bfs, -5
  %i.bty = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i437, align 8, !tbaa !20
  %.not.i.6.i465 = icmp eq i16 %i.bty, 0
  br i1 %.not.i.6.i465, label %bb.gw, label %.lr.ph47.i.i458

bb.gw:                                            ; preds = %bb.gv
  %i.btz = add i16 %i.bfs, -6
  %i.bua = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i438, align 2, !tbaa !20
  %.not.i.7.i466 = icmp eq i16 %i.bua, 0
  br i1 %.not.i.7.i466, label %bb.gx, label %.lr.ph47.i.i458

bb.gx:                                            ; preds = %bb.gw
  %i.bub = add i16 %i.bfs, -7
  %i.buc = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i439, align 4, !tbaa !20
  %.not.i.8.i467 = icmp eq i16 %i.buc, 0
  br i1 %.not.i.8.i467, label %bb.gy, label %.lr.ph47.i.i458

bb.gy:                                            ; preds = %bb.gx
  %i.bud = add i16 %i.bfs, -8
  %i.bue = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i440, align 2, !tbaa !20
  %.not.i.9.i468 = icmp eq i16 %i.bue, 0
  br i1 %.not.i.9.i468, label %bb.gz, label %.lr.ph47.i.i458

bb.gz:                                            ; preds = %bb.gy
  %i.buf = add i16 %i.bfs, -9
  %i.bug = load i16, ptr %i.n, align 16, !tbaa !20
  %.not.i.10.i469 = icmp eq i16 %i.bug, 0
  br i1 %.not.i.10.i469, label %bb.ha, label %.lr.ph47.i.i458

bb.ha:                                            ; preds = %bb.gz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit479

.preheader.i.i453:                                ; preds = %bb.gq, %._crit_edge.i449
  %i.buh = phi i16 [ %i.btn, %._crit_edge.i449 ], [ %i.bto, %bb.gq ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i454 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i441, %._crit_edge.i449 ], [ %indvars.iv73.i.lcssa.sroa.gep.i431, %bb.gq ] ; 2 uses
  %.03341.i.lcssa.i455 = phi i16 [ %i.btm, %._crit_edge.i449 ], [ %i.bfs, %bb.gq ]
  %i.bui = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.i455, ptr %i.bui, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.buj = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.buk = getelementptr inbounds nuw i8, ptr %i.ea, i64 22
  store i16 %i.buh, ptr %i.buk, align 2, !tbaa !20
  %i.bul = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i454, i64 -4
  %i.bum = load i16, ptr %i.bul, align 2, !tbaa !20
  %i.bun = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store i16 %i.bum, ptr %i.bun, align 2, !tbaa !20
  %i.buo = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i454, i64 -20
  %i.bup = load <8 x i16>, ptr %i.buo, align 2, !tbaa !20
  store <8 x i16> %i.bup, ptr %i.buj, align 2, !tbaa !20
  br label %addmag0.exit479

.lr.ph47.i.i458:                                  ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr
  %.03341.i.lcssa.ph.i459 = phi i16 [ %i.buf, %bb.gz ], [ %i.bud, %bb.gy ], [ %i.bub, %bb.gx ], [ %i.btz, %bb.gw ], [ %i.btx, %bb.gv ], [ %i.btv, %bb.gu ], [ %i.btt, %bb.gt ], [ %i.btr, %bb.gs ], [ %i.btp, %bb.gr ]
  %indvars.iv59.i.lcssa.ph.i460 = phi i64 [ 0, %bb.gz ], [ 2, %bb.gy ], [ 4, %bb.gx ], [ 6, %bb.gw ], [ 8, %bb.gv ], [ 10, %bb.gu ], [ 12, %bb.gt ], [ 14, %bb.gs ], [ 16, %bb.gr ] ; 3 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.ph.i459, ptr %i.buq, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.bur = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.bus = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i460
  %scevgep.i461 = getelementptr i8, ptr %i.ea, i64 %i.bus
  %i.but = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i460, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i461, ptr noundef nonnull align 16 dereferenceable(1) %i.n, i64 %i.but, i1 false), !tbaa !20
  %i.buu = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i460
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bur, i8 0, i64 %i.buu, i1 false), !tbaa !20
  br label %addmag0.exit479

addmag0.exit479:                                  ; preds = %bb.ha, %.preheader.i.i453, %.lr.ph47.i.i458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  br label %add.exit34

bb.hb:                                            ; preds = %abscmp.exit532
  br i1 %.014.i531, label %bb.hc, label %bb.hp

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.buv = sext i16 %i.bfr to i32                 ; 2 uses
  %i.buw = sext i16 %i.bfs to i32                 ; 3 uses
  %i.bux = sub nsw i32 %i.buv, %i.buw
  %i.buy = icmp slt i32 %i.bux, 10
  br i1 %i.buy, label %.lr.ph.i421, label %.lr.ph38.i398

.lr.ph.i421:                                      ; preds = %bb.hc
  %i.buz = sext i16 %i.bfr to i64
  %i.bva = sub nsw i32 0, %i.buw
  %i.bvb = sext i32 %i.bva to i64
  %i.bvc = add nsw i64 %i.bvb, %i.buz             ; 2 uses
  %reass.sub1163 = sub nsw i32 %i.buw, %i.buv     ; 3 uses
  %i.bvd = add nsw i32 %reass.sub1163, 10         ; 2 uses
  %wide.trip.count.i422 = zext i32 %i.bvd to i64  ; 2 uses
  %xtraiter1636 = and i64 %wide.trip.count.i422, 3 ; 3 uses
  %i.bve = add nsw i32 %reass.sub1163, 9
  %i.bvf = icmp ult i32 %i.bve, 3
  br i1 %i.bvf, label %.epil.preheader1635, label %.lr.ph.i421.new

.lr.ph.i421.new:                                  ; preds = %.lr.ph.i421
  %unroll_iter1641 = and i64 %wide.trip.count.i422, 4294967292
  br label %bb.he

.preheader.i429.unr-lcssa:                        ; preds = %bb.he
  %lcmp.mod1638.not = icmp eq i64 %xtraiter1636, 0
  br i1 %lcmp.mod1638.not, label %.preheader.i429, label %.epil.preheader1635

.epil.preheader1635:                              ; preds = %.preheader.i429.unr-lcssa, %.lr.ph.i421
  %indvars.iv45.i423.epil.init = phi i64 [ 0, %.lr.ph.i421 ], [ %indvars.iv.next46.i426.3, %.preheader.i429.unr-lcssa ]
  %indvars.iv.i424.epil.init = phi i64 [ %i.bvc, %.lr.ph.i421 ], [ %indvars.iv.next.i427.3, %.preheader.i429.unr-lcssa ]
  %.034.i425.epil.init = phi i64 [ 0, %.lr.ph.i421 ], [ %i.byj, %.preheader.i429.unr-lcssa ]
  %lcmp.mod1640 = icmp ne i64 %xtraiter1636, 0
  tail call void @llvm.assume(i1 %lcmp.mod1640)
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %.epil.preheader1635
  %indvars.iv45.i423.epil = phi i64 [ %indvars.iv45.i423.epil.init, %.epil.preheader1635 ], [ %indvars.iv.next46.i426.epil, %bb.hd ] ; 3 uses
  %indvars.iv.i424.epil = phi i64 [ %indvars.iv.i424.epil.init, %.epil.preheader1635 ], [ %indvars.iv.next.i427.epil, %bb.hd ] ; 2 uses
  %.034.i425.epil = phi i64 [ %.034.i425.epil.init, %.epil.preheader1635 ], [ %i.bvs, %bb.hd ]
  %epil.iter1637 = phi i64 [ 0, %.epil.preheader1635 ], [ %epil.iter1637.next, %bb.hd ]
  %i.bvg = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv45.i423.epil
  %i.bvh = load i16, ptr %i.bvg, align 2, !tbaa !20
  %i.bvi = zext i16 %i.bvh to i64
  %i.bvj = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i424.epil
  %i.bvk = load i16, ptr %i.bvj, align 2, !tbaa !20
  %i.bvl = zext i16 %i.bvk to i64
  %i.bvm = sub nsw i64 %i.bvi, %i.bvl
  %i.bvn = add nsw i64 %i.bvm, %.034.i425.epil    ; 2 uses
  %i.bvo = trunc i64 %i.bvn to i16
  %i.bvp = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv45.i423.epil
  store i16 %i.bvo, ptr %i.bvp, align 2, !tbaa !20
  %i.bvq = add nsw i64 %i.bvn, 2147483648
  %i.bvr = lshr i64 %i.bvq, 16
  %i.bvs = add nsw i64 %i.bvr, -32768             ; 2 uses
  %indvars.iv.next46.i426.epil = add nuw nsw i64 %indvars.iv45.i423.epil, 1
  %indvars.iv.next.i427.epil = add nsw i64 %indvars.iv.i424.epil, 1
  %epil.iter1637.next = add i64 %epil.iter1637, 1 ; 2 uses
  %epil.iter1637.cmp.not = icmp eq i64 %epil.iter1637.next, %xtraiter1636
  br i1 %epil.iter1637.cmp.not, label %.preheader.i429, label %bb.hd, !llvm.loop !74

.preheader.i429:                                  ; preds = %bb.hd, %.preheader.i429.unr-lcssa
  %.lcssa1502 = phi i64 [ %i.byj, %.preheader.i429.unr-lcssa ], [ %i.bvs, %bb.hd ]
  %i.bvt = icmp slt i32 %reass.sub1163, 0
  br i1 %i.bvt, label %.lr.ph38.i398, label %._crit_edge.i405

.lr.ph38.i398:                                    ; preds = %bb.hc, %.preheader.i429
  %.0.lcssa85.i399 = phi i64 [ %.lcssa1502, %.preheader.i429 ], [ 0, %bb.hc ] ; 2 uses
  %.025.lcssa84.i400 = phi i32 [ %i.bvd, %.preheader.i429 ], [ 0, %bb.hc ] ; 2 uses
  %i.bvu = zext i32 %.025.lcssa84.i400 to i64     ; 3 uses
  %i.bvv = sub nsw i64 2, %i.bvu
  %xtraiter1645 = and i64 %i.bvv, 3               ; 2 uses
  %lcmp.mod1646.not = icmp eq i64 %xtraiter1645, 0
  br i1 %lcmp.mod1646.not, label %.prol.loopexit1644, label %.prol.preheader1643

.prol.preheader1643:                              ; preds = %.lr.ph38.i398, %.prol.preheader1643
  %indvars.iv50.i401.prol = phi i64 [ %indvars.iv.next51.i403.prol, %.prol.preheader1643 ], [ %i.bvu, %.lr.ph38.i398 ] ; 3 uses
  %.137.i402.prol = phi i64 [ %i.bwe, %.prol.preheader1643 ], [ %.0.lcssa85.i399, %.lr.ph38.i398 ]
  %prol.iter1647 = phi i64 [ %prol.iter1647.next, %.prol.preheader1643 ], [ 0, %.lr.ph38.i398 ]
  %i.bvw = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv50.i401.prol
  %i.bvx = load i16, ptr %i.bvw, align 2, !tbaa !20
  %i.bvy = zext i16 %i.bvx to i64
  %i.bvz = add nsw i64 %.137.i402.prol, %i.bvy    ; 2 uses
  %i.bwa = trunc i64 %i.bvz to i16
  %i.bwb = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv50.i401.prol
  store i16 %i.bwa, ptr %i.bwb, align 2, !tbaa !20
  %i.bwc = add nsw i64 %i.bvz, 2147483648
  %i.bwd = lshr i64 %i.bwc, 16
  %i.bwe = add nsw i64 %i.bwd, -32768             ; 2 uses
  %indvars.iv.next51.i403.prol = add nuw nsw i64 %indvars.iv50.i401.prol, 1 ; 2 uses
  %prol.iter1647.next = add i64 %prol.iter1647, 1 ; 2 uses
  %prol.iter1647.cmp.not = icmp eq i64 %prol.iter1647.next, %xtraiter1645
  br i1 %prol.iter1647.cmp.not, label %.prol.loopexit1644, label %.prol.preheader1643, !llvm.loop !75

.prol.loopexit1644:                               ; preds = %.prol.preheader1643, %.lr.ph38.i398
  %indvars.iv50.i401.unr = phi i64 [ %i.bvu, %.lr.ph38.i398 ], [ %indvars.iv.next51.i403.prol, %.prol.preheader1643 ]
  %.137.i402.unr = phi i64 [ %.0.lcssa85.i399, %.lr.ph38.i398 ], [ %i.bwe, %.prol.preheader1643 ]
  %i.bwf = add nsw i32 %.025.lcssa84.i400, -7
  %i.bwg = icmp ult i32 %i.bwf, 3
  br i1 %i.bwg, label %._crit_edge.i405, label %.lr.ph38.i398.new

bb.he:                                            ; preds = %bb.he, %.lr.ph.i421.new
  %indvars.iv45.i423 = phi i64 [ 0, %.lr.ph.i421.new ], [ %indvars.iv.next46.i426.3, %bb.he ] ; 6 uses
  %indvars.iv.i424 = phi i64 [ %i.bvc, %.lr.ph.i421.new ], [ %indvars.iv.next.i427.3, %bb.he ] ; 5 uses
  %.034.i425 = phi i64 [ 0, %.lr.ph.i421.new ], [ %i.byj, %bb.he ]
  %niter1642 = phi i64 [ 0, %.lr.ph.i421.new ], [ %niter1642.next.3, %bb.he ]
  %i.bwh = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv45.i423
  %i.bwi = load i16, ptr %i.bwh, align 4, !tbaa !20
  %i.bwj = zext i16 %i.bwi to i64
  %i.bwk = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i424
  %i.bwl = load i16, ptr %i.bwk, align 2, !tbaa !20
  %i.bwm = zext i16 %i.bwl to i64
  %i.bwn = sub nsw i64 %i.bwj, %i.bwm
  %i.bwo = add nsw i64 %i.bwn, %.034.i425         ; 2 uses
  %i.bwp = trunc i64 %i.bwo to i16
  %i.bwq = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv45.i423
  store i16 %i.bwp, ptr %i.bwq, align 8, !tbaa !20
  %i.bwr = add nsw i64 %i.bwo, 2147483648
  %i.bws = lshr i64 %i.bwr, 16
  %i.bwt = add nsw i64 %i.bws, -32768
  %indvars.iv.next46.i426 = or disjoint i64 %indvars.iv45.i423, 1 ; 2 uses
  %i.bwu = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i426
  %i.bwv = load i16, ptr %i.bwu, align 2, !tbaa !20
  %i.bww = zext i16 %i.bwv to i64
  %i.bwx = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i424
  %i.bwy = getelementptr i8, ptr %i.bwx, i64 2
  %i.bwz = load i16, ptr %i.bwy, align 2, !tbaa !20
  %i.bxa = zext i16 %i.bwz to i64
  %i.bxb = sub nsw i64 %i.bww, %i.bxa
  %i.bxc = add nsw i64 %i.bxb, %i.bwt             ; 2 uses
  %i.bxd = trunc i64 %i.bxc to i16
  %i.bxe = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next46.i426
  store i16 %i.bxd, ptr %i.bxe, align 2, !tbaa !20
  %i.bxf = add nsw i64 %i.bxc, 2147483648
  %i.bxg = lshr i64 %i.bxf, 16
  %i.bxh = add nsw i64 %i.bxg, -32768
  %indvars.iv.next46.i426.1 = or disjoint i64 %indvars.iv45.i423, 2 ; 2 uses
  %i.bxi = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i426.1
  %i.bxj = load i16, ptr %i.bxi, align 8, !tbaa !20
  %i.bxk = zext i16 %i.bxj to i64
  %i.bxl = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i424
  %i.bxm = getelementptr i8, ptr %i.bxl, i64 4
  %i.bxn = load i16, ptr %i.bxm, align 2, !tbaa !20
  %i.bxo = zext i16 %i.bxn to i64
  %i.bxp = sub nsw i64 %i.bxk, %i.bxo
  %i.bxq = add nsw i64 %i.bxp, %i.bxh             ; 2 uses
  %i.bxr = trunc i64 %i.bxq to i16
  %i.bxs = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next46.i426.1
  store i16 %i.bxr, ptr %i.bxs, align 4, !tbaa !20
  %i.bxt = add nsw i64 %i.bxq, 2147483648
  %i.bxu = lshr i64 %i.bxt, 16
  %i.bxv = add nsw i64 %i.bxu, -32768
  %indvars.iv.next46.i426.2 = or disjoint i64 %indvars.iv45.i423, 3 ; 2 uses
  %i.bxw = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i426.2
  %i.bxx = load i16, ptr %i.bxw, align 2, !tbaa !20
  %i.bxy = zext i16 %i.bxx to i64
  %i.bxz = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i424
  %i.bya = getelementptr i8, ptr %i.bxz, i64 6
  %i.byb = load i16, ptr %i.bya, align 2, !tbaa !20
  %i.byc = zext i16 %i.byb to i64
  %i.byd = sub nsw i64 %i.bxy, %i.byc
  %i.bye = add nsw i64 %i.byd, %i.bxv             ; 2 uses
  %i.byf = trunc i64 %i.bye to i16
  %i.byg = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next46.i426.2
  store i16 %i.byf, ptr %i.byg, align 2, !tbaa !20
  %i.byh = add nsw i64 %i.bye, 2147483648
  %i.byi = lshr i64 %i.byh, 16
  %i.byj = add nsw i64 %i.byi, -32768             ; 3 uses
  %indvars.iv.next46.i426.3 = add nuw nsw i64 %indvars.iv45.i423, 4 ; 2 uses
  %indvars.iv.next.i427.3 = add nsw i64 %indvars.iv.i424, 4 ; 2 uses
  %niter1642.next.3 = add i64 %niter1642, 4       ; 2 uses
  %niter1642.ncmp.3 = icmp eq i64 %niter1642.next.3, %unroll_iter1641
  br i1 %niter1642.ncmp.3, label %.preheader.i429.unr-lcssa, label %bb.he, !llvm.loop !3

.lr.ph38.i398.new:                                ; preds = %.prol.loopexit1644, %.lr.ph38.i398.new
  %indvars.iv50.i401 = phi i64 [ %indvars.iv.next51.i403.3, %.lr.ph38.i398.new ], [ %indvars.iv50.i401.unr, %.prol.loopexit1644 ] ; 6 uses
  %.137.i402 = phi i64 [ %i.bzt, %.lr.ph38.i398.new ], [ %.137.i402.unr, %.prol.loopexit1644 ]
  %i.byk = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv50.i401
  %i.byl = load i16, ptr %i.byk, align 2, !tbaa !20
  %i.bym = zext i16 %i.byl to i64
  %i.byn = add nsw i64 %.137.i402, %i.bym         ; 2 uses
  %i.byo = trunc i64 %i.byn to i16
  %i.byp = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv50.i401
  store i16 %i.byo, ptr %i.byp, align 2, !tbaa !20
  %i.byq = add nsw i64 %i.byn, 2147483648
  %i.byr = lshr i64 %i.byq, 16
  %i.bys = add nsw i64 %i.byr, -32768
  %indvars.iv.next51.i403 = add nuw nsw i64 %indvars.iv50.i401, 1 ; 2 uses
  %i.byt = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i403
  %i.byu = load i16, ptr %i.byt, align 2, !tbaa !20
  %i.byv = zext i16 %i.byu to i64
  %i.byw = add nsw i64 %i.bys, %i.byv             ; 2 uses
  %i.byx = trunc i64 %i.byw to i16
  %i.byy = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next51.i403
  store i16 %i.byx, ptr %i.byy, align 2, !tbaa !20
  %i.byz = add nsw i64 %i.byw, 2147483648
  %i.bza = lshr i64 %i.byz, 16
  %i.bzb = add nsw i64 %i.bza, -32768
  %indvars.iv.next51.i403.1 = add nuw nsw i64 %indvars.iv50.i401, 2 ; 2 uses
  %i.bzc = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i403.1
  %i.bzd = load i16, ptr %i.bzc, align 2, !tbaa !20
  %i.bze = zext i16 %i.bzd to i64
  %i.bzf = add nsw i64 %i.bzb, %i.bze             ; 2 uses
  %i.bzg = trunc i64 %i.bzf to i16
  %i.bzh = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next51.i403.1
  store i16 %i.bzg, ptr %i.bzh, align 2, !tbaa !20
  %i.bzi = add nsw i64 %i.bzf, 2147483648
  %i.bzj = lshr i64 %i.bzi, 16
  %i.bzk = add nsw i64 %i.bzj, -32768
  %indvars.iv.next51.i403.2 = add nuw nsw i64 %indvars.iv50.i401, 3 ; 2 uses
  %i.bzl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i403.2
  %i.bzm = load i16, ptr %i.bzl, align 2, !tbaa !20
  %i.bzn = zext i16 %i.bzm to i64
  %i.bzo = add nsw i64 %i.bzk, %i.bzn             ; 2 uses
  %i.bzp = trunc i64 %i.bzo to i16
  %i.bzq = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next51.i403.2
  store i16 %i.bzp, ptr %i.bzq, align 2, !tbaa !20
  %i.bzr = add nsw i64 %i.bzo, 2147483648
  %i.bzs = lshr i64 %i.bzr, 16
  %i.bzt = add nsw i64 %i.bzs, -32768
  %indvars.iv.next51.i403.3 = add nuw nsw i64 %indvars.iv50.i401, 4 ; 2 uses
  %exitcond53.not.i404.3 = icmp eq i64 %indvars.iv.next51.i403.3, 10
  br i1 %exitcond53.not.i404.3, label %._crit_edge.i405, label %.lr.ph38.i398.new, !llvm.loop !4

._crit_edge.i405:                                 ; preds = %.prol.loopexit1644, %.lr.ph38.i398.new, %.preheader.i429
  %i.bzu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i389, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i406 = icmp eq i16 %i.bzu, 0
  br i1 %.not.i.not.not.i406, label %bb.hf, label %.preheader.i.i407

bb.hf:                                            ; preds = %._crit_edge.i405
  %i.bzv = add i16 %i.bfr, -1
  %i.bzw = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i390, align 16, !tbaa !20
  %.not.i.1.i408 = icmp eq i16 %i.bzw, 0
  br i1 %.not.i.1.i408, label %bb.hg, label %.lr.ph47.i.i409

bb.hg:                                            ; preds = %bb.hf
  %i.bzx = add i16 %i.bfr, -2
  %i.bzy = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i391, align 2, !tbaa !20
  %.not.i.2.i413 = icmp eq i16 %i.bzy, 0
  br i1 %.not.i.2.i413, label %bb.hh, label %.lr.ph47.i.i409

bb.hh:                                            ; preds = %bb.hg
  %i.bzz = add i16 %i.bfr, -3
  %i.caa = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i392, align 4, !tbaa !20
  %.not.i.3.i414 = icmp eq i16 %i.caa, 0
  br i1 %.not.i.3.i414, label %bb.hi, label %.lr.ph47.i.i409

bb.hi:                                            ; preds = %bb.hh
  %i.cab = add i16 %i.bfr, -4
  %i.cac = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i393, align 2, !tbaa !20
  %.not.i.4.i415 = icmp eq i16 %i.cac, 0
  br i1 %.not.i.4.i415, label %bb.hj, label %.lr.ph47.i.i409

bb.hj:                                            ; preds = %bb.hi
  %i.cad = add i16 %i.bfr, -5
  %i.cae = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i394, align 8, !tbaa !20
  %.not.i.5.i416 = icmp eq i16 %i.cae, 0
  br i1 %.not.i.5.i416, label %bb.hk, label %.lr.ph47.i.i409

bb.hk:                                            ; preds = %bb.hj
  %i.caf = add i16 %i.bfr, -6
  %i.cag = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i395, align 2, !tbaa !20
  %.not.i.6.i417 = icmp eq i16 %i.cag, 0
  br i1 %.not.i.6.i417, label %bb.hl, label %.lr.ph47.i.i409

bb.hl:                                            ; preds = %bb.hk
  %i.cah = add i16 %i.bfr, -7
  %i.cai = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i396, align 4, !tbaa !20
  %.not.i.7.i418 = icmp eq i16 %i.cai, 0
  br i1 %.not.i.7.i418, label %bb.hm, label %.lr.ph47.i.i409

bb.hm:                                            ; preds = %bb.hl
  %i.caj = add i16 %i.bfr, -8
  %i.cak = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i397, align 2, !tbaa !20
  %.not.i.8.i419 = icmp eq i16 %i.cak, 0
  br i1 %.not.i.8.i419, label %bb.hn, label %.lr.ph47.i.i409

bb.hn:                                            ; preds = %bb.hm
  %i.cal = add i16 %i.bfr, -9
  %i.cam = load i16, ptr %i.o, align 16, !tbaa !20
  %.not.i.9.i420 = icmp eq i16 %i.cam, 0
  br i1 %.not.i.9.i420, label %bb.ho, label %.lr.ph47.i.i409

bb.ho:                                            ; preds = %bb.hn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit430

.preheader.i.i407:                                ; preds = %._crit_edge.i405
  %i.can = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %i.bfr, ptr %i.can, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.cao = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.cap = getelementptr inbounds nuw i8, ptr %i.ea, i64 22
  store i16 %i.bzu, ptr %i.cap, align 2, !tbaa !20
  %i.caq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i390, align 16, !tbaa !20
  %i.car = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store i16 %i.caq, ptr %i.car, align 2, !tbaa !20
  %i.cas = load <8 x i16>, ptr %i.o, align 16, !tbaa !20
  store <8 x i16> %i.cas, ptr %i.cao, align 2, !tbaa !20
  br label %submag0.exit430

.lr.ph47.i.i409:                                  ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf
  %.03341.i.lcssa.ph.i410 = phi i16 [ %i.cal, %bb.hn ], [ %i.caj, %bb.hm ], [ %i.cah, %bb.hl ], [ %i.caf, %bb.hk ], [ %i.cad, %bb.hj ], [ %i.cab, %bb.hi ], [ %i.bzz, %bb.hh ], [ %i.bzx, %bb.hg ], [ %i.bzv, %bb.hf ]
  %indvars.iv59.i.lcssa.ph.i411 = phi i64 [ 0, %bb.hn ], [ 2, %bb.hm ], [ 4, %bb.hl ], [ 6, %bb.hk ], [ 8, %bb.hj ], [ 10, %bb.hi ], [ 12, %bb.hh ], [ 14, %bb.hg ], [ 16, %bb.hf ] ; 3 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.ph.i410, ptr %i.cat, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.ea, align 2, !tbaa !24
  %i.cau = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.cav = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i411
  %scevgep.i412 = getelementptr i8, ptr %i.ea, i64 %i.cav
  %i.caw = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i411, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i412, ptr noundef nonnull align 16 dereferenceable(1) %i.o, i64 %i.caw, i1 false), !tbaa !20
  %i.cax = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i411
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cau, i8 0, i64 %i.cax, i1 false), !tbaa !20
  br label %submag0.exit430

submag0.exit430:                                  ; preds = %bb.ho, %.preheader.i.i407, %.lr.ph47.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br label %add.exit34

bb.hp:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  %i.cay = sext i16 %i.bfs to i32                 ; 2 uses
  %i.caz = sext i16 %i.bfr to i32                 ; 3 uses
  %i.cba = sub nsw i32 %i.cay, %i.caz
  %i.cbb = icmp slt i32 %i.cba, 10
  br i1 %i.cbb, label %.lr.ph.i379, label %.lr.ph38.i356

.lr.ph.i379:                                      ; preds = %bb.hp
  %i.cbc = sext i16 %i.bfs to i64
  %i.cbd = sub nsw i32 0, %i.caz
  %i.cbe = sext i32 %i.cbd to i64
  %i.cbf = add nsw i64 %i.cbc, %i.cbe             ; 2 uses
  %i.cbg = add nsw i32 %i.caz, 10
  %i.cbh = sub nsw i32 %i.cbg, %i.cay             ; 4 uses
  %wide.trip.count.i380 = zext i32 %i.cbh to i64  ; 2 uses
  %xtraiter1623 = and i64 %wide.trip.count.i380, 3 ; 3 uses
  %i.cbi = add nsw i32 %i.cbh, -1
  %i.cbj = icmp ult i32 %i.cbi, 3
  br i1 %i.cbj, label %.epil.preheader1622, label %.lr.ph.i379.new

.lr.ph.i379.new:                                  ; preds = %.lr.ph.i379
  %unroll_iter1628 = and i64 %wide.trip.count.i380, 4294967292
  br label %bb.hr

.preheader.i387.unr-lcssa:                        ; preds = %bb.hr
  %lcmp.mod1625.not = icmp eq i64 %xtraiter1623, 0
  br i1 %lcmp.mod1625.not, label %.preheader.i387, label %.epil.preheader1622

.epil.preheader1622:                              ; preds = %.preheader.i387.unr-lcssa, %.lr.ph.i379
  %indvars.iv45.i381.epil.init = phi i64 [ 0, %.lr.ph.i379 ], [ %indvars.iv.next46.i384.3, %.preheader.i387.unr-lcssa ]
  %indvars.iv.i382.epil.init = phi i64 [ %i.cbf, %.lr.ph.i379 ], [ %indvars.iv.next.i385.3, %.preheader.i387.unr-lcssa ]
  %.034.i383.epil.init = phi i64 [ 0, %.lr.ph.i379 ], [ %i.cen, %.preheader.i387.unr-lcssa ]
  %lcmp.mod1627 = icmp ne i64 %xtraiter1623, 0
  tail call void @llvm.assume(i1 %lcmp.mod1627)
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hq, %.epil.preheader1622
  %indvars.iv45.i381.epil = phi i64 [ %indvars.iv45.i381.epil.init, %.epil.preheader1622 ], [ %indvars.iv.next46.i384.epil, %bb.hq ] ; 3 uses
  %indvars.iv.i382.epil = phi i64 [ %indvars.iv.i382.epil.init, %.epil.preheader1622 ], [ %indvars.iv.next.i385.epil, %bb.hq ] ; 2 uses
  %.034.i383.epil = phi i64 [ %.034.i383.epil.init, %.epil.preheader1622 ], [ %i.cbw, %bb.hq ]
  %epil.iter1624 = phi i64 [ 0, %.epil.preheader1622 ], [ %epil.iter1624.next, %bb.hq ]
  %i.cbk = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv45.i381.epil
  %i.cbl = load i16, ptr %i.cbk, align 2, !tbaa !20
  %i.cbm = zext i16 %i.cbl to i64
  %i.cbn = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i382.epil
  %i.cbo = load i16, ptr %i.cbn, align 2, !tbaa !20
  %i.cbp = zext i16 %i.cbo to i64
  %i.cbq = sub nsw i64 %i.cbm, %i.cbp
  %i.cbr = add nsw i64 %i.cbq, %.034.i383.epil    ; 2 uses
  %i.cbs = trunc i64 %i.cbr to i16
  %i.cbt = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv45.i381.epil
  store i16 %i.cbs, ptr %i.cbt, align 2, !tbaa !20
  %i.cbu = add nsw i64 %i.cbr, 2147483648
  %i.cbv = lshr i64 %i.cbu, 16
  %i.cbw = add nsw i64 %i.cbv, -32768             ; 2 uses
  %indvars.iv.next46.i384.epil = add nuw nsw i64 %indvars.iv45.i381.epil, 1
  %indvars.iv.next.i385.epil = add nsw i64 %indvars.iv.i382.epil, 1
  %epil.iter1624.next = add i64 %epil.iter1624, 1 ; 2 uses
  %epil.iter1624.cmp.not = icmp eq i64 %epil.iter1624.next, %xtraiter1623
  br i1 %epil.iter1624.cmp.not, label %.preheader.i387, label %bb.hq, !llvm.loop !76

.preheader.i387:                                  ; preds = %bb.hq, %.preheader.i387.unr-lcssa
  %.lcssa1501 = phi i64 [ %i.cen, %.preheader.i387.unr-lcssa ], [ %i.cbw, %bb.hq ]
  %i.cbx = icmp samesign ult i32 %i.cbh, 10
  br i1 %i.cbx, label %.lr.ph38.i356, label %._crit_edge.i363

.lr.ph38.i356:                                    ; preds = %bb.hp, %.preheader.i387
  %.0.lcssa85.i357 = phi i64 [ %.lcssa1501, %.preheader.i387 ], [ 0, %bb.hp ] ; 2 uses
  %.025.lcssa84.i358 = phi i32 [ %i.cbh, %.preheader.i387 ], [ 0, %bb.hp ] ; 2 uses
  %i.cby = zext nneg i32 %.025.lcssa84.i358 to i64 ; 3 uses
  %i.cbz = sub nsw i64 2, %i.cby
  %xtraiter1632 = and i64 %i.cbz, 3               ; 2 uses
  %lcmp.mod1633.not = icmp eq i64 %xtraiter1632, 0
  br i1 %lcmp.mod1633.not, label %.prol.loopexit1631, label %.prol.preheader1630

.prol.preheader1630:                              ; preds = %.lr.ph38.i356, %.prol.preheader1630
  %indvars.iv50.i359.prol = phi i64 [ %indvars.iv.next51.i361.prol, %.prol.preheader1630 ], [ %i.cby, %.lr.ph38.i356 ] ; 3 uses
  %.137.i360.prol = phi i64 [ %i.cci, %.prol.preheader1630 ], [ %.0.lcssa85.i357, %.lr.ph38.i356 ]
  %prol.iter1634 = phi i64 [ %prol.iter1634.next, %.prol.preheader1630 ], [ 0, %.lr.ph38.i356 ]
  %i.cca = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv50.i359.prol
  %i.ccb = load i16, ptr %i.cca, align 2, !tbaa !20
  %i.ccc = zext i16 %i.ccb to i64
  %i.ccd = add nsw i64 %.137.i360.prol, %i.ccc    ; 2 uses
  %i.cce = trunc i64 %i.ccd to i16
  %i.ccf = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv50.i359.prol
  store i16 %i.cce, ptr %i.ccf, align 2, !tbaa !20
  %i.ccg = add nsw i64 %i.ccd, 2147483648
  %i.cch = lshr i64 %i.ccg, 16
  %i.cci = add nsw i64 %i.cch, -32768             ; 2 uses
  %indvars.iv.next51.i361.prol = add nuw nsw i64 %indvars.iv50.i359.prol, 1 ; 2 uses
  %prol.iter1634.next = add i64 %prol.iter1634, 1 ; 2 uses
  %prol.iter1634.cmp.not = icmp eq i64 %prol.iter1634.next, %xtraiter1632
  br i1 %prol.iter1634.cmp.not, label %.prol.loopexit1631, label %.prol.preheader1630, !llvm.loop !77

.prol.loopexit1631:                               ; preds = %.prol.preheader1630, %.lr.ph38.i356
  %indvars.iv50.i359.unr = phi i64 [ %i.cby, %.lr.ph38.i356 ], [ %indvars.iv.next51.i361.prol, %.prol.preheader1630 ]
  %.137.i360.unr = phi i64 [ %.0.lcssa85.i357, %.lr.ph38.i356 ], [ %i.cci, %.prol.preheader1630 ]
  %i.ccj = add nsw i32 %.025.lcssa84.i358, -7
  %i.cck = icmp ult i32 %i.ccj, 3
  br i1 %i.cck, label %._crit_edge.i363, label %.lr.ph38.i356.new

bb.hr:                                            ; preds = %bb.hr, %.lr.ph.i379.new
  %indvars.iv45.i381 = phi i64 [ 0, %.lr.ph.i379.new ], [ %indvars.iv.next46.i384.3, %bb.hr ] ; 6 uses
  %indvars.iv.i382 = phi i64 [ %i.cbf, %.lr.ph.i379.new ], [ %indvars.iv.next.i385.3, %bb.hr ] ; 5 uses
  %.034.i383 = phi i64 [ 0, %.lr.ph.i379.new ], [ %i.cen, %bb.hr ]
  %niter1629 = phi i64 [ 0, %.lr.ph.i379.new ], [ %niter1629.next.3, %bb.hr ]
  %i.ccl = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv45.i381
  %i.ccm = load i16, ptr %i.ccl, align 4, !tbaa !20
  %i.ccn = zext i16 %i.ccm to i64
  %i.cco = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i382
  %i.ccp = load i16, ptr %i.cco, align 2, !tbaa !20
  %i.ccq = zext i16 %i.ccp to i64
  %i.ccr = sub nsw i64 %i.ccn, %i.ccq
  %i.ccs = add nsw i64 %i.ccr, %.034.i383         ; 2 uses
  %i.cct = trunc i64 %i.ccs to i16
  %i.ccu = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv45.i381
  store i16 %i.cct, ptr %i.ccu, align 8, !tbaa !20
  %i.ccv = add nsw i64 %i.ccs, 2147483648
  %i.ccw = lshr i64 %i.ccv, 16
  %i.ccx = add nsw i64 %i.ccw, -32768
  %indvars.iv.next46.i384 = or disjoint i64 %indvars.iv45.i381, 1 ; 2 uses
  %i.ccy = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i384
  %i.ccz = load i16, ptr %i.ccy, align 2, !tbaa !20
  %i.cda = zext i16 %i.ccz to i64
  %i.cdb = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i382
  %i.cdc = getelementptr i8, ptr %i.cdb, i64 2
  %i.cdd = load i16, ptr %i.cdc, align 2, !tbaa !20
  %i.cde = zext i16 %i.cdd to i64
  %i.cdf = sub nsw i64 %i.cda, %i.cde
  %i.cdg = add nsw i64 %i.cdf, %i.ccx             ; 2 uses
  %i.cdh = trunc i64 %i.cdg to i16
  %i.cdi = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next46.i384
  store i16 %i.cdh, ptr %i.cdi, align 2, !tbaa !20
  %i.cdj = add nsw i64 %i.cdg, 2147483648
  %i.cdk = lshr i64 %i.cdj, 16
  %i.cdl = add nsw i64 %i.cdk, -32768
  %indvars.iv.next46.i384.1 = or disjoint i64 %indvars.iv45.i381, 2 ; 2 uses
  %i.cdm = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i384.1
  %i.cdn = load i16, ptr %i.cdm, align 8, !tbaa !20
  %i.cdo = zext i16 %i.cdn to i64
  %i.cdp = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i382
  %i.cdq = getelementptr i8, ptr %i.cdp, i64 4
  %i.cdr = load i16, ptr %i.cdq, align 2, !tbaa !20
  %i.cds = zext i16 %i.cdr to i64
  %i.cdt = sub nsw i64 %i.cdo, %i.cds
  %i.cdu = add nsw i64 %i.cdt, %i.cdl             ; 2 uses
  %i.cdv = trunc i64 %i.cdu to i16
  %i.cdw = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next46.i384.1
  store i16 %i.cdv, ptr %i.cdw, align 4, !tbaa !20
  %i.cdx = add nsw i64 %i.cdu, 2147483648
  %i.cdy = lshr i64 %i.cdx, 16
  %i.cdz = add nsw i64 %i.cdy, -32768
  %indvars.iv.next46.i384.2 = or disjoint i64 %indvars.iv45.i381, 3 ; 2 uses
  %i.cea = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i384.2
  %i.ceb = load i16, ptr %i.cea, align 2, !tbaa !20
  %i.cec = zext i16 %i.ceb to i64
  %i.ced = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i382
  %i.cee = getelementptr i8, ptr %i.ced, i64 6
  %i.cef = load i16, ptr %i.cee, align 2, !tbaa !20
  %i.ceg = zext i16 %i.cef to i64
  %i.ceh = sub nsw i64 %i.cec, %i.ceg
  %i.cei = add nsw i64 %i.ceh, %i.cdz             ; 2 uses
  %i.cej = trunc i64 %i.cei to i16
  %i.cek = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next46.i384.2
  store i16 %i.cej, ptr %i.cek, align 2, !tbaa !20
  %i.cel = add nsw i64 %i.cei, 2147483648
  %i.cem = lshr i64 %i.cel, 16
  %i.cen = add nsw i64 %i.cem, -32768             ; 3 uses
  %indvars.iv.next46.i384.3 = add nuw nsw i64 %indvars.iv45.i381, 4 ; 2 uses
  %indvars.iv.next.i385.3 = add nsw i64 %indvars.iv.i382, 4 ; 2 uses
  %niter1629.next.3 = add i64 %niter1629, 4       ; 2 uses
  %niter1629.ncmp.3 = icmp eq i64 %niter1629.next.3, %unroll_iter1628
  br i1 %niter1629.ncmp.3, label %.preheader.i387.unr-lcssa, label %bb.hr, !llvm.loop !3

.lr.ph38.i356.new:                                ; preds = %.prol.loopexit1631, %.lr.ph38.i356.new
  %indvars.iv50.i359 = phi i64 [ %indvars.iv.next51.i361.3, %.lr.ph38.i356.new ], [ %indvars.iv50.i359.unr, %.prol.loopexit1631 ] ; 6 uses
  %.137.i360 = phi i64 [ %i.cfx, %.lr.ph38.i356.new ], [ %.137.i360.unr, %.prol.loopexit1631 ]
  %i.ceo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv50.i359
  %i.cep = load i16, ptr %i.ceo, align 2, !tbaa !20
  %i.ceq = zext i16 %i.cep to i64
  %i.cer = add nsw i64 %.137.i360, %i.ceq         ; 2 uses
  %i.ces = trunc i64 %i.cer to i16
  %i.cet = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv50.i359
  store i16 %i.ces, ptr %i.cet, align 2, !tbaa !20
  %i.ceu = add nsw i64 %i.cer, 2147483648
  %i.cev = lshr i64 %i.ceu, 16
  %i.cew = add nsw i64 %i.cev, -32768
  %indvars.iv.next51.i361 = add nuw nsw i64 %indvars.iv50.i359, 1 ; 2 uses
  %i.cex = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i361
  %i.cey = load i16, ptr %i.cex, align 2, !tbaa !20
  %i.cez = zext i16 %i.cey to i64
  %i.cfa = add nsw i64 %i.cew, %i.cez             ; 2 uses
  %i.cfb = trunc i64 %i.cfa to i16
  %i.cfc = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next51.i361
  store i16 %i.cfb, ptr %i.cfc, align 2, !tbaa !20
  %i.cfd = add nsw i64 %i.cfa, 2147483648
  %i.cfe = lshr i64 %i.cfd, 16
  %i.cff = add nsw i64 %i.cfe, -32768
  %indvars.iv.next51.i361.1 = add nuw nsw i64 %indvars.iv50.i359, 2 ; 2 uses
  %i.cfg = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i361.1
  %i.cfh = load i16, ptr %i.cfg, align 2, !tbaa !20
  %i.cfi = zext i16 %i.cfh to i64
  %i.cfj = add nsw i64 %i.cff, %i.cfi             ; 2 uses
  %i.cfk = trunc i64 %i.cfj to i16
  %i.cfl = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next51.i361.1
  store i16 %i.cfk, ptr %i.cfl, align 2, !tbaa !20
  %i.cfm = add nsw i64 %i.cfj, 2147483648
  %i.cfn = lshr i64 %i.cfm, 16
  %i.cfo = add nsw i64 %i.cfn, -32768
  %indvars.iv.next51.i361.2 = add nuw nsw i64 %indvars.iv50.i359, 3 ; 2 uses
  %i.cfp = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i361.2
  %i.cfq = load i16, ptr %i.cfp, align 2, !tbaa !20
  %i.cfr = zext i16 %i.cfq to i64
  %i.cfs = add nsw i64 %i.cfo, %i.cfr             ; 2 uses
  %i.cft = trunc i64 %i.cfs to i16
  %i.cfu = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next51.i361.2
  store i16 %i.cft, ptr %i.cfu, align 2, !tbaa !20
  %i.cfv = add nsw i64 %i.cfs, 2147483648
  %i.cfw = lshr i64 %i.cfv, 16
  %i.cfx = add nsw i64 %i.cfw, -32768
  %indvars.iv.next51.i361.3 = add nuw nsw i64 %indvars.iv50.i359, 4 ; 2 uses
  %exitcond53.not.i362.3 = icmp eq i64 %indvars.iv.next51.i361.3, 10
  br i1 %exitcond53.not.i362.3, label %._crit_edge.i363, label %.lr.ph38.i356.new, !llvm.loop !4

._crit_edge.i363:                                 ; preds = %.prol.loopexit1631, %.lr.ph38.i356.new, %.preheader.i387
  %i.cfy = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i347, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i364 = icmp eq i16 %i.cfy, 0
  br i1 %.not.i.not.not.i364, label %bb.hs, label %.preheader.i.i365

bb.hs:                                            ; preds = %._crit_edge.i363
  %i.cfz = add i16 %i.bfs, -1
  %i.cga = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i348, align 16, !tbaa !20
  %.not.i.1.i366 = icmp eq i16 %i.cga, 0
  br i1 %.not.i.1.i366, label %bb.ht, label %.lr.ph47.i.i367

bb.ht:                                            ; preds = %bb.hs
  %i.cgb = add i16 %i.bfs, -2
  %i.cgc = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i349, align 2, !tbaa !20
  %.not.i.2.i371 = icmp eq i16 %i.cgc, 0
  br i1 %.not.i.2.i371, label %bb.hu, label %.lr.ph47.i.i367

bb.hu:                                            ; preds = %bb.ht
  %i.cgd = add i16 %i.bfs, -3
  %i.cge = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i350, align 4, !tbaa !20
  %.not.i.3.i372 = icmp eq i16 %i.cge, 0
  br i1 %.not.i.3.i372, label %bb.hv, label %.lr.ph47.i.i367

bb.hv:                                            ; preds = %bb.hu
  %i.cgf = add i16 %i.bfs, -4
  %i.cgg = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i351, align 2, !tbaa !20
  %.not.i.4.i373 = icmp eq i16 %i.cgg, 0
  br i1 %.not.i.4.i373, label %bb.hw, label %.lr.ph47.i.i367

bb.hw:                                            ; preds = %bb.hv
  %i.cgh = add i16 %i.bfs, -5
  %i.cgi = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i352, align 8, !tbaa !20
  %.not.i.5.i374 = icmp eq i16 %i.cgi, 0
  br i1 %.not.i.5.i374, label %bb.hx, label %.lr.ph47.i.i367

bb.hx:                                            ; preds = %bb.hw
  %i.cgj = add i16 %i.bfs, -6
  %i.cgk = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i353, align 2, !tbaa !20
  %.not.i.6.i375 = icmp eq i16 %i.cgk, 0
  br i1 %.not.i.6.i375, label %bb.hy, label %.lr.ph47.i.i367

bb.hy:                                            ; preds = %bb.hx
  %i.cgl = add i16 %i.bfs, -7
  %i.cgm = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i354, align 4, !tbaa !20
  %.not.i.7.i376 = icmp eq i16 %i.cgm, 0
  br i1 %.not.i.7.i376, label %bb.hz, label %.lr.ph47.i.i367

bb.hz:                                            ; preds = %bb.hy
  %i.cgn = add i16 %i.bfs, -8
  %i.cgo = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i355, align 2, !tbaa !20
  %.not.i.8.i377 = icmp eq i16 %i.cgo, 0
  br i1 %.not.i.8.i377, label %bb.ia, label %.lr.ph47.i.i367

bb.ia:                                            ; preds = %bb.hz
  %i.cgp = add i16 %i.bfs, -9
  %i.cgq = load i16, ptr %i.p, align 16, !tbaa !20
  %.not.i.9.i378 = icmp eq i16 %i.cgq, 0
  br i1 %.not.i.9.i378, label %bb.ib, label %.lr.ph47.i.i367

bb.ib:                                            ; preds = %bb.ia
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit388

.preheader.i.i365:                                ; preds = %._crit_edge.i363
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %i.bfs, ptr %i.cgr, align 2, !tbaa !26
  store i16 %i.bfp, ptr %i.ea, align 2, !tbaa !24
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.ea, i64 22
end_hunk_2
begin_hunk_3_@fft0:bb.a
  %i.cgu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i348, align 16, !tbaa !20
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store i16 %i.cgu, ptr %i.cgv, align 2, !tbaa !20
  %i.cgw = load <8 x i16>, ptr %i.p, align 16, !tbaa !20
  store <8 x i16> %i.cgw, ptr %i.cgs, align 2, !tbaa !20
  br label %submag0.exit388

.lr.ph47.i.i367:                                  ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs
  %.03341.i.lcssa.ph.i368 = phi i16 [ %i.cgp, %bb.ia ], [ %i.cgn, %bb.hz ], [ %i.cgl, %bb.hy ], [ %i.cgj, %bb.hx ], [ %i.cgh, %bb.hw ], [ %i.cgf, %bb.hv ], [ %i.cgd, %bb.hu ], [ %i.cgb, %bb.ht ], [ %i.cfz, %bb.hs ]
  %indvars.iv59.i.lcssa.ph.i369 = phi i64 [ 0, %bb.ia ], [ 2, %bb.hz ], [ 4, %bb.hy ], [ 6, %bb.hx ], [ 8, %bb.hw ], [ 10, %bb.hv ], [ 12, %bb.hu ], [ 14, %bb.ht ], [ 16, %bb.hs ] ; 3 uses
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %.03341.i.lcssa.ph.i368, ptr %i.cgx, align 2, !tbaa !26
  store i16 %i.bfp, ptr %i.ea, align 2, !tbaa !24
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.cgz = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i369
  %scevgep.i370 = getelementptr i8, ptr %i.ea, i64 %i.cgz
  %i.cha = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i369, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i370, ptr noundef nonnull align 16 dereferenceable(1) %i.p, i64 %i.cha, i1 false), !tbaa !20
  %i.chb = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i369
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cgy, i8 0, i64 %i.chb, i1 false), !tbaa !20
  br label %submag0.exit388

submag0.exit388:                                  ; preds = %bb.ib, %.preheader.i.i365, %.lr.ph47.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  br label %add.exit34

add.exit34:                                       ; preds = %addmag0.exit528, %addmag0.exit479, %submag0.exit430, %submag0.exit388
  %i.chc = load i16, ptr %6, align 16, !tbaa !24  ; 13 uses
  %i.chd = load i16, ptr %12, align 16, !tbaa !24 ; 5 uses
  %i.che = icmp eq i16 %i.chc, %i.chd             ; 2 uses
  %i.chf = load i16, ptr %i.cs, align 2, !tbaa !26 ; 57 uses
  %i.chg = load i16, ptr %i.bw, align 2, !tbaa !26 ; 57 uses
  %i.chh = icmp sgt i16 %i.chf, %i.chg            ; 2 uses
  br i1 %i.chh, label %abscmp.exit718, label %bb.ic

bb.ic:                                            ; preds = %add.exit34
  %i.chi = icmp slt i16 %i.chf, %i.chg
  br i1 %i.chi, label %abscmp.exit718, label %.preheader.i715

.preheader.i715:                                  ; preds = %bb.ic
  %i.chj = load i16, ptr %i.cu, align 2, !tbaa !20 ; 2 uses
  %i.chk = load i16, ptr %i.by, align 2, !tbaa !20 ; 2 uses
  %i.chl = icmp ugt i16 %i.chj, %i.chk
  br i1 %i.chl, label %abscmp.exit718, label %bb.iu

bb.id:                                            ; preds = %bb.iu
  %i.chm = load i16, ptr %i.cv, align 4, !tbaa !20 ; 2 uses
  %i.chn = load i16, ptr %i.bz, align 4, !tbaa !20 ; 2 uses
  %i.cho = icmp ugt i16 %i.chm, %i.chn
  br i1 %i.cho, label %abscmp.exit718, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.chp = icmp ult i16 %i.chm, %i.chn
  br i1 %i.chp, label %abscmp.exit718, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.chq = load i16, ptr %i.cw, align 2, !tbaa !20 ; 2 uses
  %i.chr = load i16, ptr %i.ca, align 2, !tbaa !20 ; 2 uses
  %i.chs = icmp ugt i16 %i.chq, %i.chr
  br i1 %i.chs, label %abscmp.exit718, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.cht = icmp ult i16 %i.chq, %i.chr
  br i1 %i.cht, label %abscmp.exit718, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.chu = load i16, ptr %i.cx, align 16, !tbaa !20 ; 2 uses
  %i.chv = load i16, ptr %i.cb, align 16, !tbaa !20 ; 2 uses
  %i.chw = icmp ugt i16 %i.chu, %i.chv
  br i1 %i.chw, label %abscmp.exit718, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.chx = icmp ult i16 %i.chu, %i.chv
  br i1 %i.chx, label %abscmp.exit718, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.chy = load i16, ptr %i.cy, align 2, !tbaa !20 ; 2 uses
  %i.chz = load i16, ptr %i.cc, align 2, !tbaa !20 ; 2 uses
  %i.cia = icmp ugt i16 %i.chy, %i.chz
  br i1 %i.cia, label %abscmp.exit718, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.cib = icmp ult i16 %i.chy, %i.chz
  br i1 %i.cib, label %abscmp.exit718, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.cic = load i16, ptr %i.cz, align 4, !tbaa !20 ; 2 uses
  %i.cid = load i16, ptr %i.cd, align 4, !tbaa !20 ; 2 uses
  %i.cie = icmp ugt i16 %i.cic, %i.cid
  br i1 %i.cie, label %abscmp.exit718, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.cif = icmp ult i16 %i.cic, %i.cid
  br i1 %i.cif, label %abscmp.exit718, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.cig = load i16, ptr %i.da, align 2, !tbaa !20 ; 2 uses
  %i.cih = load i16, ptr %i.ce, align 2, !tbaa !20 ; 2 uses
  %i.cii = icmp ugt i16 %i.cig, %i.cih
  br i1 %i.cii, label %abscmp.exit718, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.cij = icmp ult i16 %i.cig, %i.cih
  br i1 %i.cij, label %abscmp.exit718, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.cik = load i16, ptr %i.db, align 8, !tbaa !20 ; 2 uses
  %i.cil = load i16, ptr %i.cf, align 8, !tbaa !20 ; 2 uses
  %i.cim = icmp ugt i16 %i.cik, %i.cil
  br i1 %i.cim, label %abscmp.exit718, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.cin = icmp ult i16 %i.cik, %i.cil
  br i1 %i.cin, label %abscmp.exit718, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.cio = load i16, ptr %i.dc, align 2, !tbaa !20 ; 2 uses
  %i.cip = load i16, ptr %i.cg, align 2, !tbaa !20 ; 2 uses
  %i.ciq = icmp ugt i16 %i.cio, %i.cip
  br i1 %i.ciq, label %abscmp.exit718, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.cir = icmp ult i16 %i.cio, %i.cip
  br i1 %i.cir, label %abscmp.exit718, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.cis = load i16, ptr %i.ct, align 4, !tbaa !20
  %i.cit = load i16, ptr %i.bx, align 4, !tbaa !20
  %i.ciu = icmp ugt i16 %i.cis, %i.cit
  br label %abscmp.exit718

bb.iu:                                            ; preds = %.preheader.i715
  %i.civ = icmp ult i16 %i.chj, %i.chk
  br i1 %i.civ, label %abscmp.exit718, label %bb.id

abscmp.exit718:                                   ; preds = %bb.it, %add.exit34, %bb.ic, %.preheader.i715, %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.io, %bb.ip, %bb.iq, %bb.ir, %bb.is, %bb.iu
  %.014.i717 = phi i1 [ false, %bb.ic ], [ true, %add.exit34 ], [ false, %bb.iu ], [ true, %.preheader.i715 ], [ false, %bb.iq ], [ true, %bb.id ], [ false, %bb.ie ], [ false, %bb.io ], [ true, %bb.if ], [ false, %bb.ig ], [ %i.ciu, %bb.it ], [ true, %bb.ih ], [ false, %bb.ii ], [ true, %bb.ip ], [ true, %bb.ij ], [ false, %bb.ik ], [ false, %bb.is ], [ true, %bb.il ], [ false, %bb.im ], [ true, %bb.ir ], [ true, %bb.in ] ; 2 uses
  br i1 %i.che, label %bb.iv, label %bb.jy

bb.iv:                                            ; preds = %abscmp.exit718
  br i1 %.014.i717, label %bb.iw, label %bb.jk

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.ciw = sext i16 %i.chf to i32                 ; 2 uses
  %i.cix = sext i16 %i.chg to i32                 ; 3 uses
  %i.ciy = sub nsw i32 %i.ciw, %i.cix
  %i.ciz = icmp slt i32 %i.ciy, 10
  br i1 %i.ciz, label %.lr.ph.i705, label %.lr.ph40.i677

.lr.ph.i705:                                      ; preds = %bb.iw
  %i.cja = sext i16 %i.chf to i64
  %i.cjb = sub nsw i32 0, %i.cix
  %i.cjc = sext i32 %i.cjb to i64
  %i.cjd = add nsw i64 %i.cjc, %i.cja             ; 2 uses
  %reass.sub1166 = sub nsw i32 %i.cix, %i.ciw     ; 3 uses
  %i.cje = add nsw i32 %reass.sub1166, 10         ; 3 uses
  %wide.trip.count.i706 = zext i32 %i.cje to i64  ; 2 uses
  %xtraiter1714 = and i64 %wide.trip.count.i706, 3 ; 3 uses
  %i.cjf = add nsw i32 %reass.sub1166, 9
  %i.cjg = icmp ult i32 %i.cjf, 3
  br i1 %i.cjg, label %.epil.preheader1713, label %.lr.ph.i705.new

.lr.ph.i705.new:                                  ; preds = %.lr.ph.i705
  %unroll_iter1719 = and i64 %wide.trip.count.i706, 4294967292
  br label %bb.iy

.preheader.i713.unr-lcssa:                        ; preds = %bb.iy
  %lcmp.mod1716.not = icmp eq i64 %xtraiter1714, 0
  br i1 %lcmp.mod1716.not, label %.preheader.i713, label %.epil.preheader1713

.epil.preheader1713:                              ; preds = %.preheader.i713.unr-lcssa, %.lr.ph.i705
  %indvars.iv51.i707.epil.init = phi i64 [ 0, %.lr.ph.i705 ], [ %indvars.iv.next52.i710.3, %.preheader.i713.unr-lcssa ]
  %indvars.iv.i708.epil.init = phi i64 [ %i.cjd, %.lr.ph.i705 ], [ %indvars.iv.next.i711.3, %.preheader.i713.unr-lcssa ]
  %.036.i709.epil.init = phi i64 [ 0, %.lr.ph.i705 ], [ %i.cly, %.preheader.i713.unr-lcssa ]
  %lcmp.mod1718 = icmp ne i64 %xtraiter1714, 0
  tail call void @llvm.assume(i1 %lcmp.mod1718)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.ix, %.epil.preheader1713
  %indvars.iv51.i707.epil = phi i64 [ %indvars.iv51.i707.epil.init, %.epil.preheader1713 ], [ %indvars.iv.next52.i710.epil, %bb.ix ] ; 3 uses
  %indvars.iv.i708.epil = phi i64 [ %indvars.iv.i708.epil.init, %.epil.preheader1713 ], [ %indvars.iv.next.i711.epil, %bb.ix ] ; 2 uses
  %.036.i709.epil = phi i64 [ %.036.i709.epil.init, %.epil.preheader1713 ], [ %i.cjr, %bb.ix ]
  %epil.iter1715 = phi i64 [ 0, %.epil.preheader1713 ], [ %epil.iter1715.next, %bb.ix ]
  %i.cjh = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv51.i707.epil
  %i.cji = load i16, ptr %i.cjh, align 2, !tbaa !20
  %i.cjj = zext i16 %i.cji to i64
  %i.cjk = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i708.epil
  %i.cjl = load i16, ptr %i.cjk, align 2, !tbaa !20
  %i.cjm = zext i16 %i.cjl to i64
  %i.cjn = add nuw nsw i64 %.036.i709.epil, %i.cjj
  %i.cjo = add nuw nsw i64 %i.cjn, %i.cjm         ; 2 uses
  %i.cjp = trunc i64 %i.cjo to i16
  %i.cjq = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv51.i707.epil
  store i16 %i.cjp, ptr %i.cjq, align 2, !tbaa !20
  %i.cjr = lshr i64 %i.cjo, 16                    ; 2 uses
  %indvars.iv.next52.i710.epil = add nuw nsw i64 %indvars.iv51.i707.epil, 1
  %indvars.iv.next.i711.epil = add nsw i64 %indvars.iv.i708.epil, 1
  %epil.iter1715.next = add i64 %epil.iter1715, 1 ; 2 uses
  %epil.iter1715.cmp.not = icmp eq i64 %epil.iter1715.next, %xtraiter1714
  br i1 %epil.iter1715.cmp.not, label %.preheader.i713, label %bb.ix, !llvm.loop !78

.preheader.i713:                                  ; preds = %bb.ix, %.preheader.i713.unr-lcssa
  %.lcssa1511 = phi i64 [ %i.cly, %.preheader.i713.unr-lcssa ], [ %i.cjr, %bb.ix ] ; 2 uses
  %i.cjs = icmp slt i32 %reass.sub1166, 0
  br i1 %i.cjs, label %.lr.ph40.i677, label %._crit_edge.i684

.lr.ph40.i677:                                    ; preds = %bb.iw, %.preheader.i713
  %.0.lcssa94.i678 = phi i64 [ %.lcssa1511, %.preheader.i713 ], [ 0, %bb.iw ] ; 2 uses
  %.027.lcssa93.i679 = phi i32 [ %i.cje, %.preheader.i713 ], [ 0, %bb.iw ] ; 2 uses
  %i.cjt = zext i32 %.027.lcssa93.i679 to i64     ; 3 uses
  %i.cju = sub nsw i64 2, %i.cjt
  %xtraiter1723 = and i64 %i.cju, 7               ; 2 uses
  %lcmp.mod1724.not = icmp eq i64 %xtraiter1723, 0
  br i1 %lcmp.mod1724.not, label %.prol.loopexit1722, label %.prol.preheader1721

.prol.preheader1721:                              ; preds = %.lr.ph40.i677, %.prol.preheader1721
  %indvars.iv56.i680.prol = phi i64 [ %indvars.iv.next57.i682.prol, %.prol.preheader1721 ], [ %i.cjt, %.lr.ph40.i677 ] ; 3 uses
  %.139.i681.prol = phi i64 [ %i.ckb, %.prol.preheader1721 ], [ %.0.lcssa94.i678, %.lr.ph40.i677 ]
  %prol.iter1725 = phi i64 [ %prol.iter1725.next, %.prol.preheader1721 ], [ 0, %.lr.ph40.i677 ]
  %i.cjv = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv56.i680.prol
  %i.cjw = load i16, ptr %i.cjv, align 2, !tbaa !20
  %i.cjx = zext i16 %i.cjw to i64
  %i.cjy = add nuw nsw i64 %.139.i681.prol, %i.cjx ; 2 uses
  %i.cjz = trunc i64 %i.cjy to i16
  %i.cka = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv56.i680.prol
  store i16 %i.cjz, ptr %i.cka, align 2, !tbaa !20
  %i.ckb = lshr i64 %i.cjy, 16                    ; 3 uses
  %indvars.iv.next57.i682.prol = add nuw nsw i64 %indvars.iv56.i680.prol, 1 ; 2 uses
  %prol.iter1725.next = add i64 %prol.iter1725, 1 ; 2 uses
  %prol.iter1725.cmp.not = icmp eq i64 %prol.iter1725.next, %xtraiter1723
  br i1 %prol.iter1725.cmp.not, label %.prol.loopexit1722, label %.prol.preheader1721, !llvm.loop !79

.prol.loopexit1722:                               ; preds = %.prol.preheader1721, %.lr.ph40.i677
  %.lcssa1512.unr = phi i64 [ poison, %.lr.ph40.i677 ], [ %i.ckb, %.prol.preheader1721 ]
  %indvars.iv56.i680.unr = phi i64 [ %i.cjt, %.lr.ph40.i677 ], [ %indvars.iv.next57.i682.prol, %.prol.preheader1721 ]
  %.139.i681.unr = phi i64 [ %.0.lcssa94.i678, %.lr.ph40.i677 ], [ %i.ckb, %.prol.preheader1721 ]
  %i.ckc = add nsw i32 %.027.lcssa93.i679, -3
  %i.ckd = icmp ult i32 %i.ckc, 7
  br i1 %i.ckd, label %._crit_edge.i684, label %.lr.ph40.i677.new

bb.iy:                                            ; preds = %bb.iy, %.lr.ph.i705.new
  %indvars.iv51.i707 = phi i64 [ 0, %.lr.ph.i705.new ], [ %indvars.iv.next52.i710.3, %bb.iy ] ; 6 uses
  %indvars.iv.i708 = phi i64 [ %i.cjd, %.lr.ph.i705.new ], [ %indvars.iv.next.i711.3, %bb.iy ] ; 5 uses
  %.036.i709 = phi i64 [ 0, %.lr.ph.i705.new ], [ %i.cly, %bb.iy ]
  %niter1720 = phi i64 [ 0, %.lr.ph.i705.new ], [ %niter1720.next.3, %bb.iy ]
  %i.cke = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv51.i707
  %i.ckf = load i16, ptr %i.cke, align 4, !tbaa !20
  %i.ckg = zext i16 %i.ckf to i64
  %i.ckh = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i708
  %i.cki = load i16, ptr %i.ckh, align 2, !tbaa !20
  %i.ckj = zext i16 %i.cki to i64
  %i.ckk = add nuw nsw i64 %.036.i709, %i.ckg
  %i.ckl = add nuw nsw i64 %i.ckk, %i.ckj         ; 2 uses
  %i.ckm = trunc i64 %i.ckl to i16
  %i.ckn = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv51.i707
  store i16 %i.ckm, ptr %i.ckn, align 8, !tbaa !20
  %i.cko = lshr i64 %i.ckl, 16
  %indvars.iv.next52.i710 = or disjoint i64 %indvars.iv51.i707, 1 ; 2 uses
  %i.ckp = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i710
  %i.ckq = load i16, ptr %i.ckp, align 2, !tbaa !20
  %i.ckr = zext i16 %i.ckq to i64
  %i.cks = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i708
  %i.ckt = getelementptr i8, ptr %i.cks, i64 2
  %i.cku = load i16, ptr %i.ckt, align 2, !tbaa !20
  %i.ckv = zext i16 %i.cku to i64
  %i.ckw = add nuw nsw i64 %i.cko, %i.ckr
  %i.ckx = add nuw nsw i64 %i.ckw, %i.ckv         ; 2 uses
  %i.cky = trunc i64 %i.ckx to i16
  %i.ckz = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next52.i710
  store i16 %i.cky, ptr %i.ckz, align 2, !tbaa !20
  %i.cla = lshr i64 %i.ckx, 16
  %indvars.iv.next52.i710.1 = or disjoint i64 %indvars.iv51.i707, 2 ; 2 uses
  %i.clb = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i710.1
  %i.clc = load i16, ptr %i.clb, align 8, !tbaa !20
  %i.cld = zext i16 %i.clc to i64
  %i.cle = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i708
  %i.clf = getelementptr i8, ptr %i.cle, i64 4
  %i.clg = load i16, ptr %i.clf, align 2, !tbaa !20
  %i.clh = zext i16 %i.clg to i64
  %i.cli = add nuw nsw i64 %i.cla, %i.cld
  %i.clj = add nuw nsw i64 %i.cli, %i.clh         ; 2 uses
  %i.clk = trunc i64 %i.clj to i16
  %i.cll = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next52.i710.1
  store i16 %i.clk, ptr %i.cll, align 4, !tbaa !20
  %i.clm = lshr i64 %i.clj, 16
  %indvars.iv.next52.i710.2 = or disjoint i64 %indvars.iv51.i707, 3 ; 2 uses
  %i.cln = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i710.2
  %i.clo = load i16, ptr %i.cln, align 2, !tbaa !20
  %i.clp = zext i16 %i.clo to i64
  %i.clq = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i708
  %i.clr = getelementptr i8, ptr %i.clq, i64 6
  %i.cls = load i16, ptr %i.clr, align 2, !tbaa !20
  %i.clt = zext i16 %i.cls to i64
  %i.clu = add nuw nsw i64 %i.clm, %i.clp
  %i.clv = add nuw nsw i64 %i.clu, %i.clt         ; 2 uses
  %i.clw = trunc i64 %i.clv to i16
  %i.clx = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next52.i710.2
  store i16 %i.clw, ptr %i.clx, align 2, !tbaa !20
  %i.cly = lshr i64 %i.clv, 16                    ; 3 uses
  %indvars.iv.next52.i710.3 = add nuw nsw i64 %indvars.iv51.i707, 4 ; 2 uses
  %indvars.iv.next.i711.3 = add nsw i64 %indvars.iv.i708, 4 ; 2 uses
  %niter1720.next.3 = add i64 %niter1720, 4       ; 2 uses
  %niter1720.ncmp.3 = icmp eq i64 %niter1720.next.3, %unroll_iter1719
  br i1 %niter1720.ncmp.3, label %.preheader.i713.unr-lcssa, label %bb.iy, !llvm.loop !5

.lr.ph40.i677.new:                                ; preds = %.prol.loopexit1722, %.lr.ph40.i677.new
  %indvars.iv56.i680 = phi i64 [ %indvars.iv.next57.i682.7, %.lr.ph40.i677.new ], [ %indvars.iv56.i680.unr, %.prol.loopexit1722 ] ; 10 uses
  %.139.i681 = phi i64 [ %i.coc, %.lr.ph40.i677.new ], [ %.139.i681.unr, %.prol.loopexit1722 ]
  %i.clz = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv56.i680
  %i.cma = load i16, ptr %i.clz, align 2, !tbaa !20
  %i.cmb = zext i16 %i.cma to i64
  %i.cmc = add nuw nsw i64 %.139.i681, %i.cmb     ; 2 uses
  %i.cmd = trunc i64 %i.cmc to i16
  %i.cme = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv56.i680
  store i16 %i.cmd, ptr %i.cme, align 2, !tbaa !20
  %i.cmf = lshr i64 %i.cmc, 16
  %indvars.iv.next57.i682 = add nuw nsw i64 %indvars.iv56.i680, 1 ; 2 uses
  %i.cmg = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682
  %i.cmh = load i16, ptr %i.cmg, align 2, !tbaa !20
  %i.cmi = zext i16 %i.cmh to i64
  %i.cmj = add nuw nsw i64 %i.cmf, %i.cmi         ; 2 uses
  %i.cmk = trunc i64 %i.cmj to i16
  %i.cml = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682
  store i16 %i.cmk, ptr %i.cml, align 2, !tbaa !20
  %i.cmm = lshr i64 %i.cmj, 16
  %indvars.iv.next57.i682.1 = add nuw nsw i64 %indvars.iv56.i680, 2 ; 2 uses
  %i.cmn = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.1
  %i.cmo = load i16, ptr %i.cmn, align 2, !tbaa !20
  %i.cmp = zext i16 %i.cmo to i64
  %i.cmq = add nuw nsw i64 %i.cmm, %i.cmp         ; 2 uses
  %i.cmr = trunc i64 %i.cmq to i16
  %i.cms = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.1
  store i16 %i.cmr, ptr %i.cms, align 2, !tbaa !20
  %i.cmt = lshr i64 %i.cmq, 16
  %indvars.iv.next57.i682.2 = add nuw nsw i64 %indvars.iv56.i680, 3 ; 2 uses
  %i.cmu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.2
  %i.cmv = load i16, ptr %i.cmu, align 2, !tbaa !20
  %i.cmw = zext i16 %i.cmv to i64
  %i.cmx = add nuw nsw i64 %i.cmt, %i.cmw         ; 2 uses
  %i.cmy = trunc i64 %i.cmx to i16
  %i.cmz = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.2
  store i16 %i.cmy, ptr %i.cmz, align 2, !tbaa !20
  %i.cna = lshr i64 %i.cmx, 16
  %indvars.iv.next57.i682.3 = add nuw nsw i64 %indvars.iv56.i680, 4 ; 2 uses
  %i.cnb = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.3
  %i.cnc = load i16, ptr %i.cnb, align 2, !tbaa !20
  %i.cnd = zext i16 %i.cnc to i64
  %i.cne = add nuw nsw i64 %i.cna, %i.cnd         ; 2 uses
  %i.cnf = trunc i64 %i.cne to i16
  %i.cng = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.3
  store i16 %i.cnf, ptr %i.cng, align 2, !tbaa !20
  %i.cnh = lshr i64 %i.cne, 16
  %indvars.iv.next57.i682.4 = add nuw nsw i64 %indvars.iv56.i680, 5 ; 2 uses
  %i.cni = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.4
  %i.cnj = load i16, ptr %i.cni, align 2, !tbaa !20
  %i.cnk = zext i16 %i.cnj to i64
  %i.cnl = add nuw nsw i64 %i.cnh, %i.cnk         ; 2 uses
  %i.cnm = trunc i64 %i.cnl to i16
  %i.cnn = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.4
  store i16 %i.cnm, ptr %i.cnn, align 2, !tbaa !20
  %i.cno = lshr i64 %i.cnl, 16
  %indvars.iv.next57.i682.5 = add nuw nsw i64 %indvars.iv56.i680, 6 ; 2 uses
  %i.cnp = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.5
  %i.cnq = load i16, ptr %i.cnp, align 2, !tbaa !20
  %i.cnr = zext i16 %i.cnq to i64
  %i.cns = add nuw nsw i64 %i.cno, %i.cnr         ; 2 uses
  %i.cnt = trunc i64 %i.cns to i16
  %i.cnu = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.5
  store i16 %i.cnt, ptr %i.cnu, align 2, !tbaa !20
  %i.cnv = lshr i64 %i.cns, 16
  %indvars.iv.next57.i682.6 = add nuw nsw i64 %indvars.iv56.i680, 7 ; 2 uses
  %i.cnw = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i682.6
  %i.cnx = load i16, ptr %i.cnw, align 2, !tbaa !20
  %i.cny = zext i16 %i.cnx to i64
  %i.cnz = add nuw nsw i64 %i.cnv, %i.cny         ; 2 uses
  %i.coa = trunc i64 %i.cnz to i16
  %i.cob = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.next57.i682.6
  store i16 %i.coa, ptr %i.cob, align 2, !tbaa !20
  %i.coc = lshr i64 %i.cnz, 16                    ; 2 uses
  %indvars.iv.next57.i682.7 = add nuw nsw i64 %indvars.iv56.i680, 8 ; 2 uses
  %exitcond59.not.i683.7 = icmp eq i64 %indvars.iv.next57.i682.7, 10
  br i1 %exitcond59.not.i683.7, label %._crit_edge.i684, label %.lr.ph40.i677.new, !llvm.loop !6

._crit_edge.i684:                                 ; preds = %.prol.loopexit1722, %.lr.ph40.i677.new, %.preheader.i713
  %.128.lcssa.i685 = phi i32 [ %i.cje, %.preheader.i713 ], [ 10, %.lr.ph40.i677.new ], [ 10, %.prol.loopexit1722 ]
  %.1.lcssa.i686 = phi i64 [ %.lcssa1511, %.preheader.i713 ], [ %.lcssa1512.unr, %.prol.loopexit1722 ], [ %i.coc, %.lr.ph40.i677.new ]
  %i.cod = trunc nuw nsw i64 %.1.lcssa.i686 to i16
  %i.coe = zext nneg i32 %.128.lcssa.i685 to i64
  %i.cof = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.coe
  store i16 %i.cod, ptr %i.cof, align 2, !tbaa !20
  %i.cog = add i16 %i.chf, 1
  %i.coh = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i666, align 4, !tbaa !20 ; 2 uses
  %.not.i.i687 = icmp eq i16 %i.coh, 0
  br i1 %.not.i.i687, label %bb.iz, label %.preheader.i.i688

bb.iz:                                            ; preds = %._crit_edge.i684
  %i.coi = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i667, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i691 = icmp eq i16 %i.coi, 0
  br i1 %.not.i.1.i691, label %bb.ja, label %.preheader.i.i688

bb.ja:                                            ; preds = %bb.iz
  %i.coj = add i16 %i.chf, -1
  %i.cok = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i668, align 16, !tbaa !20
  %.not.i.2.i692 = icmp eq i16 %i.cok, 0
  br i1 %.not.i.2.i692, label %bb.jb, label %.lr.ph47.i.i693

bb.jb:                                            ; preds = %bb.ja
  %i.col = add i16 %i.chf, -2
  %i.com = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i669, align 2, !tbaa !20
  %.not.i.3.i697 = icmp eq i16 %i.com, 0
  br i1 %.not.i.3.i697, label %bb.jc, label %.lr.ph47.i.i693

bb.jc:                                            ; preds = %bb.jb
  %i.con = add i16 %i.chf, -3
  %i.coo = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i670, align 4, !tbaa !20
  %.not.i.4.i698 = icmp eq i16 %i.coo, 0
  br i1 %.not.i.4.i698, label %bb.jd, label %.lr.ph47.i.i693

bb.jd:                                            ; preds = %bb.jc
  %i.cop = add i16 %i.chf, -4
  %i.coq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i671, align 2, !tbaa !20
  %.not.i.5.i699 = icmp eq i16 %i.coq, 0
  br i1 %.not.i.5.i699, label %bb.je, label %.lr.ph47.i.i693

bb.je:                                            ; preds = %bb.jd
  %i.cor = add i16 %i.chf, -5
  %i.cos = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i672, align 8, !tbaa !20
  %.not.i.6.i700 = icmp eq i16 %i.cos, 0
  br i1 %.not.i.6.i700, label %bb.jf, label %.lr.ph47.i.i693

bb.jf:                                            ; preds = %bb.je
  %i.cot = add i16 %i.chf, -6
  %i.cou = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i673, align 2, !tbaa !20
  %.not.i.7.i701 = icmp eq i16 %i.cou, 0
  br i1 %.not.i.7.i701, label %bb.jg, label %.lr.ph47.i.i693

bb.jg:                                            ; preds = %bb.jf
  %i.cov = add i16 %i.chf, -7
  %i.cow = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i674, align 4, !tbaa !20
  %.not.i.8.i702 = icmp eq i16 %i.cow, 0
  br i1 %.not.i.8.i702, label %bb.jh, label %.lr.ph47.i.i693

bb.jh:                                            ; preds = %bb.jg
  %i.cox = add i16 %i.chf, -8
  %i.coy = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i675, align 2, !tbaa !20
  %.not.i.9.i703 = icmp eq i16 %i.coy, 0
  br i1 %.not.i.9.i703, label %bb.ji, label %.lr.ph47.i.i693

bb.ji:                                            ; preds = %bb.jh
  %i.coz = add i16 %i.chf, -9
  %i.cpa = load i16, ptr %i.i, align 16, !tbaa !20
  %.not.i.10.i704 = icmp eq i16 %i.cpa, 0
  br i1 %.not.i.10.i704, label %bb.jj, label %.lr.ph47.i.i693

bb.jj:                                            ; preds = %bb.ji
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit714

.preheader.i.i688:                                ; preds = %bb.iz, %._crit_edge.i684
  %i.cpb = phi i16 [ %i.coh, %._crit_edge.i684 ], [ %i.coi, %bb.iz ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i689 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i676, %._crit_edge.i684 ], [ %indvars.iv73.i.lcssa.sroa.gep.i666, %bb.iz ] ; 2 uses
  %.03341.i.lcssa.i690 = phi i16 [ %i.cog, %._crit_edge.i684 ], [ %i.chf, %bb.iz ]
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.i690, ptr %i.cpc, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ec, align 2, !tbaa !24
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.ea, i64 46
  store i16 %i.cpb, ptr %i.cpe, align 2, !tbaa !20
  %i.cpf = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i689, i64 -4
  %i.cpg = load i16, ptr %i.cpf, align 2, !tbaa !20
  %i.cph = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  store i16 %i.cpg, ptr %i.cph, align 2, !tbaa !20
  %i.cpi = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i689, i64 -20
  %i.cpj = load <8 x i16>, ptr %i.cpi, align 2, !tbaa !20
  store <8 x i16> %i.cpj, ptr %i.cpd, align 2, !tbaa !20
  br label %addmag0.exit714

.lr.ph47.i.i693:                                  ; preds = %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja
  %.03341.i.lcssa.ph.i694 = phi i16 [ %i.coz, %bb.ji ], [ %i.cox, %bb.jh ], [ %i.cov, %bb.jg ], [ %i.cot, %bb.jf ], [ %i.cor, %bb.je ], [ %i.cop, %bb.jd ], [ %i.con, %bb.jc ], [ %i.col, %bb.jb ], [ %i.coj, %bb.ja ]
  %indvars.iv59.i.lcssa.ph.i695 = phi i64 [ 0, %bb.ji ], [ 2, %bb.jh ], [ 4, %bb.jg ], [ 6, %bb.jf ], [ 8, %bb.je ], [ 10, %bb.jd ], [ 12, %bb.jc ], [ 14, %bb.jb ], [ 16, %bb.ja ] ; 3 uses
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.ph.i694, ptr %i.cpk, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ec, align 2, !tbaa !24
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.cpm = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i695
  %scevgep.i696 = getelementptr i8, ptr %i.ec, i64 %i.cpm
  %i.cpn = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i695, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i696, ptr noundef nonnull align 16 dereferenceable(1) %i.i, i64 %i.cpn, i1 false), !tbaa !20
  %i.cpo = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i695
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cpl, i8 0, i64 %i.cpo, i1 false), !tbaa !20
  br label %addmag0.exit714

addmag0.exit714:                                  ; preds = %bb.jj, %.preheader.i.i688, %.lr.ph47.i.i693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %add.exit35

bb.jk:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.cpp = sext i16 %i.chg to i32                 ; 2 uses
  %i.cpq = sext i16 %i.chf to i32                 ; 3 uses
  %i.cpr = sub nsw i32 %i.cpp, %i.cpq
  %i.cps = icmp slt i32 %i.cpr, 10
  br i1 %i.cps, label %.lr.ph.i656, label %.lr.ph40.i628

.lr.ph.i656:                                      ; preds = %bb.jk
  %i.cpt = sext i16 %i.chg to i64
  %i.cpu = sub nsw i32 0, %i.cpq
  %i.cpv = sext i32 %i.cpu to i64
  %i.cpw = add nsw i64 %i.cpt, %i.cpv             ; 2 uses
  %i.cpx = add nsw i32 %i.cpq, 10
  %i.cpy = sub nsw i32 %i.cpx, %i.cpp             ; 5 uses
  %wide.trip.count.i657 = zext i32 %i.cpy to i64  ; 2 uses
  %xtraiter1701 = and i64 %wide.trip.count.i657, 3 ; 3 uses
  %i.cpz = add nsw i32 %i.cpy, -1
  %i.cqa = icmp ult i32 %i.cpz, 3
  br i1 %i.cqa, label %.epil.preheader1700, label %.lr.ph.i656.new

.lr.ph.i656.new:                                  ; preds = %.lr.ph.i656
  %unroll_iter1706 = and i64 %wide.trip.count.i657, 4294967292
  br label %bb.jm

.preheader.i664.unr-lcssa:                        ; preds = %bb.jm
  %lcmp.mod1703.not = icmp eq i64 %xtraiter1701, 0
  br i1 %lcmp.mod1703.not, label %.preheader.i664, label %.epil.preheader1700

.epil.preheader1700:                              ; preds = %.preheader.i664.unr-lcssa, %.lr.ph.i656
  %indvars.iv51.i658.epil.init = phi i64 [ 0, %.lr.ph.i656 ], [ %indvars.iv.next52.i661.3, %.preheader.i664.unr-lcssa ]
  %indvars.iv.i659.epil.init = phi i64 [ %i.cpw, %.lr.ph.i656 ], [ %indvars.iv.next.i662.3, %.preheader.i664.unr-lcssa ]
  %.036.i660.epil.init = phi i64 [ 0, %.lr.ph.i656 ], [ %i.css, %.preheader.i664.unr-lcssa ]
  %lcmp.mod1705 = icmp ne i64 %xtraiter1701, 0
  tail call void @llvm.assume(i1 %lcmp.mod1705)
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jl, %.epil.preheader1700
  %indvars.iv51.i658.epil = phi i64 [ %indvars.iv51.i658.epil.init, %.epil.preheader1700 ], [ %indvars.iv.next52.i661.epil, %bb.jl ] ; 3 uses
  %indvars.iv.i659.epil = phi i64 [ %indvars.iv.i659.epil.init, %.epil.preheader1700 ], [ %indvars.iv.next.i662.epil, %bb.jl ] ; 2 uses
  %.036.i660.epil = phi i64 [ %.036.i660.epil.init, %.epil.preheader1700 ], [ %i.cql, %bb.jl ]
  %epil.iter1702 = phi i64 [ 0, %.epil.preheader1700 ], [ %epil.iter1702.next, %bb.jl ]
  %i.cqb = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv51.i658.epil
  %i.cqc = load i16, ptr %i.cqb, align 2, !tbaa !20
  %i.cqd = zext i16 %i.cqc to i64
  %i.cqe = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i659.epil
  %i.cqf = load i16, ptr %i.cqe, align 2, !tbaa !20
  %i.cqg = zext i16 %i.cqf to i64
  %i.cqh = add nuw nsw i64 %.036.i660.epil, %i.cqd
  %i.cqi = add nuw nsw i64 %i.cqh, %i.cqg         ; 2 uses
  %i.cqj = trunc i64 %i.cqi to i16
  %i.cqk = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv51.i658.epil
  store i16 %i.cqj, ptr %i.cqk, align 2, !tbaa !20
  %i.cql = lshr i64 %i.cqi, 16                    ; 2 uses
  %indvars.iv.next52.i661.epil = add nuw nsw i64 %indvars.iv51.i658.epil, 1
  %indvars.iv.next.i662.epil = add nsw i64 %indvars.iv.i659.epil, 1
  %epil.iter1702.next = add i64 %epil.iter1702, 1 ; 2 uses
  %epil.iter1702.cmp.not = icmp eq i64 %epil.iter1702.next, %xtraiter1701
  br i1 %epil.iter1702.cmp.not, label %.preheader.i664, label %bb.jl, !llvm.loop !80

.preheader.i664:                                  ; preds = %bb.jl, %.preheader.i664.unr-lcssa
  %.lcssa1509 = phi i64 [ %i.css, %.preheader.i664.unr-lcssa ], [ %i.cql, %bb.jl ] ; 2 uses
  %i.cqm = icmp samesign ult i32 %i.cpy, 10
  br i1 %i.cqm, label %.lr.ph40.i628, label %._crit_edge.i635

.lr.ph40.i628:                                    ; preds = %bb.jk, %.preheader.i664
  %.0.lcssa94.i629 = phi i64 [ %.lcssa1509, %.preheader.i664 ], [ 0, %bb.jk ] ; 2 uses
  %.027.lcssa93.i630 = phi i32 [ %i.cpy, %.preheader.i664 ], [ 0, %bb.jk ] ; 2 uses
  %i.cqn = zext nneg i32 %.027.lcssa93.i630 to i64 ; 3 uses
  %i.cqo = sub nsw i64 2, %i.cqn
  %xtraiter1710 = and i64 %i.cqo, 7               ; 2 uses
  %lcmp.mod1711.not = icmp eq i64 %xtraiter1710, 0
  br i1 %lcmp.mod1711.not, label %.prol.loopexit1709, label %.prol.preheader1708

.prol.preheader1708:                              ; preds = %.lr.ph40.i628, %.prol.preheader1708
  %indvars.iv56.i631.prol = phi i64 [ %indvars.iv.next57.i633.prol, %.prol.preheader1708 ], [ %i.cqn, %.lr.ph40.i628 ] ; 3 uses
  %.139.i632.prol = phi i64 [ %i.cqv, %.prol.preheader1708 ], [ %.0.lcssa94.i629, %.lr.ph40.i628 ]
  %prol.iter1712 = phi i64 [ %prol.iter1712.next, %.prol.preheader1708 ], [ 0, %.lr.ph40.i628 ]
  %i.cqp = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv56.i631.prol
  %i.cqq = load i16, ptr %i.cqp, align 2, !tbaa !20
  %i.cqr = zext i16 %i.cqq to i64
  %i.cqs = add nuw nsw i64 %.139.i632.prol, %i.cqr ; 2 uses
  %i.cqt = trunc i64 %i.cqs to i16
  %i.cqu = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv56.i631.prol
  store i16 %i.cqt, ptr %i.cqu, align 2, !tbaa !20
  %i.cqv = lshr i64 %i.cqs, 16                    ; 3 uses
  %indvars.iv.next57.i633.prol = add nuw nsw i64 %indvars.iv56.i631.prol, 1 ; 2 uses
  %prol.iter1712.next = add i64 %prol.iter1712, 1 ; 2 uses
  %prol.iter1712.cmp.not = icmp eq i64 %prol.iter1712.next, %xtraiter1710
  br i1 %prol.iter1712.cmp.not, label %.prol.loopexit1709, label %.prol.preheader1708, !llvm.loop !81

.prol.loopexit1709:                               ; preds = %.prol.preheader1708, %.lr.ph40.i628
  %.lcssa1510.unr = phi i64 [ poison, %.lr.ph40.i628 ], [ %i.cqv, %.prol.preheader1708 ]
  %indvars.iv56.i631.unr = phi i64 [ %i.cqn, %.lr.ph40.i628 ], [ %indvars.iv.next57.i633.prol, %.prol.preheader1708 ]
  %.139.i632.unr = phi i64 [ %.0.lcssa94.i629, %.lr.ph40.i628 ], [ %i.cqv, %.prol.preheader1708 ]
  %i.cqw = add nsw i32 %.027.lcssa93.i630, -3
  %i.cqx = icmp ult i32 %i.cqw, 7
  br i1 %i.cqx, label %._crit_edge.i635, label %.lr.ph40.i628.new

bb.jm:                                            ; preds = %bb.jm, %.lr.ph.i656.new
  %indvars.iv51.i658 = phi i64 [ 0, %.lr.ph.i656.new ], [ %indvars.iv.next52.i661.3, %bb.jm ] ; 6 uses
  %indvars.iv.i659 = phi i64 [ %i.cpw, %.lr.ph.i656.new ], [ %indvars.iv.next.i662.3, %bb.jm ] ; 5 uses
  %.036.i660 = phi i64 [ 0, %.lr.ph.i656.new ], [ %i.css, %bb.jm ]
  %niter1707 = phi i64 [ 0, %.lr.ph.i656.new ], [ %niter1707.next.3, %bb.jm ]
  %i.cqy = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv51.i658
  %i.cqz = load i16, ptr %i.cqy, align 4, !tbaa !20
  %i.cra = zext i16 %i.cqz to i64
  %i.crb = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i659
  %i.crc = load i16, ptr %i.crb, align 2, !tbaa !20
  %i.crd = zext i16 %i.crc to i64
  %i.cre = add nuw nsw i64 %.036.i660, %i.cra
  %i.crf = add nuw nsw i64 %i.cre, %i.crd         ; 2 uses
  %i.crg = trunc i64 %i.crf to i16
  %i.crh = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv51.i658
  store i16 %i.crg, ptr %i.crh, align 8, !tbaa !20
  %i.cri = lshr i64 %i.crf, 16
  %indvars.iv.next52.i661 = or disjoint i64 %indvars.iv51.i658, 1 ; 2 uses
  %i.crj = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i661
  %i.crk = load i16, ptr %i.crj, align 2, !tbaa !20
  %i.crl = zext i16 %i.crk to i64
  %i.crm = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i659
  %i.crn = getelementptr i8, ptr %i.crm, i64 2
  %i.cro = load i16, ptr %i.crn, align 2, !tbaa !20
  %i.crp = zext i16 %i.cro to i64
  %i.crq = add nuw nsw i64 %i.cri, %i.crl
  %i.crr = add nuw nsw i64 %i.crq, %i.crp         ; 2 uses
  %i.crs = trunc i64 %i.crr to i16
  %i.crt = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.i661
  store i16 %i.crs, ptr %i.crt, align 2, !tbaa !20
  %i.cru = lshr i64 %i.crr, 16
  %indvars.iv.next52.i661.1 = or disjoint i64 %indvars.iv51.i658, 2 ; 2 uses
  %i.crv = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i661.1
  %i.crw = load i16, ptr %i.crv, align 8, !tbaa !20
  %i.crx = zext i16 %i.crw to i64
  %i.cry = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i659
  %i.crz = getelementptr i8, ptr %i.cry, i64 4
  %i.csa = load i16, ptr %i.crz, align 2, !tbaa !20
  %i.csb = zext i16 %i.csa to i64
  %i.csc = add nuw nsw i64 %i.cru, %i.crx
  %i.csd = add nuw nsw i64 %i.csc, %i.csb         ; 2 uses
  %i.cse = trunc i64 %i.csd to i16
  %i.csf = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.i661.1
  store i16 %i.cse, ptr %i.csf, align 4, !tbaa !20
  %i.csg = lshr i64 %i.csd, 16
  %indvars.iv.next52.i661.2 = or disjoint i64 %indvars.iv51.i658, 3 ; 2 uses
  %i.csh = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i661.2
  %i.csi = load i16, ptr %i.csh, align 2, !tbaa !20
  %i.csj = zext i16 %i.csi to i64
  %i.csk = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i659
  %i.csl = getelementptr i8, ptr %i.csk, i64 6
  %i.csm = load i16, ptr %i.csl, align 2, !tbaa !20
  %i.csn = zext i16 %i.csm to i64
  %i.cso = add nuw nsw i64 %i.csg, %i.csj
  %i.csp = add nuw nsw i64 %i.cso, %i.csn         ; 2 uses
  %i.csq = trunc i64 %i.csp to i16
  %i.csr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next52.i661.2
  store i16 %i.csq, ptr %i.csr, align 2, !tbaa !20
  %i.css = lshr i64 %i.csp, 16                    ; 3 uses
  %indvars.iv.next52.i661.3 = add nuw nsw i64 %indvars.iv51.i658, 4 ; 2 uses
  %indvars.iv.next.i662.3 = add nsw i64 %indvars.iv.i659, 4 ; 2 uses
  %niter1707.next.3 = add i64 %niter1707, 4       ; 2 uses
  %niter1707.ncmp.3 = icmp eq i64 %niter1707.next.3, %unroll_iter1706
  br i1 %niter1707.ncmp.3, label %.preheader.i664.unr-lcssa, label %bb.jm, !llvm.loop !5

.lr.ph40.i628.new:                                ; preds = %.prol.loopexit1709, %.lr.ph40.i628.new
  %indvars.iv56.i631 = phi i64 [ %indvars.iv.next57.i633.7, %.lr.ph40.i628.new ], [ %indvars.iv56.i631.unr, %.prol.loopexit1709 ] ; 10 uses
  %.139.i632 = phi i64 [ %i.cuw, %.lr.ph40.i628.new ], [ %.139.i632.unr, %.prol.loopexit1709 ]
  %i.cst = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv56.i631
  %i.csu = load i16, ptr %i.cst, align 2, !tbaa !20
  %i.csv = zext i16 %i.csu to i64
  %i.csw = add nuw nsw i64 %.139.i632, %i.csv     ; 2 uses
  %i.csx = trunc i64 %i.csw to i16
  %i.csy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv56.i631
  store i16 %i.csx, ptr %i.csy, align 2, !tbaa !20
  %i.csz = lshr i64 %i.csw, 16
  %indvars.iv.next57.i633 = add nuw nsw i64 %indvars.iv56.i631, 1 ; 2 uses
  %i.cta = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633
  %i.ctb = load i16, ptr %i.cta, align 2, !tbaa !20
  %i.ctc = zext i16 %i.ctb to i64
  %i.ctd = add nuw nsw i64 %i.csz, %i.ctc         ; 2 uses
  %i.cte = trunc i64 %i.ctd to i16
  %i.ctf = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633
  store i16 %i.cte, ptr %i.ctf, align 2, !tbaa !20
  %i.ctg = lshr i64 %i.ctd, 16
  %indvars.iv.next57.i633.1 = add nuw nsw i64 %indvars.iv56.i631, 2 ; 2 uses
  %i.cth = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.1
  %i.cti = load i16, ptr %i.cth, align 2, !tbaa !20
  %i.ctj = zext i16 %i.cti to i64
  %i.ctk = add nuw nsw i64 %i.ctg, %i.ctj         ; 2 uses
  %i.ctl = trunc i64 %i.ctk to i16
  %i.ctm = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.1
  store i16 %i.ctl, ptr %i.ctm, align 2, !tbaa !20
  %i.ctn = lshr i64 %i.ctk, 16
  %indvars.iv.next57.i633.2 = add nuw nsw i64 %indvars.iv56.i631, 3 ; 2 uses
  %i.cto = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.2
  %i.ctp = load i16, ptr %i.cto, align 2, !tbaa !20
  %i.ctq = zext i16 %i.ctp to i64
  %i.ctr = add nuw nsw i64 %i.ctn, %i.ctq         ; 2 uses
  %i.cts = trunc i64 %i.ctr to i16
  %i.ctt = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.2
  store i16 %i.cts, ptr %i.ctt, align 2, !tbaa !20
  %i.ctu = lshr i64 %i.ctr, 16
  %indvars.iv.next57.i633.3 = add nuw nsw i64 %indvars.iv56.i631, 4 ; 2 uses
  %i.ctv = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.3
  %i.ctw = load i16, ptr %i.ctv, align 2, !tbaa !20
  %i.ctx = zext i16 %i.ctw to i64
  %i.cty = add nuw nsw i64 %i.ctu, %i.ctx         ; 2 uses
  %i.ctz = trunc i64 %i.cty to i16
  %i.cua = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.3
  store i16 %i.ctz, ptr %i.cua, align 2, !tbaa !20
  %i.cub = lshr i64 %i.cty, 16
  %indvars.iv.next57.i633.4 = add nuw nsw i64 %indvars.iv56.i631, 5 ; 2 uses
  %i.cuc = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.4
  %i.cud = load i16, ptr %i.cuc, align 2, !tbaa !20
  %i.cue = zext i16 %i.cud to i64
  %i.cuf = add nuw nsw i64 %i.cub, %i.cue         ; 2 uses
  %i.cug = trunc i64 %i.cuf to i16
  %i.cuh = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.4
  store i16 %i.cug, ptr %i.cuh, align 2, !tbaa !20
  %i.cui = lshr i64 %i.cuf, 16
  %indvars.iv.next57.i633.5 = add nuw nsw i64 %indvars.iv56.i631, 6 ; 2 uses
  %i.cuj = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.5
  %i.cuk = load i16, ptr %i.cuj, align 2, !tbaa !20
  %i.cul = zext i16 %i.cuk to i64
  %i.cum = add nuw nsw i64 %i.cui, %i.cul         ; 2 uses
  %i.cun = trunc i64 %i.cum to i16
  %i.cuo = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.5
  store i16 %i.cun, ptr %i.cuo, align 2, !tbaa !20
  %i.cup = lshr i64 %i.cum, 16
  %indvars.iv.next57.i633.6 = add nuw nsw i64 %indvars.iv56.i631, 7 ; 2 uses
  %i.cuq = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i633.6
  %i.cur = load i16, ptr %i.cuq, align 2, !tbaa !20
  %i.cus = zext i16 %i.cur to i64
  %i.cut = add nuw nsw i64 %i.cup, %i.cus         ; 2 uses
  %i.cuu = trunc i64 %i.cut to i16
  %i.cuv = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next57.i633.6
  store i16 %i.cuu, ptr %i.cuv, align 2, !tbaa !20
  %i.cuw = lshr i64 %i.cut, 16                    ; 2 uses
  %indvars.iv.next57.i633.7 = add nuw nsw i64 %indvars.iv56.i631, 8 ; 2 uses
  %exitcond59.not.i634.7 = icmp eq i64 %indvars.iv.next57.i633.7, 10
  br i1 %exitcond59.not.i634.7, label %._crit_edge.i635, label %.lr.ph40.i628.new, !llvm.loop !6

._crit_edge.i635:                                 ; preds = %.prol.loopexit1709, %.lr.ph40.i628.new, %.preheader.i664
  %.128.lcssa.i636 = phi i32 [ %i.cpy, %.preheader.i664 ], [ 10, %.lr.ph40.i628.new ], [ 10, %.prol.loopexit1709 ]
  %.1.lcssa.i637 = phi i64 [ %.lcssa1509, %.preheader.i664 ], [ %.lcssa1510.unr, %.prol.loopexit1709 ], [ %i.cuw, %.lr.ph40.i628.new ]
  %i.cux = trunc nuw nsw i64 %.1.lcssa.i637 to i16
  %i.cuy = zext nneg i32 %.128.lcssa.i636 to i64
  %i.cuz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cuy
  store i16 %i.cux, ptr %i.cuz, align 2, !tbaa !20
  %i.cva = add i16 %i.chg, 1
  %i.cvb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i617, align 4, !tbaa !20 ; 2 uses
  %.not.i.i638 = icmp eq i16 %i.cvb, 0
  br i1 %.not.i.i638, label %bb.jn, label %.preheader.i.i639

bb.jn:                                            ; preds = %._crit_edge.i635
  %i.cvc = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i618, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i642 = icmp eq i16 %i.cvc, 0
  br i1 %.not.i.1.i642, label %bb.jo, label %.preheader.i.i639

bb.jo:                                            ; preds = %bb.jn
  %i.cvd = add i16 %i.chg, -1
  %i.cve = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i619, align 16, !tbaa !20
  %.not.i.2.i643 = icmp eq i16 %i.cve, 0
  br i1 %.not.i.2.i643, label %bb.jp, label %.lr.ph47.i.i644

bb.jp:                                            ; preds = %bb.jo
  %i.cvf = add i16 %i.chg, -2
  %i.cvg = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i620, align 2, !tbaa !20
  %.not.i.3.i648 = icmp eq i16 %i.cvg, 0
  br i1 %.not.i.3.i648, label %bb.jq, label %.lr.ph47.i.i644

bb.jq:                                            ; preds = %bb.jp
  %i.cvh = add i16 %i.chg, -3
  %i.cvi = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i621, align 4, !tbaa !20
  %.not.i.4.i649 = icmp eq i16 %i.cvi, 0
  br i1 %.not.i.4.i649, label %bb.jr, label %.lr.ph47.i.i644

bb.jr:                                            ; preds = %bb.jq
  %i.cvj = add i16 %i.chg, -4
  %i.cvk = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i622, align 2, !tbaa !20
  %.not.i.5.i650 = icmp eq i16 %i.cvk, 0
  br i1 %.not.i.5.i650, label %bb.js, label %.lr.ph47.i.i644

bb.js:                                            ; preds = %bb.jr
  %i.cvl = add i16 %i.chg, -5
  %i.cvm = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i623, align 8, !tbaa !20
  %.not.i.6.i651 = icmp eq i16 %i.cvm, 0
  br i1 %.not.i.6.i651, label %bb.jt, label %.lr.ph47.i.i644

bb.jt:                                            ; preds = %bb.js
  %i.cvn = add i16 %i.chg, -6
  %i.cvo = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i624, align 2, !tbaa !20
  %.not.i.7.i652 = icmp eq i16 %i.cvo, 0
  br i1 %.not.i.7.i652, label %bb.ju, label %.lr.ph47.i.i644

bb.ju:                                            ; preds = %bb.jt
  %i.cvp = add i16 %i.chg, -7
  %i.cvq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i625, align 4, !tbaa !20
  %.not.i.8.i653 = icmp eq i16 %i.cvq, 0
  br i1 %.not.i.8.i653, label %bb.jv, label %.lr.ph47.i.i644

bb.jv:                                            ; preds = %bb.ju
  %i.cvr = add i16 %i.chg, -8
  %i.cvs = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i626, align 2, !tbaa !20
  %.not.i.9.i654 = icmp eq i16 %i.cvs, 0
  br i1 %.not.i.9.i654, label %bb.jw, label %.lr.ph47.i.i644

bb.jw:                                            ; preds = %bb.jv
  %i.cvt = add i16 %i.chg, -9
  %i.cvu = load i16, ptr %i.j, align 16, !tbaa !20
  %.not.i.10.i655 = icmp eq i16 %i.cvu, 0
  br i1 %.not.i.10.i655, label %bb.jx, label %.lr.ph47.i.i644

bb.jx:                                            ; preds = %bb.jw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit665

.preheader.i.i639:                                ; preds = %bb.jn, %._crit_edge.i635
  %i.cvv = phi i16 [ %i.cvb, %._crit_edge.i635 ], [ %i.cvc, %bb.jn ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i640 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i627, %._crit_edge.i635 ], [ %indvars.iv73.i.lcssa.sroa.gep.i617, %bb.jn ] ; 2 uses
  %.03341.i.lcssa.i641 = phi i16 [ %i.cva, %._crit_edge.i635 ], [ %i.chg, %bb.jn ]
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.i641, ptr %i.cvw, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ec, align 2, !tbaa !24
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.ea, i64 46
  store i16 %i.cvv, ptr %i.cvy, align 2, !tbaa !20
  %i.cvz = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i640, i64 -4
  %i.cwa = load i16, ptr %i.cvz, align 2, !tbaa !20
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  store i16 %i.cwa, ptr %i.cwb, align 2, !tbaa !20
  %i.cwc = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i640, i64 -20
  %i.cwd = load <8 x i16>, ptr %i.cwc, align 2, !tbaa !20
  store <8 x i16> %i.cwd, ptr %i.cvx, align 2, !tbaa !20
  br label %addmag0.exit665

.lr.ph47.i.i644:                                  ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo
  %.03341.i.lcssa.ph.i645 = phi i16 [ %i.cvt, %bb.jw ], [ %i.cvr, %bb.jv ], [ %i.cvp, %bb.ju ], [ %i.cvn, %bb.jt ], [ %i.cvl, %bb.js ], [ %i.cvj, %bb.jr ], [ %i.cvh, %bb.jq ], [ %i.cvf, %bb.jp ], [ %i.cvd, %bb.jo ]
  %indvars.iv59.i.lcssa.ph.i646 = phi i64 [ 0, %bb.jw ], [ 2, %bb.jv ], [ 4, %bb.ju ], [ 6, %bb.jt ], [ 8, %bb.js ], [ 10, %bb.jr ], [ 12, %bb.jq ], [ 14, %bb.jp ], [ 16, %bb.jo ] ; 3 uses
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.ph.i645, ptr %i.cwe, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ec, align 2, !tbaa !24
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.cwg = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i646
  %scevgep.i647 = getelementptr i8, ptr %i.ec, i64 %i.cwg
  %i.cwh = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i646, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i647, ptr noundef nonnull align 16 dereferenceable(1) %i.j, i64 %i.cwh, i1 false), !tbaa !20
  %i.cwi = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i646
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cwf, i8 0, i64 %i.cwi, i1 false), !tbaa !20
  br label %addmag0.exit665

addmag0.exit665:                                  ; preds = %bb.jx, %.preheader.i.i639, %.lr.ph47.i.i644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %add.exit35

bb.jy:                                            ; preds = %abscmp.exit718
  br i1 %.014.i717, label %bb.jz, label %bb.km

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.cwj = sext i16 %i.chf to i32                 ; 2 uses
  %i.cwk = sext i16 %i.chg to i32                 ; 3 uses
  %i.cwl = sub nsw i32 %i.cwj, %i.cwk
  %i.cwm = icmp slt i32 %i.cwl, 10
  br i1 %i.cwm, label %.lr.ph.i607, label %.lr.ph38.i584

.lr.ph.i607:                                      ; preds = %bb.jz
  %i.cwn = sext i16 %i.chf to i64
  %i.cwo = sub nsw i32 0, %i.cwk
  %i.cwp = sext i32 %i.cwo to i64
  %i.cwq = add nsw i64 %i.cwp, %i.cwn             ; 2 uses
  %reass.sub1165 = sub nsw i32 %i.cwk, %i.cwj     ; 3 uses
  %i.cwr = add nsw i32 %reass.sub1165, 10         ; 2 uses
  %wide.trip.count.i608 = zext i32 %i.cwr to i64  ; 2 uses
  %xtraiter1688 = and i64 %wide.trip.count.i608, 3 ; 3 uses
  %i.cws = add nsw i32 %reass.sub1165, 9
  %i.cwt = icmp ult i32 %i.cws, 3
  br i1 %i.cwt, label %.epil.preheader1687, label %.lr.ph.i607.new

.lr.ph.i607.new:                                  ; preds = %.lr.ph.i607
  %unroll_iter1693 = and i64 %wide.trip.count.i608, 4294967292
  br label %bb.kb

.preheader.i615.unr-lcssa:                        ; preds = %bb.kb
  %lcmp.mod1690.not = icmp eq i64 %xtraiter1688, 0
  br i1 %lcmp.mod1690.not, label %.preheader.i615, label %.epil.preheader1687

.epil.preheader1687:                              ; preds = %.preheader.i615.unr-lcssa, %.lr.ph.i607
  %indvars.iv45.i609.epil.init = phi i64 [ 0, %.lr.ph.i607 ], [ %indvars.iv.next46.i612.3, %.preheader.i615.unr-lcssa ]
  %indvars.iv.i610.epil.init = phi i64 [ %i.cwq, %.lr.ph.i607 ], [ %indvars.iv.next.i613.3, %.preheader.i615.unr-lcssa ]
  %.034.i611.epil.init = phi i64 [ 0, %.lr.ph.i607 ], [ %i.czx, %.preheader.i615.unr-lcssa ]
  %lcmp.mod1692 = icmp ne i64 %xtraiter1688, 0
  tail call void @llvm.assume(i1 %lcmp.mod1692)
  br label %bb.ka

bb.ka:                                            ; preds = %bb.ka, %.epil.preheader1687
  %indvars.iv45.i609.epil = phi i64 [ %indvars.iv45.i609.epil.init, %.epil.preheader1687 ], [ %indvars.iv.next46.i612.epil, %bb.ka ] ; 3 uses
  %indvars.iv.i610.epil = phi i64 [ %indvars.iv.i610.epil.init, %.epil.preheader1687 ], [ %indvars.iv.next.i613.epil, %bb.ka ] ; 2 uses
  %.034.i611.epil = phi i64 [ %.034.i611.epil.init, %.epil.preheader1687 ], [ %i.cxg, %bb.ka ]
  %epil.iter1689 = phi i64 [ 0, %.epil.preheader1687 ], [ %epil.iter1689.next, %bb.ka ]
  %i.cwu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv45.i609.epil
  %i.cwv = load i16, ptr %i.cwu, align 2, !tbaa !20
  %i.cww = zext i16 %i.cwv to i64
  %i.cwx = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i610.epil
  %i.cwy = load i16, ptr %i.cwx, align 2, !tbaa !20
  %i.cwz = zext i16 %i.cwy to i64
  %i.cxa = sub nsw i64 %i.cww, %i.cwz
  %i.cxb = add nsw i64 %i.cxa, %.034.i611.epil    ; 2 uses
  %i.cxc = trunc i64 %i.cxb to i16
  %i.cxd = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv45.i609.epil
  store i16 %i.cxc, ptr %i.cxd, align 2, !tbaa !20
  %i.cxe = add nsw i64 %i.cxb, 2147483648
  %i.cxf = lshr i64 %i.cxe, 16
  %i.cxg = add nsw i64 %i.cxf, -32768             ; 2 uses
  %indvars.iv.next46.i612.epil = add nuw nsw i64 %indvars.iv45.i609.epil, 1
  %indvars.iv.next.i613.epil = add nsw i64 %indvars.iv.i610.epil, 1
  %epil.iter1689.next = add i64 %epil.iter1689, 1 ; 2 uses
  %epil.iter1689.cmp.not = icmp eq i64 %epil.iter1689.next, %xtraiter1688
  br i1 %epil.iter1689.cmp.not, label %.preheader.i615, label %bb.ka, !llvm.loop !82

.preheader.i615:                                  ; preds = %bb.ka, %.preheader.i615.unr-lcssa
  %.lcssa1508 = phi i64 [ %i.czx, %.preheader.i615.unr-lcssa ], [ %i.cxg, %bb.ka ]
  %i.cxh = icmp slt i32 %reass.sub1165, 0
  br i1 %i.cxh, label %.lr.ph38.i584, label %._crit_edge.i591

.lr.ph38.i584:                                    ; preds = %bb.jz, %.preheader.i615
  %.0.lcssa85.i585 = phi i64 [ %.lcssa1508, %.preheader.i615 ], [ 0, %bb.jz ] ; 2 uses
  %.025.lcssa84.i586 = phi i32 [ %i.cwr, %.preheader.i615 ], [ 0, %bb.jz ] ; 2 uses
  %i.cxi = zext i32 %.025.lcssa84.i586 to i64     ; 3 uses
  %i.cxj = sub nsw i64 2, %i.cxi
  %xtraiter1697 = and i64 %i.cxj, 3               ; 2 uses
  %lcmp.mod1698.not = icmp eq i64 %xtraiter1697, 0
  br i1 %lcmp.mod1698.not, label %.prol.loopexit1696, label %.prol.preheader1695

.prol.preheader1695:                              ; preds = %.lr.ph38.i584, %.prol.preheader1695
  %indvars.iv50.i587.prol = phi i64 [ %indvars.iv.next51.i589.prol, %.prol.preheader1695 ], [ %i.cxi, %.lr.ph38.i584 ] ; 3 uses
  %.137.i588.prol = phi i64 [ %i.cxs, %.prol.preheader1695 ], [ %.0.lcssa85.i585, %.lr.ph38.i584 ]
  %prol.iter1699 = phi i64 [ %prol.iter1699.next, %.prol.preheader1695 ], [ 0, %.lr.ph38.i584 ]
  %i.cxk = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv50.i587.prol
  %i.cxl = load i16, ptr %i.cxk, align 2, !tbaa !20
  %i.cxm = zext i16 %i.cxl to i64
  %i.cxn = add nsw i64 %.137.i588.prol, %i.cxm    ; 2 uses
  %i.cxo = trunc i64 %i.cxn to i16
  %i.cxp = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv50.i587.prol
  store i16 %i.cxo, ptr %i.cxp, align 2, !tbaa !20
  %i.cxq = add nsw i64 %i.cxn, 2147483648
  %i.cxr = lshr i64 %i.cxq, 16
  %i.cxs = add nsw i64 %i.cxr, -32768             ; 2 uses
  %indvars.iv.next51.i589.prol = add nuw nsw i64 %indvars.iv50.i587.prol, 1 ; 2 uses
  %prol.iter1699.next = add i64 %prol.iter1699, 1 ; 2 uses
  %prol.iter1699.cmp.not = icmp eq i64 %prol.iter1699.next, %xtraiter1697
  br i1 %prol.iter1699.cmp.not, label %.prol.loopexit1696, label %.prol.preheader1695, !llvm.loop !83

.prol.loopexit1696:                               ; preds = %.prol.preheader1695, %.lr.ph38.i584
  %indvars.iv50.i587.unr = phi i64 [ %i.cxi, %.lr.ph38.i584 ], [ %indvars.iv.next51.i589.prol, %.prol.preheader1695 ]
  %.137.i588.unr = phi i64 [ %.0.lcssa85.i585, %.lr.ph38.i584 ], [ %i.cxs, %.prol.preheader1695 ]
  %i.cxt = add nsw i32 %.025.lcssa84.i586, -7
  %i.cxu = icmp ult i32 %i.cxt, 3
  br i1 %i.cxu, label %._crit_edge.i591, label %.lr.ph38.i584.new

bb.kb:                                            ; preds = %bb.kb, %.lr.ph.i607.new
  %indvars.iv45.i609 = phi i64 [ 0, %.lr.ph.i607.new ], [ %indvars.iv.next46.i612.3, %bb.kb ] ; 6 uses
  %indvars.iv.i610 = phi i64 [ %i.cwq, %.lr.ph.i607.new ], [ %indvars.iv.next.i613.3, %bb.kb ] ; 5 uses
  %.034.i611 = phi i64 [ 0, %.lr.ph.i607.new ], [ %i.czx, %bb.kb ]
  %niter1694 = phi i64 [ 0, %.lr.ph.i607.new ], [ %niter1694.next.3, %bb.kb ]
  %i.cxv = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv45.i609
  %i.cxw = load i16, ptr %i.cxv, align 4, !tbaa !20
  %i.cxx = zext i16 %i.cxw to i64
  %i.cxy = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i610
  %i.cxz = load i16, ptr %i.cxy, align 2, !tbaa !20
  %i.cya = zext i16 %i.cxz to i64
  %i.cyb = sub nsw i64 %i.cxx, %i.cya
  %i.cyc = add nsw i64 %i.cyb, %.034.i611         ; 2 uses
  %i.cyd = trunc i64 %i.cyc to i16
  %i.cye = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv45.i609
  store i16 %i.cyd, ptr %i.cye, align 8, !tbaa !20
  %i.cyf = add nsw i64 %i.cyc, 2147483648
  %i.cyg = lshr i64 %i.cyf, 16
  %i.cyh = add nsw i64 %i.cyg, -32768
  %indvars.iv.next46.i612 = or disjoint i64 %indvars.iv45.i609, 1 ; 2 uses
  %i.cyi = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i612
  %i.cyj = load i16, ptr %i.cyi, align 2, !tbaa !20
  %i.cyk = zext i16 %i.cyj to i64
  %i.cyl = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i610
  %i.cym = getelementptr i8, ptr %i.cyl, i64 2
  %i.cyn = load i16, ptr %i.cym, align 2, !tbaa !20
  %i.cyo = zext i16 %i.cyn to i64
  %i.cyp = sub nsw i64 %i.cyk, %i.cyo
  %i.cyq = add nsw i64 %i.cyp, %i.cyh             ; 2 uses
  %i.cyr = trunc i64 %i.cyq to i16
  %i.cys = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next46.i612
  store i16 %i.cyr, ptr %i.cys, align 2, !tbaa !20
  %i.cyt = add nsw i64 %i.cyq, 2147483648
  %i.cyu = lshr i64 %i.cyt, 16
  %i.cyv = add nsw i64 %i.cyu, -32768
  %indvars.iv.next46.i612.1 = or disjoint i64 %indvars.iv45.i609, 2 ; 2 uses
  %i.cyw = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i612.1
  %i.cyx = load i16, ptr %i.cyw, align 8, !tbaa !20
  %i.cyy = zext i16 %i.cyx to i64
  %i.cyz = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i610
  %i.cza = getelementptr i8, ptr %i.cyz, i64 4
  %i.czb = load i16, ptr %i.cza, align 2, !tbaa !20
  %i.czc = zext i16 %i.czb to i64
  %i.czd = sub nsw i64 %i.cyy, %i.czc
  %i.cze = add nsw i64 %i.czd, %i.cyv             ; 2 uses
  %i.czf = trunc i64 %i.cze to i16
  %i.czg = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next46.i612.1
  store i16 %i.czf, ptr %i.czg, align 4, !tbaa !20
  %i.czh = add nsw i64 %i.cze, 2147483648
  %i.czi = lshr i64 %i.czh, 16
  %i.czj = add nsw i64 %i.czi, -32768
  %indvars.iv.next46.i612.2 = or disjoint i64 %indvars.iv45.i609, 3 ; 2 uses
  %i.czk = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i612.2
  %i.czl = load i16, ptr %i.czk, align 2, !tbaa !20
  %i.czm = zext i16 %i.czl to i64
  %i.czn = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i610
  %i.czo = getelementptr i8, ptr %i.czn, i64 6
  %i.czp = load i16, ptr %i.czo, align 2, !tbaa !20
  %i.czq = zext i16 %i.czp to i64
  %i.czr = sub nsw i64 %i.czm, %i.czq
  %i.czs = add nsw i64 %i.czr, %i.czj             ; 2 uses
  %i.czt = trunc i64 %i.czs to i16
  %i.czu = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next46.i612.2
  store i16 %i.czt, ptr %i.czu, align 2, !tbaa !20
  %i.czv = add nsw i64 %i.czs, 2147483648
  %i.czw = lshr i64 %i.czv, 16
  %i.czx = add nsw i64 %i.czw, -32768             ; 3 uses
  %indvars.iv.next46.i612.3 = add nuw nsw i64 %indvars.iv45.i609, 4 ; 2 uses
  %indvars.iv.next.i613.3 = add nsw i64 %indvars.iv.i610, 4 ; 2 uses
  %niter1694.next.3 = add i64 %niter1694, 4       ; 2 uses
  %niter1694.ncmp.3 = icmp eq i64 %niter1694.next.3, %unroll_iter1693
  br i1 %niter1694.ncmp.3, label %.preheader.i615.unr-lcssa, label %bb.kb, !llvm.loop !3

.lr.ph38.i584.new:                                ; preds = %.prol.loopexit1696, %.lr.ph38.i584.new
  %indvars.iv50.i587 = phi i64 [ %indvars.iv.next51.i589.3, %.lr.ph38.i584.new ], [ %indvars.iv50.i587.unr, %.prol.loopexit1696 ] ; 6 uses
  %.137.i588 = phi i64 [ %i.dbh, %.lr.ph38.i584.new ], [ %.137.i588.unr, %.prol.loopexit1696 ]
  %i.czy = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv50.i587
  %i.czz = load i16, ptr %i.czy, align 2, !tbaa !20
  %i.daa = zext i16 %i.czz to i64
  %i.dab = add nsw i64 %.137.i588, %i.daa         ; 2 uses
  %i.dac = trunc i64 %i.dab to i16
  %i.dad = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv50.i587
  store i16 %i.dac, ptr %i.dad, align 2, !tbaa !20
  %i.dae = add nsw i64 %i.dab, 2147483648
  %i.daf = lshr i64 %i.dae, 16
  %i.dag = add nsw i64 %i.daf, -32768
  %indvars.iv.next51.i589 = add nuw nsw i64 %indvars.iv50.i587, 1 ; 2 uses
  %i.dah = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i589
  %i.dai = load i16, ptr %i.dah, align 2, !tbaa !20
  %i.daj = zext i16 %i.dai to i64
  %i.dak = add nsw i64 %i.dag, %i.daj             ; 2 uses
  %i.dal = trunc i64 %i.dak to i16
  %i.dam = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next51.i589
  store i16 %i.dal, ptr %i.dam, align 2, !tbaa !20
  %i.dan = add nsw i64 %i.dak, 2147483648
  %i.dao = lshr i64 %i.dan, 16
  %i.dap = add nsw i64 %i.dao, -32768
  %indvars.iv.next51.i589.1 = add nuw nsw i64 %indvars.iv50.i587, 2 ; 2 uses
  %i.daq = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i589.1
  %i.dar = load i16, ptr %i.daq, align 2, !tbaa !20
  %i.das = zext i16 %i.dar to i64
  %i.dat = add nsw i64 %i.dap, %i.das             ; 2 uses
  %i.dau = trunc i64 %i.dat to i16
  %i.dav = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next51.i589.1
  store i16 %i.dau, ptr %i.dav, align 2, !tbaa !20
  %i.daw = add nsw i64 %i.dat, 2147483648
  %i.dax = lshr i64 %i.daw, 16
  %i.day = add nsw i64 %i.dax, -32768
  %indvars.iv.next51.i589.2 = add nuw nsw i64 %indvars.iv50.i587, 3 ; 2 uses
  %i.daz = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i589.2
  %i.dba = load i16, ptr %i.daz, align 2, !tbaa !20
  %i.dbb = zext i16 %i.dba to i64
  %i.dbc = add nsw i64 %i.day, %i.dbb             ; 2 uses
  %i.dbd = trunc i64 %i.dbc to i16
  %i.dbe = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next51.i589.2
  store i16 %i.dbd, ptr %i.dbe, align 2, !tbaa !20
  %i.dbf = add nsw i64 %i.dbc, 2147483648
  %i.dbg = lshr i64 %i.dbf, 16
  %i.dbh = add nsw i64 %i.dbg, -32768
  %indvars.iv.next51.i589.3 = add nuw nsw i64 %indvars.iv50.i587, 4 ; 2 uses
  %exitcond53.not.i590.3 = icmp eq i64 %indvars.iv.next51.i589.3, 10
  br i1 %exitcond53.not.i590.3, label %._crit_edge.i591, label %.lr.ph38.i584.new, !llvm.loop !4

._crit_edge.i591:                                 ; preds = %.prol.loopexit1696, %.lr.ph38.i584.new, %.preheader.i615
  %i.dbi = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i575, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i592 = icmp eq i16 %i.dbi, 0
  br i1 %.not.i.not.not.i592, label %bb.kc, label %.preheader.i.i593

bb.kc:                                            ; preds = %._crit_edge.i591
  %i.dbj = add i16 %i.chf, -1
  %i.dbk = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i576, align 16, !tbaa !20
  %.not.i.1.i594 = icmp eq i16 %i.dbk, 0
  br i1 %.not.i.1.i594, label %bb.kd, label %.lr.ph47.i.i595

bb.kd:                                            ; preds = %bb.kc
  %i.dbl = add i16 %i.chf, -2
  %i.dbm = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i577, align 2, !tbaa !20
  %.not.i.2.i599 = icmp eq i16 %i.dbm, 0
  br i1 %.not.i.2.i599, label %bb.ke, label %.lr.ph47.i.i595

bb.ke:                                            ; preds = %bb.kd
  %i.dbn = add i16 %i.chf, -3
  %i.dbo = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i578, align 4, !tbaa !20
  %.not.i.3.i600 = icmp eq i16 %i.dbo, 0
  br i1 %.not.i.3.i600, label %bb.kf, label %.lr.ph47.i.i595

bb.kf:                                            ; preds = %bb.ke
  %i.dbp = add i16 %i.chf, -4
  %i.dbq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i579, align 2, !tbaa !20
  %.not.i.4.i601 = icmp eq i16 %i.dbq, 0
  br i1 %.not.i.4.i601, label %bb.kg, label %.lr.ph47.i.i595

bb.kg:                                            ; preds = %bb.kf
  %i.dbr = add i16 %i.chf, -5
  %i.dbs = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i580, align 8, !tbaa !20
  %.not.i.5.i602 = icmp eq i16 %i.dbs, 0
  br i1 %.not.i.5.i602, label %bb.kh, label %.lr.ph47.i.i595

bb.kh:                                            ; preds = %bb.kg
  %i.dbt = add i16 %i.chf, -6
  %i.dbu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i581, align 2, !tbaa !20
  %.not.i.6.i603 = icmp eq i16 %i.dbu, 0
  br i1 %.not.i.6.i603, label %bb.ki, label %.lr.ph47.i.i595

bb.ki:                                            ; preds = %bb.kh
  %i.dbv = add i16 %i.chf, -7
  %i.dbw = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i582, align 4, !tbaa !20
  %.not.i.7.i604 = icmp eq i16 %i.dbw, 0
  br i1 %.not.i.7.i604, label %bb.kj, label %.lr.ph47.i.i595

bb.kj:                                            ; preds = %bb.ki
  %i.dbx = add i16 %i.chf, -8
  %i.dby = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i583, align 2, !tbaa !20
  %.not.i.8.i605 = icmp eq i16 %i.dby, 0
  br i1 %.not.i.8.i605, label %bb.kk, label %.lr.ph47.i.i595

bb.kk:                                            ; preds = %bb.kj
  %i.dbz = add i16 %i.chf, -9
  %i.dca = load i16, ptr %i.k, align 16, !tbaa !20
  %.not.i.9.i606 = icmp eq i16 %i.dca, 0
  br i1 %.not.i.9.i606, label %bb.kl, label %.lr.ph47.i.i595

bb.kl:                                            ; preds = %bb.kk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit616

.preheader.i.i593:                                ; preds = %._crit_edge.i591
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %i.chf, ptr %i.dcb, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ec, align 2, !tbaa !24
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.ea, i64 46
  store i16 %i.dbi, ptr %i.dcd, align 2, !tbaa !20
  %i.dce = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i576, align 16, !tbaa !20
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  store i16 %i.dce, ptr %i.dcf, align 2, !tbaa !20
  %i.dcg = load <8 x i16>, ptr %i.k, align 16, !tbaa !20
  store <8 x i16> %i.dcg, ptr %i.dcc, align 2, !tbaa !20
  br label %submag0.exit616

.lr.ph47.i.i595:                                  ; preds = %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc
  %.03341.i.lcssa.ph.i596 = phi i16 [ %i.dbz, %bb.kk ], [ %i.dbx, %bb.kj ], [ %i.dbv, %bb.ki ], [ %i.dbt, %bb.kh ], [ %i.dbr, %bb.kg ], [ %i.dbp, %bb.kf ], [ %i.dbn, %bb.ke ], [ %i.dbl, %bb.kd ], [ %i.dbj, %bb.kc ]
  %indvars.iv59.i.lcssa.ph.i597 = phi i64 [ 0, %bb.kk ], [ 2, %bb.kj ], [ 4, %bb.ki ], [ 6, %bb.kh ], [ 8, %bb.kg ], [ 10, %bb.kf ], [ 12, %bb.ke ], [ 14, %bb.kd ], [ 16, %bb.kc ] ; 3 uses
  %i.dch = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.ph.i596, ptr %i.dch, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ec, align 2, !tbaa !24
  %i.dci = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.dcj = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i597
  %scevgep.i598 = getelementptr i8, ptr %i.ec, i64 %i.dcj
  %i.dck = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i597, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i598, ptr noundef nonnull align 16 dereferenceable(1) %i.k, i64 %i.dck, i1 false), !tbaa !20
  %i.dcl = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i597
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dci, i8 0, i64 %i.dcl, i1 false), !tbaa !20
  br label %submag0.exit616

submag0.exit616:                                  ; preds = %bb.kl, %.preheader.i.i593, %.lr.ph47.i.i595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %add.exit35

bb.km:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.dcm = sext i16 %i.chg to i32                 ; 2 uses
  %i.dcn = sext i16 %i.chf to i32                 ; 3 uses
  %i.dco = sub nsw i32 %i.dcm, %i.dcn
  %i.dcp = icmp slt i32 %i.dco, 10
  br i1 %i.dcp, label %.lr.ph.i565, label %.lr.ph38.i542

.lr.ph.i565:                                      ; preds = %bb.km
  %i.dcq = sext i16 %i.chg to i64
  %i.dcr = sub nsw i32 0, %i.dcn
  %i.dcs = sext i32 %i.dcr to i64
  %i.dct = add nsw i64 %i.dcq, %i.dcs             ; 2 uses
  %i.dcu = add nsw i32 %i.dcn, 10
  %i.dcv = sub nsw i32 %i.dcu, %i.dcm             ; 4 uses
  %wide.trip.count.i566 = zext i32 %i.dcv to i64  ; 2 uses
  %xtraiter1675 = and i64 %wide.trip.count.i566, 3 ; 3 uses
  %i.dcw = add nsw i32 %i.dcv, -1
  %i.dcx = icmp ult i32 %i.dcw, 3
  br i1 %i.dcx, label %.epil.preheader1674, label %.lr.ph.i565.new

.lr.ph.i565.new:                                  ; preds = %.lr.ph.i565
  %unroll_iter1680 = and i64 %wide.trip.count.i566, 4294967292
  br label %bb.ko

.preheader.i573.unr-lcssa:                        ; preds = %bb.ko
  %lcmp.mod1677.not = icmp eq i64 %xtraiter1675, 0
  br i1 %lcmp.mod1677.not, label %.preheader.i573, label %.epil.preheader1674

.epil.preheader1674:                              ; preds = %.preheader.i573.unr-lcssa, %.lr.ph.i565
  %indvars.iv45.i567.epil.init = phi i64 [ 0, %.lr.ph.i565 ], [ %indvars.iv.next46.i570.3, %.preheader.i573.unr-lcssa ]
  %indvars.iv.i568.epil.init = phi i64 [ %i.dct, %.lr.ph.i565 ], [ %indvars.iv.next.i571.3, %.preheader.i573.unr-lcssa ]
  %.034.i569.epil.init = phi i64 [ 0, %.lr.ph.i565 ], [ %i.dgb, %.preheader.i573.unr-lcssa ]
  %lcmp.mod1679 = icmp ne i64 %xtraiter1675, 0
  tail call void @llvm.assume(i1 %lcmp.mod1679)
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kn, %.epil.preheader1674
  %indvars.iv45.i567.epil = phi i64 [ %indvars.iv45.i567.epil.init, %.epil.preheader1674 ], [ %indvars.iv.next46.i570.epil, %bb.kn ] ; 3 uses
  %indvars.iv.i568.epil = phi i64 [ %indvars.iv.i568.epil.init, %.epil.preheader1674 ], [ %indvars.iv.next.i571.epil, %bb.kn ] ; 2 uses
  %.034.i569.epil = phi i64 [ %.034.i569.epil.init, %.epil.preheader1674 ], [ %i.ddk, %bb.kn ]
  %epil.iter1676 = phi i64 [ 0, %.epil.preheader1674 ], [ %epil.iter1676.next, %bb.kn ]
  %i.dcy = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv45.i567.epil
  %i.dcz = load i16, ptr %i.dcy, align 2, !tbaa !20
  %i.dda = zext i16 %i.dcz to i64
  %i.ddb = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i568.epil
  %i.ddc = load i16, ptr %i.ddb, align 2, !tbaa !20
  %i.ddd = zext i16 %i.ddc to i64
  %i.dde = sub nsw i64 %i.dda, %i.ddd
  %i.ddf = add nsw i64 %i.dde, %.034.i569.epil    ; 2 uses
  %i.ddg = trunc i64 %i.ddf to i16
  %i.ddh = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv45.i567.epil
  store i16 %i.ddg, ptr %i.ddh, align 2, !tbaa !20
  %i.ddi = add nsw i64 %i.ddf, 2147483648
  %i.ddj = lshr i64 %i.ddi, 16
  %i.ddk = add nsw i64 %i.ddj, -32768             ; 2 uses
  %indvars.iv.next46.i570.epil = add nuw nsw i64 %indvars.iv45.i567.epil, 1
  %indvars.iv.next.i571.epil = add nsw i64 %indvars.iv.i568.epil, 1
  %epil.iter1676.next = add i64 %epil.iter1676, 1 ; 2 uses
  %epil.iter1676.cmp.not = icmp eq i64 %epil.iter1676.next, %xtraiter1675
  br i1 %epil.iter1676.cmp.not, label %.preheader.i573, label %bb.kn, !llvm.loop !84

.preheader.i573:                                  ; preds = %bb.kn, %.preheader.i573.unr-lcssa
  %.lcssa1507 = phi i64 [ %i.dgb, %.preheader.i573.unr-lcssa ], [ %i.ddk, %bb.kn ]
  %i.ddl = icmp samesign ult i32 %i.dcv, 10
  br i1 %i.ddl, label %.lr.ph38.i542, label %._crit_edge.i549

.lr.ph38.i542:                                    ; preds = %bb.km, %.preheader.i573
  %.0.lcssa85.i543 = phi i64 [ %.lcssa1507, %.preheader.i573 ], [ 0, %bb.km ] ; 2 uses
  %.025.lcssa84.i544 = phi i32 [ %i.dcv, %.preheader.i573 ], [ 0, %bb.km ] ; 2 uses
  %i.ddm = zext nneg i32 %.025.lcssa84.i544 to i64 ; 3 uses
  %i.ddn = sub nsw i64 2, %i.ddm
  %xtraiter1684 = and i64 %i.ddn, 3               ; 2 uses
  %lcmp.mod1685.not = icmp eq i64 %xtraiter1684, 0
  br i1 %lcmp.mod1685.not, label %.prol.loopexit1683, label %.prol.preheader1682

.prol.preheader1682:                              ; preds = %.lr.ph38.i542, %.prol.preheader1682
  %indvars.iv50.i545.prol = phi i64 [ %indvars.iv.next51.i547.prol, %.prol.preheader1682 ], [ %i.ddm, %.lr.ph38.i542 ] ; 3 uses
  %.137.i546.prol = phi i64 [ %i.ddw, %.prol.preheader1682 ], [ %.0.lcssa85.i543, %.lr.ph38.i542 ]
  %prol.iter1686 = phi i64 [ %prol.iter1686.next, %.prol.preheader1682 ], [ 0, %.lr.ph38.i542 ]
  %i.ddo = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv50.i545.prol
  %i.ddp = load i16, ptr %i.ddo, align 2, !tbaa !20
  %i.ddq = zext i16 %i.ddp to i64
  %i.ddr = add nsw i64 %.137.i546.prol, %i.ddq    ; 2 uses
  %i.dds = trunc i64 %i.ddr to i16
  %i.ddt = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv50.i545.prol
  store i16 %i.dds, ptr %i.ddt, align 2, !tbaa !20
  %i.ddu = add nsw i64 %i.ddr, 2147483648
  %i.ddv = lshr i64 %i.ddu, 16
  %i.ddw = add nsw i64 %i.ddv, -32768             ; 2 uses
  %indvars.iv.next51.i547.prol = add nuw nsw i64 %indvars.iv50.i545.prol, 1 ; 2 uses
  %prol.iter1686.next = add i64 %prol.iter1686, 1 ; 2 uses
  %prol.iter1686.cmp.not = icmp eq i64 %prol.iter1686.next, %xtraiter1684
  br i1 %prol.iter1686.cmp.not, label %.prol.loopexit1683, label %.prol.preheader1682, !llvm.loop !85

.prol.loopexit1683:                               ; preds = %.prol.preheader1682, %.lr.ph38.i542
  %indvars.iv50.i545.unr = phi i64 [ %i.ddm, %.lr.ph38.i542 ], [ %indvars.iv.next51.i547.prol, %.prol.preheader1682 ]
  %.137.i546.unr = phi i64 [ %.0.lcssa85.i543, %.lr.ph38.i542 ], [ %i.ddw, %.prol.preheader1682 ]
  %i.ddx = add nsw i32 %.025.lcssa84.i544, -7
  %i.ddy = icmp ult i32 %i.ddx, 3
  br i1 %i.ddy, label %._crit_edge.i549, label %.lr.ph38.i542.new

bb.ko:                                            ; preds = %bb.ko, %.lr.ph.i565.new
  %indvars.iv45.i567 = phi i64 [ 0, %.lr.ph.i565.new ], [ %indvars.iv.next46.i570.3, %bb.ko ] ; 6 uses
  %indvars.iv.i568 = phi i64 [ %i.dct, %.lr.ph.i565.new ], [ %indvars.iv.next.i571.3, %bb.ko ] ; 5 uses
  %.034.i569 = phi i64 [ 0, %.lr.ph.i565.new ], [ %i.dgb, %bb.ko ]
  %niter1681 = phi i64 [ 0, %.lr.ph.i565.new ], [ %niter1681.next.3, %bb.ko ]
  %i.ddz = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv45.i567
  %i.dea = load i16, ptr %i.ddz, align 4, !tbaa !20
  %i.deb = zext i16 %i.dea to i64
  %i.dec = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i568
  %i.ded = load i16, ptr %i.dec, align 2, !tbaa !20
  %i.dee = zext i16 %i.ded to i64
  %i.def = sub nsw i64 %i.deb, %i.dee
  %i.deg = add nsw i64 %i.def, %.034.i569         ; 2 uses
  %i.deh = trunc i64 %i.deg to i16
  %i.dei = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv45.i567
  store i16 %i.deh, ptr %i.dei, align 8, !tbaa !20
  %i.dej = add nsw i64 %i.deg, 2147483648
  %i.dek = lshr i64 %i.dej, 16
  %i.del = add nsw i64 %i.dek, -32768
  %indvars.iv.next46.i570 = or disjoint i64 %indvars.iv45.i567, 1 ; 2 uses
  %i.dem = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i570
  %i.den = load i16, ptr %i.dem, align 2, !tbaa !20
  %i.deo = zext i16 %i.den to i64
  %i.dep = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i568
  %i.deq = getelementptr i8, ptr %i.dep, i64 2
  %i.der = load i16, ptr %i.deq, align 2, !tbaa !20
  %i.des = zext i16 %i.der to i64
  %i.det = sub nsw i64 %i.deo, %i.des
  %i.deu = add nsw i64 %i.det, %i.del             ; 2 uses
  %i.dev = trunc i64 %i.deu to i16
  %i.dew = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next46.i570
  store i16 %i.dev, ptr %i.dew, align 2, !tbaa !20
  %i.dex = add nsw i64 %i.deu, 2147483648
  %i.dey = lshr i64 %i.dex, 16
  %i.dez = add nsw i64 %i.dey, -32768
  %indvars.iv.next46.i570.1 = or disjoint i64 %indvars.iv45.i567, 2 ; 2 uses
  %i.dfa = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i570.1
  %i.dfb = load i16, ptr %i.dfa, align 8, !tbaa !20
  %i.dfc = zext i16 %i.dfb to i64
  %i.dfd = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i568
  %i.dfe = getelementptr i8, ptr %i.dfd, i64 4
  %i.dff = load i16, ptr %i.dfe, align 2, !tbaa !20
  %i.dfg = zext i16 %i.dff to i64
  %i.dfh = sub nsw i64 %i.dfc, %i.dfg
  %i.dfi = add nsw i64 %i.dfh, %i.dez             ; 2 uses
  %i.dfj = trunc i64 %i.dfi to i16
  %i.dfk = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next46.i570.1
  store i16 %i.dfj, ptr %i.dfk, align 4, !tbaa !20
  %i.dfl = add nsw i64 %i.dfi, 2147483648
  %i.dfm = lshr i64 %i.dfl, 16
  %i.dfn = add nsw i64 %i.dfm, -32768
  %indvars.iv.next46.i570.2 = or disjoint i64 %indvars.iv45.i567, 3 ; 2 uses
  %i.dfo = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i570.2
  %i.dfp = load i16, ptr %i.dfo, align 2, !tbaa !20
  %i.dfq = zext i16 %i.dfp to i64
  %i.dfr = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i568
  %i.dfs = getelementptr i8, ptr %i.dfr, i64 6
  %i.dft = load i16, ptr %i.dfs, align 2, !tbaa !20
  %i.dfu = zext i16 %i.dft to i64
  %i.dfv = sub nsw i64 %i.dfq, %i.dfu
  %i.dfw = add nsw i64 %i.dfv, %i.dfn             ; 2 uses
  %i.dfx = trunc i64 %i.dfw to i16
  %i.dfy = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next46.i570.2
  store i16 %i.dfx, ptr %i.dfy, align 2, !tbaa !20
  %i.dfz = add nsw i64 %i.dfw, 2147483648
  %i.dga = lshr i64 %i.dfz, 16
  %i.dgb = add nsw i64 %i.dga, -32768             ; 3 uses
  %indvars.iv.next46.i570.3 = add nuw nsw i64 %indvars.iv45.i567, 4 ; 2 uses
  %indvars.iv.next.i571.3 = add nsw i64 %indvars.iv.i568, 4 ; 2 uses
  %niter1681.next.3 = add i64 %niter1681, 4       ; 2 uses
  %niter1681.ncmp.3 = icmp eq i64 %niter1681.next.3, %unroll_iter1680
  br i1 %niter1681.ncmp.3, label %.preheader.i573.unr-lcssa, label %bb.ko, !llvm.loop !3

.lr.ph38.i542.new:                                ; preds = %.prol.loopexit1683, %.lr.ph38.i542.new
  %indvars.iv50.i545 = phi i64 [ %indvars.iv.next51.i547.3, %.lr.ph38.i542.new ], [ %indvars.iv50.i545.unr, %.prol.loopexit1683 ] ; 6 uses
  %.137.i546 = phi i64 [ %i.dhl, %.lr.ph38.i542.new ], [ %.137.i546.unr, %.prol.loopexit1683 ]
  %i.dgc = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv50.i545
  %i.dgd = load i16, ptr %i.dgc, align 2, !tbaa !20
  %i.dge = zext i16 %i.dgd to i64
  %i.dgf = add nsw i64 %.137.i546, %i.dge         ; 2 uses
  %i.dgg = trunc i64 %i.dgf to i16
  %i.dgh = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv50.i545
  store i16 %i.dgg, ptr %i.dgh, align 2, !tbaa !20
  %i.dgi = add nsw i64 %i.dgf, 2147483648
  %i.dgj = lshr i64 %i.dgi, 16
  %i.dgk = add nsw i64 %i.dgj, -32768
  %indvars.iv.next51.i547 = add nuw nsw i64 %indvars.iv50.i545, 1 ; 2 uses
  %i.dgl = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i547
  %i.dgm = load i16, ptr %i.dgl, align 2, !tbaa !20
  %i.dgn = zext i16 %i.dgm to i64
  %i.dgo = add nsw i64 %i.dgk, %i.dgn             ; 2 uses
  %i.dgp = trunc i64 %i.dgo to i16
  %i.dgq = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next51.i547
  store i16 %i.dgp, ptr %i.dgq, align 2, !tbaa !20
  %i.dgr = add nsw i64 %i.dgo, 2147483648
  %i.dgs = lshr i64 %i.dgr, 16
  %i.dgt = add nsw i64 %i.dgs, -32768
  %indvars.iv.next51.i547.1 = add nuw nsw i64 %indvars.iv50.i545, 2 ; 2 uses
  %i.dgu = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i547.1
  %i.dgv = load i16, ptr %i.dgu, align 2, !tbaa !20
  %i.dgw = zext i16 %i.dgv to i64
  %i.dgx = add nsw i64 %i.dgt, %i.dgw             ; 2 uses
  %i.dgy = trunc i64 %i.dgx to i16
  %i.dgz = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next51.i547.1
  store i16 %i.dgy, ptr %i.dgz, align 2, !tbaa !20
  %i.dha = add nsw i64 %i.dgx, 2147483648
  %i.dhb = lshr i64 %i.dha, 16
  %i.dhc = add nsw i64 %i.dhb, -32768
  %indvars.iv.next51.i547.2 = add nuw nsw i64 %indvars.iv50.i545, 3 ; 2 uses
  %i.dhd = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i547.2
  %i.dhe = load i16, ptr %i.dhd, align 2, !tbaa !20
  %i.dhf = zext i16 %i.dhe to i64
  %i.dhg = add nsw i64 %i.dhc, %i.dhf             ; 2 uses
  %i.dhh = trunc i64 %i.dhg to i16
  %i.dhi = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next51.i547.2
  store i16 %i.dhh, ptr %i.dhi, align 2, !tbaa !20
  %i.dhj = add nsw i64 %i.dhg, 2147483648
  %i.dhk = lshr i64 %i.dhj, 16
  %i.dhl = add nsw i64 %i.dhk, -32768
  %indvars.iv.next51.i547.3 = add nuw nsw i64 %indvars.iv50.i545, 4 ; 2 uses
  %exitcond53.not.i548.3 = icmp eq i64 %indvars.iv.next51.i547.3, 10
  br i1 %exitcond53.not.i548.3, label %._crit_edge.i549, label %.lr.ph38.i542.new, !llvm.loop !4

._crit_edge.i549:                                 ; preds = %.prol.loopexit1683, %.lr.ph38.i542.new, %.preheader.i573
  %i.dhm = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i533, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i550 = icmp eq i16 %i.dhm, 0
  br i1 %.not.i.not.not.i550, label %bb.kp, label %.preheader.i.i551

bb.kp:                                            ; preds = %._crit_edge.i549
  %i.dhn = add i16 %i.chg, -1
  %i.dho = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i534, align 16, !tbaa !20
  %.not.i.1.i552 = icmp eq i16 %i.dho, 0
  br i1 %.not.i.1.i552, label %bb.kq, label %.lr.ph47.i.i553

bb.kq:                                            ; preds = %bb.kp
  %i.dhp = add i16 %i.chg, -2
  %i.dhq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i535, align 2, !tbaa !20
  %.not.i.2.i557 = icmp eq i16 %i.dhq, 0
  br i1 %.not.i.2.i557, label %bb.kr, label %.lr.ph47.i.i553

bb.kr:                                            ; preds = %bb.kq
  %i.dhr = add i16 %i.chg, -3
  %i.dhs = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i536, align 4, !tbaa !20
  %.not.i.3.i558 = icmp eq i16 %i.dhs, 0
  br i1 %.not.i.3.i558, label %bb.ks, label %.lr.ph47.i.i553

bb.ks:                                            ; preds = %bb.kr
  %i.dht = add i16 %i.chg, -4
  %i.dhu = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i537, align 2, !tbaa !20
  %.not.i.4.i559 = icmp eq i16 %i.dhu, 0
  br i1 %.not.i.4.i559, label %bb.kt, label %.lr.ph47.i.i553

bb.kt:                                            ; preds = %bb.ks
  %i.dhv = add i16 %i.chg, -5
  %i.dhw = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i538, align 8, !tbaa !20
  %.not.i.5.i560 = icmp eq i16 %i.dhw, 0
  br i1 %.not.i.5.i560, label %bb.ku, label %.lr.ph47.i.i553

bb.ku:                                            ; preds = %bb.kt
  %i.dhx = add i16 %i.chg, -6
  %i.dhy = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i539, align 2, !tbaa !20
  %.not.i.6.i561 = icmp eq i16 %i.dhy, 0
  br i1 %.not.i.6.i561, label %bb.kv, label %.lr.ph47.i.i553

bb.kv:                                            ; preds = %bb.ku
  %i.dhz = add i16 %i.chg, -7
  %i.dia = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i540, align 4, !tbaa !20
  %.not.i.7.i562 = icmp eq i16 %i.dia, 0
  br i1 %.not.i.7.i562, label %bb.kw, label %.lr.ph47.i.i553

bb.kw:                                            ; preds = %bb.kv
  %i.dib = add i16 %i.chg, -8
  %i.dic = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i541, align 2, !tbaa !20
  %.not.i.8.i563 = icmp eq i16 %i.dic, 0
  br i1 %.not.i.8.i563, label %bb.kx, label %.lr.ph47.i.i553

bb.kx:                                            ; preds = %bb.kw
  %i.did = add i16 %i.chg, -9
  %i.die = load i16, ptr %i.l, align 16, !tbaa !20
  %.not.i.9.i564 = icmp eq i16 %i.die, 0
  br i1 %.not.i.9.i564, label %bb.ky, label %.lr.ph47.i.i553

bb.ky:                                            ; preds = %bb.kx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit574

.preheader.i.i551:                                ; preds = %._crit_edge.i549
  %i.dif = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %i.chg, ptr %i.dif, align 2, !tbaa !26
  store i16 %i.chd, ptr %i.ec, align 2, !tbaa !24
  %i.dig = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.dih = getelementptr inbounds nuw i8, ptr %i.ea, i64 46
  store i16 %i.dhm, ptr %i.dih, align 2, !tbaa !20
  %i.dii = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i534, align 16, !tbaa !20
  %i.dij = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  store i16 %i.dii, ptr %i.dij, align 2, !tbaa !20
  %i.dik = load <8 x i16>, ptr %i.l, align 16, !tbaa !20
  store <8 x i16> %i.dik, ptr %i.dig, align 2, !tbaa !20
  br label %submag0.exit574

.lr.ph47.i.i553:                                  ; preds = %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp
  %.03341.i.lcssa.ph.i554 = phi i16 [ %i.did, %bb.kx ], [ %i.dib, %bb.kw ], [ %i.dhz, %bb.kv ], [ %i.dhx, %bb.ku ], [ %i.dhv, %bb.kt ], [ %i.dht, %bb.ks ], [ %i.dhr, %bb.kr ], [ %i.dhp, %bb.kq ], [ %i.dhn, %bb.kp ]
  %indvars.iv59.i.lcssa.ph.i555 = phi i64 [ 0, %bb.kx ], [ 2, %bb.kw ], [ 4, %bb.kv ], [ 6, %bb.ku ], [ 8, %bb.kt ], [ 10, %bb.ks ], [ 12, %bb.kr ], [ 14, %bb.kq ], [ 16, %bb.kp ] ; 3 uses
  %i.dil = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store i16 %.03341.i.lcssa.ph.i554, ptr %i.dil, align 2, !tbaa !26
  store i16 %i.chd, ptr %i.ec, align 2, !tbaa !24
  %i.dim = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.din = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i555
  %scevgep.i556 = getelementptr i8, ptr %i.ec, i64 %i.din
  %i.dio = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i555, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i556, ptr noundef nonnull align 16 dereferenceable(1) %i.l, i64 %i.dio, i1 false), !tbaa !20
  %i.dip = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i555
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dim, i8 0, i64 %i.dip, i1 false), !tbaa !20
  br label %submag0.exit574

submag0.exit574:                                  ; preds = %bb.ky, %.preheader.i.i551, %.lr.ph47.i.i553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  br label %add.exit35

add.exit35:                                       ; preds = %addmag0.exit714, %addmag0.exit665, %submag0.exit616, %submag0.exit574
  br i1 %i.bft, label %abscmp.exit904, label %bb.kz

bb.kz:                                            ; preds = %add.exit35
  %i.diq = icmp slt i16 %i.bfr, %i.bfs
  br i1 %i.diq, label %abscmp.exit904, label %.preheader.i901

.preheader.i901:                                  ; preds = %bb.kz
  %i.dir = load i16, ptr %i.cj, align 2, !tbaa !20 ; 2 uses
  %i.dis = load i16, ptr %i.bn, align 2, !tbaa !20 ; 2 uses
  %i.dit = icmp ugt i16 %i.dir, %i.dis
  br i1 %i.dit, label %abscmp.exit904, label %bb.lr

bb.la:                                            ; preds = %bb.lr
  %i.diu = load i16, ptr %i.ck, align 4, !tbaa !20 ; 2 uses
  %i.div = load i16, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %i.diw = icmp ugt i16 %i.diu, %i.div
  br i1 %i.diw, label %abscmp.exit904, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.dix = icmp ult i16 %i.diu, %i.div
  br i1 %i.dix, label %abscmp.exit904, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.diy = load i16, ptr %i.cl, align 2, !tbaa !20 ; 2 uses
  %i.diz = load i16, ptr %i.bp, align 2, !tbaa !20 ; 2 uses
  %i.dja = icmp ugt i16 %i.diy, %i.diz
  br i1 %i.dja, label %abscmp.exit904, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.djb = icmp ult i16 %i.diy, %i.diz
  br i1 %i.djb, label %abscmp.exit904, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.djc = load i16, ptr %i.cm, align 16, !tbaa !20 ; 2 uses
  %i.djd = load i16, ptr %i.bq, align 16, !tbaa !20 ; 2 uses
  %i.dje = icmp ugt i16 %i.djc, %i.djd
  br i1 %i.dje, label %abscmp.exit904, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.djf = icmp ult i16 %i.djc, %i.djd
  br i1 %i.djf, label %abscmp.exit904, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.djg = load i16, ptr %i.cn, align 2, !tbaa !20 ; 2 uses
  %i.djh = load i16, ptr %i.br, align 2, !tbaa !20 ; 2 uses
  %i.dji = icmp ugt i16 %i.djg, %i.djh
  br i1 %i.dji, label %abscmp.exit904, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.djj = icmp ult i16 %i.djg, %i.djh
  br i1 %i.djj, label %abscmp.exit904, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.djk = load i16, ptr %i.co, align 4, !tbaa !20 ; 2 uses
  %i.djl = load i16, ptr %i.bs, align 4, !tbaa !20 ; 2 uses
  %i.djm = icmp ugt i16 %i.djk, %i.djl
  br i1 %i.djm, label %abscmp.exit904, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.djn = icmp ult i16 %i.djk, %i.djl
  br i1 %i.djn, label %abscmp.exit904, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.djo = load i16, ptr %i.cp, align 2, !tbaa !20 ; 2 uses
  %i.djp = load i16, ptr %i.bt, align 2, !tbaa !20 ; 2 uses
  %i.djq = icmp ugt i16 %i.djo, %i.djp
  br i1 %i.djq, label %abscmp.exit904, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.djr = icmp ult i16 %i.djo, %i.djp
  br i1 %i.djr, label %abscmp.exit904, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.djs = load i16, ptr %i.cq, align 8, !tbaa !20 ; 2 uses
  %i.djt = load i16, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %i.dju = icmp ugt i16 %i.djs, %i.djt
  br i1 %i.dju, label %abscmp.exit904, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.djv = icmp ult i16 %i.djs, %i.djt
  br i1 %i.djv, label %abscmp.exit904, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.djw = load i16, ptr %i.cr, align 2, !tbaa !20 ; 2 uses
  %i.djx = load i16, ptr %i.bv, align 2, !tbaa !20 ; 2 uses
  %i.djy = icmp ugt i16 %i.djw, %i.djx
  br i1 %i.djy, label %abscmp.exit904, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.djz = icmp ult i16 %i.djw, %i.djx
  br i1 %i.djz, label %abscmp.exit904, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.dka = load i16, ptr %i.ci, align 4, !tbaa !20
  %i.dkb = load i16, ptr %i.bm, align 4, !tbaa !20
  %i.dkc = icmp ugt i16 %i.dka, %i.dkb
  br label %abscmp.exit904

bb.lr:                                            ; preds = %.preheader.i901
  %i.dkd = icmp ult i16 %i.dir, %i.dis
  br i1 %i.dkd, label %abscmp.exit904, label %bb.la

abscmp.exit904:                                   ; preds = %bb.lq, %add.exit35, %bb.kz, %.preheader.i901, %bb.la, %bb.lb, %bb.lc, %bb.ld, %bb.le, %bb.lf, %bb.lg, %bb.lh, %bb.li, %bb.lj, %bb.lk, %bb.ll, %bb.lm, %bb.ln, %bb.lo, %bb.lp, %bb.lr
  %.014.i903 = phi i1 [ false, %bb.kz ], [ true, %add.exit35 ], [ false, %bb.lr ], [ true, %.preheader.i901 ], [ false, %bb.ln ], [ true, %bb.la ], [ false, %bb.lb ], [ false, %bb.ll ], [ true, %bb.lc ], [ false, %bb.ld ], [ %i.dkc, %bb.lq ], [ true, %bb.le ], [ false, %bb.lf ], [ true, %bb.lm ], [ true, %bb.lg ], [ false, %bb.lh ], [ false, %bb.lp ], [ true, %bb.li ], [ false, %bb.lj ], [ true, %bb.lo ], [ true, %bb.lk ] ; 2 uses
  br i1 %i.bfq, label %bb.ls, label %bb.mt

bb.ls:                                            ; preds = %abscmp.exit904
  br i1 %.014.i903, label %bb.lt, label %bb.mg

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.dke = sext i16 %i.bfr to i32                 ; 2 uses
  %i.dkf = sext i16 %i.bfs to i32                 ; 3 uses
  %i.dkg = sub nsw i32 %i.dke, %i.dkf
  %i.dkh = icmp slt i32 %i.dkg, 10
  br i1 %i.dkh, label %.lr.ph.i891, label %.lr.ph38.i868

.lr.ph.i891:                                      ; preds = %bb.lt
  %i.dki = sext i16 %i.bfr to i64
  %i.dkj = sub nsw i32 0, %i.dkf
  %i.dkk = sext i32 %i.dkj to i64
  %i.dkl = add nsw i64 %i.dkk, %i.dki             ; 2 uses
  %reass.sub1168 = sub nsw i32 %i.dkf, %i.dke     ; 3 uses
  %i.dkm = add nsw i32 %reass.sub1168, 10         ; 2 uses
  %wide.trip.count.i892 = zext i32 %i.dkm to i64  ; 2 uses
  %xtraiter1766 = and i64 %wide.trip.count.i892, 3 ; 3 uses
  %i.dkn = add nsw i32 %reass.sub1168, 9
  %i.dko = icmp ult i32 %i.dkn, 3
  br i1 %i.dko, label %.epil.preheader1765, label %.lr.ph.i891.new

.lr.ph.i891.new:                                  ; preds = %.lr.ph.i891
  %unroll_iter1771 = and i64 %wide.trip.count.i892, 4294967292
  br label %bb.lv

.preheader.i899.unr-lcssa:                        ; preds = %bb.lv
  %lcmp.mod1768.not = icmp eq i64 %xtraiter1766, 0
  br i1 %lcmp.mod1768.not, label %.preheader.i899, label %.epil.preheader1765

.epil.preheader1765:                              ; preds = %.preheader.i899.unr-lcssa, %.lr.ph.i891
  %indvars.iv45.i893.epil.init = phi i64 [ 0, %.lr.ph.i891 ], [ %indvars.iv.next46.i896.3, %.preheader.i899.unr-lcssa ]
  %indvars.iv.i894.epil.init = phi i64 [ %i.dkl, %.lr.ph.i891 ], [ %indvars.iv.next.i897.3, %.preheader.i899.unr-lcssa ]
  %.034.i895.epil.init = phi i64 [ 0, %.lr.ph.i891 ], [ %i.dns, %.preheader.i899.unr-lcssa ]
  %lcmp.mod1770 = icmp ne i64 %xtraiter1766, 0
  tail call void @llvm.assume(i1 %lcmp.mod1770)
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lu, %.epil.preheader1765
  %indvars.iv45.i893.epil = phi i64 [ %indvars.iv45.i893.epil.init, %.epil.preheader1765 ], [ %indvars.iv.next46.i896.epil, %bb.lu ] ; 3 uses
  %indvars.iv.i894.epil = phi i64 [ %indvars.iv.i894.epil.init, %.epil.preheader1765 ], [ %indvars.iv.next.i897.epil, %bb.lu ] ; 2 uses
  %.034.i895.epil = phi i64 [ %.034.i895.epil.init, %.epil.preheader1765 ], [ %i.dlb, %bb.lu ]
  %epil.iter1767 = phi i64 [ 0, %.epil.preheader1765 ], [ %epil.iter1767.next, %bb.lu ]
  %i.dkp = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv45.i893.epil
  %i.dkq = load i16, ptr %i.dkp, align 2, !tbaa !20
  %i.dkr = zext i16 %i.dkq to i64
  %i.dks = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i894.epil
  %i.dkt = load i16, ptr %i.dks, align 2, !tbaa !20
  %i.dku = zext i16 %i.dkt to i64
  %i.dkv = sub nsw i64 %i.dkr, %i.dku
  %i.dkw = add nsw i64 %i.dkv, %.034.i895.epil    ; 2 uses
  %i.dkx = trunc i64 %i.dkw to i16
  %i.dky = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv45.i893.epil
  store i16 %i.dkx, ptr %i.dky, align 2, !tbaa !20
  %i.dkz = add nsw i64 %i.dkw, 2147483648
  %i.dla = lshr i64 %i.dkz, 16
  %i.dlb = add nsw i64 %i.dla, -32768             ; 2 uses
  %indvars.iv.next46.i896.epil = add nuw nsw i64 %indvars.iv45.i893.epil, 1
  %indvars.iv.next.i897.epil = add nsw i64 %indvars.iv.i894.epil, 1
  %epil.iter1767.next = add i64 %epil.iter1767, 1 ; 2 uses
  %epil.iter1767.cmp.not = icmp eq i64 %epil.iter1767.next, %xtraiter1766
  br i1 %epil.iter1767.cmp.not, label %.preheader.i899, label %bb.lu, !llvm.loop !86

.preheader.i899:                                  ; preds = %bb.lu, %.preheader.i899.unr-lcssa
  %.lcssa1518 = phi i64 [ %i.dns, %.preheader.i899.unr-lcssa ], [ %i.dlb, %bb.lu ]
  %i.dlc = icmp slt i32 %reass.sub1168, 0
  br i1 %i.dlc, label %.lr.ph38.i868, label %._crit_edge.i875

.lr.ph38.i868:                                    ; preds = %bb.lt, %.preheader.i899
  %.0.lcssa85.i869 = phi i64 [ %.lcssa1518, %.preheader.i899 ], [ 0, %bb.lt ] ; 2 uses
  %.025.lcssa84.i870 = phi i32 [ %i.dkm, %.preheader.i899 ], [ 0, %bb.lt ] ; 2 uses
  %i.dld = zext i32 %.025.lcssa84.i870 to i64     ; 3 uses
  %i.dle = sub nsw i64 2, %i.dld
  %xtraiter1775 = and i64 %i.dle, 3               ; 2 uses
  %lcmp.mod1776.not = icmp eq i64 %xtraiter1775, 0
  br i1 %lcmp.mod1776.not, label %.prol.loopexit1774, label %.prol.preheader1773

.prol.preheader1773:                              ; preds = %.lr.ph38.i868, %.prol.preheader1773
  %indvars.iv50.i871.prol = phi i64 [ %indvars.iv.next51.i873.prol, %.prol.preheader1773 ], [ %i.dld, %.lr.ph38.i868 ] ; 3 uses
  %.137.i872.prol = phi i64 [ %i.dln, %.prol.preheader1773 ], [ %.0.lcssa85.i869, %.lr.ph38.i868 ]
  %prol.iter1777 = phi i64 [ %prol.iter1777.next, %.prol.preheader1773 ], [ 0, %.lr.ph38.i868 ]
  %i.dlf = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv50.i871.prol
  %i.dlg = load i16, ptr %i.dlf, align 2, !tbaa !20
  %i.dlh = zext i16 %i.dlg to i64
  %i.dli = add nsw i64 %.137.i872.prol, %i.dlh    ; 2 uses
  %i.dlj = trunc i64 %i.dli to i16
  %i.dlk = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv50.i871.prol
  store i16 %i.dlj, ptr %i.dlk, align 2, !tbaa !20
  %i.dll = add nsw i64 %i.dli, 2147483648
  %i.dlm = lshr i64 %i.dll, 16
  %i.dln = add nsw i64 %i.dlm, -32768             ; 2 uses
  %indvars.iv.next51.i873.prol = add nuw nsw i64 %indvars.iv50.i871.prol, 1 ; 2 uses
  %prol.iter1777.next = add i64 %prol.iter1777, 1 ; 2 uses
  %prol.iter1777.cmp.not = icmp eq i64 %prol.iter1777.next, %xtraiter1775
  br i1 %prol.iter1777.cmp.not, label %.prol.loopexit1774, label %.prol.preheader1773, !llvm.loop !87

.prol.loopexit1774:                               ; preds = %.prol.preheader1773, %.lr.ph38.i868
  %indvars.iv50.i871.unr = phi i64 [ %i.dld, %.lr.ph38.i868 ], [ %indvars.iv.next51.i873.prol, %.prol.preheader1773 ]
  %.137.i872.unr = phi i64 [ %.0.lcssa85.i869, %.lr.ph38.i868 ], [ %i.dln, %.prol.preheader1773 ]
  %i.dlo = add nsw i32 %.025.lcssa84.i870, -7
  %i.dlp = icmp ult i32 %i.dlo, 3
  br i1 %i.dlp, label %._crit_edge.i875, label %.lr.ph38.i868.new

bb.lv:                                            ; preds = %bb.lv, %.lr.ph.i891.new
  %indvars.iv45.i893 = phi i64 [ 0, %.lr.ph.i891.new ], [ %indvars.iv.next46.i896.3, %bb.lv ] ; 6 uses
  %indvars.iv.i894 = phi i64 [ %i.dkl, %.lr.ph.i891.new ], [ %indvars.iv.next.i897.3, %bb.lv ] ; 5 uses
  %.034.i895 = phi i64 [ 0, %.lr.ph.i891.new ], [ %i.dns, %bb.lv ]
  %niter1772 = phi i64 [ 0, %.lr.ph.i891.new ], [ %niter1772.next.3, %bb.lv ]
  %i.dlq = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv45.i893
  %i.dlr = load i16, ptr %i.dlq, align 4, !tbaa !20
  %i.dls = zext i16 %i.dlr to i64
  %i.dlt = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i894
  %i.dlu = load i16, ptr %i.dlt, align 2, !tbaa !20
  %i.dlv = zext i16 %i.dlu to i64
  %i.dlw = sub nsw i64 %i.dls, %i.dlv
  %i.dlx = add nsw i64 %i.dlw, %.034.i895         ; 2 uses
  %i.dly = trunc i64 %i.dlx to i16
  %i.dlz = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv45.i893
  store i16 %i.dly, ptr %i.dlz, align 8, !tbaa !20
  %i.dma = add nsw i64 %i.dlx, 2147483648
  %i.dmb = lshr i64 %i.dma, 16
  %i.dmc = add nsw i64 %i.dmb, -32768
  %indvars.iv.next46.i896 = or disjoint i64 %indvars.iv45.i893, 1 ; 2 uses
  %i.dmd = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i896
  %i.dme = load i16, ptr %i.dmd, align 2, !tbaa !20
  %i.dmf = zext i16 %i.dme to i64
  %i.dmg = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i894
  %i.dmh = getelementptr i8, ptr %i.dmg, i64 2
  %i.dmi = load i16, ptr %i.dmh, align 2, !tbaa !20
  %i.dmj = zext i16 %i.dmi to i64
  %i.dmk = sub nsw i64 %i.dmf, %i.dmj
  %i.dml = add nsw i64 %i.dmk, %i.dmc             ; 2 uses
  %i.dmm = trunc i64 %i.dml to i16
  %i.dmn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next46.i896
  store i16 %i.dmm, ptr %i.dmn, align 2, !tbaa !20
  %i.dmo = add nsw i64 %i.dml, 2147483648
  %i.dmp = lshr i64 %i.dmo, 16
  %i.dmq = add nsw i64 %i.dmp, -32768
  %indvars.iv.next46.i896.1 = or disjoint i64 %indvars.iv45.i893, 2 ; 2 uses
  %i.dmr = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i896.1
  %i.dms = load i16, ptr %i.dmr, align 8, !tbaa !20
  %i.dmt = zext i16 %i.dms to i64
  %i.dmu = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i894
  %i.dmv = getelementptr i8, ptr %i.dmu, i64 4
  %i.dmw = load i16, ptr %i.dmv, align 2, !tbaa !20
  %i.dmx = zext i16 %i.dmw to i64
  %i.dmy = sub nsw i64 %i.dmt, %i.dmx
  %i.dmz = add nsw i64 %i.dmy, %i.dmq             ; 2 uses
  %i.dna = trunc i64 %i.dmz to i16
  %i.dnb = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next46.i896.1
  store i16 %i.dna, ptr %i.dnb, align 4, !tbaa !20
  %i.dnc = add nsw i64 %i.dmz, 2147483648
  %i.dnd = lshr i64 %i.dnc, 16
  %i.dne = add nsw i64 %i.dnd, -32768
  %indvars.iv.next46.i896.2 = or disjoint i64 %indvars.iv45.i893, 3 ; 2 uses
  %i.dnf = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next46.i896.2
  %i.dng = load i16, ptr %i.dnf, align 2, !tbaa !20
  %i.dnh = zext i16 %i.dng to i64
  %i.dni = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i894
  %i.dnj = getelementptr i8, ptr %i.dni, i64 6
  %i.dnk = load i16, ptr %i.dnj, align 2, !tbaa !20
  %i.dnl = zext i16 %i.dnk to i64
  %i.dnm = sub nsw i64 %i.dnh, %i.dnl
  %i.dnn = add nsw i64 %i.dnm, %i.dne             ; 2 uses
  %i.dno = trunc i64 %i.dnn to i16
  %i.dnp = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next46.i896.2
  store i16 %i.dno, ptr %i.dnp, align 2, !tbaa !20
  %i.dnq = add nsw i64 %i.dnn, 2147483648
  %i.dnr = lshr i64 %i.dnq, 16
  %i.dns = add nsw i64 %i.dnr, -32768             ; 3 uses
  %indvars.iv.next46.i896.3 = add nuw nsw i64 %indvars.iv45.i893, 4 ; 2 uses
  %indvars.iv.next.i897.3 = add nsw i64 %indvars.iv.i894, 4 ; 2 uses
  %niter1772.next.3 = add i64 %niter1772, 4       ; 2 uses
  %niter1772.ncmp.3 = icmp eq i64 %niter1772.next.3, %unroll_iter1771
  br i1 %niter1772.ncmp.3, label %.preheader.i899.unr-lcssa, label %bb.lv, !llvm.loop !3

.lr.ph38.i868.new:                                ; preds = %.prol.loopexit1774, %.lr.ph38.i868.new
  %indvars.iv50.i871 = phi i64 [ %indvars.iv.next51.i873.3, %.lr.ph38.i868.new ], [ %indvars.iv50.i871.unr, %.prol.loopexit1774 ] ; 6 uses
  %.137.i872 = phi i64 [ %i.dpc, %.lr.ph38.i868.new ], [ %.137.i872.unr, %.prol.loopexit1774 ]
  %i.dnt = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv50.i871
  %i.dnu = load i16, ptr %i.dnt, align 2, !tbaa !20
  %i.dnv = zext i16 %i.dnu to i64
  %i.dnw = add nsw i64 %.137.i872, %i.dnv         ; 2 uses
  %i.dnx = trunc i64 %i.dnw to i16
  %i.dny = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv50.i871
  store i16 %i.dnx, ptr %i.dny, align 2, !tbaa !20
  %i.dnz = add nsw i64 %i.dnw, 2147483648
  %i.doa = lshr i64 %i.dnz, 16
  %i.dob = add nsw i64 %i.doa, -32768
  %indvars.iv.next51.i873 = add nuw nsw i64 %indvars.iv50.i871, 1 ; 2 uses
  %i.doc = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i873
  %i.dod = load i16, ptr %i.doc, align 2, !tbaa !20
  %i.doe = zext i16 %i.dod to i64
  %i.dof = add nsw i64 %i.dob, %i.doe             ; 2 uses
  %i.dog = trunc i64 %i.dof to i16
  %i.doh = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next51.i873
  store i16 %i.dog, ptr %i.doh, align 2, !tbaa !20
  %i.doi = add nsw i64 %i.dof, 2147483648
  %i.doj = lshr i64 %i.doi, 16
  %i.dok = add nsw i64 %i.doj, -32768
  %indvars.iv.next51.i873.1 = add nuw nsw i64 %indvars.iv50.i871, 2 ; 2 uses
  %i.dol = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i873.1
  %i.dom = load i16, ptr %i.dol, align 2, !tbaa !20
  %i.don = zext i16 %i.dom to i64
  %i.doo = add nsw i64 %i.dok, %i.don             ; 2 uses
  %i.dop = trunc i64 %i.doo to i16
  %i.doq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next51.i873.1
  store i16 %i.dop, ptr %i.doq, align 2, !tbaa !20
  %i.dor = add nsw i64 %i.doo, 2147483648
  %i.dos = lshr i64 %i.dor, 16
  %i.dot = add nsw i64 %i.dos, -32768
  %indvars.iv.next51.i873.2 = add nuw nsw i64 %indvars.iv50.i871, 3 ; 2 uses
  %i.dou = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next51.i873.2
  %i.dov = load i16, ptr %i.dou, align 2, !tbaa !20
  %i.dow = zext i16 %i.dov to i64
  %i.dox = add nsw i64 %i.dot, %i.dow             ; 2 uses
  %i.doy = trunc i64 %i.dox to i16
  %i.doz = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next51.i873.2
  store i16 %i.doy, ptr %i.doz, align 2, !tbaa !20
  %i.dpa = add nsw i64 %i.dox, 2147483648
  %i.dpb = lshr i64 %i.dpa, 16
  %i.dpc = add nsw i64 %i.dpb, -32768
  %indvars.iv.next51.i873.3 = add nuw nsw i64 %indvars.iv50.i871, 4 ; 2 uses
  %exitcond53.not.i874.3 = icmp eq i64 %indvars.iv.next51.i873.3, 10
  br i1 %exitcond53.not.i874.3, label %._crit_edge.i875, label %.lr.ph38.i868.new, !llvm.loop !4

._crit_edge.i875:                                 ; preds = %.prol.loopexit1774, %.lr.ph38.i868.new, %.preheader.i899
  %i.dpd = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i859, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i876 = icmp eq i16 %i.dpd, 0
  br i1 %.not.i.not.not.i876, label %bb.lw, label %.preheader.i.i877

bb.lw:                                            ; preds = %._crit_edge.i875
  %i.dpe = add i16 %i.bfr, -1
  %i.dpf = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i860, align 16, !tbaa !20
  %.not.i.1.i878 = icmp eq i16 %i.dpf, 0
  br i1 %.not.i.1.i878, label %bb.lx, label %.lr.ph47.i.i879

bb.lx:                                            ; preds = %bb.lw
  %i.dpg = add i16 %i.bfr, -2
  %i.dph = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i861, align 2, !tbaa !20
  %.not.i.2.i883 = icmp eq i16 %i.dph, 0
  br i1 %.not.i.2.i883, label %bb.ly, label %.lr.ph47.i.i879

bb.ly:                                            ; preds = %bb.lx
  %i.dpi = add i16 %i.bfr, -3
  %i.dpj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i862, align 4, !tbaa !20
  %.not.i.3.i884 = icmp eq i16 %i.dpj, 0
  br i1 %.not.i.3.i884, label %bb.lz, label %.lr.ph47.i.i879

bb.lz:                                            ; preds = %bb.ly
  %i.dpk = add i16 %i.bfr, -4
  %i.dpl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i863, align 2, !tbaa !20
  %.not.i.4.i885 = icmp eq i16 %i.dpl, 0
  br i1 %.not.i.4.i885, label %bb.ma, label %.lr.ph47.i.i879

bb.ma:                                            ; preds = %bb.lz
  %i.dpm = add i16 %i.bfr, -5
  %i.dpn = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i864, align 8, !tbaa !20
  %.not.i.5.i886 = icmp eq i16 %i.dpn, 0
  br i1 %.not.i.5.i886, label %bb.mb, label %.lr.ph47.i.i879

bb.mb:                                            ; preds = %bb.ma
  %i.dpo = add i16 %i.bfr, -6
  %i.dpp = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i865, align 2, !tbaa !20
  %.not.i.6.i887 = icmp eq i16 %i.dpp, 0
  br i1 %.not.i.6.i887, label %bb.mc, label %.lr.ph47.i.i879

bb.mc:                                            ; preds = %bb.mb
  %i.dpq = add i16 %i.bfr, -7
  %i.dpr = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i866, align 4, !tbaa !20
  %.not.i.7.i888 = icmp eq i16 %i.dpr, 0
  br i1 %.not.i.7.i888, label %bb.md, label %.lr.ph47.i.i879

bb.md:                                            ; preds = %bb.mc
  %i.dps = add i16 %i.bfr, -8
  %i.dpt = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i867, align 2, !tbaa !20
  %.not.i.8.i889 = icmp eq i16 %i.dpt, 0
  br i1 %.not.i.8.i889, label %bb.me, label %.lr.ph47.i.i879

bb.me:                                            ; preds = %bb.md
  %i.dpu = add i16 %i.bfr, -9
  %i.dpv = load i16, ptr %i.e, align 16, !tbaa !20
  %.not.i.9.i890 = icmp eq i16 %i.dpv, 0
  br i1 %.not.i.9.i890, label %bb.mf, label %.lr.ph47.i.i879

bb.mf:                                            ; preds = %bb.me
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit900

.preheader.i.i877:                                ; preds = %._crit_edge.i875
  %i.dpw = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %i.bfr, ptr %i.dpw, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.eb, align 2, !tbaa !24
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.eb, i64 22
  store i16 %i.dpd, ptr %i.dpy, align 2, !tbaa !20
  %i.dpz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i860, align 16, !tbaa !20
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i16 %i.dpz, ptr %i.dqa, align 2, !tbaa !20
  %i.dqb = load <8 x i16>, ptr %i.e, align 16, !tbaa !20
  store <8 x i16> %i.dqb, ptr %i.dpx, align 2, !tbaa !20
  br label %submag0.exit900

.lr.ph47.i.i879:                                  ; preds = %bb.me, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw
  %.03341.i.lcssa.ph.i880 = phi i16 [ %i.dpu, %bb.me ], [ %i.dps, %bb.md ], [ %i.dpq, %bb.mc ], [ %i.dpo, %bb.mb ], [ %i.dpm, %bb.ma ], [ %i.dpk, %bb.lz ], [ %i.dpi, %bb.ly ], [ %i.dpg, %bb.lx ], [ %i.dpe, %bb.lw ]
  %indvars.iv59.i.lcssa.ph.i881 = phi i64 [ 0, %bb.me ], [ 2, %bb.md ], [ 4, %bb.mc ], [ 6, %bb.mb ], [ 8, %bb.ma ], [ 10, %bb.lz ], [ 12, %bb.ly ], [ 14, %bb.lx ], [ 16, %bb.lw ] ; 3 uses
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.ph.i880, ptr %i.dqc, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.eb, align 2, !tbaa !24
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.dqe = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i881
  %scevgep.i882 = getelementptr i8, ptr %i.eb, i64 %i.dqe
  %i.dqf = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i881, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i882, ptr noundef nonnull align 16 dereferenceable(1) %i.e, i64 %i.dqf, i1 false), !tbaa !20
  %i.dqg = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i881
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dqd, i8 0, i64 %i.dqg, i1 false), !tbaa !20
  br label %submag0.exit900

submag0.exit900:                                  ; preds = %bb.mf, %.preheader.i.i877, %.lr.ph47.i.i879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %sub.exit36

bb.mg:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.dqh = sext i16 %i.bfs to i32                 ; 2 uses
  %i.dqi = sext i16 %i.bfr to i32                 ; 3 uses
  %i.dqj = sub nsw i32 %i.dqh, %i.dqi
  %i.dqk = icmp slt i32 %i.dqj, 10
  br i1 %i.dqk, label %.lr.ph.i849, label %.lr.ph38.i826

.lr.ph.i849:                                      ; preds = %bb.mg
  %i.dql = sext i16 %i.bfs to i64
  %i.dqm = sub nsw i32 0, %i.dqi
  %i.dqn = sext i32 %i.dqm to i64
  %i.dqo = add nsw i64 %i.dql, %i.dqn             ; 2 uses
  %i.dqp = add nsw i32 %i.dqi, 10
  %i.dqq = sub nsw i32 %i.dqp, %i.dqh             ; 4 uses
  %wide.trip.count.i850 = zext i32 %i.dqq to i64  ; 2 uses
  %xtraiter1753 = and i64 %wide.trip.count.i850, 3 ; 3 uses
  %i.dqr = add nsw i32 %i.dqq, -1
  %i.dqs = icmp ult i32 %i.dqr, 3
  br i1 %i.dqs, label %.epil.preheader1752, label %.lr.ph.i849.new

.lr.ph.i849.new:                                  ; preds = %.lr.ph.i849
  %unroll_iter1758 = and i64 %wide.trip.count.i850, 4294967292
  br label %bb.mi

.preheader.i857.unr-lcssa:                        ; preds = %bb.mi
  %lcmp.mod1755.not = icmp eq i64 %xtraiter1753, 0
  br i1 %lcmp.mod1755.not, label %.preheader.i857, label %.epil.preheader1752

.epil.preheader1752:                              ; preds = %.preheader.i857.unr-lcssa, %.lr.ph.i849
  %indvars.iv45.i851.epil.init = phi i64 [ 0, %.lr.ph.i849 ], [ %indvars.iv.next46.i854.3, %.preheader.i857.unr-lcssa ]
  %indvars.iv.i852.epil.init = phi i64 [ %i.dqo, %.lr.ph.i849 ], [ %indvars.iv.next.i855.3, %.preheader.i857.unr-lcssa ]
  %.034.i853.epil.init = phi i64 [ 0, %.lr.ph.i849 ], [ %i.dtw, %.preheader.i857.unr-lcssa ]
  %lcmp.mod1757 = icmp ne i64 %xtraiter1753, 0
  tail call void @llvm.assume(i1 %lcmp.mod1757)
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mh, %.epil.preheader1752
  %indvars.iv45.i851.epil = phi i64 [ %indvars.iv45.i851.epil.init, %.epil.preheader1752 ], [ %indvars.iv.next46.i854.epil, %bb.mh ] ; 3 uses
  %indvars.iv.i852.epil = phi i64 [ %indvars.iv.i852.epil.init, %.epil.preheader1752 ], [ %indvars.iv.next.i855.epil, %bb.mh ] ; 2 uses
  %.034.i853.epil = phi i64 [ %.034.i853.epil.init, %.epil.preheader1752 ], [ %i.drf, %bb.mh ]
  %epil.iter1754 = phi i64 [ 0, %.epil.preheader1752 ], [ %epil.iter1754.next, %bb.mh ]
  %i.dqt = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv45.i851.epil
  %i.dqu = load i16, ptr %i.dqt, align 2, !tbaa !20
  %i.dqv = zext i16 %i.dqu to i64
  %i.dqw = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i852.epil
  %i.dqx = load i16, ptr %i.dqw, align 2, !tbaa !20
  %i.dqy = zext i16 %i.dqx to i64
  %i.dqz = sub nsw i64 %i.dqv, %i.dqy
  %i.dra = add nsw i64 %i.dqz, %.034.i853.epil    ; 2 uses
  %i.drb = trunc i64 %i.dra to i16
  %i.drc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv45.i851.epil
  store i16 %i.drb, ptr %i.drc, align 2, !tbaa !20
  %i.drd = add nsw i64 %i.dra, 2147483648
  %i.dre = lshr i64 %i.drd, 16
  %i.drf = add nsw i64 %i.dre, -32768             ; 2 uses
  %indvars.iv.next46.i854.epil = add nuw nsw i64 %indvars.iv45.i851.epil, 1
  %indvars.iv.next.i855.epil = add nsw i64 %indvars.iv.i852.epil, 1
  %epil.iter1754.next = add i64 %epil.iter1754, 1 ; 2 uses
  %epil.iter1754.cmp.not = icmp eq i64 %epil.iter1754.next, %xtraiter1753
  br i1 %epil.iter1754.cmp.not, label %.preheader.i857, label %bb.mh, !llvm.loop !88

.preheader.i857:                                  ; preds = %bb.mh, %.preheader.i857.unr-lcssa
  %.lcssa1517 = phi i64 [ %i.dtw, %.preheader.i857.unr-lcssa ], [ %i.drf, %bb.mh ]
  %i.drg = icmp samesign ult i32 %i.dqq, 10
  br i1 %i.drg, label %.lr.ph38.i826, label %._crit_edge.i833

.lr.ph38.i826:                                    ; preds = %bb.mg, %.preheader.i857
  %.0.lcssa85.i827 = phi i64 [ %.lcssa1517, %.preheader.i857 ], [ 0, %bb.mg ] ; 2 uses
  %.025.lcssa84.i828 = phi i32 [ %i.dqq, %.preheader.i857 ], [ 0, %bb.mg ] ; 2 uses
  %i.drh = zext nneg i32 %.025.lcssa84.i828 to i64 ; 3 uses
  %i.dri = sub nsw i64 2, %i.drh
  %xtraiter1762 = and i64 %i.dri, 3               ; 2 uses
  %lcmp.mod1763.not = icmp eq i64 %xtraiter1762, 0
  br i1 %lcmp.mod1763.not, label %.prol.loopexit1761, label %.prol.preheader1760

.prol.preheader1760:                              ; preds = %.lr.ph38.i826, %.prol.preheader1760
  %indvars.iv50.i829.prol = phi i64 [ %indvars.iv.next51.i831.prol, %.prol.preheader1760 ], [ %i.drh, %.lr.ph38.i826 ] ; 3 uses
  %.137.i830.prol = phi i64 [ %i.drr, %.prol.preheader1760 ], [ %.0.lcssa85.i827, %.lr.ph38.i826 ]
  %prol.iter1764 = phi i64 [ %prol.iter1764.next, %.prol.preheader1760 ], [ 0, %.lr.ph38.i826 ]
  %i.drj = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv50.i829.prol
  %i.drk = load i16, ptr %i.drj, align 2, !tbaa !20
  %i.drl = zext i16 %i.drk to i64
  %i.drm = add nsw i64 %.137.i830.prol, %i.drl    ; 2 uses
  %i.drn = trunc i64 %i.drm to i16
  %i.dro = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv50.i829.prol
  store i16 %i.drn, ptr %i.dro, align 2, !tbaa !20
  %i.drp = add nsw i64 %i.drm, 2147483648
  %i.drq = lshr i64 %i.drp, 16
  %i.drr = add nsw i64 %i.drq, -32768             ; 2 uses
  %indvars.iv.next51.i831.prol = add nuw nsw i64 %indvars.iv50.i829.prol, 1 ; 2 uses
  %prol.iter1764.next = add i64 %prol.iter1764, 1 ; 2 uses
  %prol.iter1764.cmp.not = icmp eq i64 %prol.iter1764.next, %xtraiter1762
  br i1 %prol.iter1764.cmp.not, label %.prol.loopexit1761, label %.prol.preheader1760, !llvm.loop !89

.prol.loopexit1761:                               ; preds = %.prol.preheader1760, %.lr.ph38.i826
  %indvars.iv50.i829.unr = phi i64 [ %i.drh, %.lr.ph38.i826 ], [ %indvars.iv.next51.i831.prol, %.prol.preheader1760 ]
  %.137.i830.unr = phi i64 [ %.0.lcssa85.i827, %.lr.ph38.i826 ], [ %i.drr, %.prol.preheader1760 ]
  %i.drs = add nsw i32 %.025.lcssa84.i828, -7
  %i.drt = icmp ult i32 %i.drs, 3
  br i1 %i.drt, label %._crit_edge.i833, label %.lr.ph38.i826.new

bb.mi:                                            ; preds = %bb.mi, %.lr.ph.i849.new
  %indvars.iv45.i851 = phi i64 [ 0, %.lr.ph.i849.new ], [ %indvars.iv.next46.i854.3, %bb.mi ] ; 6 uses
  %indvars.iv.i852 = phi i64 [ %i.dqo, %.lr.ph.i849.new ], [ %indvars.iv.next.i855.3, %bb.mi ] ; 5 uses
  %.034.i853 = phi i64 [ 0, %.lr.ph.i849.new ], [ %i.dtw, %bb.mi ]
  %niter1759 = phi i64 [ 0, %.lr.ph.i849.new ], [ %niter1759.next.3, %bb.mi ]
  %i.dru = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv45.i851
  %i.drv = load i16, ptr %i.dru, align 4, !tbaa !20
  %i.drw = zext i16 %i.drv to i64
  %i.drx = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i852
  %i.dry = load i16, ptr %i.drx, align 2, !tbaa !20
  %i.drz = zext i16 %i.dry to i64
  %i.dsa = sub nsw i64 %i.drw, %i.drz
  %i.dsb = add nsw i64 %i.dsa, %.034.i853         ; 2 uses
  %i.dsc = trunc i64 %i.dsb to i16
  %i.dsd = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv45.i851
  store i16 %i.dsc, ptr %i.dsd, align 8, !tbaa !20
  %i.dse = add nsw i64 %i.dsb, 2147483648
  %i.dsf = lshr i64 %i.dse, 16
  %i.dsg = add nsw i64 %i.dsf, -32768
  %indvars.iv.next46.i854 = or disjoint i64 %indvars.iv45.i851, 1 ; 2 uses
  %i.dsh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i854
  %i.dsi = load i16, ptr %i.dsh, align 2, !tbaa !20
  %i.dsj = zext i16 %i.dsi to i64
  %i.dsk = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i852
  %i.dsl = getelementptr i8, ptr %i.dsk, i64 2
  %i.dsm = load i16, ptr %i.dsl, align 2, !tbaa !20
  %i.dsn = zext i16 %i.dsm to i64
  %i.dso = sub nsw i64 %i.dsj, %i.dsn
  %i.dsp = add nsw i64 %i.dso, %i.dsg             ; 2 uses
  %i.dsq = trunc i64 %i.dsp to i16
  %i.dsr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next46.i854
  store i16 %i.dsq, ptr %i.dsr, align 2, !tbaa !20
  %i.dss = add nsw i64 %i.dsp, 2147483648
  %i.dst = lshr i64 %i.dss, 16
  %i.dsu = add nsw i64 %i.dst, -32768
  %indvars.iv.next46.i854.1 = or disjoint i64 %indvars.iv45.i851, 2 ; 2 uses
  %i.dsv = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i854.1
  %i.dsw = load i16, ptr %i.dsv, align 8, !tbaa !20
  %i.dsx = zext i16 %i.dsw to i64
  %i.dsy = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i852
  %i.dsz = getelementptr i8, ptr %i.dsy, i64 4
  %i.dta = load i16, ptr %i.dsz, align 2, !tbaa !20
  %i.dtb = zext i16 %i.dta to i64
  %i.dtc = sub nsw i64 %i.dsx, %i.dtb
  %i.dtd = add nsw i64 %i.dtc, %i.dsu             ; 2 uses
  %i.dte = trunc i64 %i.dtd to i16
  %i.dtf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next46.i854.1
  store i16 %i.dte, ptr %i.dtf, align 4, !tbaa !20
  %i.dtg = add nsw i64 %i.dtd, 2147483648
  %i.dth = lshr i64 %i.dtg, 16
  %i.dti = add nsw i64 %i.dth, -32768
  %indvars.iv.next46.i854.2 = or disjoint i64 %indvars.iv45.i851, 3 ; 2 uses
  %i.dtj = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next46.i854.2
  %i.dtk = load i16, ptr %i.dtj, align 2, !tbaa !20
  %i.dtl = zext i16 %i.dtk to i64
  %i.dtm = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i852
  %i.dtn = getelementptr i8, ptr %i.dtm, i64 6
  %i.dto = load i16, ptr %i.dtn, align 2, !tbaa !20
  %i.dtp = zext i16 %i.dto to i64
  %i.dtq = sub nsw i64 %i.dtl, %i.dtp
  %i.dtr = add nsw i64 %i.dtq, %i.dti             ; 2 uses
  %i.dts = trunc i64 %i.dtr to i16
  %i.dtt = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next46.i854.2
  store i16 %i.dts, ptr %i.dtt, align 2, !tbaa !20
  %i.dtu = add nsw i64 %i.dtr, 2147483648
  %i.dtv = lshr i64 %i.dtu, 16
  %i.dtw = add nsw i64 %i.dtv, -32768             ; 3 uses
  %indvars.iv.next46.i854.3 = add nuw nsw i64 %indvars.iv45.i851, 4 ; 2 uses
  %indvars.iv.next.i855.3 = add nsw i64 %indvars.iv.i852, 4 ; 2 uses
  %niter1759.next.3 = add i64 %niter1759, 4       ; 2 uses
  %niter1759.ncmp.3 = icmp eq i64 %niter1759.next.3, %unroll_iter1758
  br i1 %niter1759.ncmp.3, label %.preheader.i857.unr-lcssa, label %bb.mi, !llvm.loop !3

.lr.ph38.i826.new:                                ; preds = %.prol.loopexit1761, %.lr.ph38.i826.new
  %indvars.iv50.i829 = phi i64 [ %indvars.iv.next51.i831.3, %.lr.ph38.i826.new ], [ %indvars.iv50.i829.unr, %.prol.loopexit1761 ] ; 6 uses
  %.137.i830 = phi i64 [ %i.dvg, %.lr.ph38.i826.new ], [ %.137.i830.unr, %.prol.loopexit1761 ]
  %i.dtx = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv50.i829
  %i.dty = load i16, ptr %i.dtx, align 2, !tbaa !20
  %i.dtz = zext i16 %i.dty to i64
  %i.dua = add nsw i64 %.137.i830, %i.dtz         ; 2 uses
  %i.dub = trunc i64 %i.dua to i16
  %i.duc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv50.i829
  store i16 %i.dub, ptr %i.duc, align 2, !tbaa !20
  %i.dud = add nsw i64 %i.dua, 2147483648
  %i.due = lshr i64 %i.dud, 16
  %i.duf = add nsw i64 %i.due, -32768
  %indvars.iv.next51.i831 = add nuw nsw i64 %indvars.iv50.i829, 1 ; 2 uses
  %i.dug = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i831
  %i.duh = load i16, ptr %i.dug, align 2, !tbaa !20
  %i.dui = zext i16 %i.duh to i64
  %i.duj = add nsw i64 %i.duf, %i.dui             ; 2 uses
  %i.duk = trunc i64 %i.duj to i16
  %i.dul = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next51.i831
  store i16 %i.duk, ptr %i.dul, align 2, !tbaa !20
  %i.dum = add nsw i64 %i.duj, 2147483648
  %i.dun = lshr i64 %i.dum, 16
  %i.duo = add nsw i64 %i.dun, -32768
  %indvars.iv.next51.i831.1 = add nuw nsw i64 %indvars.iv50.i829, 2 ; 2 uses
  %i.dup = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i831.1
  %i.duq = load i16, ptr %i.dup, align 2, !tbaa !20
  %i.dur = zext i16 %i.duq to i64
  %i.dus = add nsw i64 %i.duo, %i.dur             ; 2 uses
  %i.dut = trunc i64 %i.dus to i16
  %i.duu = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next51.i831.1
  store i16 %i.dut, ptr %i.duu, align 2, !tbaa !20
  %i.duv = add nsw i64 %i.dus, 2147483648
  %i.duw = lshr i64 %i.duv, 16
  %i.dux = add nsw i64 %i.duw, -32768
  %indvars.iv.next51.i831.2 = add nuw nsw i64 %indvars.iv50.i829, 3 ; 2 uses
  %i.duy = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next51.i831.2
  %i.duz = load i16, ptr %i.duy, align 2, !tbaa !20
  %i.dva = zext i16 %i.duz to i64
  %i.dvb = add nsw i64 %i.dux, %i.dva             ; 2 uses
  %i.dvc = trunc i64 %i.dvb to i16
  %i.dvd = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next51.i831.2
  store i16 %i.dvc, ptr %i.dvd, align 2, !tbaa !20
  %i.dve = add nsw i64 %i.dvb, 2147483648
  %i.dvf = lshr i64 %i.dve, 16
  %i.dvg = add nsw i64 %i.dvf, -32768
  %indvars.iv.next51.i831.3 = add nuw nsw i64 %indvars.iv50.i829, 4 ; 2 uses
  %exitcond53.not.i832.3 = icmp eq i64 %indvars.iv.next51.i831.3, 10
  br i1 %exitcond53.not.i832.3, label %._crit_edge.i833, label %.lr.ph38.i826.new, !llvm.loop !4

._crit_edge.i833:                                 ; preds = %.prol.loopexit1761, %.lr.ph38.i826.new, %.preheader.i857
  %i.dvh = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i817, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i834 = icmp eq i16 %i.dvh, 0
  br i1 %.not.i.not.not.i834, label %bb.mj, label %.preheader.i.i835

bb.mj:                                            ; preds = %._crit_edge.i833
  %i.dvi = add i16 %i.bfs, -1
  %i.dvj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i818, align 16, !tbaa !20
  %.not.i.1.i836 = icmp eq i16 %i.dvj, 0
  br i1 %.not.i.1.i836, label %bb.mk, label %.lr.ph47.i.i837

bb.mk:                                            ; preds = %bb.mj
  %i.dvk = add i16 %i.bfs, -2
  %i.dvl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i819, align 2, !tbaa !20
  %.not.i.2.i841 = icmp eq i16 %i.dvl, 0
  br i1 %.not.i.2.i841, label %bb.ml, label %.lr.ph47.i.i837

bb.ml:                                            ; preds = %bb.mk
  %i.dvm = add i16 %i.bfs, -3
  %i.dvn = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i820, align 4, !tbaa !20
  %.not.i.3.i842 = icmp eq i16 %i.dvn, 0
  br i1 %.not.i.3.i842, label %bb.mm, label %.lr.ph47.i.i837

bb.mm:                                            ; preds = %bb.ml
  %i.dvo = add i16 %i.bfs, -4
  %i.dvp = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i821, align 2, !tbaa !20
  %.not.i.4.i843 = icmp eq i16 %i.dvp, 0
  br i1 %.not.i.4.i843, label %bb.mn, label %.lr.ph47.i.i837

bb.mn:                                            ; preds = %bb.mm
  %i.dvq = add i16 %i.bfs, -5
  %i.dvr = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i822, align 8, !tbaa !20
  %.not.i.5.i844 = icmp eq i16 %i.dvr, 0
  br i1 %.not.i.5.i844, label %bb.mo, label %.lr.ph47.i.i837

bb.mo:                                            ; preds = %bb.mn
  %i.dvs = add i16 %i.bfs, -6
  %i.dvt = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i823, align 2, !tbaa !20
  %.not.i.6.i845 = icmp eq i16 %i.dvt, 0
  br i1 %.not.i.6.i845, label %bb.mp, label %.lr.ph47.i.i837

bb.mp:                                            ; preds = %bb.mo
  %i.dvu = add i16 %i.bfs, -7
  %i.dvv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i824, align 4, !tbaa !20
  %.not.i.7.i846 = icmp eq i16 %i.dvv, 0
  br i1 %.not.i.7.i846, label %bb.mq, label %.lr.ph47.i.i837

bb.mq:                                            ; preds = %bb.mp
  %i.dvw = add i16 %i.bfs, -8
  %i.dvx = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i825, align 2, !tbaa !20
  %.not.i.8.i847 = icmp eq i16 %i.dvx, 0
  br i1 %.not.i.8.i847, label %bb.mr, label %.lr.ph47.i.i837

bb.mr:                                            ; preds = %bb.mq
  %i.dvy = add i16 %i.bfs, -9
  %i.dvz = load i16, ptr %i.f, align 16, !tbaa !20
  %.not.i.9.i848 = icmp eq i16 %i.dvz, 0
  br i1 %.not.i.9.i848, label %bb.ms, label %.lr.ph47.i.i837

bb.ms:                                            ; preds = %bb.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit858

.preheader.i.i835:                                ; preds = %._crit_edge.i833
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %i.bfs, ptr %i.dwa, align 2, !tbaa !26
  %i.dwb = sub i16 0, %i.bfo
  store i16 %i.dwb, ptr %i.eb, align 2, !tbaa !24
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.eb, i64 22
  store i16 %i.dvh, ptr %i.dwd, align 2, !tbaa !20
  %i.dwe = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i818, align 16, !tbaa !20
  %i.dwf = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i16 %i.dwe, ptr %i.dwf, align 2, !tbaa !20
  %i.dwg = load <8 x i16>, ptr %i.f, align 16, !tbaa !20
  store <8 x i16> %i.dwg, ptr %i.dwc, align 2, !tbaa !20
  br label %submag0.exit858

.lr.ph47.i.i837:                                  ; preds = %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj
  %.03341.i.lcssa.ph.i838 = phi i16 [ %i.dvy, %bb.mr ], [ %i.dvw, %bb.mq ], [ %i.dvu, %bb.mp ], [ %i.dvs, %bb.mo ], [ %i.dvq, %bb.mn ], [ %i.dvo, %bb.mm ], [ %i.dvm, %bb.ml ], [ %i.dvk, %bb.mk ], [ %i.dvi, %bb.mj ]
  %indvars.iv59.i.lcssa.ph.i839 = phi i64 [ 0, %bb.mr ], [ 2, %bb.mq ], [ 4, %bb.mp ], [ 6, %bb.mo ], [ 8, %bb.mn ], [ 10, %bb.mm ], [ 12, %bb.ml ], [ 14, %bb.mk ], [ 16, %bb.mj ] ; 3 uses
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.ph.i838, ptr %i.dwh, align 2, !tbaa !26
  %i.dwi = sub i16 0, %i.bfo
  store i16 %i.dwi, ptr %i.eb, align 2, !tbaa !24
  %i.dwj = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.dwk = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i839
  %scevgep.i840 = getelementptr i8, ptr %i.eb, i64 %i.dwk
  %i.dwl = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i839, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i840, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 %i.dwl, i1 false), !tbaa !20
  %i.dwm = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i839
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dwj, i8 0, i64 %i.dwm, i1 false), !tbaa !20
  br label %submag0.exit858

submag0.exit858:                                  ; preds = %bb.ms, %.preheader.i.i835, %.lr.ph47.i.i837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %sub.exit36

bb.mt:                                            ; preds = %abscmp.exit904
  br i1 %.014.i903, label %bb.mu, label %bb.ni

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.dwn = sext i16 %i.bfr to i32                 ; 2 uses
  %i.dwo = sext i16 %i.bfs to i32                 ; 3 uses
  %i.dwp = sub nsw i32 %i.dwn, %i.dwo
  %i.dwq = icmp slt i32 %i.dwp, 10
  br i1 %i.dwq, label %.lr.ph.i807, label %.lr.ph40.i779

.lr.ph.i807:                                      ; preds = %bb.mu
  %i.dwr = sext i16 %i.bfr to i64
  %i.dws = sub nsw i32 0, %i.dwo
  %i.dwt = sext i32 %i.dws to i64
  %i.dwu = add nsw i64 %i.dwt, %i.dwr             ; 2 uses
  %reass.sub1167 = sub nsw i32 %i.dwo, %i.dwn     ; 3 uses
  %i.dwv = add nsw i32 %reass.sub1167, 10         ; 3 uses
  %wide.trip.count.i808 = zext i32 %i.dwv to i64  ; 2 uses
  %xtraiter1740 = and i64 %wide.trip.count.i808, 3 ; 3 uses
  %i.dww = add nsw i32 %reass.sub1167, 9
  %i.dwx = icmp ult i32 %i.dww, 3
  br i1 %i.dwx, label %.epil.preheader1739, label %.lr.ph.i807.new

.lr.ph.i807.new:                                  ; preds = %.lr.ph.i807
  %unroll_iter1745 = and i64 %wide.trip.count.i808, 4294967292
  br label %bb.mw

.preheader.i815.unr-lcssa:                        ; preds = %bb.mw
  %lcmp.mod1742.not = icmp eq i64 %xtraiter1740, 0
  br i1 %lcmp.mod1742.not, label %.preheader.i815, label %.epil.preheader1739

.epil.preheader1739:                              ; preds = %.preheader.i815.unr-lcssa, %.lr.ph.i807
  %indvars.iv51.i809.epil.init = phi i64 [ 0, %.lr.ph.i807 ], [ %indvars.iv.next52.i812.3, %.preheader.i815.unr-lcssa ]
  %indvars.iv.i810.epil.init = phi i64 [ %i.dwu, %.lr.ph.i807 ], [ %indvars.iv.next.i813.3, %.preheader.i815.unr-lcssa ]
  %.036.i811.epil.init = phi i64 [ 0, %.lr.ph.i807 ], [ %i.dzp, %.preheader.i815.unr-lcssa ]
  %lcmp.mod1744 = icmp ne i64 %xtraiter1740, 0
  tail call void @llvm.assume(i1 %lcmp.mod1744)
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mv, %.epil.preheader1739
  %indvars.iv51.i809.epil = phi i64 [ %indvars.iv51.i809.epil.init, %.epil.preheader1739 ], [ %indvars.iv.next52.i812.epil, %bb.mv ] ; 3 uses
  %indvars.iv.i810.epil = phi i64 [ %indvars.iv.i810.epil.init, %.epil.preheader1739 ], [ %indvars.iv.next.i813.epil, %bb.mv ] ; 2 uses
  %.036.i811.epil = phi i64 [ %.036.i811.epil.init, %.epil.preheader1739 ], [ %i.dxi, %bb.mv ]
  %epil.iter1741 = phi i64 [ 0, %.epil.preheader1739 ], [ %epil.iter1741.next, %bb.mv ]
  %i.dwy = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv51.i809.epil
  %i.dwz = load i16, ptr %i.dwy, align 2, !tbaa !20
  %i.dxa = zext i16 %i.dwz to i64
  %i.dxb = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i810.epil
  %i.dxc = load i16, ptr %i.dxb, align 2, !tbaa !20
  %i.dxd = zext i16 %i.dxc to i64
  %i.dxe = add nuw nsw i64 %.036.i811.epil, %i.dxa
  %i.dxf = add nuw nsw i64 %i.dxe, %i.dxd         ; 2 uses
  %i.dxg = trunc i64 %i.dxf to i16
  %i.dxh = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv51.i809.epil
  store i16 %i.dxg, ptr %i.dxh, align 2, !tbaa !20
  %i.dxi = lshr i64 %i.dxf, 16                    ; 2 uses
  %indvars.iv.next52.i812.epil = add nuw nsw i64 %indvars.iv51.i809.epil, 1
  %indvars.iv.next.i813.epil = add nsw i64 %indvars.iv.i810.epil, 1
  %epil.iter1741.next = add i64 %epil.iter1741, 1 ; 2 uses
  %epil.iter1741.cmp.not = icmp eq i64 %epil.iter1741.next, %xtraiter1740
  br i1 %epil.iter1741.cmp.not, label %.preheader.i815, label %bb.mv, !llvm.loop !90

.preheader.i815:                                  ; preds = %bb.mv, %.preheader.i815.unr-lcssa
  %.lcssa1515 = phi i64 [ %i.dzp, %.preheader.i815.unr-lcssa ], [ %i.dxi, %bb.mv ] ; 2 uses
  %i.dxj = icmp slt i32 %reass.sub1167, 0
  br i1 %i.dxj, label %.lr.ph40.i779, label %._crit_edge.i786

.lr.ph40.i779:                                    ; preds = %bb.mu, %.preheader.i815
  %.0.lcssa94.i780 = phi i64 [ %.lcssa1515, %.preheader.i815 ], [ 0, %bb.mu ] ; 2 uses
  %.027.lcssa93.i781 = phi i32 [ %i.dwv, %.preheader.i815 ], [ 0, %bb.mu ] ; 2 uses
  %i.dxk = zext i32 %.027.lcssa93.i781 to i64     ; 3 uses
  %i.dxl = sub nsw i64 2, %i.dxk
  %xtraiter1749 = and i64 %i.dxl, 7               ; 2 uses
  %lcmp.mod1750.not = icmp eq i64 %xtraiter1749, 0
  br i1 %lcmp.mod1750.not, label %.prol.loopexit1748, label %.prol.preheader1747

.prol.preheader1747:                              ; preds = %.lr.ph40.i779, %.prol.preheader1747
  %indvars.iv56.i782.prol = phi i64 [ %indvars.iv.next57.i784.prol, %.prol.preheader1747 ], [ %i.dxk, %.lr.ph40.i779 ] ; 3 uses
  %.139.i783.prol = phi i64 [ %i.dxs, %.prol.preheader1747 ], [ %.0.lcssa94.i780, %.lr.ph40.i779 ]
  %prol.iter1751 = phi i64 [ %prol.iter1751.next, %.prol.preheader1747 ], [ 0, %.lr.ph40.i779 ]
  %i.dxm = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv56.i782.prol
  %i.dxn = load i16, ptr %i.dxm, align 2, !tbaa !20
  %i.dxo = zext i16 %i.dxn to i64
  %i.dxp = add nuw nsw i64 %.139.i783.prol, %i.dxo ; 2 uses
  %i.dxq = trunc i64 %i.dxp to i16
  %i.dxr = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv56.i782.prol
  store i16 %i.dxq, ptr %i.dxr, align 2, !tbaa !20
  %i.dxs = lshr i64 %i.dxp, 16                    ; 3 uses
  %indvars.iv.next57.i784.prol = add nuw nsw i64 %indvars.iv56.i782.prol, 1 ; 2 uses
  %prol.iter1751.next = add i64 %prol.iter1751, 1 ; 2 uses
  %prol.iter1751.cmp.not = icmp eq i64 %prol.iter1751.next, %xtraiter1749
  br i1 %prol.iter1751.cmp.not, label %.prol.loopexit1748, label %.prol.preheader1747, !llvm.loop !91

.prol.loopexit1748:                               ; preds = %.prol.preheader1747, %.lr.ph40.i779
  %.lcssa1516.unr = phi i64 [ poison, %.lr.ph40.i779 ], [ %i.dxs, %.prol.preheader1747 ]
  %indvars.iv56.i782.unr = phi i64 [ %i.dxk, %.lr.ph40.i779 ], [ %indvars.iv.next57.i784.prol, %.prol.preheader1747 ]
  %.139.i783.unr = phi i64 [ %.0.lcssa94.i780, %.lr.ph40.i779 ], [ %i.dxs, %.prol.preheader1747 ]
  %i.dxt = add nsw i32 %.027.lcssa93.i781, -3
  %i.dxu = icmp ult i32 %i.dxt, 7
  br i1 %i.dxu, label %._crit_edge.i786, label %.lr.ph40.i779.new

bb.mw:                                            ; preds = %bb.mw, %.lr.ph.i807.new
  %indvars.iv51.i809 = phi i64 [ 0, %.lr.ph.i807.new ], [ %indvars.iv.next52.i812.3, %bb.mw ] ; 6 uses
  %indvars.iv.i810 = phi i64 [ %i.dwu, %.lr.ph.i807.new ], [ %indvars.iv.next.i813.3, %bb.mw ] ; 5 uses
  %.036.i811 = phi i64 [ 0, %.lr.ph.i807.new ], [ %i.dzp, %bb.mw ]
  %niter1746 = phi i64 [ 0, %.lr.ph.i807.new ], [ %niter1746.next.3, %bb.mw ]
  %i.dxv = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv51.i809
  %i.dxw = load i16, ptr %i.dxv, align 4, !tbaa !20
  %i.dxx = zext i16 %i.dxw to i64
  %i.dxy = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %indvars.iv.i810
  %i.dxz = load i16, ptr %i.dxy, align 2, !tbaa !20
  %i.dya = zext i16 %i.dxz to i64
  %i.dyb = add nuw nsw i64 %.036.i811, %i.dxx
  %i.dyc = add nuw nsw i64 %i.dyb, %i.dya         ; 2 uses
  %i.dyd = trunc i64 %i.dyc to i16
  %i.dye = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv51.i809
  store i16 %i.dyd, ptr %i.dye, align 8, !tbaa !20
  %i.dyf = lshr i64 %i.dyc, 16
  %indvars.iv.next52.i812 = or disjoint i64 %indvars.iv51.i809, 1 ; 2 uses
  %i.dyg = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i812
  %i.dyh = load i16, ptr %i.dyg, align 2, !tbaa !20
  %i.dyi = zext i16 %i.dyh to i64
  %i.dyj = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i810
  %i.dyk = getelementptr i8, ptr %i.dyj, i64 2
  %i.dyl = load i16, ptr %i.dyk, align 2, !tbaa !20
  %i.dym = zext i16 %i.dyl to i64
  %i.dyn = add nuw nsw i64 %i.dyf, %i.dyi
  %i.dyo = add nuw nsw i64 %i.dyn, %i.dym         ; 2 uses
  %i.dyp = trunc i64 %i.dyo to i16
  %i.dyq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next52.i812
  store i16 %i.dyp, ptr %i.dyq, align 2, !tbaa !20
  %i.dyr = lshr i64 %i.dyo, 16
  %indvars.iv.next52.i812.1 = or disjoint i64 %indvars.iv51.i809, 2 ; 2 uses
  %i.dys = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i812.1
  %i.dyt = load i16, ptr %i.dys, align 8, !tbaa !20
  %i.dyu = zext i16 %i.dyt to i64
  %i.dyv = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i810
  %i.dyw = getelementptr i8, ptr %i.dyv, i64 4
  %i.dyx = load i16, ptr %i.dyw, align 2, !tbaa !20
  %i.dyy = zext i16 %i.dyx to i64
  %i.dyz = add nuw nsw i64 %i.dyr, %i.dyu
  %i.dza = add nuw nsw i64 %i.dyz, %i.dyy         ; 2 uses
  %i.dzb = trunc i64 %i.dza to i16
  %i.dzc = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next52.i812.1
  store i16 %i.dzb, ptr %i.dzc, align 4, !tbaa !20
  %i.dzd = lshr i64 %i.dza, 16
  %indvars.iv.next52.i812.2 = or disjoint i64 %indvars.iv51.i809, 3 ; 2 uses
  %i.dze = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next52.i812.2
  %i.dzf = load i16, ptr %i.dze, align 2, !tbaa !20
  %i.dzg = zext i16 %i.dzf to i64
  %i.dzh = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv.i810
  %i.dzi = getelementptr i8, ptr %i.dzh, i64 6
  %i.dzj = load i16, ptr %i.dzi, align 2, !tbaa !20
  %i.dzk = zext i16 %i.dzj to i64
  %i.dzl = add nuw nsw i64 %i.dzd, %i.dzg
  %i.dzm = add nuw nsw i64 %i.dzl, %i.dzk         ; 2 uses
  %i.dzn = trunc i64 %i.dzm to i16
  %i.dzo = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next52.i812.2
  store i16 %i.dzn, ptr %i.dzo, align 2, !tbaa !20
  %i.dzp = lshr i64 %i.dzm, 16                    ; 3 uses
  %indvars.iv.next52.i812.3 = add nuw nsw i64 %indvars.iv51.i809, 4 ; 2 uses
  %indvars.iv.next.i813.3 = add nsw i64 %indvars.iv.i810, 4 ; 2 uses
  %niter1746.next.3 = add i64 %niter1746, 4       ; 2 uses
  %niter1746.ncmp.3 = icmp eq i64 %niter1746.next.3, %unroll_iter1745
  br i1 %niter1746.ncmp.3, label %.preheader.i815.unr-lcssa, label %bb.mw, !llvm.loop !5

.lr.ph40.i779.new:                                ; preds = %.prol.loopexit1748, %.lr.ph40.i779.new
  %indvars.iv56.i782 = phi i64 [ %indvars.iv.next57.i784.7, %.lr.ph40.i779.new ], [ %indvars.iv56.i782.unr, %.prol.loopexit1748 ] ; 10 uses
  %.139.i783 = phi i64 [ %i.ebt, %.lr.ph40.i779.new ], [ %.139.i783.unr, %.prol.loopexit1748 ]
  %i.dzq = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv56.i782
  %i.dzr = load i16, ptr %i.dzq, align 2, !tbaa !20
  %i.dzs = zext i16 %i.dzr to i64
  %i.dzt = add nuw nsw i64 %.139.i783, %i.dzs     ; 2 uses
  %i.dzu = trunc i64 %i.dzt to i16
  %i.dzv = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv56.i782
  store i16 %i.dzu, ptr %i.dzv, align 2, !tbaa !20
  %i.dzw = lshr i64 %i.dzt, 16
  %indvars.iv.next57.i784 = add nuw nsw i64 %indvars.iv56.i782, 1 ; 2 uses
  %i.dzx = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784
  %i.dzy = load i16, ptr %i.dzx, align 2, !tbaa !20
  %i.dzz = zext i16 %i.dzy to i64
  %i.eaa = add nuw nsw i64 %i.dzw, %i.dzz         ; 2 uses
  %i.eab = trunc i64 %i.eaa to i16
  %i.eac = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784
  store i16 %i.eab, ptr %i.eac, align 2, !tbaa !20
  %i.ead = lshr i64 %i.eaa, 16
  %indvars.iv.next57.i784.1 = add nuw nsw i64 %indvars.iv56.i782, 2 ; 2 uses
  %i.eae = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.1
  %i.eaf = load i16, ptr %i.eae, align 2, !tbaa !20
  %i.eag = zext i16 %i.eaf to i64
  %i.eah = add nuw nsw i64 %i.ead, %i.eag         ; 2 uses
  %i.eai = trunc i64 %i.eah to i16
  %i.eaj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.1
  store i16 %i.eai, ptr %i.eaj, align 2, !tbaa !20
  %i.eak = lshr i64 %i.eah, 16
  %indvars.iv.next57.i784.2 = add nuw nsw i64 %indvars.iv56.i782, 3 ; 2 uses
  %i.eal = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.2
  %i.eam = load i16, ptr %i.eal, align 2, !tbaa !20
  %i.ean = zext i16 %i.eam to i64
  %i.eao = add nuw nsw i64 %i.eak, %i.ean         ; 2 uses
  %i.eap = trunc i64 %i.eao to i16
  %i.eaq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.2
  store i16 %i.eap, ptr %i.eaq, align 2, !tbaa !20
  %i.ear = lshr i64 %i.eao, 16
  %indvars.iv.next57.i784.3 = add nuw nsw i64 %indvars.iv56.i782, 4 ; 2 uses
  %i.eas = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.3
  %i.eat = load i16, ptr %i.eas, align 2, !tbaa !20
  %i.eau = zext i16 %i.eat to i64
  %i.eav = add nuw nsw i64 %i.ear, %i.eau         ; 2 uses
  %i.eaw = trunc i64 %i.eav to i16
  %i.eax = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.3
  store i16 %i.eaw, ptr %i.eax, align 2, !tbaa !20
  %i.eay = lshr i64 %i.eav, 16
  %indvars.iv.next57.i784.4 = add nuw nsw i64 %indvars.iv56.i782, 5 ; 2 uses
  %i.eaz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.4
  %i.eba = load i16, ptr %i.eaz, align 2, !tbaa !20
  %i.ebb = zext i16 %i.eba to i64
  %i.ebc = add nuw nsw i64 %i.eay, %i.ebb         ; 2 uses
  %i.ebd = trunc i64 %i.ebc to i16
  %i.ebe = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.4
  store i16 %i.ebd, ptr %i.ebe, align 2, !tbaa !20
  %i.ebf = lshr i64 %i.ebc, 16
  %indvars.iv.next57.i784.5 = add nuw nsw i64 %indvars.iv56.i782, 6 ; 2 uses
  %i.ebg = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.5
  %i.ebh = load i16, ptr %i.ebg, align 2, !tbaa !20
  %i.ebi = zext i16 %i.ebh to i64
  %i.ebj = add nuw nsw i64 %i.ebf, %i.ebi         ; 2 uses
  %i.ebk = trunc i64 %i.ebj to i16
  %i.ebl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.5
  store i16 %i.ebk, ptr %i.ebl, align 2, !tbaa !20
  %i.ebm = lshr i64 %i.ebj, 16
  %indvars.iv.next57.i784.6 = add nuw nsw i64 %indvars.iv56.i782, 7 ; 2 uses
  %i.ebn = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.next57.i784.6
  %i.ebo = load i16, ptr %i.ebn, align 2, !tbaa !20
  %i.ebp = zext i16 %i.ebo to i64
  %i.ebq = add nuw nsw i64 %i.ebm, %i.ebp         ; 2 uses
  %i.ebr = trunc i64 %i.ebq to i16
  %i.ebs = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next57.i784.6
  store i16 %i.ebr, ptr %i.ebs, align 2, !tbaa !20
  %i.ebt = lshr i64 %i.ebq, 16                    ; 2 uses
  %indvars.iv.next57.i784.7 = add nuw nsw i64 %indvars.iv56.i782, 8 ; 2 uses
  %exitcond59.not.i785.7 = icmp eq i64 %indvars.iv.next57.i784.7, 10
  br i1 %exitcond59.not.i785.7, label %._crit_edge.i786, label %.lr.ph40.i779.new, !llvm.loop !6

._crit_edge.i786:                                 ; preds = %.prol.loopexit1748, %.lr.ph40.i779.new, %.preheader.i815
  %.128.lcssa.i787 = phi i32 [ %i.dwv, %.preheader.i815 ], [ 10, %.lr.ph40.i779.new ], [ 10, %.prol.loopexit1748 ]
  %.1.lcssa.i788 = phi i64 [ %.lcssa1515, %.preheader.i815 ], [ %.lcssa1516.unr, %.prol.loopexit1748 ], [ %i.ebt, %.lr.ph40.i779.new ]
  %i.ebu = trunc nuw nsw i64 %.1.lcssa.i788 to i16
  %i.ebv = zext nneg i32 %.128.lcssa.i787 to i64
  %i.ebw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ebv
  store i16 %i.ebu, ptr %i.ebw, align 2, !tbaa !20
  %i.ebx = add i16 %i.bfr, 1
  %i.eby = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i768, align 4, !tbaa !20 ; 2 uses
  %.not.i.i789 = icmp eq i16 %i.eby, 0
  br i1 %.not.i.i789, label %bb.mx, label %.preheader.i.i790

bb.mx:                                            ; preds = %._crit_edge.i786
  %i.ebz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i769, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i793 = icmp eq i16 %i.ebz, 0
  br i1 %.not.i.1.i793, label %bb.my, label %.preheader.i.i790

bb.my:                                            ; preds = %bb.mx
  %i.eca = add i16 %i.bfr, -1
  %i.ecb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i770, align 16, !tbaa !20
  %.not.i.2.i794 = icmp eq i16 %i.ecb, 0
  br i1 %.not.i.2.i794, label %bb.mz, label %.lr.ph47.i.i795

bb.mz:                                            ; preds = %bb.my
  %i.ecc = add i16 %i.bfr, -2
  %i.ecd = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i771, align 2, !tbaa !20
  %.not.i.3.i799 = icmp eq i16 %i.ecd, 0
  br i1 %.not.i.3.i799, label %bb.na, label %.lr.ph47.i.i795

bb.na:                                            ; preds = %bb.mz
  %i.ece = add i16 %i.bfr, -3
  %i.ecf = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i772, align 4, !tbaa !20
  %.not.i.4.i800 = icmp eq i16 %i.ecf, 0
  br i1 %.not.i.4.i800, label %bb.nb, label %.lr.ph47.i.i795

bb.nb:                                            ; preds = %bb.na
  %i.ecg = add i16 %i.bfr, -4
  %i.ech = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i773, align 2, !tbaa !20
  %.not.i.5.i801 = icmp eq i16 %i.ech, 0
  br i1 %.not.i.5.i801, label %bb.nc, label %.lr.ph47.i.i795

bb.nc:                                            ; preds = %bb.nb
  %i.eci = add i16 %i.bfr, -5
  %i.ecj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i774, align 8, !tbaa !20
  %.not.i.6.i802 = icmp eq i16 %i.ecj, 0
  br i1 %.not.i.6.i802, label %bb.nd, label %.lr.ph47.i.i795

bb.nd:                                            ; preds = %bb.nc
  %i.eck = add i16 %i.bfr, -6
  %i.ecl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i775, align 2, !tbaa !20
  %.not.i.7.i803 = icmp eq i16 %i.ecl, 0
  br i1 %.not.i.7.i803, label %bb.ne, label %.lr.ph47.i.i795

bb.ne:                                            ; preds = %bb.nd
  %i.ecm = add i16 %i.bfr, -7
  %i.ecn = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i776, align 4, !tbaa !20
  %.not.i.8.i804 = icmp eq i16 %i.ecn, 0
  br i1 %.not.i.8.i804, label %bb.nf, label %.lr.ph47.i.i795

bb.nf:                                            ; preds = %bb.ne
  %i.eco = add i16 %i.bfr, -8
  %i.ecp = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i777, align 2, !tbaa !20
  %.not.i.9.i805 = icmp eq i16 %i.ecp, 0
  br i1 %.not.i.9.i805, label %bb.ng, label %.lr.ph47.i.i795

bb.ng:                                            ; preds = %bb.nf
  %i.ecq = add i16 %i.bfr, -9
  %i.ecr = load i16, ptr %i.g, align 16, !tbaa !20
  %.not.i.10.i806 = icmp eq i16 %i.ecr, 0
  br i1 %.not.i.10.i806, label %bb.nh, label %.lr.ph47.i.i795

bb.nh:                                            ; preds = %bb.ng
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit816

.preheader.i.i790:                                ; preds = %bb.mx, %._crit_edge.i786
  %i.ecs = phi i16 [ %i.eby, %._crit_edge.i786 ], [ %i.ebz, %bb.mx ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i791 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i778, %._crit_edge.i786 ], [ %indvars.iv73.i.lcssa.sroa.gep.i768, %bb.mx ] ; 2 uses
  %.03341.i.lcssa.i792 = phi i16 [ %i.ebx, %._crit_edge.i786 ], [ %i.bfr, %bb.mx ]
  %i.ect = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.i792, ptr %i.ect, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.eb, align 2, !tbaa !24
  %i.ecu = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.eb, i64 22
  store i16 %i.ecs, ptr %i.ecv, align 2, !tbaa !20
  %i.ecw = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i791, i64 -4
  %i.ecx = load i16, ptr %i.ecw, align 2, !tbaa !20
  %i.ecy = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i16 %i.ecx, ptr %i.ecy, align 2, !tbaa !20
  %i.ecz = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i791, i64 -20
  %i.eda = load <8 x i16>, ptr %i.ecz, align 2, !tbaa !20
  store <8 x i16> %i.eda, ptr %i.ecu, align 2, !tbaa !20
  br label %addmag0.exit816

.lr.ph47.i.i795:                                  ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my
  %.03341.i.lcssa.ph.i796 = phi i16 [ %i.ecq, %bb.ng ], [ %i.eco, %bb.nf ], [ %i.ecm, %bb.ne ], [ %i.eck, %bb.nd ], [ %i.eci, %bb.nc ], [ %i.ecg, %bb.nb ], [ %i.ece, %bb.na ], [ %i.ecc, %bb.mz ], [ %i.eca, %bb.my ]
  %indvars.iv59.i.lcssa.ph.i797 = phi i64 [ 0, %bb.ng ], [ 2, %bb.nf ], [ 4, %bb.ne ], [ 6, %bb.nd ], [ 8, %bb.nc ], [ 10, %bb.nb ], [ 12, %bb.na ], [ 14, %bb.mz ], [ 16, %bb.my ] ; 3 uses
  %i.edb = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.ph.i796, ptr %i.edb, align 2, !tbaa !26
  store i16 %i.bfo, ptr %i.eb, align 2, !tbaa !24
  %i.edc = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.edd = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i797
  %scevgep.i798 = getelementptr i8, ptr %i.eb, i64 %i.edd
  %i.ede = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i797, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i798, ptr noundef nonnull align 16 dereferenceable(1) %i.g, i64 %i.ede, i1 false), !tbaa !20
  %i.edf = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i797
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.edc, i8 0, i64 %i.edf, i1 false), !tbaa !20
  br label %addmag0.exit816

addmag0.exit816:                                  ; preds = %bb.nh, %.preheader.i.i790, %.lr.ph47.i.i795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %sub.exit36

bb.ni:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.edg = sext i16 %i.bfs to i32                 ; 2 uses
  %i.edh = sext i16 %i.bfr to i32                 ; 3 uses
  %i.edi = sub nsw i32 %i.edg, %i.edh
  %i.edj = icmp slt i32 %i.edi, 10
  br i1 %i.edj, label %.lr.ph.i758, label %.lr.ph40.i730

.lr.ph.i758:                                      ; preds = %bb.ni
  %i.edk = sext i16 %i.bfs to i64
  %i.edl = sub nsw i32 0, %i.edh
  %i.edm = sext i32 %i.edl to i64
  %i.edn = add nsw i64 %i.edk, %i.edm             ; 2 uses
  %i.edo = add nsw i32 %i.edh, 10
  %i.edp = sub nsw i32 %i.edo, %i.edg             ; 5 uses
  %wide.trip.count.i759 = zext i32 %i.edp to i64  ; 2 uses
  %xtraiter1727 = and i64 %wide.trip.count.i759, 3 ; 3 uses
  %i.edq = add nsw i32 %i.edp, -1
  %i.edr = icmp ult i32 %i.edq, 3
  br i1 %i.edr, label %.epil.preheader1726, label %.lr.ph.i758.new

.lr.ph.i758.new:                                  ; preds = %.lr.ph.i758
  %unroll_iter1732 = and i64 %wide.trip.count.i759, 4294967292
  br label %bb.nk

.preheader.i766.unr-lcssa:                        ; preds = %bb.nk
  %lcmp.mod1729.not = icmp eq i64 %xtraiter1727, 0
  br i1 %lcmp.mod1729.not, label %.preheader.i766, label %.epil.preheader1726

.epil.preheader1726:                              ; preds = %.preheader.i766.unr-lcssa, %.lr.ph.i758
  %indvars.iv51.i760.epil.init = phi i64 [ 0, %.lr.ph.i758 ], [ %indvars.iv.next52.i763.3, %.preheader.i766.unr-lcssa ]
  %indvars.iv.i761.epil.init = phi i64 [ %i.edn, %.lr.ph.i758 ], [ %indvars.iv.next.i764.3, %.preheader.i766.unr-lcssa ]
  %.036.i762.epil.init = phi i64 [ 0, %.lr.ph.i758 ], [ %i.egj, %.preheader.i766.unr-lcssa ]
  %lcmp.mod1731 = icmp ne i64 %xtraiter1727, 0
  tail call void @llvm.assume(i1 %lcmp.mod1731)
  br label %bb.nj

bb.nj:                                            ; preds = %bb.nj, %.epil.preheader1726
  %indvars.iv51.i760.epil = phi i64 [ %indvars.iv51.i760.epil.init, %.epil.preheader1726 ], [ %indvars.iv.next52.i763.epil, %bb.nj ] ; 3 uses
  %indvars.iv.i761.epil = phi i64 [ %indvars.iv.i761.epil.init, %.epil.preheader1726 ], [ %indvars.iv.next.i764.epil, %bb.nj ] ; 2 uses
  %.036.i762.epil = phi i64 [ %.036.i762.epil.init, %.epil.preheader1726 ], [ %i.eec, %bb.nj ]
  %epil.iter1728 = phi i64 [ 0, %.epil.preheader1726 ], [ %epil.iter1728.next, %bb.nj ]
  %i.eds = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv51.i760.epil
  %i.edt = load i16, ptr %i.eds, align 2, !tbaa !20
  %i.edu = zext i16 %i.edt to i64
  %i.edv = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i761.epil
  %i.edw = load i16, ptr %i.edv, align 2, !tbaa !20
  %i.edx = zext i16 %i.edw to i64
  %i.edy = add nuw nsw i64 %.036.i762.epil, %i.edu
  %i.edz = add nuw nsw i64 %i.edy, %i.edx         ; 2 uses
  %i.eea = trunc i64 %i.edz to i16
  %i.eeb = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv51.i760.epil
  store i16 %i.eea, ptr %i.eeb, align 2, !tbaa !20
  %i.eec = lshr i64 %i.edz, 16                    ; 2 uses
  %indvars.iv.next52.i763.epil = add nuw nsw i64 %indvars.iv51.i760.epil, 1
  %indvars.iv.next.i764.epil = add nsw i64 %indvars.iv.i761.epil, 1
  %epil.iter1728.next = add i64 %epil.iter1728, 1 ; 2 uses
  %epil.iter1728.cmp.not = icmp eq i64 %epil.iter1728.next, %xtraiter1727
  br i1 %epil.iter1728.cmp.not, label %.preheader.i766, label %bb.nj, !llvm.loop !92

.preheader.i766:                                  ; preds = %bb.nj, %.preheader.i766.unr-lcssa
  %.lcssa1513 = phi i64 [ %i.egj, %.preheader.i766.unr-lcssa ], [ %i.eec, %bb.nj ] ; 2 uses
  %i.eed = icmp samesign ult i32 %i.edp, 10
  br i1 %i.eed, label %.lr.ph40.i730, label %._crit_edge.i737

.lr.ph40.i730:                                    ; preds = %bb.ni, %.preheader.i766
  %.0.lcssa94.i731 = phi i64 [ %.lcssa1513, %.preheader.i766 ], [ 0, %bb.ni ] ; 2 uses
  %.027.lcssa93.i732 = phi i32 [ %i.edp, %.preheader.i766 ], [ 0, %bb.ni ] ; 2 uses
  %i.eee = zext nneg i32 %.027.lcssa93.i732 to i64 ; 3 uses
  %i.eef = sub nsw i64 2, %i.eee
  %xtraiter1736 = and i64 %i.eef, 7               ; 2 uses
  %lcmp.mod1737.not = icmp eq i64 %xtraiter1736, 0
  br i1 %lcmp.mod1737.not, label %.prol.loopexit1735, label %.prol.preheader1734

.prol.preheader1734:                              ; preds = %.lr.ph40.i730, %.prol.preheader1734
  %indvars.iv56.i733.prol = phi i64 [ %indvars.iv.next57.i735.prol, %.prol.preheader1734 ], [ %i.eee, %.lr.ph40.i730 ] ; 3 uses
  %.139.i734.prol = phi i64 [ %i.eem, %.prol.preheader1734 ], [ %.0.lcssa94.i731, %.lr.ph40.i730 ]
  %prol.iter1738 = phi i64 [ %prol.iter1738.next, %.prol.preheader1734 ], [ 0, %.lr.ph40.i730 ]
  %i.eeg = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv56.i733.prol
  %i.eeh = load i16, ptr %i.eeg, align 2, !tbaa !20
  %i.eei = zext i16 %i.eeh to i64
  %i.eej = add nuw nsw i64 %.139.i734.prol, %i.eei ; 2 uses
  %i.eek = trunc i64 %i.eej to i16
  %i.eel = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv56.i733.prol
  store i16 %i.eek, ptr %i.eel, align 2, !tbaa !20
  %i.eem = lshr i64 %i.eej, 16                    ; 3 uses
  %indvars.iv.next57.i735.prol = add nuw nsw i64 %indvars.iv56.i733.prol, 1 ; 2 uses
  %prol.iter1738.next = add i64 %prol.iter1738, 1 ; 2 uses
  %prol.iter1738.cmp.not = icmp eq i64 %prol.iter1738.next, %xtraiter1736
  br i1 %prol.iter1738.cmp.not, label %.prol.loopexit1735, label %.prol.preheader1734, !llvm.loop !93

.prol.loopexit1735:                               ; preds = %.prol.preheader1734, %.lr.ph40.i730
  %.lcssa1514.unr = phi i64 [ poison, %.lr.ph40.i730 ], [ %i.eem, %.prol.preheader1734 ]
  %indvars.iv56.i733.unr = phi i64 [ %i.eee, %.lr.ph40.i730 ], [ %indvars.iv.next57.i735.prol, %.prol.preheader1734 ]
  %.139.i734.unr = phi i64 [ %.0.lcssa94.i731, %.lr.ph40.i730 ], [ %i.eem, %.prol.preheader1734 ]
  %i.een = add nsw i32 %.027.lcssa93.i732, -3
  %i.eeo = icmp ult i32 %i.een, 7
  br i1 %i.eeo, label %._crit_edge.i737, label %.lr.ph40.i730.new

bb.nk:                                            ; preds = %bb.nk, %.lr.ph.i758.new
  %indvars.iv51.i760 = phi i64 [ 0, %.lr.ph.i758.new ], [ %indvars.iv.next52.i763.3, %bb.nk ] ; 6 uses
  %indvars.iv.i761 = phi i64 [ %i.edn, %.lr.ph.i758.new ], [ %indvars.iv.next.i764.3, %bb.nk ] ; 5 uses
  %.036.i762 = phi i64 [ 0, %.lr.ph.i758.new ], [ %i.egj, %bb.nk ]
  %niter1733 = phi i64 [ 0, %.lr.ph.i758.new ], [ %niter1733.next.3, %bb.nk ]
  %i.eep = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv51.i760
  %i.eeq = load i16, ptr %i.eep, align 4, !tbaa !20
  %i.eer = zext i16 %i.eeq to i64
  %i.ees = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %indvars.iv.i761
  %i.eet = load i16, ptr %i.ees, align 2, !tbaa !20
  %i.eeu = zext i16 %i.eet to i64
  %i.eev = add nuw nsw i64 %.036.i762, %i.eer
  %i.eew = add nuw nsw i64 %i.eev, %i.eeu         ; 2 uses
  %i.eex = trunc i64 %i.eew to i16
  %i.eey = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv51.i760
  store i16 %i.eex, ptr %i.eey, align 8, !tbaa !20
  %i.eez = lshr i64 %i.eew, 16
  %indvars.iv.next52.i763 = or disjoint i64 %indvars.iv51.i760, 1 ; 2 uses
  %i.efa = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i763
  %i.efb = load i16, ptr %i.efa, align 2, !tbaa !20
  %i.efc = zext i16 %i.efb to i64
  %i.efd = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i761
  %i.efe = getelementptr i8, ptr %i.efd, i64 2
  %i.eff = load i16, ptr %i.efe, align 2, !tbaa !20
  %i.efg = zext i16 %i.eff to i64
  %i.efh = add nuw nsw i64 %i.eez, %i.efc
  %i.efi = add nuw nsw i64 %i.efh, %i.efg         ; 2 uses
  %i.efj = trunc i64 %i.efi to i16
  %i.efk = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next52.i763
  store i16 %i.efj, ptr %i.efk, align 2, !tbaa !20
  %i.efl = lshr i64 %i.efi, 16
  %indvars.iv.next52.i763.1 = or disjoint i64 %indvars.iv51.i760, 2 ; 2 uses
  %i.efm = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i763.1
  %i.efn = load i16, ptr %i.efm, align 8, !tbaa !20
  %i.efo = zext i16 %i.efn to i64
  %i.efp = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i761
  %i.efq = getelementptr i8, ptr %i.efp, i64 4
  %i.efr = load i16, ptr %i.efq, align 2, !tbaa !20
  %i.efs = zext i16 %i.efr to i64
  %i.eft = add nuw nsw i64 %i.efl, %i.efo
  %i.efu = add nuw nsw i64 %i.eft, %i.efs         ; 2 uses
  %i.efv = trunc i64 %i.efu to i16
  %i.efw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next52.i763.1
  store i16 %i.efv, ptr %i.efw, align 4, !tbaa !20
  %i.efx = lshr i64 %i.efu, 16
  %indvars.iv.next52.i763.2 = or disjoint i64 %indvars.iv51.i760, 3 ; 2 uses
  %i.efy = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next52.i763.2
  %i.efz = load i16, ptr %i.efy, align 2, !tbaa !20
  %i.ega = zext i16 %i.efz to i64
  %i.egb = getelementptr [2 x i8], ptr %i.ci, i64 %indvars.iv.i761
  %i.egc = getelementptr i8, ptr %i.egb, i64 6
  %i.egd = load i16, ptr %i.egc, align 2, !tbaa !20
  %i.ege = zext i16 %i.egd to i64
  %i.egf = add nuw nsw i64 %i.efx, %i.ega
  %i.egg = add nuw nsw i64 %i.egf, %i.ege         ; 2 uses
  %i.egh = trunc i64 %i.egg to i16
  %i.egi = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next52.i763.2
  store i16 %i.egh, ptr %i.egi, align 2, !tbaa !20
  %i.egj = lshr i64 %i.egg, 16                    ; 3 uses
  %indvars.iv.next52.i763.3 = add nuw nsw i64 %indvars.iv51.i760, 4 ; 2 uses
  %indvars.iv.next.i764.3 = add nsw i64 %indvars.iv.i761, 4 ; 2 uses
  %niter1733.next.3 = add i64 %niter1733, 4       ; 2 uses
  %niter1733.ncmp.3 = icmp eq i64 %niter1733.next.3, %unroll_iter1732
  br i1 %niter1733.ncmp.3, label %.preheader.i766.unr-lcssa, label %bb.nk, !llvm.loop !5

.lr.ph40.i730.new:                                ; preds = %.prol.loopexit1735, %.lr.ph40.i730.new
  %indvars.iv56.i733 = phi i64 [ %indvars.iv.next57.i735.7, %.lr.ph40.i730.new ], [ %indvars.iv56.i733.unr, %.prol.loopexit1735 ] ; 10 uses
  %.139.i734 = phi i64 [ %i.ein, %.lr.ph40.i730.new ], [ %.139.i734.unr, %.prol.loopexit1735 ]
  %i.egk = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv56.i733
  %i.egl = load i16, ptr %i.egk, align 2, !tbaa !20
  %i.egm = zext i16 %i.egl to i64
  %i.egn = add nuw nsw i64 %.139.i734, %i.egm     ; 2 uses
  %i.ego = trunc i64 %i.egn to i16
  %i.egp = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv56.i733
  store i16 %i.ego, ptr %i.egp, align 2, !tbaa !20
  %i.egq = lshr i64 %i.egn, 16
  %indvars.iv.next57.i735 = add nuw nsw i64 %indvars.iv56.i733, 1 ; 2 uses
  %i.egr = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735
  %i.egs = load i16, ptr %i.egr, align 2, !tbaa !20
  %i.egt = zext i16 %i.egs to i64
  %i.egu = add nuw nsw i64 %i.egq, %i.egt         ; 2 uses
  %i.egv = trunc i64 %i.egu to i16
  %i.egw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735
  store i16 %i.egv, ptr %i.egw, align 2, !tbaa !20
  %i.egx = lshr i64 %i.egu, 16
  %indvars.iv.next57.i735.1 = add nuw nsw i64 %indvars.iv56.i733, 2 ; 2 uses
  %i.egy = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.1
  %i.egz = load i16, ptr %i.egy, align 2, !tbaa !20
  %i.eha = zext i16 %i.egz to i64
  %i.ehb = add nuw nsw i64 %i.egx, %i.eha         ; 2 uses
  %i.ehc = trunc i64 %i.ehb to i16
  %i.ehd = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.1
  store i16 %i.ehc, ptr %i.ehd, align 2, !tbaa !20
  %i.ehe = lshr i64 %i.ehb, 16
  %indvars.iv.next57.i735.2 = add nuw nsw i64 %indvars.iv56.i733, 3 ; 2 uses
  %i.ehf = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.2
  %i.ehg = load i16, ptr %i.ehf, align 2, !tbaa !20
  %i.ehh = zext i16 %i.ehg to i64
  %i.ehi = add nuw nsw i64 %i.ehe, %i.ehh         ; 2 uses
  %i.ehj = trunc i64 %i.ehi to i16
  %i.ehk = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.2
  store i16 %i.ehj, ptr %i.ehk, align 2, !tbaa !20
  %i.ehl = lshr i64 %i.ehi, 16
  %indvars.iv.next57.i735.3 = add nuw nsw i64 %indvars.iv56.i733, 4 ; 2 uses
  %i.ehm = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.3
  %i.ehn = load i16, ptr %i.ehm, align 2, !tbaa !20
  %i.eho = zext i16 %i.ehn to i64
  %i.ehp = add nuw nsw i64 %i.ehl, %i.eho         ; 2 uses
  %i.ehq = trunc i64 %i.ehp to i16
  %i.ehr = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.3
  store i16 %i.ehq, ptr %i.ehr, align 2, !tbaa !20
  %i.ehs = lshr i64 %i.ehp, 16
  %indvars.iv.next57.i735.4 = add nuw nsw i64 %indvars.iv56.i733, 5 ; 2 uses
  %i.eht = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.4
  %i.ehu = load i16, ptr %i.eht, align 2, !tbaa !20
  %i.ehv = zext i16 %i.ehu to i64
  %i.ehw = add nuw nsw i64 %i.ehs, %i.ehv         ; 2 uses
  %i.ehx = trunc i64 %i.ehw to i16
  %i.ehy = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.4
  store i16 %i.ehx, ptr %i.ehy, align 2, !tbaa !20
  %i.ehz = lshr i64 %i.ehw, 16
  %indvars.iv.next57.i735.5 = add nuw nsw i64 %indvars.iv56.i733, 6 ; 2 uses
  %i.eia = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.5
  %i.eib = load i16, ptr %i.eia, align 2, !tbaa !20
  %i.eic = zext i16 %i.eib to i64
  %i.eid = add nuw nsw i64 %i.ehz, %i.eic         ; 2 uses
  %i.eie = trunc i64 %i.eid to i16
  %i.eif = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.5
  store i16 %i.eie, ptr %i.eif, align 2, !tbaa !20
  %i.eig = lshr i64 %i.eid, 16
  %indvars.iv.next57.i735.6 = add nuw nsw i64 %indvars.iv56.i733, 7 ; 2 uses
  %i.eih = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next57.i735.6
  %i.eii = load i16, ptr %i.eih, align 2, !tbaa !20
  %i.eij = zext i16 %i.eii to i64
  %i.eik = add nuw nsw i64 %i.eig, %i.eij         ; 2 uses
  %i.eil = trunc i64 %i.eik to i16
  %i.eim = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next57.i735.6
  store i16 %i.eil, ptr %i.eim, align 2, !tbaa !20
  %i.ein = lshr i64 %i.eik, 16                    ; 2 uses
  %indvars.iv.next57.i735.7 = add nuw nsw i64 %indvars.iv56.i733, 8 ; 2 uses
  %exitcond59.not.i736.7 = icmp eq i64 %indvars.iv.next57.i735.7, 10
  br i1 %exitcond59.not.i736.7, label %._crit_edge.i737, label %.lr.ph40.i730.new, !llvm.loop !6

._crit_edge.i737:                                 ; preds = %.prol.loopexit1735, %.lr.ph40.i730.new, %.preheader.i766
  %.128.lcssa.i738 = phi i32 [ %i.edp, %.preheader.i766 ], [ 10, %.lr.ph40.i730.new ], [ 10, %.prol.loopexit1735 ]
  %.1.lcssa.i739 = phi i64 [ %.lcssa1513, %.preheader.i766 ], [ %.lcssa1514.unr, %.prol.loopexit1735 ], [ %i.ein, %.lr.ph40.i730.new ]
  %i.eio = trunc nuw nsw i64 %.1.lcssa.i739 to i16
  %i.eip = zext nneg i32 %.128.lcssa.i738 to i64
  %i.eiq = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.eip
  store i16 %i.eio, ptr %i.eiq, align 2, !tbaa !20
  %i.eir = add i16 %i.bfs, 1
  %i.eis = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i719, align 4, !tbaa !20 ; 2 uses
  %.not.i.i740 = icmp eq i16 %i.eis, 0
  br i1 %.not.i.i740, label %bb.nl, label %.preheader.i.i741

bb.nl:                                            ; preds = %._crit_edge.i737
  %i.eit = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i720, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i744 = icmp eq i16 %i.eit, 0
  br i1 %.not.i.1.i744, label %bb.nm, label %.preheader.i.i741

bb.nm:                                            ; preds = %bb.nl
  %i.eiu = add i16 %i.bfs, -1
  %i.eiv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i721, align 16, !tbaa !20
  %.not.i.2.i745 = icmp eq i16 %i.eiv, 0
  br i1 %.not.i.2.i745, label %bb.nn, label %.lr.ph47.i.i746

bb.nn:                                            ; preds = %bb.nm
  %i.eiw = add i16 %i.bfs, -2
  %i.eix = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i722, align 2, !tbaa !20
  %.not.i.3.i750 = icmp eq i16 %i.eix, 0
  br i1 %.not.i.3.i750, label %bb.no, label %.lr.ph47.i.i746

bb.no:                                            ; preds = %bb.nn
  %i.eiy = add i16 %i.bfs, -3
  %i.eiz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i723, align 4, !tbaa !20
  %.not.i.4.i751 = icmp eq i16 %i.eiz, 0
  br i1 %.not.i.4.i751, label %bb.np, label %.lr.ph47.i.i746

bb.np:                                            ; preds = %bb.no
  %i.eja = add i16 %i.bfs, -4
  %i.ejb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i724, align 2, !tbaa !20
  %.not.i.5.i752 = icmp eq i16 %i.ejb, 0
  br i1 %.not.i.5.i752, label %bb.nq, label %.lr.ph47.i.i746

bb.nq:                                            ; preds = %bb.np
  %i.ejc = add i16 %i.bfs, -5
  %i.ejd = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i725, align 8, !tbaa !20
  %.not.i.6.i753 = icmp eq i16 %i.ejd, 0
  br i1 %.not.i.6.i753, label %bb.nr, label %.lr.ph47.i.i746

bb.nr:                                            ; preds = %bb.nq
end_hunk_3
begin_hunk_4_@fft0:bb.a
  store i16 %i.ejm, ptr %i.ejq, align 2, !tbaa !20
  %i.ejr = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i742, i64 -4
  %i.ejs = load i16, ptr %i.ejr, align 2, !tbaa !20
  %i.ejt = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i16 %i.ejs, ptr %i.ejt, align 2, !tbaa !20
  %i.eju = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i742, i64 -20
  %i.ejv = load <8 x i16>, ptr %i.eju, align 2, !tbaa !20
  store <8 x i16> %i.ejv, ptr %i.ejp, align 2, !tbaa !20
  br label %addmag0.exit767

.lr.ph47.i.i746:                                  ; preds = %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm
  %.03341.i.lcssa.ph.i747 = phi i16 [ %i.ejk, %bb.nu ], [ %i.eji, %bb.nt ], [ %i.ejg, %bb.ns ], [ %i.eje, %bb.nr ], [ %i.ejc, %bb.nq ], [ %i.eja, %bb.np ], [ %i.eiy, %bb.no ], [ %i.eiw, %bb.nn ], [ %i.eiu, %bb.nm ]
  %indvars.iv59.i.lcssa.ph.i748 = phi i64 [ 0, %bb.nu ], [ 2, %bb.nt ], [ 4, %bb.ns ], [ 6, %bb.nr ], [ 8, %bb.nq ], [ 10, %bb.np ], [ 12, %bb.no ], [ 14, %bb.nn ], [ 16, %bb.nm ] ; 3 uses
  %i.ejw = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %.03341.i.lcssa.ph.i747, ptr %i.ejw, align 2, !tbaa !26
  %i.ejx = sub i16 0, %i.bfp
  store i16 %i.ejx, ptr %i.eb, align 2, !tbaa !24
  %i.ejy = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ejz = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i748
  %scevgep.i749 = getelementptr i8, ptr %i.eb, i64 %i.ejz
  %i.eka = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i748, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i749, ptr noundef nonnull align 16 dereferenceable(1) %i.h, i64 %i.eka, i1 false), !tbaa !20
  %i.ekb = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i748
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ejy, i8 0, i64 %i.ekb, i1 false), !tbaa !20
  br label %addmag0.exit767

addmag0.exit767:                                  ; preds = %bb.nv, %.preheader.i.i741, %.lr.ph47.i.i746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %sub.exit36

sub.exit36:                                       ; preds = %submag0.exit900, %submag0.exit858, %addmag0.exit816, %addmag0.exit767
  br i1 %i.chh, label %abscmp.exit1090, label %bb.nw

bb.nw:                                            ; preds = %sub.exit36
  %i.ekc = icmp slt i16 %i.chf, %i.chg
  br i1 %i.ekc, label %abscmp.exit1090, label %.preheader.i1087

.preheader.i1087:                                 ; preds = %bb.nw
  %i.ekd = load i16, ptr %i.cu, align 2, !tbaa !20 ; 2 uses
  %i.eke = load i16, ptr %i.by, align 2, !tbaa !20 ; 2 uses
  %i.ekf = icmp ugt i16 %i.ekd, %i.eke
  br i1 %i.ekf, label %abscmp.exit1090, label %bb.oo

bb.nx:                                            ; preds = %bb.oo
  %i.ekg = load i16, ptr %i.cv, align 4, !tbaa !20 ; 2 uses
  %i.ekh = load i16, ptr %i.bz, align 4, !tbaa !20 ; 2 uses
  %i.eki = icmp ugt i16 %i.ekg, %i.ekh
  br i1 %i.eki, label %abscmp.exit1090, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.ekj = icmp ult i16 %i.ekg, %i.ekh
  br i1 %i.ekj, label %abscmp.exit1090, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.ekk = load i16, ptr %i.cw, align 2, !tbaa !20 ; 2 uses
  %i.ekl = load i16, ptr %i.ca, align 2, !tbaa !20 ; 2 uses
  %i.ekm = icmp ugt i16 %i.ekk, %i.ekl
  br i1 %i.ekm, label %abscmp.exit1090, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.ekn = icmp ult i16 %i.ekk, %i.ekl
  br i1 %i.ekn, label %abscmp.exit1090, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.eko = load i16, ptr %i.cx, align 16, !tbaa !20 ; 2 uses
  %i.ekp = load i16, ptr %i.cb, align 16, !tbaa !20 ; 2 uses
  %i.ekq = icmp ugt i16 %i.eko, %i.ekp
  br i1 %i.ekq, label %abscmp.exit1090, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.ekr = icmp ult i16 %i.eko, %i.ekp
  br i1 %i.ekr, label %abscmp.exit1090, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.eks = load i16, ptr %i.cy, align 2, !tbaa !20 ; 2 uses
  %i.ekt = load i16, ptr %i.cc, align 2, !tbaa !20 ; 2 uses
  %i.eku = icmp ugt i16 %i.eks, %i.ekt
  br i1 %i.eku, label %abscmp.exit1090, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.ekv = icmp ult i16 %i.eks, %i.ekt
  br i1 %i.ekv, label %abscmp.exit1090, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.ekw = load i16, ptr %i.cz, align 4, !tbaa !20 ; 2 uses
  %i.ekx = load i16, ptr %i.cd, align 4, !tbaa !20 ; 2 uses
  %i.eky = icmp ugt i16 %i.ekw, %i.ekx
  br i1 %i.eky, label %abscmp.exit1090, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.ekz = icmp ult i16 %i.ekw, %i.ekx
  br i1 %i.ekz, label %abscmp.exit1090, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.ela = load i16, ptr %i.da, align 2, !tbaa !20 ; 2 uses
  %i.elb = load i16, ptr %i.ce, align 2, !tbaa !20 ; 2 uses
  %i.elc = icmp ugt i16 %i.ela, %i.elb
  br i1 %i.elc, label %abscmp.exit1090, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.eld = icmp ult i16 %i.ela, %i.elb
  br i1 %i.eld, label %abscmp.exit1090, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.ele = load i16, ptr %i.db, align 8, !tbaa !20 ; 2 uses
  %i.elf = load i16, ptr %i.cf, align 8, !tbaa !20 ; 2 uses
  %i.elg = icmp ugt i16 %i.ele, %i.elf
  br i1 %i.elg, label %abscmp.exit1090, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.elh = icmp ult i16 %i.ele, %i.elf
  br i1 %i.elh, label %abscmp.exit1090, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.eli = load i16, ptr %i.dc, align 2, !tbaa !20 ; 2 uses
  %i.elj = load i16, ptr %i.cg, align 2, !tbaa !20 ; 2 uses
  %i.elk = icmp ugt i16 %i.eli, %i.elj
  br i1 %i.elk, label %abscmp.exit1090, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.ell = icmp ult i16 %i.eli, %i.elj
  br i1 %i.ell, label %abscmp.exit1090, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.elm = load i16, ptr %i.ct, align 4, !tbaa !20
  %i.eln = load i16, ptr %i.bx, align 4, !tbaa !20
  %i.elo = icmp ugt i16 %i.elm, %i.eln
  br label %abscmp.exit1090

bb.oo:                                            ; preds = %.preheader.i1087
  %i.elp = icmp ult i16 %i.ekd, %i.eke
  br i1 %i.elp, label %abscmp.exit1090, label %bb.nx

abscmp.exit1090:                                  ; preds = %bb.on, %sub.exit36, %bb.nw, %.preheader.i1087, %bb.nx, %bb.ny, %bb.nz, %bb.oa, %bb.ob, %bb.oc, %bb.od, %bb.oe, %bb.of, %bb.og, %bb.oh, %bb.oi, %bb.oj, %bb.ok, %bb.ol, %bb.om, %bb.oo
  %.014.i1089 = phi i1 [ false, %bb.nw ], [ true, %sub.exit36 ], [ false, %bb.oo ], [ true, %.preheader.i1087 ], [ false, %bb.ok ], [ true, %bb.nx ], [ false, %bb.ny ], [ false, %bb.oi ], [ true, %bb.nz ], [ false, %bb.oa ], [ %i.elo, %bb.on ], [ true, %bb.ob ], [ false, %bb.oc ], [ true, %bb.oj ], [ true, %bb.od ], [ false, %bb.oe ], [ false, %bb.om ], [ true, %bb.of ], [ false, %bb.og ], [ true, %bb.ol ], [ true, %bb.oh ] ; 2 uses
  br i1 %i.che, label %bb.op, label %bb.pq

bb.op:                                            ; preds = %abscmp.exit1090
  br i1 %.014.i1089, label %bb.oq, label %bb.pd

bb.oq:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.elq = sext i16 %i.chf to i32                 ; 2 uses
  %i.elr = sext i16 %i.chg to i32                 ; 3 uses
  %i.els = sub nsw i32 %i.elq, %i.elr
  %i.elt = icmp slt i32 %i.els, 10
  br i1 %i.elt, label %.lr.ph.i1077, label %.lr.ph38.i1054

.lr.ph.i1077:                                     ; preds = %bb.oq
  %i.elu = sext i16 %i.chf to i64
  %i.elv = sub nsw i32 0, %i.elr
  %i.elw = sext i32 %i.elv to i64
  %i.elx = add nsw i64 %i.elw, %i.elu             ; 2 uses
  %reass.sub1170 = sub nsw i32 %i.elr, %i.elq     ; 3 uses
  %i.ely = add nsw i32 %reass.sub1170, 10         ; 2 uses
  %wide.trip.count.i1078 = zext i32 %i.ely to i64 ; 2 uses
  %xtraiter1818 = and i64 %wide.trip.count.i1078, 3 ; 3 uses
  %i.elz = add nsw i32 %reass.sub1170, 9
  %i.ema = icmp ult i32 %i.elz, 3
  br i1 %i.ema, label %.epil.preheader1817, label %.lr.ph.i1077.new

.lr.ph.i1077.new:                                 ; preds = %.lr.ph.i1077
  %unroll_iter1823 = and i64 %wide.trip.count.i1078, 4294967292
  br label %bb.os

.preheader.i1085.unr-lcssa:                       ; preds = %bb.os
  %lcmp.mod1820.not = icmp eq i64 %xtraiter1818, 0
  br i1 %lcmp.mod1820.not, label %.preheader.i1085, label %.epil.preheader1817

.epil.preheader1817:                              ; preds = %.preheader.i1085.unr-lcssa, %.lr.ph.i1077
  %indvars.iv45.i1079.epil.init = phi i64 [ 0, %.lr.ph.i1077 ], [ %indvars.iv.next46.i1082.3, %.preheader.i1085.unr-lcssa ]
  %indvars.iv.i1080.epil.init = phi i64 [ %i.elx, %.lr.ph.i1077 ], [ %indvars.iv.next.i1083.3, %.preheader.i1085.unr-lcssa ]
  %.034.i1081.epil.init = phi i64 [ 0, %.lr.ph.i1077 ], [ %i.epe, %.preheader.i1085.unr-lcssa ]
  %lcmp.mod1822 = icmp ne i64 %xtraiter1818, 0
  tail call void @llvm.assume(i1 %lcmp.mod1822)
  br label %bb.or

bb.or:                                            ; preds = %bb.or, %.epil.preheader1817
  %indvars.iv45.i1079.epil = phi i64 [ %indvars.iv45.i1079.epil.init, %.epil.preheader1817 ], [ %indvars.iv.next46.i1082.epil, %bb.or ] ; 3 uses
  %indvars.iv.i1080.epil = phi i64 [ %indvars.iv.i1080.epil.init, %.epil.preheader1817 ], [ %indvars.iv.next.i1083.epil, %bb.or ] ; 2 uses
  %.034.i1081.epil = phi i64 [ %.034.i1081.epil.init, %.epil.preheader1817 ], [ %i.emn, %bb.or ]
  %epil.iter1819 = phi i64 [ 0, %.epil.preheader1817 ], [ %epil.iter1819.next, %bb.or ]
  %i.emb = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv45.i1079.epil
  %i.emc = load i16, ptr %i.emb, align 2, !tbaa !20
  %i.emd = zext i16 %i.emc to i64
  %i.eme = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080.epil
  %i.emf = load i16, ptr %i.eme, align 2, !tbaa !20
  %i.emg = zext i16 %i.emf to i64
  %i.emh = sub nsw i64 %i.emd, %i.emg
  %i.emi = add nsw i64 %i.emh, %.034.i1081.epil   ; 2 uses
  %i.emj = trunc i64 %i.emi to i16
  %i.emk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv45.i1079.epil
  store i16 %i.emj, ptr %i.emk, align 2, !tbaa !20
  %i.eml = add nsw i64 %i.emi, 2147483648
  %i.emm = lshr i64 %i.eml, 16
  %i.emn = add nsw i64 %i.emm, -32768             ; 2 uses
  %indvars.iv.next46.i1082.epil = add nuw nsw i64 %indvars.iv45.i1079.epil, 1
  %indvars.iv.next.i1083.epil = add nsw i64 %indvars.iv.i1080.epil, 1
  %epil.iter1819.next = add i64 %epil.iter1819, 1 ; 2 uses
  %epil.iter1819.cmp.not = icmp eq i64 %epil.iter1819.next, %xtraiter1818
  br i1 %epil.iter1819.cmp.not, label %.preheader.i1085, label %bb.or, !llvm.loop !94

.preheader.i1085:                                 ; preds = %bb.or, %.preheader.i1085.unr-lcssa
  %.lcssa1524 = phi i64 [ %i.epe, %.preheader.i1085.unr-lcssa ], [ %i.emn, %bb.or ]
  %i.emo = icmp slt i32 %reass.sub1170, 0
  br i1 %i.emo, label %.lr.ph38.i1054, label %._crit_edge.i1061

.lr.ph38.i1054:                                   ; preds = %bb.oq, %.preheader.i1085
  %.0.lcssa85.i1055 = phi i64 [ %.lcssa1524, %.preheader.i1085 ], [ 0, %bb.oq ] ; 2 uses
  %.025.lcssa84.i1056 = phi i32 [ %i.ely, %.preheader.i1085 ], [ 0, %bb.oq ] ; 2 uses
  %i.emp = zext i32 %.025.lcssa84.i1056 to i64    ; 3 uses
  %i.emq = sub nsw i64 2, %i.emp
  %xtraiter1827 = and i64 %i.emq, 3               ; 2 uses
  %lcmp.mod1828.not = icmp eq i64 %xtraiter1827, 0
  br i1 %lcmp.mod1828.not, label %.prol.loopexit1826, label %.prol.preheader1825

.prol.preheader1825:                              ; preds = %.lr.ph38.i1054, %.prol.preheader1825
  %indvars.iv50.i1057.prol = phi i64 [ %indvars.iv.next51.i1059.prol, %.prol.preheader1825 ], [ %i.emp, %.lr.ph38.i1054 ] ; 3 uses
  %.137.i1058.prol = phi i64 [ %i.emz, %.prol.preheader1825 ], [ %.0.lcssa85.i1055, %.lr.ph38.i1054 ]
  %prol.iter1829 = phi i64 [ %prol.iter1829.next, %.prol.preheader1825 ], [ 0, %.lr.ph38.i1054 ]
  %i.emr = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv50.i1057.prol
  %i.ems = load i16, ptr %i.emr, align 2, !tbaa !20
  %i.emt = zext i16 %i.ems to i64
  %i.emu = add nsw i64 %.137.i1058.prol, %i.emt   ; 2 uses
  %i.emv = trunc i64 %i.emu to i16
  %i.emw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv50.i1057.prol
  store i16 %i.emv, ptr %i.emw, align 2, !tbaa !20
  %i.emx = add nsw i64 %i.emu, 2147483648
  %i.emy = lshr i64 %i.emx, 16
  %i.emz = add nsw i64 %i.emy, -32768             ; 2 uses
  %indvars.iv.next51.i1059.prol = add nuw nsw i64 %indvars.iv50.i1057.prol, 1 ; 2 uses
  %prol.iter1829.next = add i64 %prol.iter1829, 1 ; 2 uses
  %prol.iter1829.cmp.not = icmp eq i64 %prol.iter1829.next, %xtraiter1827
  br i1 %prol.iter1829.cmp.not, label %.prol.loopexit1826, label %.prol.preheader1825, !llvm.loop !95

.prol.loopexit1826:                               ; preds = %.prol.preheader1825, %.lr.ph38.i1054
  %indvars.iv50.i1057.unr = phi i64 [ %i.emp, %.lr.ph38.i1054 ], [ %indvars.iv.next51.i1059.prol, %.prol.preheader1825 ]
  %.137.i1058.unr = phi i64 [ %.0.lcssa85.i1055, %.lr.ph38.i1054 ], [ %i.emz, %.prol.preheader1825 ]
  %i.ena = add nsw i32 %.025.lcssa84.i1056, -7
  %i.enb = icmp ult i32 %i.ena, 3
  br i1 %i.enb, label %._crit_edge.i1061, label %.lr.ph38.i1054.new

bb.os:                                            ; preds = %bb.os, %.lr.ph.i1077.new
  %indvars.iv45.i1079 = phi i64 [ 0, %.lr.ph.i1077.new ], [ %indvars.iv.next46.i1082.3, %bb.os ] ; 6 uses
  %indvars.iv.i1080 = phi i64 [ %i.elx, %.lr.ph.i1077.new ], [ %indvars.iv.next.i1083.3, %bb.os ] ; 5 uses
  %.034.i1081 = phi i64 [ 0, %.lr.ph.i1077.new ], [ %i.epe, %bb.os ]
  %niter1824 = phi i64 [ 0, %.lr.ph.i1077.new ], [ %niter1824.next.3, %bb.os ]
  %i.enc = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv45.i1079
  %i.end = load i16, ptr %i.enc, align 4, !tbaa !20
  %i.ene = zext i16 %i.end to i64
  %i.enf = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080
  %i.eng = load i16, ptr %i.enf, align 2, !tbaa !20
  %i.enh = zext i16 %i.eng to i64
  %i.eni = sub nsw i64 %i.ene, %i.enh
  %i.enj = add nsw i64 %i.eni, %.034.i1081        ; 2 uses
  %i.enk = trunc i64 %i.enj to i16
  %i.enl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv45.i1079
  store i16 %i.enk, ptr %i.enl, align 8, !tbaa !20
  %i.enm = add nsw i64 %i.enj, 2147483648
  %i.enn = lshr i64 %i.enm, 16
  %i.eno = add nsw i64 %i.enn, -32768
  %indvars.iv.next46.i1082 = or disjoint i64 %indvars.iv45.i1079, 1 ; 2 uses
  %i.enp = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i1082
  %i.enq = load i16, ptr %i.enp, align 2, !tbaa !20
  %i.enr = zext i16 %i.enq to i64
  %i.ens = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080
  %i.ent = getelementptr i8, ptr %i.ens, i64 2
  %i.enu = load i16, ptr %i.ent, align 2, !tbaa !20
  %i.env = zext i16 %i.enu to i64
  %i.enw = sub nsw i64 %i.enr, %i.env
  %i.enx = add nsw i64 %i.enw, %i.eno             ; 2 uses
  %i.eny = trunc i64 %i.enx to i16
  %i.enz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.i1082
  store i16 %i.eny, ptr %i.enz, align 2, !tbaa !20
  %i.eoa = add nsw i64 %i.enx, 2147483648
  %i.eob = lshr i64 %i.eoa, 16
  %i.eoc = add nsw i64 %i.eob, -32768
  %indvars.iv.next46.i1082.1 = or disjoint i64 %indvars.iv45.i1079, 2 ; 2 uses
  %i.eod = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i1082.1
  %i.eoe = load i16, ptr %i.eod, align 8, !tbaa !20
  %i.eof = zext i16 %i.eoe to i64
  %i.eog = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080
  %i.eoh = getelementptr i8, ptr %i.eog, i64 4
  %i.eoi = load i16, ptr %i.eoh, align 2, !tbaa !20
  %i.eoj = zext i16 %i.eoi to i64
  %i.eok = sub nsw i64 %i.eof, %i.eoj
  %i.eol = add nsw i64 %i.eok, %i.eoc             ; 2 uses
  %i.eom = trunc i64 %i.eol to i16
  %i.eon = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.i1082.1
  store i16 %i.eom, ptr %i.eon, align 4, !tbaa !20
  %i.eoo = add nsw i64 %i.eol, 2147483648
  %i.eop = lshr i64 %i.eoo, 16
  %i.eoq = add nsw i64 %i.eop, -32768
  %indvars.iv.next46.i1082.2 = or disjoint i64 %indvars.iv45.i1079, 3 ; 2 uses
  %i.eor = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next46.i1082.2
  %i.eos = load i16, ptr %i.eor, align 2, !tbaa !20
  %i.eot = zext i16 %i.eos to i64
  %i.eou = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i1080
  %i.eov = getelementptr i8, ptr %i.eou, i64 6
  %i.eow = load i16, ptr %i.eov, align 2, !tbaa !20
  %i.eox = zext i16 %i.eow to i64
  %i.eoy = sub nsw i64 %i.eot, %i.eox
  %i.eoz = add nsw i64 %i.eoy, %i.eoq             ; 2 uses
  %i.epa = trunc i64 %i.eoz to i16
  %i.epb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next46.i1082.2
  store i16 %i.epa, ptr %i.epb, align 2, !tbaa !20
  %i.epc = add nsw i64 %i.eoz, 2147483648
  %i.epd = lshr i64 %i.epc, 16
  %i.epe = add nsw i64 %i.epd, -32768             ; 3 uses
  %indvars.iv.next46.i1082.3 = add nuw nsw i64 %indvars.iv45.i1079, 4 ; 2 uses
  %indvars.iv.next.i1083.3 = add nsw i64 %indvars.iv.i1080, 4 ; 2 uses
  %niter1824.next.3 = add i64 %niter1824, 4       ; 2 uses
  %niter1824.ncmp.3 = icmp eq i64 %niter1824.next.3, %unroll_iter1823
  br i1 %niter1824.ncmp.3, label %.preheader.i1085.unr-lcssa, label %bb.os, !llvm.loop !3

.lr.ph38.i1054.new:                               ; preds = %.prol.loopexit1826, %.lr.ph38.i1054.new
  %indvars.iv50.i1057 = phi i64 [ %indvars.iv.next51.i1059.3, %.lr.ph38.i1054.new ], [ %indvars.iv50.i1057.unr, %.prol.loopexit1826 ] ; 6 uses
  %.137.i1058 = phi i64 [ %i.eqo, %.lr.ph38.i1054.new ], [ %.137.i1058.unr, %.prol.loopexit1826 ]
  %i.epf = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv50.i1057
  %i.epg = load i16, ptr %i.epf, align 2, !tbaa !20
  %i.eph = zext i16 %i.epg to i64
  %i.epi = add nsw i64 %.137.i1058, %i.eph        ; 2 uses
  %i.epj = trunc i64 %i.epi to i16
  %i.epk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv50.i1057
  store i16 %i.epj, ptr %i.epk, align 2, !tbaa !20
  %i.epl = add nsw i64 %i.epi, 2147483648
  %i.epm = lshr i64 %i.epl, 16
  %i.epn = add nsw i64 %i.epm, -32768
  %indvars.iv.next51.i1059 = add nuw nsw i64 %indvars.iv50.i1057, 1 ; 2 uses
  %i.epo = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i1059
  %i.epp = load i16, ptr %i.epo, align 2, !tbaa !20
  %i.epq = zext i16 %i.epp to i64
  %i.epr = add nsw i64 %i.epn, %i.epq             ; 2 uses
  %i.eps = trunc i64 %i.epr to i16
  %i.ept = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.i1059
  store i16 %i.eps, ptr %i.ept, align 2, !tbaa !20
  %i.epu = add nsw i64 %i.epr, 2147483648
  %i.epv = lshr i64 %i.epu, 16
  %i.epw = add nsw i64 %i.epv, -32768
  %indvars.iv.next51.i1059.1 = add nuw nsw i64 %indvars.iv50.i1057, 2 ; 2 uses
  %i.epx = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i1059.1
  %i.epy = load i16, ptr %i.epx, align 2, !tbaa !20
  %i.epz = zext i16 %i.epy to i64
  %i.eqa = add nsw i64 %i.epw, %i.epz             ; 2 uses
  %i.eqb = trunc i64 %i.eqa to i16
  %i.eqc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.i1059.1
  store i16 %i.eqb, ptr %i.eqc, align 2, !tbaa !20
  %i.eqd = add nsw i64 %i.eqa, 2147483648
  %i.eqe = lshr i64 %i.eqd, 16
  %i.eqf = add nsw i64 %i.eqe, -32768
  %indvars.iv.next51.i1059.2 = add nuw nsw i64 %indvars.iv50.i1057, 3 ; 2 uses
  %i.eqg = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next51.i1059.2
  %i.eqh = load i16, ptr %i.eqg, align 2, !tbaa !20
  %i.eqi = zext i16 %i.eqh to i64
  %i.eqj = add nsw i64 %i.eqf, %i.eqi             ; 2 uses
  %i.eqk = trunc i64 %i.eqj to i16
  %i.eql = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next51.i1059.2
  store i16 %i.eqk, ptr %i.eql, align 2, !tbaa !20
  %i.eqm = add nsw i64 %i.eqj, 2147483648
  %i.eqn = lshr i64 %i.eqm, 16
  %i.eqo = add nsw i64 %i.eqn, -32768
  %indvars.iv.next51.i1059.3 = add nuw nsw i64 %indvars.iv50.i1057, 4 ; 2 uses
  %exitcond53.not.i1060.3 = icmp eq i64 %indvars.iv.next51.i1059.3, 10
  br i1 %exitcond53.not.i1060.3, label %._crit_edge.i1061, label %.lr.ph38.i1054.new, !llvm.loop !4

._crit_edge.i1061:                                ; preds = %.prol.loopexit1826, %.lr.ph38.i1054.new, %.preheader.i1085
  %i.eqp = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i1045, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i1062 = icmp eq i16 %i.eqp, 0
  br i1 %.not.i.not.not.i1062, label %bb.ot, label %.preheader.i.i1063

bb.ot:                                            ; preds = %._crit_edge.i1061
  %i.eqq = add i16 %i.chf, -1
  %i.eqr = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i1046, align 16, !tbaa !20
  %.not.i.1.i1064 = icmp eq i16 %i.eqr, 0
  br i1 %.not.i.1.i1064, label %bb.ou, label %.lr.ph47.i.i1065

bb.ou:                                            ; preds = %bb.ot
  %i.eqs = add i16 %i.chf, -2
  %i.eqt = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i1047, align 2, !tbaa !20
  %.not.i.2.i1069 = icmp eq i16 %i.eqt, 0
  br i1 %.not.i.2.i1069, label %bb.ov, label %.lr.ph47.i.i1065

bb.ov:                                            ; preds = %bb.ou
  %i.equ = add i16 %i.chf, -3
  %i.eqv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i1048, align 4, !tbaa !20
  %.not.i.3.i1070 = icmp eq i16 %i.eqv, 0
  br i1 %.not.i.3.i1070, label %bb.ow, label %.lr.ph47.i.i1065

bb.ow:                                            ; preds = %bb.ov
  %i.eqw = add i16 %i.chf, -4
  %i.eqx = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i1049, align 2, !tbaa !20
  %.not.i.4.i1071 = icmp eq i16 %i.eqx, 0
  br i1 %.not.i.4.i1071, label %bb.ox, label %.lr.ph47.i.i1065

bb.ox:                                            ; preds = %bb.ow
  %i.eqy = add i16 %i.chf, -5
  %i.eqz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i1050, align 8, !tbaa !20
  %.not.i.5.i1072 = icmp eq i16 %i.eqz, 0
  br i1 %.not.i.5.i1072, label %bb.oy, label %.lr.ph47.i.i1065

bb.oy:                                            ; preds = %bb.ox
  %i.era = add i16 %i.chf, -6
  %i.erb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i1051, align 2, !tbaa !20
  %.not.i.6.i1073 = icmp eq i16 %i.erb, 0
  br i1 %.not.i.6.i1073, label %bb.oz, label %.lr.ph47.i.i1065

bb.oz:                                            ; preds = %bb.oy
  %i.erc = add i16 %i.chf, -7
  %i.erd = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i1052, align 4, !tbaa !20
  %.not.i.7.i1074 = icmp eq i16 %i.erd, 0
  br i1 %.not.i.7.i1074, label %bb.pa, label %.lr.ph47.i.i1065

bb.pa:                                            ; preds = %bb.oz
  %i.ere = add i16 %i.chf, -8
  %i.erf = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i1053, align 2, !tbaa !20
  %.not.i.8.i1075 = icmp eq i16 %i.erf, 0
  br i1 %.not.i.8.i1075, label %bb.pb, label %.lr.ph47.i.i1065

bb.pb:                                            ; preds = %bb.pa
  %i.erg = add i16 %i.chf, -9
  %i.erh = load i16, ptr %i.a, align 16, !tbaa !20
  %.not.i.9.i1076 = icmp eq i16 %i.erh, 0
  br i1 %.not.i.9.i1076, label %bb.pc, label %.lr.ph47.i.i1065

bb.pc:                                            ; preds = %bb.pb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit1086

.preheader.i.i1063:                               ; preds = %._crit_edge.i1061
  %i.eri = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %i.chf, ptr %i.eri, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ed, align 2, !tbaa !24
  %i.erj = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.erk = getelementptr inbounds nuw i8, ptr %i.eb, i64 46
  store i16 %i.eqp, ptr %i.erk, align 2, !tbaa !20
  %i.erl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i1046, align 16, !tbaa !20
  %i.erm = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i16 %i.erl, ptr %i.erm, align 2, !tbaa !20
  %i.ern = load <8 x i16>, ptr %i.a, align 16, !tbaa !20
  store <8 x i16> %i.ern, ptr %i.erj, align 2, !tbaa !20
  br label %submag0.exit1086

.lr.ph47.i.i1065:                                 ; preds = %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot
  %.03341.i.lcssa.ph.i1066 = phi i16 [ %i.erg, %bb.pb ], [ %i.ere, %bb.pa ], [ %i.erc, %bb.oz ], [ %i.era, %bb.oy ], [ %i.eqy, %bb.ox ], [ %i.eqw, %bb.ow ], [ %i.equ, %bb.ov ], [ %i.eqs, %bb.ou ], [ %i.eqq, %bb.ot ]
  %indvars.iv59.i.lcssa.ph.i1067 = phi i64 [ 0, %bb.pb ], [ 2, %bb.pa ], [ 4, %bb.oz ], [ 6, %bb.oy ], [ 8, %bb.ox ], [ 10, %bb.ow ], [ 12, %bb.ov ], [ 14, %bb.ou ], [ 16, %bb.ot ] ; 3 uses
  %i.ero = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.ph.i1066, ptr %i.ero, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ed, align 2, !tbaa !24
  %i.erp = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.erq = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i1067
  %scevgep.i1068 = getelementptr i8, ptr %i.ed, i64 %i.erq
  %i.err = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i1067, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i1068, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.err, i1 false), !tbaa !20
  %i.ers = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i1067
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.erp, i8 0, i64 %i.ers, i1 false), !tbaa !20
  br label %submag0.exit1086

submag0.exit1086:                                 ; preds = %bb.pc, %.preheader.i.i1063, %.lr.ph47.i.i1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %sub.exit37

bb.pd:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ert = sext i16 %i.chg to i32                 ; 2 uses
  %i.eru = sext i16 %i.chf to i32                 ; 3 uses
  %i.erv = sub nsw i32 %i.ert, %i.eru
  %i.erw = icmp slt i32 %i.erv, 10
  br i1 %i.erw, label %.lr.ph.i1035, label %.lr.ph38.i1012

.lr.ph.i1035:                                     ; preds = %bb.pd
  %i.erx = sext i16 %i.chg to i64
  %i.ery = sub nsw i32 0, %i.eru
  %i.erz = sext i32 %i.ery to i64
  %i.esa = add nsw i64 %i.erx, %i.erz             ; 2 uses
  %i.esb = add nsw i32 %i.eru, 10
  %i.esc = sub nsw i32 %i.esb, %i.ert             ; 4 uses
  %wide.trip.count.i1036 = zext i32 %i.esc to i64 ; 2 uses
  %xtraiter1805 = and i64 %wide.trip.count.i1036, 3 ; 3 uses
  %i.esd = add nsw i32 %i.esc, -1
  %i.ese = icmp ult i32 %i.esd, 3
  br i1 %i.ese, label %.epil.preheader1804, label %.lr.ph.i1035.new

.lr.ph.i1035.new:                                 ; preds = %.lr.ph.i1035
  %unroll_iter1810 = and i64 %wide.trip.count.i1036, 4294967292
  br label %bb.pf

.preheader.i1043.unr-lcssa:                       ; preds = %bb.pf
  %lcmp.mod1807.not = icmp eq i64 %xtraiter1805, 0
  br i1 %lcmp.mod1807.not, label %.preheader.i1043, label %.epil.preheader1804

.epil.preheader1804:                              ; preds = %.preheader.i1043.unr-lcssa, %.lr.ph.i1035
  %indvars.iv45.i1037.epil.init = phi i64 [ 0, %.lr.ph.i1035 ], [ %indvars.iv.next46.i1040.3, %.preheader.i1043.unr-lcssa ]
  %indvars.iv.i1038.epil.init = phi i64 [ %i.esa, %.lr.ph.i1035 ], [ %indvars.iv.next.i1041.3, %.preheader.i1043.unr-lcssa ]
  %.034.i1039.epil.init = phi i64 [ 0, %.lr.ph.i1035 ], [ %i.evi, %.preheader.i1043.unr-lcssa ]
  %lcmp.mod1809 = icmp ne i64 %xtraiter1805, 0
  tail call void @llvm.assume(i1 %lcmp.mod1809)
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pe, %.epil.preheader1804
  %indvars.iv45.i1037.epil = phi i64 [ %indvars.iv45.i1037.epil.init, %.epil.preheader1804 ], [ %indvars.iv.next46.i1040.epil, %bb.pe ] ; 3 uses
  %indvars.iv.i1038.epil = phi i64 [ %indvars.iv.i1038.epil.init, %.epil.preheader1804 ], [ %indvars.iv.next.i1041.epil, %bb.pe ] ; 2 uses
  %.034.i1039.epil = phi i64 [ %.034.i1039.epil.init, %.epil.preheader1804 ], [ %i.esr, %bb.pe ]
  %epil.iter1806 = phi i64 [ 0, %.epil.preheader1804 ], [ %epil.iter1806.next, %bb.pe ]
  %i.esf = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv45.i1037.epil
  %i.esg = load i16, ptr %i.esf, align 2, !tbaa !20
  %i.esh = zext i16 %i.esg to i64
  %i.esi = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038.epil
  %i.esj = load i16, ptr %i.esi, align 2, !tbaa !20
  %i.esk = zext i16 %i.esj to i64
  %i.esl = sub nsw i64 %i.esh, %i.esk
  %i.esm = add nsw i64 %i.esl, %.034.i1039.epil   ; 2 uses
  %i.esn = trunc i64 %i.esm to i16
  %i.eso = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv45.i1037.epil
  store i16 %i.esn, ptr %i.eso, align 2, !tbaa !20
  %i.esp = add nsw i64 %i.esm, 2147483648
  %i.esq = lshr i64 %i.esp, 16
  %i.esr = add nsw i64 %i.esq, -32768             ; 2 uses
  %indvars.iv.next46.i1040.epil = add nuw nsw i64 %indvars.iv45.i1037.epil, 1
  %indvars.iv.next.i1041.epil = add nsw i64 %indvars.iv.i1038.epil, 1
  %epil.iter1806.next = add i64 %epil.iter1806, 1 ; 2 uses
  %epil.iter1806.cmp.not = icmp eq i64 %epil.iter1806.next, %xtraiter1805
  br i1 %epil.iter1806.cmp.not, label %.preheader.i1043, label %bb.pe, !llvm.loop !96

.preheader.i1043:                                 ; preds = %bb.pe, %.preheader.i1043.unr-lcssa
  %.lcssa1523 = phi i64 [ %i.evi, %.preheader.i1043.unr-lcssa ], [ %i.esr, %bb.pe ]
  %i.ess = icmp samesign ult i32 %i.esc, 10
  br i1 %i.ess, label %.lr.ph38.i1012, label %._crit_edge.i1019

.lr.ph38.i1012:                                   ; preds = %bb.pd, %.preheader.i1043
  %.0.lcssa85.i1013 = phi i64 [ %.lcssa1523, %.preheader.i1043 ], [ 0, %bb.pd ] ; 2 uses
  %.025.lcssa84.i1014 = phi i32 [ %i.esc, %.preheader.i1043 ], [ 0, %bb.pd ] ; 2 uses
  %i.est = zext nneg i32 %.025.lcssa84.i1014 to i64 ; 3 uses
  %i.esu = sub nsw i64 2, %i.est
  %xtraiter1814 = and i64 %i.esu, 3               ; 2 uses
  %lcmp.mod1815.not = icmp eq i64 %xtraiter1814, 0
  br i1 %lcmp.mod1815.not, label %.prol.loopexit1813, label %.prol.preheader1812

.prol.preheader1812:                              ; preds = %.lr.ph38.i1012, %.prol.preheader1812
  %indvars.iv50.i1015.prol = phi i64 [ %indvars.iv.next51.i1017.prol, %.prol.preheader1812 ], [ %i.est, %.lr.ph38.i1012 ] ; 3 uses
  %.137.i1016.prol = phi i64 [ %i.etd, %.prol.preheader1812 ], [ %.0.lcssa85.i1013, %.lr.ph38.i1012 ]
  %prol.iter1816 = phi i64 [ %prol.iter1816.next, %.prol.preheader1812 ], [ 0, %.lr.ph38.i1012 ]
  %i.esv = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv50.i1015.prol
  %i.esw = load i16, ptr %i.esv, align 2, !tbaa !20
  %i.esx = zext i16 %i.esw to i64
  %i.esy = add nsw i64 %.137.i1016.prol, %i.esx   ; 2 uses
  %i.esz = trunc i64 %i.esy to i16
  %i.eta = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv50.i1015.prol
  store i16 %i.esz, ptr %i.eta, align 2, !tbaa !20
  %i.etb = add nsw i64 %i.esy, 2147483648
  %i.etc = lshr i64 %i.etb, 16
  %i.etd = add nsw i64 %i.etc, -32768             ; 2 uses
  %indvars.iv.next51.i1017.prol = add nuw nsw i64 %indvars.iv50.i1015.prol, 1 ; 2 uses
  %prol.iter1816.next = add i64 %prol.iter1816, 1 ; 2 uses
  %prol.iter1816.cmp.not = icmp eq i64 %prol.iter1816.next, %xtraiter1814
  br i1 %prol.iter1816.cmp.not, label %.prol.loopexit1813, label %.prol.preheader1812, !llvm.loop !97

.prol.loopexit1813:                               ; preds = %.prol.preheader1812, %.lr.ph38.i1012
  %indvars.iv50.i1015.unr = phi i64 [ %i.est, %.lr.ph38.i1012 ], [ %indvars.iv.next51.i1017.prol, %.prol.preheader1812 ]
  %.137.i1016.unr = phi i64 [ %.0.lcssa85.i1013, %.lr.ph38.i1012 ], [ %i.etd, %.prol.preheader1812 ]
  %i.ete = add nsw i32 %.025.lcssa84.i1014, -7
  %i.etf = icmp ult i32 %i.ete, 3
  br i1 %i.etf, label %._crit_edge.i1019, label %.lr.ph38.i1012.new

bb.pf:                                            ; preds = %bb.pf, %.lr.ph.i1035.new
  %indvars.iv45.i1037 = phi i64 [ 0, %.lr.ph.i1035.new ], [ %indvars.iv.next46.i1040.3, %bb.pf ] ; 6 uses
  %indvars.iv.i1038 = phi i64 [ %i.esa, %.lr.ph.i1035.new ], [ %indvars.iv.next.i1041.3, %bb.pf ] ; 5 uses
  %.034.i1039 = phi i64 [ 0, %.lr.ph.i1035.new ], [ %i.evi, %bb.pf ]
  %niter1811 = phi i64 [ 0, %.lr.ph.i1035.new ], [ %niter1811.next.3, %bb.pf ]
  %i.etg = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv45.i1037
  %i.eth = load i16, ptr %i.etg, align 4, !tbaa !20
  %i.eti = zext i16 %i.eth to i64
  %i.etj = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038
  %i.etk = load i16, ptr %i.etj, align 2, !tbaa !20
  %i.etl = zext i16 %i.etk to i64
  %i.etm = sub nsw i64 %i.eti, %i.etl
  %i.etn = add nsw i64 %i.etm, %.034.i1039        ; 2 uses
  %i.eto = trunc i64 %i.etn to i16
  %i.etp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv45.i1037
  store i16 %i.eto, ptr %i.etp, align 8, !tbaa !20
  %i.etq = add nsw i64 %i.etn, 2147483648
  %i.etr = lshr i64 %i.etq, 16
  %i.ets = add nsw i64 %i.etr, -32768
  %indvars.iv.next46.i1040 = or disjoint i64 %indvars.iv45.i1037, 1 ; 2 uses
  %i.ett = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i1040
  %i.etu = load i16, ptr %i.ett, align 2, !tbaa !20
  %i.etv = zext i16 %i.etu to i64
  %i.etw = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038
  %i.etx = getelementptr i8, ptr %i.etw, i64 2
  %i.ety = load i16, ptr %i.etx, align 2, !tbaa !20
  %i.etz = zext i16 %i.ety to i64
  %i.eua = sub nsw i64 %i.etv, %i.etz
  %i.eub = add nsw i64 %i.eua, %i.ets             ; 2 uses
  %i.euc = trunc i64 %i.eub to i16
  %i.eud = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next46.i1040
  store i16 %i.euc, ptr %i.eud, align 2, !tbaa !20
  %i.eue = add nsw i64 %i.eub, 2147483648
  %i.euf = lshr i64 %i.eue, 16
  %i.eug = add nsw i64 %i.euf, -32768
  %indvars.iv.next46.i1040.1 = or disjoint i64 %indvars.iv45.i1037, 2 ; 2 uses
  %i.euh = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i1040.1
  %i.eui = load i16, ptr %i.euh, align 8, !tbaa !20
  %i.euj = zext i16 %i.eui to i64
  %i.euk = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038
  %i.eul = getelementptr i8, ptr %i.euk, i64 4
  %i.eum = load i16, ptr %i.eul, align 2, !tbaa !20
  %i.eun = zext i16 %i.eum to i64
  %i.euo = sub nsw i64 %i.euj, %i.eun
  %i.eup = add nsw i64 %i.euo, %i.eug             ; 2 uses
  %i.euq = trunc i64 %i.eup to i16
  %i.eur = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next46.i1040.1
  store i16 %i.euq, ptr %i.eur, align 4, !tbaa !20
  %i.eus = add nsw i64 %i.eup, 2147483648
  %i.eut = lshr i64 %i.eus, 16
  %i.euu = add nsw i64 %i.eut, -32768
  %indvars.iv.next46.i1040.2 = or disjoint i64 %indvars.iv45.i1037, 3 ; 2 uses
  %i.euv = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next46.i1040.2
  %i.euw = load i16, ptr %i.euv, align 2, !tbaa !20
  %i.eux = zext i16 %i.euw to i64
  %i.euy = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i1038
  %i.euz = getelementptr i8, ptr %i.euy, i64 6
  %i.eva = load i16, ptr %i.euz, align 2, !tbaa !20
  %i.evb = zext i16 %i.eva to i64
  %i.evc = sub nsw i64 %i.eux, %i.evb
  %i.evd = add nsw i64 %i.evc, %i.euu             ; 2 uses
  %i.eve = trunc i64 %i.evd to i16
  %i.evf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next46.i1040.2
  store i16 %i.eve, ptr %i.evf, align 2, !tbaa !20
  %i.evg = add nsw i64 %i.evd, 2147483648
  %i.evh = lshr i64 %i.evg, 16
  %i.evi = add nsw i64 %i.evh, -32768             ; 3 uses
  %indvars.iv.next46.i1040.3 = add nuw nsw i64 %indvars.iv45.i1037, 4 ; 2 uses
  %indvars.iv.next.i1041.3 = add nsw i64 %indvars.iv.i1038, 4 ; 2 uses
  %niter1811.next.3 = add i64 %niter1811, 4       ; 2 uses
  %niter1811.ncmp.3 = icmp eq i64 %niter1811.next.3, %unroll_iter1810
  br i1 %niter1811.ncmp.3, label %.preheader.i1043.unr-lcssa, label %bb.pf, !llvm.loop !3

.lr.ph38.i1012.new:                               ; preds = %.prol.loopexit1813, %.lr.ph38.i1012.new
  %indvars.iv50.i1015 = phi i64 [ %indvars.iv.next51.i1017.3, %.lr.ph38.i1012.new ], [ %indvars.iv50.i1015.unr, %.prol.loopexit1813 ] ; 6 uses
  %.137.i1016 = phi i64 [ %i.ews, %.lr.ph38.i1012.new ], [ %.137.i1016.unr, %.prol.loopexit1813 ]
  %i.evj = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv50.i1015
  %i.evk = load i16, ptr %i.evj, align 2, !tbaa !20
  %i.evl = zext i16 %i.evk to i64
  %i.evm = add nsw i64 %.137.i1016, %i.evl        ; 2 uses
  %i.evn = trunc i64 %i.evm to i16
  %i.evo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv50.i1015
  store i16 %i.evn, ptr %i.evo, align 2, !tbaa !20
  %i.evp = add nsw i64 %i.evm, 2147483648
  %i.evq = lshr i64 %i.evp, 16
  %i.evr = add nsw i64 %i.evq, -32768
  %indvars.iv.next51.i1017 = add nuw nsw i64 %indvars.iv50.i1015, 1 ; 2 uses
  %i.evs = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i1017
  %i.evt = load i16, ptr %i.evs, align 2, !tbaa !20
  %i.evu = zext i16 %i.evt to i64
  %i.evv = add nsw i64 %i.evr, %i.evu             ; 2 uses
  %i.evw = trunc i64 %i.evv to i16
  %i.evx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next51.i1017
  store i16 %i.evw, ptr %i.evx, align 2, !tbaa !20
  %i.evy = add nsw i64 %i.evv, 2147483648
  %i.evz = lshr i64 %i.evy, 16
  %i.ewa = add nsw i64 %i.evz, -32768
  %indvars.iv.next51.i1017.1 = add nuw nsw i64 %indvars.iv50.i1015, 2 ; 2 uses
  %i.ewb = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i1017.1
  %i.ewc = load i16, ptr %i.ewb, align 2, !tbaa !20
  %i.ewd = zext i16 %i.ewc to i64
  %i.ewe = add nsw i64 %i.ewa, %i.ewd             ; 2 uses
  %i.ewf = trunc i64 %i.ewe to i16
  %i.ewg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next51.i1017.1
  store i16 %i.ewf, ptr %i.ewg, align 2, !tbaa !20
  %i.ewh = add nsw i64 %i.ewe, 2147483648
  %i.ewi = lshr i64 %i.ewh, 16
  %i.ewj = add nsw i64 %i.ewi, -32768
  %indvars.iv.next51.i1017.2 = add nuw nsw i64 %indvars.iv50.i1015, 3 ; 2 uses
  %i.ewk = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next51.i1017.2
  %i.ewl = load i16, ptr %i.ewk, align 2, !tbaa !20
  %i.ewm = zext i16 %i.ewl to i64
  %i.ewn = add nsw i64 %i.ewj, %i.ewm             ; 2 uses
  %i.ewo = trunc i64 %i.ewn to i16
  %i.ewp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next51.i1017.2
  store i16 %i.ewo, ptr %i.ewp, align 2, !tbaa !20
  %i.ewq = add nsw i64 %i.ewn, 2147483648
  %i.ewr = lshr i64 %i.ewq, 16
  %i.ews = add nsw i64 %i.ewr, -32768
  %indvars.iv.next51.i1017.3 = add nuw nsw i64 %indvars.iv50.i1015, 4 ; 2 uses
  %exitcond53.not.i1018.3 = icmp eq i64 %indvars.iv.next51.i1017.3, 10
  br i1 %exitcond53.not.i1018.3, label %._crit_edge.i1019, label %.lr.ph38.i1012.new, !llvm.loop !4

._crit_edge.i1019:                                ; preds = %.prol.loopexit1813, %.lr.ph38.i1012.new, %.preheader.i1043
  %i.ewt = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i1003, align 2, !tbaa !20 ; 2 uses
  %.not.i.not.not.i1020 = icmp eq i16 %i.ewt, 0
  br i1 %.not.i.not.not.i1020, label %bb.pg, label %.preheader.i.i1021

bb.pg:                                            ; preds = %._crit_edge.i1019
  %i.ewu = add i16 %i.chg, -1
  %i.ewv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i1004, align 16, !tbaa !20
  %.not.i.1.i1022 = icmp eq i16 %i.ewv, 0
  br i1 %.not.i.1.i1022, label %bb.ph, label %.lr.ph47.i.i1023

bb.ph:                                            ; preds = %bb.pg
  %i.eww = add i16 %i.chg, -2
  %i.ewx = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep55.i1005, align 2, !tbaa !20
  %.not.i.2.i1027 = icmp eq i16 %i.ewx, 0
  br i1 %.not.i.2.i1027, label %bb.pi, label %.lr.ph47.i.i1023

bb.pi:                                            ; preds = %bb.ph
  %i.ewy = add i16 %i.chg, -3
  %i.ewz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep56.i1006, align 4, !tbaa !20
  %.not.i.3.i1028 = icmp eq i16 %i.ewz, 0
  br i1 %.not.i.3.i1028, label %bb.pj, label %.lr.ph47.i.i1023

bb.pj:                                            ; preds = %bb.pi
  %i.exa = add i16 %i.chg, -4
  %i.exb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep57.i1007, align 2, !tbaa !20
  %.not.i.4.i1029 = icmp eq i16 %i.exb, 0
  br i1 %.not.i.4.i1029, label %bb.pk, label %.lr.ph47.i.i1023

bb.pk:                                            ; preds = %bb.pj
  %i.exc = add i16 %i.chg, -5
  %i.exd = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep58.i1008, align 8, !tbaa !20
  %.not.i.5.i1030 = icmp eq i16 %i.exd, 0
  br i1 %.not.i.5.i1030, label %bb.pl, label %.lr.ph47.i.i1023

bb.pl:                                            ; preds = %bb.pk
  %i.exe = add i16 %i.chg, -6
  %i.exf = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep59.i1009, align 2, !tbaa !20
  %.not.i.6.i1031 = icmp eq i16 %i.exf, 0
  br i1 %.not.i.6.i1031, label %bb.pm, label %.lr.ph47.i.i1023

bb.pm:                                            ; preds = %bb.pl
  %i.exg = add i16 %i.chg, -7
  %i.exh = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i1010, align 4, !tbaa !20
  %.not.i.7.i1032 = icmp eq i16 %i.exh, 0
  br i1 %.not.i.7.i1032, label %bb.pn, label %.lr.ph47.i.i1023

bb.pn:                                            ; preds = %bb.pm
  %i.exi = add i16 %i.chg, -8
  %i.exj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i1011, align 2, !tbaa !20
  %.not.i.8.i1033 = icmp eq i16 %i.exj, 0
  br i1 %.not.i.8.i1033, label %bb.po, label %.lr.ph47.i.i1023

bb.po:                                            ; preds = %bb.pn
  %i.exk = add i16 %i.chg, -9
  %i.exl = load i16, ptr %i.b, align 16, !tbaa !20
  %.not.i.9.i1034 = icmp eq i16 %i.exl, 0
  br i1 %.not.i.9.i1034, label %bb.pp, label %.lr.ph47.i.i1023

bb.pp:                                            ; preds = %bb.po
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %submag0.exit1044

.preheader.i.i1021:                               ; preds = %._crit_edge.i1019
  %i.exm = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %i.chg, ptr %i.exm, align 2, !tbaa !26
  %i.exn = sub i16 0, %i.chc
  store i16 %i.exn, ptr %i.ed, align 2, !tbaa !24
  %i.exo = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.exp = getelementptr inbounds nuw i8, ptr %i.eb, i64 46
  store i16 %i.ewt, ptr %i.exp, align 2, !tbaa !20
  %i.exq = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep54.i1004, align 16, !tbaa !20
  %i.exr = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i16 %i.exq, ptr %i.exr, align 2, !tbaa !20
  %i.exs = load <8 x i16>, ptr %i.b, align 16, !tbaa !20
  store <8 x i16> %i.exs, ptr %i.exo, align 2, !tbaa !20
  br label %submag0.exit1044

.lr.ph47.i.i1023:                                 ; preds = %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj, %bb.pi, %bb.ph, %bb.pg
  %.03341.i.lcssa.ph.i1024 = phi i16 [ %i.exk, %bb.po ], [ %i.exi, %bb.pn ], [ %i.exg, %bb.pm ], [ %i.exe, %bb.pl ], [ %i.exc, %bb.pk ], [ %i.exa, %bb.pj ], [ %i.ewy, %bb.pi ], [ %i.eww, %bb.ph ], [ %i.ewu, %bb.pg ]
  %indvars.iv59.i.lcssa.ph.i1025 = phi i64 [ 0, %bb.po ], [ 2, %bb.pn ], [ 4, %bb.pm ], [ 6, %bb.pl ], [ 8, %bb.pk ], [ 10, %bb.pj ], [ 12, %bb.pi ], [ 14, %bb.ph ], [ 16, %bb.pg ] ; 3 uses
  %i.ext = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.ph.i1024, ptr %i.ext, align 2, !tbaa !26
  %i.exu = sub i16 0, %i.chc
  store i16 %i.exu, ptr %i.ed, align 2, !tbaa !24
  %i.exv = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.exw = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i1025
  %scevgep.i1026 = getelementptr i8, ptr %i.ed, i64 %i.exw
  %i.exx = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i1025, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i1026, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.exx, i1 false), !tbaa !20
  %i.exy = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i1025
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.exv, i8 0, i64 %i.exy, i1 false), !tbaa !20
  br label %submag0.exit1044

submag0.exit1044:                                 ; preds = %bb.pp, %.preheader.i.i1021, %.lr.ph47.i.i1023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %sub.exit37

bb.pq:                                            ; preds = %abscmp.exit1090
  br i1 %.014.i1089, label %bb.pr, label %bb.qf

bb.pr:                                            ; preds = %bb.pq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.exz = sext i16 %i.chf to i32                 ; 2 uses
  %i.eya = sext i16 %i.chg to i32                 ; 3 uses
  %i.eyb = sub nsw i32 %i.exz, %i.eya
  %i.eyc = icmp slt i32 %i.eyb, 10
  br i1 %i.eyc, label %.lr.ph.i993, label %.lr.ph40.i965

.lr.ph.i993:                                      ; preds = %bb.pr
  %i.eyd = sext i16 %i.chf to i64
  %i.eye = sub nsw i32 0, %i.eya
  %i.eyf = sext i32 %i.eye to i64
  %i.eyg = add nsw i64 %i.eyf, %i.eyd             ; 2 uses
  %reass.sub1169 = sub nsw i32 %i.eya, %i.exz     ; 3 uses
  %i.eyh = add nsw i32 %reass.sub1169, 10         ; 3 uses
  %wide.trip.count.i994 = zext i32 %i.eyh to i64  ; 2 uses
  %xtraiter1792 = and i64 %wide.trip.count.i994, 3 ; 3 uses
  %i.eyi = add nsw i32 %reass.sub1169, 9
  %i.eyj = icmp ult i32 %i.eyi, 3
  br i1 %i.eyj, label %.epil.preheader1791, label %.lr.ph.i993.new

.lr.ph.i993.new:                                  ; preds = %.lr.ph.i993
  %unroll_iter1797 = and i64 %wide.trip.count.i994, 4294967292
  br label %bb.pt

.preheader.i1001.unr-lcssa:                       ; preds = %bb.pt
  %lcmp.mod1794.not = icmp eq i64 %xtraiter1792, 0
  br i1 %lcmp.mod1794.not, label %.preheader.i1001, label %.epil.preheader1791

.epil.preheader1791:                              ; preds = %.preheader.i1001.unr-lcssa, %.lr.ph.i993
  %indvars.iv51.i995.epil.init = phi i64 [ 0, %.lr.ph.i993 ], [ %indvars.iv.next52.i998.3, %.preheader.i1001.unr-lcssa ]
  %indvars.iv.i996.epil.init = phi i64 [ %i.eyg, %.lr.ph.i993 ], [ %indvars.iv.next.i999.3, %.preheader.i1001.unr-lcssa ]
  %.036.i997.epil.init = phi i64 [ 0, %.lr.ph.i993 ], [ %i.fbb, %.preheader.i1001.unr-lcssa ]
  %lcmp.mod1796 = icmp ne i64 %xtraiter1792, 0
  tail call void @llvm.assume(i1 %lcmp.mod1796)
  br label %bb.ps

bb.ps:                                            ; preds = %bb.ps, %.epil.preheader1791
  %indvars.iv51.i995.epil = phi i64 [ %indvars.iv51.i995.epil.init, %.epil.preheader1791 ], [ %indvars.iv.next52.i998.epil, %bb.ps ] ; 3 uses
  %indvars.iv.i996.epil = phi i64 [ %indvars.iv.i996.epil.init, %.epil.preheader1791 ], [ %indvars.iv.next.i999.epil, %bb.ps ] ; 2 uses
  %.036.i997.epil = phi i64 [ %.036.i997.epil.init, %.epil.preheader1791 ], [ %i.eyu, %bb.ps ]
  %epil.iter1793 = phi i64 [ 0, %.epil.preheader1791 ], [ %epil.iter1793.next, %bb.ps ]
  %i.eyk = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv51.i995.epil
  %i.eyl = load i16, ptr %i.eyk, align 2, !tbaa !20
  %i.eym = zext i16 %i.eyl to i64
  %i.eyn = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i996.epil
  %i.eyo = load i16, ptr %i.eyn, align 2, !tbaa !20
  %i.eyp = zext i16 %i.eyo to i64
  %i.eyq = add nuw nsw i64 %.036.i997.epil, %i.eym
  %i.eyr = add nuw nsw i64 %i.eyq, %i.eyp         ; 2 uses
  %i.eys = trunc i64 %i.eyr to i16
  %i.eyt = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv51.i995.epil
  store i16 %i.eys, ptr %i.eyt, align 2, !tbaa !20
  %i.eyu = lshr i64 %i.eyr, 16                    ; 2 uses
  %indvars.iv.next52.i998.epil = add nuw nsw i64 %indvars.iv51.i995.epil, 1
  %indvars.iv.next.i999.epil = add nsw i64 %indvars.iv.i996.epil, 1
  %epil.iter1793.next = add i64 %epil.iter1793, 1 ; 2 uses
  %epil.iter1793.cmp.not = icmp eq i64 %epil.iter1793.next, %xtraiter1792
  br i1 %epil.iter1793.cmp.not, label %.preheader.i1001, label %bb.ps, !llvm.loop !98

.preheader.i1001:                                 ; preds = %bb.ps, %.preheader.i1001.unr-lcssa
  %.lcssa1521 = phi i64 [ %i.fbb, %.preheader.i1001.unr-lcssa ], [ %i.eyu, %bb.ps ] ; 2 uses
  %i.eyv = icmp slt i32 %reass.sub1169, 0
  br i1 %i.eyv, label %.lr.ph40.i965, label %._crit_edge.i972

.lr.ph40.i965:                                    ; preds = %bb.pr, %.preheader.i1001
  %.0.lcssa94.i966 = phi i64 [ %.lcssa1521, %.preheader.i1001 ], [ 0, %bb.pr ] ; 2 uses
  %.027.lcssa93.i967 = phi i32 [ %i.eyh, %.preheader.i1001 ], [ 0, %bb.pr ] ; 2 uses
  %i.eyw = zext i32 %.027.lcssa93.i967 to i64     ; 3 uses
  %i.eyx = sub nsw i64 2, %i.eyw
  %xtraiter1801 = and i64 %i.eyx, 7               ; 2 uses
  %lcmp.mod1802.not = icmp eq i64 %xtraiter1801, 0
  br i1 %lcmp.mod1802.not, label %.prol.loopexit1800, label %.prol.preheader1799

.prol.preheader1799:                              ; preds = %.lr.ph40.i965, %.prol.preheader1799
  %indvars.iv56.i968.prol = phi i64 [ %indvars.iv.next57.i970.prol, %.prol.preheader1799 ], [ %i.eyw, %.lr.ph40.i965 ] ; 3 uses
  %.139.i969.prol = phi i64 [ %i.eze, %.prol.preheader1799 ], [ %.0.lcssa94.i966, %.lr.ph40.i965 ]
  %prol.iter1803 = phi i64 [ %prol.iter1803.next, %.prol.preheader1799 ], [ 0, %.lr.ph40.i965 ]
  %i.eyy = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv56.i968.prol
  %i.eyz = load i16, ptr %i.eyy, align 2, !tbaa !20
  %i.eza = zext i16 %i.eyz to i64
  %i.ezb = add nuw nsw i64 %.139.i969.prol, %i.eza ; 2 uses
  %i.ezc = trunc i64 %i.ezb to i16
  %i.ezd = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv56.i968.prol
  store i16 %i.ezc, ptr %i.ezd, align 2, !tbaa !20
  %i.eze = lshr i64 %i.ezb, 16                    ; 3 uses
  %indvars.iv.next57.i970.prol = add nuw nsw i64 %indvars.iv56.i968.prol, 1 ; 2 uses
  %prol.iter1803.next = add i64 %prol.iter1803, 1 ; 2 uses
  %prol.iter1803.cmp.not = icmp eq i64 %prol.iter1803.next, %xtraiter1801
  br i1 %prol.iter1803.cmp.not, label %.prol.loopexit1800, label %.prol.preheader1799, !llvm.loop !99

.prol.loopexit1800:                               ; preds = %.prol.preheader1799, %.lr.ph40.i965
  %.lcssa1522.unr = phi i64 [ poison, %.lr.ph40.i965 ], [ %i.eze, %.prol.preheader1799 ]
  %indvars.iv56.i968.unr = phi i64 [ %i.eyw, %.lr.ph40.i965 ], [ %indvars.iv.next57.i970.prol, %.prol.preheader1799 ]
  %.139.i969.unr = phi i64 [ %.0.lcssa94.i966, %.lr.ph40.i965 ], [ %i.eze, %.prol.preheader1799 ]
  %i.ezf = add nsw i32 %.027.lcssa93.i967, -3
  %i.ezg = icmp ult i32 %i.ezf, 7
  br i1 %i.ezg, label %._crit_edge.i972, label %.lr.ph40.i965.new

bb.pt:                                            ; preds = %bb.pt, %.lr.ph.i993.new
  %indvars.iv51.i995 = phi i64 [ 0, %.lr.ph.i993.new ], [ %indvars.iv.next52.i998.3, %bb.pt ] ; 6 uses
  %indvars.iv.i996 = phi i64 [ %i.eyg, %.lr.ph.i993.new ], [ %indvars.iv.next.i999.3, %bb.pt ] ; 5 uses
  %.036.i997 = phi i64 [ 0, %.lr.ph.i993.new ], [ %i.fbb, %bb.pt ]
  %niter1798 = phi i64 [ 0, %.lr.ph.i993.new ], [ %niter1798.next.3, %bb.pt ]
  %i.ezh = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv51.i995
  %i.ezi = load i16, ptr %i.ezh, align 4, !tbaa !20
  %i.ezj = zext i16 %i.ezi to i64
  %i.ezk = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %indvars.iv.i996
  %i.ezl = load i16, ptr %i.ezk, align 2, !tbaa !20
  %i.ezm = zext i16 %i.ezl to i64
  %i.ezn = add nuw nsw i64 %.036.i997, %i.ezj
  %i.ezo = add nuw nsw i64 %i.ezn, %i.ezm         ; 2 uses
  %i.ezp = trunc i64 %i.ezo to i16
  %i.ezq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv51.i995
  store i16 %i.ezp, ptr %i.ezq, align 8, !tbaa !20
  %i.ezr = lshr i64 %i.ezo, 16
  %indvars.iv.next52.i998 = or disjoint i64 %indvars.iv51.i995, 1 ; 2 uses
  %i.ezs = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i998
  %i.ezt = load i16, ptr %i.ezs, align 2, !tbaa !20
  %i.ezu = zext i16 %i.ezt to i64
  %i.ezv = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i996
  %i.ezw = getelementptr i8, ptr %i.ezv, i64 2
  %i.ezx = load i16, ptr %i.ezw, align 2, !tbaa !20
  %i.ezy = zext i16 %i.ezx to i64
  %i.ezz = add nuw nsw i64 %i.ezr, %i.ezu
  %i.faa = add nuw nsw i64 %i.ezz, %i.ezy         ; 2 uses
  %i.fab = trunc i64 %i.faa to i16
  %i.fac = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next52.i998
  store i16 %i.fab, ptr %i.fac, align 2, !tbaa !20
  %i.fad = lshr i64 %i.faa, 16
  %indvars.iv.next52.i998.1 = or disjoint i64 %indvars.iv51.i995, 2 ; 2 uses
  %i.fae = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i998.1
  %i.faf = load i16, ptr %i.fae, align 8, !tbaa !20
  %i.fag = zext i16 %i.faf to i64
  %i.fah = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i996
  %i.fai = getelementptr i8, ptr %i.fah, i64 4
  %i.faj = load i16, ptr %i.fai, align 2, !tbaa !20
  %i.fak = zext i16 %i.faj to i64
  %i.fal = add nuw nsw i64 %i.fad, %i.fag
  %i.fam = add nuw nsw i64 %i.fal, %i.fak         ; 2 uses
  %i.fan = trunc i64 %i.fam to i16
  %i.fao = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next52.i998.1
  store i16 %i.fan, ptr %i.fao, align 4, !tbaa !20
  %i.fap = lshr i64 %i.fam, 16
  %indvars.iv.next52.i998.2 = or disjoint i64 %indvars.iv51.i995, 3 ; 2 uses
  %i.faq = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next52.i998.2
  %i.far = load i16, ptr %i.faq, align 2, !tbaa !20
  %i.fas = zext i16 %i.far to i64
  %i.fat = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv.i996
  %i.fau = getelementptr i8, ptr %i.fat, i64 6
  %i.fav = load i16, ptr %i.fau, align 2, !tbaa !20
  %i.faw = zext i16 %i.fav to i64
  %i.fax = add nuw nsw i64 %i.fap, %i.fas
  %i.fay = add nuw nsw i64 %i.fax, %i.faw         ; 2 uses
  %i.faz = trunc i64 %i.fay to i16
  %i.fba = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next52.i998.2
  store i16 %i.faz, ptr %i.fba, align 2, !tbaa !20
  %i.fbb = lshr i64 %i.fay, 16                    ; 3 uses
  %indvars.iv.next52.i998.3 = add nuw nsw i64 %indvars.iv51.i995, 4 ; 2 uses
  %indvars.iv.next.i999.3 = add nsw i64 %indvars.iv.i996, 4 ; 2 uses
  %niter1798.next.3 = add i64 %niter1798, 4       ; 2 uses
  %niter1798.ncmp.3 = icmp eq i64 %niter1798.next.3, %unroll_iter1797
  br i1 %niter1798.ncmp.3, label %.preheader.i1001.unr-lcssa, label %bb.pt, !llvm.loop !5

.lr.ph40.i965.new:                                ; preds = %.prol.loopexit1800, %.lr.ph40.i965.new
  %indvars.iv56.i968 = phi i64 [ %indvars.iv.next57.i970.7, %.lr.ph40.i965.new ], [ %indvars.iv56.i968.unr, %.prol.loopexit1800 ] ; 10 uses
  %.139.i969 = phi i64 [ %i.fdf, %.lr.ph40.i965.new ], [ %.139.i969.unr, %.prol.loopexit1800 ]
  %i.fbc = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv56.i968
  %i.fbd = load i16, ptr %i.fbc, align 2, !tbaa !20
  %i.fbe = zext i16 %i.fbd to i64
  %i.fbf = add nuw nsw i64 %.139.i969, %i.fbe     ; 2 uses
  %i.fbg = trunc i64 %i.fbf to i16
  %i.fbh = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv56.i968
  store i16 %i.fbg, ptr %i.fbh, align 2, !tbaa !20
  %i.fbi = lshr i64 %i.fbf, 16
  %indvars.iv.next57.i970 = add nuw nsw i64 %indvars.iv56.i968, 1 ; 2 uses
  %i.fbj = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970
  %i.fbk = load i16, ptr %i.fbj, align 2, !tbaa !20
  %i.fbl = zext i16 %i.fbk to i64
  %i.fbm = add nuw nsw i64 %i.fbi, %i.fbl         ; 2 uses
  %i.fbn = trunc i64 %i.fbm to i16
  %i.fbo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970
  store i16 %i.fbn, ptr %i.fbo, align 2, !tbaa !20
  %i.fbp = lshr i64 %i.fbm, 16
  %indvars.iv.next57.i970.1 = add nuw nsw i64 %indvars.iv56.i968, 2 ; 2 uses
  %i.fbq = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.1
  %i.fbr = load i16, ptr %i.fbq, align 2, !tbaa !20
  %i.fbs = zext i16 %i.fbr to i64
  %i.fbt = add nuw nsw i64 %i.fbp, %i.fbs         ; 2 uses
  %i.fbu = trunc i64 %i.fbt to i16
  %i.fbv = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.1
  store i16 %i.fbu, ptr %i.fbv, align 2, !tbaa !20
  %i.fbw = lshr i64 %i.fbt, 16
  %indvars.iv.next57.i970.2 = add nuw nsw i64 %indvars.iv56.i968, 3 ; 2 uses
  %i.fbx = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.2
  %i.fby = load i16, ptr %i.fbx, align 2, !tbaa !20
  %i.fbz = zext i16 %i.fby to i64
  %i.fca = add nuw nsw i64 %i.fbw, %i.fbz         ; 2 uses
  %i.fcb = trunc i64 %i.fca to i16
  %i.fcc = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.2
  store i16 %i.fcb, ptr %i.fcc, align 2, !tbaa !20
  %i.fcd = lshr i64 %i.fca, 16
  %indvars.iv.next57.i970.3 = add nuw nsw i64 %indvars.iv56.i968, 4 ; 2 uses
  %i.fce = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.3
  %i.fcf = load i16, ptr %i.fce, align 2, !tbaa !20
  %i.fcg = zext i16 %i.fcf to i64
  %i.fch = add nuw nsw i64 %i.fcd, %i.fcg         ; 2 uses
  %i.fci = trunc i64 %i.fch to i16
  %i.fcj = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.3
  store i16 %i.fci, ptr %i.fcj, align 2, !tbaa !20
  %i.fck = lshr i64 %i.fch, 16
  %indvars.iv.next57.i970.4 = add nuw nsw i64 %indvars.iv56.i968, 5 ; 2 uses
  %i.fcl = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.4
  %i.fcm = load i16, ptr %i.fcl, align 2, !tbaa !20
  %i.fcn = zext i16 %i.fcm to i64
  %i.fco = add nuw nsw i64 %i.fck, %i.fcn         ; 2 uses
  %i.fcp = trunc i64 %i.fco to i16
  %i.fcq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.4
  store i16 %i.fcp, ptr %i.fcq, align 2, !tbaa !20
  %i.fcr = lshr i64 %i.fco, 16
  %indvars.iv.next57.i970.5 = add nuw nsw i64 %indvars.iv56.i968, 6 ; 2 uses
  %i.fcs = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.5
  %i.fct = load i16, ptr %i.fcs, align 2, !tbaa !20
  %i.fcu = zext i16 %i.fct to i64
  %i.fcv = add nuw nsw i64 %i.fcr, %i.fcu         ; 2 uses
  %i.fcw = trunc i64 %i.fcv to i16
  %i.fcx = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.5
  store i16 %i.fcw, ptr %i.fcx, align 2, !tbaa !20
  %i.fcy = lshr i64 %i.fcv, 16
  %indvars.iv.next57.i970.6 = add nuw nsw i64 %indvars.iv56.i968, 7 ; 2 uses
  %i.fcz = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next57.i970.6
  %i.fda = load i16, ptr %i.fcz, align 2, !tbaa !20
  %i.fdb = zext i16 %i.fda to i64
  %i.fdc = add nuw nsw i64 %i.fcy, %i.fdb         ; 2 uses
  %i.fdd = trunc i64 %i.fdc to i16
  %i.fde = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next57.i970.6
  store i16 %i.fdd, ptr %i.fde, align 2, !tbaa !20
  %i.fdf = lshr i64 %i.fdc, 16                    ; 2 uses
  %indvars.iv.next57.i970.7 = add nuw nsw i64 %indvars.iv56.i968, 8 ; 2 uses
  %exitcond59.not.i971.7 = icmp eq i64 %indvars.iv.next57.i970.7, 10
  br i1 %exitcond59.not.i971.7, label %._crit_edge.i972, label %.lr.ph40.i965.new, !llvm.loop !6

._crit_edge.i972:                                 ; preds = %.prol.loopexit1800, %.lr.ph40.i965.new, %.preheader.i1001
  %.128.lcssa.i973 = phi i32 [ %i.eyh, %.preheader.i1001 ], [ 10, %.lr.ph40.i965.new ], [ 10, %.prol.loopexit1800 ]
  %.1.lcssa.i974 = phi i64 [ %.lcssa1521, %.preheader.i1001 ], [ %.lcssa1522.unr, %.prol.loopexit1800 ], [ %i.fdf, %.lr.ph40.i965.new ]
  %i.fdg = trunc nuw nsw i64 %.1.lcssa.i974 to i16
  %i.fdh = zext nneg i32 %.128.lcssa.i973 to i64
  %i.fdi = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fdh
  store i16 %i.fdg, ptr %i.fdi, align 2, !tbaa !20
  %i.fdj = add i16 %i.chf, 1
  %i.fdk = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i954, align 4, !tbaa !20 ; 2 uses
  %.not.i.i975 = icmp eq i16 %i.fdk, 0
  br i1 %.not.i.i975, label %bb.pu, label %.preheader.i.i976

bb.pu:                                            ; preds = %._crit_edge.i972
  %i.fdl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i955, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i979 = icmp eq i16 %i.fdl, 0
  br i1 %.not.i.1.i979, label %bb.pv, label %.preheader.i.i976

bb.pv:                                            ; preds = %bb.pu
  %i.fdm = add i16 %i.chf, -1
  %i.fdn = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i956, align 16, !tbaa !20
  %.not.i.2.i980 = icmp eq i16 %i.fdn, 0
  br i1 %.not.i.2.i980, label %bb.pw, label %.lr.ph47.i.i981

bb.pw:                                            ; preds = %bb.pv
  %i.fdo = add i16 %i.chf, -2
  %i.fdp = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i957, align 2, !tbaa !20
  %.not.i.3.i985 = icmp eq i16 %i.fdp, 0
  br i1 %.not.i.3.i985, label %bb.px, label %.lr.ph47.i.i981

bb.px:                                            ; preds = %bb.pw
  %i.fdq = add i16 %i.chf, -3
  %i.fdr = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i958, align 4, !tbaa !20
  %.not.i.4.i986 = icmp eq i16 %i.fdr, 0
  br i1 %.not.i.4.i986, label %bb.py, label %.lr.ph47.i.i981

bb.py:                                            ; preds = %bb.px
  %i.fds = add i16 %i.chf, -4
  %i.fdt = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i959, align 2, !tbaa !20
  %.not.i.5.i987 = icmp eq i16 %i.fdt, 0
  br i1 %.not.i.5.i987, label %bb.pz, label %.lr.ph47.i.i981

bb.pz:                                            ; preds = %bb.py
  %i.fdu = add i16 %i.chf, -5
  %i.fdv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i960, align 8, !tbaa !20
  %.not.i.6.i988 = icmp eq i16 %i.fdv, 0
  br i1 %.not.i.6.i988, label %bb.qa, label %.lr.ph47.i.i981

bb.qa:                                            ; preds = %bb.pz
  %i.fdw = add i16 %i.chf, -6
  %i.fdx = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i961, align 2, !tbaa !20
  %.not.i.7.i989 = icmp eq i16 %i.fdx, 0
  br i1 %.not.i.7.i989, label %bb.qb, label %.lr.ph47.i.i981

bb.qb:                                            ; preds = %bb.qa
  %i.fdy = add i16 %i.chf, -7
  %i.fdz = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i962, align 4, !tbaa !20
  %.not.i.8.i990 = icmp eq i16 %i.fdz, 0
  br i1 %.not.i.8.i990, label %bb.qc, label %.lr.ph47.i.i981

bb.qc:                                            ; preds = %bb.qb
  %i.fea = add i16 %i.chf, -8
  %i.feb = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i963, align 2, !tbaa !20
  %.not.i.9.i991 = icmp eq i16 %i.feb, 0
  br i1 %.not.i.9.i991, label %bb.qd, label %.lr.ph47.i.i981

bb.qd:                                            ; preds = %bb.qc
  %i.fec = add i16 %i.chf, -9
  %i.fed = load i16, ptr %i.c, align 16, !tbaa !20
  %.not.i.10.i992 = icmp eq i16 %i.fed, 0
  br i1 %.not.i.10.i992, label %bb.qe, label %.lr.ph47.i.i981

bb.qe:                                            ; preds = %bb.qd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit1002

.preheader.i.i976:                                ; preds = %bb.pu, %._crit_edge.i972
  %i.fee = phi i16 [ %i.fdk, %._crit_edge.i972 ], [ %i.fdl, %bb.pu ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i977 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i964, %._crit_edge.i972 ], [ %indvars.iv73.i.lcssa.sroa.gep.i954, %bb.pu ] ; 2 uses
  %.03341.i.lcssa.i978 = phi i16 [ %i.fdj, %._crit_edge.i972 ], [ %i.chf, %bb.pu ]
  %i.fef = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.i978, ptr %i.fef, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ed, align 2, !tbaa !24
  %i.feg = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.feh = getelementptr inbounds nuw i8, ptr %i.eb, i64 46
  store i16 %i.fee, ptr %i.feh, align 2, !tbaa !20
  %i.fei = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i977, i64 -4
  %i.fej = load i16, ptr %i.fei, align 2, !tbaa !20
  %i.fek = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i16 %i.fej, ptr %i.fek, align 2, !tbaa !20
  %i.fel = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i977, i64 -20
  %i.fem = load <8 x i16>, ptr %i.fel, align 2, !tbaa !20
  store <8 x i16> %i.fem, ptr %i.feg, align 2, !tbaa !20
  br label %addmag0.exit1002

.lr.ph47.i.i981:                                  ; preds = %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv
  %.03341.i.lcssa.ph.i982 = phi i16 [ %i.fec, %bb.qd ], [ %i.fea, %bb.qc ], [ %i.fdy, %bb.qb ], [ %i.fdw, %bb.qa ], [ %i.fdu, %bb.pz ], [ %i.fds, %bb.py ], [ %i.fdq, %bb.px ], [ %i.fdo, %bb.pw ], [ %i.fdm, %bb.pv ]
  %indvars.iv59.i.lcssa.ph.i983 = phi i64 [ 0, %bb.qd ], [ 2, %bb.qc ], [ 4, %bb.qb ], [ 6, %bb.qa ], [ 8, %bb.pz ], [ 10, %bb.py ], [ 12, %bb.px ], [ 14, %bb.pw ], [ 16, %bb.pv ] ; 3 uses
  %i.fen = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.ph.i982, ptr %i.fen, align 2, !tbaa !26
  store i16 %i.chc, ptr %i.ed, align 2, !tbaa !24
  %i.feo = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.fep = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i983
  %scevgep.i984 = getelementptr i8, ptr %i.ed, i64 %i.fep
  %i.feq = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i983, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i984, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %i.feq, i1 false), !tbaa !20
  %i.fer = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i983
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.feo, i8 0, i64 %i.fer, i1 false), !tbaa !20
  br label %addmag0.exit1002

addmag0.exit1002:                                 ; preds = %bb.qe, %.preheader.i.i976, %.lr.ph47.i.i981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %sub.exit37

bb.qf:                                            ; preds = %bb.pq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.fes = sext i16 %i.chg to i32                 ; 2 uses
  %i.fet = sext i16 %i.chf to i32                 ; 3 uses
  %i.feu = sub nsw i32 %i.fes, %i.fet
  %i.fev = icmp slt i32 %i.feu, 10
  br i1 %i.fev, label %.lr.ph.i944, label %.lr.ph40.i916

.lr.ph.i944:                                      ; preds = %bb.qf
  %i.few = sext i16 %i.chg to i64
  %i.fex = sub nsw i32 0, %i.fet
  %i.fey = sext i32 %i.fex to i64
  %i.fez = add nsw i64 %i.few, %i.fey             ; 2 uses
  %i.ffa = add nsw i32 %i.fet, 10
  %i.ffb = sub nsw i32 %i.ffa, %i.fes             ; 5 uses
  %wide.trip.count.i945 = zext i32 %i.ffb to i64  ; 2 uses
  %xtraiter1779 = and i64 %wide.trip.count.i945, 3 ; 3 uses
  %i.ffc = add nsw i32 %i.ffb, -1
  %i.ffd = icmp ult i32 %i.ffc, 3
  br i1 %i.ffd, label %.epil.preheader1778, label %.lr.ph.i944.new

.lr.ph.i944.new:                                  ; preds = %.lr.ph.i944
  %unroll_iter1784 = and i64 %wide.trip.count.i945, 4294967292
  br label %bb.qh

.preheader.i952.unr-lcssa:                        ; preds = %bb.qh
  %lcmp.mod1781.not = icmp eq i64 %xtraiter1779, 0
  br i1 %lcmp.mod1781.not, label %.preheader.i952, label %.epil.preheader1778

.epil.preheader1778:                              ; preds = %.preheader.i952.unr-lcssa, %.lr.ph.i944
  %indvars.iv51.i946.epil.init = phi i64 [ 0, %.lr.ph.i944 ], [ %indvars.iv.next52.i949.3, %.preheader.i952.unr-lcssa ]
  %indvars.iv.i947.epil.init = phi i64 [ %i.fez, %.lr.ph.i944 ], [ %indvars.iv.next.i950.3, %.preheader.i952.unr-lcssa ]
  %.036.i948.epil.init = phi i64 [ 0, %.lr.ph.i944 ], [ %i.fhv, %.preheader.i952.unr-lcssa ]
  %lcmp.mod1783 = icmp ne i64 %xtraiter1779, 0
  tail call void @llvm.assume(i1 %lcmp.mod1783)
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qg, %.epil.preheader1778
  %indvars.iv51.i946.epil = phi i64 [ %indvars.iv51.i946.epil.init, %.epil.preheader1778 ], [ %indvars.iv.next52.i949.epil, %bb.qg ] ; 3 uses
  %indvars.iv.i947.epil = phi i64 [ %indvars.iv.i947.epil.init, %.epil.preheader1778 ], [ %indvars.iv.next.i950.epil, %bb.qg ] ; 2 uses
  %.036.i948.epil = phi i64 [ %.036.i948.epil.init, %.epil.preheader1778 ], [ %i.ffo, %bb.qg ]
  %epil.iter1780 = phi i64 [ 0, %.epil.preheader1778 ], [ %epil.iter1780.next, %bb.qg ]
  %i.ffe = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv51.i946.epil
  %i.fff = load i16, ptr %i.ffe, align 2, !tbaa !20
  %i.ffg = zext i16 %i.fff to i64
  %i.ffh = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i947.epil
  %i.ffi = load i16, ptr %i.ffh, align 2, !tbaa !20
  %i.ffj = zext i16 %i.ffi to i64
  %i.ffk = add nuw nsw i64 %.036.i948.epil, %i.ffg
  %i.ffl = add nuw nsw i64 %i.ffk, %i.ffj         ; 2 uses
  %i.ffm = trunc i64 %i.ffl to i16
  %i.ffn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv51.i946.epil
  store i16 %i.ffm, ptr %i.ffn, align 2, !tbaa !20
  %i.ffo = lshr i64 %i.ffl, 16                    ; 2 uses
  %indvars.iv.next52.i949.epil = add nuw nsw i64 %indvars.iv51.i946.epil, 1
  %indvars.iv.next.i950.epil = add nsw i64 %indvars.iv.i947.epil, 1
  %epil.iter1780.next = add i64 %epil.iter1780, 1 ; 2 uses
  %epil.iter1780.cmp.not = icmp eq i64 %epil.iter1780.next, %xtraiter1779
  br i1 %epil.iter1780.cmp.not, label %.preheader.i952, label %bb.qg, !llvm.loop !100

.preheader.i952:                                  ; preds = %bb.qg, %.preheader.i952.unr-lcssa
  %.lcssa1519 = phi i64 [ %i.fhv, %.preheader.i952.unr-lcssa ], [ %i.ffo, %bb.qg ] ; 2 uses
  %i.ffp = icmp samesign ult i32 %i.ffb, 10
  br i1 %i.ffp, label %.lr.ph40.i916, label %._crit_edge.i923

.lr.ph40.i916:                                    ; preds = %bb.qf, %.preheader.i952
  %.0.lcssa94.i917 = phi i64 [ %.lcssa1519, %.preheader.i952 ], [ 0, %bb.qf ] ; 2 uses
  %.027.lcssa93.i918 = phi i32 [ %i.ffb, %.preheader.i952 ], [ 0, %bb.qf ] ; 2 uses
  %i.ffq = zext nneg i32 %.027.lcssa93.i918 to i64 ; 3 uses
  %i.ffr = sub nsw i64 2, %i.ffq
  %xtraiter1788 = and i64 %i.ffr, 7               ; 2 uses
  %lcmp.mod1789.not = icmp eq i64 %xtraiter1788, 0
  br i1 %lcmp.mod1789.not, label %.prol.loopexit1787, label %.prol.preheader1786

.prol.preheader1786:                              ; preds = %.lr.ph40.i916, %.prol.preheader1786
  %indvars.iv56.i919.prol = phi i64 [ %indvars.iv.next57.i921.prol, %.prol.preheader1786 ], [ %i.ffq, %.lr.ph40.i916 ] ; 3 uses
  %.139.i920.prol = phi i64 [ %i.ffy, %.prol.preheader1786 ], [ %.0.lcssa94.i917, %.lr.ph40.i916 ]
  %prol.iter1790 = phi i64 [ %prol.iter1790.next, %.prol.preheader1786 ], [ 0, %.lr.ph40.i916 ]
  %i.ffs = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv56.i919.prol
  %i.fft = load i16, ptr %i.ffs, align 2, !tbaa !20
  %i.ffu = zext i16 %i.fft to i64
  %i.ffv = add nuw nsw i64 %.139.i920.prol, %i.ffu ; 2 uses
  %i.ffw = trunc i64 %i.ffv to i16
  %i.ffx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv56.i919.prol
  store i16 %i.ffw, ptr %i.ffx, align 2, !tbaa !20
  %i.ffy = lshr i64 %i.ffv, 16                    ; 3 uses
  %indvars.iv.next57.i921.prol = add nuw nsw i64 %indvars.iv56.i919.prol, 1 ; 2 uses
  %prol.iter1790.next = add i64 %prol.iter1790, 1 ; 2 uses
  %prol.iter1790.cmp.not = icmp eq i64 %prol.iter1790.next, %xtraiter1788
  br i1 %prol.iter1790.cmp.not, label %.prol.loopexit1787, label %.prol.preheader1786, !llvm.loop !101

.prol.loopexit1787:                               ; preds = %.prol.preheader1786, %.lr.ph40.i916
  %.lcssa1520.unr = phi i64 [ poison, %.lr.ph40.i916 ], [ %i.ffy, %.prol.preheader1786 ]
  %indvars.iv56.i919.unr = phi i64 [ %i.ffq, %.lr.ph40.i916 ], [ %indvars.iv.next57.i921.prol, %.prol.preheader1786 ]
  %.139.i920.unr = phi i64 [ %.0.lcssa94.i917, %.lr.ph40.i916 ], [ %i.ffy, %.prol.preheader1786 ]
  %i.ffz = add nsw i32 %.027.lcssa93.i918, -3
  %i.fga = icmp ult i32 %i.ffz, 7
  br i1 %i.fga, label %._crit_edge.i923, label %.lr.ph40.i916.new

bb.qh:                                            ; preds = %bb.qh, %.lr.ph.i944.new
  %indvars.iv51.i946 = phi i64 [ 0, %.lr.ph.i944.new ], [ %indvars.iv.next52.i949.3, %bb.qh ] ; 6 uses
  %indvars.iv.i947 = phi i64 [ %i.fez, %.lr.ph.i944.new ], [ %indvars.iv.next.i950.3, %bb.qh ] ; 5 uses
  %.036.i948 = phi i64 [ 0, %.lr.ph.i944.new ], [ %i.fhv, %bb.qh ]
  %niter1785 = phi i64 [ 0, %.lr.ph.i944.new ], [ %niter1785.next.3, %bb.qh ]
  %i.fgb = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv51.i946
  %i.fgc = load i16, ptr %i.fgb, align 4, !tbaa !20
  %i.fgd = zext i16 %i.fgc to i64
  %i.fge = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %indvars.iv.i947
  %i.fgf = load i16, ptr %i.fge, align 2, !tbaa !20
  %i.fgg = zext i16 %i.fgf to i64
  %i.fgh = add nuw nsw i64 %.036.i948, %i.fgd
  %i.fgi = add nuw nsw i64 %i.fgh, %i.fgg         ; 2 uses
  %i.fgj = trunc i64 %i.fgi to i16
  %i.fgk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv51.i946
  store i16 %i.fgj, ptr %i.fgk, align 8, !tbaa !20
  %i.fgl = lshr i64 %i.fgi, 16
  %indvars.iv.next52.i949 = or disjoint i64 %indvars.iv51.i946, 1 ; 2 uses
  %i.fgm = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i949
  %i.fgn = load i16, ptr %i.fgm, align 2, !tbaa !20
  %i.fgo = zext i16 %i.fgn to i64
  %i.fgp = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i947
  %i.fgq = getelementptr i8, ptr %i.fgp, i64 2
  %i.fgr = load i16, ptr %i.fgq, align 2, !tbaa !20
  %i.fgs = zext i16 %i.fgr to i64
  %i.fgt = add nuw nsw i64 %i.fgl, %i.fgo
  %i.fgu = add nuw nsw i64 %i.fgt, %i.fgs         ; 2 uses
  %i.fgv = trunc i64 %i.fgu to i16
  %i.fgw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next52.i949
  store i16 %i.fgv, ptr %i.fgw, align 2, !tbaa !20
  %i.fgx = lshr i64 %i.fgu, 16
  %indvars.iv.next52.i949.1 = or disjoint i64 %indvars.iv51.i946, 2 ; 2 uses
  %i.fgy = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i949.1
  %i.fgz = load i16, ptr %i.fgy, align 8, !tbaa !20
  %i.fha = zext i16 %i.fgz to i64
  %i.fhb = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i947
  %i.fhc = getelementptr i8, ptr %i.fhb, i64 4
  %i.fhd = load i16, ptr %i.fhc, align 2, !tbaa !20
  %i.fhe = zext i16 %i.fhd to i64
  %i.fhf = add nuw nsw i64 %i.fgx, %i.fha
  %i.fhg = add nuw nsw i64 %i.fhf, %i.fhe         ; 2 uses
  %i.fhh = trunc i64 %i.fhg to i16
  %i.fhi = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next52.i949.1
  store i16 %i.fhh, ptr %i.fhi, align 4, !tbaa !20
  %i.fhj = lshr i64 %i.fhg, 16
  %indvars.iv.next52.i949.2 = or disjoint i64 %indvars.iv51.i946, 3 ; 2 uses
  %i.fhk = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next52.i949.2
  %i.fhl = load i16, ptr %i.fhk, align 2, !tbaa !20
  %i.fhm = zext i16 %i.fhl to i64
  %i.fhn = getelementptr [2 x i8], ptr %i.ct, i64 %indvars.iv.i947
  %i.fho = getelementptr i8, ptr %i.fhn, i64 6
  %i.fhp = load i16, ptr %i.fho, align 2, !tbaa !20
  %i.fhq = zext i16 %i.fhp to i64
  %i.fhr = add nuw nsw i64 %i.fhj, %i.fhm
  %i.fhs = add nuw nsw i64 %i.fhr, %i.fhq         ; 2 uses
  %i.fht = trunc i64 %i.fhs to i16
  %i.fhu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next52.i949.2
  store i16 %i.fht, ptr %i.fhu, align 2, !tbaa !20
  %i.fhv = lshr i64 %i.fhs, 16                    ; 3 uses
  %indvars.iv.next52.i949.3 = add nuw nsw i64 %indvars.iv51.i946, 4 ; 2 uses
  %indvars.iv.next.i950.3 = add nsw i64 %indvars.iv.i947, 4 ; 2 uses
  %niter1785.next.3 = add i64 %niter1785, 4       ; 2 uses
  %niter1785.ncmp.3 = icmp eq i64 %niter1785.next.3, %unroll_iter1784
  br i1 %niter1785.ncmp.3, label %.preheader.i952.unr-lcssa, label %bb.qh, !llvm.loop !5

.lr.ph40.i916.new:                                ; preds = %.prol.loopexit1787, %.lr.ph40.i916.new
  %indvars.iv56.i919 = phi i64 [ %indvars.iv.next57.i921.7, %.lr.ph40.i916.new ], [ %indvars.iv56.i919.unr, %.prol.loopexit1787 ] ; 10 uses
  %.139.i920 = phi i64 [ %i.fjz, %.lr.ph40.i916.new ], [ %.139.i920.unr, %.prol.loopexit1787 ]
  %i.fhw = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv56.i919
  %i.fhx = load i16, ptr %i.fhw, align 2, !tbaa !20
  %i.fhy = zext i16 %i.fhx to i64
  %i.fhz = add nuw nsw i64 %.139.i920, %i.fhy     ; 2 uses
  %i.fia = trunc i64 %i.fhz to i16
  %i.fib = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv56.i919
  store i16 %i.fia, ptr %i.fib, align 2, !tbaa !20
  %i.fic = lshr i64 %i.fhz, 16
  %indvars.iv.next57.i921 = add nuw nsw i64 %indvars.iv56.i919, 1 ; 2 uses
  %i.fid = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921
  %i.fie = load i16, ptr %i.fid, align 2, !tbaa !20
  %i.fif = zext i16 %i.fie to i64
  %i.fig = add nuw nsw i64 %i.fic, %i.fif         ; 2 uses
  %i.fih = trunc i64 %i.fig to i16
  %i.fii = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921
  store i16 %i.fih, ptr %i.fii, align 2, !tbaa !20
  %i.fij = lshr i64 %i.fig, 16
  %indvars.iv.next57.i921.1 = add nuw nsw i64 %indvars.iv56.i919, 2 ; 2 uses
  %i.fik = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.1
  %i.fil = load i16, ptr %i.fik, align 2, !tbaa !20
  %i.fim = zext i16 %i.fil to i64
  %i.fin = add nuw nsw i64 %i.fij, %i.fim         ; 2 uses
  %i.fio = trunc i64 %i.fin to i16
  %i.fip = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.1
  store i16 %i.fio, ptr %i.fip, align 2, !tbaa !20
  %i.fiq = lshr i64 %i.fin, 16
  %indvars.iv.next57.i921.2 = add nuw nsw i64 %indvars.iv56.i919, 3 ; 2 uses
  %i.fir = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.2
  %i.fis = load i16, ptr %i.fir, align 2, !tbaa !20
  %i.fit = zext i16 %i.fis to i64
  %i.fiu = add nuw nsw i64 %i.fiq, %i.fit         ; 2 uses
  %i.fiv = trunc i64 %i.fiu to i16
  %i.fiw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.2
  store i16 %i.fiv, ptr %i.fiw, align 2, !tbaa !20
  %i.fix = lshr i64 %i.fiu, 16
  %indvars.iv.next57.i921.3 = add nuw nsw i64 %indvars.iv56.i919, 4 ; 2 uses
  %i.fiy = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.3
  %i.fiz = load i16, ptr %i.fiy, align 2, !tbaa !20
  %i.fja = zext i16 %i.fiz to i64
  %i.fjb = add nuw nsw i64 %i.fix, %i.fja         ; 2 uses
  %i.fjc = trunc i64 %i.fjb to i16
  %i.fjd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.3
  store i16 %i.fjc, ptr %i.fjd, align 2, !tbaa !20
  %i.fje = lshr i64 %i.fjb, 16
  %indvars.iv.next57.i921.4 = add nuw nsw i64 %indvars.iv56.i919, 5 ; 2 uses
  %i.fjf = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.4
  %i.fjg = load i16, ptr %i.fjf, align 2, !tbaa !20
  %i.fjh = zext i16 %i.fjg to i64
  %i.fji = add nuw nsw i64 %i.fje, %i.fjh         ; 2 uses
  %i.fjj = trunc i64 %i.fji to i16
  %i.fjk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.4
  store i16 %i.fjj, ptr %i.fjk, align 2, !tbaa !20
  %i.fjl = lshr i64 %i.fji, 16
  %indvars.iv.next57.i921.5 = add nuw nsw i64 %indvars.iv56.i919, 6 ; 2 uses
  %i.fjm = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.5
  %i.fjn = load i16, ptr %i.fjm, align 2, !tbaa !20
  %i.fjo = zext i16 %i.fjn to i64
  %i.fjp = add nuw nsw i64 %i.fjl, %i.fjo         ; 2 uses
  %i.fjq = trunc i64 %i.fjp to i16
  %i.fjr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.5
  store i16 %i.fjq, ptr %i.fjr, align 2, !tbaa !20
  %i.fjs = lshr i64 %i.fjp, 16
  %indvars.iv.next57.i921.6 = add nuw nsw i64 %indvars.iv56.i919, 7 ; 2 uses
  %i.fjt = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv.next57.i921.6
  %i.fju = load i16, ptr %i.fjt, align 2, !tbaa !20
  %i.fjv = zext i16 %i.fju to i64
  %i.fjw = add nuw nsw i64 %i.fjs, %i.fjv         ; 2 uses
  %i.fjx = trunc i64 %i.fjw to i16
  %i.fjy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next57.i921.6
  store i16 %i.fjx, ptr %i.fjy, align 2, !tbaa !20
  %i.fjz = lshr i64 %i.fjw, 16                    ; 2 uses
  %indvars.iv.next57.i921.7 = add nuw nsw i64 %indvars.iv56.i919, 8 ; 2 uses
  %exitcond59.not.i922.7 = icmp eq i64 %indvars.iv.next57.i921.7, 10
  br i1 %exitcond59.not.i922.7, label %._crit_edge.i923, label %.lr.ph40.i916.new, !llvm.loop !6

._crit_edge.i923:                                 ; preds = %.prol.loopexit1787, %.lr.ph40.i916.new, %.preheader.i952
  %.128.lcssa.i924 = phi i32 [ %i.ffb, %.preheader.i952 ], [ 10, %.lr.ph40.i916.new ], [ 10, %.prol.loopexit1787 ]
  %.1.lcssa.i925 = phi i64 [ %.lcssa1519, %.preheader.i952 ], [ %.lcssa1520.unr, %.prol.loopexit1787 ], [ %i.fjz, %.lr.ph40.i916.new ]
  %i.fka = trunc nuw nsw i64 %.1.lcssa.i925 to i16
  %i.fkb = zext nneg i32 %.128.lcssa.i924 to i64
  %i.fkc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fkb
  store i16 %i.fka, ptr %i.fkc, align 2, !tbaa !20
  %i.fkd = add i16 %i.chg, 1
  %i.fke = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep.i905, align 4, !tbaa !20 ; 2 uses
  %.not.i.i926 = icmp eq i16 %i.fke, 0
  br i1 %.not.i.i926, label %bb.qi, label %.preheader.i.i927

bb.qi:                                            ; preds = %._crit_edge.i923
  %i.fkf = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep60.i906, align 2, !tbaa !20 ; 2 uses
  %.not.i.1.i930 = icmp eq i16 %i.fkf, 0
  br i1 %.not.i.1.i930, label %bb.qj, label %.preheader.i.i927

bb.qj:                                            ; preds = %bb.qi
  %i.fkg = add i16 %i.chg, -1
  %i.fkh = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep61.i907, align 16, !tbaa !20
  %.not.i.2.i931 = icmp eq i16 %i.fkh, 0
  br i1 %.not.i.2.i931, label %bb.qk, label %.lr.ph47.i.i932

bb.qk:                                            ; preds = %bb.qj
  %i.fki = add i16 %i.chg, -2
  %i.fkj = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep62.i908, align 2, !tbaa !20
  %.not.i.3.i936 = icmp eq i16 %i.fkj, 0
  br i1 %.not.i.3.i936, label %bb.ql, label %.lr.ph47.i.i932

bb.ql:                                            ; preds = %bb.qk
  %i.fkk = add i16 %i.chg, -3
  %i.fkl = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep63.i909, align 4, !tbaa !20
  %.not.i.4.i937 = icmp eq i16 %i.fkl, 0
  br i1 %.not.i.4.i937, label %bb.qm, label %.lr.ph47.i.i932

bb.qm:                                            ; preds = %bb.ql
  %i.fkm = add i16 %i.chg, -4
  %i.fkn = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep64.i910, align 2, !tbaa !20
  %.not.i.5.i938 = icmp eq i16 %i.fkn, 0
  br i1 %.not.i.5.i938, label %bb.qn, label %.lr.ph47.i.i932

bb.qn:                                            ; preds = %bb.qm
  %i.fko = add i16 %i.chg, -5
  %i.fkp = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep65.i911, align 8, !tbaa !20
  %.not.i.6.i939 = icmp eq i16 %i.fkp, 0
  br i1 %.not.i.6.i939, label %bb.qo, label %.lr.ph47.i.i932

bb.qo:                                            ; preds = %bb.qn
  %i.fkq = add i16 %i.chg, -6
  %i.fkr = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep66.i912, align 2, !tbaa !20
  %.not.i.7.i940 = icmp eq i16 %i.fkr, 0
  br i1 %.not.i.7.i940, label %bb.qp, label %.lr.ph47.i.i932

bb.qp:                                            ; preds = %bb.qo
  %i.fks = add i16 %i.chg, -7
  %i.fkt = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep67.i913, align 4, !tbaa !20
  %.not.i.8.i941 = icmp eq i16 %i.fkt, 0
  br i1 %.not.i.8.i941, label %bb.qq, label %.lr.ph47.i.i932

bb.qq:                                            ; preds = %bb.qp
  %i.fku = add i16 %i.chg, -8
  %i.fkv = load i16, ptr %indvars.iv73.i.lcssa.sroa.gep68.i914, align 2, !tbaa !20
  %.not.i.9.i942 = icmp eq i16 %i.fkv, 0
  br i1 %.not.i.9.i942, label %bb.qr, label %.lr.ph47.i.i932

bb.qr:                                            ; preds = %bb.qq
  %i.fkw = add i16 %i.chg, -9
  %i.fkx = load i16, ptr %i.d, align 16, !tbaa !20
  %.not.i.10.i943 = icmp eq i16 %i.fkx, 0
  br i1 %.not.i.10.i943, label %bb.qs, label %.lr.ph47.i.i932

bb.qs:                                            ; preds = %bb.qr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  br label %addmag0.exit953

.preheader.i.i927:                                ; preds = %bb.qi, %._crit_edge.i923
  %i.fky = phi i16 [ %i.fke, %._crit_edge.i923 ], [ %i.fkf, %bb.qi ]
  %indvars.iv73.in.i.lcssa.sroa.phi.i928 = phi ptr [ %indvars.iv73.in.i.lcssa.sroa.gep.i915, %._crit_edge.i923 ], [ %indvars.iv73.i.lcssa.sroa.gep.i905, %bb.qi ] ; 2 uses
  %.03341.i.lcssa.i929 = phi i16 [ %i.fkd, %._crit_edge.i923 ], [ %i.chg, %bb.qi ]
  %i.fkz = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.i929, ptr %i.fkz, align 2, !tbaa !26
  %i.fla = sub i16 0, %i.chd
  store i16 %i.fla, ptr %i.ed, align 2, !tbaa !24
  %i.flb = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.flc = getelementptr inbounds nuw i8, ptr %i.eb, i64 46
  store i16 %i.fky, ptr %i.flc, align 2, !tbaa !20
  %i.fld = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i928, i64 -4
  %i.fle = load i16, ptr %i.fld, align 2, !tbaa !20
  %i.flf = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i16 %i.fle, ptr %i.flf, align 2, !tbaa !20
  %i.flg = getelementptr i8, ptr %indvars.iv73.in.i.lcssa.sroa.phi.i928, i64 -20
  %i.flh = load <8 x i16>, ptr %i.flg, align 2, !tbaa !20
  store <8 x i16> %i.flh, ptr %i.flb, align 2, !tbaa !20
  br label %addmag0.exit953

.lr.ph47.i.i932:                                  ; preds = %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj
  %.03341.i.lcssa.ph.i933 = phi i16 [ %i.fkw, %bb.qr ], [ %i.fku, %bb.qq ], [ %i.fks, %bb.qp ], [ %i.fkq, %bb.qo ], [ %i.fko, %bb.qn ], [ %i.fkm, %bb.qm ], [ %i.fkk, %bb.ql ], [ %i.fki, %bb.qk ], [ %i.fkg, %bb.qj ]
  %indvars.iv59.i.lcssa.ph.i934 = phi i64 [ 0, %bb.qr ], [ 2, %bb.qq ], [ 4, %bb.qp ], [ 6, %bb.qo ], [ 8, %bb.qn ], [ 10, %bb.qm ], [ 12, %bb.ql ], [ 14, %bb.qk ], [ 16, %bb.qj ] ; 3 uses
  %i.fli = getelementptr inbounds nuw i8, ptr %i.eb, i64 26
  store i16 %.03341.i.lcssa.ph.i933, ptr %i.fli, align 2, !tbaa !26
  %i.flj = sub i16 0, %i.chd
  store i16 %i.flj, ptr %i.ed, align 2, !tbaa !24
  %i.flk = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.fll = sub nuw nsw i64 22, %indvars.iv59.i.lcssa.ph.i934
  %scevgep.i935 = getelementptr i8, ptr %i.ed, i64 %i.fll
  %i.flm = add nuw nsw i64 %indvars.iv59.i.lcssa.ph.i934, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i935, ptr noundef nonnull align 16 dereferenceable(1) %i.d, i64 %i.flm, i1 false), !tbaa !20
  %i.fln = sub nuw nsw i64 18, %indvars.iv59.i.lcssa.ph.i934
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.flk, i8 0, i64 %i.fln, i1 false), !tbaa !20
  br label %addmag0.exit953

addmag0.exit953:                                  ; preds = %bb.qs, %.preheader.i.i927, %.lr.ph47.i.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %sub.exit37

sub.exit37:                                       ; preds = %submag0.exit1086, %submag0.exit1044, %addmag0.exit1002, %addmag0.exit953
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next1209 = add nuw nsw i64 %indvars.iv1208, %i.dh ; 2 uses
  %i.flo = trunc nuw i64 %indvars.iv.next1209 to i32
  %i.flp = icmp sgt i32 %0, %i.flo
  br i1 %i.flp, label %.lr.ph, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %sub.exit37, %mcexp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dg
  br i1 %exitcond.not, label %bb.qt, label %bb.e, !llvm.loop !103

bb.qt:                                            ; preds = %._crit_edge
  %i.flq = icmp slt i32 %i.dd, %0
  br i1 %i.flq, label %.preheader, label %._crit_edge1159, !llvm.loop !104

._crit_edge1159:                                  ; preds = %bb.qt, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bluestein(i32 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.anon], align 16        ; 8 uses
  %i.a = shl nsw i32 %0, 1                        ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]   ; 10 uses
  %i.b = icmp slt i32 %.0.i, %i.a
  %i.c = shl nsw i32 %.0.i, 1                     ; 6 uses
  br i1 %i.b, label %bb.b, label %pow2_atleast.exit, !llvm.loop !105

pow2_atleast.exit:                                ; preds = %bb.b
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %i.d, 24                     ; 2 uses
  %i.f = tail call ptr @bench_malloc(i64 noundef %i.e) #12 ; 18 uses
  %i.g = load ptr, ptr @cached_bluestein_w, align 8, !tbaa !30 ; 3 uses
  %i.h = load ptr, ptr @cached_bluestein_y, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.i = sitofp i32 %.0.i to double
  %i.j = fdiv double 1.000000e+00, %i.i           ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %fromreal.exit, label %bb.c

bb.c:                                             ; preds = %pow2_atleast.exit
  %i.l = fcmp ult double %i.j, 0.000000e+00       ; 2 uses
  %i.m = fneg double %i.j
  %.sink.i = select i1 %i.l, i16 -1, i16 1
  %.0.i117 = select i1 %i.l, double %i.m, double %i.j ; 3 uses
  store i16 %.sink.i, ptr %2, align 16, !tbaa !24
  %i.n = fcmp ult double %.0.i117, 1.000000e+00
  br i1 %i.n, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.c
  %.023.lcssa.i = phi i16 [ 0, %bb.c ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi double [ %.0.i117, %bb.c ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %i.o = fcmp olt double %.1.lcssa.i, f0x3EF0000000000000
  br i1 %i.o, label %.lr.ph32.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.128.i = phi double [ %i.p, %.lr.ph.i ], [ %.0.i117, %bb.c ]
  %.02327.i = phi i16 [ %i.q, %.lr.ph.i ], [ 0, %bb.c ]
  %i.p = fmul nnan double %.128.i, f0x3EF0000000000000 ; 3 uses
  %i.q = add i16 %.02327.i, 1                     ; 2 uses
  %i.r = fcmp ult double %i.p, 1.000000e+00
  br i1 %i.r, label %.preheader.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph32.i:                                       ; preds = %.preheader.i, %.lr.ph32.i
  %.231.i = phi double [ %i.s, %.lr.ph32.i ], [ %.1.lcssa.i, %.preheader.i ]
  %.12430.i = phi i16 [ %i.t, %.lr.ph32.i ], [ %.023.lcssa.i, %.preheader.i ]
  %i.s = fmul nnan double %.231.i, 6.553600e+04   ; 3 uses
  %i.t = add i16 %.12430.i, -1                    ; 2 uses
  %i.u = fcmp olt double %i.s, f0x3EF0000000000000
  br i1 %i.u, label %.lr.ph32.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph32.i, %.preheader.i
  %.124.lcssa.i = phi i16 [ %.023.lcssa.i, %.preheader.i ], [ %i.t, %.lr.ph32.i ]
  %.2.lcssa.i = phi double [ %.1.lcssa.i, %.preheader.i ], [ %i.s, %.lr.ph32.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %.124.lcssa.i, ptr %i.v, align 2, !tbaa !26
  %i.w = fcmp une double %.2.lcssa.i, 0.000000e+00
  br i1 %i.w, label %.lr.ph38.i, label %fromreal.exit

.lr.ph38.i:                                       ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph38.i
  %indvars.iv.i = phi i64 [ 9, %.lr.ph38.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.336.i = phi double [ %.2.lcssa.i, %.lr.ph38.i ], [ %i.ad, %bb.d ]
  %i.y = fmul double %.336.i, 6.553600e+04        ; 2 uses
  %i.z = fptosi double %i.y to i32                ; 2 uses
  %i.aa = sitofp i32 %i.z to double
  %i.ab = trunc i32 %i.z to i16
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !20
  %i.ad = fsub double %i.y, %i.aa                 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ae = icmp ne i64 %indvars.iv.i, 0
  %i.af = fcmp une double %i.ad, 0.000000e+00
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.d, label %fromreal.exit, !llvm.loop !2

fromreal.exit:                                    ; preds = %bb.d, %pow2_atleast.exit, %._crit_edge.i
  %i.ah = load i32, ptr @cached_bluestein_n, align 4, !tbaa !31
  %.not = icmp eq i32 %i.ah, %0
  br i1 %.not, label %bb.s, label %bb.e

bb.e:                                             ; preds = %fromreal.exit
  %.not115 = icmp eq ptr %i.g, null
  br i1 %.not115, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @bench_free(ptr noundef nonnull %i.g) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not116 = icmp eq ptr %i.h, null
  br i1 %.not116, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @bench_free(ptr noundef nonnull %i.h) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = sext i32 %i.a to i64
  %i.aj = mul nsw i64 %i.ai, 24
  %i.ak = tail call ptr @bench_malloc(i64 noundef %i.aj) #12 ; 14 uses
  %i.al = tail call ptr @bench_malloc(i64 noundef %i.e) #12 ; 23 uses
  store i32 %0, ptr @cached_bluestein_n, align 4, !tbaa !31
  store ptr %i.ak, ptr @cached_bluestein_w, align 8, !tbaa !30
  store ptr %i.al, ptr @cached_bluestein_y, align 8, !tbaa !30
  %i.am = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.am, label %.lr.ph.i119, label %bluestein_sequence.exit

.lr.ph.i119:                                      ; preds = %bb.i
  %mcexp.cached_n.promoted.i = load i32, ptr @mcexp.cached_n, align 4
  %i.an = uitofp nneg i32 %i.a to double          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %i.ao = icmp eq i32 %i.a, %mcexp.cached_n.promoted.i
  br label %bb.j

bb.j:                                             ; preds = %mcexp.exit.i, %.lr.ph.i119
  %indvars.iv.i120 = phi i64 [ 0, %.lr.ph.i119 ], [ %indvars.iv.next.i121, %mcexp.exit.i ] ; 2 uses
  %.020.i = phi i32 [ 1, %.lr.ph.i119 ], [ %.1.i, %mcexp.exit.i ]
  %.not.i.i = phi i1 [ %i.ao, %.lr.ph.i119 ], [ true, %mcexp.exit.i ]
  %i.ap = shl nuw nsw i64 %indvars.iv.i120, 1     ; 2 uses
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = add i32 %.020.i, -1
  %i.as = add i32 %i.ar, %i.aq
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %i.as, %bb.j ], [ %i.au, %bb.k ] ; 7 uses
  %i.at = icmp sgt i32 %.1.i, %i.a
  %i.au = sub nuw nsw i32 %.1.i, %i.a
  br i1 %i.at, label %bb.k, label %bb.l, !llvm.loop !106

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ap ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 6 uses
  br i1 %.not.i.i, label %bb.m, label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %bb.l, %.preheader47.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader47.i.i ], [ 0, %bb.l ] ; 2 uses
  %.049.i.i = phi i32 [ %i.ba, %.preheader47.i.i ], [ 1, %bb.l ] ; 2 uses
  %i.ax = sitofp i32 %.049.i.i to double          ; 2 uses
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr @mcexp.w, i64 %indvars.iv.i.i ; 2 uses
  tail call fastcc void @cos2pi(double noundef %i.ax, double noundef %i.an, ptr noundef nonnull %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  tail call fastcc void @sin2pi(double noundef %i.ax, double noundef %i.an, ptr noundef nonnull %i.az)
  %i.ba = shl nsw i32 %.049.i.i, 1                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.bb = icmp slt i32 %i.ba, %i.a
  br i1 %i.bb, label %.preheader47.i.i, label %._crit_edge.i.loopexit.i, !llvm.loop !7

._crit_edge.i.loopexit.i:                         ; preds = %.preheader47.i.i
  store i32 %i.a, ptr @mcexp.cached_n, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.loopexit.i, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.av, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 22, i1 false), !tbaa.struct !22
  store i16 1, ptr %i.av, align 2, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 1, ptr %i.bc, align 2, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 22
  store i16 1, ptr %i.bd, align 2, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.aw, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 22, i1 false), !tbaa.struct !22
  store i16 1, ptr %i.aw, align 2, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  store i16 1, ptr %i.be, align 2, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 46
  store i16 0, ptr %i.bf, align 2, !tbaa !20
  %i.bg = icmp sgt i32 %.1.i, 0
  br i1 %i.bg, label %.preheader.i.i, label %bb.p

.preheader.i.i:                                   ; preds = %bb.m, %bb.o
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i, %bb.o ], [ 0, %bb.m ] ; 2 uses
  %.03755.i.i = phi i32 [ %i.bk, %bb.o ], [ %.1.i, %bb.m ] ; 2 uses
  %i.bh = and i32 %.03755.i.i, 1
  %.not45.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not45.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader.i.i
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr @mcexp.w, i64 %indvars.iv62.i.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  tail call fastcc void @cmul(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader.i.i
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1
  %i.bk = lshr i32 %.03755.i.i, 1                 ; 2 uses
  %.not44.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not44.i.i, label %mcexp.exit.i, label %.preheader.i.i, !llvm.loop !8

bb.p:                                             ; preds = %bb.m
  %.not4250.i.i = icmp eq i32 %.1.i, 0
  br i1 %.not4250.i.i, label %mcexp.exit.i, label %.lr.ph54.preheader.i.i

.lr.ph54.preheader.i.i:                           ; preds = %bb.p
  %i.bl = sub nsw i32 0, %.1.i
  br label %.lr.ph54.i.i

.lr.ph54.i.i:                                     ; preds = %bb.r, %.lr.ph54.preheader.i.i
  %indvars.iv59.i.i = phi i64 [ 0, %.lr.ph54.preheader.i.i ], [ %indvars.iv.next60.i.i, %bb.r ] ; 2 uses
  %.13851.i.i = phi i32 [ %i.bl, %.lr.ph54.preheader.i.i ], [ %i.bp, %bb.r ] ; 2 uses
  %i.bm = and i32 %.13851.i.i, 1
  %.not43.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not43.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph54.i.i
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr @mcexp.w, i64 %indvars.iv59.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  tail call fastcc void @cmulj(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph54.i.i
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1
  %i.bp = lshr i32 %.13851.i.i, 1                 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not42.i.i, label %mcexp.exit.i, label %.lr.ph54.i.i, !llvm.loop !9

mcexp.exit.i:                                     ; preds = %bb.r, %bb.o, %bb.p
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bluestein_sequence.exit, label %bb.j, !llvm.loop !107

bluestein_sequence.exit:                          ; preds = %mcexp.exit.i, %bb.i
  %i.bq = icmp sgt i32 %.0.i, 0
  br i1 %i.bq, label %.lr.ph.preheader, label %.preheader123

.lr.ph.preheader:                                 ; preds = %bluestein_sequence.exit
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 6         ; 3 uses
  %i.br = icmp ult i32 %i.c, 8
  br i1 %i.br, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.preheader123.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader123, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader123.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.preheader123.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bs, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader123, label %.lr.ph.epil, !llvm.loop !108

.preheader123:                                    ; preds = %.preheader123.loopexit.unr-lcssa, %.lr.ph.epil, %bluestein_sequence.exit
  br i1 %i.am, label %.lr.ph131.preheader, label %._crit_edge

.lr.ph131.preheader:                              ; preds = %.preheader123
  %wide.trip.count157 = zext nneg i32 %0 to i64   ; 3 uses
  %i.bt = add nsw i64 %wide.trip.count157, -1     ; 3 uses
  %xtraiter212 = and i64 %wide.trip.count157, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph131.epil.preheader, label %.lr.ph131.preheader.new

.lr.ph131.preheader.new:                          ; preds = %.lr.ph131.preheader
  %unroll_iter216 = and i64 %wide.trip.count157, 2147483646
  br label %.lr.ph131

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bv, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bx, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bz, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cd, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cf, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ch, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cj, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader123.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !109

.preheader122.unr-lcssa:                          ; preds = %.lr.ph131
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod214.not, label %.preheader122, label %.lr.ph131.epil.preheader

.lr.ph131.epil.preheader:                         ; preds = %.preheader122.unr-lcssa, %.lr.ph131.preheader
  %indvars.iv154.epil.init = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next155.1, %.preheader122.unr-lcssa ]
  %lcmp.mod215 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.ck = shl nuw nsw i64 %indvars.iv154.epil.init, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cm, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.cl, i64 24, i1 false), !tbaa.struct !22
  %i.cn = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cp, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.co, i64 24, i1 false), !tbaa.struct !22
  br label %.preheader122

.preheader122:                                    ; preds = %.preheader122.unr-lcssa, %.lr.ph131.epil.preheader
  %.not200 = icmp eq i32 %0, 1
  br i1 %.not200, label %._crit_edge, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.preheader122
  %i.cq = sext i32 %.0.i to i64                   ; 5 uses
  %xtraiter218 = and i64 %i.bt, 3                 ; 3 uses
  %i.cr = add nsw i32 %0, -2
  %i.cs = icmp ult i32 %i.cr, 3
  br i1 %i.cs, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter222 = and i64 %i.bt, -4
  br label %.lr.ph133

.lr.ph131:                                        ; preds = %.lr.ph131, %.lr.ph131.preheader.new
  %indvars.iv154 = phi i64 [ 0, %.lr.ph131.preheader.new ], [ %indvars.iv.next155.1, %.lr.ph131 ] ; 3 uses
  %niter217 = phi i64 [ 0, %.lr.ph131.preheader.new ], [ %niter217.next.1, %.lr.ph131 ]
  %i.ct = shl nuw nsw i64 %indvars.iv154, 1       ; 3 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cv, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.cu, i64 24, i1 false), !tbaa.struct !22
  %i.cw = or disjoint i64 %i.ct, 1                ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cy, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next155 = shl nuw i64 %indvars.iv154, 1 ; 2 uses
  %i.cz = or disjoint i64 %indvars.iv.next155, 2  ; 2 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.cz
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.db, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.da, i64 24, i1 false), !tbaa.struct !22
  %i.dc = or disjoint i64 %indvars.iv.next155, 3  ; 2 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.dc
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.de, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dd, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %niter217.next.1 = add nuw i64 %niter217, 2     ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %.preheader122.unr-lcssa, label %.lr.ph131, !llvm.loop !110

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %indvars.iv159 = phi i64 [ 1, %.lr.ph133.preheader.new ], [ %indvars.iv.next160.3, %.lr.ph133 ] ; 6 uses
  %niter223 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter223.next.3, %.lr.ph133 ]
  %.idx = mul nuw nsw i64 %indvars.iv159, 48
  %i.df = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.dg = sub nsw i64 %i.cq, %indvars.iv159
  %.idx194 = mul nuw nsw i64 %i.dg, 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dh, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.df, i64 24, i1 false), !tbaa.struct !22
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dj = getelementptr i8, ptr %i.dh, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dj, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.di, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next160, 48
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.1 ; 2 uses
  %i.dl = sub nsw i64 %i.cq, %indvars.iv.next160
  %.idx194.1 = mul nuw nsw i64 %i.dl, 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194.1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dm, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dk, i64 24, i1 false), !tbaa.struct !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.do = getelementptr i8, ptr %i.dm, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.do, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dn, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160.1 = add nuw nsw i64 %indvars.iv159, 2 ; 2 uses
  %.idx.2 = mul nuw nsw i64 %indvars.iv.next160.1, 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.2 ; 2 uses
  %i.dq = sub nsw i64 %i.cq, %indvars.iv.next160.1
  %.idx194.2 = mul nuw nsw i64 %i.dq, 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194.2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dr, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dp, i64 24, i1 false), !tbaa.struct !22
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dt = getelementptr i8, ptr %i.dr, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dt, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.ds, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160.2 = add nuw nsw i64 %indvars.iv159, 3 ; 2 uses
  %.idx.3 = mul nuw nsw i64 %indvars.iv.next160.2, 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.3 ; 2 uses
  %i.dv = sub nsw i64 %i.cq, %indvars.iv.next160.2
  %.idx194.3 = mul nuw nsw i64 %i.dv, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194.3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dw, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.du, i64 24, i1 false), !tbaa.struct !22
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dy = getelementptr i8, ptr %i.dw, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dy, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dx, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160.3 = add nuw nsw i64 %indvars.iv159, 4 ; 2 uses
  %niter223.next.3 = add i64 %niter223, 4         ; 2 uses
  %niter223.ncmp.3 = icmp eq i64 %niter223.next.3, %unroll_iter222
  br i1 %niter223.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !111

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph133
  %lcmp.mod220.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod220.not, label %._crit_edge, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph133.preheader
  %indvars.iv159.epil.init = phi i64 [ 1, %.lr.ph133.preheader ], [ %indvars.iv.next160.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter218, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %.lr.ph133.epil

.lr.ph133.epil:                                   ; preds = %.lr.ph133.epil, %.lr.ph133.epil.preheader
  %indvars.iv159.epil = phi i64 [ %indvars.iv159.epil.init, %.lr.ph133.epil.preheader ], [ %indvars.iv.next160.epil, %.lr.ph133.epil ] ; 3 uses
  %epil.iter219 = phi i64 [ 0, %.lr.ph133.epil.preheader ], [ %epil.iter219.next, %.lr.ph133.epil ]
  %.idx.epil = mul nuw nsw i64 %indvars.iv159.epil, 48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.epil ; 2 uses
  %i.ea = sub nsw i64 %i.cq, %indvars.iv159.epil
  %.idx194.epil = mul nuw nsw i64 %i.ea, 48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194.epil ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eb, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dz, i64 24, i1 false), !tbaa.struct !22
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ed = getelementptr i8, ptr %i.eb, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ed, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.ec, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160.epil = add nuw nsw i64 %indvars.iv159.epil, 1
  %epil.iter219.next = add i64 %epil.iter219, 1   ; 2 uses
  %epil.iter219.cmp.not = icmp eq i64 %epil.iter219.next, %xtraiter218
  br i1 %epil.iter219.cmp.not, label %._crit_edge, label %.lr.ph133.epil, !llvm.loop !112

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph133.epil, %.preheader123, %.preheader122
  tail call fastcc void @fft0(i32 noundef %.0.i, ptr noundef %i.al, i32 noundef -1)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %fromreal.exit
  %.0109 = phi ptr [ %i.ak, %._crit_edge ], [ %i.g, %fromreal.exit ] ; 4 uses
  %.0108 = phi ptr [ %i.al, %._crit_edge ], [ %i.h, %fromreal.exit ] ; 2 uses
  %i.ee = icmp sgt i32 %.0.i, 0                   ; 2 uses
  br i1 %i.ee, label %.lr.ph136.preheader, label %.preheader

.lr.ph136.preheader:                              ; preds = %bb.s
  %wide.trip.count168 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter224 = and i64 %wide.trip.count168, 6   ; 3 uses
  %i.ef = icmp ult i32 %i.c, 8
  br i1 %i.ef, label %.lr.ph136.epil.preheader, label %.lr.ph136.preheader.new

.lr.ph136.preheader.new:                          ; preds = %.lr.ph136.preheader
  %unroll_iter228 = and i64 %wide.trip.count168, 2147483640
  br label %.lr.ph136

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph136
  %lcmp.mod226.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod226.not, label %.preheader, label %.lr.ph136.epil.preheader

.lr.ph136.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph136.preheader
  %indvars.iv164.epil.init = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next165.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod227 = icmp ne i64 %xtraiter224, 0
  tail call void @llvm.assume(i1 %lcmp.mod227)
  br label %.lr.ph136.epil

.lr.ph136.epil:                                   ; preds = %.lr.ph136.epil, %.lr.ph136.epil.preheader
  %indvars.iv164.epil = phi i64 [ %indvars.iv164.epil.init, %.lr.ph136.epil.preheader ], [ %indvars.iv.next165.epil, %.lr.ph136.epil ] ; 2 uses
  %epil.iter225 = phi i64 [ 0, %.lr.ph136.epil.preheader ], [ %epil.iter225.next, %.lr.ph136.epil ]
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eg, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next165.epil = add nuw nsw i64 %indvars.iv164.epil, 1
  %epil.iter225.next = add i64 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i64 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %.preheader, label %.lr.ph136.epil, !llvm.loop !113

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph136.epil, %bb.s
  %i.eh = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.eh, label %.lr.ph138.preheader, label %._crit_edge139

.lr.ph138.preheader:                              ; preds = %.preheader
  %wide.trip.count173 = zext nneg i32 %0 to i64
  br label %.lr.ph138

.lr.ph136:                                        ; preds = %.lr.ph136, %.lr.ph136.preheader.new
  %indvars.iv164 = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %indvars.iv.next165.7, %.lr.ph136 ] ; 9 uses
  %niter229 = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %niter229.next.7, %.lr.ph136 ]
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ei, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ek, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.em, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eo, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eq, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.es, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eu, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ew, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next165.7 = add nuw nsw i64 %indvars.iv164, 8 ; 2 uses
  %niter229.next.7 = add i64 %niter229, 8         ; 2 uses
  %niter229.ncmp.7 = icmp eq i64 %niter229.next.7, %unroll_iter228
  br i1 %niter229.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph136, !llvm.loop !114

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %indvars.iv170 = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next171, %.lr.ph138 ] ; 2 uses
  %i.ex = shl nuw nsw i64 %indvars.iv170, 1       ; 4 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %.0109, i64 %i.ex
  %i.ez = or disjoint i64 %i.ex, 1                ; 3 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %.0109, i64 %i.ez
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ex
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ez
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.ex
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.ez
  tail call fastcc void @cmulj(ptr noundef %i.ey, ptr noundef nonnull %i.fa, ptr noundef %i.fb, ptr noundef nonnull %i.fc, ptr noundef %i.fd, ptr noundef nonnull %i.fe)
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge139, label %.lr.ph138, !llvm.loop !115

._crit_edge139:                                   ; preds = %.lr.ph138, %.preheader
  tail call fastcc void @fft0(i32 noundef %.0.i, ptr noundef %i.f, i32 noundef -1)
  br i1 %i.ee, label %.lr.ph142.preheader, label %._crit_edge143

.lr.ph142.preheader:                              ; preds = %._crit_edge139
  %wide.trip.count179 = zext nneg i32 %.0.i to i64
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %indvars.iv175 = phi i64 [ 0, %.lr.ph142.preheader ], [ %indvars.iv.next176, %.lr.ph142 ] ; 2 uses
  %i.ff = shl nuw nsw i64 %indvars.iv175, 1       ; 3 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.ff ; 2 uses
  %i.fh = or disjoint i64 %i.ff, 1                ; 2 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %.0108, i64 %i.ff
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %.0108, i64 %i.fh
  tail call fastcc void @cmul(ptr noundef %i.fg, ptr noundef nonnull %i.fi, ptr noundef %i.fj, ptr noundef nonnull %i.fk, ptr noundef %i.fg, ptr noundef nonnull %i.fi)
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge143, label %.lr.ph142, !llvm.loop !116

._crit_edge143:                                   ; preds = %.lr.ph142, %._crit_edge139
  tail call fastcc void @fft0(i32 noundef %.0.i, ptr noundef %i.f, i32 noundef 1)
  br i1 %i.eh, label %.lr.ph146.preheader, label %._crit_edge147

.lr.ph146.preheader:                              ; preds = %._crit_edge143
  %wide.trip.count184 = zext nneg i32 %0 to i64
  br label %.lr.ph146

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.lr.ph146
  %indvars.iv181 = phi i64 [ 0, %.lr.ph146.preheader ], [ %indvars.iv.next182, %.lr.ph146 ] ; 2 uses
  %i.fl = shl nuw nsw i64 %indvars.iv181, 1       ; 4 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %.0109, i64 %i.fl
  %i.fn = or disjoint i64 %i.fl, 1                ; 3 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %.0109, i64 %i.fn
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.fl
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.fn
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.fl ; 3 uses
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.fn ; 3 uses
  tail call fastcc void @cmulj(ptr noundef %i.fm, ptr noundef nonnull %i.fo, ptr noundef %i.fp, ptr noundef nonnull %i.fq, ptr noundef %i.fr, ptr noundef nonnull %i.fs)
  call fastcc void @mul(ptr noundef nonnull %2, ptr noundef %i.fr, ptr noundef %i.fr)
  call fastcc void @mul(ptr noundef nonnull %2, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.fs)
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge147, label %.lr.ph146, !llvm.loop !117

._crit_edge147:                                   ; preds = %.lr.ph146, %._crit_edge143
  tail call void @bench_free(ptr noundef %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cos2pi(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.anon], align 16        ; 4 uses
  %4 = alloca [1 x %struct.anon], align 16        ; 21 uses
  %5 = alloca [1 x %struct.anon], align 16        ; 22 uses
  %6 = alloca [1 x %struct.anon], align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fneg double %0
  tail call fastcc void @cos2pi(double noundef %i.b, double noundef %1, ptr noundef %2)
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.c = fmul double %1, 5.000000e-01
  %i.d = fcmp ogt double %0, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = fsub double %1, %0
  tail call fastcc void @cos2pi(double noundef %i.e, double noundef %1, ptr noundef %2)
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  %i.f = fmul double %1, 2.500000e-01
  %i.g = fcmp ogt double %0, %i.f
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = fneg double %1
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double 2.500000e-01, double %0)
  tail call fastcc void @sin2pi(double noundef %i.i, double noundef %1, ptr noundef %2)
  %i.j = load i16, ptr %2, align 2, !tbaa !24
  %i.k = sub i16 0, %i.j
  store i16 %i.k, ptr %2, align 2, !tbaa !24
  br label %bb.aj

bb.g:                                             ; preds = %bb.e
  %i.l = fmul double %1, 1.250000e-01
  %i.m = fcmp ogt double %0, %i.l
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = fneg double %0
  %i.o = tail call double @llvm.fmuladd.f64(double %1, double 2.500000e-01, double %i.n)
  tail call fastcc void @sin2pi(double noundef %i.o, double noundef %1, ptr noundef %2)
  br label %bb.aj

bb.i:                                             ; preds = %bb.g
  call fastcc void @by2pi(double noundef %0, double noundef %1, ptr noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 16 dereferenceable(24) @i32fac, i64 24, i1 false), !tbaa.struct !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) @i32fac, i64 24, i1 false)
  call fastcc void @mul(ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %6, ptr noundef nonnull %3)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 6
  br label %bb.j

bb.j:                                             ; preds = %sub.exit.i, %bb.i
  %.08.i = phi i32 [ 32, %bb.i ], [ %i.ci, %sub.exit.i ] ; 4 uses
  %i.al = add nuw nsw i32 %.08.i, 65535
  %i.am = mul i32 %i.al, %.08.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 22, i1 false), !tbaa.struct !22
  store i16 1, ptr %5, align 16, !tbaa !24
  store i16 1, ptr %i.p, align 2, !tbaa !26
  %i.an = trunc i32 %i.am to i16
  store i16 %i.an, ptr %i.q, align 2, !tbaa !20
  call fastcc void @mul(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4)
  call fastcc void @mul(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %5)
  %i.ao = load i16, ptr %4, align 16, !tbaa !24
  %i.ap = load i16, ptr %5, align 16, !tbaa !24
  %i.aq = icmp eq i16 %i.ao, %i.ap
  %i.ar = load i16, ptr %i.r, align 2, !tbaa !26  ; 2 uses
  %i.as = load i16, ptr %i.p, align 2, !tbaa !26  ; 2 uses
  %i.at = icmp sgt i16 %i.ar, %i.as
  br i1 %i.at, label %abscmp.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = icmp slt i16 %i.ar, %i.as
  br i1 %i.au, label %abscmp.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.k
  %i.av = load i16, ptr %i.u, align 2, !tbaa !20  ; 2 uses
  %i.aw = load i16, ptr %i.q, align 2, !tbaa !20  ; 2 uses
  %i.ax = icmp ugt i16 %i.av, %i.aw
  br i1 %i.ax, label %abscmp.exit.i, label %bb.ac

bb.l:                                             ; preds = %bb.ac
  %i.ay = load i16, ptr %i.v, align 4, !tbaa !20  ; 2 uses
  %i.az = load i16, ptr %i.w, align 4, !tbaa !20  ; 2 uses
  %i.ba = icmp ugt i16 %i.ay, %i.az
  br i1 %i.ba, label %abscmp.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp ult i16 %i.ay, %i.az
  br i1 %i.bb, label %abscmp.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i16, ptr %i.x, align 2, !tbaa !20  ; 2 uses
  %i.bd = load i16, ptr %i.y, align 2, !tbaa !20  ; 2 uses
  %i.be = icmp ugt i16 %i.bc, %i.bd
  br i1 %i.be, label %abscmp.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp ult i16 %i.bc, %i.bd
  br i1 %i.bf, label %abscmp.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load i16, ptr %i.z, align 16, !tbaa !20 ; 2 uses
  %i.bh = load i16, ptr %i.aa, align 16, !tbaa !20 ; 2 uses
  %i.bi = icmp ugt i16 %i.bg, %i.bh
  br i1 %i.bi, label %abscmp.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = icmp ult i16 %i.bg, %i.bh
  br i1 %i.bj, label %abscmp.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load i16, ptr %i.ab, align 2, !tbaa !20 ; 2 uses
  %i.bl = load i16, ptr %i.ac, align 2, !tbaa !20 ; 2 uses
  %i.bm = icmp ugt i16 %i.bk, %i.bl
  br i1 %i.bm, label %abscmp.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = icmp ult i16 %i.bk, %i.bl
  br i1 %i.bn, label %abscmp.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load i16, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.bp = load i16, ptr %i.ae, align 4, !tbaa !20 ; 2 uses
  %i.bq = icmp ugt i16 %i.bo, %i.bp
  br i1 %i.bq, label %abscmp.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = icmp ult i16 %i.bo, %i.bp
  br i1 %i.br, label %abscmp.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load i16, ptr %i.af, align 2, !tbaa !20 ; 2 uses
  %i.bt = load i16, ptr %i.ag, align 2, !tbaa !20 ; 2 uses
  %i.bu = icmp ugt i16 %i.bs, %i.bt
  br i1 %i.bu, label %abscmp.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = icmp ult i16 %i.bs, %i.bt
  br i1 %i.bv, label %abscmp.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = load i16, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %i.bx = load i16, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.by = icmp ugt i16 %i.bw, %i.bx
  br i1 %i.by, label %abscmp.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = icmp ult i16 %i.bw, %i.bx
  br i1 %i.bz, label %abscmp.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = load i16, ptr %i.aj, align 2, !tbaa !20 ; 2 uses
  %i.cb = load i16, ptr %i.ak, align 2, !tbaa !20 ; 2 uses
  %i.cc = icmp ugt i16 %i.ca, %i.cb
  br i1 %i.cc, label %abscmp.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = icmp ult i16 %i.ca, %i.cb
  br i1 %i.cd, label %abscmp.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load i16, ptr %i.s, align 4, !tbaa !20
  %i.cf = load i16, ptr %i.t, align 4, !tbaa !20
  %i.cg = icmp ugt i16 %i.ce, %i.cf
  br label %abscmp.exit.i

bb.ac:                                            ; preds = %.preheader.i.i
  %i.ch = icmp ult i16 %i.av, %i.aw
  br i1 %i.ch, label %abscmp.exit.i, label %bb.l

abscmp.exit.i:                                    ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.preheader.i.i, %bb.k, %bb.j
  %.014.i.i = phi i1 [ false, %bb.k ], [ true, %bb.j ], [ false, %bb.ac ], [ true, %.preheader.i.i ], [ false, %bb.y ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.w ], [ true, %bb.n ], [ false, %bb.o ], [ %i.cg, %bb.ab ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.x ], [ true, %bb.r ], [ false, %bb.s ], [ false, %bb.aa ], [ true, %bb.t ], [ false, %bb.u ], [ true, %bb.z ], [ true, %bb.v ] ; 2 uses
  br i1 %i.aq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %abscmp.exit.i
  br i1 %.014.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @submag0(i32 noundef 1, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, ptr noundef nonnull %2)
  br label %sub.exit.i

bb.af:                                            ; preds = %bb.ad
  call fastcc void @submag0(i32 noundef -1, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, ptr noundef nonnull %2)
  br label %sub.exit.i

bb.ag:                                            ; preds = %abscmp.exit.i
  br i1 %.014.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @addmag0(i32 noundef 1, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, ptr noundef nonnull %2)
  br label %sub.exit.i

bb.ai:                                            ; preds = %bb.ag
  call fastcc void @addmag0(i32 noundef -1, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, ptr noundef nonnull %2)
  br label %sub.exit.i

sub.exit.i:                                       ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae
  %i.ci = add nsw i32 %.08.i, -2
  %i.cj = icmp samesign ugt i32 %.08.i, 2
  br i1 %i.cj, label %bb.j, label %mcos.exit, !llvm.loop !118

mcos.exit:                                        ; preds = %sub.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.d, %bb.h, %mcos.exit, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sin2pi(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.anon], align 16        ; 4 uses
  %4 = alloca [1 x %struct.anon], align 16        ; 21 uses
  %5 = alloca [1 x %struct.anon], align 16        ; 22 uses
  %6 = alloca [1 x %struct.anon], align 16        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fneg double %0
  tail call fastcc void @sin2pi(double noundef %i.b, double noundef %1, ptr noundef %2)
  %i.c = load i16, ptr %2, align 2, !tbaa !24
  %i.d = sub i16 0, %i.c
  store i16 %i.d, ptr %2, align 2, !tbaa !24
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.e = fmul double %1, 5.000000e-01
  %i.f = fcmp ogt double %0, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = fsub double %1, %0
  tail call fastcc void @sin2pi(double noundef %i.g, double noundef %1, ptr noundef %2)
  %i.h = load i16, ptr %2, align 2, !tbaa !24
  %i.i = sub i16 0, %i.h
  store i16 %i.i, ptr %2, align 2, !tbaa !24
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  %i.j = fmul double %1, 2.500000e-01
  %i.k = fcmp ogt double %0, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = fneg double %1
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double 2.500000e-01, double %0)
  tail call fastcc void @cos2pi(double noundef %i.m, double noundef %1, ptr noundef %2)
  br label %bb.aj

bb.g:                                             ; preds = %bb.e
  %i.n = fmul double %1, 1.250000e-01
  %i.o = fcmp ogt double %0, %i.n
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = fneg double %0
  %i.q = tail call double @llvm.fmuladd.f64(double %1, double 2.500000e-01, double %i.p)
  tail call fastcc void @cos2pi(double noundef %i.q, double noundef %1, ptr noundef %2)
  br label %bb.aj

bb.i:                                             ; preds = %bb.g
  call fastcc void @by2pi(double noundef %0, double noundef %1, ptr noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 16 dereferenceable(24) @i31fac, i64 24, i1 false), !tbaa.struct !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) @i31fac, i64 24, i1 false)
  call fastcc void @mul(ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %6, ptr noundef nonnull %3)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 6
  br label %bb.j

bb.j:                                             ; preds = %sub.exit.i, %bb.i
  %.011.i = phi i32 [ 31, %bb.i ], [ %i.ck, %sub.exit.i ] ; 4 uses
  %i.an = add nuw nsw i32 %.011.i, 65535
  %i.ao = mul i32 %i.an, %.011.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 22, i1 false), !tbaa.struct !22
  store i16 1, ptr %5, align 16, !tbaa !24
  store i16 1, ptr %i.r, align 2, !tbaa !26
  %i.ap = trunc i32 %i.ao to i16
  store i16 %i.ap, ptr %i.s, align 2, !tbaa !20
  call fastcc void @mul(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4)
  call fastcc void @mul(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %5)
  %i.aq = load i16, ptr %4, align 16, !tbaa !24
  %i.ar = load i16, ptr %5, align 16, !tbaa !24
  %i.as = icmp eq i16 %i.aq, %i.ar
  %i.at = load i16, ptr %i.t, align 2, !tbaa !26  ; 2 uses
  %i.au = load i16, ptr %i.r, align 2, !tbaa !26  ; 2 uses
  %i.av = icmp sgt i16 %i.at, %i.au
  br i1 %i.av, label %abscmp.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = icmp slt i16 %i.at, %i.au
  br i1 %i.aw, label %abscmp.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.k
  %i.ax = load i16, ptr %i.w, align 2, !tbaa !20  ; 2 uses
  %i.ay = load i16, ptr %i.s, align 2, !tbaa !20  ; 2 uses
  %i.az = icmp ugt i16 %i.ax, %i.ay
  br i1 %i.az, label %abscmp.exit.i, label %bb.ac

bb.l:                                             ; preds = %bb.ac
  %i.ba = load i16, ptr %i.x, align 4, !tbaa !20  ; 2 uses
  %i.bb = load i16, ptr %i.y, align 4, !tbaa !20  ; 2 uses
  %i.bc = icmp ugt i16 %i.ba, %i.bb
  br i1 %i.bc, label %abscmp.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp ult i16 %i.ba, %i.bb
  br i1 %i.bd, label %abscmp.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i16, ptr %i.z, align 2, !tbaa !20  ; 2 uses
  %i.bf = load i16, ptr %i.aa, align 2, !tbaa !20 ; 2 uses
  %i.bg = icmp ugt i16 %i.be, %i.bf
  br i1 %i.bg, label %abscmp.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = icmp ult i16 %i.be, %i.bf
  br i1 %i.bh, label %abscmp.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i16, ptr %i.ab, align 16, !tbaa !20 ; 2 uses
  %i.bj = load i16, ptr %i.ac, align 16, !tbaa !20 ; 2 uses
  %i.bk = icmp ugt i16 %i.bi, %i.bj
  br i1 %i.bk, label %abscmp.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = icmp ult i16 %i.bi, %i.bj
  br i1 %i.bl, label %abscmp.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = load i16, ptr %i.ad, align 2, !tbaa !20 ; 2 uses
  %i.bn = load i16, ptr %i.ae, align 2, !tbaa !20 ; 2 uses
  %i.bo = icmp ugt i16 %i.bm, %i.bn
  br i1 %i.bo, label %abscmp.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = icmp ult i16 %i.bm, %i.bn
  br i1 %i.bp, label %abscmp.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load i16, ptr %i.af, align 4, !tbaa !20 ; 2 uses
  %i.br = load i16, ptr %i.ag, align 4, !tbaa !20 ; 2 uses
  %i.bs = icmp ugt i16 %i.bq, %i.br
  br i1 %i.bs, label %abscmp.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = icmp ult i16 %i.bq, %i.br
  br i1 %i.bt, label %abscmp.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load i16, ptr %i.ah, align 2, !tbaa !20 ; 2 uses
  %i.bv = load i16, ptr %i.ai, align 2, !tbaa !20 ; 2 uses
  %i.bw = icmp ugt i16 %i.bu, %i.bv
  br i1 %i.bw, label %abscmp.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = icmp ult i16 %i.bu, %i.bv
  br i1 %i.bx, label %abscmp.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load i16, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.bz = load i16, ptr %i.ak, align 8, !tbaa !20 ; 2 uses
  %i.ca = icmp ugt i16 %i.by, %i.bz
  br i1 %i.ca, label %abscmp.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = icmp ult i16 %i.by, %i.bz
  br i1 %i.cb, label %abscmp.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load i16, ptr %i.al, align 2, !tbaa !20 ; 2 uses
  %i.cd = load i16, ptr %i.am, align 2, !tbaa !20 ; 2 uses
  %i.ce = icmp ugt i16 %i.cc, %i.cd
  br i1 %i.ce, label %abscmp.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = icmp ult i16 %i.cc, %i.cd
  br i1 %i.cf, label %abscmp.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i16, ptr %i.u, align 4, !tbaa !20
  %i.ch = load i16, ptr %i.v, align 4, !tbaa !20
  %i.ci = icmp ugt i16 %i.cg, %i.ch
  br label %abscmp.exit.i

bb.ac:                                            ; preds = %.preheader.i.i
  %i.cj = icmp ult i16 %i.ax, %i.ay
  br i1 %i.cj, label %abscmp.exit.i, label %bb.l

abscmp.exit.i:                                    ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.preheader.i.i, %bb.k, %bb.j
  %.014.i.i = phi i1 [ false, %bb.k ], [ true, %bb.j ], [ false, %bb.ac ], [ true, %.preheader.i.i ], [ false, %bb.y ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.w ], [ true, %bb.n ], [ false, %bb.o ], [ %i.ci, %bb.ab ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.x ], [ true, %bb.r ], [ false, %bb.s ], [ false, %bb.aa ], [ true, %bb.t ], [ false, %bb.u ], [ true, %bb.z ], [ true, %bb.v ] ; 2 uses
  br i1 %i.as, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %abscmp.exit.i
  br i1 %.014.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @submag0(i32 noundef 1, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, ptr noundef nonnull %2)
  br label %sub.exit.i

bb.af:                                            ; preds = %bb.ad
  call fastcc void @submag0(i32 noundef -1, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, ptr noundef nonnull %2)
  br label %sub.exit.i

bb.ag:                                            ; preds = %abscmp.exit.i
  br i1 %.014.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @addmag0(i32 noundef 1, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, ptr noundef nonnull %2)
  br label %sub.exit.i

bb.ai:                                            ; preds = %bb.ag
  call fastcc void @addmag0(i32 noundef -1, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4, ptr noundef nonnull %2)
  br label %sub.exit.i

sub.exit.i:                                       ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae
  %i.ck = add nsw i32 %.011.i, -2
  %i.cl = icmp samesign ugt i32 %.011.i, 3
  br i1 %i.cl, label %bb.j, label %msin.exit, !llvm.loop !119

msin.exit:                                        ; preds = %sub.exit.i
  call fastcc void @mul(ptr noundef nonnull readonly %6, ptr noundef nonnull %2, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.d, %bb.h, %msin.exit, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cmul(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #3 {
bb.a:
  %6 = alloca [1 x %struct.anon], align 16        ; 35 uses
  %7 = alloca [1 x %struct.anon], align 16        ; 35 uses
  %8 = alloca [1 x %struct.anon], align 16        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call fastcc void @mul(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6)
  call fastcc void @mul(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %7)
  %i.a = load i16, ptr %6, align 16, !tbaa !24
  %i.b = load i16, ptr %7, align 16, !tbaa !24
  %i.c = icmp eq i16 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !26   ; 2 uses
  %i.h = icmp sgt i16 %i.e, %i.g
  br i1 %i.h, label %abscmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i16 %i.e, %i.g
  br i1 %i.i, label %abscmp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.m = load i16, ptr %i.l, align 2, !tbaa !20   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 22
  %i.o = load i16, ptr %i.n, align 2, !tbaa !20   ; 2 uses
  %i.p = icmp ugt i16 %i.m, %i.o
  br i1 %i.p, label %abscmp.exit, label %bb.t

bb.c:                                             ; preds = %bb.t
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.r = load i16, ptr %i.q, align 4, !tbaa !20   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.t = load i16, ptr %i.s, align 4, !tbaa !20   ; 2 uses
  %i.u = icmp ugt i16 %i.r, %i.t
  br i1 %i.u, label %abscmp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp ult i16 %i.r, %i.t
  br i1 %i.v, label %abscmp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.x = load i16, ptr %i.w, align 2, !tbaa !20   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.z = load i16, ptr %i.y, align 2, !tbaa !20   ; 2 uses
  %i.aa = icmp ugt i16 %i.x, %i.z
  br i1 %i.aa, label %abscmp.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i16 %i.x, %i.z
  br i1 %i.ab, label %abscmp.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = load i16, ptr %i.ac, align 16, !tbaa !20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = load i16, ptr %i.ae, align 16, !tbaa !20 ; 2 uses
  %i.ag = icmp ugt i16 %i.ad, %i.af
  br i1 %i.ag, label %abscmp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp ult i16 %i.ad, %i.af
  br i1 %i.ah, label %abscmp.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !20 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 14
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !20 ; 2 uses
  %i.am = icmp ugt i16 %i.aj, %i.al
  br i1 %i.am, label %abscmp.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp ult i16 %i.aj, %i.al
  br i1 %i.an, label %abscmp.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !20 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !20 ; 2 uses
  %i.as = icmp ugt i16 %i.ap, %i.ar
  br i1 %i.as, label %abscmp.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ult i16 %i.ap, %i.ar
  br i1 %i.at, label %abscmp.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.av = load i16, ptr %i.au, align 2, !tbaa !20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !20 ; 2 uses
  %i.ay = icmp ugt i16 %i.av, %i.ax
  br i1 %i.ay, label %abscmp.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = icmp ult i16 %i.av, %i.ax
  br i1 %i.az, label %abscmp.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load i16, ptr %i.bc, align 8, !tbaa !20 ; 2 uses
  %i.be = icmp ugt i16 %i.bb, %i.bd
  br i1 %i.be, label %abscmp.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp ult i16 %i.bb, %i.bd
  br i1 %i.bf, label %abscmp.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 6
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !20 ; 2 uses
  %i.bk = icmp ugt i16 %i.bh, %i.bj
  br i1 %i.bk, label %abscmp.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = icmp ult i16 %i.bh, %i.bj
  br i1 %i.bl, label %abscmp.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load i16, ptr %i.j, align 4, !tbaa !20
  %i.bn = load i16, ptr %i.k, align 4, !tbaa !20
  %i.bo = icmp ugt i16 %i.bm, %i.bn
  br label %abscmp.exit

bb.t:                                             ; preds = %.preheader.i
  %i.bp = icmp ult i16 %i.m, %i.o
  br i1 %i.bp, label %abscmp.exit, label %bb.c

abscmp.exit:                                      ; preds = %bb.s, %bb.a, %bb.b, %.preheader.i, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.t
  %.014.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.t ], [ true, %.preheader.i ], [ false, %bb.p ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.n ], [ true, %bb.e ], [ false, %bb.f ], [ %i.bo, %bb.s ], [ true, %bb.g ], [ false, %bb.h ], [ true, %bb.o ], [ true, %bb.i ], [ false, %bb.j ], [ false, %bb.r ], [ true, %bb.k ], [ false, %bb.l ], [ true, %bb.q ], [ true, %bb.m ] ; 2 uses
  br i1 %i.c, label %bb.u, label %bb.x

bb.u:                                             ; preds = %abscmp.exit
  br i1 %.014.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call fastcc void @submag0(i32 noundef 1, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %7, ptr noundef nonnull %8)
  br label %sub.exit

bb.w:                                             ; preds = %bb.u
  call fastcc void @submag0(i32 noundef -1, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %6, ptr noundef nonnull %8)
  br label %sub.exit

bb.x:                                             ; preds = %abscmp.exit
  br i1 %.014.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call fastcc void @addmag0(i32 noundef 1, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %7, ptr noundef nonnull %8)
  br label %sub.exit

bb.z:                                             ; preds = %bb.x
  call fastcc void @addmag0(i32 noundef -1, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %6, ptr noundef nonnull %8)
  br label %sub.exit

sub.exit:                                         ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  call fastcc void @mul(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %6)
  call fastcc void @mul(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7)
  %i.bq = load i16, ptr %6, align 16, !tbaa !24
  %i.br = load i16, ptr %7, align 16, !tbaa !24
  %i.bs = icmp eq i16 %i.bq, %i.br
  %i.bt = load i16, ptr %i.d, align 2, !tbaa !26  ; 2 uses
  %i.bu = load i16, ptr %i.f, align 2, !tbaa !26  ; 2 uses
  %i.bv = icmp sgt i16 %i.bt, %i.bu
  br i1 %i.bv, label %abscmp.exit13, label %bb.aa

bb.aa:                                            ; preds = %sub.exit
  %i.bw = icmp slt i16 %i.bt, %i.bu
  br i1 %i.bw, label %abscmp.exit13, label %.preheader.i10

.preheader.i10:                                   ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !20 ; 2 uses
end_hunk_4
begin_hunk_5_@cmulj:bb.a

bb.as:                                            ; preds = %.preheader.i10
  %i.ed = icmp ult i16 %i.ca, %i.cc
  br i1 %i.ed, label %abscmp.exit13, label %bb.ab

abscmp.exit13:                                    ; preds = %bb.ar, %add.exit, %bb.aa, %.preheader.i10, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.as
  %.014.i12 = phi i1 [ false, %bb.aa ], [ true, %add.exit ], [ false, %bb.as ], [ true, %.preheader.i10 ], [ false, %bb.ao ], [ true, %bb.ab ], [ false, %bb.ac ], [ false, %bb.am ], [ true, %bb.ad ], [ false, %bb.ae ], [ %i.ec, %bb.ar ], [ true, %bb.af ], [ false, %bb.ag ], [ true, %bb.an ], [ true, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aq ], [ true, %bb.aj ], [ false, %bb.ak ], [ true, %bb.ap ], [ true, %bb.al ] ; 2 uses
  br i1 %i.bs, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %abscmp.exit13
  br i1 %.014.i12, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call fastcc void @submag0(i32 noundef 1, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %7, ptr noundef %5)
  br label %sub.exit

bb.av:                                            ; preds = %bb.at
  call fastcc void @submag0(i32 noundef -1, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %6, ptr noundef %5)
  br label %sub.exit

bb.aw:                                            ; preds = %abscmp.exit13
  br i1 %.014.i12, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @addmag0(i32 noundef 1, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %7, ptr noundef %5)
  br label %sub.exit

bb.ay:                                            ; preds = %bb.aw
  call fastcc void @addmag0(i32 noundef -1, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %6, ptr noundef %5)
  br label %sub.exit

sub.exit:                                         ; preds = %bb.au, %bb.av, %bb.ax, %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %4, ptr noundef nonnull readonly align 16 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @by2pi(double noundef %0, double noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca [1 x %struct.anon], align 16        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %fromreal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ult double %1, 0.000000e+00         ; 2 uses
  %i.c = fneg double %1
  %.sink.i = select i1 %i.b, i16 -1, i16 1
  %.0.i = select i1 %i.b, double %i.c, double %1  ; 3 uses
  store i16 %.sink.i, ptr %3, align 16, !tbaa !24
  %i.d = fcmp ult double %.0.i, 1.000000e+00
  br i1 %i.d, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.b
  %.023.lcssa.i = phi i16 [ 0, %bb.b ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi double [ %.0.i, %bb.b ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %i.e = fcmp olt double %.1.lcssa.i, f0x3EF0000000000000
  br i1 %i.e, label %.lr.ph32.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.128.i = phi double [ %i.f, %.lr.ph.i ], [ %.0.i, %bb.b ]
  %.02327.i = phi i16 [ %i.g, %.lr.ph.i ], [ 0, %bb.b ]
  %i.f = fmul nnan double %.128.i, f0x3EF0000000000000 ; 3 uses
  %i.g = add i16 %.02327.i, 1                     ; 2 uses
  %i.h = fcmp ult double %i.f, 1.000000e+00
  br i1 %i.h, label %.preheader.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph32.i:                                       ; preds = %.preheader.i, %.lr.ph32.i
  %.231.i = phi double [ %i.i, %.lr.ph32.i ], [ %.1.lcssa.i, %.preheader.i ]
  %.12430.i = phi i16 [ %i.j, %.lr.ph32.i ], [ %.023.lcssa.i, %.preheader.i ]
  %i.i = fmul nnan double %.231.i, 6.553600e+04   ; 3 uses
  %i.j = add i16 %.12430.i, -1                    ; 2 uses
  %i.k = fcmp olt double %i.i, f0x3EF0000000000000
  br i1 %i.k, label %.lr.ph32.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph32.i, %.preheader.i
  %.124.lcssa.i = phi i16 [ %.023.lcssa.i, %.preheader.i ], [ %i.j, %.lr.ph32.i ]
  %.2.lcssa.i = phi double [ %.1.lcssa.i, %.preheader.i ], [ %i.i, %.lr.ph32.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.124.lcssa.i, ptr %i.l, align 2, !tbaa !26
  %i.m = fcmp une double %.2.lcssa.i, 0.000000e+00
  br i1 %i.m, label %.lr.ph38.i, label %fromreal.exit

.lr.ph38.i:                                       ; preds = %._crit_edge.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph38.i
  %indvars.iv.i = phi i64 [ 9, %.lr.ph38.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.336.i = phi double [ %.2.lcssa.i, %.lr.ph38.i ], [ %i.t, %bb.c ]
  %i.o = fmul double %.336.i, 6.553600e+04        ; 2 uses
  %i.p = fptosi double %i.o to i32                ; 2 uses
  %i.q = sitofp i32 %i.p to double
  %i.r = trunc i32 %i.p to i16
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i
  store i16 %i.r, ptr %i.s, align 2, !tbaa !20
  %i.t = fsub double %i.o, %i.q                   ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.u = icmp ne i64 %indvars.iv.i, 0
  %i.v = fcmp une double %i.t, 0.000000e+00
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.c, label %fromreal.exit, !llvm.loop !2

fromreal.exit:                                    ; preds = %bb.c, %bb.a, %._crit_edge.i
  call fastcc void @inv(ptr noundef %3, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.x = fcmp oeq double %0, 0.000000e+00
  br i1 %i.x, label %fromreal.exit25, label %bb.d

bb.d:                                             ; preds = %fromreal.exit
  %i.y = fcmp ult double %0, 0.000000e+00         ; 2 uses
  %i.z = fneg double %0
  %.sink.i7 = select i1 %i.y, i16 -1, i16 1
  %.0.i8 = select i1 %i.y, double %i.z, double %0 ; 3 uses
  store i16 %.sink.i7, ptr %3, align 16, !tbaa !24
  %i.aa = fcmp ult double %.0.i8, 1.000000e+00
  br i1 %i.aa, label %.preheader.i12, label %.lr.ph.i9

.preheader.i12:                                   ; preds = %.lr.ph.i9, %bb.d
  %.023.lcssa.i13 = phi i16 [ 0, %bb.d ], [ %i.ad, %.lr.ph.i9 ] ; 2 uses
  %.1.lcssa.i14 = phi double [ %.0.i8, %bb.d ], [ %i.ac, %.lr.ph.i9 ] ; 3 uses
  %i.ab = fcmp olt double %.1.lcssa.i14, f0x3EF0000000000000
  br i1 %i.ab, label %.lr.ph32.i22, label %._crit_edge.i15

.lr.ph.i9:                                        ; preds = %bb.d, %.lr.ph.i9
  %.128.i10 = phi double [ %i.ac, %.lr.ph.i9 ], [ %.0.i8, %bb.d ]
  %.02327.i11 = phi i16 [ %i.ad, %.lr.ph.i9 ], [ 0, %bb.d ]
  %i.ac = fmul nnan double %.128.i10, f0x3EF0000000000000 ; 3 uses
  %i.ad = add i16 %.02327.i11, 1                  ; 2 uses
  %i.ae = fcmp ult double %i.ac, 1.000000e+00
  br i1 %i.ae, label %.preheader.i12, label %.lr.ph.i9, !llvm.loop !0

.lr.ph32.i22:                                     ; preds = %.preheader.i12, %.lr.ph32.i22
  %.231.i23 = phi double [ %i.af, %.lr.ph32.i22 ], [ %.1.lcssa.i14, %.preheader.i12 ]
  %.12430.i24 = phi i16 [ %i.ag, %.lr.ph32.i22 ], [ %.023.lcssa.i13, %.preheader.i12 ]
  %i.af = fmul nnan double %.231.i23, 6.553600e+04 ; 3 uses
  %i.ag = add i16 %.12430.i24, -1                 ; 2 uses
  %i.ah = fcmp olt double %i.af, f0x3EF0000000000000
  br i1 %i.ah, label %.lr.ph32.i22, label %._crit_edge.i15, !llvm.loop !1

._crit_edge.i15:                                  ; preds = %.lr.ph32.i22, %.preheader.i12
  %.124.lcssa.i16 = phi i16 [ %.023.lcssa.i13, %.preheader.i12 ], [ %i.ag, %.lr.ph32.i22 ]
  %.2.lcssa.i17 = phi double [ %.1.lcssa.i14, %.preheader.i12 ], [ %i.af, %.lr.ph32.i22 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.124.lcssa.i16, ptr %i.ai, align 2, !tbaa !26
  %i.aj = fcmp une double %.2.lcssa.i17, 0.000000e+00
  br i1 %i.aj, label %.lr.ph38.i18, label %fromreal.exit25

.lr.ph38.i18:                                     ; preds = %._crit_edge.i15
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph38.i18
  %indvars.iv.i19 = phi i64 [ 9, %.lr.ph38.i18 ], [ %indvars.iv.next.i21, %bb.e ] ; 3 uses
  %.336.i20 = phi double [ %.2.lcssa.i17, %.lr.ph38.i18 ], [ %i.aq, %bb.e ]
  %i.al = fmul double %.336.i20, 6.553600e+04     ; 2 uses
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = sitofp i32 %i.am to double
  %i.ao = trunc i32 %i.am to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.i19
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !20
  %i.aq = fsub double %i.al, %i.an                ; 2 uses
  %indvars.iv.next.i21 = add nsw i64 %indvars.iv.i19, -1
  %i.ar = icmp ne i64 %indvars.iv.i19, 0
  %i.as = fcmp une double %i.aq, 0.000000e+00
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %bb.e, label %fromreal.exit25, !llvm.loop !2

fromreal.exit25:                                  ; preds = %bb.e, %fromreal.exit, %._crit_edge.i15
  call fastcc void @mul(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %2)
  tail call fastcc void @mul(ptr noundef nonnull @n2pi, ptr noundef nonnull %2, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #8 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = distinct !{!4, !25}
!5 = distinct !{!5, !25}
!6 = distinct !{!6, !25}
!7 = distinct !{!7, !25}
!8 = distinct !{!8, !25}
!9 = distinct !{!9, !25}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"short", !15, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!15, !15, i64 0}
!22 = !{i64 0, i64 2, !20, i64 2, i64 2, !20, i64 4, i64 20, !21}
!23 = !{!"", !19, i64 0, !19, i64 2, !15, i64 4}
!24 = !{!23, !19, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!23, !19, i64 2}
!27 = !{!"double", !15, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"any pointer", !15, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!16, !16, i64 0}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !25}
!39 = distinct !{!39, !25, !46, !47}
!40 = distinct !{!40, !25, !47, !46}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = !{!"branch_weights", i32 4, i32 12}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = distinct !{!51, !32}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !32}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !32}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !32}
!59 = distinct !{!59, !32}
!60 = distinct !{!60, !32}
!61 = distinct !{!61, !32}
!62 = distinct !{!62, !32}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, !32}
!65 = distinct !{!65, !32}
!66 = distinct !{!66, !32}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !32}
!69 = distinct !{!69, !32}
!70 = distinct !{!70, !32}
!71 = distinct !{!71, !32}
!72 = distinct !{!72, !32}
!73 = distinct !{!73, !32}
!74 = distinct !{!74, !32}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !32}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !32}
!97 = distinct !{!97, !32}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !32}
!100 = distinct !{!100, !32}
!101 = distinct !{!101, !32}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !32}
!113 = distinct !{!113, !32}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
end_hunk_5
