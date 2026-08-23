Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_erkstep?download=true
inline.NumInlined: 15
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@erkStep_FullRHS:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !85
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !86
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.eg, ptr noundef %3) #12
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !49
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !81
  store ptr %3, ptr %i.j, align 8, !tbaa !86
  store i32 1, ptr %i.b, align 4, !tbaa !98
  call void @erkStep_ApplyForcing(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.b)
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !98
  %i.el = tail call i32 @N_VLinearCombination(i32 noundef %i.ek, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef %3) #12 ; 0 uses
  br label %bb.aa

bb.t:                                             ; preds = %bb.b
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !83 ; 2 uses
  %.not61 = icmp eq ptr %i.en, null
  br i1 %.not61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !84
  %i.eq = tail call i32 %i.en(double noundef %1, ptr noundef %2, ptr noundef %i.ep) #12
  %.not62 = icmp eq i32 %i.eq, 0
  br i1 %.not62, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !84
  %i.eu = tail call i32 %i.er(double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.et) #12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !87
  %i.ex = add nsw i64 %i.ew, 1
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !87
  %.not63 = icmp eq i32 %i.eu, 0
  br i1 %.not63, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 700, ptr noundef nonnull @__func__.erkStep_FullRHS, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, double noundef %1) #12
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !49
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !81
  store ptr %3, ptr %i.j, align 8, !tbaa !86
  store i32 1, ptr %i.b, align 4, !tbaa !98
  call void @erkStep_ApplyForcing(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.b)
  %i.fb = load i32, ptr %i.b, align 4, !tbaa !98
  %i.fc = tail call i32 @N_VLinearCombination(i32 noundef %i.fb, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef %3) #12 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 718, ptr noundef nonnull @__func__.erkStep_FullRHS, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #12
  br label %bb.aa

bb.aa:                                            ; preds = %erkStep_AccessStepMem.exit, %._crit_edge.i, %bb.h, %bb.r, %bb.s, %bb.k, %bb.y, %bb.x, %bb.u, %bb.n, %bb.e, %bb.z, %bb.w, %bb.p, %bb.g
  %.0 = phi i32 [ -8, %bb.w ], [ -8, %bb.z ], [ -41, %bb.u ], [ -21, %erkStep_AccessStepMem.exit ], [ -8, %bb.g ], [ -41, %bb.e ], [ -8, %bb.p ], [ -41, %bb.n ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.k ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.h ], [ 0, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @erkStep_TakeStep(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i32 0, ptr %2, align 4, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 15 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %erkStep_AccessStepMem.exit, label %bb.b

erkStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 1269, ptr noundef nonnull @__func__.erkStep_TakeStep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #12
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = tail call i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef %i.h) #12
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !99
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !82
  %.not152 = icmp eq i32 %i.p, 0
  br i1 %.not152, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.r = load i32, ptr %i.q, align 4, !tbaa !100
  %.not153 = icmp eq i32 %i.r, 0
  %i.s = zext i1 %.not153 to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.w = load double, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.ab = tail call i32 %i.u(ptr noundef nonnull %0, double noundef %i.w, ptr noundef %i.y, ptr noundef %i.aa, i32 noundef %i.s) #12
  %.not154 = icmp eq i32 %i.ab, 0
  br i1 %.not154, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.o, align 8, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %.not155 = icmp eq ptr %i.ad, null
  br i1 %.not155, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !101
  %i.ai = call i32 @SUNAdjointCheckpointScheme_NeedsSaving(ptr noundef nonnull %i.ad, i64 noundef %i.af, i64 noundef 0, double noundef %i.ah, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not156 = icmp eq i32 %i.ai, 0
  br i1 %.not156, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 805, ptr noundef nonnull @__func__.erkStep_TakeStep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef %i.ai) #12
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !98
  %.not157 = icmp eq i32 %i.aj, 0
  br i1 %.not157, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !105
  %i.am = load double, ptr %i.ag, align 8, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !102
  %i.ap = call i32 @SUNAdjointCheckpointScheme_InsertVector(ptr noundef %i.ak, i64 noundef %i.al, i64 noundef 0, double noundef %i.am, ptr noundef %i.ao) #12 ; 2 uses
  %.not158 = icmp eq i32 %i.ap, 0
  br i1 %.not158, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 821, ptr noundef nonnull @__func__.erkStep_TakeStep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.22, i32 noundef %i.ap) #12
  br label %.critedge

