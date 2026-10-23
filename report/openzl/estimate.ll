Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/estimate?download=true
inline.NumInlined: 213
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 51
begin_hunk_0_@ZL_estimateCardinality_variable:bb.a
  %i.ae = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  %i.af = sub i64 %i.q, %i.ae
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %ZS_estimateLinear_variable_internal.exit, label %bb.e

bb.e:                                             ; preds = %middle.block
  %i.ah = uitofp nneg i64 %i.q to double          ; 4 uses
  %i.ai = uitofp i64 %i.ae to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = tail call double @log(double noundef %i.aj) #17, !noalias !111
  %i.al = fmul double %i.ak, %i.ah                ; 7 uses
  %i.am = fdiv double %i.al, %i.ah                ; 4 uses
  %sqrt.i.i = tail call nnan ninf double @llvm.sqrt.f64(double %i.ah) ; 2 uses
  %i.an = tail call double @exp(double noundef %i.am) #17, !noalias !111
  %i.ao = fsub double %i.an, %i.am
  %i.ap = fadd double %i.ao, -1.000000e+00
  %i.aq = tail call double @pow(double noundef %i.ap, double noundef 5.000000e-01) #17, !noalias !111
  %i.ar = fmul double %sqrt.i.i, %i.aq
  %i.as = fdiv double %i.ar, %i.al
  %i.at = fcmp olt double %i.as, 1.000000e-01
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = tail call double @exp(double noundef %i.am) #17, !noalias !111
  %i.av = fsub double %i.au, %i.am
  %i.aw = fadd double %i.av, -1.000000e+00
  %i.ax = tail call double @pow(double noundef %i.aw, double noundef 5.000000e-01) #17, !noalias !111
  %i.ay = fmul double %sqrt.i.i, %i.ax
  %i.az = fdiv double %i.ay, %i.al
  %i.ba = fmul double %i.az, 2.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = phi double [ %i.ba, %bb.f ], [ 2.000000e-01, %bb.e ]
  %i.bc = fmul double %i.al, %i.bb                ; 2 uses
  %i.bd = fsub double %i.al, %i.bc
  %i.be = fptoui double %i.bd to i64
  %i.bf = fptoui double %i.al to i64              ; 3 uses
  %i.bg = add i64 %i.bf, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.be)
  %i.bh = fadd double %i.al, %i.bc
  %i.bi = fptoui double %i.bh to i64
  %i.bj = add i64 %i.bf, 1
  %i.bk = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bi)
  br label %ZS_estimateLinear_variable_internal.exit

