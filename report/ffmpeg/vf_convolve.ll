Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_convolve?download=true
inline.NumInlined: 16
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@get_output:bb.a
  %i.pb = getelementptr i8, ptr %i.pa, i64 16
  %i.pc = getelementptr [8 x i8], ptr %invariant.gep369, i64 %index419
  %i.pd = getelementptr i8, ptr %i.pc, i64 24
  %i.pe = load float, ptr %i.ox, align 4, !tbaa !67
  %i.pf = load float, ptr %i.oz, align 4, !tbaa !67
  %i.pg = load float, ptr %i.pb, align 4, !tbaa !67
  %i.ph = load float, ptr %i.pd, align 4, !tbaa !67
  %i.pi = insertelement <4 x float> poison, float %i.pe, i64 0
  %i.pj = insertelement <4 x float> %i.pi, float %i.pf, i64 1
  %i.pk = insertelement <4 x float> %i.pj, float %i.pg, i64 2
  %i.pl = insertelement <4 x float> %i.pk, float %i.ph, i64 3
  %i.pm = fmul nsz <4 x float> %broadcast.splat415, %i.pl
  %i.pn = fptosi <4 x float> %i.pm to <4 x i32>   ; 2 uses
  %i.po = icmp slt <4 x i32> %i.pn, zeroinitializer
  %i.pp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.pn, <4 x i32> %broadcast.splat417)
  %i.pq = trunc <4 x i32> %i.pp to <4 x i16>
  %i.pr = select <4 x i1> %i.po, <4 x i16> zeroinitializer, <4 x i16> %i.pq
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %index419
  store <4 x i16> %i.pr, ptr %i.ps, align 2, !tbaa !71
  %index.next420 = add nuw i64 %index419, 4       ; 2 uses
  %i.pt = icmp eq i64 %index.next420, %n.vec413
  br i1 %i.pt, label %middle.block421, label %vector.body418, !llvm.loop !192

middle.block421:                                  ; preds = %vector.body418
  br i1 %cmp.n422, label %._crit_edge239, label %scalar.ph410.preheader

scalar.ph410.preheader:                           ; preds = %.lr.ph238, %middle.block421
  %indvars.iv297.ph = phi i64 [ 0, %.lr.ph238 ], [ %n.vec413, %middle.block421 ]
  br label %scalar.ph410

scalar.ph410:                                     ; preds = %scalar.ph410.preheader, %scalar.ph410
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %scalar.ph410 ], [ %indvars.iv297.ph, %scalar.ph410.preheader ] ; 3 uses
  %gep370 = getelementptr [8 x i8], ptr %invariant.gep369, i64 %indvars.iv297
  %i.pu = load float, ptr %gep370, align 4, !tbaa !67
  %i.pv = fmul nsz float %7, %i.pu
  %i.pw = fptosi float %i.pv to i32               ; 2 uses
  %i.px = icmp slt i32 %i.pw, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.pw, i32 %i.c)
  %i.py = trunc i32 %..i to i16
  %i.pz = select i1 %i.px, i16 0, i16 %i.py
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.os, i64 %indvars.iv297
  store i16 %i.pz, ptr %i.qa, align 2, !tbaa !71
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count300
  br i1 %exitcond301.not, label %._crit_edge239, label %scalar.ph410, !llvm.loop !193

._crit_edge239:                                   ; preds = %scalar.ph410, %middle.block421
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.loopexit, label %.lr.ph238, !llvm.loop !194

