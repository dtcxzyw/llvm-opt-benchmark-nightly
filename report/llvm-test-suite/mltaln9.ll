Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mltaln9?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@fixed_musclesupg_float_realloc_nobk_halfmtx:bb.a
  %.1223 = load ptr, ptr %.1223339, align 8, !tbaa !38 ; 2 uses
  %.not267 = icmp eq ptr %.1223, null
  br i1 %.not267, label %._crit_edge342.loopexit, label %bb.x, !llvm.loop !180

._crit_edge342.loopexit:                          ; preds = %bb.ag
  %.pre381 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !38
  %i.ih = getelementptr inbounds [24 x i8], ptr %.pre381, i64 %i.fj ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !45 ; 2 uses
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !44 ; 3 uses
  store ptr %i.ik, ptr %i.ij, align 8, !tbaa !44
  %.not268 = icmp eq ptr %i.ik, null
  br i1 %.not268, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge342.loopexit
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.ij, ptr %i.il, align 8, !tbaa !45
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge342.loopexit
  %i.im = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fj ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.in) #33
  store ptr null, ptr %i.im, align 8, !tbaa !22
  %.2343 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !38 ; 4 uses
  %.not269344 = icmp eq ptr %.2343, null
  br i1 %.not269344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.ai, %setnearest.exit289
  %.2345 = phi ptr [ %.2, %setnearest.exit289 ], [ %.2343, %bb.ai ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.2345, i64 16
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !46 ; 4 uses
  %i.iq = sext i32 %i.ip to i64                   ; 4 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %.0216, i64 %i.iq ; 4 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !13
  %i.it = icmp eq i32 %i.is, %spec.select
  br i1 %i.it, label %bb.aj, label %setnearest.exit289

bb.aj:                                            ; preds = %.lr.ph347
  %i.iu = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.iq ; 3 uses
  store float 9.999000e+02, ptr %i.iu, align 4, !tbaa !24
  store i32 -1, ptr %i.ir, align 4, !tbaa !13
  %i.iv = getelementptr inbounds [24 x i8], ptr %.2343, i64 %i.iq
  %.037.i276 = load ptr, ptr %i.iv, align 8, !tbaa !44 ; 2 uses
  %.not38.i277 = icmp eq ptr %.037.i276, null
  br i1 %.not38.i277, label %.lr.ph42.i285.preheader, label %.lr.ph.i278

.lr.ph.i278:                                      ; preds = %bb.aj
  %i.iw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.iq
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i278
  %i.iy = phi float [ 9.999000e+02, %.lr.ph.i278 ], [ %i.jg, %bb.am ] ; 2 uses
  %.039.i279 = phi ptr [ %.037.i276, %.lr.ph.i278 ], [ %.0.i280, %bb.am ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.039.i279, i64 16
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !46 ; 2 uses
  %i.jb = sub nsw i32 %i.ja, %i.ip
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.jc
  %i.je = load float, ptr %i.jd, align 4, !tbaa !24 ; 3 uses
  %i.jf = fcmp olt float %i.je, %i.iy
  br i1 %i.jf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store float %i.je, ptr %i.iu, align 4, !tbaa !24
  store i32 %i.ja, ptr %i.ir, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jg = phi float [ %i.iy, %bb.ak ], [ %i.je, %bb.al ] ; 2 uses
  %.0.i280 = load ptr, ptr %.039.i279, align 8, !tbaa !44 ; 2 uses
  %.not.i281 = icmp eq ptr %.0.i280, null
  br i1 %.not.i281, label %.lr.ph42.i285.preheader, label %bb.ak, !llvm.loop !1

.lr.ph42.i285.preheader:                          ; preds = %bb.am, %bb.aj
  %.ph = phi float [ 9.999000e+02, %bb.aj ], [ %i.jg, %bb.am ]
  br label %.lr.ph42.i285

.lr.ph42.i285:                                    ; preds = %.lr.ph42.i285.preheader, %bb.ap
  %i.jh = phi float [ %i.js, %bb.ap ], [ %.ph, %.lr.ph42.i285.preheader ] ; 2 uses
  %.141.i286 = phi ptr [ %i.jt, %bb.ap ], [ %.2343, %.lr.ph42.i285.preheader ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.141.i286, i64 16
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !46 ; 4 uses
  %.not36.i287 = icmp eq i32 %i.jj, %i.ip
  br i1 %.not36.i287, label %setnearest.exit289, label %bb.an

bb.an:                                            ; preds = %.lr.ph42.i285
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !22
  %i.jn = sub nsw i32 %i.ip, %i.jj
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.jo
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !24 ; 3 uses
  %i.jr = fcmp olt float %i.jq, %i.jh
  br i1 %i.jr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.jq, ptr %i.iu, align 4, !tbaa !24
  store i32 %i.jj, ptr %i.ir, align 4, !tbaa !13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.js = phi float [ %i.jh, %bb.an ], [ %i.jq, %bb.ao ]
  %i.jt = load ptr, ptr %.141.i286, align 8, !tbaa !44 ; 2 uses
  %.not35.i288 = icmp eq ptr %i.jt, null
  br i1 %.not35.i288, label %setnearest.exit289, label %.lr.ph42.i285, !llvm.loop !2

setnearest.exit289:                               ; preds = %bb.ap, %.lr.ph42.i285, %.lr.ph347
  %.2 = load ptr, ptr %.2345, align 8, !tbaa !38  ; 2 uses
  %.not269 = icmp eq ptr %.2, null
  br i1 %.not269, label %._crit_edge348, label %.lr.ph347, !llvm.loop !181

._crit_edge348:                                   ; preds = %setnearest.exit289, %bb.ai
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge353, label %.lr.ph352, !llvm.loop !182

._crit_edge353:                                   ; preds = %._crit_edge348, %.preheader292.thread, %._crit_edge303
  %i.ju = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.ju) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !22
  %i.jv = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.jv) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !36
  %i.jw = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.jw) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !38
  %i.jx = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.jx) #33
  store ptr null, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !36
  tail call void @free(ptr noundef %.0) #33
  tail call void @free(ptr noundef %.0216) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtop(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.d) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !36
  %.not186 = icmp eq ptr %i.e, null
  br i1 %.not186, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @njob, align 4, !tbaa !13
  %i.g = mul nsw i32 %i.f, 50
  %i.h = tail call ptr @AllocateCharVec(i32 noundef %i.g) #33
  store ptr %i.h, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !18
  %i.i = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.j = mul nsw i32 %i.i, 50
  %i.k = tail call ptr @AllocateCharMtx(i32 noundef %i.i, i32 noundef %i.j) #33
  store ptr %i.k, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !32
  %i.l = load i32, ptr @njob, align 4, !tbaa !13
  %i.m = tail call ptr @AllocateIntVec(i32 noundef %i.l) #33
  store ptr %i.m, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !36
  %i.n = load i32, ptr @njob, align 4, !tbaa !13
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 3                      ; 2 uses
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #34
  store ptr %i.q, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !28
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #34
  store ptr %i.r, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = icmp sgt i32 %0, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge215.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph209:                                        ; preds = %.lr.ph
  %.pre286 = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !51 ; 4 uses
  %wide.trip.count252 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph209
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind298 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next301, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre286, i64 %index
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre286, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %4 = trunc <2 x i64> %vec.ind to <2 x i32>
  %5 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.w = shufflevector <2 x i32> %4, <2 x i32> %vec.ind298, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.w, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.t, align 4, !tbaa !13
  %i.x = shufflevector <2 x i32> %5, <2 x i32> %vec.ind298, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec300 = add <4 x i32> %i.x, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec300, ptr %i.v, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next301 = add <2 x i32> %vec.ind298, splat (i32 4)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge215, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph209, %middle.block
  %indvars.iv249.ph = phi i64 [ 0, %.lr.ph209 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.z = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ad = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ac) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph209, label %.lr.ph, !llvm.loop !185

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %scalar.ph ], [ %indvars.iv249.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre286, i64 %indvars.iv249 ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next250 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = trunc i64 %indvars.iv249 to i32
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !54
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge215, label %scalar.ph, !llvm.loop !186

._crit_edge215.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !51
  %i.aj = sext i32 %0 to i64
  %i.ak = getelementptr [8 x i8], ptr %.pre, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  store i32 -1, ptr %i.al, align 4, !tbaa !53
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc290 = tail call i32 @fputc(i32 10, ptr %i.am) ; 0 uses
  br label %._crit_edge244

._crit_edge215:                                   ; preds = %scalar.ph, %middle.block
  %i.an = add nsw i32 %0, -1                      ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre286, i64 %i.ao
  store i32 -1, ptr %i.ap, align 4, !tbaa !53
  %i.aq = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !28
  %i.ar = zext nneg i32 %0 to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.as, i1 false), !tbaa !26
  %i.at = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !36
  %i.au = zext nneg i32 %0 to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 -1, i64 %i.av, i1 false), !tbaa !13
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = tail call i32 @fputc(i32 10, ptr %i.aw) ; 0 uses
  %.not294 = icmp eq i32 %0, 1
  br i1 %.not294, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %._crit_edge215
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count263 = zext nneg i32 %i.an to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph243, %bb.ac
  %indvars.iv260 = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next261, %bb.ac ] ; 4 uses
  %i.az = trunc nuw nsw i64 %indvars.iv260 to i32 ; 3 uses
  %i.ba = urem i32 %i.az, 10
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.24, i32 noundef %i.az, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !24
  %i.be = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bf = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ax) #33 ; 0 uses
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  %i.bh = add nsw i32 %i.bg, -1                   ; 5 uses
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !13
  %i.bi = load i32, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1                   ; 6 uses
  store i32 %i.bj, ptr %i.ay, align 4, !tbaa !13
  %.not.i = icmp slt i32 %i.bg, %i.bi
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bk) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bl = sext i32 %i.bh to i64                   ; 7 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !28
  %i.bo = sext i32 %i.bj to i64                   ; 6 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !26
  %i.br = load float, ptr %i.b, align 8, !tbaa !24
  %i.bs = fcmp une float %i.br, -1.000000e+00
  %i.bt = load float, ptr %i.ax, align 4
  %i.bu = fcmp une float %i.bt, -1.000000e+00
  %or.cond = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite198 = call i64 @fwrite(ptr nonnull @.str.25, i64 34, i64 1, ptr %i.bv) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv260
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 4 uses
  %i.bz = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !36 ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bl ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %i.bh, ptr %i.by, align 4, !tbaa !13
  store i32 -1, ptr %i.cd, align 4, !tbaa !13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !34 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !36 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !36 ; 3 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !13 ; 3 uses
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !13 ; 3 uses
  %i.cm = icmp sgt i32 %i.ck, %i.cl               ; 2 uses
  %.200 = select i1 %i.cm, ptr %i.ch, ptr %i.cj   ; 2 uses
  %i.cn = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.cl) ; 2 uses
  %.not190216 = icmp eq i32 %i.cn, -1
  %i.co = call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cl)
  br i1 %.not190216, label %.preheader204, label %.lr.ph220.preheader