bb.h:                                             ; preds = %bb.h, %bb.d
  %.013.i = phi i64 [ 0, %bb.d ], [ %i.bs, %bb.h ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !113, !noalias !109
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.013.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !24, !noalias !109
  %i.bp = tail call fastcc i64 @XXH_INLINE_XXH3_64bits(ptr noundef captures(address) %i.bm, i64 noundef %i.bo) #18, !noalias !109
  %i.bq = lshr i64 %i.bp, %i.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  store i8 1, ptr %i.br, align 1, !tbaa !16, !noalias !109
  %i.bs = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %3
  br i1 %exitcond.not.i, label %vector.ph, label %bb.h, !llvm.loop !105

ZS_estimateLinear_variable_internal.exit:         ; preds = %middle.block, %bb.g
  %.sroa.4.0 = phi i64 [ %..i.i, %bb.g ], [ -1, %middle.block ]
  %.sroa.6.0 = phi i64 [ %i.bf, %bb.g ], [ -1, %middle.block ]
  %.sroa.7.0 = phi i64 [ %i.bk, %bb.g ], [ -1, %middle.block ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %5, i8 0, i64 4096, i1 false), !noalias !114
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i = phi i64 [ 0, %bb.i ], [ %i.cf, %bb.j ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113, !noalias !114
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24, !noalias !114
  %i.bx = tail call fastcc i64 @XXH_INLINE_XXH3_64bits(ptr noundef captures(address) %i.bu, i64 noundef %i.bw) #18, !noalias !114 ; 3 uses
  %i.by = lshr i64 %i.bx, 54
  %i.bz = sub i64 0, %i.bx
  %i.ca = and i64 %i.bx, %i.bz
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.by ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !22, !noalias !114
  %i.ce = or i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !22, !noalias !114
  %i.cf = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %i.cf, %3
  br i1 %exitcond.not.i26, label %ZS_estimateHLL_variable_internal.exit, label %bb.j, !llvm.loop !108

ZS_estimateHLL_variable_internal.exit:            ; preds = %bb.j
  call fastcc void @HyperLogLog_estimate(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !114
  %.sroa.027.0.copyload28 = load i64, ptr %6, align 8, !tbaa !24
  %.sroa.730.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.730.0.copyload32 = load i64, ptr %.sroa.730.0..sroa_idx31, align 8, !tbaa !24
  %.sroa.835.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.835.0.copyload37 = load i64, ptr %.sroa.835.0..sroa_idx36, align 8, !tbaa !24
  %.sroa.9.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.9.0.copyload41 = load i64, ptr %.sroa.9.0..sroa_idx40, align 8, !tbaa !24
  %.sroa.10.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.10.0.copyload45 = load i64, ptr %.sroa.10.0..sroa_idx44, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cg = tail call i64 @llvm.umin.i64(i64 %.sroa.10.0.copyload45, i64 %3)
  br label %bb.k

bb.k:                                             ; preds = %ZS_estimateHLL_variable_internal.exit, %ZS_estimateLinear_variable_internal.exit
  %.sroa.027.0 = phi i64 [ %i.af, %ZS_estimateLinear_variable_internal.exit ], [ %.sroa.027.0.copyload28, %ZS_estimateHLL_variable_internal.exit ] ; 2 uses
  %.sroa.730.0 = phi i64 [ %.sroa.4.0, %ZS_estimateLinear_variable_internal.exit ], [ %.sroa.730.0.copyload32, %ZS_estimateHLL_variable_internal.exit ]
  %.sroa.835.0 = phi i64 [ %.sroa.6.0, %ZS_estimateLinear_variable_internal.exit ], [ %.sroa.835.0.copyload37, %ZS_estimateHLL_variable_internal.exit ]
  %.sroa.9.0 = phi i64 [ %.sroa.7.0, %ZS_estimateLinear_variable_internal.exit ], [ %.sroa.9.0.copyload41, %ZS_estimateHLL_variable_internal.exit ]
  %.sroa.10.0 = phi i64 [ %3, %ZS_estimateLinear_variable_internal.exit ], [ %i.cg, %ZS_estimateHLL_variable_internal.exit ] ; 2 uses
  %spec.store.select8.i = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0, i64 %.sroa.10.0) ; 2 uses
  %spec.store.select6.i = tail call i64 @llvm.umin.i64(i64 %.sroa.835.0, i64 %spec.store.select8.i) ; 2 uses
  %spec.store.select9.i = tail call i64 @llvm.umin.i64(i64 %.sroa.730.0, i64 %spec.store.select6.i)
  %spec.store.select7.i = tail call i64 @llvm.umax.i64(i64 %spec.store.select9.i, i64 %.sroa.027.0)
  store i64 %.sroa.027.0, ptr %0, align 8, !tbaa !24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.store.select7.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !24
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.store.select6.i, ptr %.sroa.853.0..sroa_idx, align 8, !tbaa !24
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select8.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { i64, i64 } @ZL_computeUnsignedRange(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.split, label %ZL_computeUnsignedRange8.exit

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %2, i1 true)
  switch i64 %i.c, label %ZL_computeUnsignedRange8.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %ZL_computeUnsignedRange8.exit, label %iter.check99

iter.check99:                                     ; preds = %bb.b
  %min.iters.check78 = icmp ult i64 %1, 4
  br i1 %min.iters.check78, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check79

vector.main.loop.iter.check79:                    ; preds = %iter.check99
  %min.iters.check80 = icmp ult i64 %1, 32
  br i1 %min.iters.check80, label %vec.epilog.ph103, label %vector.ph81

vector.ph81:                                      ; preds = %vector.main.loop.iter.check79
  %i.d = and i64 %1, 28
  %n.vec82 = and i64 %1, -32                      ; 4 uses
  br label %vector.body83

vector.body83:                                    ; preds = %vector.ph81, %vector.body83
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next91, %vector.body83 ] ; 2 uses
  %vec.phi85 = phi <16 x i8> [ zeroinitializer, %vector.ph81 ], [ %i.i, %vector.body83 ]
  %vec.phi86 = phi <16 x i8> [ zeroinitializer, %vector.ph81 ], [ %i.j, %vector.body83 ]
  %vec.phi87 = phi <16 x i8> [ splat (i8 -1), %vector.ph81 ], [ %i.g, %vector.body83 ]
  %vec.phi88 = phi <16 x i8> [ splat (i8 -1), %vector.ph81 ], [ %i.h, %vector.body83 ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index84 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load89 = load <16 x i8>, ptr %i.e, align 1, !tbaa !16 ; 2 uses
  %wide.load90 = load <16 x i8>, ptr %i.f, align 1, !tbaa !16 ; 2 uses
  %i.g = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load89, <16 x i8> %vec.phi87) ; 2 uses
  %i.h = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load90, <16 x i8> %vec.phi88) ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load89, <16 x i8> %vec.phi85) ; 2 uses
  %i.j = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load90, <16 x i8> %vec.phi86) ; 2 uses
  %index.next91 = add nuw i64 %index84, 32        ; 2 uses
  %i.k = icmp eq i64 %index.next91, %n.vec82
  br i1 %i.k, label %middle.block92, label %vector.body83, !llvm.loop !115

