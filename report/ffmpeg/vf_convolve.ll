Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_convolve?download=true
inline.NumInlined: 16
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@get_input:bb.a
  %i.jn = zext nneg i32 %i.d to i64
  %i.jo = sub nsw i64 %i.jm, %i.jn
  %smax = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %i.gl)
  %i.jp = mul i64 %smax, %i.gl
  %i.jq = shl i64 %i.jp, 3
  %i.jr = getelementptr i8, ptr %1, i64 %i.jq
  %scevgep447 = getelementptr i8, ptr %i.jr, i64 -4
  %i.js = mul nsw i64 %i.jh, %i.gl
  %i.jt = shl i64 %i.js, 3
  %scevgep448 = getelementptr i8, ptr %1, i64 %i.jt
  %min.iters.check450 = icmp ult i32 %5, 5
  %bound0452 = icmp ult ptr %scevgep448, %scevgep446
  %bound1453 = icmp ult ptr %invariant.gep370, %scevgep447
  %found.conflict454 = and i1 %bound0452, %bound1453
  %i.ju = and i64 %i.gl, 3                        ; 2 uses
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = select i1 %i.jv, i64 4, i64 %i.ju
  %n.vec456 = sub nsw i64 %i.gl, %i.jw            ; 2 uses
  br label %.preheader236

.preheader236:                                    ; preds = %.preheader236.preheader, %._crit_edge258
  %indvars.iv311 = phi i64 [ %i.jh, %.preheader236.preheader ], [ %indvars.iv.next312, %._crit_edge258 ] ; 2 uses
  %i.jx = mul nsw i64 %indvars.iv311, %i.ji
  %invariant.gep372 = getelementptr [8 x i8], ptr %1, i64 %i.jx ; 7 uses
  %brmerge601 = select i1 %min.iters.check450, i1 true, i1 %found.conflict454
  br i1 %brmerge601, label %scalar.ph449.preheader, label %vector.body457

vector.body457:                                   ; preds = %.preheader236, %vector.body457
  %index458 = phi i64 [ %index.next465, %vector.body457 ], [ 0, %.preheader236 ] ; 4 uses
  %i.jy = or disjoint i64 %index458, 2            ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %invariant.gep370, i64 %index458
  %i.ka = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.jy
  %wide.vec459 = load <4 x float>, ptr %i.jz, align 4, !tbaa !67, !alias.scope !158
  %strided.vec460 = shufflevector <4 x float> %wide.vec459, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec461 = load <4 x float>, ptr %i.ka, align 4, !tbaa !67, !alias.scope !158
  %strided.vec462 = shufflevector <4 x float> %wide.vec461, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.kb = getelementptr [8 x i8], ptr %invariant.gep372, i64 %index458
  %i.kc = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.jy
  %interleaved.vec463 = shufflevector <2 x float> %strided.vec460, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec463, ptr %i.kb, align 4, !tbaa !51
  %interleaved.vec464 = shufflevector <2 x float> %strided.vec462, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec464, ptr %i.kc, align 4, !tbaa !51
  %index.next465 = add nuw i64 %index458, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next465, %n.vec456
  br i1 %i.kd, label %scalar.ph449.preheader, label %vector.body457, !llvm.loop !149

scalar.ph449.preheader:                           ; preds = %vector.body457, %.preheader236
  %indvars.iv306.ph = phi i64 [ 0, %.preheader236 ], [ %n.vec456, %vector.body457 ] ; 4 uses
  %i.ke = sub nsw i64 %i.gl, %indvars.iv306.ph
  %xtraiter586 = and i64 %i.ke, 3                 ; 2 uses
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod587.not, label %scalar.ph449.prol.loopexit, label %scalar.ph449.prol

scalar.ph449.prol:                                ; preds = %scalar.ph449.preheader, %scalar.ph449.prol
  %indvars.iv306.prol = phi i64 [ %indvars.iv.next307.prol, %scalar.ph449.prol ], [ %indvars.iv306.ph, %scalar.ph449.preheader ] ; 3 uses
  %prol.iter588 = phi i64 [ %prol.iter588.next, %scalar.ph449.prol ], [ 0, %scalar.ph449.preheader ]
  %gep371.prol = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv306.prol
  %i.kf = load float, ptr %gep371.prol, align 4, !tbaa !67
  %gep373.prol = getelementptr [8 x i8], ptr %invariant.gep372, i64 %indvars.iv306.prol
  %i.kg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kf, i64 0
  store <2 x float> %i.kg, ptr %gep373.prol, align 4, !tbaa !51
  %indvars.iv.next307.prol = add nuw nsw i64 %indvars.iv306.prol, 1 ; 2 uses
  %prol.iter588.next = add i64 %prol.iter588, 1   ; 2 uses
  %prol.iter588.cmp.not = icmp eq i64 %prol.iter588.next, %xtraiter586
  br i1 %prol.iter588.cmp.not, label %scalar.ph449.prol.loopexit, label %scalar.ph449.prol, !llvm.loop !150

scalar.ph449.prol.loopexit:                       ; preds = %scalar.ph449.prol, %scalar.ph449.preheader
  %indvars.iv306.unr = phi i64 [ %indvars.iv306.ph, %scalar.ph449.preheader ], [ %indvars.iv.next307.prol, %scalar.ph449.prol ]
  %i.kh = sub nsw i64 %indvars.iv306.ph, %i.gl
  %i.ki = icmp ugt i64 %i.kh, -4
  br i1 %i.ki, label %._crit_edge258, label %scalar.ph449

