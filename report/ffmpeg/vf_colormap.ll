Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colormap?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 28
begin_hunk_0_@colormap_slice:bb.a
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0129151.us, i64 %indvars.iv170
  %i.hy = extractelement <2 x float> %i.hv, i64 0
  store float %i.hy, ptr %i.hx, align 4, !tbaa !40
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.0128153.us, i64 %indvars.iv170
  %i.ia = extractelement <2 x float> %i.hv, i64 1
  store float %i.ia, ptr %i.hz, align 4, !tbaa !40
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0127155.us, i64 %indvars.iv170
  store float %i.hw, ptr %i.ib, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge143.split.us.us, label %.lr.ph.us.us, !llvm.loop !106

._crit_edge143.split.us.us:                       ; preds = %._crit_edge.split.us.us
  %i.ic = getelementptr inbounds [4 x i8], ptr %.0131147.us, i64 %i.cm
  %i.id = getelementptr inbounds [4 x i8], ptr %.0128153.us, i64 %i.cn
  %i.ie = getelementptr inbounds [4 x i8], ptr %.0130149.us, i64 %i.co
  %i.if = getelementptr inbounds [4 x i8], ptr %.0127155.us, i64 %i.cp
  %i.ig = getelementptr inbounds [4 x i8], ptr %.0132145.us, i64 %i.cq
  %i.ih = getelementptr inbounds [4 x i8], ptr %.0129151.us, i64 %i.cr
  %i.ii = add nsw i32 %.0126157.us, 1             ; 2 uses
  %exitcond175.not = icmp eq i32 %i.ii, %i.w
  br i1 %exitcond175.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !107

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge143.split
  %.0126157 = phi i32 [ %i.ju, %._crit_edge143.split ], [ %i.r, %.preheader.preheader ]
  %.0127155 = phi ptr [ %i.jr, %._crit_edge143.split ], [ %i.br, %.preheader.preheader ] ; 3 uses
  %.0128153 = phi ptr [ %i.jp, %._crit_edge143.split ], [ %i.bm, %.preheader.preheader ] ; 3 uses
  %.0129151 = phi ptr [ %i.jt, %._crit_edge143.split ], [ %i.bi, %.preheader.preheader ] ; 3 uses
  %.0130149 = phi ptr [ %i.jq, %._crit_edge143.split ], [ %i.bd, %.preheader.preheader ] ; 3 uses
  %.0131147 = phi ptr [ %i.jo, %._crit_edge143.split ], [ %i.ay, %.preheader.preheader ] ; 3 uses
  %.0132145 = phi ptr [ %i.js, %._crit_edge143.split ], [ %i.au, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx301
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.ij = load float, ptr %i.bv, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert276 = insertelement <4 x float> poison, float %i.ij, i64 0
  %broadcast.splat277 = shufflevector <4 x float> %broadcast.splatinsert276, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = load float, ptr %i.bw, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ik, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = load float, ptr %i.bx, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert278 = insertelement <4 x float> poison, float %i.il, i64 0
  %broadcast.splat279 = shufflevector <4 x float> %broadcast.splatinsert278, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.0132145, i64 %index
  %wide.load = load <4 x float>, ptr %i.im, align 4, !tbaa !40, !alias.scope !119 ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0131147, i64 %index
  %wide.load274 = load <4 x float>, ptr %i.in, align 4, !tbaa !40, !alias.scope !120 ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0130149, i64 %index
  %wide.load275 = load <4 x float>, ptr %i.io, align 4, !tbaa !40, !alias.scope !121 ; 3 uses
  %i.ip = load float, ptr %i.bu, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert280 = insertelement <4 x float> poison, float %i.ip, i64 0
  %broadcast.splat281 = shufflevector <4 x float> %broadcast.splatinsert280, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = load float, ptr %i.cc, align 4, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert288 = insertelement <4 x float> poison, float %i.iq, i64 0
  %broadcast.splat289 = shufflevector <4 x float> %broadcast.splatinsert288, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ir = load float, ptr %i.cd, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert296 = insertelement <4 x float> poison, float %i.ir, i64 0
  %broadcast.splat297 = shufflevector <4 x float> %broadcast.splatinsert296, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = fmul nsz <4 x float> %wide.load274, %broadcast.splat
  %i.it = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat277, <4 x float> %wide.load, <4 x float> %i.is)
  %i.iu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat279, <4 x float> %wide.load275, <4 x float> %i.it)
  %i.iv = fadd nsz <4 x float> %broadcast.splat281, %i.iu
  %i.iw = load float, ptr %i.ce, align 4, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert284 = insertelement <4 x float> poison, float %i.iw, i64 0
  %broadcast.splat285 = shufflevector <4 x float> %broadcast.splatinsert284, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ix = load float, ptr %i.cf, align 4, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert282 = insertelement <4 x float> poison, float %i.ix, i64 0
  %broadcast.splat283 = shufflevector <4 x float> %broadcast.splatinsert282, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = fmul nsz <4 x float> %wide.load274, %broadcast.splat283
  %i.iz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat285, <4 x float> %wide.load, <4 x float> %i.iy)
  %i.ja = load float, ptr %i.cg, align 4, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %i.ja, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat287, <4 x float> %wide.load275, <4 x float> %i.iz)
  %i.jc = fadd nsz <4 x float> %broadcast.splat289, %i.jb
  %i.jd = load float, ptr %i.ch, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert292 = insertelement <4 x float> poison, float %i.jd, i64 0
  %broadcast.splat293 = shufflevector <4 x float> %broadcast.splatinsert292, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = load float, ptr %i.ci, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert290 = insertelement <4 x float> poison, float %i.je, i64 0
  %broadcast.splat291 = shufflevector <4 x float> %broadcast.splatinsert290, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jf = fmul nsz <4 x float> %wide.load274, %broadcast.splat291
  %i.jg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat293, <4 x float> %wide.load, <4 x float> %i.jf)
  %i.jh = load float, ptr %i.cj, align 8, !tbaa !40, !alias.scope !118
  %broadcast.splatinsert294 = insertelement <4 x float> poison, float %i.jh, i64 0
  %broadcast.splat295 = shufflevector <4 x float> %broadcast.splatinsert294, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat295, <4 x float> %wide.load275, <4 x float> %i.jg)
  %i.jj = fadd nsz <4 x float> %broadcast.splat297, %i.ji
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0129151, i64 %index
  store <4 x float> %i.iv, ptr %i.jk, align 4, !tbaa !40, !alias.scope !122, !noalias !123
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0128153, i64 %index
  store <4 x float> %i.jc, ptr %i.jl, align 4, !tbaa !40, !alias.scope !124, !noalias !125
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0127155, i64 %index
  store <4 x float> %i.jj, ptr %i.jm, align 4, !tbaa !40, !alias.scope !126, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge143.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge.split:                                ; preds = %._crit_edge143.split, %._crit_edge143.split.us.us, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge143.split:                             ; preds = %scalar.ph, %middle.block
  %i.jo = getelementptr inbounds [4 x i8], ptr %.0131147, i64 %i.cm
  %i.jp = getelementptr inbounds [4 x i8], ptr %.0128153, i64 %i.cn
  %i.jq = getelementptr inbounds [4 x i8], ptr %.0130149, i64 %i.co
  %i.jr = getelementptr inbounds [4 x i8], ptr %.0127155, i64 %i.cp
  %i.js = getelementptr inbounds [4 x i8], ptr %.0132145, i64 %i.cq
  %i.jt = getelementptr inbounds [4 x i8], ptr %.0129151, i64 %i.cr
  %i.ju = add nsw i32 %.0126157, 1                ; 2 uses
  %exitcond164.not = icmp eq i32 %i.ju, %i.w
  br i1 %exitcond164.not, label %._crit_edge.split, label %.preheader, !llvm.loop !107

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.0132145, i64 %indvars.iv
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !40 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.0131147, i64 %indvars.iv
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !40 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.0130149, i64 %indvars.iv
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !40 ; 2 uses
  %i.kb = load float, ptr %i.bu, align 8, !tbaa !40
  %i.kc = load float, ptr %i.bv, align 8, !tbaa !40
  %i.kd = load float, ptr %i.bw, align 8, !tbaa !40
  %i.ke = fmul nsz float %i.jy, %i.kd
  %i.kf = tail call nsz float @llvm.fmuladd.f32(float %i.kc, float %i.jw, float %i.ke)
  %i.kg = load float, ptr %i.bx, align 8, !tbaa !40
  %i.kh = tail call nsz float @llvm.fmuladd.f32(float %i.kg, float %i.ka, float %i.kf)
  %i.ki = fadd nsz float %i.kb, %i.kh
  %i.kj = load <2 x float>, ptr %i.cf, align 4, !tbaa !40
  %i.kk = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = fmul nsz <2 x float> %i.kl, %i.kj
  %i.kn = load <2 x float>, ptr %i.cc, align 4, !tbaa !40
  %i.ko = load <2 x float>, ptr %i.ce, align 4, !tbaa !40
  %i.kp = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.kq, <2 x float> %i.km)
  %i.ks = load <2 x float>, ptr %i.cg, align 4, !tbaa !40
  %i.kt = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.ku, <2 x float> %i.kr)
  %i.kw = fadd nsz <2 x float> %i.kn, %i.kv       ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.0129151, i64 %indvars.iv
  store float %i.ki, ptr %i.kx, align 4, !tbaa !40
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.0128153, i64 %indvars.iv
  %i.kz = extractelement <2 x float> %i.kw, i64 0
  store float %i.kz, ptr %i.ky, align 4, !tbaa !40
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.0127155, i64 %indvars.iv
  %i.lb = extractelement <2 x float> %i.kw, i64 1
  store float %i.lb, ptr %i.la, align 4, !tbaa !40
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
  %i.e = zext nneg i32 %2 to i64                  ; 27 uses
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  %i.g = add nuw i32 %2, 1
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %i.j = mul nuw nsw i64 %i.e, %i.e
  %i.k = shl i64 %i.j, 3
  %scevgep173 = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  %i.l = add nsw i64 %i.h, -8
  %i.m = mul i64 %i.l, %i.e
  %scevgep178 = getelementptr i8, ptr %0, i64 %i.h
  %3 = add nsw i64 %i.e, -1                       ; 3 uses
  %i.n = shl nuw nsw i64 %i.e, 3                  ; 3 uses
  %scevgep189 = getelementptr i8, ptr %0, i64 %i.n
  %i.o = add nuw nsw i64 %i.n, 8
  %i.p = shl nuw nsw i64 %i.e, 3
  %i.q = add nsw i64 %i.e, -2                     ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.n
  %i.s = getelementptr i8, ptr %0, i64 %i.i
  %i.t = getelementptr i8, ptr %0, i64 %i.h
  %i.u = getelementptr i8, ptr %0, i64 %i.m
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = add nsw i64 %i.e, -1
  %i.x = add nsw i64 %i.e, -1
  br label %.lr.ph125