.lr.ph220.preheader:                              ; preds = %bb.m
  %. = select i1 %i.cm, ptr %i.cj, ptr %i.ch
  br label %.lr.ph220

.preheader204.loopexit:                           ; preds = %.lr.ph220
  %.pre265 = load i32, ptr %.200, align 4, !tbaa !13
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.m
  %i.cp = phi i32 [ %i.co, %bb.m ], [ %.pre265, %.preheader204.loopexit ] ; 2 uses
  %.0162.lcssa = phi ptr [ %i.by, %bb.m ], [ %i.cs, %.preheader204.loopexit ] ; 2 uses
  %.not191221 = icmp eq i32 %i.cp, -1
  br i1 %.not191221, label %._crit_edge225, label %.lr.ph224

.lr.ph220:                                        ; preds = %.lr.ph220.preheader, %.lr.ph220
  %i.cq = phi i32 [ %i.ct, %.lr.ph220 ], [ %i.cn, %.lr.ph220.preheader ]
  %.0160218 = phi ptr [ %i.cr, %.lr.ph220 ], [ %., %.lr.ph220.preheader ]
  %.0162217 = phi ptr [ %i.cs, %.lr.ph220 ], [ %i.by, %.lr.ph220.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0160218, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0162217, i64 4 ; 2 uses
  store i32 %i.cq, ptr %.0162217, align 4, !tbaa !13
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !13 ; 2 uses
  %.not190 = icmp eq i32 %i.ct, -1
  br i1 %.not190, label %.preheader204.loopexit, label %.lr.ph220, !llvm.loop !187

.lr.ph224:                                        ; preds = %.preheader204, %.lr.ph224
  %i.cu = phi i32 [ %i.cx, %.lr.ph224 ], [ %i.cp, %.preheader204 ]
  %.1161223 = phi ptr [ %i.cv, %.lr.ph224 ], [ %.200, %.preheader204 ]
  %.1163222 = phi ptr [ %i.cw, %.lr.ph224 ], [ %.0162.lcssa, %.preheader204 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1161223, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.1163222, i64 4 ; 2 uses
  store i32 %i.cu, ptr %.1163222, align 4, !tbaa !13
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  %.not191 = icmp eq i32 %i.cx, -1
  br i1 %.not191, label %._crit_edge225, label %.lr.ph224, !llvm.loop !188

._crit_edge225:                                   ; preds = %.lr.ph224, %.preheader204
  %.1163.lcssa = phi ptr [ %.0162.lcssa, %.preheader204 ], [ %i.cw, %.lr.ph224 ]
  store i32 -1, ptr %.1163.lcssa, align 4, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge225, %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !36 ; 4 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bo
  %i.db = load i32, ptr %i.da, align 4, !tbaa !13 ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
end_hunk_0
begin_hunk_1_@veryfastsupg_double_loadtop:bb.a
  store double %i.eh, ptr %i.ei, align 8, !tbaa !26
  %i.ej = fcmp olt double %i.ec, 0.000000e+00
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 0.000000e+00, ptr %i.ee, align 8, !tbaa !26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ek = fcmp olt double %i.eh, 0.000000e+00
  br i1 %i.ek, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 0.000000e+00, ptr %i.ei, align 8, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store double %i.dy, ptr %i.ea, align 8, !tbaa !26
  store i32 %i.az, ptr %i.ca, align 4, !tbaa !13
  %i.el = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !51 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %.4239 = phi i32 [ 0, %bb.u ], [ %i.fd, %bb.z ] ; 8 uses
  %.not196 = icmp eq i32 %.4239, %i.bh
  %.not197 = icmp eq i32 %.4239, %i.bj
  %or.cond203 = or i1 %.not196, %.not197
  br i1 %or.cond203, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = icmp slt i32 %.4239, %i.bh
  br i1 %i.em, label %._crit_edge270, label %bb.x

._crit_edge270:                                   ; preds = %bb.w
  %.pre271 = sext i32 %.4239 to i64               ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.4. = call i32 @llvm.smin.i32(i32 %.4239, i32 %i.bj)
  %..4 = call i32 @llvm.smax.i32(i32 %.4239, i32 %i.bj)
  %.pre267 = sext i32 %.4239 to i64
  %.pre268 = sext i32 %..4 to i64
  %.pre273 = sext i32 %.4. to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge270, %bb.x
  %.pre-phi274 = phi i64 [ %.pre271, %._crit_edge270 ], [ %.pre273, %bb.x ]
  %.pre-phi272 = phi i64 [ %.pre271, %._crit_edge270 ], [ %i.bl, %bb.x ]
  %.pre-phi269 = phi i64 [ %i.bo, %._crit_edge270 ], [ %.pre268, %bb.x ]
  %.pre-phi = phi i64 [ %i.bl, %._crit_edge270 ], [ %.pre267, %bb.x ]
  %i.en = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi272
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !28
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %.pre-phi ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !26 ; 3 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi274
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !28
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %.pre-phi269
  %i.eu = load double, ptr %i.et, align 8, !tbaa !26 ; 3 uses
  %i.ev = fcmp olt double %i.eq, %i.eu
  %i.ew = select i1 %i.ev, double %i.eq, double %i.eu
  %i.ex = fadd double %i.eq, %i.eu
  %i.ey = fmul double %i.ex, 5.000000e-01
  %i.ez = fmul double %i.ey, 1.000000e-01
  %i.fa = call double @llvm.fmuladd.f64(double %i.ew, double 9.000000e-01, double %i.ez)
  store double %i.fa, ptr %i.ep, align 8, !tbaa !26
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %i.fb = sext i32 %.4239 to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !53 ; 2 uses
  %.not194 = icmp eq i32 %i.fd, -1
  br i1 %.not194, label %bb.aa, label %bb.v, !llvm.loop !191

bb.aa:                                            ; preds = %bb.z
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.bo ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !54 ; 2 uses
  %i.fh = load i32, ptr %i.fe, align 4, !tbaa !53 ; 3 uses
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.fi
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !53
  %.not195 = icmp eq i32 %i.fh, -1
  br i1 %.not195, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fk = sext i32 %i.fh to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %i.fg, ptr %i.fm, align 4, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fn = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !18
  %i.fo = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !32 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.bl
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !18
  %i.fr = load double, ptr %i.ee, align 8, !tbaa !26
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.bo
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !18
  %i.fu = load double, ptr %i.ei, align 8, !tbaa !26
  %i.fv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.fq, double noundef %i.fr, ptr noundef %i.ft, double noundef %i.fu) #33 ; 0 uses
  %i.fw = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !32
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.bl
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !18
  %i.fz = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !18
  %i.ga = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.fy, ptr noundef nonnull dereferenceable(1) %i.fz) #33 ; 0 uses
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count263
  br i1 %exitcond264.not, label %._crit_edge244, label %bb.f, !llvm.loop !192

._crit_edge244:                                   ; preds = %bb.ac, %._crit_edge215.thread, %._crit_edge215
  %i.gb = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.gc = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.gd = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !18
  %i.ge = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gc, ptr noundef nonnull @.str.4, ptr noundef %i.gd) #33 ; 0 uses
  %i.gf = call i32 @fclose(ptr noundef %i.gc)     ; 0 uses
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc189 = call i32 @fputc(i32 10, ptr %i.gg)  ; 0 uses
  %i.gh = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !28
  call void @free(ptr noundef %i.gh) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !28
  %i.gi = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !36
  call void @free(ptr noundef %i.gi) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !36
  %i.gj = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !51
  call void @free(ptr noundef %i.gj) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !51
  %i.gk = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !32
  call void @FreeCharMtx(ptr noundef %i.gk) #33
  %i.gl = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !18
  call void @free(ptr noundef %i.gl) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.d) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !36
  %.not175 = icmp eq ptr %i.e, null
  br i1 %.not175, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @njob, align 4, !tbaa !13
  %i.g = mul nsw i32 %i.f, 50
  %i.h = tail call ptr @AllocateCharVec(i32 noundef %i.g) #33
  store ptr %i.h, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !18
  %i.i = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.j = mul nsw i32 %i.i, 50
  %i.k = tail call ptr @AllocateCharMtx(i32 noundef %i.i, i32 noundef %i.j) #33
  store ptr %i.k, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !32
  %i.l = load i32, ptr @njob, align 4, !tbaa !13
  %i.m = tail call ptr @AllocateIntVec(i32 noundef %i.l) #33
  store ptr %i.m, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !36
  %i.n = load i32, ptr @njob, align 4, !tbaa !13
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 3                      ; 2 uses
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #34
  store ptr %i.q, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !28
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #34
  store ptr %i.r, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = icmp sgt i32 %0, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge204.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph198:                                        ; preds = %.lr.ph
  %.pre277 = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !51 ; 4 uses
  %wide.trip.count241 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph198
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind289 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next292, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre277, i64 %index
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre277, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %4 = trunc <2 x i64> %vec.ind to <2 x i32>
  %5 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.w = shufflevector <2 x i32> %4, <2 x i32> %vec.ind289, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.w, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.t, align 4, !tbaa !13
  %i.x = shufflevector <2 x i32> %5, <2 x i32> %vec.ind289, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec291 = add <4 x i32> %i.x, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec291, ptr %i.v, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next292 = add <2 x i32> %vec.ind289, splat (i32 4)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge204, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph198, %middle.block
  %indvars.iv238.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.z = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ad = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ac) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph198, label %.lr.ph, !llvm.loop !194

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %scalar.ph ], [ %indvars.iv238.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre277, i64 %indvars.iv238 ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next239 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = trunc i64 %indvars.iv238 to i32
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !54
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %._crit_edge204, label %scalar.ph, !llvm.loop !195

._crit_edge204.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !51
  %i.aj = sext i32 %0 to i64
  %i.ak = getelementptr [8 x i8], ptr %.pre, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  store i32 -1, ptr %i.al, align 4, !tbaa !53
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc281 = tail call i32 @fputc(i32 10, ptr %i.am) ; 0 uses
  br label %._crit_edge233

._crit_edge204:                                   ; preds = %scalar.ph, %middle.block
  %i.an = add nsw i32 %0, -1                      ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre277, i64 %i.ao
  store i32 -1, ptr %i.ap, align 4, !tbaa !53
  %i.aq = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !28
  %i.ar = zext nneg i32 %0 to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.as, i1 false), !tbaa !26
  %i.at = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !36
  %i.au = zext nneg i32 %0 to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 -1, i64 %i.av, i1 false), !tbaa !13
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = tail call i32 @fputc(i32 10, ptr %i.aw) ; 0 uses
  %.not285 = icmp eq i32 %0, 1
  br i1 %.not285, label %._crit_edge233, label %.lr.ph232

