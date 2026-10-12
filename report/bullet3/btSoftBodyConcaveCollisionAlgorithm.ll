Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyConcaveCollisionAlgorithm?download=true
inline.NumInlined: 428
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_:bb.a
  %.0.i.i.i1943 = ptrtoaddr ptr %.0.i.i.i19 to i64
  %wide.trip.count.i.i.i23 = zext nneg i32 %i.ce to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ce, 8
  %i.cj = sub i64 %i.ci, %.0.i.i.i1943
  %diff.check = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i22
  %n.vec = and i64 %wide.trip.count.i.i.i23, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <4 x i32>, ptr %i.cl, align 4, !tbaa !175
  %wide.load44 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !175
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x i32> %wide.load, ptr %i.ck, align 4, !tbaa !175
  store <4 x i32> %wide.load44, ptr %i.cn, align 4, !tbaa !175
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i23
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i22, %middle.block
  %indvars.iv.i.i.i24.ph = phi i64 [ 0, %.lr.ph.i.i.i22 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter47 = and i64 %wide.trip.count.i.i.i23, 3 ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i24.prol = phi i64 [ %indvars.iv.next.i.i.i25.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i24.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.i.i.i24.prol
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i24.prol
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !175
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25.prol = add nuw nsw i64 %indvars.iv.i.i.i24.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter47
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !210

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i24.unr = phi i64 [ %indvars.iv.i.i.i24.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i25.prol, %scalar.ph.prol ]
  %i.cs = sub nsw i64 %indvars.iv.i.i.i24.ph, %wide.trip.count.i.i.i23
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i24 = phi i64 [ %indvars.iv.next.i.i.i25.3, %scalar.ph ], [ %indvars.iv.i.i.i24.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.i.i.i24
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i24
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !175
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25 = add nuw nsw i64 %indvars.iv.i.i.i24, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i25
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i25
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !175
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25.1 = add nuw nsw i64 %indvars.iv.i.i.i24, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i25.1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i25.1
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !175
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25.2 = add nuw nsw i64 %indvars.iv.i.i.i24, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i25.2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i25.2
  %i.df = load i32, ptr %i.de, align 4, !tbaa !175
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25.3 = add nuw nsw i64 %indvars.iv.i.i.i24, 4 ; 2 uses
  %exitcond.not.i.i.i26.3 = icmp eq i64 %indvars.iv.next.i.i.i25.3, %wide.trip.count.i.i.i23
  br i1 %exitcond.not.i.i.i26.3, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !211

_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE8allocateEi.exit.i.i
  %.not.i5.i.i20 = icmp eq ptr %i.ch, null
  br i1 %.not.i5.i.i20, label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !50, !range !169, !noundef !180
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ch)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.bt, align 4, !tbaa !52
  br label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i: ; preds = %bb.o, %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i
  %.pre2.i21 = phi i32 [ %.pre2.pre.i, %bb.o ], [ %i.ce, %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.dj, align 8, !tbaa !50
  store ptr %.0.i.i.i19, ptr %i.cg, align 8, !tbaa !51
  store i32 %i.bz, ptr %i.bv, align 8, !tbaa !53
  br label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit: ; preds = %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit, %bb.k, %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i
  %i.dk = phi i32 [ %.pre2.i21, %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i ], [ %i.bu, %bb.k ], [ %i.bu, %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !51
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %1, align 4, !tbaa !175
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !175
  %i.dq = load i32, ptr %i.bt, align 4, !tbaa !52
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.bt, align 4, !tbaa !52
  %i.ds = load i32, ptr %i.o, align 8, !tbaa !49
  %i.dt = icmp slt i32 %i.p, %i.ds
  br i1 %i.dt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit
  tail call void @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.du = load i32, ptr %1, align 4, !tbaa !174   ; 2 uses
  %i.dv = shl i32 %i.du, 15
  %i.dw = xor i32 %i.dv, -1
  %i.dx = add i32 %i.du, %i.dw                    ; 2 uses
  %i.dy = lshr i32 %i.dx, 10
  %i.dz = xor i32 %i.dy, %i.dx
  %i.ea = mul i32 %i.dz, 9                        ; 2 uses
  %i.eb = lshr i32 %i.ea, 6
  %i.ec = xor i32 %i.eb, %i.ea                    ; 2 uses
  %i.ed = shl i32 %i.ec, 11
  %i.ee = xor i32 %i.ed, -1
  %i.ef = add i32 %i.ec, %i.ee                    ; 2 uses
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = xor i32 %i.eg, %i.ef
  %i.ei = load i32, ptr %i.o, align 8, !tbaa !49
  %i.ej = add nsw i32 %i.ei, -1
  %i.ek = and i32 %i.eh, %i.ej
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit
  %.0 = phi i32 [ %i.ek, %bb.p ], [ %i.r, %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !43
  %i.en = sext i32 %.0 to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !175
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !43
  %i.es = sext i32 %i.al to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  store i32 %i.ep, ptr %i.et, align 4, !tbaa !175
  store i32 %i.al, ptr %i.eo, align 4, !tbaa !175
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK9btHashMapI9btHashKeyI10btTriIndexES1_E9findIndexERKS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfPK24btCollisionObjectWrapperRK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(220) initializes((24, 64), (72, 84)) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %4) local_unnamed_addr #8 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %6 = alloca %class.btVector3, align 16          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %3, ptr %i.a, align 8, !tbaa !41
  %i.b = fadd float %1, 6.000000e-02
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store float %i.b, ptr %i.c, align 8, !tbaa !218
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.d, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(2064) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !219, !nonnull !180, !align !220 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.q = load float, ptr %i.n, align 4, !tbaa !172, !noalias !221 ; 4 uses
  %i.r = load float, ptr %i.o, align 4, !tbaa !172, !noalias !221 ; 3 uses
  %i.s = load float, ptr %i.p, align 4, !tbaa !172, !noalias !221 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.w = fmul float %i.r, 0.000000e+00            ; 2 uses
  %i.x = fadd float %i.q, %i.w
  %i.y = call noundef float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.x)
  %i.z = call float @llvm.fmuladd.f32(float %i.q, float 0.000000e+00, float %i.r)
  %i.aa = call noundef float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.z)
  %i.ab = call float @llvm.fmuladd.f32(float %i.q, float 0.000000e+00, float %i.w)
  %i.ac = fadd float %i.s, %i.ab
  %7 = load float, ptr %i.c, align 8, !tbaa !218
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = call noundef float @llvm.fabs.f32(float %i.y)
  %i.ag = call noundef float @llvm.fabs.f32(float %i.aa)
  %i.ah = call noundef float @llvm.fabs.f32(float %i.ac)
  %i.ai = load <3 x float>, ptr %6, align 16, !tbaa !172 ; 2 uses
  %i.aj = load <3 x float>, ptr %5, align 16, !tbaa !172 ; 2 uses
  %i.ak = fsub <3 x float> %i.ai, %i.aj
  %i.al = fmul <3 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = fadd <3 x float> %i.ai, %i.aj
  %i.an = fmul <3 x float> %i.am, splat (float 5.000000e-01) ; 4 uses
  %i.ao = load <2 x float>, ptr %i.k, align 4, !tbaa !172, !noalias !221 ; 5 uses
  %i.ap = load <2 x float>, ptr %i.l, align 4, !tbaa !172, !noalias !221 ; 4 uses
  %i.aq = load <2 x float>, ptr %i.m, align 4, !tbaa !172, !noalias !221 ; 5 uses
  %i.ar = load float, ptr %i.t, align 4, !tbaa !172, !noalias !222
  %i.as = fneg float %i.ar                        ; 2 uses
  %i.at = load float, ptr %i.u, align 4, !tbaa !172, !noalias !222
  %i.au = fneg float %i.at                        ; 2 uses
  %i.av = load float, ptr %i.v, align 4, !tbaa !172, !noalias !222
  %i.aw = fneg float %i.av                        ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.ap, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.bb, <2 x float> %i.az)
  %i.bd = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = fmul <2 x float> %i.ap, zeroinitializer ; 2 uses
  %i.bh = fadd <2 x float> %i.ao, %i.bg
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> zeroinitializer, <2 x float> %i.bh)
  %i.bj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.ap)
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> zeroinitializer, <2 x float> %i.bj)
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.bg)
  %i.bm = fadd <2 x float> %i.aq, %i.bl
  %i.bn = shufflevector <3 x float> %i.an, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.ap
  %i.bp = shufflevector <3 x float> %i.an, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.ao, <2 x float> %i.bo)
  %i.br = shufflevector <3 x float> %i.an, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.aq, <2 x float> %i.bq)
  %i.bt = insertelement <2 x float> %i.bn, float %i.au, i64 1
  %i.bu = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bt, %i.bv
  %i.bx = insertelement <2 x float> %i.bp, float %i.as, i64 1
  %i.by = insertelement <2 x float> poison, float %i.q, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bz, <2 x float> %i.bw)
  %i.cb = shufflevector <3 x float> %i.an, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cc = insertelement <2 x float> %i.cb, float %i.aw, i64 1
  %i.cd = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %i.ca) ; 2 uses
  %i.cg = fadd <2 x float> %i.bs, %i.bf           ; 2 uses
  %shift = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cf, %shift
  %i.ch = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %8 = insertelement <3 x float> poison, float %7, i64 0
  %i.ci = shufflevector <3 x float> %8, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cj = fadd <3 x float> %i.al, %i.ci           ; 6 uses
  %i.ck = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bi)
  %i.cl = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bk)
  %i.cm = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bm)
  %i.cn = shufflevector <3 x float> %i.cj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.co = fmul <2 x float> %i.cl, %i.cn
  %i.cp = shufflevector <3 x float> %i.cj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.ck, <2 x float> %i.co)
  %i.cr = shufflevector <3 x float> %i.cj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cm, <2 x float> %i.cq) ; 2 uses
  %i.ct = extractelement <3 x float> %i.cj, i64 1
  %i.cu = fmul float %i.ag, %i.ct
  %i.cv = extractelement <3 x float> %i.cj, i64 0
  %i.cw = call float @llvm.fmuladd.f32(float %i.cv, float %i.af, float %i.cu)
  %i.cx = extractelement <3 x float> %i.cj, i64 2
  %i.cy = call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.ah, float %i.cw) ; 2 uses
  %i.cz = fsub <2 x float> %i.cg, %i.cs
  %i.da = fsub float %i.ch, %i.cy
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.da, i64 0
  store <2 x float> %i.cz, ptr %i.ad, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !184
  %i.db = fadd <2 x float> %i.cg, %i.cs
  %i.dc = fadd float %i.ch, %i.cy
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dc, i64 0
  store <2 x float> %i.db, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %.sroa.4.0..sroa_idx.i22, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 888
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !155  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !157  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 68 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !161  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph31.i.i, label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i

