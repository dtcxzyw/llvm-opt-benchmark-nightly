Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsopt?download=true
inline.NumInlined: 36
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@OptimizeByResampling:bb.a
  %.not99 = icmp eq i32 %i.aj, 0
  br i1 %.not99, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call ptr @cmsStageDup(ptr noundef nonnull %i.af) #9 ; 2 uses
  %i.al = tail call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.ac, i32 noundef 0, ptr noundef %i.ak) #9
  %.not100 = icmp eq i32 %i.al, 0
  br i1 %.not100, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @cmsPipelineUnlinkStage(ptr noundef nonnull %i.v, i32 noundef 0, ptr noundef nonnull %i.a) #9
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.j, %bb.h, %bb.e
  %.282 = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ %i.ak, %bb.j ], [ null, %bb.h ] ; 2 uses
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.an = load i32, ptr %i.y, align 8, !tbaa !32
  %i.ao = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ap = call ptr @cmsStageAllocCLut16bit(ptr noundef %i.am, i32 noundef %spec.select, i32 noundef %i.an, i32 noundef %i.ao, ptr noundef null) #9 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.r, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ar = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.ac, i32 noundef 1, ptr noundef nonnull %i.ap) #9
  %.not101 = icmp eq i32 %i.ar, 0
  br i1 %.not101, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %4, align 4, !tbaa !18
  %i.at = and i32 %i.as, 1
  %.not102 = icmp eq i32 %i.at, 0
  br i1 %.not102, label %.thread116, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = call ptr @cmsPipelineGetPtrToLastStage(ptr noundef nonnull %i.v) #9 ; 4 uses
  %.not103 = icmp eq ptr %i.au, null
  br i1 %.not103, label %.thread116, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = call i32 @cmsStageType(ptr noundef nonnull %i.au) #9
  %i.aw = icmp eq i32 %i.av, 1668707188
  br i1 %i.aw, label %bb.o, label %.thread116

bb.o:                                             ; preds = %bb.n
  %i.ax = call fastcc i32 @AllCurvesAreLinear(ptr noundef %i.au)
  %.not104 = icmp eq i32 %i.ax, 0
  br i1 %.not104, label %bb.p, label %.thread116

bb.p:                                             ; preds = %bb.o
  %i.ay = call ptr @cmsStageDup(ptr noundef nonnull %i.au) #9 ; 2 uses
  %i.az = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.ac, i32 noundef 1, ptr noundef %i.ay) #9
  %.not105 = icmp eq i32 %i.az, 0
  br i1 %.not105, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @cmsPipelineUnlinkStage(ptr noundef nonnull %i.v, i32 noundef 1, ptr noundef nonnull %i.b) #9
  br label %.thread116

.thread116:                                       ; preds = %bb.m, %bb.n, %bb.q, %bb.o, %bb.l
  %.2 = phi ptr [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.n ], [ %i.ay, %bb.q ], [ null, %bb.o ] ; 2 uses
  %i.ba = call i32 @cmsStageSampleCLut16bit(ptr noundef nonnull %i.ap, ptr noundef nonnull @XFormSampler16, ptr noundef nonnull %i.v, i32 noundef 0) #9
  %.not106 = icmp eq i32 %i.ba, 0
  br i1 %.not106, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.p, %bb.i, %.thread116, %bb.k, %.thread
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not110 = icmp eq ptr %i.bb, null
  br i1 %.not110, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.v, i32 noundef 0, ptr noundef nonnull %i.bb) #9 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %.not111 = icmp eq ptr %i.bd, null
  br i1 %.not111, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.v, i32 noundef 1, ptr noundef nonnull %i.bd) #9 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @cmsPipelineFree(ptr noundef nonnull %i.ac) #9
  br label %bb.am

bb.w:                                             ; preds = %.thread116
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not107 = icmp eq ptr %i.bf, null
  br i1 %.not107, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @cmsStageFree(ptr noundef nonnull %i.bf) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %.not108 = icmp eq ptr %i.bg, null
  br i1 %.not108, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @cmsStageFree(ptr noundef nonnull %i.bg) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @cmsPipelineFree(ptr noundef nonnull %i.v) #9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35 ; 2 uses
  %i.bj = icmp eq ptr %.282, null
  br i1 %i.bj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %.282, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.077 = phi ptr [ %i.bn, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.bo = icmp eq ptr %.2, null
  br i1 %i.bo, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.076 = phi ptr [ %i.bs, %bb.ad ], [ null, %bb.ac ] ; 2 uses
  %i.bt = icmp eq ptr %.077, null
  %i.bu = icmp eq ptr %.076, null
  %or.cond3 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond3, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43
  call void @_cmsPipelineSetOptimizationParameters(ptr noundef nonnull %i.ac, ptr noundef %i.by, ptr noundef %i.bw, ptr noundef null, ptr noundef null) #9
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !42
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !33
  %i.ch = call fastcc ptr @PrelinOpt16alloc(ptr noundef %i.ca, ptr noundef %i.cc, i32 noundef %i.ce, ptr noundef %.077, i32 noundef %i.cg, ptr noundef %.076)
  call void @_cmsPipelineSetOptimizationParameters(ptr noundef nonnull %i.ac, ptr noundef nonnull @PrelinEval16, ptr noundef %i.ch, ptr noundef nonnull @PrelinOpt16free, ptr noundef nonnull @Prelin16dup) #9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ci = icmp eq i32 %1, 3
  %.pre = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  br i1 %i.ci, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cj = or i32 %.pre, 4                         ; 2 uses
  store i32 %i.cj, ptr %4, align 4, !tbaa !18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ck = phi i32 [ %i.cj, %bb.ai ], [ %.pre, %bb.ah ]
  %i.cl = and i32 %i.ck, 4
  %.not109 = icmp eq i32 %i.cl, 0
  br i1 %.not109, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cm = call fastcc i32 @FixWhiteMisalignment(ptr noundef %i.ac, i32 noundef %i.j, i32 noundef %i.n) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store ptr %i.ac, ptr %0, align 8, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.al, %bb.v
  %.084 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.v ], [ 0, %bb.b ], [ 1, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.084
}