scalar.ph449:                                     ; preds = %scalar.ph449.prol.loopexit, %scalar.ph449
  %indvars.iv306 = phi i64 [ %indvars.iv.next307.3, %scalar.ph449 ], [ %indvars.iv306.unr, %scalar.ph449.prol.loopexit ] ; 6 uses
  %gep371 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv306
  %i.kj = load float, ptr %gep371, align 4, !tbaa !67
  %gep373 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %indvars.iv306
  %i.kk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kj, i64 0
  store <2 x float> %i.kk, ptr %gep373, align 4, !tbaa !51
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %gep371.1 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv.next307
  %i.kl = load float, ptr %gep371.1, align 4, !tbaa !67
  %gep373.1 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %indvars.iv.next307
  %i.km = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kl, i64 0
  store <2 x float> %i.km, ptr %gep373.1, align 4, !tbaa !51
  %indvars.iv.next307.1 = add nuw nsw i64 %indvars.iv306, 2 ; 2 uses
  %gep371.2 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv.next307.1
  %i.kn = load float, ptr %gep371.2, align 4, !tbaa !67
  %gep373.2 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %indvars.iv.next307.1
  %i.ko = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kn, i64 0
  store <2 x float> %i.ko, ptr %gep373.2, align 4, !tbaa !51
  %indvars.iv.next307.2 = add nuw nsw i64 %indvars.iv306, 3 ; 2 uses
  %gep371.3 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv.next307.2
  %i.kp = load float, ptr %gep371.3, align 4, !tbaa !67
  %gep373.3 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %indvars.iv.next307.2
  %i.kq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kp, i64 0
  store <2 x float> %i.kq, ptr %gep373.3, align 4, !tbaa !51
  %indvars.iv.next307.3 = add nuw nsw i64 %indvars.iv306, 4 ; 2 uses
  %exitcond310.not.3 = icmp eq i64 %indvars.iv.next307.3, %wide.trip.count309
  br i1 %exitcond310.not.3, label %._crit_edge258, label %scalar.ph449, !llvm.loop !151

._crit_edge258:                                   ; preds = %scalar.ph449, %scalar.ph449.prol.loopexit
  %indvars.iv.next312 = add nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.kr = icmp slt i64 %indvars.iv.next312, %i.ji
  br i1 %i.kr, label %.preheader236, label %.loopexit, !llvm.loop !152

.loopexit:                                        ; preds = %._crit_edge258, %._crit_edge279, %.preheader239, %.preheader233, %._crit_edge255.split, %._crit_edge276.split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_output(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %notmask = shl nsw i32 -1, %i.b
  %i.c = xor i32 %notmask, -1                     ; 8 uses
  %i.d = sdiv i32 %4, 2                           ; 16 uses
  %i.e = sdiv i32 %3, 2                           ; 16 uses
  %i.f = icmp eq i32 %i.b, 8
  %i.g = icmp sgt i32 %4, 1                       ; 2 uses
  br i1 %i.f, label %.preheader213, label %.preheader218

.preheader218:                                    ; preds = %bb.a
  br i1 %i.g, label %.lr.ph221, label %.loopexit

.lr.ph221:                                        ; preds = %.preheader218
  %i.h = sext i32 %6 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.k = shl nsw i32 %i.e, 1
  %i.l = sext i32 %i.k to i64
  %invariant.gep = getelementptr i8, ptr %i.j, i64 %i.l
  %i.m = icmp sgt i32 %3, 1
  br i1 %i.m, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph221
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  %i.p = load i32, ptr %i.o, align 4, !tbaa !37
  %i.q = zext nneg i32 %i.d to i64
  %i.r = sext i32 %i.p to i64
  %i.s = sext i32 %5 to i64
  %wide.trip.count275 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 9 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %wide.trip.count, 1073741820   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat381 = shufflevector <4 x i32> %broadcast.splatinsert380, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.preheader213:                                    ; preds = %bb.a
  br i1 %i.g, label %.lr.ph248, label %.loopexit

.lr.ph248:                                        ; preds = %.preheader213
  %i.t = sext i32 %6 to i64                       ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.t
  %i.x = sext i32 %i.e to i64                     ; 2 uses
  %i.y = icmp sgt i32 %3, 1
  br i1 %i.y, label %.lr.ph245.preheader, label %.loopexit

.lr.ph245.preheader:                              ; preds = %.lr.ph248
  %i.z = zext nneg i32 %i.d to i64
  %i.aa = sext i32 %5 to i64                      ; 4 uses
  %wide.trip.count315 = zext nneg i32 %i.d to i64 ; 3 uses
  %wide.trip.count310 = zext nneg i32 %i.e to i64 ; 29 uses
  %i.ab = add nsw i64 %wide.trip.count310, -1     ; 2 uses
  %i.ac = add nuw nsw i64 %wide.trip.count315, 2305843009213693951
  %i.ad = mul i64 %i.ac, %i.aa
  %i.ae = add i64 %i.ad, %wide.trip.count310
  %i.af = shl i64 %i.ae, 3
  %i.ag = getelementptr i8, ptr %1, i64 %i.af
  %scevgep = getelementptr i8, ptr %i.ag, i64 -4
  %min.iters.check427 = icmp ult i32 %3, 26
  %mul.result = shl nsw i64 %i.ab, 3
  %mul.overflow = icmp ugt i64 %i.ab, 2305843009213693951
  %stride.check = icmp slt i32 %5, 0
  %i.ah = and i64 %wide.trip.count310, 7          ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 8, i64 %i.ah
  %n.vec429 = sub nsw i64 %wide.trip.count310, %i.aj ; 2 uses
  %broadcast.splatinsert430 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat431 = shufflevector <4 x float> %broadcast.splatinsert430, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ak = add nsw i64 %wide.trip.count310, -1
  br label %.lr.ph245

.lr.ph254:                                        ; preds = %._crit_edge246
  %i.al = sext i32 %6 to i64                      ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.al
  %i.ap = zext nneg i32 %i.d to i64
  %wide.trip.count325 = zext nneg i32 %i.d to i64
  %wide.trip.count320 = zext nneg i32 %i.e to i64
  %i.aq = add nsw i64 %wide.trip.count310, -1     ; 2 uses
  %min.iters.check452 = icmp ult i32 %3, 26
  %mul.result441 = shl nsw i64 %i.aq, 3
  %mul.overflow442 = icmp ugt i64 %i.aq, 2305843009213693951
  %i.ar = and i64 %wide.trip.count310, 7          ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.as, i64 8, i64 %i.ar
  %n.vec458 = sub nsw i64 %wide.trip.count310, %i.at ; 2 uses
  %broadcast.splatinsert459 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat460 = shufflevector <4 x float> %broadcast.splatinsert459, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.au = add nsw i64 %wide.trip.count310, -1
  br label %.lr.ph251

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %._crit_edge246
  %indvars.iv312 = phi i64 [ 0, %.lr.ph245.preheader ], [ %indvars.iv.next313, %._crit_edge246 ] ; 3 uses
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !69  ; 2 uses
  %i.aw = add nuw nsw i64 %indvars.iv312, %i.z
  %i.ax = load i32, ptr %i.w, align 4, !tbaa !37
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.aw, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.x ; 5 uses
  %i.bc = mul nsw i64 %indvars.iv312, %i.aa
  %invariant.gep371 = getelementptr [8 x i8], ptr %1, i64 %i.bc ; 7 uses
  %i.bd = getelementptr i8, ptr %invariant.gep371, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %invariant.gep371
  %i.bf = or i1 %i.be, %mul.overflow
  %or.cond = select i1 %min.iters.check427, i1 true, i1 %i.bf
  br i1 %or.cond, label %scalar.ph426.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph245
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.x
  %i.bh = getelementptr i8, ptr %i.bg, i64 %wide.trip.count310
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.az
  %bound0 = icmp ult ptr %i.bb, %scevgep
  %bound1 = icmp ult ptr %1, %i.bi
  %found.conflict = and i1 %bound0, %bound1
  %i.bj = or i1 %found.conflict, %stride.check
  br i1 %i.bj, label %scalar.ph426.preheader, label %vector.body432

vector.body432:                                   ; preds = %vector.memcheck, %vector.body432
  %index433 = phi i64 [ %index.next436, %vector.body432 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bk = getelementptr [8 x i8], ptr %invariant.gep371, i64 %index433
  %i.bl = getelementptr [8 x i8], ptr %invariant.gep371, i64 %index433
  %i.bm = getelementptr i8, ptr %i.bl, i64 32
  %wide.vec = load <8 x float>, ptr %i.bk, align 4, !tbaa !67, !alias.scope !195
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec434 = load <8 x float>, ptr %i.bm, align 4, !tbaa !67, !alias.scope !195
  %strided.vec435 = shufflevector <8 x float> %wide.vec434, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bn = fmul nsz <4 x float> %broadcast.splat431, %strided.vec
  %i.bo = fmul nsz <4 x float> %broadcast.splat431, %strided.vec435
  %i.bp = fptosi <4 x float> %i.bn to <4 x i32>
  %i.bq = fptosi <4 x float> %i.bo to <4 x i32>
  %i.br = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bp, <4 x i32> zeroinitializer)
  %i.bs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bq, <4 x i32> zeroinitializer)
  %i.bt = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.br, <4 x i32> splat (i32 255))
  %i.bu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bs, <4 x i32> splat (i32 255))
  %i.bv = trunc nuw <4 x i32> %i.bt to <4 x i8>
  %i.bw = trunc nuw <4 x i32> %i.bu to <4 x i8>
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index433 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store <4 x i8> %i.bv, ptr %i.bx, align 1, !tbaa !45, !alias.scope !196, !noalias !195
  store <4 x i8> %i.bw, ptr %i.by, align 1, !tbaa !45, !alias.scope !196, !noalias !195
  %index.next436 = add nuw i64 %index433, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.bz, label %scalar.ph426.preheader, label %vector.body432, !llvm.loop !162

