Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colormap?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 28
begin_hunk_0_@colormap_slice:bb.a
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0129151.us, i64 %indvars.iv170
  %i.hm = extractelement <2 x float> %i.hj, i64 0
  store float %i.hm, ptr %i.hl, align 4, !tbaa !40
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.0128153.us, i64 %indvars.iv170
  %i.ho = extractelement <2 x float> %i.hj, i64 1
  store float %i.ho, ptr %i.hn, align 4, !tbaa !40
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.0127155.us, i64 %indvars.iv170
  store float %i.hk, ptr %i.hp, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge143.split.us.us, label %.lr.ph.us.us, !llvm.loop !106

._crit_edge143.split.us.us:                       ; preds = %._crit_edge.split.us.us
  %i.hq = getelementptr inbounds [4 x i8], ptr %.0131147.us, i64 %i.ck
  %i.hr = getelementptr inbounds [4 x i8], ptr %.0128153.us, i64 %i.cl
  %i.hs = getelementptr inbounds [4 x i8], ptr %.0130149.us, i64 %i.cm
  %i.ht = getelementptr inbounds [4 x i8], ptr %.0127155.us, i64 %i.cn
  %i.hu = getelementptr inbounds [4 x i8], ptr %.0132145.us, i64 %i.co
  %i.hv = getelementptr inbounds [4 x i8], ptr %.0129151.us, i64 %i.cp
  %i.hw = add nsw i32 %.0126157.us, 1             ; 2 uses
  %exitcond175.not = icmp eq i32 %i.hw, %i.w
  br i1 %exitcond175.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !107

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge143.split
  %.0126157 = phi i32 [ %i.ji, %._crit_edge143.split ], [ %i.r, %.preheader.preheader ]
  %.0127155 = phi ptr [ %i.jf, %._crit_edge143.split ], [ %i.bp, %.preheader.preheader ] ; 3 uses
  %.0128153 = phi ptr [ %i.jd, %._crit_edge143.split ], [ %i.bj, %.preheader.preheader ] ; 3 uses
  %.0129151 = phi ptr [ %i.jh, %._crit_edge143.split ], [ %i.be, %.preheader.preheader ] ; 3 uses
  %.0130149 = phi ptr [ %i.je, %._crit_edge143.split ], [ %i.az, %.preheader.preheader ] ; 3 uses
  %.0131147 = phi ptr [ %i.jc, %._crit_edge143.split ], [ %i.au, %.preheader.preheader ] ; 3 uses
  %.0132145 = phi ptr [ %i.jg, %._crit_edge143.split ], [ %i.aq, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx346
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.hx = load float, ptr %i.bt, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert321 = insertelement <4 x float> poison, float %i.hx, i64 0
  %broadcast.splat322 = shufflevector <4 x float> %broadcast.splatinsert321, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = load float, ptr %i.bu, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hy, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = load float, ptr %i.bv, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert323 = insertelement <4 x float> poison, float %i.hz, i64 0
  %broadcast.splat324 = shufflevector <4 x float> %broadcast.splatinsert323, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0132145, i64 %index
  %wide.load = load <4 x float>, ptr %i.ia, align 4, !tbaa !40, !alias.scope !119 ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0131147, i64 %index
  %wide.load319 = load <4 x float>, ptr %i.ib, align 4, !tbaa !40, !alias.scope !120 ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.0130149, i64 %index
  %wide.load320 = load <4 x float>, ptr %i.ic, align 4, !tbaa !40, !alias.scope !121 ; 3 uses
  %i.id = load float, ptr %i.bs, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert325 = insertelement <4 x float> poison, float %i.id, i64 0
  %broadcast.splat326 = shufflevector <4 x float> %broadcast.splatinsert325, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ie = load float, ptr %i.ca, align 4, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert333 = insertelement <4 x float> poison, float %i.ie, i64 0
  %broadcast.splat334 = shufflevector <4 x float> %broadcast.splatinsert333, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = load float, ptr %i.cb, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert341 = insertelement <4 x float> poison, float %i.if, i64 0
  %broadcast.splat342 = shufflevector <4 x float> %broadcast.splatinsert341, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ig = fmul nsz <4 x float> %wide.load319, %broadcast.splat
  %i.ih = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %wide.load, <4 x float> %i.ig)
  %i.ii = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> %wide.load320, <4 x float> %i.ih)
  %i.ij = fadd nsz <4 x float> %broadcast.splat326, %i.ii
  %i.ik = load float, ptr %i.cc, align 4, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert329 = insertelement <4 x float> poison, float %i.ik, i64 0
  %broadcast.splat330 = shufflevector <4 x float> %broadcast.splatinsert329, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = load float, ptr %i.cd, align 4, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.il, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer
  %i.im = fmul nsz <4 x float> %wide.load319, %broadcast.splat328
  %i.in = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %wide.load, <4 x float> %i.im)
  %i.io = load float, ptr %i.ce, align 4, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert331 = insertelement <4 x float> poison, float %i.io, i64 0
  %broadcast.splat332 = shufflevector <4 x float> %broadcast.splatinsert331, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ip = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat332, <4 x float> %wide.load320, <4 x float> %i.in)
  %i.iq = fadd nsz <4 x float> %broadcast.splat334, %i.ip
  %i.ir = load float, ptr %i.cf, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert337 = insertelement <4 x float> poison, float %i.ir, i64 0
  %broadcast.splat338 = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = load float, ptr %i.cg, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert335 = insertelement <4 x float> poison, float %i.is, i64 0
  %broadcast.splat336 = shufflevector <4 x float> %broadcast.splatinsert335, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fmul nsz <4 x float> %wide.load319, %broadcast.splat336
  %i.iu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat338, <4 x float> %wide.load, <4 x float> %i.it)
  %i.iv = load float, ptr %i.ch, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert339 = insertelement <4 x float> poison, float %i.iv, i64 0
  %broadcast.splat340 = shufflevector <4 x float> %broadcast.splatinsert339, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat340, <4 x float> %wide.load320, <4 x float> %i.iu)
  %i.ix = fadd nsz <4 x float> %broadcast.splat342, %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0129151, i64 %index
  store <4 x float> %i.ij, ptr %i.iy, align 4, !tbaa !40, !alias.scope !122, !noalias !123
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.0128153, i64 %index
  store <4 x float> %i.iq, ptr %i.iz, align 4, !tbaa !40, !alias.scope !124, !noalias !125
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0127155, i64 %index
  store <4 x float> %i.ix, ptr %i.ja, align 4, !tbaa !40, !alias.scope !126, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge143.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge.split:                                ; preds = %._crit_edge143.split, %._crit_edge143.split.us.us, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge143.split:                             ; preds = %scalar.ph, %middle.block
  %i.jc = getelementptr inbounds [4 x i8], ptr %.0131147, i64 %i.ck
  %i.jd = getelementptr inbounds [4 x i8], ptr %.0128153, i64 %i.cl
  %i.je = getelementptr inbounds [4 x i8], ptr %.0130149, i64 %i.cm
  %i.jf = getelementptr inbounds [4 x i8], ptr %.0127155, i64 %i.cn
  %i.jg = getelementptr inbounds [4 x i8], ptr %.0132145, i64 %i.co
  %i.jh = getelementptr inbounds [4 x i8], ptr %.0129151, i64 %i.cp
  %i.ji = add nsw i32 %.0126157, 1                ; 2 uses
  %exitcond164.not = icmp eq i32 %i.ji, %i.w
  br i1 %exitcond164.not, label %._crit_edge.split, label %.preheader, !llvm.loop !107

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0132145, i64 %indvars.iv
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !40 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0131147, i64 %indvars.iv
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !40 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0130149, i64 %indvars.iv
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !40 ; 2 uses
  %i.jp = load float, ptr %i.bs, align 8, !tbaa !40
  %i.jq = load float, ptr %i.bt, align 8, !tbaa !40
  %i.jr = load float, ptr %i.bu, align 8, !tbaa !40
  %i.js = fmul nsz float %i.jm, %i.jr
  %i.jt = tail call nsz float @llvm.fmuladd.f32(float %i.jq, float %i.jk, float %i.js)
  %i.ju = load float, ptr %i.bv, align 8, !tbaa !40
  %i.jv = tail call nsz float @llvm.fmuladd.f32(float %i.ju, float %i.jo, float %i.jt)
  %i.jw = fadd nsz float %i.jp, %i.jv
  %i.jx = load <2 x float>, ptr %i.cd, align 4, !tbaa !40
  %i.jy = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = fmul nsz <2 x float> %i.jz, %i.jx
  %i.kb = load <2 x float>, ptr %i.ca, align 4, !tbaa !40
  %i.kc = load <2 x float>, ptr %i.cc, align 4, !tbaa !40
  %i.kd = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.ke, <2 x float> %i.ka)
  %i.kg = load <2 x float>, ptr %i.ce, align 4, !tbaa !40
  %i.kh = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> %i.ki, <2 x float> %i.kf)
  %i.kk = fadd nsz <2 x float> %i.kb, %i.kj       ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.0129151, i64 %indvars.iv
  store float %i.jw, ptr %i.kl, align 4, !tbaa !40
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.0128153, i64 %indvars.iv
  %i.kn = extractelement <2 x float> %i.kk, i64 0
  store float %i.kn, ptr %i.km, align 4, !tbaa !40
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.0127155, i64 %indvars.iv
  %i.kp = extractelement <2 x float> %i.kk, i64 1
  store float %i.kp, ptr %i.ko, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count173
  br i1 %exitcond.not, label %._crit_edge143.split, label %scalar.ph, !llvm.loop !117
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #7

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @gauss_make_triangular(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 -2147483644, -2147483648) %2) unnamed_addr #9 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  store i32 %i.a, ptr %i.c, align 4, !tbaa !31
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph125.preheader, label %.critedge