middle.block92:                                   ; preds = %vector.body83
  %rdx.minmax93 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.i, <16 x i8> %i.j)
  %i.l = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax93) ; 3 uses
  %rdx.minmax94 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.g, <16 x i8> %i.h)
  %i.m = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax94) ; 3 uses
  %cmp.n95 = icmp eq i64 %1, %n.vec82
  br i1 %cmp.n95, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check101

vec.epilog.iter.check101:                         ; preds = %middle.block92
  %min.epilog.iters.check102 = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check102, label %.lr.ph.i.preheader, label %vec.epilog.ph103, !prof !25

vec.epilog.ph103:                                 ; preds = %vector.main.loop.iter.check79, %vec.epilog.iter.check101
  %vec.epilog.resume.val96 = phi i64 [ %n.vec82, %vec.epilog.iter.check101 ], [ 0, %vector.main.loop.iter.check79 ]
  %bc.merge.rdx97 = phi i8 [ %i.l, %vec.epilog.iter.check101 ], [ 0, %vector.main.loop.iter.check79 ]
  %bc.merge.rdx98 = phi i8 [ %i.m, %vec.epilog.iter.check101 ], [ -1, %vector.main.loop.iter.check79 ]
  %n.vec104 = and i64 %1, -4                      ; 3 uses
  %broadcast.splatinsert105 = insertelement <4 x i8> poison, i8 %bc.merge.rdx97, i64 0
  %broadcast.splat106 = shufflevector <4 x i8> %broadcast.splatinsert105, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert107 = insertelement <4 x i8> poison, i8 %bc.merge.rdx98, i64 0
  %broadcast.splat108 = shufflevector <4 x i8> %broadcast.splatinsert107, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body109

vec.epilog.vector.body109:                        ; preds = %vec.epilog.vector.body109, %vec.epilog.ph103
  %index110 = phi i64 [ %vec.epilog.resume.val96, %vec.epilog.ph103 ], [ %index.next114, %vec.epilog.vector.body109 ] ; 2 uses
  %vec.phi111 = phi <4 x i8> [ %broadcast.splat106, %vec.epilog.ph103 ], [ %i.p, %vec.epilog.vector.body109 ]
  %vec.phi112 = phi <4 x i8> [ %broadcast.splat108, %vec.epilog.ph103 ], [ %i.o, %vec.epilog.vector.body109 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index110
  %wide.load113 = load <4 x i8>, ptr %i.n, align 1, !tbaa !16 ; 2 uses
  %i.o = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load113, <4 x i8> %vec.phi112) ; 2 uses
  %i.p = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load113, <4 x i8> %vec.phi111) ; 2 uses
  %index.next114 = add nuw i64 %index110, 4       ; 2 uses
  %i.q = icmp eq i64 %index.next114, %n.vec104
  br i1 %i.q, label %vec.epilog.middle.block115, label %vec.epilog.vector.body109, !llvm.loop !116