scalar.ph426.preheader:                           ; preds = %vector.body432, %vector.memcheck, %.lr.ph245
  %indvars.iv307.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph245 ], [ %n.vec429, %vector.body432 ] ; 6 uses
  %i.ca = sub nsw i64 %wide.trip.count310, %indvars.iv307.ph
  %xtraiter = and i64 %i.ca, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph426.prol.loopexit, label %scalar.ph426.prol

scalar.ph426.prol:                                ; preds = %scalar.ph426.preheader
  %gep372.prol = getelementptr [8 x i8], ptr %invariant.gep371, i64 %indvars.iv307.ph
  %i.cb = load float, ptr %gep372.prol, align 4, !tbaa !67
  %i.cc = fmul nsz float %7, %i.cb
  %i.cd = fptosi float %i.cc to i32
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 0)
  %.0.i198209.prol = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 255)
  %.0.i198.prol = trunc nuw i32 %.0.i198209.prol to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv307.ph
  store i8 %.0.i198.prol, ptr %i.cf, align 1, !tbaa !45
  %indvars.iv.next308.prol = add nuw nsw i64 %indvars.iv307.ph, 1
  br label %scalar.ph426.prol.loopexit

scalar.ph426.prol.loopexit:                       ; preds = %scalar.ph426.prol, %scalar.ph426.preheader
  %indvars.iv307.unr = phi i64 [ %indvars.iv307.ph, %scalar.ph426.preheader ], [ %indvars.iv.next308.prol, %scalar.ph426.prol ]
  %i.cg = icmp eq i64 %indvars.iv307.ph, %i.ak
  br i1 %i.cg, label %._crit_edge246, label %scalar.ph426

scalar.ph426:                                     ; preds = %scalar.ph426.prol.loopexit, %scalar.ph426
  %indvars.iv307 = phi i64 [ %indvars.iv.next308.1, %scalar.ph426 ], [ %indvars.iv307.unr, %scalar.ph426.prol.loopexit ] ; 4 uses
  %gep372 = getelementptr [8 x i8], ptr %invariant.gep371, i64 %indvars.iv307
  %i.ch = load float, ptr %gep372, align 4, !tbaa !67
  %i.ci = fmul nsz float %7, %i.ch
  %i.cj = fptosi float %i.ci to i32
  %i.ck = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 0)
  %.0.i198209 = tail call i32 @llvm.umin.i32(i32 %i.ck, i32 255)
  %.0.i198 = trunc nuw i32 %.0.i198209 to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv307
  store i8 %.0.i198, ptr %i.cl, align 1, !tbaa !45
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %gep372.1 = getelementptr [8 x i8], ptr %invariant.gep371, i64 %indvars.iv.next308
  %i.cm = load float, ptr %gep372.1, align 4, !tbaa !67
  %i.cn = fmul nsz float %7, %i.cm
  %i.co = fptosi float %i.cn to i32
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %.0.i198209.1 = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 255)
  %.0.i198.1 = trunc nuw i32 %.0.i198209.1 to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next308
  store i8 %.0.i198.1, ptr %i.cq, align 1, !tbaa !45
  %indvars.iv.next308.1 = add nuw nsw i64 %indvars.iv307, 2 ; 2 uses
  %exitcond311.not.1 = icmp eq i64 %indvars.iv.next308.1, %wide.trip.count310
  br i1 %exitcond311.not.1, label %._crit_edge246, label %scalar.ph426, !llvm.loop !163

._crit_edge246:                                   ; preds = %scalar.ph426, %scalar.ph426.prol.loopexit
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %.lr.ph254, label %.lr.ph245, !llvm.loop !164