.lr.ph232:                                        ; preds = %._crit_edge204
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count252 = zext nneg i32 %i.an to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph232, %bb.ac
  %indvars.iv249 = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next250, %bb.ac ] ; 4 uses
  %i.az = trunc nuw nsw i64 %indvars.iv249 to i32 ; 3 uses
  %i.ba = urem i32 %i.az, 10
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.24, i32 noundef %i.az, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !24
  %i.be = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bf = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ax) #33 ; 0 uses
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  %i.bh = add nsw i32 %i.bg, -1                   ; 5 uses
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !13
  %i.bi = load i32, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1                   ; 6 uses
  store i32 %i.bj, ptr %i.ay, align 4, !tbaa !13
  %.not.i = icmp slt i32 %i.bg, %i.bi
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bk) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bl = sext i32 %i.bh to i64                   ; 7 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !28
  %i.bo = sext i32 %i.bj to i64                   ; 5 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !26
  %i.br = load float, ptr %i.b, align 8, !tbaa !24 ; 3 uses
  %i.bs = fcmp oeq float %i.br, -1.000000e+00
  %i.bt = load float, ptr %i.ax, align 4          ; 2 uses
  %i.bu = fcmp oeq float %i.bt, -1.000000e+00
  %or.cond = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite187 = call i64 @fwrite(ptr nonnull @.str.26, i64 39, i64 1, ptr %i.bv) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.bw = fcmp olt float %i.br, 0.000000e+00
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi float [ 0.000000e+00, %bb.l ], [ %i.br, %bb.k ]
  %i.by = fcmp olt float %i.bt, 0.000000e+00
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float 0.000000e+00, ptr %i.ax, align 4, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv249
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !34 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36 ; 4 uses
  %i.cc = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !36 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.bl ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.bh, ptr %i.cb, align 4, !tbaa !13
  store i32 -1, ptr %i.cg, align 4, !tbaa !13
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ch = sext i32 %i.ce to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !34 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !36 ; 3 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !13 ; 3 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !13 ; 3 uses
  %i.cp = icmp sgt i32 %i.cn, %i.co               ; 2 uses
  %.189 = select i1 %i.cp, ptr %i.ck, ptr %i.cm   ; 2 uses
  %i.cq = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.co) ; 2 uses
  %.not179205 = icmp eq i32 %i.cq, -1
  %i.cr = call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.co)
  br i1 %.not179205, label %.preheader193, label %.lr.ph209.preheader

.lr.ph209.preheader:                              ; preds = %bb.q
  %. = select i1 %i.cp, ptr %i.cm, ptr %i.ck
  br label %.lr.ph209

.preheader193.loopexit:                           ; preds = %.lr.ph209
  %.pre254 = load i32, ptr %.189, align 4, !tbaa !13
  br label %.preheader193

.preheader193:                                    ; preds = %.preheader193.loopexit, %bb.q
  %i.cs = phi i32 [ %i.cr, %bb.q ], [ %.pre254, %.preheader193.loopexit ] ; 2 uses
  %.0150.lcssa = phi ptr [ %i.cb, %bb.q ], [ %i.cv, %.preheader193.loopexit ] ; 2 uses
  %.not180210 = icmp eq i32 %i.cs, -1
  br i1 %.not180210, label %._crit_edge214, label %.lr.ph213

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %.lr.ph209
  %i.ct = phi i32 [ %i.cw, %.lr.ph209 ], [ %i.cq, %.lr.ph209.preheader ]
  %.0148207 = phi ptr [ %i.cu, %.lr.ph209 ], [ %., %.lr.ph209.preheader ]
  %.0150206 = phi ptr [ %i.cv, %.lr.ph209 ], [ %i.cb, %.lr.ph209.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0148207, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0150206, i64 4 ; 2 uses
  store i32 %i.ct, ptr %.0150206, align 4, !tbaa !13
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !13 ; 2 uses
  %.not179 = icmp eq i32 %i.cw, -1
  br i1 %.not179, label %.preheader193.loopexit, label %.lr.ph209, !llvm.loop !196

.lr.ph213:                                        ; preds = %.preheader193, %.lr.ph213
  %i.cx = phi i32 [ %i.da, %.lr.ph213 ], [ %i.cs, %.preheader193 ]
  %.1149212 = phi ptr [ %i.cy, %.lr.ph213 ], [ %.189, %.preheader193 ]
  %.1151211 = phi ptr [ %i.cz, %.lr.ph213 ], [ %.0150.lcssa, %.preheader193 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1149212, i64 4 ; 2 uses
end_hunk_1
begin_hunk_2_@veryfastsupg_double_outtree:bb.a
  %i.ec = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !14  ; 2 uses
  %i.ef = sext i8 %i.ee to i64
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !42
  %i.ei = and i16 %i.eh, 8
  %.not219.14 = icmp eq i16 %i.ei, 0
  %spec.select.14 = select i1 %.not219.14, i8 95, i8 %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  store i8 %spec.select.14, ptr %i.ej, align 1, !tbaa !14
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.em = load i8, ptr %i.el, align 1, !tbaa !14  ; 2 uses
  %i.en = sext i8 %i.em to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.ek, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !42
  %i.eq = and i16 %i.ep, 8
  %.not219.15 = icmp eq i16 %i.eq, 0
  %spec.select.15 = select i1 %.not219.15, i8 95, i8 %i.em
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  store i8 %spec.select.15, ptr %i.er, align 1, !tbaa !14
  %i.es = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.et = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !14  ; 2 uses
  %i.ev = sext i8 %i.eu to i64
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !42
  %i.ey = and i16 %i.ex, 8
  %.not219.16 = icmp eq i16 %i.ey, 0
  %spec.select.16 = select i1 %.not219.16, i8 95, i8 %i.eu
  %i.ez = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 %spec.select.16, ptr %i.ez, align 1, !tbaa !14
  %i.fa = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.fb = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !14  ; 2 uses
  %i.fd = sext i8 %i.fc to i64
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !42
  %i.fg = and i16 %i.ff, 8
  %.not219.17 = icmp eq i16 %i.fg, 0
  %spec.select.17 = select i1 %.not219.17, i8 95, i8 %i.fc
  %i.fh = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  store i8 %spec.select.17, ptr %i.fh, align 1, !tbaa !14
  %i.fi = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.fj = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !14  ; 2 uses
  %i.fl = sext i8 %i.fk to i64
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.fi, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !42
  %i.fo = and i16 %i.fn, 8
  %.not219.18 = icmp eq i16 %i.fo, 0
  %spec.select.18 = select i1 %.not219.18, i8 95, i8 %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.u, i64 18
  store i8 %spec.select.18, ptr %i.fp, align 1, !tbaa !14
  %i.fq = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.v, i64 19
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !14  ; 2 uses
  %i.ft = sext i8 %i.fs to i64
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !42
  %i.fw = and i16 %i.fv, 8
  %.not219.19 = icmp eq i16 %i.fw, 0
  %spec.select.19 = select i1 %.not219.19, i8 95, i8 %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 19
  store i8 %spec.select.19, ptr %i.fx, align 1, !tbaa !14
  %i.fy = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.fz = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !14  ; 2 uses
  %i.gb = sext i8 %i.ga to i64
  %i.gc = getelementptr inbounds [2 x i8], ptr %i.fy, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !42
  %i.ge = and i16 %i.gd, 8
  %.not219.20 = icmp eq i16 %i.ge, 0
  %spec.select.20 = select i1 %.not219.20, i8 95, i8 %i.ga
  %i.gf = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store i8 %spec.select.20, ptr %i.gf, align 1, !tbaa !14
  %i.gg = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.v, i64 21
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !14  ; 2 uses
  %i.gj = sext i8 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gg, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !42
  %i.gm = and i16 %i.gl, 8
  %.not219.21 = icmp eq i16 %i.gm, 0
  %spec.select.21 = select i1 %.not219.21, i8 95, i8 %i.gi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.u, i64 21
  store i8 %spec.select.21, ptr %i.gn, align 1, !tbaa !14
  %i.go = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.v, i64 22
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !14  ; 2 uses
  %i.gr = sext i8 %i.gq to i64
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.go, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !42
  %i.gu = and i16 %i.gt, 8
  %.not219.22 = icmp eq i16 %i.gu, 0
  %spec.select.22 = select i1 %.not219.22, i8 95, i8 %i.gq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 22
  store i8 %spec.select.22, ptr %i.gv, align 1, !tbaa !14
  %i.gw = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.gx = getelementptr inbounds nuw i8, ptr %i.v, i64 23
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !14  ; 2 uses
  %i.gz = sext i8 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !42
  %i.hc = and i16 %i.hb, 8
  %.not219.23 = icmp eq i16 %i.hc, 0
  %spec.select.23 = select i1 %.not219.23, i8 95, i8 %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %i.u, i64 23
  store i8 %spec.select.23, ptr %i.hd, align 1, !tbaa !14
  %i.he = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.hf = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !14  ; 2 uses
  %i.hh = sext i8 %i.hg to i64
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !42
  %i.hk = and i16 %i.hj, 8
  %.not219.24 = icmp eq i16 %i.hk, 0
  %spec.select.24 = select i1 %.not219.24, i8 95, i8 %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i8 %spec.select.24, ptr %i.hl, align 1, !tbaa !14
  %i.hm = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.hn = getelementptr inbounds nuw i8, ptr %i.v, i64 25
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !14  ; 2 uses
  %i.hp = sext i8 %i.ho to i64
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !42
  %i.hs = and i16 %i.hr, 8
  %.not219.25 = icmp eq i16 %i.hs, 0
  %spec.select.25 = select i1 %.not219.25, i8 95, i8 %i.ho
  %i.ht = getelementptr inbounds nuw i8, ptr %i.u, i64 25
  store i8 %spec.select.25, ptr %i.ht, align 1, !tbaa !14
  %i.hu = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.hv = getelementptr inbounds nuw i8, ptr %i.v, i64 26
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !14  ; 2 uses
  %i.hx = sext i8 %i.hw to i64
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.hu, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !42
  %i.ia = and i16 %i.hz, 8
  %.not219.26 = icmp eq i16 %i.ia, 0
  %spec.select.26 = select i1 %.not219.26, i8 95, i8 %i.hw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.u, i64 26
  store i8 %spec.select.26, ptr %i.ib, align 1, !tbaa !14
  %i.ic = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.id = getelementptr inbounds nuw i8, ptr %i.v, i64 27
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !14  ; 2 uses
  %i.if = sext i8 %i.ie to i64
  %i.ig = getelementptr inbounds [2 x i8], ptr %i.ic, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !42
  %i.ii = and i16 %i.ih, 8
  %.not219.27 = icmp eq i16 %i.ii, 0
  %spec.select.27 = select i1 %.not219.27, i8 95, i8 %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %i.u, i64 27
  store i8 %spec.select.27, ptr %i.ij, align 1, !tbaa !14
  %i.ik = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.il = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.im = load i8, ptr %i.il, align 1, !tbaa !14  ; 2 uses
  %i.in = sext i8 %i.im to i64
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ik, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !42
  %i.iq = and i16 %i.ip, 8
  %.not219.28 = icmp eq i16 %i.iq, 0
  %spec.select.28 = select i1 %.not219.28, i8 95, i8 %i.im
  %i.ir = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i8 %spec.select.28, ptr %i.ir, align 1, !tbaa !14
  %i.is = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.it = getelementptr inbounds nuw i8, ptr %i.v, i64 29
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !14  ; 2 uses
  %i.iv = sext i8 %i.iu to i64
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !42
  %i.iy = and i16 %i.ix, 8
  %.not219.29 = icmp eq i16 %i.iy, 0
  %spec.select.29 = select i1 %.not219.29, i8 95, i8 %i.iu
  %i.iz = getelementptr inbounds nuw i8, ptr %i.u, i64 29
  store i8 %spec.select.29, ptr %i.iz, align 1, !tbaa !14
  %i.ja = getelementptr inbounds nuw i8, ptr %i.u, i64 30
  store i8 0, ptr %i.ja, align 1, !tbaa !14
  %i.jb = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !32
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv288
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !18
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.jf = trunc nuw nsw i64 %indvars.iv.next289 to i32
  %i.jg = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.jd, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.jf, ptr noundef nonnull %i.je) #33 ; 0 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond291.not, label %.preheader226, label %.preheader228, !llvm.loop !202

.preheader226:                                    ; preds = %.preheader228
  %.pre = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !51 ; 4 uses
  %wide.trip.count295 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader226
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind343 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next346, %vector.body ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %5 = trunc <2 x i64> %vec.ind to <2 x i32>
  %6 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.jk = shufflevector <2 x i32> %5, <2 x i32> %vec.ind343, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.jk, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.jh, align 4, !tbaa !13
  %i.jl = shufflevector <2 x i32> %6, <2 x i32> %vec.ind343, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec345 = add <4 x i32> %i.jl, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec345, ptr %i.jj, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next346 = add <2 x i32> %vec.ind343, splat (i32 4)
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge238, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader226, %middle.block
  %indvars.iv292.ph = phi i64 [ 0, %.preheader226 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %scalar.ph ], [ %indvars.iv292.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv292 ; 2 uses
  %i.jo = trunc nuw nsw i64 %indvars.iv.next293 to i32
  store i32 %i.jo, ptr %i.jn, align 4, !tbaa !53
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jq = trunc i64 %indvars.iv292 to i32
  %i.jr = add i32 %i.jq, -1
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !54
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge238, label %scalar.ph, !llvm.loop !204

._crit_edge238.thread:                            ; preds = %bb.g
  %.pre330 = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !51
  %i.js = sext i32 %0 to i64
  %i.jt = getelementptr [8 x i8], ptr %.pre330, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 -8
  store i32 -1, ptr %i.ju, align 4, !tbaa !53
  %i.jv = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc333 = tail call i32 @fputc(i32 10, ptr %i.jv) ; 0 uses
  br label %._crit_edge282

._crit_edge238:                                   ; preds = %scalar.ph, %middle.block
  %i.jw = add nsw i32 %0, -1                      ; 2 uses
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.jx
  store i32 -1, ptr %i.jy, align 4, !tbaa !53
  %i.jz = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !28
  %i.ka = zext nneg i32 %0 to i64
  %i.kb = shl nuw nsw i64 %i.ka, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.jz, i8 0, i64 %i.kb, i1 false), !tbaa !26
  %i.kc = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !36
  %i.kd = zext nneg i32 %0 to i64
  %i.ke = shl nuw nsw i64 %i.kd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kc, i8 -1, i64 %i.ke, i1 false), !tbaa !13
  %i.kf = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = tail call i32 @fputc(i32 10, ptr %i.kf) ; 0 uses
  %.not338 = icmp eq i32 %0, 1
  br i1 %.not338, label %._crit_edge282, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %._crit_edge238
  %wide.trip.count306 = zext nneg i32 %i.jw to i64
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %bb.x
  %indvars.iv303 = phi i64 [ 0, %.lr.ph281.preheader ], [ %indvars.iv.next304, %bb.x ] ; 4 uses
  %.0168279 = phi i32 [ -1, %.lr.ph281.preheader ], [ %.1169.lcssa, %bb.x ] ; 2 uses
  %.0170278 = phi i32 [ -1, %.lr.ph281.preheader ], [ %.1171.lcssa, %bb.x ] ; 2 uses
  %i.kg = trunc nuw nsw i64 %indvars.iv303 to i32 ; 3 uses
  %i.kh = urem i32 %i.kg, 10
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph281
  %i.kj = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.kk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kj, ptr noundef nonnull @.str.24, i32 noundef %i.kg, i32 noundef %0) #31 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph281
  %i.kl = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !51 ; 4 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !53 ; 2 uses
  %.not209243 = icmp eq i32 %i.km, -1
  br i1 %.not209243, label %._crit_edge248, label %.preheader

