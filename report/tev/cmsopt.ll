Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsopt?download=true
inline.NumInlined: 36
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@OptimizeMatrixShaper:bb.a
  br label %.critedge

bb.x:                                             ; preds = %bb.s, %bb.r, %bb.p
  call void @cmsPipelineFree(ptr noundef nonnull %i.ay) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.l, %bb.e, %bb.h, %bb.g, %bb.f, %bb.i, %bb.o, %bb.k, %bb.c, %bb.a, %bb.b, %bb.x, %bb.w
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.w ], [ 0, %bb.x ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @OptimizeByComputingLinearization(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 11 uses
  %i.b = alloca [16 x ptr], align 16              ; 7 uses
  %i.c = alloca [16 x float], align 16            ; 5 uses
  %i.d = alloca [16 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = load i32, ptr %2, align 4, !tbaa !18
  %i.f = tail call i32 @_cmsFormatterIsFloat(i32 noundef %i.e) #9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.critedge193

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !18
  %i.h = tail call i32 @_cmsFormatterIsFloat(i32 noundef %i.g) #9
  %.not162 = icmp eq i32 %i.h, 0
  br i1 %.not162, label %bb.c, label %.critedge193

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.j = and i32 %i.i, 2035712
  %or.cond196 = icmp eq i32 %i.j, 262144
  br i1 %or.cond196, label %bb.d, label %.critedge193

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %3, align 4, !tbaa !18
  %i.l = and i32 %i.k, 2035712
  %or.cond197 = icmp eq i32 %i.l, 262144
  br i1 %or.cond197, label %bb.e, label %.critedge193

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @_cmsFormatterIs8bit(i32 noundef %i.i) #9
  %.not167 = icmp eq i32 %i.m, 0
  br i1 %.not167, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %4, align 4, !tbaa !18
  %i.o = and i32 %i.n, 16
  %.not168 = icmp eq i32 %i.o, 0
  br i1 %.not168, label %.critedge193, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !20     ; 9 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !18
  %i.r = lshr i32 %i.q, 16
  %i.s = and i32 %i.r, 31
  %i.t = tail call i32 @_cmsICCcolorSpace(i32 noundef %i.s) #9 ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !18
  %i.v = lshr i32 %i.u, 16
  %i.w = and i32 %i.v, 31
  %i.x = tail call i32 @_cmsICCcolorSpace(i32 noundef %i.w) #9 ; 2 uses
  %i.y = icmp eq i32 %i.t, 0
  %i.z = icmp eq i32 %i.x, 0
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond, label %.critedge193, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %4, align 4, !tbaa !18
  %i.ab = tail call i32 @_cmsReasonableGridpointsByColorspace(i32 noundef %i.t, i32 noundef %i.aa) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.ac = tail call ptr @cmsPipelineGetPtrToLastStage(ptr noundef %i.p) #9 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge191, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i32 @cmsStageType(ptr noundef nonnull %i.ac) #9
  %i.af = icmp eq i32 %i.ae, 1668707188
  br i1 %i.af, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @cmsStageData(ptr noundef nonnull %i.ac) #9 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !66 ; 2 uses
  %.not170246.not = icmp eq i32 %i.ah, 0
  br i1 %.not170246.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %wide.trip.count = zext i32 %i.ah to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %IsDegenerated.exit.thread227
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %IsDegenerated.exit.thread227 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !147 ; 4 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %IsDegenerated.exit.thread227, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65 ; 2 uses
  %wide.trip.count.i = zext i32 %i.an to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.an, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi356.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi357 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi358 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %wide.load = load <4 x i16>, ptr %i.aq, align 2, !tbaa !45 ; 2 uses
  %wide.load359 = load <4 x i16>, ptr %i.ar, align 2, !tbaa !45 ; 2 uses
  %i.as = icmp eq <4 x i16> %wide.load, zeroinitializer
  %i.at = icmp eq <4 x i16> %wide.load359, zeroinitializer
  %i.au = zext <4 x i1> %i.as to <4 x i32>
  %i.av = zext <4 x i1> %i.at to <4 x i32>
  %i.aw = add <4 x i32> %vec.phi357, %i.au        ; 2 uses
  %i.ax = add <4 x i32> %vec.phi358, %i.av        ; 2 uses
  %i.ay = icmp eq <4 x i16> %wide.load, splat (i16 -1)
  %i.az = icmp eq <4 x i16> %wide.load359, splat (i16 -1)
  %i.ba = zext <4 x i1> %i.ay to <4 x i32>
  %i.bb = zext <4 x i1> %i.az to <4 x i32>
  %i.bc = add <4 x i32> %vec.phi, %i.ba           ; 2 uses
  %i.bd = add <4 x i32> %vec.phi356.a, %i.bb      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bd, %i.bc
  %i.bf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx360 = add <4 x i32> %i.ax, %i.aw
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx360) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.025.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bf, %middle.block ]
  %.01724.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.025.i = phi i32 [ %.1.i, %scalar.ph ], [ %.025.i.ph, %scalar.ph.preheader ]
  %.01724.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.01724.i.ph, %scalar.ph.preheader ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !45 ; 2 uses
  %i.bj = icmp eq i16 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %spec.select.i = add i32 %.01724.i, %i.bk       ; 2 uses
  %i.bl = icmp eq i16 %i.bi, -1
  %i.bm = zext i1 %i.bl to i32
  %.1.i = add i32 %.025.i, %i.bm                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !129

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.bg, %middle.block ], [ %spec.select.i, %scalar.ph ] ; 2 uses
  %.1.i.lcssa = phi i32 [ %i.bf, %middle.block ], [ %.1.i, %scalar.ph ] ; 2 uses
  %i.bn = icmp eq i32 %spec.select.i.lcssa, 1
  %i.bo = icmp eq i32 %.1.i.lcssa, 1
  %or.cond.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.i, label %IsDegenerated.exit.thread227, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.bp = udiv i32 %i.an, 20                      ; 2 uses
  %i.bq = icmp ugt i32 %spec.select.i.lcssa, %i.bp
  %.not237 = icmp ugt i32 %.1.i.lcssa, %i.bp
  %or.cond238 = select i1 %i.bq, i1 true, i1 %.not237
  br i1 %or.cond238, label %.critedge191, label %IsDegenerated.exit.thread227