vec.epilog.middle.block115:                       ; preds = %vec.epilog.vector.body109
  %i.r = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.p) ; 2 uses
  %i.s = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.o) ; 2 uses
  %cmp.n116 = icmp eq i64 %1, %n.vec104
  br i1 %cmp.n116, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check99, %vec.epilog.iter.check101, %vec.epilog.middle.block115
  %.022.i.ph = phi i64 [ 0, %iter.check99 ], [ %n.vec82, %vec.epilog.iter.check101 ], [ %n.vec104, %vec.epilog.middle.block115 ]
  %.01521.i.ph = phi i8 [ 0, %iter.check99 ], [ %i.l, %vec.epilog.iter.check101 ], [ %i.r, %vec.epilog.middle.block115 ]
  %.01620.i.ph = phi i8 [ -1, %iter.check99 ], [ %i.m, %vec.epilog.iter.check101 ], [ %i.s, %vec.epilog.middle.block115 ]
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %vec.epilog.middle.block115, %middle.block92
  %spec.select19.i.lcssa = phi i8 [ %i.s, %vec.epilog.middle.block115 ], [ %i.m, %middle.block92 ], [ %spec.select19.i, %.lr.ph.i ]
  %.1.i.lcssa = phi i8 [ %i.r, %vec.epilog.middle.block115 ], [ %i.l, %middle.block92 ], [ %.1.i, %.lr.ph.i ]
  %i.t = zext i8 %spec.select19.i.lcssa to i64
  %i.u = zext i8 %.1.i.lcssa to i64
  br label %ZL_computeUnsignedRange8.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.022.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01521.i = phi i8 [ %.1.i, %.lr.ph.i ], [ %.01521.i.ph, %.lr.ph.i.preheader ]
  %.01620.i = phi i8 [ %spec.select19.i, %.lr.ph.i ], [ %.01620.i.ph, %.lr.ph.i.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.022.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16    ; 2 uses
  %spec.select19.i = tail call i8 @llvm.umin.i8(i8 %i.w, i8 %.01620.i) ; 2 uses
  %.1.i = tail call i8 @llvm.umax.i8(i8 %i.w, i8 %.01521.i) ; 2 uses
  %i.x = add nuw i64 %.022.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %1
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !117

bb.c:                                             ; preds = %.split
  %.not.i8 = icmp eq i64 %1, 0
  br i1 %.not.i8, label %ZL_computeUnsignedRange8.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check46 = icmp ult i64 %1, 4
  br i1 %min.iters.check46, label %.lr.ph.i9.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %1, 16
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph48

vector.ph48:                                      ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %1, 12
  %n.vec49 = and i64 %1, -16                      ; 4 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.ph48, %vector.body50
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next58, %vector.body50 ] ; 2 uses
  %vec.phi52 = phi <8 x i16> [ zeroinitializer, %vector.ph48 ], [ %i.ad, %vector.body50 ]
  %vec.phi53 = phi <8 x i16> [ zeroinitializer, %vector.ph48 ], [ %i.ae, %vector.body50 ]
  %vec.phi54 = phi <8 x i16> [ splat (i16 -1), %vector.ph48 ], [ %i.ab, %vector.body50 ]
  %vec.phi55 = phi <8 x i16> [ splat (i16 -1), %vector.ph48 ], [ %i.ac, %vector.body50 ]
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index51 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load56 = load <8 x i16>, ptr %i.z, align 2, !tbaa !19 ; 2 uses
  %wide.load57 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !19 ; 2 uses
  %i.ab = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load56, <8 x i16> %vec.phi54) ; 2 uses
  %i.ac = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load57, <8 x i16> %vec.phi55) ; 2 uses
  %i.ad = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load56, <8 x i16> %vec.phi52) ; 2 uses
  %i.ae = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load57, <8 x i16> %vec.phi53) ; 2 uses
  %index.next58 = add nuw i64 %index51, 16        ; 2 uses
  %i.af = icmp eq i64 %index.next58, %n.vec49
  br i1 %i.af, label %middle.block59, label %vector.body50, !llvm.loop !118

middle.block59:                                   ; preds = %vector.body50
  %rdx.minmax60 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ad, <8 x i16> %i.ae)
  %i.ag = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax60) ; 3 uses
  %rdx.minmax61 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ab, <8 x i16> %i.ac)
  %i.ah = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax61) ; 3 uses
  %cmp.n62 = icmp eq i64 %1, %n.vec49
  br i1 %cmp.n62, label %._crit_edge.loopexit.i16, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block59
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i9.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec49, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx63 = phi i16 [ %i.ag, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx64 = phi i16 [ %i.ah, %vec.epilog.iter.check ], [ -1, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %1, -4                       ; 3 uses
  %broadcast.splatinsert.a = insertelement <4 x i16> poison, i16 %bc.merge.rdx63, i64 0
  %broadcast.splat.a = shufflevector <4 x i16> %broadcast.splatinsert.a, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <4 x i16> poison, i16 %bc.merge.rdx64, i64 0
  %broadcast.splat67 = shufflevector <4 x i16> %broadcast.splatinsert66, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi69 = phi <4 x i16> [ %broadcast.splat.a, %vec.epilog.ph ], [ %i.ak, %vec.epilog.vector.body ]
  %vec.phi70 = phi <4 x i16> [ %broadcast.splat67, %vec.epilog.ph ], [ %i.aj, %vec.epilog.vector.body ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index68
  %wide.load71 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !19 ; 2 uses
  %i.aj = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load71, <4 x i16> %vec.phi70) ; 2 uses
  %i.ak = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load71, <4 x i16> %vec.phi69) ; 2 uses
  %index.next72 = add nuw i64 %index68, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.am = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ak) ; 2 uses
  %i.an = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.aj) ; 2 uses
  %cmp.n73 = icmp eq i64 %1, %n.vec65
  br i1 %cmp.n73, label %._crit_edge.loopexit.i16, label %.lr.ph.i9.preheader