.loopexit:                                        ; preds = %bb.j
  %i.kn = sext i32 %i.kq to i64                   ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !53 ; 2 uses
  %.not209 = icmp eq i32 %i.kp, -1
  br i1 %.not209, label %._crit_edge248.loopexit, label %.preheader, !llvm.loop !205

.preheader:                                       ; preds = %bb.i, %.loopexit
  %i.kq = phi i32 [ %i.kp, %.loopexit ], [ %i.km, %bb.i ] ; 3 uses
  %i.kr = phi i64 [ %i.kn, %.loopexit ], [ 0, %bb.i ]
  %.1169247 = phi i32 [ %.3, %.loopexit ], [ %.0168279, %bb.i ]
  %.1171246 = phi i32 [ %.3173, %.loopexit ], [ %.0170278, %bb.i ]
  %.0174245 = phi double [ %.2176, %.loopexit ], [ f0x40F869FE66666666, %bb.i ]
  %.4244 = phi i32 [ %i.kq, %.loopexit ], [ 0, %bb.i ]
  %i.ks = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kr
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %.2242 = phi i32 [ %.1169247, %.preheader ], [ %.3, %bb.j ]
  %.2172241 = phi i32 [ %.1171246, %.preheader ], [ %.3173, %bb.j ]
  %.1175240 = phi double [ %.0174245, %.preheader ], [ %.2176, %bb.j ] ; 2 uses
  %.2192239 = phi i32 [ %i.kq, %.preheader ], [ %i.kz, %bb.j ] ; 2 uses
  %i.ku = sext i32 %.2192239 to i64               ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !26 ; 2 uses
  %i.kx = fcmp olt double %i.kw, %.1175240        ; 3 uses
  %.2176 = select i1 %i.kx, double %i.kw, double %.1175240 ; 3 uses
  %.3173 = select i1 %i.kx, i32 %.4244, i32 %.2172241 ; 3 uses
  %.3 = select i1 %i.kx, i32 %.2192239, i32 %.2242 ; 3 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.ku
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !53 ; 2 uses
  %.not218 = icmp eq i32 %i.kz, -1
  br i1 %.not218, label %.loopexit, label %bb.j, !llvm.loop !206

._crit_edge248.loopexit:                          ; preds = %.loopexit
  %i.la = fmul double %.2176, 5.000000e-01
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %._crit_edge248.loopexit, %bb.i
  %.0174.lcssa = phi double [ f0x40E869FE66666666, %bb.i ], [ %i.la, %._crit_edge248.loopexit ] ; 3 uses
  %.1171.lcssa = phi i32 [ %.0170278, %bb.i ], [ %.3173, %._crit_edge248.loopexit ] ; 5 uses
  %.1169.lcssa = phi i32 [ %.0168279, %bb.i ], [ %.3, %._crit_edge248.loopexit ] ; 6 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv303
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !34 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !36 ; 4 uses
  %i.le = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !36 ; 2 uses
  %i.lf = sext i32 %.1171.lcssa to i64            ; 6 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !13 ; 2 uses
  %i.li = icmp eq i32 %i.lh, -1
  br i1 %i.li, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge248
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  store i32 %.1171.lcssa, ptr %i.ld, align 4, !tbaa !13
  store i32 -1, ptr %i.lj, align 4, !tbaa !13
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge248
  %i.lk = sext i32 %i.lh to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lk
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !34 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !36 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !36 ; 3 uses
  %i.lq = load i32, ptr %i.ln, align 4, !tbaa !13 ; 3 uses
  %i.lr = load i32, ptr %i.lp, align 4, !tbaa !13 ; 3 uses
  %i.ls = icmp sgt i32 %i.lq, %i.lr               ; 2 uses
  %.220 = select i1 %i.ls, ptr %i.ln, ptr %i.lp   ; 2 uses
  %i.lt = tail call i32 @llvm.smin.i32(i32 %i.lq, i32 %i.lr) ; 2 uses
  %.not210251 = icmp eq i32 %i.lt, -1
  %i.lu = tail call i32 @llvm.smax.i32(i32 %i.lq, i32 %i.lr)
  br i1 %.not210251, label %.preheader224, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.l
  %. = select i1 %i.ls, ptr %i.lp, ptr %i.ln
  br label %.lr.ph255

.preheader224.loopexit:                           ; preds = %.lr.ph255
  %.pre308 = load i32, ptr %.220, align 4, !tbaa !13
  br label %.preheader224