.lr.ph31.i.i:                                     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph31.i.i
  %i.q = phi i32 [ %i.n, %.lr.ph31.i.i ], [ %i.aa, %._crit_edge.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph31.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !164  ; 2 uses
  %.not24.i.i = icmp eq ptr %i.t, null
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.h
  %.027.i.i = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.c ] ; 4 uses
  %.01926.i.i = phi ptr [ %.1.i.i, %bb.h ], [ null, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 288
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 280
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i.i
  %.not23.i.i = icmp eq ptr %.01926.i.i, null
  br i1 %.not23.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01926.i.i, i64 288
  store ptr %i.v, ptr %i.z, align 8, !tbaa !166
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.v, ptr %i.s, align 8, !tbaa !164
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.027.i.i, i64 noundef 296) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.01926.i.i, %bb.g ], [ %.027.i.i, %.lr.ph.i.i ]
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre.i.i = load i32, ptr %i.m, align 4, !tbaa !161
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.aa = phi i32 [ %i.q, %bb.c ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i.i, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i, !llvm.loop !1

_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i: ; preds = %._crit_edge.i.i
  %.pr.i = load ptr, ptr %i.k, align 8, !tbaa !157
  br label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i

_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i: ; preds = %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i, %bb.b
  %i.ad = phi ptr [ %.pr.i, %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i ], [ %i.l, %bb.b ] ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #14, !inline_history !170
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !48
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit, !llvm.loop !2

_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit: ; preds = %bb.j, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.al)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !169, !noundef !180
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr %1, ptr %2           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !185
  %i.i = add i32 %i.h, -21
  %i.j = icmp ult i32 %i.i, 9
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef float %i.m(ptr noundef nonnull align 8 dereferenceable(36) %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfPK24btCollisionObjectWrapperRK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(220) %i.o, float noundef %i.n, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %4)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr noundef nonnull %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %struct.LocalTriangleSphereCastCallback, align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !169, !noundef !180
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load float, ptr %i.e, align 4, !tbaa !172 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !172
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !172 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !172 ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.n = fsub float %i.g, %i.m                    ; 2 uses
  %i.o = fsub float %i.i, %i.l                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN15btTriangleShapeD0Ev:bb.a