bb.k:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 15 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 6 uses
  %i.bf = icmp ne i32 %i.i, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %scevgep243 = getelementptr i8, ptr %0, i64 928 ; 2 uses
  %scevgep288.a = getelementptr i8, ptr %0, i64 744
  %bound0292 = icmp ult ptr %i.k, %scevgep288.a
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ae
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.ae ] ; 3 uses
  %indvars.iv218 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next219, %bb.ae ] ; 23 uses
  %i.bm = shl nuw nsw i64 %indvars.iv218, 3       ; 4 uses
  %i.bn = load double, ptr %i.at, align 8, !tbaa !101
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !55  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106 ; 8 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv218
  %i.bs = load double, ptr %i.br, align 8, !tbaa !81
  %i.bt = load double, ptr %i.au, align 8, !tbaa !107
  %i.bu = call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bn)
  store double %i.bu, ptr %i.av, align 8, !tbaa !108
  %i.bv = trunc nuw nsw i64 %indvars.iv218 to i32
  store i32 %i.bv, ptr %i.n, align 8, !tbaa !99
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !109
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv218
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !110 ; 13 uses
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !85 ; 6 uses
  %min.iters.check304 = icmp samesign ult i64 %indvars.iv218, 6
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.memcheck286

vector.memcheck286:                               ; preds = %bb.m
  %i.cb = shl nuw nsw i64 %indvars.iv218, 3       ; 4 uses
  %scevgep290.a = getelementptr i8, ptr %i.m, i64 %i.cb
  %scevgep287 = getelementptr i8, ptr %i.k, i64 %i.cb ; 2 uses
  %scevgep289 = getelementptr i8, ptr %i.bz, i64 %i.cb
  %scevgep291 = getelementptr i8, ptr %i.ca, i64 %i.cb
  %bound1293 = icmp ult ptr %i.au, %scevgep287
  %found.conflict294 = and i1 %bound0292, %bound1293
  %bound0295 = icmp ult ptr %i.k, %scevgep289
  %bound1296 = icmp ult ptr %i.bz, %scevgep287
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx298 = or i1 %found.conflict294, %found.conflict297
  %bound0299 = icmp ult ptr %i.m, %scevgep291
  %bound1300 = icmp ult ptr %i.ca, %scevgep290.a
  %found.conflict301 = and i1 %bound0299, %bound1300
  %conflict.rdx302 = or i1 %conflict.rdx298, %found.conflict301
  br i1 %conflict.rdx302, label %scalar.ph303.preheader, label %vector.ph305

vector.ph305:                                     ; preds = %vector.memcheck286
  %n.vec306 = and i64 %indvars.iv218, 9223372036854775804 ; 4 uses
  %i.cc = load double, ptr %i.au, align 8, !tbaa !107, !alias.scope !111
  %broadcast.splatinsert311 = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat312 = shufflevector <2 x double> %broadcast.splatinsert311, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next315, %vector.body307 ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index308 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load309.a = load <2 x double>, ptr %i.cd, align 8, !tbaa !81, !alias.scope !114
  %wide.load310 = load <2 x double>, ptr %i.ce, align 8, !tbaa !81, !alias.scope !114
  %i.cf = fmul <2 x double> %broadcast.splat312, %wide.load309.a
  %i.cg = fmul <2 x double> %broadcast.splat312, %wide.load310
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index308 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x double> %i.cf, ptr %i.ch, align 8, !tbaa !81, !alias.scope !116, !noalias !118
  store <2 x double> %i.cg, ptr %i.ci, align 8, !tbaa !81, !alias.scope !116, !noalias !118
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index308 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load313.a = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !86, !alias.scope !119
  %wide.load314 = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !86, !alias.scope !119
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index308 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x ptr> %wide.load313.a, ptr %i.cl, align 8, !tbaa !86, !alias.scope !121, !noalias !119
  store <2 x ptr> %wide.load314, ptr %i.cm, align 8, !tbaa !86, !alias.scope !121, !noalias !119
  %index.next315 = add nuw i64 %index308, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next315, %n.vec306
  br i1 %i.cn, label %middle.block316, label %vector.body307, !llvm.loop !123

middle.block316:                                  ; preds = %vector.body307
  %ind.escape = add nsw i64 %n.vec306, -1
  %cmp.n317 = icmp eq i64 %indvars.iv218, %n.vec306
  br i1 %cmp.n317, label %.loopexit319, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %vector.memcheck286, %bb.m, %middle.block316
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck286 ], [ 0, %bb.m ], [ %n.vec306, %middle.block316 ] ; 8 uses
  %xtraiter = and i64 %indvars.iv218, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph303.prol.loopexit, label %scalar.ph303.prol