IsDegenerated.exit.thread227:                     ; preds = %bb.l, %._crit_edge.i, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !130

.loopexit:                                        ; preds = %IsDegenerated.exit.thread227, %bb.j, %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 12 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !32
  %.not269 = icmp eq i32 %i.bs, 0
  br i1 %.not269, label %.preheader242.preheader, label %.lr.ph249

.preheader242.preheader:                          ; preds = %bb.m, %.loopexit
  %.ph = phi i32 [ 0, %.loopexit ], [ %i.bu, %bb.m ]
  br label %.preheader242

.lr.ph249:                                        ; preds = %.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !32 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next281, %i.bv
  br i1 %i.bw, label %bb.n, label %.preheader242.preheader, !llvm.loop !131

bb.n:                                             ; preds = %.lr.ph249, %bb.m
  %indvars.iv280 = phi i64 [ 0, %.lr.ph249 ], [ %indvars.iv.next281, %bb.m ] ; 2 uses
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.by = tail call ptr @cmsBuildTabulatedToneCurve16(ptr noundef %i.bx, i32 noundef 4096, ptr noundef null) #9 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv280
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !50
  %i.ca = icmp eq ptr %i.by, null
  br i1 %i.ca, label %.critedge191, label %bb.m

.preheader242:                                    ; preds = %.preheader242.backedge, %.preheader242.preheader
  %i.cb = phi i32 [ %.ph, %.preheader242.preheader ], [ %.be, %.preheader242.backedge ] ; 3 uses
  %indvars.iv293 = phi i64 [ 0, %.preheader242.preheader ], [ %indvars.iv293.be, %.preheader242.backedge ] ; 4 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv293 to i32
  %i.cd = uitofp nneg i32 %i.cc to float
  %i.ce = fdiv float %i.cd, 4.095000e+03          ; 2 uses
  %.not270 = icmp eq i32 %i.cb, 0
  br i1 %.not270, label %._crit_edge, label %.lr.ph251.preheader

.lr.ph251.preheader:                              ; preds = %.preheader242
  %wide.trip.count286 = zext i32 %i.cb to i64     ; 3 uses
  %min.iters.check363 = icmp ult i32 %i.cb, 8
  br i1 %min.iters.check363, label %.lr.ph251.preheader437, label %vector.ph364

vector.ph364:                                     ; preds = %.lr.ph251.preheader
  %n.vec365 = and i64 %wide.trip.count286, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ce, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph364
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next368, %vector.body366 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index367 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x float> %broadcast.splat, ptr %i.cf, align 16, !tbaa !52
  store <4 x float> %broadcast.splat, ptr %i.cg, align 16, !tbaa !52
  %index.next368 = add nuw i64 %index367, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next368, %n.vec365
  br i1 %i.ch, label %middle.block369, label %vector.body366, !llvm.loop !132

middle.block369:                                  ; preds = %vector.body366
  %cmp.n370 = icmp eq i64 %n.vec365, %wide.trip.count286
  br i1 %cmp.n370, label %._crit_edge, label %.lr.ph251.preheader437

.lr.ph251.preheader437:                           ; preds = %.lr.ph251.preheader, %middle.block369
  %indvars.iv283.ph = phi i64 [ 0, %.lr.ph251.preheader ], [ %n.vec365, %middle.block369 ]
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.lr.ph251.preheader437, %.lr.ph251
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph251 ], [ %indvars.iv283.ph, %.lr.ph251.preheader437 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv283
  store float %i.ce, ptr %i.ci, align 4, !tbaa !52
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge, label %.lr.ph251, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph251, %middle.block369, %.preheader242
  call void @cmsPipelineEvalFloat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.p) #9
  %i.cj = load i32, ptr %i.br, align 8, !tbaa !32 ; 3 uses
  %.not271 = icmp eq i32 %i.cj, 0
  br i1 %.not271, label %._crit_edge255.thread, label %.lr.ph254