.lr.ph.i9.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i10.ph = phi i64 [ 0, %iter.check ], [ %n.vec49, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  %.01521.i11.ph = phi i16 [ 0, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.01620.i12.ph = phi i16 [ -1, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i9

._crit_edge.loopexit.i16:                         ; preds = %.lr.ph.i9, %vec.epilog.middle.block, %middle.block59
  %spec.select19.i13.lcssa = phi i16 [ %i.an, %vec.epilog.middle.block ], [ %i.ah, %middle.block59 ], [ %spec.select19.i13, %.lr.ph.i9 ]
  %.1.i14.lcssa = phi i16 [ %i.am, %vec.epilog.middle.block ], [ %i.ag, %middle.block59 ], [ %.1.i14, %.lr.ph.i9 ]
  %i.ao = zext i16 %spec.select19.i13.lcssa to i64
  %i.ap = zext i16 %.1.i14.lcssa to i64
  br label %ZL_computeUnsignedRange8.exit

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.preheader, %.lr.ph.i9
  %.022.i10 = phi i64 [ %i.as, %.lr.ph.i9 ], [ %.022.i10.ph, %.lr.ph.i9.preheader ] ; 2 uses
  %.01521.i11 = phi i16 [ %.1.i14, %.lr.ph.i9 ], [ %.01521.i11.ph, %.lr.ph.i9.preheader ]
  %.01620.i12 = phi i16 [ %spec.select19.i13, %.lr.ph.i9 ], [ %.01620.i12.ph, %.lr.ph.i9.preheader ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.022.i10
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !19 ; 2 uses
  %spec.select19.i13 = tail call i16 @llvm.umin.i16(i16 %i.ar, i16 %.01620.i12) ; 2 uses
  %.1.i14 = tail call i16 @llvm.umax.i16(i16 %i.ar, i16 %.01521.i11) ; 2 uses
  %i.as = add nuw i64 %.022.i10, 1                ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %i.as, %1
  br i1 %exitcond.not.i15, label %._crit_edge.loopexit.i16, label %.lr.ph.i9, !llvm.loop !120

bb.d:                                             ; preds = %.split
  %.not.i20 = icmp eq i64 %1, 0
  br i1 %.not.i20, label %ZL_computeUnsignedRange8.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %bb.d
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i21.preheader135, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i21.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi41 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.aw, %vector.body ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !22 ; 2 uses
  %wide.load42 = load <4 x i32>, ptr %i.au, align 4, !tbaa !22 ; 2 uses
  %i.av = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi40) ; 2 uses
  %i.aw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load42, <4 x i32> %vec.phi41) ; 2 uses
  %i.ax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load42, <4 x i32> %vec.phi39) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.ba = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax43 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.av, <4 x i32> %i.aw)
  %i.bb = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax43) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i24, label %.lr.ph.i21.preheader135

.lr.ph.i21.preheader135:                          ; preds = %.lr.ph.i21.preheader, %middle.block
  %.024.i.ph = phi i64 [ 0, %.lr.ph.i21.preheader ], [ %n.vec, %middle.block ]
  %.01523.i.ph = phi i32 [ 0, %.lr.ph.i21.preheader ], [ %i.ba, %middle.block ]
  %.01622.i.ph = phi i32 [ -1, %.lr.ph.i21.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i21

._crit_edge.loopexit.i24:                         ; preds = %.lr.ph.i21, %middle.block
  %spec.select21.i.lcssa = phi i32 [ %i.bb, %middle.block ], [ %spec.select21.i, %.lr.ph.i21 ]
  %.1.i22.lcssa = phi i32 [ %i.ba, %middle.block ], [ %.1.i22, %.lr.ph.i21 ]
  %i.bc = zext i32 %spec.select21.i.lcssa to i64
  %i.bd = zext i32 %.1.i22.lcssa to i64
  br label %ZL_computeUnsignedRange8.exit

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader135, %.lr.ph.i21
  %.024.i = phi i64 [ %i.bg, %.lr.ph.i21 ], [ %.024.i.ph, %.lr.ph.i21.preheader135 ] ; 2 uses
  %.01523.i = phi i32 [ %.1.i22, %.lr.ph.i21 ], [ %.01523.i.ph, %.lr.ph.i21.preheader135 ]
  %.01622.i = phi i32 [ %spec.select21.i, %.lr.ph.i21 ], [ %.01622.i.ph, %.lr.ph.i21.preheader135 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.024.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22 ; 2 uses
  %spec.select21.i = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %.01622.i) ; 2 uses
  %.1.i22 = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 %.01523.i) ; 2 uses
  %i.bg = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %i.bg, %1
  br i1 %exitcond.not.i23, label %._crit_edge.loopexit.i24, label %.lr.ph.i21, !llvm.loop !122

bb.e:                                             ; preds = %.split
  %.not.i28 = icmp eq i64 %1, 0
  br i1 %.not.i28, label %ZL_computeUnsignedRange8.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.e
  %i.bh = add i64 %1, -1
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %.lr.ph.i29.epil.preheader, label %.lr.ph.i29.preheader.new