.lr.ph125.preheader:                              ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64                  ; 26 uses
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  %i.g = add nuw i32 %2, 1
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.h   ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, %i.e
  %i.j = shl i64 %i.i, 3
  %scevgep188 = getelementptr i8, ptr %0, i64 %i.j
  %i.k = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %i.l = add nsw i64 %i.e, -2                     ; 2 uses
  %i.m = add nsw i64 %i.e, -1
  %i.n = add nsw i64 %i.e, -1
  br label %.lr.ph125

.loopexit:                                        ; preds = %._crit_edge121, %.preheader111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %i.e
  br i1 %exitcond156.not, label %.critedge, label %.lr.ph125, !llvm.loop !128

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.loopexit
  %indvars.iv152 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next153, %.loopexit ] ; 21 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next, %.loopexit ] ; 15 uses
  %i.o = xor i64 %indvars.iv152, -1
  %i.p = add nsw i64 %i.o, %i.e                   ; 2 uses
  %i.q = sub i64 %i.l, %indvars.iv152
  %i.r = trunc i64 %indvars.iv152 to i32
  %i.s = mul i32 %2, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %scevgep183 = getelementptr i8, ptr %scevgep, i64 %i.u
  %i.v = shl nuw nsw i64 %indvars.iv152, 3
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %scevgep184 = getelementptr i8, ptr %i.w, i64 8
  %scevgep185 = getelementptr i8, ptr %scevgep184, i64 %i.u
  %3 = add nuw i64 %indvars.iv152, 1
  %i.x = mul i64 %i.k, %3
  %scevgep189 = getelementptr i8, ptr %0, i64 %i.x
  %indvars154 = trunc i64 %indvars.iv152 to i32   ; 5 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 3 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next153, %i.f ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph125
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152 ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %0, i64 %indvars.iv152 ; 3 uses
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = mul nuw nsw i64 %indvars.iv, %i.e
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.aa
  %i.ab = load double, ptr %gep.prol, align 8, !tbaa !44
  %i.ac = tail call nsz double @llvm.fabs.f64(double %i.ab)
  %i.ad = mul nsw i32 %2, %indvars154
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !44
  %i.ah = tail call nsz double @llvm.fabs.f64(double %i.ag)
  %i.ai = fcmp nsz ogt double %i.ac, %i.ah
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.prol = select i1 %i.ai, i32 %i.aj, i32 %indvars154 ; 2 uses
  %indvars.iv.next130.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %indvars.iv129.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next130.prol, %.lr.ph.prol ]
  %.0100112.unr = phi i32 [ %indvars154, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.ak = icmp eq i64 %i.l, %indvars.iv152
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph125
  %.0100.lcssa = phi i32 [ %indvars154, %.lr.ph125 ], [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.1, %.lr.ph ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv152
  store i32 %.0100.lcssa, ptr %i.al, align 4, !tbaa !31
  %i.am = mul nsw i32 %.0100.lcssa, %2
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %indvars.iv152
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !44 ; 3 uses
  %i.ar = mul nuw nsw i64 %indvars.iv152, %i.f    ; 2 uses
  %i.as = mul nuw i32 %i.g, %indvars154
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !44
  store double %i.av, ptr %i.ap, align 8, !tbaa !44
  store double %i.aq, ptr %i.au, align 8, !tbaa !44
  %i.aw = fcmp nsz une double %i.aq, 0.000000e+00
  br i1 %i.aw, label %.preheader111, label %.critedge

.preheader111:                                    ; preds = %._crit_edge
  br i1 %i.y, label %.lr.ph115, label %.loopexit

.lr.ph115:                                        ; preds = %.preheader111
  %i.ax = fneg nsz double %i.aq                   ; 5 uses
  %invariant.gep161 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152 ; 5 uses
  %xtraiter226 = and i64 %i.p, 3                  ; 2 uses
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph115, %.prol.preheader
  %indvars.iv132.prol = phi i64 [ %indvars.iv.next133.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph115 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph115 ]
  %i.ay = mul nuw nsw i64 %indvars.iv132.prol, %i.e
  %gep162.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.ay ; 2 uses
  %i.az = load double, ptr %gep162.prol, align 8, !tbaa !44
  %i.ba = fdiv nsz double %i.az, %i.ax
  store double %i.ba, ptr %gep162.prol, align 8, !tbaa !44
  %indvars.iv.next133.prol = add nuw nsw i64 %indvars.iv132.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter226
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph115
  %indvars.iv132.unr = phi i64 [ %indvars.iv, %.lr.ph115 ], [ %indvars.iv.next133.prol, %.prol.preheader ]
  %i.bb = icmp ult i64 %i.q, 3
  br i1 %i.bb, label %._crit_edge116, label %.lr.ph115.new

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %.lr.ph ], [ %indvars.iv129.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0100112 = phi i32 [ %spec.select.1, %.lr.ph ], [ %.0100112.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bc = mul nuw nsw i64 %indvars.iv129, %i.e
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bc
  %i.bd = load double, ptr %gep, align 8, !tbaa !44
  %i.be = tail call nsz double @llvm.fabs.f64(double %i.bd)
  %i.bf = mul nsw i32 %.0100112, %2
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.z, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !44
  %i.bj = tail call nsz double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp nsz ogt double %i.be, %i.bj
  %i.bl = trunc nuw nsw i64 %indvars.iv129 to i32
  %spec.select = select i1 %i.bk, i32 %i.bl, i32 %.0100112 ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.bm = mul nuw nsw i64 %indvars.iv.next130, %i.e
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bm
  %i.bn = load double, ptr %gep.1, align 8, !tbaa !44
  %i.bo = tail call nsz double @llvm.fabs.f64(double %i.bn)
  %i.bp = mul nsw i32 %spec.select, %2
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [8 x i8], ptr %i.z, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !44
  %i.bt = tail call nsz double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp nsz ogt double %i.bo, %i.bt
  %i.bv = trunc nuw nsw i64 %indvars.iv.next130 to i32
  %spec.select.1 = select i1 %i.bu, i32 %i.bv, i32 %spec.select ; 2 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next130.1, %i.e
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge116:                                   ; preds = %.lr.ph115.new, %.prol.loopexit
  %i.bw = zext i32 %.0100.lcssa to i64
  %.not.not = icmp eq i64 %indvars.iv152, %i.bw
  br i1 %.not.not, label %.preheader.preheader, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %._crit_edge116
  %invariant.gep163 = getelementptr [8 x i8], ptr %0, i64 %i.an ; 4 uses
  %invariant.gep165 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar ; 4 uses
  %i.bx = xor i64 %indvars.iv152, -1
  %i.by = add nsw i64 %i.bx, %i.e                 ; 3 uses
  %min.iters.check208 = icmp ult i64 %i.by, 4
  br i1 %min.iters.check208, label %.lr.ph118.preheader225, label %vector.memcheck209

vector.memcheck209:                               ; preds = %.lr.ph118.preheader
  %i.bz = shl nuw nsw i64 %indvars.iv152, 3
  %i.ca = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.cb = getelementptr i8, ptr %0, i64 %i.bz
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ca
  %i.ce = getelementptr i8, ptr %scevgep, i64 %i.ca
  %i.cf = mul i64 %indvars.iv152, %i.k
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = add nuw i64 %indvars.iv152, 1
  %i.cj = mul i64 %i.h, %i.ci
  %i.ck = getelementptr i8, ptr %0, i64 %i.cj
  %bound0210 = icmp ult ptr %i.cd, %i.ck
  %bound1211 = icmp ult ptr %i.ch, %i.ce
  %found.conflict212 = and i1 %bound0210, %bound1211
  br i1 %found.conflict212, label %.lr.ph118.preheader225, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck209
  %n.vec214 = and i64 %i.by, -4                   ; 3 uses
  %i.cl = add i64 %indvars.iv, %n.vec214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next221, %vector.body215 ] ; 2 uses
  %i.cm = add nuw i64 %indvars.iv, %index216      ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %invariant.gep163, i64 %i.cm ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16     ; 2 uses
  %wide.load217 = load <2 x double>, ptr %i.cn, align 8, !tbaa !44, !alias.scope !144, !noalias !145
  %wide.load218 = load <2 x double>, ptr %i.co, align 8, !tbaa !44, !alias.scope !144, !noalias !145
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep165, i64 %i.cm ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load219 = load <2 x double>, ptr %i.cp, align 8, !tbaa !44, !alias.scope !145
  %wide.load220 = load <2 x double>, ptr %i.cq, align 8, !tbaa !44, !alias.scope !145
  store <2 x double> %wide.load219, ptr %i.cn, align 8, !tbaa !44, !alias.scope !144, !noalias !145
  store <2 x double> %wide.load220, ptr %i.co, align 8, !tbaa !44, !alias.scope !144, !noalias !145
  store <2 x double> %wide.load217, ptr %i.cp, align 8, !tbaa !44, !alias.scope !145
  store <2 x double> %wide.load218, ptr %i.cq, align 8, !tbaa !44, !alias.scope !145
  %index.next221 = add nuw i64 %index216, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next221, %n.vec214
  br i1 %i.cr, label %middle.block222, label %vector.body215, !llvm.loop !134

middle.block222:                                  ; preds = %vector.body215
  %cmp.n223 = icmp eq i64 %i.by, %n.vec214
  br i1 %cmp.n223, label %.preheader.preheader, label %.lr.ph118.preheader225

.lr.ph118.preheader225:                           ; preds = %vector.memcheck209, %.lr.ph118.preheader, %middle.block222
  %indvars.iv137.ph = phi i64 [ %indvars.iv, %vector.memcheck209 ], [ %indvars.iv, %.lr.ph118.preheader ], [ %i.cl, %middle.block222 ] ; 6 uses
  %i.cs = sub i64 %i.e, %indvars.iv137.ph
  %xtraiter228 = and i64 %i.cs, 1
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol

.lr.ph118.prol:                                   ; preds = %.lr.ph118.preheader225
  %gep164.prol = getelementptr [8 x i8], ptr %invariant.gep163, i64 %indvars.iv137.ph ; 2 uses
  %i.ct = load double, ptr %gep164.prol, align 8, !tbaa !44
  %gep166.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep165, i64 %indvars.iv137.ph ; 2 uses
  %i.cu = load double, ptr %gep166.prol, align 8, !tbaa !44
  store double %i.cu, ptr %gep164.prol, align 8, !tbaa !44
  store double %i.ct, ptr %gep166.prol, align 8, !tbaa !44
  %indvars.iv.next138.prol = add nuw nsw i64 %indvars.iv137.ph, 1
  br label %.lr.ph118.prol.loopexit

.lr.ph118.prol.loopexit:                          ; preds = %.lr.ph118.prol, %.lr.ph118.preheader225
  %indvars.iv137.unr = phi i64 [ %indvars.iv137.ph, %.lr.ph118.preheader225 ], [ %indvars.iv.next138.prol, %.lr.ph118.prol ]
  %i.cv = icmp eq i64 %indvars.iv137.ph, %i.m
  br i1 %i.cv, label %.preheader.preheader, label %.lr.ph118

.lr.ph115.new:                                    ; preds = %.prol.loopexit, %.lr.ph115.new
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.3, %.lr.ph115.new ], [ %indvars.iv132.unr, %.prol.loopexit ] ; 5 uses
  %i.cw = mul nuw nsw i64 %indvars.iv132, %i.e
  %gep162 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.cw ; 2 uses
  %i.cx = load double, ptr %gep162, align 8, !tbaa !44
  %i.cy = fdiv nsz double %i.cx, %i.ax
  store double %i.cy, ptr %gep162, align 8, !tbaa !44
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %i.cz = mul nuw nsw i64 %indvars.iv.next133, %i.e
  %gep162.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.cz ; 2 uses
  %i.da = load double, ptr %gep162.1, align 8, !tbaa !44
  %i.db = fdiv nsz double %i.da, %i.ax
  store double %i.db, ptr %gep162.1, align 8, !tbaa !44
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2
  %i.dc = mul nuw nsw i64 %indvars.iv.next133.1, %i.e
  %gep162.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.dc ; 2 uses
  %i.dd = load double, ptr %gep162.2, align 8, !tbaa !44
  %i.de = fdiv nsz double %i.dd, %i.ax
  store double %i.de, ptr %gep162.2, align 8, !tbaa !44
  %indvars.iv.next133.2 = add nuw nsw i64 %indvars.iv132, 3
  %i.df = mul nuw nsw i64 %indvars.iv.next133.2, %i.e
  %gep162.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.df ; 2 uses
  %i.dg = load double, ptr %gep162.3, align 8, !tbaa !44
  %i.dh = fdiv nsz double %i.dg, %i.ax
  store double %i.dh, ptr %gep162.3, align 8, !tbaa !44
  %indvars.iv.next133.3 = add nuw nsw i64 %indvars.iv132, 4 ; 2 uses
  %exitcond136.not.3 = icmp eq i64 %indvars.iv.next133.3, %i.e
  br i1 %exitcond136.not.3, label %._crit_edge116, label %.lr.ph115.new, !llvm.loop !135

.lr.ph118:                                        ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.1, %.lr.ph118 ], [ %indvars.iv137.unr, %.lr.ph118.prol.loopexit ] ; 4 uses
  %gep164 = getelementptr [8 x i8], ptr %invariant.gep163, i64 %indvars.iv137 ; 2 uses
  %i.di = load double, ptr %gep164, align 8, !tbaa !44
  %gep166 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep165, i64 %indvars.iv137 ; 2 uses
  %i.dj = load double, ptr %gep166, align 8, !tbaa !44
  store double %i.dj, ptr %gep164, align 8, !tbaa !44
  store double %i.di, ptr %gep166, align 8, !tbaa !44
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %gep164.1 = getelementptr [8 x i8], ptr %invariant.gep163, i64 %indvars.iv.next138 ; 2 uses
  %i.dk = load double, ptr %gep164.1, align 8, !tbaa !44
  %gep166.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep165, i64 %indvars.iv.next138 ; 2 uses
  %i.dl = load double, ptr %gep166.1, align 8, !tbaa !44
  store double %i.dl, ptr %gep164.1, align 8, !tbaa !44
  store double %i.dk, ptr %gep166.1, align 8, !tbaa !44
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %exitcond141.not.1 = icmp eq i64 %indvars.iv.next138.1, %i.e
  br i1 %exitcond141.not.1, label %.preheader.preheader, label %.lr.ph118, !llvm.loop !136