.lr.ph254:                                        ; preds = %._crit_edge
  %wide.trip.count291 = zext i32 %i.cj to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph254, %bb.s
  %indvars.iv288 = phi i64 [ 0, %.lr.ph254 ], [ %indvars.iv.next289, %bb.s ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv288
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !65 ; 2 uses
  %.not186 = icmp eq ptr %i.cn, null
  br i1 %.not186, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv288
  %i.cp = load float, ptr %i.co, align 4, !tbaa !52
  %i.cq = fpext float %i.cp to double
  %i.cr = fmul double %i.cq, 6.553500e+04
  %i.cs = fadd double %i.cr, 5.000000e-01         ; 3 uses
  %i.ct = fcmp ugt double %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.q, label %_cmsQuickSaturateWord.exit

bb.q:                                             ; preds = %bb.p
  %i.cu = fcmp ult double %i.cs, 6.553500e+04
  br i1 %i.cu, label %bb.r, label %_cmsQuickSaturateWord.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = fadd double %i.cs, -3.276700e+04
  %i.cw = fadd double %i.cv, f0x4238000000000000
  %i.cx = bitcast double %i.cw to i64
  %i.cy = lshr i64 %i.cx, 16
  %i.cz = trunc i64 %i.cy to i16
  %i.da = add i16 %i.cz, 32767
  br label %_cmsQuickSaturateWord.exit

_cmsQuickSaturateWord.exit:                       ; preds = %bb.p, %bb.q, %bb.r
  %.0.i = phi i16 [ %i.da, %bb.r ], [ 0, %bb.p ], [ -1, %bb.q ]
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv293
  store i16 %.0.i, ptr %i.db, align 2, !tbaa !45
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %_cmsQuickSaturateWord.exit
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge255, label %bb.o, !llvm.loop !134

._crit_edge255:                                   ; preds = %bb.s
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next294, 4096
  br i1 %exitcond296.not, label %.lr.ph258, label %.preheader242.backedge

.preheader242.backedge:                           ; preds = %._crit_edge255, %._crit_edge255.thread
  %.be = phi i32 [ %i.cj, %._crit_edge255 ], [ 0, %._crit_edge255.thread ]
  %indvars.iv293.be = phi i64 [ %indvars.iv.next294, %._crit_edge255 ], [ %indvars.iv.next294333, %._crit_edge255.thread ]
  br label %.preheader242, !llvm.loop !135

._crit_edge255.thread:                            ; preds = %._crit_edge
  %indvars.iv.next294333 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond296.not334 = icmp eq i64 %indvars.iv.next294333, 4096
  br i1 %exitcond296.not334, label %.preheader240.preheader, label %.preheader242.backedge

.lr.ph258:                                        ; preds = %._crit_edge255, %SlopeLimiting.exit
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %SlopeLimiting.exit ], [ 0, %._crit_edge255 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv297
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !50 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !147 ; 3 uses
  %i.dg = uitofp i32 %i.df to double
  %i.dh = call double @llvm.fmuladd.f64(double %i.dg, double 2.000000e-02, double 5.000000e-01)
  %i.di = call double @llvm.floor.f64(double %i.dh)
  %i.dj = fptosi double %i.di to i32              ; 6 uses
  %i.dk = xor i32 %i.dj, -1
  %i.dl = add i32 %i.df, %i.dk                    ; 4 uses
  %i.dm = call i32 @cmsIsToneCurveDescending(ptr noundef %i.dd) #9
  %.not.i198 = icmp eq i32 %i.dm, 0               ; 2 uses
  %..i199 = select i1 %.not.i198, double 0.000000e+00, double 6.553500e+04
  %.38.i = select i1 %.not.i198, double 6.553500e+04, double 0.000000e+00
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !65 ; 6 uses
  %i.dp = zext nneg i32 %i.dj to i64              ; 4 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !45
  %i.ds = uitofp i16 %i.dr to double              ; 2 uses
  %i.dt = fsub double %i.ds, %..i199
  %i.du = uitofp nneg i32 %i.dj to double         ; 3 uses
  %i.dv = fdiv double %i.dt, %i.du                ; 3 uses
  %i.dw = fneg double %i.dv
  %i.dx = call double @llvm.fmuladd.f64(double %i.dw, double %i.du, double %i.ds) ; 2 uses
  %.not46.i = icmp eq i32 %i.dj, 0
  br i1 %.not46.i, label %._crit_edge.i204, label %.lr.ph.i200.preheader

.lr.ph.i200.preheader:                            ; preds = %.lr.ph258
  %min.iters.check390 = icmp samesign ult i32 %i.dj, 8
  br i1 %min.iters.check390, label %.lr.ph.i200.preheader436, label %vector.ph391

vector.ph391:                                     ; preds = %.lr.ph.i200.preheader
  %n.vec392 = and i64 %i.dp, 2147483640           ; 3 uses
  %broadcast.splatinsert393.a = insertelement <8 x double> poison, double %i.dv, i64 0
  %broadcast.splat394.a = shufflevector <8 x double> %broadcast.splatinsert393.a, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert395 = insertelement <8 x double> poison, double %i.dx, i64 0
  %broadcast.splat396 = shufflevector <8 x double> %broadcast.splatinsert395, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph391
  %index398 = phi i64 [ 0, %vector.ph391 ], [ %index.next402, %vector.body397 ] ; 2 uses
  %vec.ind399 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph391 ], [ %vec.ind.next403, %vector.body397 ] ; 2 uses
  %i.dy = uitofp nneg <8 x i32> %vec.ind399 to <8 x double>
  %i.dz = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dy, <8 x double> %broadcast.splat394.a, <8 x double> %broadcast.splat396)
  %i.ea = fadd <8 x double> %i.dz, splat (double 5.000000e-01) ; 3 uses
  %i.eb = fcmp ugt <8 x double> %i.ea, zeroinitializer
  %i.ec = fcmp oge <8 x double> %i.ea, splat (double 6.553500e+04)
  %i.ed = fadd <8 x double> %i.ea, splat (double -3.276700e+04)
  %i.ee = fadd <8 x double> %i.ed, splat (double f0x4238000000000000)
  %i.ef = bitcast <8 x double> %i.ee to <8 x i64>
  %i.eg = lshr <8 x i64> %i.ef, splat (i64 16)
  %i.eh = trunc <8 x i64> %i.eg to <8 x i16>
  %i.ei = add <8 x i16> %i.eh, splat (i16 32767)
  %predphi400 = select <8 x i1> %i.ec, <8 x i16> splat (i16 -1), <8 x i16> %i.ei
  %predphi401 = select <8 x i1> %i.eb, <8 x i16> %predphi400, <8 x i16> zeroinitializer
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %index398
  store <8 x i16> %predphi401, ptr %i.ej, align 2, !tbaa !45
  %index.next402 = add nuw i64 %index398, 8       ; 2 uses
  %vec.ind.next403 = add <8 x i32> %vec.ind399, splat (i32 8)
  %i.ek = icmp eq i64 %index.next402, %n.vec392
  br i1 %i.ek, label %middle.block404, label %vector.body397, !llvm.loop !136

middle.block404:                                  ; preds = %vector.body397
  %cmp.n405 = icmp eq i64 %n.vec392, %i.dp
  br i1 %cmp.n405, label %._crit_edge.i204, label %.lr.ph.i200.preheader436

.lr.ph.i200.preheader436:                         ; preds = %.lr.ph.i200.preheader, %middle.block404
  %indvars.iv.i201.ph = phi i64 [ 0, %.lr.ph.i200.preheader ], [ %n.vec392, %middle.block404 ]
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %.lr.ph.i200.preheader436, %_cmsQuickSaturateWord.exit.i
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i202, %_cmsQuickSaturateWord.exit.i ], [ %indvars.iv.i201.ph, %.lr.ph.i200.preheader436 ] ; 3 uses
  %i.el = trunc nuw nsw i64 %indvars.iv.i201 to i32
  %i.em = uitofp nneg i32 %i.el to double
  %i.en = call double @llvm.fmuladd.f64(double %i.em, double %i.dv, double %i.dx)
  %i.eo = fadd double %i.en, 5.000000e-01         ; 3 uses
  %i.ep = fcmp ugt double %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.t, label %_cmsQuickSaturateWord.exit.i