scalar.ph303.prol:                                ; preds = %scalar.ph303.preheader
  %i.co = load double, ptr %i.au, align 8, !tbaa !107
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.ph
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !81
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph
  store double %i.cr, ptr %i.cs, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.ph
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !86
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.ph
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !86
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph303.prol.loopexit

scalar.ph303.prol.loopexit:                       ; preds = %scalar.ph303.prol, %scalar.ph303.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph303.preheader ], [ %indvars.iv.next.prol, %scalar.ph303.prol ]
  %i.cw = icmp eq i64 %indvar, %indvars.iv.ph
  br i1 %i.cw, label %.loopexit319, label %scalar.ph303

scalar.ph303:                                     ; preds = %scalar.ph303.prol.loopexit, %scalar.ph303
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph303 ], [ %indvars.iv.unr, %scalar.ph303.prol.loopexit ] ; 6 uses
  %i.cx = load double, ptr %i.au, align 8, !tbaa !107
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !81
  %i.da = fmul double %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.da, ptr %i.db, align 8, !tbaa !81
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !86
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.df = load double, ptr %i.au, align 8, !tbaa !107
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !81
  %i.di = fmul double %i.df, %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store double %i.di, ptr %i.dj, align 8, !tbaa !81
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !86
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !86
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %indvars.iv218
  br i1 %exitcond.not.1, label %.loopexit319, label %scalar.ph303, !llvm.loop !124

.loopexit319:                                     ; preds = %scalar.ph303.prol.loopexit, %scalar.ph303, %middle.block316
  %indvars.iv.lcssa = phi i64 [ %ind.escape, %middle.block316 ], [ %indvars.iv.ph, %scalar.ph303.prol.loopexit ], [ %indvars.iv.next, %scalar.ph303 ]
  %i.dn = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv218
  store double 1.000000e+00, ptr %i.do, align 8, !tbaa !81
  %i.dp = load ptr, ptr %i.ax, align 8, !tbaa !102
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv218
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !86
  %i.dr = add nuw nsw i32 %i.dn, 2                ; 3 uses
  %i.ds = load i32, ptr %i.ay, align 8, !tbaa !49 ; 6 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.preheader, label %bb.n

.preheader:                                       ; preds = %.loopexit319
  %i.du = load ptr, ptr %i.az, align 8, !tbaa !76 ; 10 uses
  %i.dv = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 10 uses
  %min.iters.check270 = icmp samesign ult i64 %indvars.iv218, 10
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %i.du, i64 %i.bm ; 4 uses
  %scevgep242 = getelementptr i8, ptr %i.dv, i64 %i.bm ; 4 uses
  %scevgep244 = getelementptr i8, ptr %i.bq, i64 %i.bm ; 2 uses
  %scevgep245 = getelementptr i8, ptr %i.bz, i64 %i.bm ; 2 uses
  %bound0 = icmp ult ptr %i.du, %scevgep242
  %bound1 = icmp ult ptr %i.dv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0246 = icmp ult ptr %i.du, %scevgep243
  %bound1247 = icmp ult ptr %i.au, %scevgep
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx = or i1 %found.conflict, %found.conflict248
  %bound0249 = icmp ult ptr %i.du, %scevgep244
  %bound1250 = icmp ult ptr %i.bq, %scevgep
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx, %found.conflict251
  %bound0253 = icmp ult ptr %i.du, %scevgep245
  %bound1254 = icmp ult ptr %i.bz, %scevgep
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  %bound0257 = icmp ult ptr %i.dv, %scevgep243
  %bound1258 = icmp ult ptr %i.au, %scevgep242
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %conflict.rdx256, %found.conflict259
  %bound0261 = icmp ult ptr %i.dv, %scevgep244
  %bound1262 = icmp ult ptr %i.bq, %scevgep242
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %i.dv, %scevgep245
  %bound1266 = icmp ult ptr %i.bz, %scevgep242
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx264, %found.conflict267
  br i1 %conflict.rdx268, label %scalar.ph269.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %vector.memcheck241
  %n.vec272 = and i64 %indvars.iv218, 9223372036854775806 ; 3 uses
  %i.dw = load double, ptr %i.at, align 8, !tbaa !101, !alias.scope !125
  %broadcast.splatinsert276 = insertelement <2 x double> poison, double %i.dw, i64 0
  %broadcast.splat277 = shufflevector <2 x double> %broadcast.splatinsert276, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = load double, ptr %i.au, align 8, !tbaa !107, !alias.scope !125 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert279 = insertelement <2 x double> poison, double %i.dx, i64 0
  %broadcast.splat280 = shufflevector <2 x double> %broadcast.splatinsert279, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next281, %vector.body273 ] ; 5 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index274
  %wide.load275 = load <2 x double>, ptr %i.dy, align 8, !tbaa !81, !alias.scope !128
  %i.dz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load275, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat277)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index274
  store <2 x double> %i.dz, ptr %i.ea, align 8, !tbaa !81, !alias.scope !130, !noalias !132
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index274
  %wide.load278 = load <2 x double>, ptr %i.eb, align 8, !tbaa !81, !alias.scope !135
  %i.ec = fmul <2 x double> %broadcast.splat280, %wide.load278
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index274
  store <2 x double> %i.ec, ptr %i.ed, align 8, !tbaa !81, !alias.scope !136, !noalias !137
  %index.next281 = add nuw i64 %index274, 2       ; 2 uses
  %i.ee = icmp eq i64 %index.next281, %n.vec272
  br i1 %i.ee, label %middle.block282, label %vector.body273, !llvm.loop !138