.preheader.preheader:                             ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118, %middle.block222, %._crit_edge116
  %i.dm = and i64 %i.ar, 4294967295
  %invariant.gep171 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152
  %invariant.gep167 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dm ; 4 uses
  %i.dn = xor i64 %indvars.iv152, -1
  %i.do = add nsw i64 %i.dn, %i.e                 ; 3 uses
  %bound1.a = icmp ult i64 %i.do, 4
  %bound0190 = icmp ult ptr %scevgep189, %scevgep183
  %bound1191 = icmp ult ptr %scevgep185, %scevgep188
  %found.conflict192 = and i1 %bound0190, %bound1191
  %n.vec = and i64 %i.do, -4                      ; 3 uses
  %i.dp = add i64 %indvars.iv, %n.vec
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge121
  %indvars.iv147 = phi i64 [ %indvars.iv, %.preheader.preheader ], [ %indvars.iv.next148, %._crit_edge121 ] ; 2 uses
  %i.dq = mul nuw nsw i64 %indvars.iv147, %i.e    ; 2 uses
  %gep172 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep171, i64 %i.dq ; 4 uses
  %invariant.gep169 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dq ; 4 uses
  %brmerge = select i1 %bound1.a, i1 true, i1 %found.conflict192
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.dr = add nuw i64 %indvars.iv, %index         ; 2 uses
  %4 = load double, ptr %gep172, align 8, !tbaa !44, !alias.scope !146
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep167, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !44, !alias.scope !147
  %wide.load193 = load <2 x double>, ptr %i.dt, align 8, !tbaa !44, !alias.scope !147
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep169, i64 %i.dr ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load194 = load <2 x double>, ptr %i.du, align 8, !tbaa !44, !alias.scope !148, !noalias !147
  %wide.load195 = load <2 x double>, ptr %i.dv, align 8, !tbaa !44, !alias.scope !148, !noalias !147
  %i.dw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load194)
  %i.dx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load193, <2 x double> %wide.load195)
  store <2 x double> %i.dw, ptr %i.du, align 8, !tbaa !44, !alias.scope !148, !noalias !147
  store <2 x double> %i.dx, ptr %i.dv, align 8, !tbaa !44, !alias.scope !148, !noalias !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge121, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv142.ph = phi i64 [ %i.dp, %middle.block ], [ %indvars.iv, %.preheader ] ; 6 uses
  %i.dz = sub i64 %i.e, %indvars.iv142.ph
  %xtraiter231 = and i64 %i.dz, 1
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ea = load double, ptr %gep172, align 8, !tbaa !44
  %gep168.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep167, i64 %indvars.iv142.ph
  %i.eb = load double, ptr %gep168.prol, align 8, !tbaa !44
  %gep170.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep169, i64 %indvars.iv142.ph ; 2 uses
  %i.ec = load double, ptr %gep170.prol, align 8, !tbaa !44
  %i.ed = tail call nsz double @llvm.fmuladd.f64(double %i.ea, double %i.eb, double %i.ec)
  store double %i.ed, ptr %gep170.prol, align 8, !tbaa !44
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv142.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph.preheader ], [ %indvars.iv.next143.prol, %scalar.ph.prol ]
  %i.ee = icmp eq i64 %indvars.iv142.ph, %i.n
  br i1 %i.ee, label %._crit_edge121, label %scalar.ph

