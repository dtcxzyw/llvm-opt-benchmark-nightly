Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuNarrowPhase?download=true
inline.NumInlined: 1268
inline.NumDeleted: 521
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN16b3GpuNarrowPhase17registerRigidBodyEifPKfS1_S1_S1_b:bb.a
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw [80 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.an, ptr noundef nonnull align 16 dereferenceable(80) %i.ap, i64 80, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !2

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i.i, %bb.e
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
  store i32 0, ptr %i.y, align 4, !tbaa !120
  br label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod168 = trunc i32 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i.epil.init
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.aq, ptr noundef nonnull align 16 dereferenceable(80) %i.as, i64 80, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.ae, %.split.i.i ], [ %i.ae, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.ae, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.x, %.split.i.i ], [ %i.x, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !119 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !118, !range !112, !noundef !113
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.au)
  br label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i.i: ; preds = %bb.h, %bb.g, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i8 1, ptr %i.ay, align 8, !tbaa !118
  store ptr %.0.i12.i.i, ptr %i.at, align 8, !tbaa !119
  store i32 %.0.i.i, ptr %i.aa, align 8, !tbaa !121
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i.i, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.ba = sext i32 %i.z to i64                    ; 4 uses
  %wide.trip.count.i = sext i32 %i.x to i64       ; 3 uses
  %i.bb = sub nsw i64 %wide.trip.count.i, %i.ba
  %xtraiter169 = and i64 %i.bb, 3                 ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !119
  %i.bd = getelementptr inbounds [80 x i8], ptr %i.bc, i64 %indvars.iv.i.prol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bd, i8 0, i64 80, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter169
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !522

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ba, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.be = sub nsw i64 %i.ba, %wide.trip.count.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !119
  %i.bh = getelementptr inbounds [80 x i8], ptr %i.bg, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bh, i8 0, i64 80, i1 false)
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !119
  %i.bj = getelementptr [80 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bk, i8 0, i64 80, i1 false)
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !119
  %i.bm = getelementptr [80 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bn, i8 0, i64 80, i1 false)
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !119
  %i.bp = getelementptr [80 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bq, i8 0, i64 80, i1 false)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new, !llvm.loop !3

_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit.loopexit: ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 336
  %.pre151 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !122
  %.phi.trans.insert152 = getelementptr inbounds nuw i8, ptr %.pre, i64 372
  %.pre153 = load i32, ptr %.phi.trans.insert152, align 4, !tbaa !196
  br label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit

_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit: ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit.loopexit, %bb.c
  %i.br = phi i32 [ %.pre153, %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit.loopexit ], [ %i.n, %bb.c ]
  %i.bs = phi ptr [ %.pre151, %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit.loopexit ], [ %i.w, %bb.c ]
  store i32 %i.x, ptr %i.y, align 4, !tbaa !120
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !119
  %i.bv = sext i32 %i.br to i64
  %i.bw = getelementptr inbounds [80 x i8], ptr %i.bu, i64 %i.bv ; 11 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.bx, align 8, !tbaa !163
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.by, i8 0, i64 32, i1 false)
  %i.bz = load <2 x float>, ptr %3, align 4, !tbaa !163
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !163
  %.sroa.3.12.vec.insert.i66 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.bz, ptr %i.bw, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i66, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !138
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cg = load float, ptr %4, align 4, !tbaa !163
  store float %i.cg, ptr %i.cc, align 16, !tbaa !138
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !163
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 20 ; 2 uses
  store float %i.ch, ptr %i.ci, align 4, !tbaa !138
  %i.cj = load float, ptr %i.ce, align 4, !tbaa !163
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store float %i.cj, ptr %i.ck, align 8, !tbaa !138
  %i.cl = load float, ptr %i.cf, align 4, !tbaa !163
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 28 ; 2 uses
  store float %i.cl, ptr %i.cm, align 4, !tbaa !138
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  store i32 %1, ptr %i.cn, align 16, !tbaa !527
  %i.co = icmp sgt i32 %1, -1
  br i1 %i.co, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 372
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !196
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit, %bb.i
  %i.ct = fcmp une float %2, 0.000000e+00
  %i.cu = fdiv float 1.000000e+00, %2
  %i.cv = select i1 %i.ct, float %i.cu, float 0.000000e+00
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 68
  store float %i.cv, ptr %i.cw, align 4, !tbaa !528
  br i1 %7, label %bb.k, label %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 372
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !196 ; 2 uses
  %.not.i = icmp eq i32 %i.cz, -1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 344
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !150 ; 2 uses
  %i.dd = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !219
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 40 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !251
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !254
  %i.di = mul nsw i64 %i.da, 80
  %i.dj = tail call i32 %i.dd(ptr noundef %i.df, ptr noundef %i.dh, i32 noundef 0, i64 noundef %i.di, i64 noundef 80, ptr noundef nonnull %i.bw, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !20 ; 0 uses
  %i.dk = load ptr, ptr @__clewFinish, align 8, !tbaa !219
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !251
  %i.dm = tail call i32 %i.dk(ptr noundef %i.dl), !inline_history !20 ; 0 uses
  br label %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 258)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
  br label %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.m, %bb.l, %bb.j
  %i.dn = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 352
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !130
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 372
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !196 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !127
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds [96 x i8], ptr %i.dt, i64 %i.du ; 18 uses
  %i.dw = fcmp oeq float %2, 0.000000e+00
  br i1 %i.dw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit
  %i.dx = icmp eq i32 %i.dr, 0
  br i1 %i.dx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.dy, align 8, !tbaa !41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.dv, i8 0, i64 96, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit
  %i.dz = fsub <3 x float> %i.h, %i.d
  %i.ea = fsub <3 x float> %i.j, %i.f
  %i.eb = fdiv float %2, 1.200000e+01
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 52
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 92
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !138
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.sroa.985.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.ej = fmul <3 x float> %i.dz, splat (float 2.000000e+00) ; 3 uses
  %i.ek = fmul <3 x float> %i.ea, splat (float 2.000000e+00) ; 2 uses
  %i.el = shufflevector <3 x float> %i.ej, <3 x float> %i.ek, <3 x i32> <i32 1, i32 4, i32 4>
  %i.em = fmul <3 x float> %i.ek, %i.el
  %i.en = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ej, <3 x float> %i.ej, <3 x float> %i.em)
  %i.eo = insertelement <3 x float> poison, float %i.eb, i64 0
  %i.ep = shufflevector <3 x float> %i.eo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eq = fmul <3 x float> %i.ep, %i.en
  %i.er = fdiv <3 x float> splat (float 1.000000e+00), %i.eq ; 4 uses
  %i.es = extractelement <3 x float> %i.er, i64 1 ; 3 uses
  store float %i.es, ptr %i.ec, align 16, !tbaa !138
  %i.et = extractelement <3 x float> %i.er, i64 2 ; 3 uses
  store float %i.et, ptr %i.ee, align 4, !tbaa !138
  %i.eu = extractelement <3 x float> %i.er, i64 0 ; 3 uses
  store float %i.eu, ptr %i.eg, align 8, !tbaa !138
  %i.ev = load <2 x float>, ptr %i.cc, align 16, !tbaa !138 ; 5 uses
  %i.ew = load <2 x float>, ptr %i.ci, align 4, !tbaa !138 ; 2 uses
  %i.ex = extractelement <2 x float> %i.ev, i64 1 ; 3 uses
  %i.ey = fmul float %i.ex, %i.ex
  %i.ez = extractelement <2 x float> %i.ev, i64 0 ; 2 uses
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.ey)
  %i.fb = extractelement <2 x float> %i.ew, i64 1 ; 3 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fa)
  %i.fd = load float, ptr %i.cm, align 4, !tbaa !138 ; 3 uses
  %i.fe = tail call noundef float @llvm.fmuladd.f32(float %i.fd, float %i.fd, float %i.fc)
  %i.ff = fdiv float 2.000000e+00, %i.fe
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0 ; 2 uses
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.ew, %i.fh           ; 4 uses
  %i.fj = insertelement <2 x float> poison, float %i.fd, i64 0 ; 2 uses
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %i.fk, %i.fi
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.fn = shufflevector <2 x float> %i.fg, <2 x float> %i.fi, <2 x i32> <i32 0, i32 2>
  %i.fo = fmul <2 x float> %i.ev, %i.fn           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ev, %i.fo ; 2 uses
  %i.fp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fq = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fq, %i.fi           ; 4 uses
  %i.fs = extractelement <2 x float> %i.fi, i64 1 ; 2 uses
  %i.ft = fmul float %i.ex, %i.fs                 ; 2 uses
  %i.fu = fmul float %i.fb, %i.fs                 ; 2 uses
  %i.fv = extractelement <2 x float> %i.fo, i64 1
  %i.fw = fadd float %i.fv, %i.fu
  %i.fx = fsub float 1.000000e+00, %i.fw          ; 4 uses
  %foldExtExtBinop164 = fsub <2 x float> %i.fr, %i.fm ; 3 uses
  %i.fy = shufflevector <2 x float> %foldExtExtBinop164, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fz = extractelement <2 x float> %foldExtExtBinop164, i64 0 ; 2 uses
  %foldExtExtBinop166 = fadd <2 x float> %i.fr, %i.fm ; 3 uses
  %i.ga = extractelement <2 x float> %foldExtExtBinop166, i64 1 ; 2 uses
  %i.gb = fadd float %i.fp, %i.fu
  %i.gc = fadd <2 x float> %i.fr, %i.fm           ; 3 uses
  %i.gd = fsub <2 x float> %i.fr, %i.fm           ; 2 uses
  %i.ge = shufflevector <2 x float> %i.gc, <2 x float> %i.gd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gf = shufflevector <2 x float> %i.fj, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gg = fmul <2 x float> %i.gf, %i.fo           ; 2 uses
  %i.gh = fadd <2 x float> %i.gf, %i.fo
  %i.gi = shufflevector <2 x float> %i.gg, <2 x float> %i.gh, <2 x i32> <i32 0, i32 3>
  %i.gj = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ft, i64 1 ; 2 uses
  %i.gk = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gl = insertelement <2 x float> %i.gk, float %i.gb, i64 0 ; 2 uses
  %i.gm = fsub <2 x float> %i.gj, %i.gl           ; 2 uses
  %i.gn = fadd <2 x float> %i.gj, %i.gl           ; 2 uses
  %i.go = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ft, i64 0
  %i.gq = fsub <2 x float> %i.gp, %i.gi           ; 5 uses
  %i.gr = fmul float %i.es, %i.fx                 ; 2 uses
  %i.gs = fmul float %i.et, %i.fz                 ; 2 uses
  %i.gt = fmul float %i.eu, %i.ga                 ; 3 uses
  %i.gu = shufflevector <2 x float> %i.gq, <2 x float> %i.gc, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.gv = shufflevector <2 x float> %i.go, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.gw = shufflevector <3 x float> %i.gu, <3 x float> %i.gv, <3 x i32> <i32 0, i32 1, i32 3>
  %i.gx = fmul <3 x float> %i.er, %i.gw           ; 6 uses
  %i.gy = extractelement <2 x float> %i.gd, i64 1 ; 2 uses
  %i.gz = extractelement <2 x float> %i.gn, i64 1 ; 2 uses
  %i.ha = extractelement <2 x float> %i.gq, i64 1 ; 3 uses
  %i.hb = fmul float %i.fz, %i.gs
  %i.hc = extractelement <2 x float> %i.gq, i64 0
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.gr, float %i.hb)
  %i.he = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hf = insertelement <4 x float> %i.he, float %i.gs, i64 1
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.hi = shufflevector <3 x float> %i.gv, <3 x float> %i.gx, <4 x i32> <i32 poison, i32 0, i32 1, i32 5>
  %i.hj = insertelement <4 x float> %i.hi, float 1.000000e+00, i64 0
  %i.hk = fmul <4 x float> %i.hh, %i.hj
  %i.hl = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.hm = insertelement <4 x float> %i.hl, float %i.gr, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.fx, i64 3
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.hp = shufflevector <2 x float> %i.ge, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.hq = shufflevector <3 x float> %i.hp, <3 x float> %i.gx, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.hr = shufflevector <2 x float> %foldExtExtBinop166, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> %i.hq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.hs, <4 x float> %i.hk) ; 4 uses
  %i.hu = extractelement <4 x float> %i.ht, i64 1
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %i.hc, float %i.gt, float %i.hu)
  %i.hw = extractelement <4 x float> %i.ht, i64 2
  %i.hx = tail call noundef float @llvm.fmuladd.f32(float %i.ha, float %i.gt, float %i.hw)
  %i.hy = extractelement <3 x float> %i.gx, i64 0
  %i.hz = extractelement <4 x float> %i.ht, i64 3
  %i.ia = tail call noundef float @llvm.fmuladd.f32(float %i.ga, float %i.hy, float %i.hz)
  %i.ib = shufflevector <3 x float> %i.gx, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ic = fmul <2 x float> %i.go, %i.ib
  %i.id = shufflevector <3 x float> %i.gx, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.id, <2 x float> %i.ic)
  %i.if = shufflevector <3 x float> %i.gx, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.if, <2 x float> %i.ie)
  %8 = extractelement <4 x float> %i.ht, i64 0
  store float %8, ptr %i.dv, align 16
  store float %i.hv, ptr %.sroa.483.0..sroa_idx, align 4
  store float %i.hx, ptr %.sroa.5.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.684.0..sroa_idx, align 4, !tbaa !138
  store float %i.ia, ptr %i.ei, align 16
  store <2 x float> %i.ig, ptr %.sroa.985.16..sroa_idx, align 4
  %.sroa.1186.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  store float 0.000000e+00, ptr %.sroa.1186.16..sroa_idx, align 4, !tbaa !138
  %9 = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ih = fmul float %i.et, %i.gz                 ; 2 uses
  %10 = fmul float %i.es, %i.gy                   ; 2 uses
  %11 = fmul float %i.eu, %i.ha                   ; 2 uses
  %12 = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %13 = shufflevector <2 x float> %foldExtExtBinop164, <2 x float> %12, <2 x i32> <i32 0, i32 3>
  %14 = insertelement <2 x float> poison, float %i.ih, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x float> %13, %15
  %17 = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %18 = insertelement <2 x float> %17, float %i.fx, i64 0
  %19 = insertelement <2 x float> poison, float %10, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %20, <2 x float> %16)
  %22 = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %23 = shufflevector <2 x float> %22, <2 x float> %foldExtExtBinop166, <2 x i32> <i32 3, i32 1>
  %24 = insertelement <2 x float> poison, float %11, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %25, <2 x float> %21)
  %27 = fmul float %i.gz, %i.ih
  %28 = tail call float @llvm.fmuladd.f32(float %i.gy, float %10, float %27)
  %29 = tail call noundef float @llvm.fmuladd.f32(float %i.ha, float %11, float %28)
  store <2 x float> %26, ptr %9, align 16
  %.sroa.1587.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store float %29, ptr %.sroa.1587.32..sroa_idx, align 8
  %.sroa.1688.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  store float 0.000000e+00, ptr %.sroa.1688.32..sroa_idx, align 4, !tbaa !138
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %7, label %bb.s, label %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit

bb.s:                                             ; preds = %bb.r
  %i.ii = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 372
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !196 ; 2 uses
  %.not.i69 = icmp eq i32 %i.ik, -1
  br i1 %.not.i69, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 360
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !133 ; 2 uses
  %i.io = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !219
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 40 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !230
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !233
  %i.it = mul nsw i64 %i.il, 96
  %i.iu = tail call i32 %i.io(ptr noundef %i.iq, ptr noundef %i.is, i32 noundef 0, i64 noundef %i.it, i64 noundef 96, ptr noundef nonnull %i.dv, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !21 ; 0 uses
  %i.iv = load ptr, ptr @__clewFinish, align 8, !tbaa !219
  %i.iw = load ptr, ptr %i.ip, align 8, !tbaa !230
  %i.ix = tail call i32 %i.iv(ptr noundef %i.iw), !inline_history !21 ; 0 uses
  br label %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit

bb.u:                                             ; preds = %bb.s
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 258)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
  br label %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.u, %bb.t, %bb.r
  %i.iy = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 372 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !196 ; 2 uses
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !196
  br label %bb.v

bb.v:                                             ; preds = %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.ja, %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK16b3GpuNarrowPhase17getNumRigidBodiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.d = load i32, ptr %i.c, align 4, !tbaa !196
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16b3GpuNarrowPhase19writeAllBodiesToGpuEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !146
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  tail call void @_ZN13b3OpenCLArrayI9b3SapAabbE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.h, ptr noundef nonnull align 8 dereferenceable(25) %i.d, i1 noundef zeroext true)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !157
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  tail call void @_ZN13b3OpenCLArrayI15b3GpuChildShapeE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.k, ptr noundef nonnull align 8 dereferenceable(25) %i.l, i1 noundef zeroext true)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  tail call void @_ZN13b3OpenCLArrayI9b3GpuFaceE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.o, ptr noundef nonnull align 8 dereferenceable(25) %i.p, i1 noundef zeroext true)
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @_ZN13b3OpenCLArrayI22b3ConvexPolyhedronDataE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.s, ptr noundef nonnull align 8 dereferenceable(25) %i.t, i1 noundef zeroext true)
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  tail call void @_ZN13b3OpenCLArrayI9b3Vector3E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.w, ptr noundef nonnull align 8 dereferenceable(25) %i.x, i1 noundef zeroext true)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !172
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  tail call void @_ZN13b3OpenCLArrayI9b3Vector3E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.aa, ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i1 noundef zeroext true)
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !173
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  tail call void @_ZN13b3OpenCLArrayIiE12copyFromHostERK20b3AlignedObjectArrayIiEb(ptr noundef nonnull align 8 dereferenceable(50) %i.ae, ptr noundef nonnull align 8 dereferenceable(25) %i.af, i1 noundef zeroext true)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 592
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !213
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 560
  tail call void @_ZN13b3OpenCLArrayI9b3BvhInfoE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.ai, ptr noundef nonnull align 8 dereferenceable(25) %i.aj, i1 noundef zeroext true)
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 600
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !208
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 496
  tail call void @_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.am, ptr noundef nonnull align 8 dereferenceable(25) %i.an, i1 noundef zeroext true)
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 608
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !203
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 528
  tail call void @_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.aq, ptr noundef nonnull align 8 dereferenceable(25) %i.ar, i1 noundef zeroext true)
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !150
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 372
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !196
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call noundef zeroext i1 @_ZN13b3OpenCLArrayI15b3RigidBodyDataE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.au, i64 noundef %i.ax, i1 noundef zeroext true) ; 0 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 360
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !133
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 372
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !196
  %i.be = sext i32 %i.bd to i64
  %i.bf = tail call noundef zeroext i1 @_ZN13b3OpenCLArrayI13b3InertiaDataE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.bb, i64 noundef %i.be, i1 noundef zeroext true) ; 0 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 372
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !196 ; 2 uses
  %.not1 = icmp eq i32 %i.bi, 0
  br i1 %.not1, label %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit, label %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 344
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !150 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 336
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !122
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !119
  %i.bp = sext i32 %i.bi to i64
  %i.bq = mul nsw i64 %i.bp, 80
  %i.br = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !219
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !251
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !254
  %i.bw = tail call i32 %i.br(ptr noundef %i.bt, ptr noundef %i.bv, i32 noundef 0, i64 noundef 0, i64 noundef %i.bq, ptr noundef nonnull %i.bo, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !20 ; 0 uses
  %i.bx = load ptr, ptr @__clewFinish, align 8, !tbaa !219
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !251
  %i.bz = tail call i32 %i.bx(ptr noundef %i.by), !inline_history !20 ; 0 uses
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 372
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !196 ; 2 uses
  %.not.i3 = icmp eq i32 %i.cc, 0
  br i1 %.not.i3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 352
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !130
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !127
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 360
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !133 ; 2 uses
  %i.ck = mul nsw i64 %i.cd, 96
  %i.cl = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !219
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !230
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !233
  %i.cq = tail call i32 %i.cl(ptr noundef %i.cn, ptr noundef %i.cp, i32 noundef 0, i64 noundef 0, i64 noundef %i.ck, ptr noundef nonnull %i.ch, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !21 ; 0 uses
  %i.cr = load ptr, ptr @__clewFinish, align 8, !tbaa !219
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !230
  %i.ct = tail call i32 %i.cr(ptr noundef %i.cs), !inline_history !21 ; 0 uses
  br label %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit

bb.e:                                             ; preds = %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 258)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
  br label %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 380
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !136
  %.not2 = icmp eq i32 %i.cw, 0
end_hunk_0