.lr.ph260:                                        ; preds = %._crit_edge252
  %i.cr = sext i32 %6 to i64                      ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cr
  %i.cv = zext nneg i32 %i.e to i64
  %i.cw = sub i32 %5, %i.d
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %i.cy = sext i32 %5 to i64
  %wide.trip.count335 = zext nneg i32 %i.d to i64
  %wide.trip.count330 = zext nneg i32 %i.e to i64
  %i.cz = add nsw i64 %wide.trip.count310, -1     ; 2 uses
  %i.da = add nsw i64 %i.cx, %wide.trip.count315
  %i.db = shl nsw i64 %i.da, 3
  %i.dc = add nsw i64 %i.db, -8
  %i.dd = mul i64 %i.dc, %i.aa
  %i.de = shl nuw nsw i64 %wide.trip.count310, 3
  %i.df = getelementptr i8, ptr %1, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.de
  %scevgep483 = getelementptr i8, ptr %i.dg, i64 -4
  %i.dh = mul nsw i64 %i.aa, %i.cx
  %i.di = shl i64 %i.dh, 3
  %scevgep484 = getelementptr i8, ptr %1, i64 %i.di
  %i.dj = shl nuw nsw i64 %wide.trip.count310, 1
  %min.iters.check486 = icmp ult i32 %3, 26
  %mul.result472 = shl nsw i64 %i.cz, 3
  %mul.overflow473 = icmp ugt i64 %i.cz, 2305843009213693951
  %stride.check491 = icmp slt i32 %5, 0
  %i.dk = and i64 %wide.trip.count310, 7          ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = select i1 %i.dl, i64 8, i64 %i.dk
  %n.vec493 = sub nsw i64 %wide.trip.count310, %i.dm ; 2 uses
  %broadcast.splatinsert494 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat495 = shufflevector <4 x float> %broadcast.splatinsert494, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dn = add nsw i64 %wide.trip.count310, -1
  br label %.lr.ph257

.lr.ph251:                                        ; preds = %.lr.ph254, %._crit_edge252
  %indvars.iv322 = phi i64 [ 0, %.lr.ph254 ], [ %indvars.iv.next323, %._crit_edge252 ] ; 2 uses
  %i.do = load ptr, ptr %i.am, align 8, !tbaa !69 ; 2 uses
  %i.dp = add nuw nsw i64 %indvars.iv322, %i.ap
  %i.dq = load i32, ptr %i.ao, align 4, !tbaa !37
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.dp, %i.dr                ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.ds ; 5 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 3 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.next323 to i32
  %i.dv = mul i32 %5, %i.du
  %i.dw = sub i32 %i.dv, %i.e
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %invariant.gep373 = getelementptr [8 x i8], ptr %1, i64 %i.dx ; 8 uses
  %i.dy = getelementptr i8, ptr %invariant.gep373, i64 %mul.result441
  %i.dz = icmp ult ptr %i.dy, %invariant.gep373
  %i.ea = or i1 %i.dz, %mul.overflow442
  %or.cond547 = select i1 %min.iters.check452, i1 true, i1 %i.ea
  br i1 %or.cond547, label %scalar.ph451.preheader, label %vector.memcheck453

vector.memcheck453:                               ; preds = %.lr.ph251
  %i.eb = getelementptr i8, ptr %i.do, i64 %i.ds
  %i.ec = getelementptr i8, ptr %i.eb, i64 %wide.trip.count310
  %8 = add nsw i64 %wide.trip.count310, %i.dx
  %i.ed = shl nsw i64 %8, 3
  %9 = getelementptr i8, ptr %1, i64 %i.ed
  %i.ee = getelementptr i8, ptr %9, i64 -4
  %bound0454 = icmp ult ptr %i.dt, %i.ee
  %bound1455 = icmp ult ptr %invariant.gep373, %i.ec
  %found.conflict456 = and i1 %bound0454, %bound1455
  br i1 %found.conflict456, label %scalar.ph451.preheader, label %vector.body461

vector.body461:                                   ; preds = %vector.memcheck453, %vector.body461
  %index462 = phi i64 [ %index.next467, %vector.body461 ], [ 0, %vector.memcheck453 ] ; 4 uses
  %i.ef = getelementptr [8 x i8], ptr %invariant.gep373, i64 %index462
  %i.eg = getelementptr [8 x i8], ptr %invariant.gep373, i64 %index462
  %i.eh = getelementptr i8, ptr %i.eg, i64 32
  %wide.vec463 = load <8 x float>, ptr %i.ef, align 4, !tbaa !67, !alias.scope !197
  %strided.vec464 = shufflevector <8 x float> %wide.vec463, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec465 = load <8 x float>, ptr %i.eh, align 4, !tbaa !67, !alias.scope !197
  %strided.vec466 = shufflevector <8 x float> %wide.vec465, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ei = fmul nsz <4 x float> %broadcast.splat460, %strided.vec464
  %i.ej = fmul nsz <4 x float> %broadcast.splat460, %strided.vec466
  %i.ek = fptosi <4 x float> %i.ei to <4 x i32>
  %i.el = fptosi <4 x float> %i.ej to <4 x i32>
  %i.em = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ek, <4 x i32> zeroinitializer)
  %i.en = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.el, <4 x i32> zeroinitializer)
  %i.eo = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.em, <4 x i32> splat (i32 255))
  %i.ep = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.en, <4 x i32> splat (i32 255))
  %i.eq = trunc nuw <4 x i32> %i.eo to <4 x i8>
  %i.er = trunc nuw <4 x i32> %i.ep to <4 x i8>
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index462 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store <4 x i8> %i.eq, ptr %i.es, align 1, !tbaa !45, !alias.scope !198, !noalias !197
  store <4 x i8> %i.er, ptr %i.et, align 1, !tbaa !45, !alias.scope !198, !noalias !197
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.eu, label %scalar.ph451.preheader, label %vector.body461, !llvm.loop !168

scalar.ph451.preheader:                           ; preds = %vector.body461, %vector.memcheck453, %.lr.ph251
  %indvars.iv317.ph = phi i64 [ 0, %vector.memcheck453 ], [ 0, %.lr.ph251 ], [ %n.vec458, %vector.body461 ] ; 6 uses
  %i.ev = sub nsw i64 %wide.trip.count310, %indvars.iv317.ph
  %xtraiter537 = and i64 %i.ev, 1
  %lcmp.mod538.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod538.not, label %scalar.ph451.prol.loopexit, label %scalar.ph451.prol