bb.t:                                             ; preds = %.lr.ph.i200
  %i.eq = fcmp ult double %i.eo, 6.553500e+04
  br i1 %i.eq, label %bb.u, label %_cmsQuickSaturateWord.exit.i

bb.u:                                             ; preds = %bb.t
  %i.er = fadd double %i.eo, -3.276700e+04
  %i.es = fadd double %i.er, f0x4238000000000000
  %i.et = bitcast double %i.es to i64
  %i.eu = lshr i64 %i.et, 16
  %i.ev = trunc i64 %i.eu to i16
  %i.ew = add i16 %i.ev, 32767
  br label %_cmsQuickSaturateWord.exit.i

_cmsQuickSaturateWord.exit.i:                     ; preds = %bb.u, %bb.t, %.lr.ph.i200
  %.0.i.i = phi i16 [ %i.ew, %bb.u ], [ 0, %.lr.ph.i200 ], [ -1, %bb.t ]
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv.i201
  store i16 %.0.i.i, ptr %i.ex, align 2, !tbaa !45
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %indvars.iv.next.i202, %i.dp
  br i1 %exitcond.not.i203, label %._crit_edge.i204, label %.lr.ph.i200, !llvm.loop !137

._crit_edge.i204:                                 ; preds = %_cmsQuickSaturateWord.exit.i, %middle.block404, %.lr.ph258
  %i.ey = sext i32 %i.dl to i64                   ; 4 uses
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !45
  %i.fb = uitofp i16 %i.fa to double              ; 2 uses
  %i.fc = fsub double %.38.i, %i.fb
  %i.fd = fdiv double %i.fc, %i.du                ; 3 uses
  %i.fe = sitofp i32 %i.dl to double
  %i.ff = fneg double %i.fd
  %i.fg = call double @llvm.fmuladd.f64(double %i.ff, double %i.fe, double %i.fb) ; 2 uses
  %i.fh = load i32, ptr %i.de, align 8, !tbaa !147 ; 3 uses
  %i.fi = icmp slt i32 %i.dl, %i.fh
  br i1 %i.fi, label %.lr.ph44.i.preheader, label %SlopeLimiting.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i204
  %i.fj = add i32 %i.fh, %i.dj
  %i.fk = sub i32 %i.fj, %i.df                    ; 2 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check373 = icmp ult i32 %i.fk, 7
  br i1 %min.iters.check373, label %.lr.ph44.i.preheader435, label %vector.ph374

vector.ph374:                                     ; preds = %.lr.ph44.i.preheader
  %n.vec375 = and i64 %i.fm, 8589934584           ; 3 uses
  %i.fn = add nsw i64 %n.vec375, %i.ey
  %broadcast.splatinsert376.a = insertelement <8 x double> poison, double %i.fd, i64 0
  %broadcast.splat377.a = shufflevector <8 x double> %broadcast.splatinsert376.a, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert378.a = insertelement <8 x double> poison, double %i.fg, i64 0
  %broadcast.splat379.a = shufflevector <8 x double> %broadcast.splatinsert378.a, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %broadcast.splat381 = shufflevector <8 x i32> %broadcast.splatinsert380, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat381, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [2 x i8], ptr %i.do, i64 %i.ey
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph374
  %index383 = phi i64 [ 0, %vector.ph374 ], [ %index.next385, %vector.body382 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph374 ], [ %vec.ind.next, %vector.body382 ] ; 2 uses
  %i.fo = sitofp <8 x i32> %vec.ind to <8 x double>
  %i.fp = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.fo, <8 x double> %broadcast.splat377.a, <8 x double> %broadcast.splat379.a)
  %i.fq = fadd <8 x double> %i.fp, splat (double 5.000000e-01) ; 3 uses
  %i.fr = fcmp ugt <8 x double> %i.fq, zeroinitializer
  %i.fs = fcmp oge <8 x double> %i.fq, splat (double 6.553500e+04)
  %i.ft = fadd <8 x double> %i.fq, splat (double -3.276700e+04)
  %i.fu = fadd <8 x double> %i.ft, splat (double f0x4238000000000000)
  %i.fv = bitcast <8 x double> %i.fu to <8 x i64>
  %i.fw = lshr <8 x i64> %i.fv, splat (i64 16)
  %i.fx = trunc <8 x i64> %i.fw to <8 x i16>
  %i.fy = add <8 x i16> %i.fx, splat (i16 32767)
  %predphi = select <8 x i1> %i.fs, <8 x i16> splat (i16 -1), <8 x i16> %i.fy
  %predphi384 = select <8 x i1> %i.fr, <8 x i16> %predphi, <8 x i16> zeroinitializer
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index383
  store <8 x i16> %predphi384, ptr %gep, align 2, !tbaa !45
  %index.next385 = add nuw i64 %index383, 8       ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.fz = icmp eq i64 %index.next385, %n.vec375
  br i1 %i.fz, label %middle.block386, label %vector.body382, !llvm.loop !138

middle.block386:                                  ; preds = %vector.body382
  %cmp.n387 = icmp eq i64 %i.fm, %n.vec375
  br i1 %cmp.n387, label %SlopeLimiting.exit, label %.lr.ph44.i.preheader435

.lr.ph44.i.preheader435:                          ; preds = %.lr.ph44.i.preheader, %middle.block386
  %indvars.iv48.i.ph = phi i64 [ %i.ey, %.lr.ph44.i.preheader ], [ %i.fn, %middle.block386 ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader435, %_cmsQuickSaturateWord.exit40.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %_cmsQuickSaturateWord.exit40.i ], [ %indvars.iv48.i.ph, %.lr.ph44.i.preheader435 ] ; 3 uses
  %i.ga = trunc nsw i64 %indvars.iv48.i to i32
  %i.gb = sitofp i32 %i.ga to double
  %i.gc = call double @llvm.fmuladd.f64(double %i.gb, double %i.fd, double %i.fg)
  %i.gd = fadd double %i.gc, 5.000000e-01         ; 3 uses
  %i.ge = fcmp ugt double %i.gd, 0.000000e+00
  br i1 %i.ge, label %bb.v, label %_cmsQuickSaturateWord.exit40.i