middle.block282:                                  ; preds = %vector.body273
  %cmp.n283 = icmp eq i64 %indvars.iv218, %n.vec272
  br i1 %cmp.n283, label %.lr.ph.preheader.i, label %scalar.ph269.preheader

scalar.ph269.preheader:                           ; preds = %vector.memcheck241, %.preheader, %middle.block282
  %indvars.iv213.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %.preheader ], [ %n.vec272, %middle.block282 ] ; 7 uses
  %xtraiter324.a = and i64 %indvars.iv218, 1
  %lcmp.mod325.not.a = icmp eq i64 %xtraiter324.a, 0
  br i1 %lcmp.mod325.not.a, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol

scalar.ph269.prol:                                ; preds = %scalar.ph269.preheader
  %i.ef = load double, ptr %i.at, align 8, !tbaa !101
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv213.ph
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !81
  %i.ei = load double, ptr %i.au, align 8, !tbaa !107
  %i.ej = call double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double %i.ef)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv213.ph
  store double %i.ej, ptr %i.ek, align 8, !tbaa !81
  %i.el = load double, ptr %i.au, align 8, !tbaa !107
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv213.ph
  %i.en = load double, ptr %i.em, align 8, !tbaa !81
  %i.eo = fmul double %i.el, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv213.ph
  store double %i.eo, ptr %i.ep, align 8, !tbaa !81
  %indvars.iv.next214.prol = or disjoint i64 %indvars.iv213.ph, 1
  br label %scalar.ph269.prol.loopexit

scalar.ph269.prol.loopexit:                       ; preds = %scalar.ph269.prol, %scalar.ph269.preheader
  %indvars.iv213.unr = phi i64 [ %indvars.iv213.ph, %scalar.ph269.preheader ], [ %indvars.iv.next214.prol, %scalar.ph269.prol ]
  %i.eq = icmp eq i64 %indvar, %indvars.iv213.ph
  br i1 %i.eq, label %.lr.ph.preheader.i, label %scalar.ph269

scalar.ph269:                                     ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269
  %indvars.iv213 = phi i64 [ %indvars.iv.next214.1, %scalar.ph269 ], [ %indvars.iv213.unr, %scalar.ph269.prol.loopexit ] ; 6 uses
  %i.er = load double, ptr %i.at, align 8, !tbaa !101
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv213
  %i.et = load double, ptr %i.es, align 8, !tbaa !81
  %i.eu = load double, ptr %i.au, align 8, !tbaa !107
  %i.ev = call double @llvm.fmuladd.f64(double %i.et, double %i.eu, double %i.er)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv213
  store double %i.ev, ptr %i.ew, align 8, !tbaa !81
  %i.ex = load double, ptr %i.au, align 8, !tbaa !107
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv213
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !81
  %i.fa = fmul double %i.ex, %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv213
  store double %i.fa, ptr %i.fb, align 8, !tbaa !81
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 4 uses
  %i.fc = load double, ptr %i.at, align 8, !tbaa !101
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next214
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !81
  %i.ff = load double, ptr %i.au, align 8, !tbaa !107
  %i.fg = call double @llvm.fmuladd.f64(double %i.fe, double %i.ff, double %i.fc)
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next214
  store double %i.fg, ptr %i.fh, align 8, !tbaa !81
  %i.fi = load double, ptr %i.au, align 8, !tbaa !107
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next214
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !81
  %i.fl = fmul double %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.next214
  store double %i.fl, ptr %i.fm, align 8, !tbaa !81
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213, 2 ; 2 uses
  %exitcond217.not.1 = icmp eq i64 %indvars.iv.next214.1, %indvars.iv218
  br i1 %exitcond217.not.1, label %.lr.ph.preheader.i, label %scalar.ph269, !llvm.loop !139