._crit_edge121:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %i.e
  br i1 %exitcond151.not, label %.loopexit, label %.preheader, !llvm.loop !142

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %scalar.ph ], [ %indvars.iv142.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ef = load double, ptr %gep172, align 8, !tbaa !44
  %gep168 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep167, i64 %indvars.iv142
  %i.eg = load double, ptr %gep168, align 8, !tbaa !44
  %gep170 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep169, i64 %indvars.iv142 ; 2 uses
  %i.eh = load double, ptr %gep170, align 8, !tbaa !44
  %i.ei = tail call nsz double @llvm.fmuladd.f64(double %i.ef, double %i.eg, double %i.eh)
  store double %i.ei, ptr %gep170, align 8, !tbaa !44
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.ej = load double, ptr %gep172, align 8, !tbaa !44
  %gep168.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep167, i64 %indvars.iv.next143
  %i.ek = load double, ptr %gep168.1, align 8, !tbaa !44
  %gep170.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143 ; 2 uses
  %i.el = load double, ptr %gep170.1, align 8, !tbaa !44
  %i.em = tail call nsz double @llvm.fmuladd.f64(double %i.ej, double %i.ek, double %i.el)
  store double %i.em, ptr %gep170.1, align 8, !tbaa !44
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %exitcond146.not.1 = icmp eq i64 %indvars.iv.next143.1, %i.e
  br i1 %exitcond146.not.1, label %._crit_edge121, label %scalar.ph, !llvm.loop !143

.critedge:                                        ; preds = %.loopexit, %._crit_edge, %bb.a
  %i.en = phi i32 [ 1, %bb.a ], [ 0, %._crit_edge ], [ 1, %.loopexit ]
  ret i32 %i.en
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare ptr @av_default_item_name(ptr noundef) #1

declare void @ff_framesync_uninit(ptr noundef) local_unnamed_addr #1

declare i32 @ff_framesync_activate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!23 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!24 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!25 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!26 = !{!"AVFilterFormatsConfig", !24, i64 0, !24, i64 8, !25, i64 16, !24, i64 24, !24, i64 32, !24, i64 40}
!27 = !{!"AVFilterLink", !20, i64 0, !13, i64 8, !20, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !22, i64 72, !21, i64 96, !23, i64 104, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 168}
!28 = !{!18, !15, i64 32}
!29 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!6, !6, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"p1 _ZTS13FFFrameSyncIn", !9, i64 0}
!34 = !{!"FFFrameSync", !10, i64 0, !20, i64 8, !6, i64 16, !21, i64 20, !32, i64 32, !9, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !5, i64 64, !5, i64 65, !33, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!35 = !{!"ColorMapContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 32, !5, i64 1056, !5, i64 2080, !5, i64 3104, !5, i64 3168, !6, i64 4192, !6, i64 4196, !9, i64 4200, !34, i64 4208, !5, i64 4304, !5, i64 41296, !5, i64 41840}
!36 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!37 = !{!35, !9, i64 4200}
!38 = !{!35, !6, i64 20}
!39 = !{!"float", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!"double", !5, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"ThreadData", !36, i64 0, !36, i64 8}
!48 = !{!47, !36, i64 0}
!49 = !{!47, !36, i64 8}
!50 = !{!"p2 omnipotent char", !14, i64 0}
!51 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!52 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!53 = !{!"AVFrame", !5, i64 0, !5, i64 64, !50, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !21, i64 124, !32, i64 136, !32, i64 144, !21, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !51, i64 248, !6, i64 256, !23, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !32, i64 304, !52, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !32, i64 344, !32, i64 352, !32, i64 360, !32, i64 368, !9, i64 376, !22, i64 384, !32, i64 408, !6, i64 416}
!54 = !{!53, !6, i64 108}
!55 = !{!53, !6, i64 104}
!56 = !{!12, !12, i64 0}
!57 = !{!27, !20, i64 0}
!58 = !{!35, !33, i64 4280}
!59 = !{!"FFFrameSyncIn", !6, i64 0, !6, i64 4, !21, i64 8, !36, i64 16, !36, i64 24, !32, i64 32, !32, i64 40, !5, i64 48, !5, i64 49, !6, i64 52, !6, i64 56}
!60 = !{!59, !6, i64 52}
!61 = !{!59, !6, i64 0}
!62 = !{!59, !6, i64 4}
!63 = !{!35, !9, i64 4256}
!64 = !{!35, !9, i64 4248}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !41}
!69 = distinct !{null}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !42}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41, !45, !46}
!77 = distinct !{!77, !41, !46, !45}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !41}
!85 = !{!34, !20, i64 8}
!86 = !{!34, !9, i64 48}
!87 = !{!18, !15, i64 56}
!88 = !{!35, !6, i64 4196}
!89 = !{!36, !36, i64 0}
!90 = !{!27, !20, i64 16}
!91 = !{!27, !13, i64 24}
!92 = !{!18, !13, i64 24}
!93 = !{!35, !6, i64 4192}
!94 = !{!5, !5, i64 0}
!95 = !{!18, !6, i64 104}
!96 = !{!27, !6, i64 40}
!97 = !{!27, !6, i64 44}
!98 = !{!35, !32, i64 4240}
!99 = !{!53, !32, i64 136}
!100 = distinct !{!100, !41}
!101 = distinct !{!101, !41}
!102 = !{!35, !6, i64 8}
!103 = !{!35, !6, i64 12}
!104 = !{!35, !6, i64 16}
!105 = distinct !{!105, !41}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, i1 false, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = distinct !{!112, !108}
!113 = distinct !{!113, !108}
!114 = distinct !{!114, !108}
!115 = distinct !{!115, !108}
!116 = distinct !{!116, !41, !45, !46}
!117 = distinct !{!117, !41, !45}
!118 = !{!109}
!119 = !{!110}
!120 = !{!111}
!121 = !{!112}
!122 = !{!113}
!123 = !{!115, !114, !110, !111, !112, !109}
!124 = !{!115}
!125 = !{!114, !110, !111, !112, !109}
!126 = !{!114}
!127 = !{!110, !111, !112, !109}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !42}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, i1 false, !"LVerDomain"}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !41, !45, !46}
!135 = distinct !{!135, !41}
!136 = distinct !{!136, !41, !45}
!137 = distinct !{!137, i1 false, !"LVerDomain"}
!138 = distinct !{!138, !137}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !137}
!141 = distinct !{!141, !41, !45, !46}
!142 = distinct !{!142, !41}
!143 = distinct !{!143, !41, !45}
!144 = !{!132}
!145 = !{!133}
!146 = !{!138}
!147 = !{!139}
!148 = !{!140}
end_hunk_0