bb.v:                                             ; preds = %.lr.ph44.i
  %i.gf = fcmp ult double %i.gd, 6.553500e+04
  br i1 %i.gf, label %bb.w, label %_cmsQuickSaturateWord.exit40.i

bb.w:                                             ; preds = %bb.v
  %i.gg = fadd double %i.gd, -3.276700e+04
  %i.gh = fadd double %i.gg, f0x4238000000000000
  %i.gi = bitcast double %i.gh to i64
  %i.gj = lshr i64 %i.gi, 16
  %i.gk = trunc i64 %i.gj to i16
  %i.gl = add i16 %i.gk, 32767
  br label %_cmsQuickSaturateWord.exit40.i

_cmsQuickSaturateWord.exit40.i:                   ; preds = %bb.w, %bb.v, %.lr.ph44.i
  %.0.i39.i = phi i16 [ %i.gl, %bb.w ], [ 0, %.lr.ph44.i ], [ -1, %bb.v ]
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.do, i64 %indvars.iv48.i
  store i16 %.0.i39.i, ptr %i.gm, align 2, !tbaa !45
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next49.i to i32
  %exitcond51.not.i = icmp eq i32 %i.fh, %lftr.wideiv.i
  br i1 %exitcond51.not.i, label %SlopeLimiting.exit, label %.lr.ph44.i, !llvm.loop !139

SlopeLimiting.exit:                               ; preds = %_cmsQuickSaturateWord.exit40.i, %middle.block386, %._crit_edge.i204
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.gn = load i32, ptr %i.br, align 8, !tbaa !32
  %i.go = zext i32 %i.gn to i64
  %i.gp = icmp samesign ult i64 %indvars.iv.next298, %i.go
  br i1 %i.gp, label %.lr.ph258, label %.preheader240.preheader, !llvm.loop !140

.preheader240.preheader:                          ; preds = %._crit_edge255.thread, %SlopeLimiting.exit
  br label %.backedge340

.backedge:                                        ; preds = %IsDegenerated.exit221, %.lr.ph355, %._crit_edge.i215
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1
  br i1 %.not184, label %.critedge191, label %.backedge340, !llvm.loop !141

.backedge340:                                     ; preds = %.preheader240.preheader, %.backedge
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %.backedge ], [ 0, %.preheader240.preheader ] ; 3 uses
  %i.gq = load i32, ptr %i.br, align 8, !tbaa !32 ; 2 uses
  %i.gr = zext i32 %i.gq to i64
  %i.gs = icmp samesign ult i64 %indvars.iv301, %i.gr
  br i1 %i.gs, label %.lr.ph355, label %..critedge.preheader_crit_edge

..critedge.preheader_crit_edge:                   ; preds = %.backedge340
  %i.gt = icmp eq i32 %i.gq, 0
  br i1 %i.gt, label %.critedge._crit_edge, label %.lr.ph262

.lr.ph355:                                        ; preds = %.backedge340
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv301 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !50
  %i.gw = call i32 @cmsIsToneCurveLinear(ptr noundef %i.gv) #9 ; 0 uses
  %i.gx = load ptr, ptr %i.gu, align 8, !tbaa !50
  %i.gy = call i32 @cmsIsToneCurveMonotonic(ptr noundef %i.gx) #9
  %.not184 = icmp eq i32 %i.gy, 0
  %i.gz = load ptr, ptr %i.gu, align 8, !tbaa !50 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !147 ; 4 uses
  %.not.i205 = icmp eq i32 %i.hb, 0
  br i1 %.not.i205, label %.backedge, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %.lr.ph355
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !65 ; 2 uses
  %wide.trip.count.i207 = zext i32 %i.hb to i64   ; 3 uses
  %min.iters.check408 = icmp ult i32 %i.hb, 8
  br i1 %min.iters.check408, label %scalar.ph407.preheader, label %vector.ph409

vector.ph409:                                     ; preds = %.lr.ph.i206
  %n.vec410 = and i64 %wide.trip.count.i207, 4294967288 ; 3 uses
  br label %vector.body411

vector.body411:                                   ; preds = %vector.body411, %vector.ph409
  %index412 = phi i64 [ 0, %vector.ph409 ], [ %index.next419, %vector.body411 ] ; 2 uses
  %vec.phi413.a = phi <4 x i32> [ zeroinitializer, %vector.ph409 ], [ %i.hq, %vector.body411 ]
  %vec.phi414.a = phi <4 x i32> [ zeroinitializer, %vector.ph409 ], [ %i.hr, %vector.body411 ]
  %vec.phi415 = phi <4 x i32> [ zeroinitializer, %vector.ph409 ], [ %i.hk, %vector.body411 ]
  %vec.phi416 = phi <4 x i32> [ zeroinitializer, %vector.ph409 ], [ %i.hl, %vector.body411 ]
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %index412 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %wide.load417 = load <4 x i16>, ptr %i.he, align 2, !tbaa !45 ; 2 uses
  %wide.load418 = load <4 x i16>, ptr %i.hf, align 2, !tbaa !45 ; 2 uses
  %i.hg = icmp eq <4 x i16> %wide.load417, zeroinitializer
  %i.hh = icmp eq <4 x i16> %wide.load418, zeroinitializer
  %i.hi = zext <4 x i1> %i.hg to <4 x i32>
  %i.hj = zext <4 x i1> %i.hh to <4 x i32>
  %i.hk = add <4 x i32> %vec.phi415, %i.hi        ; 2 uses
  %i.hl = add <4 x i32> %vec.phi416, %i.hj        ; 2 uses
  %i.hm = icmp eq <4 x i16> %wide.load417, splat (i16 -1)
  %i.hn = icmp eq <4 x i16> %wide.load418, splat (i16 -1)
  %i.ho = zext <4 x i1> %i.hm to <4 x i32>
  %i.hp = zext <4 x i1> %i.hn to <4 x i32>
  %i.hq = add <4 x i32> %vec.phi413.a, %i.ho      ; 2 uses
  %i.hr = add <4 x i32> %vec.phi414.a, %i.hp      ; 2 uses
  %index.next419 = add nuw i64 %index412, 8       ; 2 uses
  %i.hs = icmp eq i64 %index.next419, %n.vec410
  br i1 %i.hs, label %middle.block420, label %vector.body411, !llvm.loop !142