scalar.ph451.prol:                                ; preds = %scalar.ph451.preheader
  %gep374.prol = getelementptr [8 x i8], ptr %invariant.gep373, i64 %indvars.iv317.ph
  %i.ew = load float, ptr %gep374.prol, align 4, !tbaa !67
  %i.ex = fmul nsz float %7, %i.ew
  %i.ey = fptosi float %i.ex to i32
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 0)
  %.0.i195208.prol = tail call i32 @llvm.umin.i32(i32 %i.ez, i32 255)
  %.0.i195.prol = trunc nuw i32 %.0.i195208.prol to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv317.ph
  store i8 %.0.i195.prol, ptr %i.fa, align 1, !tbaa !45
  %indvars.iv.next318.prol = add nuw nsw i64 %indvars.iv317.ph, 1
  br label %scalar.ph451.prol.loopexit

scalar.ph451.prol.loopexit:                       ; preds = %scalar.ph451.prol, %scalar.ph451.preheader
  %indvars.iv317.unr = phi i64 [ %indvars.iv317.ph, %scalar.ph451.preheader ], [ %indvars.iv.next318.prol, %scalar.ph451.prol ]
  %i.fb = icmp eq i64 %indvars.iv317.ph, %i.au
  br i1 %i.fb, label %._crit_edge252, label %scalar.ph451

scalar.ph451:                                     ; preds = %scalar.ph451.prol.loopexit, %scalar.ph451
  %indvars.iv317 = phi i64 [ %indvars.iv.next318.1, %scalar.ph451 ], [ %indvars.iv317.unr, %scalar.ph451.prol.loopexit ] ; 4 uses
  %gep374 = getelementptr [8 x i8], ptr %invariant.gep373, i64 %indvars.iv317
  %i.fc = load float, ptr %gep374, align 4, !tbaa !67
  %i.fd = fmul nsz float %7, %i.fc
  %i.fe = fptosi float %i.fd to i32
  %i.ff = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 0)
  %.0.i195208 = tail call i32 @llvm.umin.i32(i32 %i.ff, i32 255)
  %.0.i195 = trunc nuw i32 %.0.i195208 to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv317
  store i8 %.0.i195, ptr %i.fg, align 1, !tbaa !45
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %gep374.1 = getelementptr [8 x i8], ptr %invariant.gep373, i64 %indvars.iv.next318
  %i.fh = load float, ptr %gep374.1, align 4, !tbaa !67
  %i.fi = fmul nsz float %7, %i.fh
  %i.fj = fptosi float %i.fi to i32
  %i.fk = tail call i32 @llvm.smax.i32(i32 %i.fj, i32 0)
  %.0.i195208.1 = tail call i32 @llvm.umin.i32(i32 %i.fk, i32 255)
  %.0.i195.1 = trunc nuw i32 %.0.i195208.1 to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next318
  store i8 %.0.i195.1, ptr %i.fl, align 1, !tbaa !45
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317, 2 ; 2 uses
  %exitcond321.not.1 = icmp eq i64 %indvars.iv.next318.1, %wide.trip.count320
  br i1 %exitcond321.not.1, label %._crit_edge252, label %scalar.ph451, !llvm.loop !169

._crit_edge252:                                   ; preds = %scalar.ph451, %scalar.ph451.prol.loopexit
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %.lr.ph260, label %.lr.ph251, !llvm.loop !170

.lr.ph266:                                        ; preds = %._crit_edge258
  %i.fm = sext i32 %6 to i64                      ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fm
  %reass.sub269 = sub i32 %5, %i.d
  %invariant.op267 = add i32 %reass.sub269, 1
  %wide.trip.count345 = zext nneg i32 %i.d to i64
  %wide.trip.count340 = zext nneg i32 %i.e to i64
  %i.fq = add nsw i64 %wide.trip.count310, -1     ; 2 uses
  %min.iters.check518 = icmp ult i32 %3, 26
  %mul.result507 = shl nsw i64 %i.fq, 3
  %mul.overflow508 = icmp ugt i64 %i.fq, 2305843009213693951
  %i.fr = and i64 %wide.trip.count310, 7          ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  %i.ft = select i1 %i.fs, i64 8, i64 %i.fr
  %n.vec524 = sub nsw i64 %wide.trip.count310, %i.ft ; 2 uses
  %broadcast.splatinsert525 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat526 = shufflevector <4 x float> %broadcast.splatinsert525, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fu = add nsw i64 %wide.trip.count310, -1
  br label %.lr.ph263

.lr.ph257:                                        ; preds = %.lr.ph260, %._crit_edge258
  %indvars.iv332 = phi i64 [ 0, %.lr.ph260 ], [ %indvars.iv.next333, %._crit_edge258 ] ; 3 uses
  %i.fv = load ptr, ptr %i.cs, align 8, !tbaa !69 ; 2 uses
  %i.fw = load i32, ptr %i.cu, align 4, !tbaa !37
  %i.fx = sext i32 %i.fw to i64
  %i.fy = mul nsw i64 %indvars.iv332, %i.fx       ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.cv ; 5 uses
  %i.gb = add nsw i64 %indvars.iv332, %i.cx
  %i.gc = mul nsw i64 %i.gb, %i.cy
  %invariant.gep375 = getelementptr [8 x i8], ptr %1, i64 %i.gc ; 7 uses
  %i.gd = getelementptr i8, ptr %invariant.gep375, i64 %mul.result472
  %i.ge = icmp ult ptr %i.gd, %invariant.gep375
  %i.gf = or i1 %i.ge, %mul.overflow473
  %or.cond550 = select i1 %min.iters.check486, i1 true, i1 %i.gf
  br i1 %or.cond550, label %scalar.ph485.preheader, label %vector.memcheck487

vector.memcheck487:                               ; preds = %.lr.ph257
  %i.gg = getelementptr i8, ptr %i.fv, i64 %i.fy
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.dj
  %bound0488 = icmp ult ptr %i.ga, %scevgep483
  %bound1489 = icmp ult ptr %scevgep484, %i.gh
  %found.conflict490 = and i1 %bound0488, %bound1489
  %i.gi = or i1 %found.conflict490, %stride.check491
  br i1 %i.gi, label %scalar.ph485.preheader, label %vector.body496