.loopexit:                                        ; preds = %._crit_edge121, %.preheader111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %i.e
  br i1 %exitcond156.not, label %.critedge, label %.lr.ph125, !llvm.loop !128

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.loopexit
  %indvars.iv152 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next153, %.loopexit ] ; 21 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next, %.loopexit ] ; 15 uses
  %4 = sub i64 %3, %indvars.iv152                 ; 2 uses
  %5 = sub i64 %i.q, %indvars.iv152
  %i.y = sub i64 %3, %indvars.iv152               ; 3 uses
  %i.z = shl nuw nsw i64 %indvars.iv152, 3
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %scevgep187 = getelementptr i8, ptr %i.aa, i64 8
  %i.ab = mul i64 %i.o, %indvars.iv152
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %scevgep191 = getelementptr i8, ptr %i.ac, i64 8
  %i.ad = mul i64 %i.p, %indvars.iv152
  %scevgep192 = getelementptr i8, ptr %i.r, i64 %i.ad
  %6 = sub i64 %3, %indvars.iv152                 ; 3 uses
  %i.ae = mul i64 %i.i, %indvars.iv152            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %scevgep174 = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.af = shl nuw nsw i64 %indvars.iv152, 3       ; 2 uses
  %scevgep175 = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ag = getelementptr i8, ptr %0, i64 %i.af
  %scevgep176 = getelementptr i8, ptr %i.ag, i64 8
  %i.ah = trunc i64 %indvars.iv152 to i32
  %i.ai = mul i32 %2, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.ak
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.ak
  %indvars154 = trunc i64 %indvars.iv152 to i32   ; 5 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 3 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next153, %i.f ; 2 uses
  br i1 %i.al, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph125
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152 ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %0, i64 %indvars.iv152 ; 3 uses
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.an = mul nuw nsw i64 %indvars.iv, %i.e
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.an
  %i.ao = load double, ptr %gep.prol, align 8, !tbaa !44
  %i.ap = tail call nsz double @llvm.fabs.f64(double %i.ao)
  %i.aq = mul nsw i32 %2, %indvars154
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [8 x i8], ptr %i.am, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !44
  %i.au = tail call nsz double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp nsz ogt double %i.ap, %i.au
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.prol = select i1 %i.av, i32 %i.aw, i32 %indvars154 ; 2 uses
  %indvars.iv.next130.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %indvars.iv129.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next130.prol, %.lr.ph.prol ]
  %.0100112.unr = phi i32 [ %indvars154, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.ax = icmp eq i64 %i.q, %indvars.iv152
  br i1 %i.ax, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph125
  %.0100.lcssa = phi i32 [ %indvars154, %.lr.ph125 ], [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.1, %.lr.ph ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv152
  store i32 %.0100.lcssa, ptr %i.ay, align 4, !tbaa !31
  %i.az = mul nsw i32 %.0100.lcssa, %2
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %0, i64 %indvars.iv152
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !44 ; 3 uses
  %i.be = mul nuw nsw i64 %indvars.iv152, %i.f    ; 2 uses
  %i.bf = mul nuw i32 %i.g, %indvars154
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !44
  store double %i.bi, ptr %i.bc, align 8, !tbaa !44
  store double %i.bd, ptr %i.bh, align 8, !tbaa !44
  %i.bj = fcmp nsz une double %i.bd, 0.000000e+00
  br i1 %i.bj, label %.preheader111, label %.critedge

.preheader111:                                    ; preds = %._crit_edge
  br i1 %i.al, label %.lr.ph115, label %.loopexit

.lr.ph115:                                        ; preds = %.preheader111
  %i.bk = fneg nsz double %i.bd                   ; 5 uses
  %invariant.gep161 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152 ; 5 uses
  %xtraiter211 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph115, %.prol.preheader
  %indvars.iv132.prol = phi i64 [ %indvars.iv.next133.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph115 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph115 ]
  %i.bl = mul nuw nsw i64 %indvars.iv132.prol, %i.e
  %gep162.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.bl ; 2 uses
  %i.bm = load double, ptr %gep162.prol, align 8, !tbaa !44
  %i.bn = fdiv nsz double %i.bm, %i.bk
  store double %i.bn, ptr %gep162.prol, align 8, !tbaa !44
  %indvars.iv.next133.prol = add nuw nsw i64 %indvars.iv132.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter211
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph115
  %indvars.iv132.unr = phi i64 [ %indvars.iv, %.lr.ph115 ], [ %indvars.iv.next133.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %5, 3
  br i1 %i.bo, label %._crit_edge116, label %.lr.ph115.new

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %.lr.ph ], [ %indvars.iv129.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0100112 = phi i32 [ %spec.select.1, %.lr.ph ], [ %.0100112.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bp = mul nuw nsw i64 %indvars.iv129, %i.e
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bp
  %i.bq = load double, ptr %gep, align 8, !tbaa !44
  %i.br = tail call nsz double @llvm.fabs.f64(double %i.bq)
  %i.bs = mul nsw i32 %.0100112, %2
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [8 x i8], ptr %i.am, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !44
  %i.bw = tail call nsz double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp nsz ogt double %i.br, %i.bw
  %i.by = trunc nuw nsw i64 %indvars.iv129 to i32
  %spec.select = select i1 %i.bx, i32 %i.by, i32 %.0100112 ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.bz = mul nuw nsw i64 %indvars.iv.next130, %i.e
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bz
  %i.ca = load double, ptr %gep.1, align 8, !tbaa !44
  %i.cb = tail call nsz double @llvm.fabs.f64(double %i.ca)
  %i.cc = mul nsw i32 %spec.select, %2
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.am, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !44
  %i.cg = tail call nsz double @llvm.fabs.f64(double %i.cf)
  %i.ch = fcmp nsz ogt double %i.cb, %i.cg
  %i.ci = trunc nuw nsw i64 %indvars.iv.next130 to i32
  %spec.select.1 = select i1 %i.ch, i32 %i.ci, i32 %spec.select ; 2 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next130.1, %i.e
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge116:                                   ; preds = %.lr.ph115.new, %.prol.loopexit
  %i.cj = zext i32 %.0100.lcssa to i64
  %.not.not = icmp eq i64 %indvars.iv152, %i.cj
  br i1 %.not.not, label %.preheader.preheader, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %._crit_edge116
  %invariant.gep163 = getelementptr [8 x i8], ptr %0, i64 %i.ba ; 4 uses
  %invariant.gep165 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be ; 4 uses
  %min.iters.check197 = icmp ult i64 %i.y, 4
  br i1 %min.iters.check197, label %.lr.ph118.preheader210, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph118.preheader
  %i.ck = shl nsw i64 %i.ba, 3                    ; 2 uses
  %scevgep188 = getelementptr i8, ptr %scevgep187, i64 %i.ck
  %scevgep190 = getelementptr i8, ptr %scevgep189, i64 %i.ck
  %bound0193 = icmp ult ptr %scevgep188, %scevgep192
  %bound1194 = icmp ult ptr %scevgep191, %scevgep190
  %found.conflict195 = and i1 %bound0193, %bound1194
  br i1 %found.conflict195, label %.lr.ph118.preheader210, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck186
  %n.vec199 = and i64 %i.y, -4                    ; 3 uses
  %i.cl = add i64 %indvars.iv, %n.vec199
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next206, %vector.body200 ] ; 2 uses
  %i.cm = add nuw i64 %indvars.iv, %index201      ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %invariant.gep163, i64 %i.cm ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16     ; 2 uses
  %wide.load202 = load <2 x double>, ptr %i.cn, align 8, !tbaa !44, !alias.scope !144, !noalias !145
  %wide.load203 = load <2 x double>, ptr %i.co, align 8, !tbaa !44, !alias.scope !144, !noalias !145
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep165, i64 %i.cm ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load204 = load <2 x double>, ptr %i.cp, align 8, !tbaa !44, !alias.scope !145
  %wide.load205 = load <2 x double>, ptr %i.cq, align 8, !tbaa !44, !alias.scope !145
  store <2 x double> %wide.load204, ptr %i.cn, align 8, !tbaa !44, !alias.scope !144, !noalias !145
  store <2 x double> %wide.load205, ptr %i.co, align 8, !tbaa !44, !alias.scope !144, !noalias !145
  store <2 x double> %wide.load202, ptr %i.cp, align 8, !tbaa !44, !alias.scope !145
  store <2 x double> %wide.load203, ptr %i.cq, align 8, !tbaa !44, !alias.scope !145
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.cr, label %middle.block207, label %vector.body200, !llvm.loop !134

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %i.y, %n.vec199
  br i1 %cmp.n208, label %.preheader.preheader, label %.lr.ph118.preheader210

.lr.ph118.preheader210:                           ; preds = %vector.memcheck186, %.lr.ph118.preheader, %middle.block207
  %indvars.iv137.ph = phi i64 [ %indvars.iv, %vector.memcheck186 ], [ %indvars.iv, %.lr.ph118.preheader ], [ %i.cl, %middle.block207 ] ; 6 uses
  %i.cs = sub i64 %i.e, %indvars.iv137.ph
  %xtraiter213 = and i64 %i.cs, 1
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol

.lr.ph118.prol:                                   ; preds = %.lr.ph118.preheader210
  %gep164.prol = getelementptr [8 x i8], ptr %invariant.gep163, i64 %indvars.iv137.ph ; 2 uses
  %i.ct = load double, ptr %gep164.prol, align 8, !tbaa !44
  %gep166.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep165, i64 %indvars.iv137.ph ; 2 uses
  %i.cu = load double, ptr %gep166.prol, align 8, !tbaa !44
  store double %i.cu, ptr %gep164.prol, align 8, !tbaa !44
  store double %i.ct, ptr %gep166.prol, align 8, !tbaa !44
  %indvars.iv.next138.prol = add nuw nsw i64 %indvars.iv137.ph, 1
  br label %.lr.ph118.prol.loopexit

.lr.ph118.prol.loopexit:                          ; preds = %.lr.ph118.prol, %.lr.ph118.preheader210
  %indvars.iv137.unr = phi i64 [ %indvars.iv137.ph, %.lr.ph118.preheader210 ], [ %indvars.iv.next138.prol, %.lr.ph118.prol ]
  %i.cv = icmp eq i64 %indvars.iv137.ph, %i.w
  br i1 %i.cv, label %.preheader.preheader, label %.lr.ph118

.lr.ph115.new:                                    ; preds = %.prol.loopexit, %.lr.ph115.new
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.3, %.lr.ph115.new ], [ %indvars.iv132.unr, %.prol.loopexit ] ; 5 uses
  %i.cw = mul nuw nsw i64 %indvars.iv132, %i.e
  %gep162 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.cw ; 2 uses
  %i.cx = load double, ptr %gep162, align 8, !tbaa !44
  %i.cy = fdiv nsz double %i.cx, %i.bk
  store double %i.cy, ptr %gep162, align 8, !tbaa !44
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %i.cz = mul nuw nsw i64 %indvars.iv.next133, %i.e
  %gep162.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.cz ; 2 uses
  %i.da = load double, ptr %gep162.1, align 8, !tbaa !44
  %i.db = fdiv nsz double %i.da, %i.bk
  store double %i.db, ptr %gep162.1, align 8, !tbaa !44
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2
  %i.dc = mul nuw nsw i64 %indvars.iv.next133.1, %i.e
  %gep162.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.dc ; 2 uses
  %i.dd = load double, ptr %gep162.2, align 8, !tbaa !44
  %i.de = fdiv nsz double %i.dd, %i.bk
  store double %i.de, ptr %gep162.2, align 8, !tbaa !44
  %indvars.iv.next133.2 = add nuw nsw i64 %indvars.iv132, 3
  %i.df = mul nuw nsw i64 %indvars.iv.next133.2, %i.e
  %gep162.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161, i64 %i.df ; 2 uses
  %i.dg = load double, ptr %gep162.3, align 8, !tbaa !44
  %i.dh = fdiv nsz double %i.dg, %i.bk
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

.preheader.preheader:                             ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118, %middle.block207, %._crit_edge116
  %i.dm = and i64 %i.be, 4294967295
  %invariant.gep171 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152
  %invariant.gep167 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dm ; 4 uses
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep175
  %bound1 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict = and i1 %bound0, %bound1
  %bound0180 = icmp ult ptr %scevgep, %scevgep179
  %bound1181 = icmp ult ptr %scevgep177, %scevgep173
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx = or i1 %found.conflict, %found.conflict182
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.dn = add i64 %indvars.iv, %n.vec
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge121
  %indvars.iv147 = phi i64 [ %indvars.iv, %.preheader.preheader ], [ %indvars.iv.next148, %._crit_edge121 ] ; 2 uses
  %i.do = mul nuw nsw i64 %indvars.iv147, %i.e    ; 2 uses
  %gep172 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep171, i64 %i.do ; 4 uses
  %invariant.gep169 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.do ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.dp = load double, ptr %gep172, align 8, !tbaa !44, !alias.scope !146
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep167, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load = load <2 x double>, ptr %i.dr, align 8, !tbaa !44, !alias.scope !147
  %wide.load183 = load <2 x double>, ptr %i.ds, align 8, !tbaa !44, !alias.scope !147
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep169, i64 %i.dq ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load184 = load <2 x double>, ptr %i.dt, align 8, !tbaa !44, !alias.scope !148, !noalias !149
  %wide.load185 = load <2 x double>, ptr %i.du, align 8, !tbaa !44, !alias.scope !148, !noalias !149
  %i.dv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load184)
  %i.dw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load183, <2 x double> %wide.load185)
  store <2 x double> %i.dv, ptr %i.dt, align 8, !tbaa !44, !alias.scope !148, !noalias !149
  store <2 x double> %i.dw, ptr %i.du, align 8, !tbaa !44, !alias.scope !148, !noalias !149
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge121, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv142.ph = phi i64 [ %i.dn, %middle.block ], [ %indvars.iv, %.preheader ] ; 6 uses
  %i.dy = sub i64 %i.e, %indvars.iv142.ph
  %xtraiter216 = and i64 %i.dy, 1
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dz = load double, ptr %gep172, align 8, !tbaa !44
  %gep168.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep167, i64 %indvars.iv142.ph
  %i.ea = load double, ptr %gep168.prol, align 8, !tbaa !44
  %gep170.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep169, i64 %indvars.iv142.ph ; 2 uses
  %i.eb = load double, ptr %gep170.prol, align 8, !tbaa !44
  %i.ec = tail call nsz double @llvm.fmuladd.f64(double %i.dz, double %i.ea, double %i.eb)
  store double %i.ec, ptr %gep170.prol, align 8, !tbaa !44
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv142.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph.preheader ], [ %indvars.iv.next143.prol, %scalar.ph.prol ]
  %i.ed = icmp eq i64 %indvars.iv142.ph, %i.x
  br i1 %i.ed, label %._crit_edge121, label %scalar.ph