.lr.ph.i29.preheader.new:                         ; preds = %.lr.ph.i29.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29, %.lr.ph.i29.preheader.new
  %.024.i30 = phi i64 [ 0, %.lr.ph.i29.preheader.new ], [ %i.bu, %.lr.ph.i29 ] ; 5 uses
  %.01523.i31 = phi i64 [ 0, %.lr.ph.i29.preheader.new ], [ %.1.i34.3, %.lr.ph.i29 ]
  %.01622.i32 = phi i64 [ -1, %.lr.ph.i29.preheader.new ], [ %spec.select21.i33.3, %.lr.ph.i29 ]
  %niter = phi i64 [ 0, %.lr.ph.i29.preheader.new ], [ %niter.next.3, %.lr.ph.i29 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024.i30
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24 ; 2 uses
  %spec.select21.i33 = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %.01622.i32)
  %.1.i34 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %.01523.i31)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024.i30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24 ; 2 uses
  %spec.select21.i33.1 = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %spec.select21.i33)
  %.1.i34.1 = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %.1.i34)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024.i30
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !24 ; 2 uses
  %spec.select21.i33.2 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %spec.select21.i33.1)
  %.1.i34.2 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %.1.i34.1)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024.i30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !24 ; 2 uses
  %spec.select21.i33.3 = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %spec.select21.i33.2) ; 3 uses
  %.1.i34.3 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %.1.i34.2) ; 3 uses
  %i.bu = add nuw i64 %.024.i30, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa, label %.lr.ph.i29, !llvm.loop !0

ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i29
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZL_computeUnsignedRange8.exit, label %.lr.ph.i29.epil.preheader

