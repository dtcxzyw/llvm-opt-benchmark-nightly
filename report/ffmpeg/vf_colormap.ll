Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colormap?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 28
begin_hunk_0_@colormap_slice:bb.a
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx301
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.ij = load float, ptr %i.bv, align 8, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert276 = insertelement <4 x float> poison, float %i.ij, i64 0
  %broadcast.splat277 = shufflevector <4 x float> %broadcast.splatinsert276, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = load float, ptr %i.bw, align 8, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ik, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = load float, ptr %i.bx, align 8, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert278 = insertelement <4 x float> poison, float %i.il, i64 0
  %broadcast.splat279 = shufflevector <4 x float> %broadcast.splatinsert278, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.0132145, i64 %index
  %wide.load = load <4 x float>, ptr %i.im, align 4, !tbaa !56, !alias.scope !111 ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0131147, i64 %index
  %wide.load274 = load <4 x float>, ptr %i.in, align 4, !tbaa !56, !alias.scope !113 ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0130149, i64 %index
  %wide.load275 = load <4 x float>, ptr %i.io, align 4, !tbaa !56, !alias.scope !115 ; 3 uses
  %i.ip = load float, ptr %i.bu, align 8, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert280 = insertelement <4 x float> poison, float %i.ip, i64 0
  %broadcast.splat281 = shufflevector <4 x float> %broadcast.splatinsert280, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = load float, ptr %i.cc, align 4, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert288 = insertelement <4 x float> poison, float %i.iq, i64 0
  %broadcast.splat289 = shufflevector <4 x float> %broadcast.splatinsert288, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ir = load float, ptr %i.cd, align 8, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert296 = insertelement <4 x float> poison, float %i.ir, i64 0
  %broadcast.splat297 = shufflevector <4 x float> %broadcast.splatinsert296, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = fmul nsz <4 x float> %wide.load274, %broadcast.splat
  %i.it = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat277, <4 x float> %wide.load, <4 x float> %i.is)
  %i.iu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat279, <4 x float> %wide.load275, <4 x float> %i.it)
  %i.iv = fadd nsz <4 x float> %broadcast.splat281, %i.iu
  %i.iw = load float, ptr %i.ce, align 4, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert284 = insertelement <4 x float> poison, float %i.iw, i64 0
  %broadcast.splat285 = shufflevector <4 x float> %broadcast.splatinsert284, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ix = load float, ptr %i.cf, align 4, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert282 = insertelement <4 x float> poison, float %i.ix, i64 0
  %broadcast.splat283 = shufflevector <4 x float> %broadcast.splatinsert282, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = fmul nsz <4 x float> %wide.load274, %broadcast.splat283
  %i.iz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat285, <4 x float> %wide.load, <4 x float> %i.iy)
  %i.ja = load float, ptr %i.cg, align 4, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %i.ja, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat287, <4 x float> %wide.load275, <4 x float> %i.iz)
  %i.jc = fadd nsz <4 x float> %broadcast.splat289, %i.jb
  %i.jd = load float, ptr %i.ch, align 8, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert292 = insertelement <4 x float> poison, float %i.jd, i64 0
  %broadcast.splat293 = shufflevector <4 x float> %broadcast.splatinsert292, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = load float, ptr %i.ci, align 8, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert290 = insertelement <4 x float> poison, float %i.je, i64 0
  %broadcast.splat291 = shufflevector <4 x float> %broadcast.splatinsert290, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jf = fmul nsz <4 x float> %wide.load274, %broadcast.splat291
  %i.jg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat293, <4 x float> %wide.load, <4 x float> %i.jf)
  %i.jh = load float, ptr %i.cj, align 8, !tbaa !56, !alias.scope !108
  %broadcast.splatinsert294 = insertelement <4 x float> poison, float %i.jh, i64 0
  %broadcast.splat295 = shufflevector <4 x float> %broadcast.splatinsert294, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat295, <4 x float> %wide.load275, <4 x float> %i.jg)
  %i.jj = fadd nsz <4 x float> %broadcast.splat297, %i.ji
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0129151, i64 %index
  store <4 x float> %i.iv, ptr %i.jk, align 4, !tbaa !56, !alias.scope !117, !noalias !119
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0128153, i64 %index
  store <4 x float> %i.jc, ptr %i.jl, align 4, !tbaa !56, !alias.scope !122, !noalias !123
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0127155, i64 %index
  store <4 x float> %i.jj, ptr %i.jm, align 4, !tbaa !56, !alias.scope !124, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !126

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
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !56 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.0131147, i64 %indvars.iv
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !56 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.0130149, i64 %indvars.iv
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !56 ; 2 uses
  %i.kb = load float, ptr %i.bu, align 8, !tbaa !56
  %i.kc = load float, ptr %i.bv, align 8, !tbaa !56
  %i.kd = load float, ptr %i.bw, align 8, !tbaa !56
  %i.ke = fmul nsz float %i.jy, %i.kd
  %i.kf = tail call nsz float @llvm.fmuladd.f32(float %i.kc, float %i.jw, float %i.ke)
  %i.kg = load float, ptr %i.bx, align 8, !tbaa !56
  %i.kh = tail call nsz float @llvm.fmuladd.f32(float %i.kg, float %i.ka, float %i.kf)
  %i.ki = fadd nsz float %i.kb, %i.kh
  %i.kj = load <2 x float>, ptr %i.cc, align 4, !tbaa !56
  %i.kk = load <2 x float>, ptr %i.ce, align 4, !tbaa !56
  %i.kl = load <2 x float>, ptr %i.cf, align 4, !tbaa !56
  %i.km = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul nsz <2 x float> %i.kn, %i.kl
  %i.kp = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.kq, <2 x float> %i.ko)
  %i.ks = load <2 x float>, ptr %i.cg, align 4, !tbaa !56
  %i.kt = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.ku, <2 x float> %i.kr)
  %i.kw = fadd nsz <2 x float> %i.kj, %i.kv       ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.0129151, i64 %indvars.iv
  store float %i.ki, ptr %i.kx, align 4, !tbaa !56
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.0128153, i64 %indvars.iv
  %i.kz = extractelement <2 x float> %i.kw, i64 0
  store float %i.kz, ptr %i.ky, align 4, !tbaa !56
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.0127155, i64 %indvars.iv
  %i.lb = extractelement <2 x float> %i.kw, i64 1
  store float %i.lb, ptr %i.la, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count173
  br i1 %exitcond.not, label %._crit_edge143.split, label %scalar.ph, !llvm.loop !127
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
  store i32 %i.a, ptr %i.c, align 4, !tbaa !32
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph124.preheader, label %.critedge