middle.block420:                                  ; preds = %vector.body411
  %bin.rdx421 = add <4 x i32> %i.hr, %i.hq
  %i.ht = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx421) ; 2 uses
  %bin.rdx422 = add <4 x i32> %i.hl, %i.hk
  %i.hu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx422) ; 2 uses
  %cmp.n423 = icmp eq i64 %n.vec410, %wide.trip.count.i207
  br i1 %cmp.n423, label %._crit_edge.i215, label %scalar.ph407.preheader

scalar.ph407.preheader:                           ; preds = %.lr.ph.i206, %middle.block420
  %indvars.iv.i208.ph = phi i64 [ 0, %.lr.ph.i206 ], [ %n.vec410, %middle.block420 ]
  %.025.i209.ph = phi i32 [ 0, %.lr.ph.i206 ], [ %i.ht, %middle.block420 ]
  %.01724.i210.ph = phi i32 [ 0, %.lr.ph.i206 ], [ %i.hu, %middle.block420 ]
  br label %scalar.ph407

scalar.ph407:                                     ; preds = %scalar.ph407.preheader, %scalar.ph407
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i213, %scalar.ph407 ], [ %indvars.iv.i208.ph, %scalar.ph407.preheader ] ; 2 uses
  %.025.i209 = phi i32 [ %.1.i212, %scalar.ph407 ], [ %.025.i209.ph, %scalar.ph407.preheader ]
  %.01724.i210 = phi i32 [ %spec.select.i211, %scalar.ph407 ], [ %.01724.i210.ph, %scalar.ph407.preheader ]
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %indvars.iv.i208
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !45 ; 2 uses
  %i.hx = icmp eq i16 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %spec.select.i211 = add i32 %.01724.i210, %i.hy ; 2 uses
  %i.hz = icmp eq i16 %i.hw, -1
  %i.ia = zext i1 %i.hz to i32
  %.1.i212 = add i32 %.025.i209, %i.ia            ; 2 uses
  %indvars.iv.next.i213 = add nuw nsw i64 %indvars.iv.i208, 1 ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %indvars.iv.next.i213, %wide.trip.count.i207
  br i1 %exitcond.not.i214, label %._crit_edge.i215, label %scalar.ph407, !llvm.loop !143

._crit_edge.i215:                                 ; preds = %scalar.ph407, %middle.block420
  %spec.select.i211.lcssa = phi i32 [ %i.hu, %middle.block420 ], [ %spec.select.i211, %scalar.ph407 ] ; 2 uses
  %.1.i212.lcssa = phi i32 [ %i.ht, %middle.block420 ], [ %.1.i212, %scalar.ph407 ] ; 2 uses
  %i.ib = icmp eq i32 %spec.select.i211.lcssa, 1
  %i.ic = icmp eq i32 %.1.i212.lcssa, 1
  %or.cond.i216 = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %or.cond.i216, label %.backedge, label %IsDegenerated.exit221

IsDegenerated.exit221:                            ; preds = %._crit_edge.i215
  %5 = udiv i32 %i.hb, 20                         ; 2 uses
  %6 = icmp ule i32 %spec.select.i211.lcssa, %5
  %7 = icmp ule i32 %.1.i212.lcssa, %5
  %i.id = select i1 %6, i1 %7, i1 false
  br i1 %i.id, label %.backedge, label %.critedge191

.critedge:                                        ; preds = %.lr.ph262
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.ie = load i32, ptr %i.br, align 8, !tbaa !32
  %i.if = zext i32 %i.ie to i64
  %i.ig = icmp samesign ult i64 %indvars.iv.next304, %i.if
  br i1 %i.ig, label %.lr.ph262, label %.critedge._crit_edge, !llvm.loop !144

