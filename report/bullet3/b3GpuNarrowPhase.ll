Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuNarrowPhase?download=true
inline.NumInlined: 1268
inline.NumDeleted: 521
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN16b3GpuNarrowPhase17registerRigidBodyEifPKfS1_S1_S1_b:bb.a
  br i1 %.not149, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE6resizeEiRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !121
  %.not150 = icmp sgt i32 %i.ab, %i.n
  br i1 %.not150, label %.lr.ph.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i.i: ; preds = %bb.e
  %i.ac = sext i32 %i.x to i64
  %i.ad = mul nsw i64 %i.ac, 80
  %i.ae = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ad, i32 noundef 16) ; 7 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i.i
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !120 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.aj = icmp eq i32 %i.ag, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.al, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ak, ptr noundef nonnull align 16 dereferenceable(80) %i.am, i64 80, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %indvars.iv.next.i.i.i
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
  %8 = fcmp oeq float %2, 0.000000e+00            ; 2 uses
  %i.ct = fdiv float 1.000000e+00, %2
  %i.cu = select i1 %8, float 0.000000e+00, float %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 68
  store float %i.cu, ptr %i.cv, align 4, !tbaa !528
  br i1 %7, label %bb.k, label %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit

bb.k:                                             ; preds = %bb.j
  %i.cw = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 372
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !196 ; 2 uses
  %.not.i = icmp eq i32 %i.cy, -1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 344
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !150 ; 2 uses
  %i.dc = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !219
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !251
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !254
  %i.dh = mul nsw i64 %i.cz, 80
  %i.di = tail call i32 %i.dc(ptr noundef %i.de, ptr noundef %i.dg, i32 noundef 0, i64 noundef %i.dh, i64 noundef 80, ptr noundef nonnull %i.bw, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !20 ; 0 uses
  %i.dj = load ptr, ptr @__clewFinish, align 8, !tbaa !219
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !251
  %i.dl = tail call i32 %i.dj(ptr noundef %i.dk), !inline_history !20 ; 0 uses
  br label %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 258)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
  br label %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.m, %bb.l, %bb.j
  %i.dm = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 352
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !130
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 372
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !196 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !127
  %i.dt = sext i32 %i.dq to i64
  %i.du = getelementptr inbounds [96 x i8], ptr %i.ds, i64 %i.dt ; 19 uses
  br i1 %8, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit
  %i.dv = icmp eq i32 %i.dq, 0
  br i1 %i.dv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.dw, align 8, !tbaa !41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.du, i8 0, i64 96, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %_ZN13b3OpenCLArrayI15b3RigidBodyDataE19copyFromHostPointerEPKS0_mmb.exit
  %i.dx = fsub <3 x float> %i.h, %i.d
  %i.dy = fsub <3 x float> %i.j, %i.f
  %i.dz = fdiv float %2, 1.200000e+01
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 52
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eb, i8 0, i64 16, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 92
  store float 0.000000e+00, ptr %i.ef, align 4, !tbaa !138
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %.sroa.985.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  %i.eh = fmul <3 x float> %i.dx, splat (float 2.000000e+00) ; 3 uses
  %i.ei = fmul <3 x float> %i.dy, splat (float 2.000000e+00) ; 2 uses
  %i.ej = shufflevector <3 x float> %i.eh, <3 x float> %i.ei, <3 x i32> <i32 1, i32 4, i32 4>
  %i.ek = fmul <3 x float> %i.ei, %i.ej
  %i.el = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eh, <3 x float> %i.eh, <3 x float> %i.ek)
  %i.em = insertelement <3 x float> poison, float %i.dz, i64 0
  %i.en = shufflevector <3 x float> %i.em, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eo = fmul <3 x float> %i.en, %i.el
  %i.ep = fdiv <3 x float> splat (float 1.000000e+00), %i.eo ; 4 uses
  %i.eq = extractelement <3 x float> %i.ep, i64 1 ; 3 uses
  store float %i.eq, ptr %i.ea, align 16, !tbaa !138
  %i.er = extractelement <3 x float> %i.ep, i64 2 ; 3 uses
  store float %i.er, ptr %i.ec, align 4, !tbaa !138
  %i.es = extractelement <3 x float> %i.ep, i64 0 ; 3 uses
  store float %i.es, ptr %i.ee, align 8, !tbaa !138
  %i.et = load <2 x float>, ptr %i.cc, align 16, !tbaa !138 ; 5 uses
  %i.eu = load <2 x float>, ptr %i.ci, align 4, !tbaa !138 ; 2 uses
  %i.ev = extractelement <2 x float> %i.et, i64 1 ; 3 uses
  %i.ew = fmul float %i.ev, %i.ev
  %i.ex = extractelement <2 x float> %i.et, i64 0 ; 2 uses
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.ew)
  %i.ez = extractelement <2 x float> %i.eu, i64 1 ; 3 uses
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.ey)
  %i.fb = load float, ptr %i.cm, align 4, !tbaa !138 ; 3 uses
  %i.fc = tail call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fa)
  %i.fd = fdiv float 2.000000e+00, %i.fc
  %i.fe = insertelement <2 x float> poison, float %i.fd, i64 0 ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x float> %i.eu, %i.ff           ; 4 uses
  %i.fh = insertelement <2 x float> poison, float %i.fb, i64 0 ; 2 uses
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.fi, %i.fg
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.fl = shufflevector <2 x float> %i.fe, <2 x float> %i.fg, <2 x i32> <i32 0, i32 2>
  %i.fm = fmul <2 x float> %i.et, %i.fl           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.et, %i.fm ; 2 uses
  %i.fn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fo = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.fo, %i.fg           ; 4 uses
  %i.fq = extractelement <2 x float> %i.fg, i64 1 ; 2 uses
  %i.fr = fmul float %i.ev, %i.fq                 ; 2 uses
  %i.fs = fmul float %i.ez, %i.fq                 ; 2 uses
  %i.ft = extractelement <2 x float> %i.fm, i64 1
  %i.fu = fadd float %i.ft, %i.fs
  %i.fv = fsub float 1.000000e+00, %i.fu          ; 4 uses
  %foldExtExtBinop164 = fsub <2 x float> %i.fp, %i.fk ; 2 uses
  %i.fw = shufflevector <2 x float> %foldExtExtBinop164, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fx = extractelement <2 x float> %foldExtExtBinop164, i64 0 ; 3 uses
  %foldExtExtBinop166 = fadd <2 x float> %i.fp, %i.fk ; 2 uses
  %i.fy = extractelement <2 x float> %foldExtExtBinop166, i64 1 ; 3 uses
  %i.fz = fadd float %i.fn, %i.fs
  %i.ga = fadd <2 x float> %i.fp, %i.fk           ; 3 uses
  %i.gb = fsub <2 x float> %i.fp, %i.fk           ; 2 uses
  %i.gc = shufflevector <2 x float> %i.ga, <2 x float> %i.gb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fh, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ge = fmul <2 x float> %i.gd, %i.fm           ; 2 uses
  %i.gf = fadd <2 x float> %i.gd, %i.fm
  %i.gg = shufflevector <2 x float> %i.ge, <2 x float> %i.gf, <2 x i32> <i32 0, i32 3>
  %i.gh = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.fr, i64 1 ; 2 uses
  %i.gi = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gj = insertelement <2 x float> %i.gi, float %i.fz, i64 0 ; 2 uses
  %i.gk = fsub <2 x float> %i.gh, %i.gj           ; 2 uses
  %i.gl = fadd <2 x float> %i.gh, %i.gj           ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gk, <2 x float> %i.gl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.fr, i64 0
  %i.go = fsub <2 x float> %i.gn, %i.gg           ; 4 uses
  %i.gp = fmul float %i.eq, %i.fv                 ; 2 uses
  %i.gq = fmul float %i.er, %i.fx                 ; 2 uses
  %i.gr = fmul float %i.es, %i.fy                 ; 3 uses
  %i.gs = shufflevector <2 x float> %i.go, <2 x float> %i.ga, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.gt = shufflevector <2 x float> %i.gm, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.gu = shufflevector <3 x float> %i.gs, <3 x float> %i.gt, <3 x i32> <i32 0, i32 1, i32 3>
  %i.gv = fmul <3 x float> %i.ep, %i.gu           ; 6 uses
  %i.gw = extractelement <2 x float> %i.gb, i64 1 ; 2 uses
  %i.gx = fmul float %i.eq, %i.gw                 ; 3 uses
  %i.gy = extractelement <2 x float> %i.gl, i64 1 ; 2 uses
  %i.gz = fmul float %i.er, %i.gy                 ; 3 uses
  %i.ha = extractelement <2 x float> %i.go, i64 1 ; 3 uses
  %i.hb = fmul float %i.es, %i.ha                 ; 3 uses
  %i.hc = fmul float %i.fx, %i.gq
  %i.hd = extractelement <2 x float> %i.gk, i64 0
  %i.he = extractelement <2 x float> %i.ga, i64 0
  %i.hf = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.gp, float %i.hc)
  %i.hh = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hi = insertelement <4 x float> %i.hh, float %i.gq, i64 1
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.hk = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.hl = shufflevector <3 x float> %i.gt, <3 x float> %i.gv, <4 x i32> <i32 poison, i32 0, i32 1, i32 5>
  %i.hm = insertelement <4 x float> %i.hl, float 1.000000e+00, i64 0
  %i.hn = fmul <4 x float> %i.hk, %i.hm
  %i.ho = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.gp, i64 1
  %i.hq = insertelement <4 x float> %i.hp, float %i.fv, i64 3
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.hs = shufflevector <2 x float> %i.gc, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ht = shufflevector <3 x float> %i.hs, <3 x float> %i.gv, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.hu = shufflevector <2 x float> %foldExtExtBinop166, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> %i.ht, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hr, <4 x float> %i.hv, <4 x float> %i.hn) ; 4 uses
  %i.hx = extractelement <4 x float> %i.hw, i64 1
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.hf, float %i.gr, float %i.hx)
  %i.hz = extractelement <4 x float> %i.hw, i64 2
  %i.ia = tail call noundef float @llvm.fmuladd.f32(float %i.ha, float %i.gr, float %i.hz)
  %i.ib = extractelement <3 x float> %i.gv, i64 0
  %i.ic = extractelement <4 x float> %i.hw, i64 3
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.fy, float %i.ib, float %i.ic)
  %i.ie = shufflevector <3 x float> %i.gv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.if = fmul <2 x float> %i.gm, %i.ie
  %i.ig = shufflevector <3 x float> %i.gv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ig, <2 x float> %i.if)
  %i.ii = shufflevector <3 x float> %i.gv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.ii, <2 x float> %i.ih)
  %i.ik = fmul float %i.fx, %i.gz
  %i.il = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.gx, float %i.ik)
  %i.im = tail call noundef float @llvm.fmuladd.f32(float %i.fy, float %i.hb, float %i.il)
  %i.in = fmul float %i.hd, %i.gz
  %i.io = tail call float @llvm.fmuladd.f32(float %i.he, float %i.gx, float %i.in)
  %i.ip = tail call noundef float @llvm.fmuladd.f32(float %i.hf, float %i.hb, float %i.io)
  %i.iq = fmul float %i.gy, %i.gz
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gx, float %i.iq)
  %i.is = tail call noundef float @llvm.fmuladd.f32(float %i.ha, float %i.hb, float %i.ir)
  %i.it = extractelement <4 x float> %i.hw, i64 0
  store float %i.it, ptr %i.du, align 16
  store float %i.hy, ptr %.sroa.483.0..sroa_idx, align 4
  store float %i.ia, ptr %.sroa.5.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.684.0..sroa_idx, align 4, !tbaa !138
  store float %i.id, ptr %i.eg, align 16
  store <2 x float> %i.ij, ptr %.sroa.985.16..sroa_idx, align 4
  %.sroa.1186.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  store float 0.000000e+00, ptr %.sroa.1186.16..sroa_idx, align 4, !tbaa !138
  %i.iu = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store float %i.im, ptr %i.iu, align 16
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  store float %i.ip, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.1587.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store float %i.is, ptr %.sroa.1587.32..sroa_idx, align 8
  %.sroa.1688.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 44
  store float 0.000000e+00, ptr %.sroa.1688.32..sroa_idx, align 4, !tbaa !138
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %7, label %bb.s, label %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit

bb.s:                                             ; preds = %bb.r
  %i.iv = load ptr, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 372
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !196 ; 2 uses
  %.not.i69 = icmp eq i32 %i.ix, -1
  br i1 %.not.i69, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 360
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !133 ; 2 uses
  %i.jb = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !219
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 40 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !230
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !233
  %i.jg = mul nsw i64 %i.iy, 96
  %i.jh = tail call i32 %i.jb(ptr noundef %i.jd, ptr noundef %i.jf, i32 noundef 0, i64 noundef %i.jg, i64 noundef 96, ptr noundef nonnull %i.du, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !21 ; 0 uses
  %i.ji = load ptr, ptr @__clewFinish, align 8, !tbaa !219
  %i.jj = load ptr, ptr %i.jc, align 8, !tbaa !230
  %i.jk = tail call i32 %i.ji(ptr noundef %i.jj), !inline_history !21 ; 0 uses
  br label %_ZN13b3OpenCLArrayI13b3InertiaDataE19copyFromHostPointerEPKS0_mmb.exit

bb.u:                                             ; preds = %bb.s
end_hunk_0