.loopexit:                                        ; preds = %._crit_edge239, %._crit_edge264, %.preheader218, %.lr.ph221, %.preheader213, %.lr.ph248
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @complex_xcorrelate(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !56     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !54   ; 6 uses
  %i.f = mul nsw i32 %i.e, %i.e
  %i.g = uitofp nsz nneg i32 %i.f to float
  %i.h = fdiv nsz float 1.000000e+00, %i.g        ; 2 uses
  %i.i = sext i32 %i.e to i64                     ; 5 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp slt i32 %i.n, %i.s
  %i.u = icmp sgt i32 %i.e, 0
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge53.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %sext = shl i64 %i.m, 32
  %i.v = ashr exact i64 %sext, 32                 ; 2 uses
  %sext62 = shl i64 %i.r, 32                      ; 2 uses
  %wide.trip.count58 = ashr exact i64 %sext62, 32
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 4 uses
  %i.w = ashr exact i64 %sext62, 29
  %i.x = add nsw i64 %i.w, -8
  %i.y = mul i64 %i.x, %i.i                       ; 2 uses
  %i.z = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %i.aa = add i64 %i.y, %i.z                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.aa
  %i.ab = mul nsw i64 %i.v, %i.i
  %i.ac = shl i64 %i.ab, 3                        ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 4                ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.c, i64 %i.ad
  %scevgep74 = getelementptr i8, ptr %i.a, i64 %i.aa
  %scevgep75 = getelementptr i8, ptr %i.a, i64 %i.ad
  %i.ae = add i64 %i.y, %i.z
  %i.af = add i64 %i.ae, -4                       ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.c, i64 %i.af
  %scevgep77 = getelementptr i8, ptr %i.c, i64 %i.ac
  %scevgep78 = getelementptr i8, ptr %i.a, i64 %i.af
  %scevgep79 = getelementptr i8, ptr %i.a, i64 %i.ac
  %min.iters.check = icmp ult i32 %i.e, 4
  %bound0 = icmp ult ptr %scevgep79, %scevgep76
  %bound1 = icmp ult ptr %scevgep77, %scevgep78
  %found.conflict = and i1 %bound0, %bound1
  %bound080 = icmp ult ptr %scevgep75, %scevgep
  %bound181 = icmp ult ptr %scevgep73, %scevgep74
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx = or i1 %found.conflict, %found.conflict82
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.ag = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge53.split:                              ; preds = %._crit_edge, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv55 = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %i.ai = mul nsw i64 %indvars.iv55, %i.i         ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.aj = add nsw i64 %index, %i.ai               ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ak, align 4, !tbaa !51 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec83 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aj
  %wide.vec84 = load <8 x float>, ptr %i.al, align 4, !tbaa !51 ; 2 uses
  %strided.vec85 = shufflevector <8 x float> %wide.vec84, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.am = fmul nsz <4 x float> %broadcast.splat, %strided.vec85 ; 2 uses
  %i.an = fneg nsz <8 x float> %wide.vec84
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ap = fmul nsz <4 x float> %broadcast.splat, %i.ao ; 2 uses
  %i.aq = fneg nsz <4 x float> %strided.vec83
  %i.ar = fmul nsz <4 x float> %i.ap, %i.aq
  %i.as = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %strided.vec, <4 x float> %i.ar)
  %i.at = fmul nsz <4 x float> %strided.vec83, %i.am
  %i.au = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %strided.vec, <4 x float> %i.at)
  %interleaved.vec = shufflevector <4 x float> %i.as, <4 x float> %i.au, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ak, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge53.split, label %.lr.ph, !llvm.loop !204

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aw = add nsw i64 %indvars.iv, %i.ai          ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aw ; 3 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !68 ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aw ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !68
  %i.bf = fneg nsz float %i.be
  %i.bg = fneg nsz float %i.ba
  %i.bh = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bf, i64 1
  %i.bj = fmul nsz <2 x float> %i.ah, %i.bi       ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bg, i64 1
  %i.bm = fmul nsz <2 x float> %i.bj, %i.bl
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bp, <2 x float> %i.bn)
  store <2 x float> %i.bq, ptr %i.ax, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !205
}