.lr.ph.i29.epil.preheader:                        ; preds = %ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa, %.lr.ph.i29.preheader
  %.024.i30.epil.init = phi i64 [ 0, %.lr.ph.i29.preheader ], [ %i.bu, %ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa ]
  %.01523.i31.epil.init = phi i64 [ 0, %.lr.ph.i29.preheader ], [ %.1.i34.3, %ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa ]
  %.01622.i32.epil.init = phi i64 [ -1, %.lr.ph.i29.preheader ], [ %spec.select21.i33.3, %ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i29.epil

.lr.ph.i29.epil:                                  ; preds = %.lr.ph.i29.epil, %.lr.ph.i29.epil.preheader
  %.024.i30.epil = phi i64 [ %i.bx, %.lr.ph.i29.epil ], [ %.024.i30.epil.init, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %.01523.i31.epil = phi i64 [ %.1.i34.epil, %.lr.ph.i29.epil ], [ %.01523.i31.epil.init, %.lr.ph.i29.epil.preheader ]
  %.01622.i32.epil = phi i64 [ %spec.select21.i33.epil, %.lr.ph.i29.epil ], [ %.01622.i32.epil.init, %.lr.ph.i29.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i29.epil ], [ 0, %.lr.ph.i29.epil.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024.i30.epil
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24 ; 2 uses
  %spec.select21.i33.epil = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %.01622.i32.epil) ; 2 uses
  %.1.i34.epil = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %.01523.i31.epil) ; 2 uses
  %i.bx = add nuw i64 %.024.i30.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZL_computeUnsignedRange8.exit, label %.lr.ph.i29.epil, !llvm.loop !123

ZL_computeUnsignedRange8.exit:                    ; preds = %ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa, %.lr.ph.i29.epil, %bb.e, %._crit_edge.loopexit.i24, %bb.d, %._crit_edge.loopexit.i16, %bb.c, %._crit_edge.loopexit.i, %bb.b, %.split, %bb.a
  %.sroa.0.0 = phi i64 [ %i.bc, %._crit_edge.loopexit.i24 ], [ 0, %.split ], [ %i.t, %._crit_edge.loopexit.i ], [ %i.ao, %._crit_edge.loopexit.i16 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %spec.select21.i33.3, %ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa ], [ %spec.select21.i33.epil, %.lr.ph.i29.epil ]
  %.sroa.6.0 = phi i64 [ %i.bd, %._crit_edge.loopexit.i24 ], [ 0, %.split ], [ %i.u, %._crit_edge.loopexit.i ], [ %i.ap, %._crit_edge.loopexit.i16 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %.1.i34.3, %ZL_computeUnsignedRange8.exit.loopexit.unr-lcssa ], [ %.1.i34.epil, %.lr.ph.i29.epil ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { i64, i64 } @ZL_computeUnsignedRange8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %1, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.a = and i64 %1, 28
  %n.vec = and i64 %1, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi25 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi26 = phi <16 x i8> [ splat (i8 -1), %vector.ph ], [ %i.d, %vector.body ]
  %vec.phi27 = phi <16 x i8> [ splat (i8 -1), %vector.ph ], [ %i.e, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <16 x i8>, ptr %i.b, align 1, !tbaa !16 ; 2 uses
  %wide.load28 = load <16 x i8>, ptr %i.c, align 1, !tbaa !16 ; 2 uses
  %i.d = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi26) ; 2 uses
  %i.e = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load28, <16 x i8> %vec.phi27) ; 2 uses
  %i.f = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.g = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load28, <16 x i8> %vec.phi25) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.f, <16 x i8> %i.g)
  %i.i = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax29 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.d, <16 x i8> %i.e)
  %i.j = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax29) ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.a, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx30 = phi i8 [ %i.j, %vec.epilog.iter.check ], [ -1, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %1, -4                       ; 3 uses
  %broadcast.splatinsert.a = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat.a = shufflevector <4 x i8> %broadcast.splatinsert.a, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <4 x i8> poison, i8 %bc.merge.rdx30, i64 0
  %broadcast.splat33 = shufflevector <4 x i8> %broadcast.splatinsert32, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <4 x i8> [ %broadcast.splat.a, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %vec.phi36 = phi <4 x i8> [ %broadcast.splat33, %vec.epilog.ph ], [ %i.l, %vec.epilog.vector.body ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index34
  %wide.load37 = load <4 x i8>, ptr %i.k, align 1, !tbaa !16 ; 2 uses
  %i.l = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load37, <4 x i8> %vec.phi36) ; 2 uses
  %i.m = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load37, <4 x i8> %vec.phi35) ; 2 uses
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.m) ; 2 uses
  %i.p = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.l) ; 2 uses
  %cmp.n39 = icmp eq i64 %1, %n.vec31
  br i1 %cmp.n39, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  %.01521.ph = phi i8 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  %.01620.ph = phi i8 [ -1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select19.lcssa = phi i8 [ %i.p, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %spec.select19, %.lr.ph ]
  %.1.lcssa = phi i8 [ %i.o, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.1, %.lr.ph ]
  %i.q = zext i8 %spec.select19.lcssa to i64
  %i.r = zext i8 %.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.s = phi i64 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %._crit_edge.loopexit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.s, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.015.lcssa, 1
  ret { i64, i64 } %.fca.1.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022 = phi i64 [ %i.v, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader ] ; 2 uses
  %.01521 = phi i8 [ %.1, %.lr.ph ], [ %.01521.ph, %.lr.ph.preheader ]
  %.01620 = phi i8 [ %spec.select19, %.lr.ph ], [ %.01620.ph, %.lr.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.022
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %spec.select19 = tail call i8 @llvm.umin.i8(i8 %i.u, i8 %.01620) ; 2 uses
  %.1 = tail call i8 @llvm.umax.i8(i8 %i.u, i8 %.01521) ; 2 uses
  %i.v = add nuw i64 %.022, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !126
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { i64, i64 } @ZL_computeUnsignedRange16(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %1, 16
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.a = and i64 %1, 12
  %n.vec = and i64 %1, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi25 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi26 = phi <8 x i16> [ splat (i16 -1), %vector.ph ], [ %i.d, %vector.body ]
  %vec.phi27 = phi <8 x i16> [ splat (i16 -1), %vector.ph ], [ %i.e, %vector.body ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <8 x i16>, ptr %i.b, align 2, !tbaa !19 ; 2 uses
  %wide.load28 = load <8 x i16>, ptr %i.c, align 2, !tbaa !19 ; 2 uses
  %i.d = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi26) ; 2 uses
  %i.e = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load28, <8 x i16> %vec.phi27) ; 2 uses
  %i.f = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.g = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load28, <8 x i16> %vec.phi25) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.f, <8 x i16> %i.g)
  %i.i = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %rdx.minmax29 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.d, <8 x i16> %i.e)
  %i.j = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax29) ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.a, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.i, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx30 = phi i16 [ %i.j, %vec.epilog.iter.check ], [ -1, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %1, -4                       ; 3 uses
  %broadcast.splatinsert.a = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat.a = shufflevector <4 x i16> %broadcast.splatinsert.a, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <4 x i16> poison, i16 %bc.merge.rdx30, i64 0
  %broadcast.splat33 = shufflevector <4 x i16> %broadcast.splatinsert32, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <4 x i16> [ %broadcast.splat.a, %vec.epilog.ph ], [ %i.m, %vec.epilog.vector.body ]
  %vec.phi36 = phi <4 x i16> [ %broadcast.splat33, %vec.epilog.ph ], [ %i.l, %vec.epilog.vector.body ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index34
  %wide.load37 = load <4 x i16>, ptr %i.k, align 2, !tbaa !19 ; 2 uses
  %i.l = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load37, <4 x i16> %vec.phi36) ; 2 uses
  %i.m = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load37, <4 x i16> %vec.phi35) ; 2 uses
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.m) ; 2 uses
  %i.p = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.l) ; 2 uses
  %cmp.n39 = icmp eq i64 %1, %n.vec31
  br i1 %cmp.n39, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  %.01521.ph = phi i16 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  %.01620.ph = phi i16 [ -1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select19.lcssa = phi i16 [ %i.p, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %spec.select19, %.lr.ph ]
  %.1.lcssa = phi i16 [ %i.o, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.1, %.lr.ph ]
  %i.q = zext i16 %spec.select19.lcssa to i64
  %i.r = zext i16 %.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.s = phi i64 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %._crit_edge.loopexit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.s, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.015.lcssa, 1
  ret { i64, i64 } %.fca.1.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022 = phi i64 [ %i.v, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader ] ; 2 uses
  %.01521 = phi i16 [ %.1, %.lr.ph ], [ %.01521.ph, %.lr.ph.preheader ]
  %.01620 = phi i16 [ %spec.select19, %.lr.ph ], [ %.01620.ph, %.lr.ph.preheader ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.022
  %i.u = load i16, ptr %i.t, align 2, !tbaa !19   ; 2 uses
  %spec.select19 = tail call i16 @llvm.umin.i16(i16 %i.u, i16 %.01620) ; 2 uses
  %.1 = tail call i16 @llvm.umax.i16(i16 %i.u, i16 %.01521) ; 2 uses
  %i.v = add nuw i64 %.022, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !129
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { i64, i64 } @ZL_computeUnsignedRange32(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi26 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi27 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.c, %vector.body ]
  %vec.phi28 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.d, %vector.body ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <4 x i32>, ptr %i.a, align 4, !tbaa !22 ; 2 uses
  %wide.load29 = load <4 x i32>, ptr %i.b, align 4, !tbaa !22 ; 2 uses
  %i.c = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi27) ; 2 uses
  %i.d = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load29, <4 x i32> %vec.phi28) ; 2 uses
  %i.e = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.f = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load29, <4 x i32> %vec.phi26) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.e, <4 x i32> %i.f)
  %i.h = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax30 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.c, <4 x i32> %i.d)
  %i.i = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax30) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %.lr.ph.preheader, %middle.block
  %.024.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01523.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  %.01622.ph = phi i32 [ -1, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %spec.select21.lcssa = phi i32 [ %i.i, %middle.block ], [ %spec.select21, %.lr.ph ]
  %.1.lcssa = phi i32 [ %i.h, %middle.block ], [ %.1, %.lr.ph ]
  %i.j = zext i32 %spec.select21.lcssa to i64
  %i.k = zext i32 %.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi i64 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.l, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.015.lcssa, 1
  ret { i64, i64 } %.fca.1.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader32, %.lr.ph
  %.024 = phi i64 [ %i.o, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader32 ] ; 2 uses
  %.01523 = phi i32 [ %.1, %.lr.ph ], [ %.01523.ph, %.lr.ph.preheader32 ]
  %.01622 = phi i32 [ %spec.select21, %.lr.ph ], [ %.01622.ph, %.lr.ph.preheader32 ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.024
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22   ; 2 uses
  %spec.select21 = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %.01622) ; 2 uses
  %.1 = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %.01523) ; 2 uses
  %i.o = add nuw i64 %.024, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !131
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { i64, i64 } @ZL_computeUnsignedRange64(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ]
  %.01523.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ]
  %.01622.epil.init = phi i64 [ -1, %.lr.ph.preheader ], [ %spec.select21.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.024.epil = phi i64 [ %i.d, %.lr.ph.epil ], [ %.024.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01523.epil = phi i64 [ %.1.epil, %.lr.ph.epil ], [ %.01523.epil.init, %.lr.ph.epil.preheader ]
  %.01622.epil = phi i64 [ %spec.select21.epil, %.lr.ph.epil ], [ %.01622.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024.epil
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %spec.select21.epil = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %.01622.epil) ; 2 uses
  %.1.epil = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %.01523.epil) ; 2 uses
  %i.d = add nuw i64 %.024.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !132

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %spec.select = phi i64 [ 0, %bb.a ], [ %spec.select21.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select21.epil, %.lr.ph.epil ]
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %spec.select, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.015.lcssa, 1
  ret { i64, i64 } %.fca.1.insert

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ] ; 5 uses
  %.01523 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.1.3, %.lr.ph ]
  %.01622 = phi i64 [ -1, %.lr.ph.preheader.new ], [ %spec.select21.3, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %spec.select21 = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %.01622)
  %.1 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.01523)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %spec.select21.1 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %spec.select21)
  %.1.1 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %.1)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %spec.select21.2 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %spec.select21.1)
  %.1.2 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %.1.1)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.024
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %spec.select21.3 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %spec.select21.2) ; 3 uses
  %.1.3 = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %.1.2) ; 3 uses
  %i.p = add nuw i64 %.024, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: nounwind uwtable
define void @ZL_estimateDimensionality(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ZL_DimensionalityEstimate) align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
end_hunk_0