.preheader224:                                    ; preds = %.preheader224.loopexit, %bb.l
  %i.lv = phi i32 [ %i.lu, %bb.l ], [ %.pre308, %.preheader224.loopexit ] ; 2 uses
  %.0181.lcssa = phi ptr [ %i.ld, %bb.l ], [ %i.ly, %.preheader224.loopexit ] ; 2 uses
  %.not211257 = icmp eq i32 %i.lv, -1
  br i1 %.not211257, label %._crit_edge261, label %.lr.ph260

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %.lr.ph255
  %i.lw = phi i32 [ %i.lz, %.lr.ph255 ], [ %i.lt, %.lr.ph255.preheader ]
  %.0177253 = phi ptr [ %i.lx, %.lr.ph255 ], [ %., %.lr.ph255.preheader ]
  %.0181252 = phi ptr [ %i.ly, %.lr.ph255 ], [ %i.ld, %.lr.ph255.preheader ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0177253, i64 4 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0181252, i64 4 ; 2 uses
  store i32 %i.lw, ptr %.0181252, align 4, !tbaa !13
  %i.lz = load i32, ptr %i.lx, align 4, !tbaa !13 ; 2 uses
  %.not210 = icmp eq i32 %i.lz, -1
  br i1 %.not210, label %.preheader224.loopexit, label %.lr.ph255, !llvm.loop !207

.lr.ph260:                                        ; preds = %.preheader224, %.lr.ph260
  %i.ma = phi i32 [ %i.md, %.lr.ph260 ], [ %i.lv, %.preheader224 ]
  %.1178259 = phi ptr [ %i.mb, %.lr.ph260 ], [ %.220, %.preheader224 ]
  %.1182258 = phi ptr [ %i.mc, %.lr.ph260 ], [ %.0181.lcssa, %.preheader224 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.1178259, i64 4 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.1182258, i64 4 ; 2 uses
  store i32 %i.ma, ptr %.1182258, align 4, !tbaa !13
  %i.md = load i32, ptr %i.mb, align 4, !tbaa !13 ; 2 uses
  %.not211 = icmp eq i32 %i.md, -1
  br i1 %.not211, label %._crit_edge261, label %.lr.ph260, !llvm.loop !208

._crit_edge261:                                   ; preds = %.lr.ph260, %.preheader224
  %.1182.lcssa = phi ptr [ %.0181.lcssa, %.preheader224 ], [ %i.mc, %.lr.ph260 ]
  store i32 -1, ptr %.1182.lcssa, align 4, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge261, %bb.k
  %i.me = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !36 ; 4 uses
  %i.mg = sext i32 %.1169.lcssa to i64            ; 5 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !13 ; 2 uses
  %i.mj = icmp eq i32 %i.mi, -1
end_hunk_2
begin_hunk_3_@veryfastsupg_double_outtree:bb.a
  %.pre-phi318 = phi i64 [ %.pre315, %._crit_edge314 ], [ %.pre317, %bb.s ]
  %.pre-phi316 = phi i64 [ %.pre315, %._crit_edge314 ], [ %i.lf, %bb.s ]
  %.pre-phi312 = phi i64 [ %i.mg, %._crit_edge314 ], [ %.pre311, %bb.s ]
  %.pre-phi = phi i64 [ %i.lf, %._crit_edge314 ], [ %.pre310, %bb.s ] ; 2 uses
  %i.nr = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi316 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !28
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %.pre-phi
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !26
  %i.nv = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi318
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !28
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %.pre-phi312
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !26
  %i.nz = tail call double %.sroa.0.0(double noundef %i.nu, double noundef %i.ny) #33, !callees !213
  %i.oa = load ptr, ptr %i.nr, align 8, !tbaa !28
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %.pre-phi
  store double %i.nz, ptr %i.ob, align 8, !tbaa !26
  %.pre313 = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !51
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %i.oc = phi ptr [ %i.np, %bb.q ], [ %.pre313, %bb.t ] ; 5 uses
  %i.od = sext i32 %.5275 to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !53 ; 2 uses
  %.not214 = icmp eq i32 %i.of, -1
  br i1 %.not214, label %bb.v, label %bb.q, !llvm.loop !211

bb.v:                                             ; preds = %bb.u
  %i.og = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %i.mg ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !54 ; 2 uses
  %i.oj = load i32, ptr %i.og, align 4, !tbaa !53 ; 3 uses
  %i.ok = sext i32 %i.oi to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %i.ok
  store i32 %i.oj, ptr %i.ol, align 4, !tbaa !53
  %.not215 = icmp eq i32 %i.oj, -1
  br i1 %.not215, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.om = sext i32 %i.oj to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  store i32 %i.oi, ptr %i.oo, align 4, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.op = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !18
  %i.oq = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !32 ; 2 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %i.lf
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !18
  %i.ot = load ptr, ptr %i.nj, align 8, !tbaa !28 ; 2 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !26
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.oq, i64 %i.mg
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !26
  %i.oz = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.op, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.os, double noundef %i.ou, ptr noundef %i.ow, double noundef %i.oy) #33 ; 0 uses
  %i.pa = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !32
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %i.lf
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !18
  %i.pd = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !18
  %i.pe = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.pc, ptr noundef nonnull dereferenceable(1) %i.pd) #33 ; 0 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !212

._crit_edge282:                                   ; preds = %bb.x, %._crit_edge238.thread, %._crit_edge238
  %i.pf = tail call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.pg = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !18
  %i.ph = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pf, ptr noundef nonnull @.str.4, ptr noundef %i.pg) #33 ; 0 uses
  %i.pi = tail call i32 @fclose(ptr noundef %i.pf) ; 0 uses
  %i.pj = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc208 = tail call i32 @fputc(i32 10, ptr %i.pj) ; 0 uses
  %i.pk = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.pk) #33
  store ptr null, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !28
  %i.pl = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.pl) #33
  store ptr null, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !36
  %i.pm = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.pm) #33
  store ptr null, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !51
  %i.pn = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !32
  tail call void @FreeCharMtx(ptr noundef %i.pn) #33
  %i.po = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.po) #33
  %i.pp = load ptr, ptr @veryfastsupg_double_outtree.nametmp, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.pp) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal double @cluster_mix_double(double noundef %0, double noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = fcmp olt double %0, %1
  %i.b = select i1 %i.a, double %0, double %1
  %i.c = load double, ptr @sueff1_double, align 8, !tbaa !26
  %i.d = fadd double %0, %1
  %i.e = load double, ptr @sueff05_double, align 8, !tbaa !26
  %i.f = fmul double %i.d, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %i.f)
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @cluster_average_double(double noundef %0, double noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fadd double %0, %1
  %i.b = fmul double %i.a, 5.000000e-01
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @cluster_minimum_double(double noundef %0, double noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fcmp olt double %0, %1
  %i.b = select i1 %i.a, double %0, double %1
  ret double %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !34
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.c = tail call ptr @AllocateIntMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @veryfastsupg.eff, align 8, !tbaa !34
  %i.d = load i32, ptr @njob, align 4, !tbaa !13
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @veryfastsupg.hist, align 8, !tbaa !36
  %i.f = load i32, ptr @njob, align 4, !tbaa !13
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #34
  store ptr %i.i, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !28
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #34
  store ptr %i.j, ptr @veryfastsupg.ac, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.preheader208.lr.ph, label %._crit_edge218.thread

.preheader208.lr.ph:                              ; preds = %bb.c
  %i.l = load ptr, ptr @veryfastsupg.eff, align 8
  %wide.trip.count271 = zext nneg i32 %0 to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count271, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count271
  br label %.preheader208

.preheader208:                                    ; preds = %.preheader208.lr.ph, %._crit_edge
  %indvars.iv268 = phi i64 [ 0, %.preheader208.lr.ph ], [ %indvars.iv.next269, %._crit_edge ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv268
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv268
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader208, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader208 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !26
  %wide.load324 = load <2 x double>, ptr %i.r, align 8, !tbaa !26
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 1.000000e+06), <2 x double> splat (double 5.000000e-01))
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load324, <2 x double> splat (double 1.000000e+06), <2 x double> splat (double 5.000000e-01))
  %i.u = fptosi <2 x double> %i.s to <2 x i32>
  %i.v = fptosi <2 x double> %i.t to <2 x i32>
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <2 x i32> %i.u, ptr %i.w, align 4, !tbaa !13
  store <2 x i32> %i.v, ptr %i.x, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader208, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader208 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader207:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !51 ; 4 uses
  %wide.trip.count276 = zext nneg i32 %0 to i64
  %min.iters.check326 = icmp ult i32 %0, 4
  br i1 %min.iters.check326, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.preheader207
  %n.vec328 = and i64 %wide.trip.count271, 2147483644 ; 3 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next334, %vector.body329 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph327 ], [ %vec.ind.next, %vector.body329 ] ; 3 uses
  %vec.ind331 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph327 ], [ %vec.ind.next335, %vector.body329 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %4 = trunc <2 x i64> %vec.ind to <2 x i32>
  %5 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ac = shufflevector <2 x i32> %4, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ac, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.z, align 4, !tbaa !13
  %i.ad = shufflevector <2 x i32> %5, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec333 = add <4 x i32> %i.ad, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec333, ptr %i.ab, align 4, !tbaa !13
  %index.next334 = add nuw i64 %index330, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next335 = add <2 x i32> %vec.ind331, splat (i32 4)
  %i.ae = icmp eq i64 %index.next334, %n.vec328
  br i1 %i.ae, label %middle.block336, label %vector.body329, !llvm.loop !215

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %n.vec328, %wide.trip.count271
  br i1 %cmp.n337, label %._crit_edge218, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %.preheader207, %middle.block336
  %indvars.iv273.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec328, %middle.block336 ]
  br label %scalar.ph325

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !26
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double 1.000000e+06, double 5.000000e-01)
  %i.ai = fptosi double %i.ah to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count271
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !216

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.preheader207, label %.preheader208, !llvm.loop !217

scalar.ph325:                                     ; preds = %scalar.ph325.preheader, %scalar.ph325
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph325 ], [ %indvars.iv273.ph, %scalar.ph325.preheader ] ; 3 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv273 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next274 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = trunc i64 %indvars.iv273 to i32
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !54
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge218, label %scalar.ph325, !llvm.loop !218

._crit_edge218.thread:                            ; preds = %bb.c
  %.pre311 = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !51
  %i.ap = sext i32 %0 to i64
  %i.aq = getelementptr [8 x i8], ptr %.pre311, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store i32 -1, ptr %i.ar, align 4, !tbaa !53
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc314 = tail call i32 @fputc(i32 10, ptr %i.as) ; 0 uses
  br label %._crit_edge218.._crit_edge263_crit_edge

._crit_edge218:                                   ; preds = %scalar.ph325, %middle.block336
  %i.at = add nsw i32 %0, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.au
  store i32 -1, ptr %i.av, align 4, !tbaa !53
  %i.aw = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !28
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !26
  %i.az = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !36
  %i.ba = zext nneg i32 %0 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 -1, i64 %i.bb, i1 false), !tbaa !13
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bc) ; 0 uses
  %.not319 = icmp eq i32 %0, 1
  br i1 %.not319, label %._crit_edge218.._crit_edge263_crit_edge, label %.lr.ph262.preheader

._crit_edge218.._crit_edge263_crit_edge:          ; preds = %._crit_edge218.thread, %._crit_edge218
  %.pre294 = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !34
  br label %._crit_edge263

.lr.ph262.preheader:                              ; preds = %._crit_edge218
  %wide.trip.count287 = zext nneg i32 %i.at to i64
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.t
  %indvars.iv284 = phi i64 [ 0, %.lr.ph262.preheader ], [ %indvars.iv.next285, %bb.t ] ; 4 uses
  %.0152260 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1153.lcssa, %bb.t ] ; 2 uses
  %.0154259 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1155.lcssa, %bb.t ] ; 2 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv284 to i32 ; 3 uses
  %i.be = urem i32 %i.bd, 10
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph262
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.24, i32 noundef %i.bd, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph262
  %i.bi = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !51 ; 7 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !53 ; 2 uses
  %.not191223 = icmp eq i32 %i.bj, -1
  br i1 %.not191223, label %._crit_edge228, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bk = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !34
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bl = sext i32 %i.bo to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !53 ; 2 uses
  %.not191 = icmp eq i32 %i.bn, -1
  br i1 %.not191, label %._crit_edge228.loopexit, label %.preheader, !llvm.loop !219

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.bo = phi i32 [ %i.bj, %.preheader.lr.ph ], [ %i.bn, %.loopexit ] ; 3 uses
  %i.bp = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bl, %.loopexit ]
  %.1153227 = phi i32 [ %.0152260, %.preheader.lr.ph ], [ %.3, %.loopexit ]
  %.1155226 = phi i32 [ %.0154259, %.preheader.lr.ph ], [ %.3157, %.loopexit ]
  %.0158225 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2160, %.loopexit ]
  %.4224 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bo, %.loopexit ]
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.2222 = phi i32 [ %.1153227, %.preheader ], [ %.3, %bb.f ]
  %.2156221 = phi i32 [ %.1155226, %.preheader ], [ %.3157, %bb.f ]
  %.1159220 = phi i32 [ %.0158225, %.preheader ], [ %.2160, %bb.f ] ; 2 uses
  %.1175219 = phi i32 [ %i.bo, %.preheader ], [ %i.bx, %bb.f ] ; 2 uses
  %i.bs = sext i32 %.1175219 to i64               ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %.1159220           ; 2 uses
  %.2160 = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 %.1159220) ; 3 uses
  %.3157 = select i1 %i.bv, i32 %.4224, i32 %.2156221 ; 3 uses
  %.3 = select i1 %i.bv, i32 %.1175219, i32 %.2222 ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bs
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !53 ; 2 uses
  %.not200 = icmp eq i32 %i.bx, -1
  br i1 %.not200, label %.loopexit, label %bb.f, !llvm.loop !220