.lr.ph262:                                        ; preds = %..critedge.preheader_crit_edge, %.critedge
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %.critedge ], [ 0, %..critedge.preheader_crit_edge ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv303
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !50
  %i.ij = call ptr @cmsReverseToneCurveEx(i32 noundef 4096, ptr noundef %i.ii) #9 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv303
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !50
  %i.il = icmp eq ptr %i.ij, null
  br i1 %i.il, label %.critedge191, label %.critedge

.critedge._crit_edge:                             ; preds = %.critedge, %..critedge.preheader_crit_edge
  %i.im = call ptr @cmsPipelineDup(ptr noundef nonnull %i.p) #9 ; 9 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %.critedge191, label %bb.x

bb.x:                                             ; preds = %.critedge._crit_edge
  %i.io = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 4 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !31
  %i.iq = load i32, ptr %i.br, align 8, !tbaa !32
  %i.ir = call ptr @cmsStageAllocToneCurves(ptr noundef %i.ip, i32 noundef %i.iq, ptr noundef nonnull %i.b) #9
  %i.is = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.im, i32 noundef 0, ptr noundef %i.ir) #9
  %.not172 = icmp eq i32 %i.is, 0
  br i1 %.not172, label %.critedge191, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.it = load ptr, ptr %i.io, align 8, !tbaa !31
  %i.iu = load i32, ptr %i.br, align 8, !tbaa !32
  %i.iv = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !33
  %i.ix = call ptr @cmsPipelineAlloc(ptr noundef %i.it, i32 noundef %i.iu, i32 noundef %i.iw) #9 ; 11 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %.critedge191, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iz = load ptr, ptr %i.io, align 8, !tbaa !31
  %i.ja = load i32, ptr %i.br, align 8, !tbaa !32
  %i.jb = call ptr @cmsStageAllocToneCurves(ptr noundef %i.iz, i32 noundef %i.ja, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.jc = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.ix, i32 noundef 0, ptr noundef %i.jb) #9
  %.not173 = icmp eq i32 %i.jc, 0
  br i1 %.not173, label %.critedge191, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jd = load ptr, ptr %i.io, align 8, !tbaa !31
  %i.je = load i32, ptr %i.br, align 8, !tbaa !32
  %i.jf = load i32, ptr %i.iv, align 4, !tbaa !33
  %i.jg = call ptr @cmsStageAllocCLut16bit(ptr noundef %i.jd, i32 noundef %i.ab, i32 noundef %i.je, i32 noundef %i.jf, ptr noundef null) #9 ; 3 uses
  %i.jh = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.ix, i32 noundef 1, ptr noundef %i.jg) #9
  %.not174 = icmp eq i32 %i.jh, 0
  br i1 %.not174, label %.critedge191, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ji = call i32 @cmsStageSampleCLut16bit(ptr noundef %i.jg, ptr noundef nonnull @XFormSampler16, ptr noundef nonnull %i.im, i32 noundef 0) #9
  %.not175 = icmp eq i32 %i.ji, 0
  br i1 %.not175, label %.critedge191, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %i.jj = load i32, ptr %i.br, align 8, !tbaa !32
  %.not274 = icmp eq i32 %i.jj, 0
  br i1 %.not274, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader, %bb.af
  %indvars.iv306 = phi i64 [ %indvars.iv.next307, %bb.af ], [ 0, %.preheader ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv306
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !50 ; 2 uses
  %.not181 = icmp eq ptr %i.jl, null
  br i1 %.not181, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph264
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.jl) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph264
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv306
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !50 ; 2 uses
  %.not182 = icmp eq ptr %i.jn, null
  br i1 %.not182, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.jn) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %i.jo = load i32, ptr %i.br, align 8, !tbaa !32
  %i.jp = zext i32 %i.jo to i64
  %i.jq = icmp samesign ult i64 %indvars.iv.next307, %i.jp
  br i1 %i.jq, label %.lr.ph264, label %._crit_edge265, !llvm.loop !145

._crit_edge265:                                   ; preds = %bb.af, %.preheader
  call void @cmsPipelineFree(ptr noundef nonnull %i.im) #9
  %i.jr = call ptr @_cmsStageGetPtrToCurveSet(ptr noundef %i.jb) #9 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !35
  %i.ju = load i32, ptr %2, align 4, !tbaa !18
  %i.jv = call i32 @_cmsFormatterIs8bit(i32 noundef %i.ju) #9
  %.not176 = icmp eq i32 %i.jv, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !31 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !42 ; 2 uses
  br i1 %.not176, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge265
  %i.ka = call fastcc ptr @PrelinOpt8alloc(ptr noundef %i.jx, ptr noundef %i.jz, ptr noundef %i.jr) ; 2 uses
  %.not178 = icmp eq ptr %i.ka, null
  br i1 %.not178, label %.critedge193, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_cmsPipelineSetOptimizationParameters(ptr noundef nonnull %i.ix, ptr noundef nonnull @PrelinEval8, ptr noundef nonnull %i.ka, ptr noundef nonnull @Prelin8free, ptr noundef nonnull @Prelin8dup) #9
  br label %bb.ak

bb.ai:                                            ; preds = %._crit_edge265
  %i.kb = call fastcc ptr @PrelinOpt16alloc(ptr noundef %i.jx, ptr noundef %i.jz, i32 noundef 3, ptr noundef %i.jr, i32 noundef 3, ptr noundef null) ; 2 uses
  %.not177 = icmp eq ptr %i.kb, null
  br i1 %.not177, label %.critedge193, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_cmsPipelineSetOptimizationParameters(ptr noundef nonnull %i.ix, ptr noundef nonnull @PrelinEval16, ptr noundef nonnull %i.kb, ptr noundef nonnull @PrelinOpt16free, ptr noundef nonnull @Prelin16dup) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.kc = icmp eq i32 %1, 3
  %.pre = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  br i1 %i.kc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.kd = or i32 %.pre, 4                         ; 2 uses
  store i32 %i.kd, ptr %4, align 4, !tbaa !18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ke = phi i32 [ %i.kd, %bb.al ], [ %.pre, %bb.ak ]
  %i.kf = and i32 %i.ke, 4
  %.not179 = icmp eq i32 %i.kf, 0
  br i1 %.not179, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kg = call fastcc i32 @FixWhiteMisalignment(ptr noundef %i.ix, i32 noundef %i.t, i32 noundef %i.x)
  %.not180 = icmp eq i32 %i.kg, 0
  br i1 %.not180, label %.critedge193, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @cmsPipelineFree(ptr noundef nonnull %i.p) #9
  store ptr %i.ix, ptr %0, align 8, !tbaa !20
  br label %.critedge193

.critedge191:                                     ; preds = %bb.l, %bb.n, %IsDegenerated.exit221, %.backedge, %.lr.ph262, %bb.h, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.critedge._crit_edge
  %.0136 = phi ptr [ null, %.lr.ph262 ], [ null, %bb.n ], [ null, %.critedge._crit_edge ], [ null, %bb.y ], [ %i.ix, %bb.ab ], [ %i.ix, %bb.aa ], [ %i.ix, %bb.z ], [ null, %bb.x ], [ null, %IsDegenerated.exit221 ], [ null, %bb.h ], [ null, %.backedge ], [ null, %bb.l ] ; 2 uses
  %.0135 = phi ptr [ null, %.lr.ph262 ], [ null, %bb.n ], [ null, %.critedge._crit_edge ], [ %i.im, %bb.y ], [ %i.im, %bb.ab ], [ %i.im, %bb.aa ], [ %i.im, %bb.z ], [ %i.im, %bb.x ], [ null, %IsDegenerated.exit221 ], [ null, %bb.h ], [ null, %.backedge ], [ null, %bb.l ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !32
  %.not275 = icmp eq i32 %i.ki, 0
  br i1 %.not275, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %.critedge191, %bb.as
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %bb.as ], [ 0, %.critedge191 ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv309
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !50 ; 2 uses
  %.not189 = icmp eq ptr %i.kk, null
  br i1 %.not189, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph267
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.kk) #9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph267
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv309
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !50 ; 2 uses
  %.not190 = icmp eq ptr %i.km, null
  br i1 %.not190, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.km) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.kn = load i32, ptr %i.kh, align 8, !tbaa !32
  %i.ko = zext i32 %i.kn to i64
  %i.kp = icmp samesign ult i64 %indvars.iv.next310, %i.ko
  br i1 %i.kp, label %.lr.ph267, label %._crit_edge268, !llvm.loop !146