; Function Attrs: nounwind uwtable
define internal void @prepare_secondary(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.ThreadData, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1192
  %i.d = sext i32 %2 to i64                       ; 8 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1432
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.d ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1272
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.d
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1288
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.d
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37
  tail call void %i.h(ptr noundef %i.b, ptr noundef %i.k, ptr noundef %1, i32 noundef %i.n, i32 noundef %i.q, i32 noundef %i.f, i32 noundef %2, float noundef 1.000000e+00) #14
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.f, ptr %i.r, align 4, !tbaa !54
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %2, ptr %4, align 8, !tbaa !53
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !47
  store ptr %i.s, ptr %3, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1464
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1496
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1528
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !59
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.f, i32 16) ; 2 uses
  %i.ag = tail call i32 @ff_filter_get_nb_threads(ptr noundef %0) #15
  %. = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ag)
  %i.ah = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef nonnull @fft_horizontal, ptr noundef nonnull %3, ptr noundef null, i32 noundef %.) #14 ; 0 uses
  %i.ai = call i32 @ff_filter_get_nb_threads(ptr noundef %0) #15
  %i.aj = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ai)
  %i.ak = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef nonnull @fft_vertical, ptr noundef nonnull %3, ptr noundef null, i32 noundef %i.aj) #14 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1580
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.d
  store i32 1, ptr %i.am, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_zeropadded_input(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq i32 %i.b, 8
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.c, label %.preheader206, label %.preheader211

.preheader211:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph216, label %.preheader208

.lr.ph216:                                        ; preds = %.preheader211
  %i.e = sext i32 %6 to i64                       ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %2, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %._crit_edge225.thread

.lr.ph.us.preheader:                              ; preds = %.lr.ph216
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37
  %i.l = sext i32 %i.k to i64
  %wide.trip.count292 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod433 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv289 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next290, %._crit_edge.us ] ; 2 uses
  %.4192214.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %.lcssa431, %._crit_edge.us ] ; 2 uses
  %i.n = mul nsw i64 %indvars.iv289, %i.l
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 5 uses
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 5 uses
  %.5193212.us = phi float [ %i.ah, %.lr.ph.us.new ], [ %.4192214.us, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i16, ptr %i.p, align 2, !tbaa !71
  %i.r = uitofp i16 %i.q to float
  %i.s = fadd nsz float %.5193212.us, %i.r
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !71
  %i.w = uitofp i16 %i.v to float
  %i.x = fadd nsz float %i.s, %i.w
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !71
  %i.ab = uitofp i16 %i.aa to float
  %i.ac = fadd nsz float %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !71
  %i.ag = uitofp i16 %i.af to float
  %i.ah = fadd nsz float %i.ac, %i.ag             ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !206

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.5193212.us.epil.init = phi float [ %.4192214.us, %.lr.ph.us ], [ %i.ah, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod433)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.5193212.us.epil = phi float [ %.5193212.us.epil.init, %.epil.preheader ], [ %i.al, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.epil
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !71
  %i.ak = uitofp i16 %i.aj to float
  %i.al = fadd nsz float %.5193212.us.epil, %i.ak ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !207

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa431 = phi float [ %i.ah, %._crit_edge.us.unr-lcssa ], [ %i.al, %bb.b ] ; 2 uses
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %._crit_edge217, label %.lr.ph.us, !llvm.loop !208

.preheader206:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph248, label %.preheader204

.lr.ph248:                                        ; preds = %.preheader206
  %i.am = sext i32 %6 to i64                      ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.lr.ph244.us.preheader, label %._crit_edge262.thread

.lr.ph244.us.preheader:                           ; preds = %.lr.ph248
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.am
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.at = sext i32 %i.as to i64
  %wide.trip.count330 = zext nneg i32 %4 to i64
  %wide.trip.count325 = zext nneg i32 %3 to i64   ; 4 uses
  %xtraiter449 = and i64 %wide.trip.count325, 3   ; 3 uses
  %i.au = icmp ult i32 %3, 4
  %unroll_iter454 = and i64 %wide.trip.count325, 2147483644
  %lcmp.mod451.not = icmp eq i64 %xtraiter449, 0
  %lcmp.mod453 = icmp ne i64 %xtraiter449, 0
  br label %.lr.ph244.us

.lr.ph244.us:                                     ; preds = %.lr.ph244.us.preheader, %._crit_edge245.us
  %indvars.iv327 = phi i64 [ 0, %.lr.ph244.us.preheader ], [ %indvars.iv.next328, %._crit_edge245.us ] ; 2 uses
  %.0188246.us = phi float [ 0.000000e+00, %.lr.ph244.us.preheader ], [ %.lcssa428, %._crit_edge245.us ] ; 2 uses
  %i.av = mul nsw i64 %indvars.iv327, %i.at
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 %i.av ; 5 uses
  br i1 %i.au, label %.epil.preheader448, label %.lr.ph244.us.new

.lr.ph244.us.new:                                 ; preds = %.lr.ph244.us, %.lr.ph244.us.new
  %indvars.iv322 = phi i64 [ %indvars.iv.next323.3, %.lr.ph244.us.new ], [ 0, %.lr.ph244.us ] ; 5 uses
  %.1189241.us = phi float [ %i.bp, %.lr.ph244.us.new ], [ %.0188246.us, %.lr.ph244.us ]
  %niter455 = phi i64 [ %niter455.next.3, %.lr.ph244.us.new ], [ 0, %.lr.ph244.us ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv322
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !45
  %i.az = uitofp i8 %i.ay to float
  %i.ba = fadd nsz float %.1189241.us, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv322
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !45
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fadd nsz float %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv322
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !45
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = fadd nsz float %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv322
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !45
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fadd nsz float %i.bk, %i.bo             ; 3 uses
  %indvars.iv.next323.3 = add nuw nsw i64 %indvars.iv322, 4 ; 2 uses
  %niter455.next.3 = add i64 %niter455, 4         ; 2 uses
  %niter455.ncmp.3 = icmp eq i64 %niter455.next.3, %unroll_iter454
  br i1 %niter455.ncmp.3, label %._crit_edge245.us.unr-lcssa, label %.lr.ph244.us.new, !llvm.loop !209

._crit_edge245.us.unr-lcssa:                      ; preds = %.lr.ph244.us.new
  br i1 %lcmp.mod451.not, label %._crit_edge245.us, label %.epil.preheader448

.epil.preheader448:                               ; preds = %._crit_edge245.us.unr-lcssa, %.lr.ph244.us
  %indvars.iv322.epil.init = phi i64 [ 0, %.lr.ph244.us ], [ %indvars.iv.next323.3, %._crit_edge245.us.unr-lcssa ]
  %.1189241.us.epil.init = phi float [ %.0188246.us, %.lr.ph244.us ], [ %i.bp, %._crit_edge245.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod453)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader448
  %indvars.iv322.epil = phi i64 [ %indvars.iv322.epil.init, %.epil.preheader448 ], [ %indvars.iv.next323.epil, %bb.c ] ; 2 uses
  %.1189241.us.epil = phi float [ %.1189241.us.epil.init, %.epil.preheader448 ], [ %i.bt, %bb.c ]
  %epil.iter450 = phi i64 [ 0, %.epil.preheader448 ], [ %epil.iter450.next, %bb.c ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv322.epil
end_hunk_0