._crit_edge228.loopexit:                          ; preds = %.loopexit
  %i.by = sitofp i32 %.2160 to double
  %i.bz = fmul nnan double %i.by, 5.000000e-01
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %._crit_edge228.loopexit, %bb.e
  %.0158.lcssa = phi double [ 2.000000e+06, %bb.e ], [ %i.bz, %._crit_edge228.loopexit ]
  %.1155.lcssa = phi i32 [ %.0154259, %bb.e ], [ %.3157, %._crit_edge228.loopexit ] ; 5 uses
  %.1153.lcssa = phi i32 [ %.0152260, %bb.e ], [ %.3, %._crit_edge228.loopexit ] ; 6 uses
  %i.ca = fdiv double %.0158.lcssa, 1.000000e+06  ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !34 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36 ; 4 uses
  %i.ce = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !36 ; 2 uses
  %i.cf = sext i32 %.1155.lcssa to i64            ; 4 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !13 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, -1
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge228
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %.1155.lcssa, ptr %i.cd, align 4, !tbaa !13
  store i32 -1, ptr %i.cj, align 4, !tbaa !13
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge228
  %i.ck = sext i32 %i.ch to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !34 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !36 ; 3 uses
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !13 ; 3 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !13 ; 3 uses
  %i.cs = icmp sgt i32 %i.cq, %i.cr               ; 2 uses
  %.201 = select i1 %i.cs, ptr %i.cn, ptr %i.cp   ; 2 uses
  %i.ct = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cr) ; 2 uses
  %.not192232 = icmp eq i32 %i.ct, -1
  %i.cu = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 %i.cr)
  br i1 %.not192232, label %.preheader205, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %bb.h
  %. = select i1 %i.cs, ptr %i.cp, ptr %i.cn
  br label %.lr.ph236

.preheader205.loopexit:                           ; preds = %.lr.ph236
  %.pre289 = load i32, ptr %.201, align 4, !tbaa !13
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.h
  %i.cv = phi i32 [ %i.cu, %bb.h ], [ %.pre289, %.preheader205.loopexit ] ; 2 uses
  %.0165.lcssa = phi ptr [ %i.cd, %bb.h ], [ %i.cy, %.preheader205.loopexit ] ; 2 uses
  %.not193238 = icmp eq i32 %i.cv, -1
  br i1 %.not193238, label %._crit_edge242, label %.lr.ph241

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %.lr.ph236
  %i.cw = phi i32 [ %i.cz, %.lr.ph236 ], [ %i.ct, %.lr.ph236.preheader ]
  %.0161234 = phi ptr [ %i.cx, %.lr.ph236 ], [ %., %.lr.ph236.preheader ]
  %.0165233 = phi ptr [ %i.cy, %.lr.ph236 ], [ %i.cd, %.lr.ph236.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0161234, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0165233, i64 4 ; 2 uses
  store i32 %i.cw, ptr %.0165233, align 4, !tbaa !13
end_hunk_3
begin_hunk_4_@veryfastsupg:bb.a

bb.m:                                             ; preds = %bb.l, %bb.q
  %.5256 = phi i32 [ 0, %bb.l ], [ %i.fj, %bb.q ] ; 8 uses
  %.not198 = icmp eq i32 %.5256, %.1155.lcssa
  %.not199 = icmp eq i32 %.5256, %.1153.lcssa
  %or.cond = select i1 %.not198, i1 true, i1 %.not199
  br i1 %or.cond, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eq = icmp slt i32 %.5256, %.1155.lcssa
  br i1 %i.eq, label %._crit_edge295, label %bb.o

._crit_edge295:                                   ; preds = %bb.n
  %.pre296 = sext i32 %.5256 to i64               ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.5..1153 = tail call i32 @llvm.smin.i32(i32 %.5256, i32 %.1153.lcssa)
  %.1153..5 = tail call i32 @llvm.smax.i32(i32 %.5256, i32 %.1153.lcssa)
  %.pre291 = sext i32 %.5256 to i64
  %.pre292 = sext i32 %.1153..5 to i64
  %.pre298 = sext i32 %.5..1153 to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge295, %bb.o
  %.pre-phi299 = phi i64 [ %.pre296, %._crit_edge295 ], [ %.pre298, %bb.o ]
  %.pre-phi297 = phi i64 [ %.pre296, %._crit_edge295 ], [ %i.cf, %bb.o ]
  %.pre-phi293 = phi i64 [ %i.dg, %._crit_edge295 ], [ %.pre292, %bb.o ]
  %.pre-phi = phi i64 [ %i.cf, %._crit_edge295 ], [ %.pre291, %bb.o ]
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.pre-phi297
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !36
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %.pre-phi ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !13 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.pre-phi299
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !36
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %.pre-phi293
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !13 ; 2 uses
  %i.ez = tail call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.ey)
  %i.fa = sitofp i32 %i.ez to double
  %i.fb = add nsw i32 %i.ey, %i.eu
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fmul nnan double %i.fc, 5.000000e-01
  %i.fe = fmul nnan double %i.fd, 1.000000e-01
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fa, double 9.000000e-01, double %i.fe)
  %i.fg = fptosi double %i.ff to i32
  store i32 %i.fg, ptr %i.et, align 4, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.fh = sext i32 %.5256 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !53 ; 2 uses
  %.not196 = icmp eq i32 %i.fj, -1
  br i1 %.not196, label %bb.r, label %bb.m, !llvm.loop !225

bb.r:                                             ; preds = %bb.q
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.dg ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !54 ; 2 uses
  %i.fn = load i32, ptr %i.fk, align 4, !tbaa !53 ; 3 uses
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.fo
  store i32 %i.fn, ptr %i.fp, align 4, !tbaa !53
  %.not197 = icmp eq i32 %i.fn, -1
  br i1 %.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = sext i32 %i.fn to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %i.fm, ptr %i.fs, align 4, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge263, label %.lr.ph262, !llvm.loop !226

._crit_edge263:                                   ; preds = %bb.t, %._crit_edge218.._crit_edge263_crit_edge
  %i.ft = phi ptr [ %.pre294, %._crit_edge218.._crit_edge263_crit_edge ], [ %i.ep, %bb.t ]
  tail call void @FreeIntMtx(ptr noundef %i.ft) #33
  store ptr null, ptr @veryfastsupg.eff, align 8, !tbaa !34
  %i.fu = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.fu) #33
  store ptr null, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !28
  %i.fv = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.fv) #33
  store ptr null, ptr @veryfastsupg.hist, align 8, !tbaa !36
  %i.fw = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.fw) #33
  store ptr null, ptr @veryfastsupg.ac, align 8, !tbaa !51
  ret void
}

declare ptr @AllocateIntMtx(i32 noundef, i32 noundef) local_unnamed_addr #13

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_int(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !34
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.c = tail call ptr @AllocateIntMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @veryfastsupg_int.eff, align 8, !tbaa !34
  %i.d = load i32, ptr @njob, align 4, !tbaa !13
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @veryfastsupg_int.hist, align 8, !tbaa !36
  %i.f = load i32, ptr @njob, align 4, !tbaa !13
  %i.g = tail call ptr @AllocateIntVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !36
  %i.h = load i32, ptr @njob, align 4, !tbaa !13
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #34
  store ptr %i.k, ptr @veryfastsupg_int.ac, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = icmp sgt i32 %0, 0
  br i1 %i.l, label %.preheader208.lr.ph, label %._crit_edge218.thread

.preheader208.lr.ph:                              ; preds = %bb.c
  %i.m = load ptr, ptr @veryfastsupg_int.eff, align 8
  %wide.trip.count271 = zext nneg i32 %0 to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %0, 8
  %n.vec = and i64 %wide.trip.count271, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count271
  %xtraiter = and i64 %wide.trip.count271, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader208

.preheader208:                                    ; preds = %.preheader208.lr.ph, %._crit_edge
  %indvars.iv268 = phi i64 [ 0, %.preheader208.lr.ph ], [ %indvars.iv.next269, %._crit_edge ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv268
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 7 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv268
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = sub i64 %i.s, %i.r
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond341 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond341, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader208, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader208 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !13
  %wide.load324 = load <4 x i32>, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %wide.load, ptr %i.w, align 4, !tbaa !13
  store <4 x i32> %wide.load324, ptr %i.x, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader208, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader208 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !228

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count271
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %scalar.ph

.preheader207:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !51 ; 4 uses
  %wide.trip.count276 = zext nneg i32 %0 to i64
  %min.iters.check326 = icmp ult i32 %0, 4
  br i1 %min.iters.check326, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.preheader207
  %n.vec328 = and i64 %wide.trip.count271, 2147483644 ; 3 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next334, %vector.body329 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph327 ], [ %vec.ind.next, %vector.body329 ] ; 3 uses
  %vec.ind331 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph327 ], [ %vec.ind.next335, %vector.body329 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index330
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %4 = trunc <2 x i64> %vec.ind to <2 x i32>
  %5 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ah = shufflevector <2 x i32> %4, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ah, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.ae, align 4, !tbaa !13
  %i.ai = shufflevector <2 x i32> %5, <2 x i32> %vec.ind331, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec333 = add <4 x i32> %i.ai, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec333, ptr %i.ag, align 4, !tbaa !13
  %index.next334 = add nuw i64 %index330, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next335 = add <2 x i32> %vec.ind331, splat (i32 4)
  %i.aj = icmp eq i64 %index.next334, %n.vec328
  br i1 %i.aj, label %middle.block336, label %vector.body329, !llvm.loop !229

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %n.vec328, %wide.trip.count271
  br i1 %cmp.n337, label %._crit_edge218, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %.preheader207, %middle.block336
  %indvars.iv273.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec328, %middle.block336 ]
  br label %scalar.ph325

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !13
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.2
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.au, ptr %i.av, align 4, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count271
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !230

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.preheader207, label %.preheader208, !llvm.loop !231

scalar.ph325:                                     ; preds = %scalar.ph325.preheader, %scalar.ph325
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph325 ], [ %indvars.iv273.ph, %scalar.ph325.preheader ] ; 3 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv273 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv.next274 to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = trunc i64 %indvars.iv273 to i32
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !54
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge218, label %scalar.ph325, !llvm.loop !232