vector.body496:                                   ; preds = %vector.memcheck487, %vector.body496
  %index497 = phi i64 [ %index.next502, %vector.body496 ], [ 0, %vector.memcheck487 ] ; 4 uses
  %i.gj = getelementptr [8 x i8], ptr %invariant.gep375, i64 %index497
  %i.gk = getelementptr [8 x i8], ptr %invariant.gep375, i64 %index497
  %i.gl = getelementptr i8, ptr %i.gk, i64 32
  %wide.vec498 = load <8 x float>, ptr %i.gj, align 4, !tbaa !67, !alias.scope !199
  %strided.vec499 = shufflevector <8 x float> %wide.vec498, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec500 = load <8 x float>, ptr %i.gl, align 4, !tbaa !67, !alias.scope !199
  %strided.vec501 = shufflevector <8 x float> %wide.vec500, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gm = fmul nsz <4 x float> %broadcast.splat495, %strided.vec499
  %i.gn = fmul nsz <4 x float> %broadcast.splat495, %strided.vec501
  %i.go = fptosi <4 x float> %i.gm to <4 x i32>
  %i.gp = fptosi <4 x float> %i.gn to <4 x i32>
  %i.gq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.go, <4 x i32> zeroinitializer)
  %i.gr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gp, <4 x i32> zeroinitializer)
  %i.gs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gq, <4 x i32> splat (i32 255))
  %i.gt = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gr, <4 x i32> splat (i32 255))
  %i.gu = trunc nuw <4 x i32> %i.gs to <4 x i8>
  %i.gv = trunc nuw <4 x i32> %i.gt to <4 x i8>
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 %index497 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store <4 x i8> %i.gu, ptr %i.gw, align 1, !tbaa !45, !alias.scope !200, !noalias !199
  store <4 x i8> %i.gv, ptr %i.gx, align 1, !tbaa !45, !alias.scope !200, !noalias !199
  %index.next502 = add nuw i64 %index497, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next502, %n.vec493
  br i1 %i.gy, label %scalar.ph485.preheader, label %vector.body496, !llvm.loop !174

scalar.ph485.preheader:                           ; preds = %vector.body496, %vector.memcheck487, %.lr.ph257
  %indvars.iv327.ph = phi i64 [ 0, %vector.memcheck487 ], [ 0, %.lr.ph257 ], [ %n.vec493, %vector.body496 ] ; 6 uses
  %i.gz = sub nsw i64 %wide.trip.count310, %indvars.iv327.ph
  %xtraiter539 = and i64 %i.gz, 1
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol

scalar.ph485.prol:                                ; preds = %scalar.ph485.preheader
  %gep376.prol = getelementptr [8 x i8], ptr %invariant.gep375, i64 %indvars.iv327.ph
  %i.ha = load float, ptr %gep376.prol, align 4, !tbaa !67
  %i.hb = fmul nsz float %7, %i.ha
  %i.hc = fptosi float %i.hb to i32
  %i.hd = tail call i32 @llvm.smax.i32(i32 %i.hc, i32 0)
  %.0.i192207.prol = tail call i32 @llvm.umin.i32(i32 %i.hd, i32 255)
  %.0.i192.prol = trunc nuw i32 %.0.i192207.prol to i8
  %i.he = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv327.ph
  store i8 %.0.i192.prol, ptr %i.he, align 1, !tbaa !45
  %indvars.iv.next328.prol = add nuw nsw i64 %indvars.iv327.ph, 1
  br label %scalar.ph485.prol.loopexit

scalar.ph485.prol.loopexit:                       ; preds = %scalar.ph485.prol, %scalar.ph485.preheader
  %indvars.iv327.unr = phi i64 [ %indvars.iv327.ph, %scalar.ph485.preheader ], [ %indvars.iv.next328.prol, %scalar.ph485.prol ]
  %i.hf = icmp eq i64 %indvars.iv327.ph, %i.dn
  br i1 %i.hf, label %._crit_edge258, label %scalar.ph485

scalar.ph485:                                     ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485
  %indvars.iv327 = phi i64 [ %indvars.iv.next328.1, %scalar.ph485 ], [ %indvars.iv327.unr, %scalar.ph485.prol.loopexit ] ; 4 uses
  %gep376 = getelementptr [8 x i8], ptr %invariant.gep375, i64 %indvars.iv327
  %i.hg = load float, ptr %gep376, align 4, !tbaa !67
  %i.hh = fmul nsz float %7, %i.hg
  %i.hi = fptosi float %i.hh to i32
  %i.hj = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %.0.i192207 = tail call i32 @llvm.umin.i32(i32 %i.hj, i32 255)
  %.0.i192 = trunc nuw i32 %.0.i192207 to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv327
  store i8 %.0.i192, ptr %i.hk, align 1, !tbaa !45
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %gep376.1 = getelementptr [8 x i8], ptr %invariant.gep375, i64 %indvars.iv.next328
  %i.hl = load float, ptr %gep376.1, align 4, !tbaa !67
  %i.hm = fmul nsz float %7, %i.hl
  %i.hn = fptosi float %i.hm to i32
  %i.ho = tail call i32 @llvm.smax.i32(i32 %i.hn, i32 0)
  %.0.i192207.1 = tail call i32 @llvm.umin.i32(i32 %i.ho, i32 255)
  %.0.i192.1 = trunc nuw i32 %.0.i192207.1 to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.next328
  store i8 %.0.i192.1, ptr %i.hp, align 1, !tbaa !45
  %indvars.iv.next328.1 = add nuw nsw i64 %indvars.iv327, 2 ; 2 uses
  %exitcond331.not.1 = icmp eq i64 %indvars.iv.next328.1, %wide.trip.count330
  br i1 %exitcond331.not.1, label %._crit_edge258, label %scalar.ph485, !llvm.loop !175

._crit_edge258:                                   ; preds = %scalar.ph485, %scalar.ph485.prol.loopexit
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next333, %wide.trip.count335
  br i1 %exitcond336.not, label %.lr.ph266, label %.lr.ph257, !llvm.loop !176