.lr.ph.preheader.i:                               ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269, %middle.block282
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !72  ; 5 uses
  %i.fo = load ptr, ptr %i.l, align 8, !tbaa !74  ; 5 uses
  %i.fp = load double, ptr %i.bb, align 8, !tbaa !88
  %i.fq = load double, ptr %i.bc, align 8, !tbaa !89
  %i.fr = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 5 uses
  %i.fs = zext nneg i32 %i.dr to i64              ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.ds to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ds, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.ft = ptrtoaddr ptr %i.fr to i64
  %i.fu = ptrtoaddr ptr %i.fo to i64
  %i.fv = sub i64 %i.fu, %i.ft
  %i.fw = shl nuw nsw i64 %i.fs, 3
  %op.rdx = add i64 %i.fv, %i.fw
  %op.rdx320 = add i64 %op.rdx, -1
  %diff.check = icmp ult i64 %op.rdx320, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fx = add nuw nsw i64 %index, %i.fs           ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x double> zeroinitializer, ptr %i.fy, align 8, !tbaa !81
  store <2 x double> zeroinitializer, ptr %i.fz, align 8, !tbaa !81
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ga, align 8, !tbaa !86
  %wide.load240 = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !86
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fx ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store <2 x ptr> %wide.load, ptr %i.gc, align 8, !tbaa !86
  store <2 x ptr> %wide.load240, ptr %i.gd, align 8, !tbaa !86
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter326.a = and i64 %wide.trip.count.i, 1
  %lcmp.mod327.not.a = icmp eq i64 %xtraiter326.a, 0
  br i1 %lcmp.mod327.not.a, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.gf = add nuw nsw i64 %indvars.iv.i.ph, %i.fs ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.gf
  store double 0.000000e+00, ptr %i.gg, align 8, !tbaa !81
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.i.ph
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !86
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.gf
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !86
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.gk = add nsw i64 %wide.trip.count.i, -1
  %i.gl = icmp eq i64 %indvars.iv.i.ph, %i.gk
  br i1 %i.gl, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.fn, i64 %i.fs ; 3 uses
  %xtraiter328 = and i64 %wide.trip.count.i, 1
  %i.gm = icmp eq i32 %i.ds, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  %lcmp.mod330 = trunc i32 %i.ds to i1
  br label %.lr.ph43.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.gn = add nuw nsw i64 %indvars.iv.i, %i.fs    ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.gn
  store double 0.000000e+00, ptr %i.go, align 8, !tbaa !81
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !86
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.gn
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !86
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gs = add nuw nsw i64 %indvars.iv.next.i, %i.fs ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.gs
  store double 0.000000e+00, ptr %i.gt, align 8, !tbaa !81
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next.i
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !86
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.gs
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !86
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader.i, label %.lr.ph.i, !llvm.loop !141

.lr.ph43.i:                                       ; preds = %._crit_edge.i, %.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv53.i
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !81
  %i.gz = fsub double %i.gy, %i.fp
  %i.ha = fdiv double %i.gz, %i.fq                ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv53.i ; 3 uses
  br i1 %i.gm, label %.epil.preheader, label %.lr.ph43.i.new