._crit_edge218.thread:                            ; preds = %bb.c
  %.pre311 = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !51
  %i.bb = sext i32 %0 to i64
  %i.bc = getelementptr [8 x i8], ptr %.pre311, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  store i32 -1, ptr %i.bd, align 4, !tbaa !53
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc314 = tail call i32 @fputc(i32 10, ptr %i.be) ; 0 uses
  br label %._crit_edge218.._crit_edge263_crit_edge

._crit_edge218:                                   ; preds = %scalar.ph325, %middle.block336
  %i.bf = add nsw i32 %0, -1                      ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bg
  store i32 -1, ptr %i.bh, align 4, !tbaa !53
  %i.bi = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !36
  %i.bj = zext nneg i32 %0 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %i.bk, i1 false), !tbaa !13
  %i.bl = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !36
  %i.bm = zext nneg i32 %0 to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 -1, i64 %i.bn, i1 false), !tbaa !13
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bo) ; 0 uses
  %.not319 = icmp eq i32 %0, 1
  br i1 %.not319, label %._crit_edge218.._crit_edge263_crit_edge, label %.lr.ph262.preheader

._crit_edge218.._crit_edge263_crit_edge:          ; preds = %._crit_edge218.thread, %._crit_edge218
  %.pre294 = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !34
  br label %._crit_edge263

.lr.ph262.preheader:                              ; preds = %._crit_edge218
  %wide.trip.count287 = zext nneg i32 %i.bf to i64
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.t
  %indvars.iv284 = phi i64 [ 0, %.lr.ph262.preheader ], [ %indvars.iv.next285, %bb.t ] ; 4 uses
  %.0152260 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1153.lcssa, %bb.t ] ; 2 uses
  %.0154259 = phi i32 [ -1, %.lr.ph262.preheader ], [ %.1155.lcssa, %bb.t ] ; 2 uses
  %i.bp = trunc nuw nsw i64 %indvars.iv284 to i32 ; 3 uses
  %i.bq = urem i32 %i.bp, 10
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph262
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bs, ptr noundef nonnull @.str.24, i32 noundef %i.bp, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph262
  %i.bu = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !51 ; 7 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !53 ; 2 uses
  %.not191223 = icmp eq i32 %i.bv, -1
  br i1 %.not191223, label %._crit_edge228, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bw = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !34
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bx = sext i32 %i.ca to i64                   ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !53 ; 2 uses
  %.not191 = icmp eq i32 %i.bz, -1
  br i1 %.not191, label %._crit_edge228.loopexit, label %.preheader, !llvm.loop !233

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.ca = phi i32 [ %i.bv, %.preheader.lr.ph ], [ %i.bz, %.loopexit ] ; 3 uses
  %i.cb = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bx, %.loopexit ]
  %.1153227 = phi i32 [ %.0152260, %.preheader.lr.ph ], [ %.3, %.loopexit ]
  %.1155226 = phi i32 [ %.0154259, %.preheader.lr.ph ], [ %.3157, %.loopexit ]
  %.0158225 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2160, %.loopexit ]
  %.4224 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ca, %.loopexit ]
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.2222 = phi i32 [ %.1153227, %.preheader ], [ %.3, %bb.f ]
  %.2156221 = phi i32 [ %.1155226, %.preheader ], [ %.3157, %bb.f ]
  %.1159220 = phi i32 [ %.0158225, %.preheader ], [ %.2160, %bb.f ] ; 2 uses
  %.1175219 = phi i32 [ %i.ca, %.preheader ], [ %i.cj, %bb.f ] ; 2 uses
  %i.ce = sext i32 %.1175219 to i64               ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !13 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %.1159220           ; 2 uses
  %.2160 = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 %.1159220) ; 3 uses
  %.3157 = select i1 %i.ch, i32 %.4224, i32 %.2156221 ; 3 uses
  %.3 = select i1 %i.ch, i32 %.1175219, i32 %.2222 ; 3 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ce
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !53 ; 2 uses
  %.not200 = icmp eq i32 %i.cj, -1
  br i1 %.not200, label %.loopexit, label %bb.f, !llvm.loop !234

._crit_edge228.loopexit:                          ; preds = %.loopexit
  %i.ck = sitofp i32 %.2160 to double
  %i.cl = fmul nnan double %i.ck, 5.000000e-01
  %i.cm = fptosi double %i.cl to i32
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %._crit_edge228.loopexit, %bb.e
  %.0158.lcssa = phi i32 [ 2000000, %bb.e ], [ %i.cm, %._crit_edge228.loopexit ] ; 3 uses
  %.1155.lcssa = phi i32 [ %.0154259, %bb.e ], [ %.3157, %._crit_edge228.loopexit ] ; 5 uses
  %.1153.lcssa = phi i32 [ %.0152260, %bb.e ], [ %.3, %._crit_edge228.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !34 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !36 ; 4 uses
  %i.cq = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !36 ; 2 uses
  %i.cr = sext i32 %.1155.lcssa to i64            ; 4 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge228
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 %.1155.lcssa, ptr %i.cp, align 4, !tbaa !13
  store i32 -1, ptr %i.cv, align 4, !tbaa !13
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge228
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !36 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36 ; 3 uses
  %i.dc = load i32, ptr %i.cz, align 4, !tbaa !13 ; 3 uses
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !13 ; 3 uses
  %i.de = icmp sgt i32 %i.dc, %i.dd               ; 2 uses
  %.201 = select i1 %i.de, ptr %i.cz, ptr %i.db   ; 2 uses
  %i.df = tail call i32 @llvm.smin.i32(i32 %i.dc, i32 %i.dd) ; 2 uses
  %.not192232 = icmp eq i32 %i.df, -1
  %i.dg = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 %i.dd)
  br i1 %.not192232, label %.preheader205, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %bb.h
  %. = select i1 %i.de, ptr %i.db, ptr %i.cz
  br label %.lr.ph236

.preheader205.loopexit:                           ; preds = %.lr.ph236
  %.pre289 = load i32, ptr %.201, align 4, !tbaa !13
  br label %.preheader205

end_hunk_4
begin_hunk_5_@veryfastsupg_int:bb.a
  br i1 %.not195, label %._crit_edge254, label %.lr.ph253, !llvm.loop !238

._crit_edge254:                                   ; preds = %.lr.ph253, %.preheader204
  %.3168.lcssa = phi ptr [ %.2167.lcssa, %.preheader204 ], [ %i.ep, %.lr.ph253 ]
  store i32 -1, ptr %.3168.lcssa, align 4, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge254, %bb.j
  %i.er = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !36 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.cr ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !13
  %i.eu = sub nsw i32 %.0158.lcssa, %i.et
  %i.ev = sitofp i32 %i.eu to double
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv284
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !28 ; 2 uses
  store double %i.ev, ptr %i.ex, align 8, !tbaa !26
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.ds
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !13
  %i.fa = sub nsw i32 %.0158.lcssa, %i.ez
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store double %i.fb, ptr %i.fc, align 8, !tbaa !26
  store i32 %.0158.lcssa, ptr %i.es, align 4, !tbaa !13
  store i32 %i.bp, ptr %i.cs, align 4, !tbaa !13
  %i.fd = load ptr, ptr @veryfastsupg_int.eff, align 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.q
  %.5256 = phi i32 [ 0, %bb.l ], [ %i.fz, %bb.q ] ; 8 uses
  %.not198 = icmp eq i32 %.5256, %.1155.lcssa
  %.not199 = icmp eq i32 %.5256, %.1153.lcssa
  %or.cond = select i1 %.not198, i1 true, i1 %.not199
  br i1 %or.cond, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fe = icmp slt i32 %.5256, %.1155.lcssa
  br i1 %i.fe, label %._crit_edge295, label %bb.o

._crit_edge295:                                   ; preds = %bb.n
  %.pre296 = sext i32 %.5256 to i64               ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.5..1153 = tail call i32 @llvm.smin.i32(i32 %.5256, i32 %.1153.lcssa)
  %.1153..5 = tail call i32 @llvm.smax.i32(i32 %.5256, i32 %.1153.lcssa)
  %.pre291 = sext i32 %.5256 to i64
  %.pre292 = sext i32 %.1153..5 to i64
  %.pre298 = sext i32 %.5..1153 to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge295, %bb.o
  %.pre-phi299 = phi i64 [ %.pre296, %._crit_edge295 ], [ %.pre298, %bb.o ]
  %.pre-phi297 = phi i64 [ %.pre296, %._crit_edge295 ], [ %i.cr, %bb.o ]
  %.pre-phi293 = phi i64 [ %i.ds, %._crit_edge295 ], [ %.pre292, %bb.o ]
  %.pre-phi = phi i64 [ %i.cr, %._crit_edge295 ], [ %.pre291, %bb.o ]
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %.pre-phi297
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !36
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %.pre-phi ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !13 ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %.pre-phi299
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !36
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %.pre-phi293
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !13 ; 2 uses
  %i.fn = tail call i32 @llvm.smin.i32(i32 %i.fi, i32 %i.fm)
  %i.fo = sitofp i32 %i.fn to float
  %i.fp = fpext float %i.fo to double
  %i.fq = add nsw i32 %i.fm, %i.fi
  %i.fr = sitofp i32 %i.fq to float
  %i.fs = fpext nnan ninf float %i.fr to double
  %i.ft = fmul nnan double %i.fs, 5.000000e-01
  %i.fu = fmul nnan double %i.ft, 1.000000e-01
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fp, double 9.000000e-01, double %i.fu)
  %i.fw = fptosi double %i.fv to i32
  store i32 %i.fw, ptr %i.fh, align 4, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.fx = sext i32 %.5256 to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !53 ; 2 uses
  %.not196 = icmp eq i32 %i.fz, -1
  br i1 %.not196, label %bb.r, label %bb.m, !llvm.loop !239

bb.r:                                             ; preds = %bb.q
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ds ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !54 ; 2 uses
  %i.gd = load i32, ptr %i.ga, align 4, !tbaa !53 ; 3 uses
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ge
  store i32 %i.gd, ptr %i.gf, align 4, !tbaa !53
  %.not197 = icmp eq i32 %i.gd, -1
  br i1 %.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gg = sext i32 %i.gd to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.gc, ptr %i.gi, align 4, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge263, label %.lr.ph262, !llvm.loop !240

._crit_edge263:                                   ; preds = %bb.t, %._crit_edge218.._crit_edge263_crit_edge
  %i.gj = phi ptr [ %.pre294, %._crit_edge218.._crit_edge263_crit_edge ], [ %i.fd, %bb.t ]
  tail call void @FreeIntMtx(ptr noundef %i.gj) #33
  store ptr null, ptr @veryfastsupg_int.eff, align 8, !tbaa !34
  %i.gk = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.gk) #33
  store ptr null, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !36
  %i.gl = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.gl) #33
  store ptr null, ptr @veryfastsupg_int.hist, align 8, !tbaa !36
  %i.gm = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.gm) #33
  store ptr null, ptr @veryfastsupg_int.ac, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fastsupg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @fastsupg.eff, align 8, !tbaa !56
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.c = tail call ptr @AllocateFloatMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @fastsupg.eff, align 8, !tbaa !56
  %i.d = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.e = tail call ptr @AllocateCharMtx(i32 noundef %i.d, i32 noundef %i.d) #33
  store ptr %i.e, ptr @fastsupg.pair, align 8, !tbaa !32
  %i.f = load i32, ptr @njob, align 4, !tbaa !13
  %i.g = tail call ptr @AllocateFloatVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @fastsupg.tmplen, align 8, !tbaa !22
  %i.h = load i32, ptr @njob, align 4, !tbaa !13
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 8) #37
  store ptr %i.j, ptr @fastsupg.ac, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.preheader173.lr.ph, label %.preheader169.thread