.lr.ph124.preheader:                              ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64                  ; 27 uses
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  %i.g = add nuw i32 %2, 1
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %i.j = mul nuw nsw i64 %i.e, %i.e
  %i.k = shl i64 %i.j, 3
  %scevgep172 = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  %i.l = add nsw i64 %i.h, -8
  %i.m = mul i64 %i.l, %i.e
  %scevgep177 = getelementptr i8, ptr %0, i64 %i.h
  %i.n = add nsw i64 %i.e, -1                     ; 3 uses
  %i.o = shl nuw nsw i64 %i.e, 3                  ; 3 uses
  %scevgep188 = getelementptr i8, ptr %0, i64 %i.o
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = shl nuw nsw i64 %i.e, 3
  %i.r = add nsw i64 %i.e, -2                     ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.o
  %i.t = getelementptr i8, ptr %0, i64 %i.i
  %i.u = getelementptr i8, ptr %0, i64 %i.h
  %i.v = getelementptr i8, ptr %0, i64 %i.m
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = add nsw i64 %i.e, -1
  %i.y = add nsw i64 %i.e, -1
  br label %.lr.ph124

.loopexit:                                        ; preds = %._crit_edge120, %.preheader110
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %i.e
  br i1 %exitcond155.not, label %.critedge, label %.lr.ph124, !llvm.loop !128

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.loopexit
  %indvars.iv151 = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next152, %.loopexit ] ; 20 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph124.preheader ], [ %indvars.iv.next, %.loopexit ] ; 17 uses
  %i.z = sub i64 %i.n, %indvars.iv151             ; 2 uses
  %i.aa = sub i64 %i.r, %indvars.iv151
  %i.ab = sub i64 %i.n, %indvars.iv151            ; 3 uses
  %i.ac = shl nuw nsw i64 %indvars.iv, 3
  %scevgep186 = getelementptr i8, ptr %0, i64 %i.ac
  %i.ad = mul i64 %i.p, %indvars.iv151
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad
  %scevgep190 = getelementptr i8, ptr %i.ae, i64 8
  %i.af = mul i64 %i.q, %indvars.iv151
  %scevgep191 = getelementptr i8, ptr %i.s, i64 %i.af
  %i.ag = sub i64 %i.n, %indvars.iv151            ; 3 uses
  %i.ah = mul i64 %i.i, %indvars.iv151            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ah ; 2 uses
  %scevgep173 = getelementptr i8, ptr %i.u, i64 %i.ah
  %i.ai = shl nuw nsw i64 %indvars.iv151, 3
  %scevgep174 = getelementptr i8, ptr %i.w, i64 %i.ai
  %3 = shl nuw nsw i64 %indvars.iv, 3
  %scevgep175 = getelementptr i8, ptr %0, i64 %3
  %i.aj = trunc i64 %indvars.iv151 to i32
  %i.ak = mul i32 %2, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.am
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.am
  %indvars153 = trunc i64 %indvars.iv151 to i32   ; 5 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 3 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next152, %i.f ; 2 uses
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph124
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv151 ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %indvars.iv151 ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ap = mul nuw nsw i64 %indvars.iv, %i.e
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ap
  %i.aq = load double, ptr %gep.prol, align 8, !tbaa !63
  %i.ar = tail call nsz double @llvm.fabs.f64(double %i.aq)
  %i.as = mul nsw i32 %2, %indvars153
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.ao, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !63
  %i.aw = tail call nsz double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp nsz ogt double %i.ar, %i.aw
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %.1101.prol = select i1 %i.ax, i32 %i.ay, i32 %indvars153 ; 2 uses
  %indvars.iv.next129.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1101.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1101.prol, %.lr.ph.prol ]
  %indvars.iv128.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next129.prol, %.lr.ph.prol ]
  %.0100111.unr = phi i32 [ %indvars153, %.lr.ph.preheader ], [ %.1101.prol, %.lr.ph.prol ]
  %i.az = icmp eq i64 %i.r, %indvars.iv151
  br i1 %i.az, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph124
  %.0100.lcssa = phi i32 [ %indvars153, %.lr.ph124 ], [ %.1101.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1101.1, %.lr.ph ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv151
  store i32 %.0100.lcssa, ptr %i.ba, align 4, !tbaa !32
  %i.bb = mul nsw i32 %.0100.lcssa, %2
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %0, i64 %indvars.iv151
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !63 ; 3 uses
  %i.bg = mul nuw nsw i64 %indvars.iv151, %i.f    ; 2 uses
  %i.bh = mul nuw i32 %i.g, %indvars153
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !63
  store double %i.bk, ptr %i.be, align 8, !tbaa !63
  store double %i.bf, ptr %i.bj, align 8, !tbaa !63
  %i.bl = fcmp nsz une double %i.bf, 0.000000e+00
  br i1 %i.bl, label %.preheader110, label %.critedge

.preheader110:                                    ; preds = %._crit_edge
  br i1 %i.an, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %.preheader110
  %i.bm = fneg nsz double %i.bf                   ; 5 uses
  %invariant.gep160 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv151 ; 5 uses
  %xtraiter210 = and i64 %i.z, 3                  ; 2 uses
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph114, %.prol.preheader
  %indvars.iv131.prol = phi i64 [ %indvars.iv.next132.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph114 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph114 ]
  %i.bn = mul nuw nsw i64 %indvars.iv131.prol, %i.e
  %gep161.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160, i64 %i.bn ; 2 uses
  %i.bo = load double, ptr %gep161.prol, align 8, !tbaa !63
  %i.bp = fdiv nsz double %i.bo, %i.bm
  store double %i.bp, ptr %gep161.prol, align 8, !tbaa !63
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter210
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph114
  %indvars.iv131.unr = phi i64 [ %indvars.iv, %.lr.ph114 ], [ %indvars.iv.next132.prol, %.prol.preheader ]
  %i.bq = icmp ult i64 %i.aa, 3
  br i1 %i.bq, label %._crit_edge115, label %.lr.ph114.new

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.1, %.lr.ph ], [ %indvars.iv128.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0100111 = phi i32 [ %.1101.1, %.lr.ph ], [ %.0100111.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.br = mul nuw nsw i64 %indvars.iv128, %i.e
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.br
  %i.bs = load double, ptr %gep, align 8, !tbaa !63
  %i.bt = tail call nsz double @llvm.fabs.f64(double %i.bs)
  %i.bu = mul nsw i32 %.0100111, %2
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [8 x i8], ptr %i.ao, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !63
  %i.by = tail call nsz double @llvm.fabs.f64(double %i.bx)
  %i.bz = fcmp nsz ogt double %i.bt, %i.by
  %i.ca = trunc nuw nsw i64 %indvars.iv128 to i32
  %.1101 = select i1 %i.bz, i32 %i.ca, i32 %.0100111 ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.cb = mul nuw nsw i64 %indvars.iv.next129, %i.e
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.cb
  %i.cc = load double, ptr %gep.1, align 8, !tbaa !63
  %i.cd = tail call nsz double @llvm.fabs.f64(double %i.cc)
  %i.ce = mul nsw i32 %.1101, %2
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %i.ao, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !63
  %i.ci = tail call nsz double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp nsz ogt double %i.cd, %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv.next129 to i32
  %.1101.1 = select i1 %i.cj, i32 %i.ck, i32 %.1101 ; 2 uses
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next129.1, %i.e
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge115:                                   ; preds = %.lr.ph114.new, %.prol.loopexit
  %i.cl = zext i32 %.0100.lcssa to i64
  %.not.not = icmp eq i64 %indvars.iv151, %i.cl
  br i1 %.not.not, label %.preheader.preheader, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %._crit_edge115
  %invariant.gep162 = getelementptr [8 x i8], ptr %0, i64 %i.bc ; 4 uses
  %invariant.gep164 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bg ; 4 uses
  %min.iters.check196 = icmp ult i64 %i.ab, 4
  br i1 %min.iters.check196, label %.lr.ph117.preheader209, label %vector.memcheck185

vector.memcheck185:                               ; preds = %.lr.ph117.preheader
  %i.cm = shl nsw i64 %i.bc, 3                    ; 2 uses
  %scevgep187 = getelementptr i8, ptr %scevgep186, i64 %i.cm
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.cm
  %bound0192 = icmp ult ptr %scevgep187, %scevgep191
  %bound1193 = icmp ult ptr %scevgep190, %scevgep189
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph117.preheader209, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck185
  %n.vec198 = and i64 %i.ab, -4                   ; 3 uses
  %i.cn = add i64 %indvars.iv, %n.vec198
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph197
  %index200 = phi i64 [ 0, %vector.ph197 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %i.co = add nuw i64 %indvars.iv, %index200      ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %invariant.gep162, i64 %i.co ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16     ; 2 uses
  %wide.load201 = load <2 x double>, ptr %i.cp, align 8, !tbaa !63, !alias.scope !131, !noalias !134
  %wide.load202 = load <2 x double>, ptr %i.cq, align 8, !tbaa !63, !alias.scope !131, !noalias !134
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep164, i64 %i.co ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %wide.load203 = load <2 x double>, ptr %i.cr, align 8, !tbaa !63, !alias.scope !134
  %wide.load204 = load <2 x double>, ptr %i.cs, align 8, !tbaa !63, !alias.scope !134
  store <2 x double> %wide.load203, ptr %i.cp, align 8, !tbaa !63, !alias.scope !131, !noalias !134
  store <2 x double> %wide.load204, ptr %i.cq, align 8, !tbaa !63, !alias.scope !131, !noalias !134
  store <2 x double> %wide.load201, ptr %i.cr, align 8, !tbaa !63, !alias.scope !134
  store <2 x double> %wide.load202, ptr %i.cs, align 8, !tbaa !63, !alias.scope !134
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.ct, label %middle.block206, label %vector.body199, !llvm.loop !136

middle.block206:                                  ; preds = %vector.body199
  %cmp.n207 = icmp eq i64 %i.ab, %n.vec198
  br i1 %cmp.n207, label %.preheader.preheader, label %.lr.ph117.preheader209

.lr.ph117.preheader209:                           ; preds = %vector.memcheck185, %.lr.ph117.preheader, %middle.block206
  %indvars.iv136.ph = phi i64 [ %indvars.iv, %vector.memcheck185 ], [ %indvars.iv, %.lr.ph117.preheader ], [ %i.cn, %middle.block206 ] ; 6 uses
  %i.cu = sub i64 %i.e, %indvars.iv136.ph
  %xtraiter212 = and i64 %i.cu, 1
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %.lr.ph117.prol.loopexit, label %.lr.ph117.prol

.lr.ph117.prol:                                   ; preds = %.lr.ph117.preheader209
  %gep163.prol = getelementptr [8 x i8], ptr %invariant.gep162, i64 %indvars.iv136.ph ; 2 uses
  %i.cv = load double, ptr %gep163.prol, align 8, !tbaa !63
  %gep165.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep164, i64 %indvars.iv136.ph ; 2 uses
  %i.cw = load double, ptr %gep165.prol, align 8, !tbaa !63
  store double %i.cw, ptr %gep163.prol, align 8, !tbaa !63
  store double %i.cv, ptr %gep165.prol, align 8, !tbaa !63
  %indvars.iv.next137.prol = add nuw nsw i64 %indvars.iv136.ph, 1
  br label %.lr.ph117.prol.loopexit

.lr.ph117.prol.loopexit:                          ; preds = %.lr.ph117.prol, %.lr.ph117.preheader209
  %indvars.iv136.unr = phi i64 [ %indvars.iv136.ph, %.lr.ph117.preheader209 ], [ %indvars.iv.next137.prol, %.lr.ph117.prol ]
  %i.cx = icmp eq i64 %indvars.iv136.ph, %i.x
  br i1 %i.cx, label %.preheader.preheader, label %.lr.ph117

.lr.ph114.new:                                    ; preds = %.prol.loopexit, %.lr.ph114.new
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.3, %.lr.ph114.new ], [ %indvars.iv131.unr, %.prol.loopexit ] ; 5 uses
  %i.cy = mul nuw nsw i64 %indvars.iv131, %i.e
  %gep161 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160, i64 %i.cy ; 2 uses
  %i.cz = load double, ptr %gep161, align 8, !tbaa !63
  %i.da = fdiv nsz double %i.cz, %i.bm
  store double %i.da, ptr %gep161, align 8, !tbaa !63
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %i.db = mul nuw nsw i64 %indvars.iv.next132, %i.e
  %gep161.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep160, i64 %i.db ; 2 uses
end_hunk_0