._crit_edge268:                                   ; preds = %bb.as, %.critedge191
  %.not187 = icmp eq ptr %.0135, null
  br i1 %.not187, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge268
  call void @cmsPipelineFree(ptr noundef nonnull %.0135) #9
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge268
  %.not188 = icmp eq ptr %.0136, null
  br i1 %.not188, label %.critedge193, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @cmsPipelineFree(ptr noundef nonnull %.0136) #9
  br label %.critedge193

.critedge193:                                     ; preds = %bb.ai, %bb.ag, %bb.au, %bb.av, %bb.an, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b, %bb.ao
  %.2148 = phi i32 [ 0, %bb.av ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.ai ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.an ], [ 1, %bb.ao ], [ 0, %bb.ag ], [ 0, %bb.au ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.2148
}

declare ptr @cmsBuildTabulatedToneCurve16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsStageAllocToneCurves(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_cmsFormatterIs8bit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @CurvesAlloc(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 256, 65537) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 24) #9 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %2, ptr %i.d, align 4, !tbaa !70
  %i.e = tail call ptr @_cmsCalloc(ptr noundef %0, i32 noundef %1, i32 noundef 8) #9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !71
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.loopexit61.sink.split, label %.preheader60

.preheader60:                                     ; preds = %bb.b
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit61, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader60
  %i.h = icmp eq i32 %2, 256
  %wide.trip.count86 = zext i32 %1 to i64         ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit.us
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.loopexit.us ], [ 0, %.lr.ph ] ; 5 uses
  %i.i = tail call ptr @_cmsCalloc(ptr noundef %0, i32 noundef 256, i32 noundef 2) #9 ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !71   ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv83
  store ptr %i.i, ptr %i.k, align 8, !tbaa !64
  %i.l = icmp eq ptr %i.i, null
  br i1 %i.l, label %.preheader, label %.preheader57.us

.preheader57.us:                                  ; preds = %.lr.ph.split.us
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv83
  br label %bb.c

bb.c:                                             ; preds = %.preheader57.us, %bb.c
  %indvars.iv79 = phi i64 [ 0, %.preheader57.us ], [ %indvars.iv.next80, %bb.c ] ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = trunc i64 %indvars.iv79 to i16
  %i.p = mul i16 %i.o, 257
  %i.q = tail call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.n, i16 noundef zeroext %i.p) #9
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv83
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv79
  store i16 %i.q, ptr %i.u, align 2, !tbaa !45
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next80, 256
  br i1 %exitcond82.not, label %.loopexit.us, label %bb.c, !llvm.loop !148

.loopexit.us:                                     ; preds = %bb.c
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.loopexit61, label %.lr.ph.split.us, !llvm.loop !149

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.loopexit59
  %indvars.iv74 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next75, %.loopexit59 ] ; 5 uses
  %i.v = tail call ptr @_cmsCalloc(ptr noundef %0, i32 noundef %2, i32 noundef 2) #9 ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !71   ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv74
  store ptr %i.v, ptr %i.x, align 8, !tbaa !64
  %i.y = icmp eq ptr %i.v, null
  br i1 %i.y, label %.preheader, label %.preheader58

.preheader:                                       ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.z = phi ptr [ %i.j, %.lr.ph.split.us ], [ %i.w, %.lr.ph.split ]
  %.us-phi.in = phi i64 [ %indvars.iv83, %.lr.ph.split.us ], [ %indvars.iv74, %.lr.ph.split ] ; 2 uses
  %i.aa = and i64 %.us-phi.in, 4294967295
  %.not68 = icmp eq i64 %i.aa, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %.preheader
  %wide.trip.count91 = and i64 %.us-phi.in, 4294967295
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %indvars.iv88 = phi i64 [ 0, %.lr.ph67.preheader ], [ %indvars.iv.next89, %.lr.ph67 ] ; 2 uses
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64
  tail call void @_cmsFree(ptr noundef %0, ptr noundef %i.ad) #9
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge.loopexit, label %.lr.ph67, !llvm.loop !150

._crit_edge.loopexit:                             ; preds = %.lr.ph67
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ae = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.z, %.preheader ]
  tail call void @_cmsFree(ptr noundef %0, ptr noundef %i.ae) #9
  br label %.loopexit61.sink.split

.preheader58:                                     ; preds = %.lr.ph.split
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv74
  br label %bb.d

bb.d:                                             ; preds = %.preheader58, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader58 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = trunc i64 %indvars.iv to i16
  %i.ai = tail call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.ag, i16 noundef zeroext %i.ah) #9
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv74
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv
  store i16 %i.ai, ptr %i.am, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit59, label %bb.d, !llvm.loop !151

.loopexit59:                                      ; preds = %bb.d
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count86
  br i1 %exitcond78.not, label %.loopexit61, label %.lr.ph.split, !llvm.loop !149

.loopexit61.sink.split:                           ; preds = %bb.b, %._crit_edge
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.a) #9
  br label %.loopexit61

.loopexit61:                                      ; preds = %.loopexit59, %.loopexit.us, %.loopexit61.sink.split, %.preheader60, %bb.a
  %.053 = phi ptr [ null, %bb.a ], [ null, %.loopexit61.sink.split ], [ %i.a, %.loopexit.us ], [ %i.a, %.preheader60 ], [ %i.a, %.loopexit59 ]
  ret ptr %.053
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