.preheader173.lr.ph:                              ; preds = %bb.c
  %i.l = load ptr, ptr @fastsupg.eff, align 8
  %wide.trip.count230 = zext nneg i32 %0 to i64   ; 18 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count230, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count230
  br label %.preheader173

.preheader173:                                    ; preds = %.preheader173.lr.ph, %._crit_edge
  %indvars.iv227 = phi i64 [ 0, %.preheader173.lr.ph ], [ %indvars.iv.next228, %._crit_edge ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv227
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv227
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader173, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader173 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !26
  %wide.load299 = load <2 x double>, ptr %i.r, align 8, !tbaa !26
  %i.s = fptrunc <2 x double> %wide.load to <2 x float>
  %i.t = fptrunc <2 x double> %wide.load299 to <2 x float>
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <2 x float> %i.s, ptr %i.u, align 4, !tbaa !24
  store <2 x float> %i.t, ptr %i.v, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader173, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader173 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader172:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr @fastsupg.ac, align 8, !tbaa !51 ; 4 uses
  %wide.trip.count235 = zext nneg i32 %0 to i64
  %min.iters.check301 = icmp ult i32 %0, 4
  br i1 %min.iters.check301, label %scalar.ph300.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %.preheader172
  %n.vec303 = and i64 %wide.trip.count230, 2147483644 ; 3 uses
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next309, %vector.body304 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph302 ], [ %vec.ind.next, %vector.body304 ] ; 3 uses
  %vec.ind306 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph302 ], [ %vec.ind.next310, %vector.body304 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index305
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index305
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %4 = trunc <2 x i64> %vec.ind to <2 x i32>
  %5 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.aa = shufflevector <2 x i32> %4, <2 x i32> %vec.ind306, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.aa, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !13
  %i.ab = shufflevector <2 x i32> %5, <2 x i32> %vec.ind306, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec308 = add <4 x i32> %i.ab, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec308, ptr %i.z, align 4, !tbaa !13
  %index.next309 = add nuw i64 %index305, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next310 = add <2 x i32> %vec.ind306, splat (i32 4)
  %i.ac = icmp eq i64 %index.next309, %n.vec303
  br i1 %i.ac, label %middle.block311, label %vector.body304, !llvm.loop !242

middle.block311:                                  ; preds = %vector.body304
  %cmp.n312 = icmp eq i64 %n.vec303, %wide.trip.count230
  br i1 %cmp.n312, label %.preheader170.lr.ph, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %.preheader172, %middle.block311
  %indvars.iv232.ph = phi i64 [ 0, %.preheader172 ], [ %n.vec303, %middle.block311 ]
  br label %scalar.ph300

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !26
  %i.af = fptrunc double %i.ae to float
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store float %i.af, ptr %i.ag, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count230
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !243

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.preheader172, label %.preheader173, !llvm.loop !244

scalar.ph300:                                     ; preds = %scalar.ph300.preheader, %scalar.ph300
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %scalar.ph300 ], [ %indvars.iv232.ph, %scalar.ph300.preheader ] ; 3 uses
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv232 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next233 to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = trunc i64 %indvars.iv232 to i32
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !54
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.preheader170.lr.ph, label %scalar.ph300, !llvm.loop !245

.preheader169.thread:                             ; preds = %bb.c
  %.pre294 = load ptr, ptr @fastsupg.ac, align 8, !tbaa !51
  %i.am = sext i32 %0 to i64
  %i.an = getelementptr [8 x i8], ptr %.pre294, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i32 -1, ptr %i.ao, align 4, !tbaa !53
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc297 = tail call i32 @fputc(i32 10, ptr %i.ap) ; 0 uses
  br label %._crit_edge225

.preheader170.lr.ph:                              ; preds = %scalar.ph300, %middle.block311
  %i.aq = add nsw i32 %0, -1                      ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ar
  store i32 -1, ptr %i.as, align 4, !tbaa !53
  %i.at = load ptr, ptr @fastsupg.tmplen, align 8, !tbaa !22
  %i.au = zext nneg i32 %0 to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %i.av, i1 false), !tbaa !24
  %i.aw = load ptr, ptr @fastsupg.pair, align 8
  %wide.trip.count248 = zext nneg i32 %0 to i64
  %xtraiter = and i64 %wide.trip.count230, 3      ; 3 uses
  %i.ax = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count230, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod314 = icmp ne i64 %xtraiter, 0
  br label %.preheader170

.preheader170:                                    ; preds = %.preheader170.lr.ph, %._crit_edge183
  %indvars.iv245 = phi i64 [ 0, %.preheader170.lr.ph ], [ %indvars.iv.next246, %._crit_edge183 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv245 ; 5 uses
  br i1 %i.ax, label %.epil.preheader, label %.preheader170.new

.lr.ph186:                                        ; preds = %._crit_edge183
  %i.az = load ptr, ptr @fastsupg.pair, align 8, !tbaa !32 ; 5 uses
  %xtraiter316 = and i64 %wide.trip.count230, 3   ; 3 uses
  %i.ba = icmp ult i32 %0, 4
  br i1 %i.ba, label %.epil.preheader315, label %.lr.ph186.new

.lr.ph186.new:                                    ; preds = %.lr.ph186
  %unroll_iter320 = and i64 %wide.trip.count230, 2147483644
  br label %bb.e

.preheader170.new:                                ; preds = %.preheader170, %.preheader170.new
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.3, %.preheader170.new ], [ 0, %.preheader170 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader170.new ], [ 0, %.preheader170 ]
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv240
  store i8 0, ptr %i.bc, align 1, !tbaa !14
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv240
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 0, ptr %i.bf, align 1, !tbaa !14
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv240
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 0, ptr %i.bi, align 1, !tbaa !14
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv240
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 0, ptr %i.bl, align 1, !tbaa !14
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge183.unr-lcssa, label %.preheader170.new, !llvm.loop !246

._crit_edge183.unr-lcssa:                         ; preds = %.preheader170.new
  br i1 %lcmp.mod.not, label %._crit_edge183, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge183.unr-lcssa, %.preheader170
  %indvars.iv240.epil.init = phi i64 [ 0, %.preheader170 ], [ %indvars.iv.next241.3, %._crit_edge183.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod314)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv240.epil = phi i64 [ %indvars.iv240.epil.init, %.epil.preheader ], [ %indvars.iv.next241.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bm = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv240.epil
  store i8 0, ptr %i.bn, align 1, !tbaa !14
  %indvars.iv.next241.epil = add nuw nsw i64 %indvars.iv240.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge183, label %bb.d, !llvm.loop !247

._crit_edge183:                                   ; preds = %bb.d, %._crit_edge183.unr-lcssa
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.lr.ph186, label %.preheader170, !llvm.loop !248

bb.e:                                             ; preds = %bb.e, %.lr.ph186.new
  %indvars.iv250 = phi i64 [ 0, %.lr.ph186.new ], [ %indvars.iv.next251.3, %bb.e ] ; 6 uses
  %niter321 = phi i64 [ 0, %.lr.ph186.new ], [ %niter321.next.3, %bb.e ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv250
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv250
  store i8 1, ptr %i.bq, align 1, !tbaa !14
  %indvars.iv.next251 = or disjoint i64 %indvars.iv250, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next251
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv.next251
  store i8 1, ptr %i.bt, align 1, !tbaa !14
  %indvars.iv.next251.1 = or disjoint i64 %indvars.iv250, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next251.1
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.next251.1
  store i8 1, ptr %i.bw, align 1, !tbaa !14
  %indvars.iv.next251.2 = or disjoint i64 %indvars.iv250, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next251.2
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv.next251.2
  store i8 1, ptr %i.bz, align 1, !tbaa !14
  %indvars.iv.next251.3 = add nuw nsw i64 %indvars.iv250, 4 ; 2 uses
  %niter321.next.3 = add i64 %niter321, 4         ; 2 uses
  %niter321.ncmp.3 = icmp eq i64 %niter321.next.3, %unroll_iter320
  br i1 %niter321.ncmp.3, label %._crit_edge187.unr-lcssa, label %bb.e, !llvm.loop !249

._crit_edge187.unr-lcssa:                         ; preds = %bb.e
  %lcmp.mod318.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod318.not, label %._crit_edge187, label %.epil.preheader315

.epil.preheader315:                               ; preds = %._crit_edge187.unr-lcssa, %.lr.ph186
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next251.3, %._crit_edge187.unr-lcssa ]
  %lcmp.mod319 = icmp ne i64 %xtraiter316, 0
  tail call void @llvm.assume(i1 %lcmp.mod319)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader315
  %indvars.iv250.epil = phi i64 [ %indvars.iv250.epil.init, %.epil.preheader315 ], [ %indvars.iv.next251.epil, %bb.f ] ; 3 uses
  %epil.iter317 = phi i64 [ 0, %.epil.preheader315 ], [ %epil.iter317.next, %bb.f ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv250.epil
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv250.epil
  store i8 1, ptr %i.cc, align 1, !tbaa !14
  %indvars.iv.next251.epil = add nuw nsw i64 %indvars.iv250.epil, 1
  %epil.iter317.next = add i64 %epil.iter317, 1   ; 2 uses
  %epil.iter317.cmp.not = icmp eq i64 %epil.iter317.next, %xtraiter316
  br i1 %epil.iter317.cmp.not, label %._crit_edge187, label %bb.f, !llvm.loop !250

._crit_edge187:                                   ; preds = %bb.f, %._crit_edge187.unr-lcssa
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = tail call i32 @fputc(i32 10, ptr %i.cd) ; 0 uses
  %.not298 = icmp eq i32 %0, 1
  br i1 %.not298, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %._crit_edge187
  %wide.trip.count278 = zext nneg i32 %i.aq to i64
  %xtraiter323 = and i64 %wide.trip.count230, 3   ; 3 uses
  %i.ce = icmp ult i32 %0, 4
  %unroll_iter328 = and i64 %wide.trip.count230, 2147483644
  %lcmp.mod325.not = icmp eq i64 %xtraiter323, 0
  %lcmp.mod327 = icmp ne i64 %xtraiter323, 0
  %xtraiter331 = and i64 %wide.trip.count230, 3   ; 3 uses
  %i.cf = icmp ult i32 %0, 4
  %unroll_iter336 = and i64 %wide.trip.count230, 2147483644
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
  %lcmp.mod335 = icmp ne i64 %xtraiter331, 0
  %xtraiter339 = and i64 %wide.trip.count230, 1
  %unroll_iter343 = and i64 %wide.trip.count230, 2147483646
end_hunk_5