.lr.ph263:                                        ; preds = %.lr.ph266, %._crit_edge264
  %indvars.iv342 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next343, %._crit_edge264 ] ; 3 uses
  %i.hq = load ptr, ptr %i.fn, align 8, !tbaa !69 ; 2 uses
  %i.hr = load i32, ptr %i.fp, align 4, !tbaa !37
  %i.hs = sext i32 %i.hr to i64
  %i.ht = mul nsw i64 %indvars.iv342, %i.hs       ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %i.hq, i64 %i.ht ; 5 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv342 to i32
  %.reass.reass268 = add i32 %invariant.op267, %i.hv
  %i.hw = mul i32 %.reass.reass268, %5
  %i.hx = sub i32 %i.hw, %i.e
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %invariant.gep377 = getelementptr [8 x i8], ptr %1, i64 %i.hy ; 8 uses
  %i.hz = getelementptr i8, ptr %invariant.gep377, i64 %mul.result507
  %i.ia = icmp ult ptr %i.hz, %invariant.gep377
  %i.ib = or i1 %i.ia, %mul.overflow508
  %or.cond553 = select i1 %min.iters.check518, i1 true, i1 %i.ib
  br i1 %or.cond553, label %scalar.ph517.preheader, label %vector.memcheck519

vector.memcheck519:                               ; preds = %.lr.ph263
  %i.ic = getelementptr i8, ptr %i.hq, i64 %i.ht
  %i.id = getelementptr i8, ptr %i.ic, i64 %wide.trip.count310
  %10 = add nsw i64 %wide.trip.count310, %i.hy
  %i.ie = shl nsw i64 %10, 3
  %11 = getelementptr i8, ptr %1, i64 %i.ie
  %i.if = getelementptr i8, ptr %11, i64 -4
  %bound0520 = icmp ult ptr %i.hu, %i.if
  %bound1521 = icmp ult ptr %invariant.gep377, %i.id
  %found.conflict522 = and i1 %bound0520, %bound1521
  br i1 %found.conflict522, label %scalar.ph517.preheader, label %vector.body527

vector.body527:                                   ; preds = %vector.memcheck519, %vector.body527
  %index528 = phi i64 [ %index.next533, %vector.body527 ], [ 0, %vector.memcheck519 ] ; 4 uses
  %i.ig = getelementptr [8 x i8], ptr %invariant.gep377, i64 %index528
  %i.ih = getelementptr [8 x i8], ptr %invariant.gep377, i64 %index528
  %i.ii = getelementptr i8, ptr %i.ih, i64 32
  %wide.vec529 = load <8 x float>, ptr %i.ig, align 4, !tbaa !67, !alias.scope !201
  %strided.vec530 = shufflevector <8 x float> %wide.vec529, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec531 = load <8 x float>, ptr %i.ii, align 4, !tbaa !67, !alias.scope !201
  %strided.vec532 = shufflevector <8 x float> %wide.vec531, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ij = fmul nsz <4 x float> %broadcast.splat526, %strided.vec530
  %i.ik = fmul nsz <4 x float> %broadcast.splat526, %strided.vec532
  %i.il = fptosi <4 x float> %i.ij to <4 x i32>
  %i.im = fptosi <4 x float> %i.ik to <4 x i32>
  %i.in = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.il, <4 x i32> zeroinitializer)
  %i.io = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.im, <4 x i32> zeroinitializer)
  %i.ip = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.in, <4 x i32> splat (i32 255))
  %i.iq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.io, <4 x i32> splat (i32 255))
  %i.ir = trunc nuw <4 x i32> %i.ip to <4 x i8>
  %i.is = trunc nuw <4 x i32> %i.iq to <4 x i8>
  %i.it = getelementptr inbounds nuw i8, ptr %i.hu, i64 %index528 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store <4 x i8> %i.ir, ptr %i.it, align 1, !tbaa !45, !alias.scope !202, !noalias !201
  store <4 x i8> %i.is, ptr %i.iu, align 1, !tbaa !45, !alias.scope !202, !noalias !201
  %index.next533 = add nuw i64 %index528, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next533, %n.vec524
  br i1 %i.iv, label %scalar.ph517.preheader, label %vector.body527, !llvm.loop !180

scalar.ph517.preheader:                           ; preds = %vector.body527, %vector.memcheck519, %.lr.ph263
  %indvars.iv337.ph = phi i64 [ 0, %vector.memcheck519 ], [ 0, %.lr.ph263 ], [ %n.vec524, %vector.body527 ] ; 6 uses
  %i.iw = sub nsw i64 %wide.trip.count310, %indvars.iv337.ph
  %xtraiter541 = and i64 %i.iw, 1
  %lcmp.mod542.not = icmp eq i64 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %scalar.ph517.prol.loopexit, label %scalar.ph517.prol

scalar.ph517.prol:                                ; preds = %scalar.ph517.preheader
  %gep378.prol = getelementptr [8 x i8], ptr %invariant.gep377, i64 %indvars.iv337.ph
  %i.ix = load float, ptr %gep378.prol, align 4, !tbaa !67
  %i.iy = fmul nsz float %7, %i.ix
  %i.iz = fptosi float %i.iy to i32
  %i.ja = tail call i32 @llvm.smax.i32(i32 %i.iz, i32 0)
  %.0.i206.prol = tail call i32 @llvm.umin.i32(i32 %i.ja, i32 255)
  %.0.i.prol = trunc nuw i32 %.0.i206.prol to i8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv337.ph
  store i8 %.0.i.prol, ptr %i.jb, align 1, !tbaa !45
  %indvars.iv.next338.prol = add nuw nsw i64 %indvars.iv337.ph, 1
  br label %scalar.ph517.prol.loopexit

scalar.ph517.prol.loopexit:                       ; preds = %scalar.ph517.prol, %scalar.ph517.preheader
  %indvars.iv337.unr = phi i64 [ %indvars.iv337.ph, %scalar.ph517.preheader ], [ %indvars.iv.next338.prol, %scalar.ph517.prol ]
  %i.jc = icmp eq i64 %indvars.iv337.ph, %i.fu
  br i1 %i.jc, label %._crit_edge264, label %scalar.ph517