_ZN15btTriangleShapedlEPv.exit:                   ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #1

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15btTriangleShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %1, ptr %i.a, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load float, ptr %i.a, align 8, !tbaa !191
  ret float %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 56
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21btConvexInternalShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load float, ptr %i.b, align 8, !tbaa !172
  store float %i.d, ptr %i.c, align 4, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load float, ptr %i.e, align 4, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.f, ptr %i.g, align 4, !tbaa !172
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load float, ptr %i.h, align 8, !tbaa !172
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.i, ptr %i.j, align 4, !tbaa !172
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !172
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.l, ptr %i.m, align 4, !tbaa !172
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load float, ptr %i.n, align 8, !tbaa !172
  store float %i.p, ptr %i.o, align 4, !tbaa !172
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load float, ptr %i.q, align 4, !tbaa !172
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !172
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load float, ptr %i.t, align 8, !tbaa !172
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.u, ptr %i.v, align 4, !tbaa !172
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load float, ptr %i.w, align 4, !tbaa !172
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.x, ptr %i.y, align 4, !tbaa !172
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load float, ptr %i.z, align 8, !tbaa !191
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.aa, ptr %i.ab, align 8, !tbaa !259
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.ac, align 4, !tbaa !260
  ret ptr @.str.1
}

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load <4 x float>, ptr %i.f, align 8
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load float, ptr %i.i, align 8, !tbaa !172
  %i.k = load float, ptr %1, align 4, !tbaa !172  ; 2 uses
  %i.l = load float, ptr %i.d, align 4, !tbaa !172 ; 2 uses
  %i.m = load <2 x float>, ptr %i.a, align 8, !tbaa !172 ; 2 uses
  %i.n = load float, ptr %i.e, align 4, !tbaa !172 ; 2 uses
  %i.o = load <2 x float>, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.l, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = shufflevector <2 x float> %i.m, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = fmul <2 x float> %i.q, %i.r
  %i.t = insertelement <2 x float> poison, float %i.k, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x float> %i.m, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.v, <2 x float> %i.s)
  %i.x = insertelement <2 x float> poison, float %i.n, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x float> %i.h, float %i.j, i64 1
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.z, <2 x float> %i.w) ; 2 uses
  %i.ab = load float, ptr %i.c, align 8, !tbaa !172
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !172
  %i.ae = fmul float %i.l, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.k, float %i.ab, float %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !172
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.ah, float %i.af)
  %i.aj = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ak = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.al = fcmp olt float %i.aj, %i.ak             ; 2 uses
  %..i = select i1 %i.al, float %i.ak, float %i.aj
  %i.am = fcmp olt float %..i, %i.ai
  %i.an = zext i1 %i.al to i64
  %i.ao = select i1 %i.am, i64 2, i64 %i.an
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ap, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !184
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare void @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %4 = load float, ptr %i.e, align 8, !tbaa !172
  %i.l = load float, ptr %i.f, align 8, !tbaa !172
  %i.m = load float, ptr %i.i, align 4, !tbaa !172 ; 2 uses
  %i.n = load float, ptr %i.j, align 4, !tbaa !172 ; 2 uses
  %i.o = load <2 x float>, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %i.p = load float, ptr %i.k, align 4, !tbaa !172 ; 2 uses
  %i.q = load <2 x float>, ptr %i.c, align 8, !tbaa !172 ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = shufflevector <2 x float> %i.o, <2 x float> %i.q, <2 x i32> <i32 1, i32 3>
  %i.u = fmul <2 x float> %i.s, %i.t
  %i.v = insertelement <2 x float> poison, float %i.m, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x float> %i.o, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.x, <2 x float> %i.u)
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = insertelement <2 x float> poison, float %4, i64 0
  %i.ab = insertelement <2 x float> %5, float %i.l, i64 1
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ab, <2 x float> %i.y) ; 2 uses
  %i.ad = load float, ptr %i.d, align 8, !tbaa !172
  %i.ae = load float, ptr %i.g, align 4, !tbaa !172
  %i.af = fmul float %i.n, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ad, float %i.af)
  %i.ah = load float, ptr %i.h, align 8, !tbaa !172
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.ah, float %i.ag)
  %i.aj = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.ak = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.al = fcmp olt float %i.aj, %i.ak             ; 2 uses
  %..i = select i1 %i.al, float %i.ak, float %i.aj
  %i.am = fcmp olt float %..i, %i.ai
  %i.an = zext i1 %i.al to i64
  %i.ao = select i1 %i.am, i64 2, i64 %i.an
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !192
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !261
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load float, ptr %i.b, align 8, !tbaa !172
  %i.d = load float, ptr %i.a, align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load float, ptr %i.g, align 8, !tbaa !172
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !172 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !172 ; 3 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.c, i64 1
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !172 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.h, i64 1
  %i.u = fsub <2 x float> %i.t, %i.p              ; 2 uses
  %i.v = fsub <2 x float> %i.r, %i.k              ; 2 uses
  %i.w = fneg <2 x float> %i.v
  %i.x = fmul <2 x float> %i.q, %i.w
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.u, <2 x float> %i.x) ; 4 uses
  %i.z = extractelement <2 x float> %i.u, i64 1
  %i.aa = fneg float %i.z
  %i.ab = extractelement <2 x float> %i.l, i64 0
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.ac) ; 4 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !184
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.y
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ah = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.y, %i.am            ; 2 uses
  store <2 x float> %i.an, ptr %2, align 4, !tbaa !172
  %i.ao = fmul float %i.af, %i.ak                 ; 2 uses
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !172
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = fneg <2 x float> %i.an
  store <2 x float> %i.ap, ptr %2, align 4, !tbaa !172
  %i.aq = fneg float %i.ao
  store float %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !172
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN23btPolyhedralConvexShape28initializePolyhedralFeaturesEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) unnamed_addr #1