._crit_edge121:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %i.e
  br i1 %exitcond151.not, label %.loopexit, label %.preheader, !llvm.loop !142

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %scalar.ph ], [ %indvars.iv142.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ee = load double, ptr %gep172, align 8, !tbaa !44
  %gep168 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep167, i64 %indvars.iv142
  %i.ef = load double, ptr %gep168, align 8, !tbaa !44
  %gep170 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep169, i64 %indvars.iv142 ; 2 uses
  %i.eg = load double, ptr %gep170, align 8, !tbaa !44
  %i.eh = tail call nsz double @llvm.fmuladd.f64(double %i.ee, double %i.ef, double %i.eg)
  store double %i.eh, ptr %gep170, align 8, !tbaa !44
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.ei = load double, ptr %gep172, align 8, !tbaa !44
  %gep168.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep167, i64 %indvars.iv.next143
  %i.ej = load double, ptr %gep168.1, align 8, !tbaa !44
  %gep170.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143 ; 2 uses
  %i.ek = load double, ptr %gep170.1, align 8, !tbaa !44
  %i.el = tail call nsz double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.ek)
  store double %i.el, ptr %gep170.1, align 8, !tbaa !44
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %exitcond146.not.1 = icmp eq i64 %indvars.iv.next143.1, %i.e
  br i1 %exitcond146.not.1, label %._crit_edge121, label %scalar.ph, !llvm.loop !143

.critedge:                                        ; preds = %.loopexit, %._crit_edge, %bb.a
  %i.em = phi i32 [ 1, %bb.a ], [ 0, %._crit_edge ], [ 1, %.loopexit ]
  ret i32 %i.em
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
end_hunk_0