scalar.ph517:                                     ; preds = %scalar.ph517.prol.loopexit, %scalar.ph517
  %indvars.iv337 = phi i64 [ %indvars.iv.next338.1, %scalar.ph517 ], [ %indvars.iv337.unr, %scalar.ph517.prol.loopexit ] ; 4 uses
  %gep378 = getelementptr [8 x i8], ptr %invariant.gep377, i64 %indvars.iv337
  %i.jd = load float, ptr %gep378, align 4, !tbaa !67
  %i.je = fmul nsz float %7, %i.jd
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %.0.i206 = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 255)
  %.0.i = trunc nuw i32 %.0.i206 to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv337
  store i8 %.0.i, ptr %i.jh, align 1, !tbaa !45
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %gep378.1 = getelementptr [8 x i8], ptr %invariant.gep377, i64 %indvars.iv.next338
  %i.ji = load float, ptr %gep378.1, align 4, !tbaa !67
  %i.jj = fmul nsz float %7, %i.ji
  %i.jk = fptosi float %i.jj to i32
  %i.jl = tail call i32 @llvm.smax.i32(i32 %i.jk, i32 0)
  %.0.i206.1 = tail call i32 @llvm.umin.i32(i32 %i.jl, i32 255)
  %.0.i.1 = trunc nuw i32 %.0.i206.1 to i8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv.next338
  store i8 %.0.i.1, ptr %i.jm, align 1, !tbaa !45
  %indvars.iv.next338.1 = add nuw nsw i64 %indvars.iv337, 2 ; 2 uses
  %exitcond341.not.1 = icmp eq i64 %indvars.iv.next338.1, %wide.trip.count340
  br i1 %exitcond341.not.1, label %._crit_edge264, label %scalar.ph517, !llvm.loop !181

._crit_edge264:                                   ; preds = %scalar.ph517, %scalar.ph517.prol.loopexit
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count345
  br i1 %exitcond346.not, label %.loopexit, label %.lr.ph263, !llvm.loop !182

.lr.ph227:                                        ; preds = %._crit_edge
  %i.jn = sext i32 %6 to i64                      ; 2 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !69
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.jn
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !37
  %i.jt = zext nneg i32 %i.d to i64
  %i.ju = sext i32 %i.js to i64
  %wide.trip.count285 = zext nneg i32 %i.d to i64
  %wide.trip.count280 = zext nneg i32 %i.e to i64
  %min.iters.check383 = icmp ult i32 %3, 8
  %n.vec385 = and i64 %wide.trip.count, 1073741820 ; 3 uses
  %broadcast.splatinsert386 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat387 = shufflevector <4 x float> %broadcast.splatinsert386, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert388 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat389 = shufflevector <4 x i32> %broadcast.splatinsert388, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n394 = icmp eq i64 %n.vec385, %wide.trip.count
  br label %.lr.ph224

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv272 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next273, %._crit_edge ] ; 3 uses
  %i.jv = add nuw nsw i64 %indvars.iv272, %i.q
  %i.jw = mul nsw i64 %i.jv, %i.r
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.jw ; 2 uses
  %i.jx = mul nsw i64 %indvars.iv272, %i.s
  %invariant.gep363 = getelementptr [8 x i8], ptr %1, i64 %i.jx ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.jy = getelementptr [8 x i8], ptr %invariant.gep363, i64 %index
  %i.jz = getelementptr [8 x i8], ptr %invariant.gep363, i64 %index
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  %i.kb = getelementptr [8 x i8], ptr %invariant.gep363, i64 %index
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  %i.kd = getelementptr [8 x i8], ptr %invariant.gep363, i64 %index
  %i.ke = getelementptr i8, ptr %i.kd, i64 24
  %i.kf = load float, ptr %i.jy, align 4, !tbaa !67
  %i.kg = load float, ptr %i.ka, align 4, !tbaa !67
  %i.kh = load float, ptr %i.kc, align 4, !tbaa !67
  %i.ki = load float, ptr %i.ke, align 4, !tbaa !67
  %i.kj = insertelement <4 x float> poison, float %i.kf, i64 0
  %i.kk = insertelement <4 x float> %i.kj, float %i.kg, i64 1
  %i.kl = insertelement <4 x float> %i.kk, float %i.kh, i64 2
  %i.km = insertelement <4 x float> %i.kl, float %i.ki, i64 3
  %i.kn = fmul nsz <4 x float> %broadcast.splat, %i.km
  %i.ko = fptosi <4 x float> %i.kn to <4 x i32>   ; 2 uses
  %i.kp = icmp slt <4 x i32> %i.ko, zeroinitializer
  %i.kq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ko, <4 x i32> %broadcast.splat381)
  %i.kr = trunc <4 x i32> %i.kq to <4 x i16>
  %i.ks = select <4 x i1> %i.kp, <4 x i16> zeroinitializer, <4 x i16> %i.kr
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %index
  store <4 x i16> %i.ks, ptr %i.kt, align 2, !tbaa !71
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep364 = getelementptr [8 x i8], ptr %invariant.gep363, i64 %indvars.iv
  %i.kv = load float, ptr %gep364, align 4, !tbaa !67
  %i.kw = fmul nsz float %7, %i.kv
  %i.kx = fptosi float %i.kw to i32               ; 2 uses
  %i.ky = icmp slt i32 %i.kx, 0
  %..i204 = tail call i32 @llvm.smin.i32(i32 %i.kx, i32 %i.c)
  %i.kz = trunc i32 %..i204 to i16
  %i.la = select i1 %i.ky, i16 0, i16 %i.kz
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %indvars.iv
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !184

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %.lr.ph227, label %.lr.ph, !llvm.loop !185

.lr.ph233:                                        ; preds = %._crit_edge225
  %i.lc = sext i32 %6 to i64                      ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !69
  %i.lf = shl nuw nsw i32 %i.e, 1
  %i.lg = zext nneg i32 %i.lf to i64
  %invariant.gep234 = getelementptr i8, ptr %i.le, i64 %i.lg
  %i.lh = sub i32 %5, %i.d
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.lc
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !37
  %i.ll = sext i32 %i.lk to i64
  %i.lm = sext i32 %i.lh to i64
  %i.ln = sext i32 %5 to i64
  %wide.trip.count295 = zext nneg i32 %i.d to i64
  %wide.trip.count290 = zext nneg i32 %i.e to i64
  %min.iters.check397 = icmp ult i32 %3, 8
  %n.vec399 = and i64 %wide.trip.count, 1073741820 ; 3 uses
  %broadcast.splatinsert400 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat401 = shufflevector <4 x float> %broadcast.splatinsert400, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert402 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat403 = shufflevector <4 x i32> %broadcast.splatinsert402, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n408 = icmp eq i64 %n.vec399, %wide.trip.count
  br label %.lr.ph230

.lr.ph224:                                        ; preds = %.lr.ph227, %._crit_edge225
  %indvars.iv282 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next283, %._crit_edge225 ] ; 2 uses
end_hunk_0