.lr.ph43.i.new:                                   ; preds = %.lr.ph43.i, %.lr.ph43.i.new
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i.1, %.lr.ph43.i.new ], [ 0, %.lr.ph43.i ] ; 3 uses
  %.03841.i = phi double [ %i.hk, %.lr.ph43.i.new ], [ 1.000000e+00, %.lr.ph43.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph43.i.new ], [ 0, %.lr.ph43.i ]
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !81
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv48.i ; 2 uses
  %i.hd = load double, ptr %gep.i, align 8, !tbaa !81
  %i.he = call double @llvm.fmuladd.f64(double %i.hc, double %.03841.i, double %i.hd)
  store double %i.he, ptr %gep.i, align 8, !tbaa !81
  %i.hf = fmul double %i.ha, %.03841.i            ; 2 uses
  %i.hg = load double, ptr %i.hb, align 8, !tbaa !81
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv48.i
  %gep.i.1 = getelementptr i8, ptr %i.hh, i64 8   ; 2 uses
  %i.hi = load double, ptr %gep.i.1, align 8, !tbaa !81
  %i.hj = call double @llvm.fmuladd.f64(double %i.hg, double %i.hf, double %i.hi)
  store double %i.hj, ptr %gep.i.1, align 8, !tbaa !81
  %i.hk = fmul double %i.ha, %i.hf                ; 2 uses
  %indvars.iv.next49.i.1 = add nuw nsw i64 %indvars.iv48.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph43.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph43.i.new
  br i1 %lcmp.mod329.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph43.i
  %indvars.iv48.i.epil.init = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next49.i.1, %._crit_edge.i.unr-lcssa ]
  %.03841.i.epil.init = phi double [ 1.000000e+00, %.lr.ph43.i ], [ %i.hk, %._crit_edge.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod330)
  %i.hl = load double, ptr %i.hb, align 8, !tbaa !81
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv48.i.epil.init ; 2 uses
  %i.hm = load double, ptr %gep.i.epil, align 8, !tbaa !81
  %i.hn = call double @llvm.fmuladd.f64(double %i.hl, double %.03841.i.epil.init, double %i.hm)
  store double %i.hn, ptr %gep.i.epil, align 8, !tbaa !81
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %indvars.iv218
  br i1 %exitcond57.not.i, label %erkStep_ApplyForcing.exit, label %.lr.ph43.i

erkStep_ApplyForcing.exit:                        ; preds = %._crit_edge.i
  %i.ho = add nuw nsw i32 %i.ds, %i.dr
  br label %bb.n

bb.n:                                             ; preds = %erkStep_ApplyForcing.exit, %.loopexit319
  %.1 = phi i32 [ %i.ho, %erkStep_ApplyForcing.exit ], [ %i.dr, %.loopexit319 ]
  %i.hp = load ptr, ptr %i.be, align 8, !tbaa !142
  %i.hq = call i32 @N_VLinearCombination(i32 noundef %.1, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.hp) #12
  %.not163 = icmp eq i32 %i.hq, 0
  br i1 %.not163, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.hr = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.hs = add nsw i32 %i.hr, -1
  %i.ht = zext i32 %i.hs to i64
  %i.hu = icmp eq i64 %indvars.iv218, %i.ht
  %or.cond = select i1 %i.hu, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.hv = load ptr, ptr %i.bg, align 8, !tbaa !143 ; 2 uses
  %.not164 = icmp eq ptr %i.hv, null
  br i1 %.not164, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hw = load double, ptr %i.av, align 8, !tbaa !108
  %i.hx = load ptr, ptr %i.be, align 8, !tbaa !142
  %i.hy = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.hz = call i32 %i.hv(double noundef %i.hw, ptr noundef %i.hx, ptr noundef %i.hy) #12
  %.not167 = icmp eq i32 %i.hz, 0
  br i1 %.not167, label %bb.t, label %.loopexit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ia = load ptr, ptr %i.bi, align 8, !tbaa !144 ; 2 uses
  %.not165 = icmp eq ptr %i.ia, null
  br i1 %.not165, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ib = load double, ptr %i.av, align 8, !tbaa !108
  %i.ic = load ptr, ptr %i.be, align 8, !tbaa !142
  %i.id = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.ie = call i32 %i.ia(double noundef %i.ib, ptr noundef %i.ic, ptr noundef %i.id) #12
  %.not166 = icmp eq i32 %i.ie, 0
  br i1 %.not166, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.if = load ptr, ptr %i.bj, align 8, !tbaa !83 ; 2 uses
  %.not168 = icmp eq ptr %i.if, null
  br i1 %.not168, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ig = load double, ptr %i.av, align 8, !tbaa !108
  %i.ih = load ptr, ptr %i.be, align 8, !tbaa !142
  %i.ii = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.ij = call i32 %i.if(double noundef %i.ig, ptr noundef %i.ih, ptr noundef %i.ii) #12
  %.not169 = icmp eq i32 %i.ij, 0
  br i1 %.not169, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ik = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.il = load double, ptr %i.av, align 8, !tbaa !108
  %i.im = load ptr, ptr %i.be, align 8, !tbaa !142
  %i.in = load ptr, ptr %i.aw, align 8, !tbaa !85
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv218
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !86
  %i.iq = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.ir = call i32 %i.ik(double noundef %i.il, ptr noundef %i.im, ptr noundef %i.ip, ptr noundef %i.iq) #12 ; 2 uses
end_hunk_0