declare void @_cmsPipelineSetOptimizationParameters(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @FastIdentity16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext i32 %i.b to i64         ; 8 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  %i.e = sub i64 %i.d, %i.c
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i32 %i.b, 16
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !45
  %wide.load10 = load <8 x i16>, ptr %i.h, align 2, !tbaa !45
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <8 x i16> %wide.load, ptr %i.i, align 2, !tbaa !45
  store <8 x i16> %wide.load10, ptr %i.j, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12
  %wide.load13 = load <4 x i16>, ptr %i.l, align 2, !tbaa !45
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index12
  store <4 x i16> %wide.load13, ptr %i.m, align 2, !tbaa !45
  %index.next14 = add nuw i64 %index12, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next14, %n.vec11
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %n.vec11, %wide.trip.count
  br i1 %cmp.n15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  %i.p = load i16, ptr %i.o, align 2, !tbaa !45
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.prol
  store i16 %i.p, ptr %i.q, align 2, !tbaa !45
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !97

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.r = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !45
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.u, ptr %i.v, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.x = load i16, ptr %i.w, align 2, !tbaa !45
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.x, ptr %i.y, align 2, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !45
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !45
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !45
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !45
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

declare ptr @cmsPipelineGetPtrToFirstStage(ptr noundef) local_unnamed_addr #1

declare i32 @cmsStageType(ptr noundef) local_unnamed_addr #1

declare ptr @cmsStageNext(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @cmsStageFree(ptr noundef) local_unnamed_addr #1

declare ptr @cmsStageData(ptr noundef) local_unnamed_addr #1

declare i32 @cmsStageInputChannels(ptr noundef) local_unnamed_addr #1

declare i32 @cmsStageOutputChannels(ptr noundef) local_unnamed_addr #1

declare void @_cmsMAT3per(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsStageAllocMatrix(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_cmsMAT3identity(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare i32 @_cmsFormatterIsFloat(i32 noundef) local_unnamed_addr #1

declare i32 @_cmsICCcolorSpace(i32 noundef) local_unnamed_addr #1

declare i32 @_cmsReasonableGridpointsByColorspace(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @cmsPipelineStageCount(ptr noundef) local_unnamed_addr #1

declare ptr @cmsPipelineAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @AllCurvesAreLinear(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_cmsStageGetPtrToCurveSet(ptr noundef nonnull %0) #9 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @cmsStageOutputChannels(ptr noundef nonnull %0) #9 ; 2 uses
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.c to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = tail call i32 @cmsIsToneCurveLinear(ptr noundef %i.e) #9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ], [ 1, %bb.c ]
  ret i32 %.08
}

declare ptr @cmsStageDup(ptr noundef) local_unnamed_addr #1

declare i32 @cmsPipelineInsertStage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @cmsPipelineUnlinkStage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsStageAllocCLut16bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsPipelineGetPtrToLastStage(ptr noundef) local_unnamed_addr #1

declare i32 @cmsStageSampleCLut16bit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @XFormSampler16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 5 uses
  %i.b = alloca [16 x float], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader
end_hunk_0
begin_hunk_1_@MatShaperEval16:bb.a
  %i.af = add i32 %i.w, 8192
  %i.ag = add i32 %i.af, %i.z
  %i.ah = add i32 %i.ag, %i.ac
  %i.ai = add i32 %i.ah, %i.ae
  %i.aj = ashr i32 %i.ai, 14
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 3092
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.am = mul nsw i32 %i.al, %i.l
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 3096
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !18
  %i.ap = mul nsw i32 %i.ao, %i.p
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 3100
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !18
  %i.as = mul nsw i32 %i.ar, %i.t
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 3120
  %i.au = load i32, ptr %i.at, align 8, !tbaa !18
  %i.av = add i32 %i.am, 8192
  %i.aw = add i32 %i.av, %i.ap
  %i.ax = add i32 %i.aw, %i.as
  %i.ay = add i32 %i.ax, %i.au
  %i.az = ashr i32 %i.ay, 14
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 3104
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !18
  %i.bc = mul nsw i32 %i.bb, %i.l
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 3108
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = mul nsw i32 %i.be, %i.p
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 3112
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !18
  %i.bi = mul nsw i32 %i.bh, %i.t
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 3124
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18
  %i.bl = add i32 %i.bc, 8192
  %i.bm = add i32 %i.bl, %i.bf
  %i.bn = add i32 %i.bm, %i.bi
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = ashr i32 %i.bo, 14
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 16384)
  %i.bs = tail call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 16384)
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 16384)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 3128
  %i.bx = zext nneg i32 %i.br to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !45
  store i16 %i.bz, ptr %1, align 2, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 35898
  %i.cb = zext nneg i32 %i.bt to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !45
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 68668
  %i.cg = zext nneg i32 %i.bv to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !45
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FreeMatShaper(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @DupMatShaper(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @_cmsDupMem(ptr noundef %0, ptr noundef %1, i32 noundef 101440) #9
  ret ptr %i.a
}

declare float @cmsEvalToneCurveFloat(ptr noundef, float noundef) local_unnamed_addr #1

declare i32 @cmsIsToneCurveMonotonic(ptr noundef) local_unnamed_addr #1

declare ptr @cmsReverseToneCurveEx(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsPipelineDup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @PrelinOpt8alloc(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 4624) #9 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2576
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3600
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 9 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !tbaa !50
  %i.r = trunc i64 %indvars.iv to i16
  %i.s = mul i16 %i.r, 257                        ; 3 uses
  %i.t = tail call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.q, i16 noundef zeroext %i.s) #9
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.v = tail call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.u, i16 noundef zeroext %i.s) #9
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.x = tail call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.w, i16 noundef zeroext %i.s) #9
  %i.y = zext i16 %i.t to i32
  %i.z = zext i16 %i.v to i32
  %i.aa = zext i16 %i.x to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = trunc i64 %indvars.iv to i32
  %i.ac = mul i32 %i.ab, 257                      ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.8.0 = phi i32 [ %i.aa, %bb.c ], [ %i.ac, %bb.d ]
  %.sroa.5.0 = phi i32 [ %i.z, %bb.c ], [ %i.ac, %bb.d ]
  %.sroa.0.0 = phi i32 [ %i.y, %bb.c ], [ %i.ac, %bb.d ]
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !18
  %i.ae = mul i32 %i.ad, %.sroa.0.0               ; 2 uses
  %i.af = add nsw i32 %i.ae, 32767
  %i.ag = sdiv i32 %i.af, 65535
  %i.ah = add nsw i32 %i.ag, %i.ae                ; 2 uses
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !18
  %i.aj = mul i32 %i.ai, %.sroa.5.0               ; 2 uses
  %i.ak = add nsw i32 %i.aj, 32767
  %i.al = sdiv i32 %i.ak, 65535
  %i.am = add nsw i32 %i.al, %i.aj                ; 2 uses
  %i.an = load i32, ptr %i.g, align 8, !tbaa !18
  %i.ao = mul i32 %i.an, %.sroa.8.0               ; 2 uses
  %i.ap = add nsw i32 %i.ao, 32767
  %i.aq = sdiv i32 %i.ap, 65535
  %i.ar = add nsw i32 %i.aq, %i.ao                ; 2 uses
  %i.as = load i32, ptr %i.i, align 4, !tbaa !18
  %i.at = ashr i32 %i.ah, 16
  %i.au = mul i32 %i.at, %i.as
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.au, ptr %i.av, align 4, !tbaa !18
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !18
  %i.ax = ashr i32 %i.am, 16
  %i.ay = mul i32 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !18
  %i.ba = load i32, ptr %i.h, align 4, !tbaa !18
  %i.bb = ashr i32 %i.ar, 16
  %i.bc = mul i32 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !18
  %i.be = trunc i32 %i.ah to i16
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !45
  %i.bg = trunc i32 %i.am to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !45
  %i.bi = trunc i32 %i.ar to i16
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !161

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.a, align 8, !tbaa !162
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.bk, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @PrelinEval8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !175  ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 22 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 10 uses
  %i.i = load i16, ptr %0, align 2, !tbaa !45
  %i.j = lshr i16 %i.i, 8
  %i.k = zext nneg i16 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !45
  %i.n = lshr i16 %i.m, 8
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i16, ptr %i.p, align 2, !tbaa !45
  %i.r = lshr i16 %i.q, 8
  %i.s = zext nneg i16 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.k
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2576
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.o
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 3600
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.s
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.k
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !45 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.o
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !45 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.s
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !45 ; 7 uses
  %i.al = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.ae, i64 0
  %i.am = insertelement <4 x i16> %i.al, i16 %i.ah, i64 1
  %i.an = insertelement <4 x i16> %i.am, i16 %i.ak, i64 2
  %i.ao = zext <4 x i16> %i.an to <4 x i32>       ; 16 uses
  %i.ap = zext i16 %i.ak to i32                   ; 5 uses
  %i.aq = zext i16 %i.ah to i32                   ; 5 uses
  %i.ar = zext i16 %i.ae to i32                   ; 5 uses
  %i.as = icmp eq i16 %i.ae, 0
  br i1 %i.as, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.av = phi i32 [ %i.au, %bb.b ], [ 0, %bb.a ]
  %i.aw = add i32 %i.av, %i.v                     ; 3 uses
  %i.ax = icmp eq i16 %i.ah, 0
  br i1 %i.ax, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ba = phi i32 [ %i.az, %bb.d ], [ 0, %bb.c ]
  %i.bb = add i32 %i.ba, %i.y                     ; 3 uses
  %i.bc = icmp eq i16 %i.ak, 0
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bf = phi i32 [ %i.be, %bb.f ], [ 0, %bb.e ]
  %i.bg = icmp sgt i32 %i.e, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.bh = add i32 %i.bf, %i.ab                    ; 4 uses
  %i.bi = add i32 %i.y, %i.v                      ; 2 uses
  %i.bj = add i32 %i.bi, %i.ab                    ; 2 uses
  %.not = icmp ult i16 %i.ae, %i.ah               ; 2 uses
  %.not231 = icmp ult i16 %i.ah, %i.ak            ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.not231
  %i.bk = add i32 %i.bb, %i.aw                    ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.ab                ; 2 uses
  %i.bm = add i32 %i.bh, %i.bk                    ; 5 uses
  %.not232 = icmp ult i16 %i.ae, %i.ak            ; 2 uses
  %.not233 = icmp ult i16 %i.ak, %i.ah            ; 2 uses
  %i.bn = add nsw i32 %i.aw, %i.y                 ; 2 uses
  %i.bo = add nsw i32 %i.bn, %i.ab
  %i.bp = add nsw i32 %i.bh, %i.bn                ; 2 uses
  %.not234 = icmp ult i16 %i.ak, %i.ae            ; 2 uses
  %brmerge = or i1 %.not, %.not234
  %i.bq = add nsw i32 %i.bh, %i.bi                ; 2 uses
  %.not235 = icmp ult i16 %i.ah, %i.ae            ; 2 uses
  %brmerge239 = or i1 %.not235, %.not232
  %i.br = add i32 %i.ab, %i.v
  %i.bs = add i32 %i.br, %i.bb
  %brmerge240 = or i1 %.not231, %.not234
  %i.bt = add i32 %i.bb, %i.v                     ; 2 uses
  %i.bu = add i32 %i.bh, %i.bt
  %i.bv = add nsw i32 %i.bt, %i.ab
  %brmerge241 = or i1 %.not235, %.not233
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bw = add i32 %i.ab, %i.y
  %i.bx = add i32 %i.bw, %i.aw
  %i.by = sext i32 %i.bj to i64                   ; 2 uses
  %i.bz = sext i32 %i.bx to i64                   ; 2 uses
  %i.ca = sext i32 %i.bl to i64                   ; 2 uses
  %i.cb = sext i32 %i.bm to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.g, i64 %i.by ; 2 uses
  %invariant.gep279 = getelementptr [2 x i8], ptr %i.g, i64 %i.bz ; 2 uses
  %invariant.gep281 = getelementptr [2 x i8], ptr %i.g, i64 %i.ca ; 2 uses
  %invariant.gep283 = getelementptr [2 x i8], ptr %i.g, i64 %i.cb ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 16
  br i1 %min.iters.check, label %.lr.ph.split.preheader462, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %3 = sub i64 %i.a, %i.h                         ; 2 uses
  %4 = shl nsw i64 %i.cb, 1
  %i.cc = sub i64 %4, %3
  %diff.check = icmp ugt i64 %i.cc, -16
  %i.cd = shl nsw i64 %i.ca, 1
  %i.ce = sub i64 %i.cd, %3
  %diff.check330 = icmp ugt i64 %i.ce, -16
  %conflict.rdx = or i1 %diff.check, %diff.check330
  %5 = sub i64 %i.a, %i.h                         ; 2 uses
  %i.cf = shl nsw i64 %i.bz, 1
  %i.cg = sub i64 %i.cf, %5
  %diff.check331 = icmp ugt i64 %i.cg, -16
  %conflict.rdx332 = or i1 %conflict.rdx, %diff.check331
  %i.ch = shl nsw i64 %i.by, 1
  %i.ci = sub i64 %i.ch, %5
  %diff.check333 = icmp ugt i64 %i.ci, -16
  %conflict.rdx334 = or i1 %conflict.rdx332, %diff.check333
  br i1 %conflict.rdx334, label %.lr.ph.split.preheader462, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat336 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat338 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cj = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cj, align 2, !tbaa !45 ; 2 uses
  %i.ck = zext <8 x i16> %wide.load to <8 x i32>
  %i.cl = getelementptr [2 x i8], ptr %invariant.gep279, i64 %index
  %wide.load339 = load <8 x i16>, ptr %i.cl, align 2, !tbaa !45
  %i.cm = zext <8 x i16> %wide.load339 to <8 x i32> ; 2 uses
  %i.cn = sub nsw <8 x i32> %i.cm, %i.ck
  %i.co = getelementptr [2 x i8], ptr %invariant.gep281, i64 %index
  %wide.load340 = load <8 x i16>, ptr %i.co, align 2, !tbaa !45
  %i.cp = zext <8 x i16> %wide.load340 to <8 x i32> ; 2 uses
  %i.cq = sub nsw <8 x i32> %i.cp, %i.cm
  %i.cr = getelementptr [2 x i8], ptr %invariant.gep283, i64 %index
  %wide.load341 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !45
  %i.cs = zext <8 x i16> %wide.load341 to <8 x i32>
  %i.ct = sub nsw <8 x i32> %i.cs, %i.cp
  %i.cu = mul nsw <8 x i32> %i.cn, %broadcast.splat
  %i.cv = mul nsw <8 x i32> %i.cq, %broadcast.splat336
  %i.cw = mul nsw <8 x i32> %i.ct, %broadcast.splat338
  %i.cx = add <8 x i32> %i.cu, splat (i32 32769)
  %i.cy = add <8 x i32> %i.cx, %i.cv
  %i.cz = add <8 x i32> %i.cy, %i.cw              ; 2 uses
  %i.da = ashr <8 x i32> %i.cz, splat (i32 16)
  %i.db = add nsw <8 x i32> %i.da, %i.cz
  %i.dc = lshr <8 x i32> %i.db, splat (i32 16)
  %i.dd = trunc nuw <8 x i32> %i.dc to <8 x i16>
  %i.de = add <8 x i16> %wide.load, %i.dd
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.de, ptr %i.df, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader462

.lr.ph.split.preheader462:                        ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %or.cond238 = select i1 %.not232, i1 true, i1 %.not233
  %i.dh = sext i32 %i.bj to i64                   ; 8 uses
  br i1 %or.cond238, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.di = sext i32 %i.bo to i64                   ; 2 uses
  %i.dj = sext i32 %i.bm to i64                   ; 2 uses
  %i.dk = sext i32 %i.bp to i64                   ; 2 uses
  %wide.trip.count252 = zext nneg i32 %i.e to i64 ; 3 uses
  %invariant.gep285 = getelementptr [2 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %invariant.gep287 = getelementptr [2 x i8], ptr %i.g, i64 %i.di ; 2 uses
  %invariant.gep289 = getelementptr [2 x i8], ptr %i.g, i64 %i.dj ; 2 uses
  %invariant.gep291 = getelementptr [2 x i8], ptr %i.g, i64 %i.dk ; 2 uses
  %min.iters.check351 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check351, label %.lr.ph.split.us.split.preheader460, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.split.us.split.preheader
  %6 = sub i64 %i.a, %i.h                         ; 2 uses
  %7 = shl nsw i64 %i.dk, 1
  %i.dl = sub i64 %7, %6
  %diff.check343 = icmp ugt i64 %i.dl, -16
  %i.dm = shl nsw i64 %i.dj, 1
  %i.dn = sub i64 %i.dm, %6
  %diff.check344 = icmp ugt i64 %i.dn, -16
  %conflict.rdx345 = or i1 %diff.check343, %diff.check344
  %8 = sub i64 %i.a, %i.h                         ; 2 uses
  %i.do = shl nsw i64 %i.di, 1
  %i.dp = sub i64 %i.do, %8
  %diff.check346 = icmp ugt i64 %i.dp, -16
  %conflict.rdx347 = or i1 %conflict.rdx345, %diff.check346
  %i.dq = shl nsw i64 %i.dh, 1
  %i.dr = sub i64 %i.dq, %8
  %diff.check348 = icmp ugt i64 %i.dr, -16
  %conflict.rdx349 = or i1 %conflict.rdx347, %diff.check348
  br i1 %conflict.rdx349, label %.lr.ph.split.us.split.preheader460, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck342
  %n.vec353 = and i64 %wide.trip.count252, 2147483640 ; 3 uses
  %broadcast.splat355 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat357 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat359 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph352
  %index361 = phi i64 [ 0, %vector.ph352 ], [ %index.next366, %vector.body360 ] ; 6 uses
  %i.ds = getelementptr [2 x i8], ptr %invariant.gep285, i64 %index361
  %wide.load362 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !45 ; 2 uses
  %i.dt = zext <8 x i16> %wide.load362 to <8 x i32>
  %i.du = getelementptr [2 x i8], ptr %invariant.gep287, i64 %index361
  %wide.load363 = load <8 x i16>, ptr %i.du, align 2, !tbaa !45
  %i.dv = zext <8 x i16> %wide.load363 to <8 x i32> ; 2 uses
  %i.dw = sub nsw <8 x i32> %i.dv, %i.dt
  %i.dx = getelementptr [2 x i8], ptr %invariant.gep289, i64 %index361
  %wide.load364 = load <8 x i16>, ptr %i.dx, align 2, !tbaa !45
  %i.dy = zext <8 x i16> %wide.load364 to <8 x i32>
  %i.dz = getelementptr [2 x i8], ptr %invariant.gep291, i64 %index361
  %wide.load365 = load <8 x i16>, ptr %i.dz, align 2, !tbaa !45
  %i.ea = zext <8 x i16> %wide.load365 to <8 x i32> ; 2 uses
  %i.eb = sub nsw <8 x i32> %i.dy, %i.ea
  %i.ec = sub nsw <8 x i32> %i.ea, %i.dv
  %i.ed = mul nsw <8 x i32> %i.dw, %broadcast.splat355
  %i.ee = mul nsw <8 x i32> %i.eb, %broadcast.splat357
  %i.ef = mul nsw <8 x i32> %i.ec, %broadcast.splat359
  %i.eg = add <8 x i32> %i.ed, splat (i32 32769)
  %i.eh = add <8 x i32> %i.eg, %i.ee
  %i.ei = add <8 x i32> %i.eh, %i.ef              ; 2 uses
  %i.ej = ashr <8 x i32> %i.ei, splat (i32 16)
  %i.ek = add nsw <8 x i32> %i.ej, %i.ei
  %i.el = lshr <8 x i32> %i.ek, splat (i32 16)
  %i.em = trunc nuw <8 x i32> %i.el to <8 x i16>
  %i.en = add <8 x i16> %wide.load362, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index361
  store <8 x i16> %i.en, ptr %i.eo, align 2, !tbaa !45
  %index.next366 = add nuw i64 %index361, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next366, %n.vec353
  br i1 %i.ep, label %middle.block367, label %vector.body360, !llvm.loop !164

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %n.vec353, %wide.trip.count252
  br i1 %cmp.n368, label %._crit_edge, label %.lr.ph.split.us.split.preheader460

.lr.ph.split.us.split.preheader460:               ; preds = %vector.memcheck342, %.lr.ph.split.us.split.preheader, %middle.block367
  %indvars.iv249.ph = phi i64 [ 0, %vector.memcheck342 ], [ 0, %.lr.ph.split.us.split.preheader ], [ %n.vec353, %middle.block367 ]
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %brmerge, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us.split.us
  %i.eq = sext i32 %i.bp to i64                   ; 2 uses
  %i.er = sext i32 %i.bq to i64                   ; 2 uses
  %i.es = sext i32 %i.bm to i64                   ; 2 uses
  %wide.trip.count257 = zext nneg i32 %i.e to i64 ; 3 uses
  %invariant.gep293 = getelementptr [2 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %invariant.gep295 = getelementptr [2 x i8], ptr %i.g, i64 %i.eq ; 2 uses
  %invariant.gep297 = getelementptr [2 x i8], ptr %i.g, i64 %i.er ; 2 uses
  %invariant.gep299 = getelementptr [2 x i8], ptr %i.g, i64 %i.es ; 2 uses
  %min.iters.check379 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check379, label %.lr.ph.split.us.split.us.split.preheader458, label %vector.memcheck370

vector.memcheck370:                               ; preds = %.lr.ph.split.us.split.us.split.preheader
  %9 = sub i64 %i.a, %i.h                         ; 2 uses
  %10 = shl nsw i64 %i.es, 1
  %i.et = sub i64 %10, %9
  %diff.check371 = icmp ugt i64 %i.et, -16
  %i.eu = shl nsw i64 %i.er, 1
  %i.ev = sub i64 %i.eu, %9
  %diff.check372 = icmp ugt i64 %i.ev, -16
  %conflict.rdx373 = or i1 %diff.check371, %diff.check372
  %11 = sub i64 %i.a, %i.h                        ; 2 uses
  %i.ew = shl nsw i64 %i.eq, 1
  %i.ex = sub i64 %i.ew, %11
  %diff.check374 = icmp ugt i64 %i.ex, -16
  %conflict.rdx375 = or i1 %conflict.rdx373, %diff.check374
  %i.ey = shl nsw i64 %i.dh, 1
  %i.ez = sub i64 %i.ey, %11
  %diff.check376 = icmp ugt i64 %i.ez, -16
  %conflict.rdx377 = or i1 %conflict.rdx375, %diff.check376
  br i1 %conflict.rdx377, label %.lr.ph.split.us.split.us.split.preheader458, label %vector.ph380

vector.ph380:                                     ; preds = %vector.memcheck370
  %n.vec381 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  %broadcast.splat383 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat385 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat387 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph380
  %index389 = phi i64 [ 0, %vector.ph380 ], [ %index.next394, %vector.body388 ] ; 6 uses
  %i.fa = getelementptr [2 x i8], ptr %invariant.gep293, i64 %index389
  %wide.load390 = load <8 x i16>, ptr %i.fa, align 2, !tbaa !45 ; 2 uses
  %i.fb = zext <8 x i16> %wide.load390 to <8 x i32>
  %i.fc = getelementptr [2 x i8], ptr %invariant.gep295, i64 %index389
  %wide.load391 = load <8 x i16>, ptr %i.fc, align 2, !tbaa !45
  %i.fd = zext <8 x i16> %wide.load391 to <8 x i32> ; 2 uses
  %i.fe = getelementptr [2 x i8], ptr %invariant.gep297, i64 %index389
  %wide.load392 = load <8 x i16>, ptr %i.fe, align 2, !tbaa !45
  %i.ff = zext <8 x i16> %wide.load392 to <8 x i32> ; 2 uses
  %i.fg = sub nsw <8 x i32> %i.fd, %i.ff
  %i.fh = getelementptr [2 x i8], ptr %invariant.gep299, i64 %index389
  %wide.load393 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !45
  %i.fi = zext <8 x i16> %wide.load393 to <8 x i32>
  %i.fj = sub nsw <8 x i32> %i.fi, %i.fd
  %i.fk = sub nsw <8 x i32> %i.ff, %i.fb
  %i.fl = mul nsw <8 x i32> %i.fg, %broadcast.splat383
  %i.fm = mul nsw <8 x i32> %i.fj, %broadcast.splat385
  %i.fn = mul nsw <8 x i32> %i.fk, %broadcast.splat387
  %i.fo = add <8 x i32> %i.fl, splat (i32 32769)
  %i.fp = add <8 x i32> %i.fo, %i.fm
  %i.fq = add <8 x i32> %i.fp, %i.fn              ; 2 uses
  %i.fr = ashr <8 x i32> %i.fq, splat (i32 16)
  %i.fs = add nsw <8 x i32> %i.fr, %i.fq
  %i.ft = lshr <8 x i32> %i.fs, splat (i32 16)
  %i.fu = trunc nuw <8 x i32> %i.ft to <8 x i16>
  %i.fv = add <8 x i16> %wide.load390, %i.fu
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index389
  store <8 x i16> %i.fv, ptr %i.fw, align 2, !tbaa !45
  %index.next394 = add nuw i64 %index389, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next394, %n.vec381
  br i1 %i.fx, label %middle.block395, label %vector.body388, !llvm.loop !165

middle.block395:                                  ; preds = %vector.body388
  %cmp.n396 = icmp eq i64 %n.vec381, %wide.trip.count257
  br i1 %cmp.n396, label %._crit_edge, label %.lr.ph.split.us.split.us.split.preheader458

.lr.ph.split.us.split.us.split.preheader458:      ; preds = %vector.memcheck370, %.lr.ph.split.us.split.us.split.preheader, %middle.block395
  %indvars.iv254.ph = phi i64 [ 0, %vector.memcheck370 ], [ 0, %.lr.ph.split.us.split.us.split.preheader ], [ %n.vec381, %middle.block395 ]
  br label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us
  br i1 %brmerge239, label %.lr.ph.split.us.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.us.split.preheader: ; preds = %.lr.ph.split.us.split.us.split.us
  %i.fy = sext i32 %i.bl to i64                   ; 2 uses
  %i.fz = sext i32 %i.bs to i64                   ; 2 uses
  %i.ga = sext i32 %i.bm to i64                   ; 2 uses
  %wide.trip.count262 = zext nneg i32 %i.e to i64 ; 3 uses
  %invariant.gep301 = getelementptr [2 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %invariant.gep303 = getelementptr [2 x i8], ptr %i.g, i64 %i.fy ; 2 uses
  %invariant.gep305 = getelementptr [2 x i8], ptr %i.g, i64 %i.fz ; 2 uses
  %invariant.gep307 = getelementptr [2 x i8], ptr %i.g, i64 %i.ga ; 2 uses
  %min.iters.check407 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check407, label %.lr.ph.split.us.split.us.split.us.split.preheader456, label %vector.memcheck398

vector.memcheck398:                               ; preds = %.lr.ph.split.us.split.us.split.us.split.preheader
  %12 = sub i64 %i.a, %i.h                        ; 2 uses
  %13 = shl nsw i64 %i.ga, 1
  %i.gb = sub i64 %13, %12
  %diff.check399 = icmp ugt i64 %i.gb, -16
  %i.gc = shl nsw i64 %i.fz, 1
  %i.gd = sub i64 %i.gc, %12
  %diff.check400 = icmp ugt i64 %i.gd, -16
  %conflict.rdx401 = or i1 %diff.check399, %diff.check400
  %14 = sub i64 %i.a, %i.h                        ; 2 uses
  %i.ge = shl nsw i64 %i.fy, 1
  %i.gf = sub i64 %i.ge, %14
  %diff.check402 = icmp ugt i64 %i.gf, -16
  %conflict.rdx403 = or i1 %conflict.rdx401, %diff.check402
  %i.gg = shl nsw i64 %i.dh, 1
  %i.gh = sub i64 %i.gg, %14
  %diff.check404 = icmp ugt i64 %i.gh, -16
  %conflict.rdx405 = or i1 %conflict.rdx403, %diff.check404
  br i1 %conflict.rdx405, label %.lr.ph.split.us.split.us.split.us.split.preheader456, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck398
  %n.vec409 = and i64 %wide.trip.count262, 2147483640 ; 3 uses
  %broadcast.splat411 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat413 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat415 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph408
  %index417 = phi i64 [ 0, %vector.ph408 ], [ %index.next422, %vector.body416 ] ; 6 uses
  %i.gi = getelementptr [2 x i8], ptr %invariant.gep301, i64 %index417
  %wide.load418 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !45 ; 2 uses
  %i.gj = zext <8 x i16> %wide.load418 to <8 x i32>
  %i.gk = getelementptr [2 x i8], ptr %invariant.gep303, i64 %index417
  %wide.load419 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !45
  %i.gl = zext <8 x i16> %wide.load419 to <8 x i32> ; 2 uses
  %i.gm = getelementptr [2 x i8], ptr %invariant.gep305, i64 %index417
  %wide.load420 = load <8 x i16>, ptr %i.gm, align 2, !tbaa !45
  %i.gn = zext <8 x i16> %wide.load420 to <8 x i32> ; 2 uses
  %i.go = sub nsw <8 x i32> %i.gl, %i.gn
  %i.gp = sub nsw <8 x i32> %i.gn, %i.gj
  %i.gq = getelementptr [2 x i8], ptr %invariant.gep307, i64 %index417
  %wide.load421 = load <8 x i16>, ptr %i.gq, align 2, !tbaa !45
  %i.gr = zext <8 x i16> %wide.load421 to <8 x i32>
  %i.gs = sub nsw <8 x i32> %i.gr, %i.gl
  %i.gt = mul nsw <8 x i32> %i.go, %broadcast.splat411
  %i.gu = mul nsw <8 x i32> %i.gp, %broadcast.splat413
  %i.gv = mul nsw <8 x i32> %i.gs, %broadcast.splat415
  %i.gw = add <8 x i32> %i.gt, splat (i32 32769)
  %i.gx = add <8 x i32> %i.gw, %i.gu
  %i.gy = add <8 x i32> %i.gx, %i.gv              ; 2 uses
  %i.gz = ashr <8 x i32> %i.gy, splat (i32 16)
  %i.ha = add nsw <8 x i32> %i.gz, %i.gy
  %i.hb = lshr <8 x i32> %i.ha, splat (i32 16)
  %i.hc = trunc nuw <8 x i32> %i.hb to <8 x i16>
  %i.hd = add <8 x i16> %wide.load418, %i.hc
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index417
  store <8 x i16> %i.hd, ptr %i.he, align 2, !tbaa !45
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next422, %n.vec409
  br i1 %i.hf, label %middle.block423, label %vector.body416, !llvm.loop !166

middle.block423:                                  ; preds = %vector.body416
  %cmp.n424 = icmp eq i64 %n.vec409, %wide.trip.count262
  br i1 %cmp.n424, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split.preheader456

.lr.ph.split.us.split.us.split.us.split.preheader456: ; preds = %vector.memcheck398, %.lr.ph.split.us.split.us.split.us.split.preheader, %middle.block423
  %indvars.iv259.ph = phi i64 [ 0, %vector.memcheck398 ], [ 0, %.lr.ph.split.us.split.us.split.us.split.preheader ], [ %n.vec409, %middle.block423 ]
  br label %.lr.ph.split.us.split.us.split.us.split

.lr.ph.split.us.split.us.split.us.split.us:       ; preds = %.lr.ph.split.us.split.us.split.us
  %i.hg = sext i32 %i.bm to i64                   ; 2 uses
  %i.hh = sext i32 %i.bu to i64                   ; 2 uses
  %wide.trip.count272 = zext nneg i32 %i.e to i64 ; 4 uses
  %invariant.gep317 = getelementptr [2 x i8], ptr %i.g, i64 %i.dh ; 3 uses
  %invariant.gep319 = getelementptr [2 x i8], ptr %i.g, i64 %i.hg ; 3 uses
  %invariant.gep321 = getelementptr [2 x i8], ptr %i.g, i64 %i.hh ; 3 uses
  br i1 %brmerge240, label %.lr.ph.split.us.split.us.split.us.split.us.split.us.preheader, label %.lr.ph.split.us.split.us.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.us.split.us.split.preheader: ; preds = %.lr.ph.split.us.split.us.split.us.split.us
  %i.hi = sext i32 %i.bv to i64                   ; 2 uses
  %invariant.gep315 = getelementptr [2 x i8], ptr %i.g, i64 %i.hi ; 2 uses
  %min.iters.check435 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check435, label %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454, label %vector.memcheck426

vector.memcheck426:                               ; preds = %.lr.ph.split.us.split.us.split.us.split.us.split.preheader
  %15 = sub i64 %i.a, %i.h                        ; 2 uses
  %16 = shl nsw i64 %i.hi, 1
  %i.hj = sub i64 %16, %15
  %diff.check427 = icmp ugt i64 %i.hj, -16
  %i.hk = shl nsw i64 %i.hh, 1
  %i.hl = sub i64 %i.hk, %15
  %diff.check428 = icmp ugt i64 %i.hl, -16
  %conflict.rdx429 = or i1 %diff.check427, %diff.check428
  %17 = sub i64 %i.a, %i.h                        ; 2 uses
  %i.hm = shl nsw i64 %i.hg, 1
  %i.hn = sub i64 %i.hm, %17
  %diff.check430 = icmp ugt i64 %i.hn, -16
  %conflict.rdx431 = or i1 %conflict.rdx429, %diff.check430
  %i.ho = shl nsw i64 %i.dh, 1
  %i.hp = sub i64 %i.ho, %17
  %diff.check432 = icmp ugt i64 %i.hp, -16
  %conflict.rdx433 = or i1 %conflict.rdx431, %diff.check432
  br i1 %conflict.rdx433, label %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454, label %vector.ph436

vector.ph436:                                     ; preds = %vector.memcheck426
  %n.vec437 = and i64 %wide.trip.count272, 2147483640 ; 3 uses
  %broadcast.splat439 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat441 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat443 = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph436
  %index445 = phi i64 [ 0, %vector.ph436 ], [ %index.next450, %vector.body444 ] ; 6 uses
  %i.hq = getelementptr [2 x i8], ptr %invariant.gep317, i64 %index445
  %wide.load446 = load <8 x i16>, ptr %i.hq, align 2, !tbaa !45 ; 2 uses
  %i.hr = zext <8 x i16> %wide.load446 to <8 x i32>
  %i.hs = getelementptr [2 x i8], ptr %invariant.gep319, i64 %index445
  %wide.load447 = load <8 x i16>, ptr %i.hs, align 2, !tbaa !45
  %i.ht = zext <8 x i16> %wide.load447 to <8 x i32>
  %i.hu = getelementptr [2 x i8], ptr %invariant.gep321, i64 %index445
  %wide.load448 = load <8 x i16>, ptr %i.hu, align 2, !tbaa !45
  %i.hv = zext <8 x i16> %wide.load448 to <8 x i32> ; 2 uses
  %i.hw = sub nsw <8 x i32> %i.ht, %i.hv
  %i.hx = getelementptr [2 x i8], ptr %invariant.gep315, i64 %index445
  %wide.load449 = load <8 x i16>, ptr %i.hx, align 2, !tbaa !45
  %i.hy = zext <8 x i16> %wide.load449 to <8 x i32> ; 2 uses
  %i.hz = sub nsw <8 x i32> %i.hy, %i.hr
  %i.ia = sub nsw <8 x i32> %i.hv, %i.hy
  %i.ib = mul nsw <8 x i32> %i.hw, %broadcast.splat439
  %i.ic = mul nsw <8 x i32> %i.hz, %broadcast.splat441
  %i.id = mul nsw <8 x i32> %i.ia, %broadcast.splat443
  %i.ie = add <8 x i32> %i.ib, splat (i32 32769)
  %i.if = add <8 x i32> %i.ie, %i.ic
  %i.ig = add <8 x i32> %i.if, %i.id              ; 2 uses
  %i.ih = ashr <8 x i32> %i.ig, splat (i32 16)
  %i.ii = add nsw <8 x i32> %i.ih, %i.ig
  %i.ij = lshr <8 x i32> %i.ii, splat (i32 16)
  %i.ik = trunc nuw <8 x i32> %i.ij to <8 x i16>
  %i.il = add <8 x i16> %wide.load446, %i.ik
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index445
  store <8 x i16> %i.il, ptr %i.im, align 2, !tbaa !45
  %index.next450 = add nuw i64 %index445, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next450, %n.vec437
  br i1 %i.in, label %middle.block451, label %vector.body444, !llvm.loop !167

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %n.vec437, %wide.trip.count272
  br i1 %cmp.n452, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454

.lr.ph.split.us.split.us.split.us.split.us.split.preheader454: ; preds = %vector.memcheck426, %.lr.ph.split.us.split.us.split.us.split.us.split.preheader, %middle.block451
  %indvars.iv264.ph = phi i64 [ 0, %vector.memcheck426 ], [ 0, %.lr.ph.split.us.split.us.split.us.split.us.split.preheader ], [ %n.vec437, %middle.block451 ]
  br label %.lr.ph.split.us.split.us.split.us.split.us.split

.lr.ph.split.us.split.us.split.us.split.us.split.us.preheader: ; preds = %.lr.ph.split.us.split.us.split.us.split.us
  %i.io = sext i32 %i.bq to i64
  %invariant.gep323 = getelementptr [2 x i8], ptr %i.g, i64 %i.io
  br label %.lr.ph.split.us.split.us.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us.split.us.split.us: ; preds = %.lr.ph.split.us.split.us.split.us.split.us.split.us.preheader, %bb.i
  %indvars.iv269 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.split.us.split.us.preheader ], [ %indvars.iv.next270, %bb.i ] ; 6 uses
  %gep318 = getelementptr [2 x i8], ptr %invariant.gep317, i64 %indvars.iv269
  %i.ip = load i16, ptr %gep318, align 2, !tbaa !45 ; 2 uses
  br i1 %brmerge241, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split.us.split.us.split.us.split.us
  %gep320 = getelementptr [2 x i8], ptr %invariant.gep319, i64 %indvars.iv269
  %i.iq = load i16, ptr %gep320, align 2, !tbaa !45
  %gep322 = getelementptr [2 x i8], ptr %invariant.gep321, i64 %indvars.iv269
  %i.ir = load i16, ptr %gep322, align 2, !tbaa !45
  %gep324 = getelementptr [2 x i8], ptr %invariant.gep323, i64 %indvars.iv269
  %i.is = load i16, ptr %gep324, align 2, !tbaa !45
  %i.it = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 -32767>, i16 %i.iq, i64 0
  %i.iu = insertelement <4 x i16> %i.it, i16 %i.ir, i64 1
  %i.iv = insertelement <4 x i16> %i.iu, i16 %i.is, i64 2 ; 2 uses
  %i.iw = zext <4 x i16> %i.iv to <4 x i32>
  %i.ix = shufflevector <4 x i16> %i.iv, <4 x i16> <i16 poison, i16 poison, i16 poison, i16 0>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %i.iy = insertelement <4 x i16> %i.ix, i16 %i.ip, i64 2
  %i.iz = zext <4 x i16> %i.iy to <4 x i32>
  %i.ja = sub nsw <4 x i32> %i.iw, %i.iz
  %i.jb = mul nsw <4 x i32> %i.ja, %i.ao
  %i.jc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jb)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.split.us.split.us.split.us.split.us
  %i.jd = phi i32 [ 32769, %.lr.ph.split.us.split.us.split.us.split.us.split.us ], [ %i.jc, %bb.h ] ; 2 uses
  %i.je = ashr i32 %i.jd, 16
  %i.jf = add nsw i32 %i.je, %i.jd
  %i.jg = lshr i32 %i.jf, 16
  %i.jh = trunc nuw i32 %i.jg to i16
  %i.ji = add i16 %i.ip, %i.jh
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv269
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !45
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split.us.split.us, !llvm.loop !168

.lr.ph.split.us.split.us.split.us.split.us.split: ; preds = %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454, %.lr.ph.split.us.split.us.split.us.split.us.split
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %.lr.ph.split.us.split.us.split.us.split.us.split ], [ %indvars.iv264.ph, %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454 ] ; 6 uses
  %gep310 = getelementptr [2 x i8], ptr %invariant.gep317, i64 %indvars.iv264
  %i.jk = load i16, ptr %gep310, align 2, !tbaa !45 ; 2 uses
  %i.jl = zext i16 %i.jk to i32
  %gep312 = getelementptr [2 x i8], ptr %invariant.gep319, i64 %indvars.iv264
  %i.jm = load i16, ptr %gep312, align 2, !tbaa !45
  %i.jn = zext i16 %i.jm to i32
  %gep314 = getelementptr [2 x i8], ptr %invariant.gep321, i64 %indvars.iv264
  %i.jo = load i16, ptr %gep314, align 2, !tbaa !45
  %i.jp = zext i16 %i.jo to i32                   ; 2 uses
  %i.jq = sub nsw i32 %i.jn, %i.jp
  %gep316 = getelementptr [2 x i8], ptr %invariant.gep315, i64 %indvars.iv264
  %i.jr = load i16, ptr %gep316, align 2, !tbaa !45
  %i.js = zext i16 %i.jr to i32                   ; 2 uses
  %i.jt = sub nsw i32 %i.js, %i.jl
  %i.ju = sub nsw i32 %i.jp, %i.js
  %i.jv = mul nsw i32 %i.jq, %i.ar
  %i.jw = mul nsw i32 %i.jt, %i.aq
  %i.jx = mul nsw i32 %i.ju, %i.ap
  %i.jy = add i32 %i.jv, 32769
  %i.jz = add i32 %i.jy, %i.jw
  %i.ka = add i32 %i.jz, %i.jx                    ; 2 uses
  %i.kb = ashr i32 %i.ka, 16
  %i.kc = add nsw i32 %i.kb, %i.ka
  %i.kd = lshr i32 %i.kc, 16
  %i.ke = trunc nuw i32 %i.kd to i16
  %i.kf = add i16 %i.jk, %i.ke
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv264
  store i16 %i.kf, ptr %i.kg, align 2, !tbaa !45
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count272
  br i1 %exitcond268.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split.us.split, !llvm.loop !169

.lr.ph.split.us.split.us.split.us.split:          ; preds = %.lr.ph.split.us.split.us.split.us.split.preheader456, %.lr.ph.split.us.split.us.split.us.split
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.lr.ph.split.us.split.us.split.us.split ], [ %indvars.iv259.ph, %.lr.ph.split.us.split.us.split.us.split.preheader456 ] ; 6 uses
  %gep302 = getelementptr [2 x i8], ptr %invariant.gep301, i64 %indvars.iv259
  %i.kh = load i16, ptr %gep302, align 2, !tbaa !45 ; 2 uses
  %i.ki = zext i16 %i.kh to i32
  %gep304 = getelementptr [2 x i8], ptr %invariant.gep303, i64 %indvars.iv259
  %i.kj = load i16, ptr %gep304, align 2, !tbaa !45
  %i.kk = zext i16 %i.kj to i32                   ; 2 uses
  %gep306 = getelementptr [2 x i8], ptr %invariant.gep305, i64 %indvars.iv259
  %i.kl = load i16, ptr %gep306, align 2, !tbaa !45
  %i.km = zext i16 %i.kl to i32                   ; 2 uses
  %i.kn = sub nsw i32 %i.kk, %i.km
  %i.ko = sub nsw i32 %i.km, %i.ki
  %gep308 = getelementptr [2 x i8], ptr %invariant.gep307, i64 %indvars.iv259
  %i.kp = load i16, ptr %gep308, align 2, !tbaa !45
  %i.kq = zext i16 %i.kp to i32
  %i.kr = sub nsw i32 %i.kq, %i.kk
  %i.ks = mul nsw i32 %i.kn, %i.ar
  %i.kt = mul nsw i32 %i.ko, %i.aq
  %i.ku = mul nsw i32 %i.kr, %i.ap
  %i.kv = add i32 %i.ks, 32769
  %i.kw = add i32 %i.kv, %i.kt
  %i.kx = add i32 %i.kw, %i.ku                    ; 2 uses
  %i.ky = ashr i32 %i.kx, 16
  %i.kz = add nsw i32 %i.ky, %i.kx
  %i.la = lshr i32 %i.kz, 16
  %i.lb = trunc nuw i32 %i.la to i16
  %i.lc = add i16 %i.kh, %i.lb
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv259
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !45
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split, !llvm.loop !170

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us.split.preheader458, %.lr.ph.split.us.split.us.split
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph.split.us.split.us.split ], [ %indvars.iv254.ph, %.lr.ph.split.us.split.us.split.preheader458 ] ; 6 uses
  %gep294 = getelementptr [2 x i8], ptr %invariant.gep293, i64 %indvars.iv254
  %i.le = load i16, ptr %gep294, align 2, !tbaa !45 ; 2 uses
  %i.lf = zext i16 %i.le to i32
  %gep296 = getelementptr [2 x i8], ptr %invariant.gep295, i64 %indvars.iv254
  %i.lg = load i16, ptr %gep296, align 2, !tbaa !45
  %i.lh = zext i16 %i.lg to i32                   ; 2 uses
  %gep298 = getelementptr [2 x i8], ptr %invariant.gep297, i64 %indvars.iv254
  %i.li = load i16, ptr %gep298, align 2, !tbaa !45
  %i.lj = zext i16 %i.li to i32                   ; 2 uses
  %i.lk = sub nsw i32 %i.lh, %i.lj
  %gep300 = getelementptr [2 x i8], ptr %invariant.gep299, i64 %indvars.iv254
  %i.ll = load i16, ptr %gep300, align 2, !tbaa !45
  %i.lm = zext i16 %i.ll to i32
  %i.ln = sub nsw i32 %i.lm, %i.lh
  %i.lo = sub nsw i32 %i.lj, %i.lf
  %i.lp = mul nsw i32 %i.lk, %i.ar
  %i.lq = mul nsw i32 %i.ln, %i.aq
  %i.lr = mul nsw i32 %i.lo, %i.ap
  %i.ls = add i32 %i.lp, 32769
  %i.lt = add i32 %i.ls, %i.lq
  %i.lu = add i32 %i.lt, %i.lr                    ; 2 uses
  %i.lv = ashr i32 %i.lu, 16
  %i.lw = add nsw i32 %i.lv, %i.lu
  %i.lx = lshr i32 %i.lw, 16
  %i.ly = trunc nuw i32 %i.lx to i16
  %i.lz = add i16 %i.le, %i.ly
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv254
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !45
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split, !llvm.loop !171

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader460, %.lr.ph.split.us.split
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.lr.ph.split.us.split ], [ %indvars.iv249.ph, %.lr.ph.split.us.split.preheader460 ] ; 6 uses
end_hunk_1