declare void @_ZN23btPolyhedralConvexShape21setPolyhedralFeaturesER18btConvexPolyhedron(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape14getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape11getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.d = add nsw i32 %1, 1
  %i.e = srem i32 %i.d, 3
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape9getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !192
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape12getNumPlanesEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape8getPlaneER9btVector3S1_i(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK15btTriangleShape8isInsideERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 16          ; 12 uses
  %4 = alloca %class.btVector3, align 16          ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load <3 x float>, ptr %i.b, align 8, !tbaa !172
  %i.f = load float, ptr %i.c, align 4, !tbaa !172
  %i.g = load <3 x float>, ptr %i.a, align 8, !tbaa !172 ; 4 uses
  %i.h = fsub <3 x float> %i.e, %i.g              ; 2 uses
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.j = load <3 x float>, ptr %i.d, align 8, !tbaa !172
  %i.k = fsub <3 x float> %i.j, %i.g              ; 2 uses
  %i.l = fneg <3 x float> %i.k
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.n = fmul <3 x float> %i.h, %i.m
  %i.o = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.i, <3 x float> %i.k, <3 x float> %i.n) ; 5 uses
  %foldExtExtBinop = fmul <3 x float> %i.o, %i.o
  %i.p = extractelement <3 x float> %foldExtExtBinop, i64 0
  %i.q = extractelement <3 x float> %i.o, i64 2   ; 2 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.p)
  %i.s = extractelement <3 x float> %i.o, i64 1   ; 2 uses
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.t)
  %i.u = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.v = insertelement <3 x float> poison, float %i.u, i64 0
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <3 x i32> zeroinitializer
  %i.x = fmul <3 x float> %i.o, %i.w              ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !172
  %i.aa = load <2 x float>, ptr %1, align 4, !tbaa !172 ; 2 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %i.f, i64 1
  %i.ad = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = shufflevector <3 x float> %i.g, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = shufflevector <2 x float> %i.aa, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.ah = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ah, <2 x float> %i.ae)
  %i.aj = shufflevector <3 x float> %i.g, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ak = insertelement <2 x float> %i.aj, float %i.z, i64 0
  %i.al = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.al, <2 x float> %i.ai) ; 2 uses
end_hunk_1
