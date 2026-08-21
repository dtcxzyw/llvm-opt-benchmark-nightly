Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullComputer?download=true
inline.NumInlined: 668
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN20b3ConvexHullInternal6shrinkEff:bb.a

scalar.ph453:                                     ; preds = %scalar.ph453.prol.loopexit, %scalar.ph453
  %indvars.iv.i.i.i147 = phi i64 [ %indvars.iv.next.i.i.i148.3, %scalar.ph453 ], [ %indvars.iv.i.i.i147.unr, %scalar.ph453.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i.i147
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.24305.1, i64 %indvars.iv.i.i.i147
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !72
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !72
  %indvars.iv.next.i.i.i148 = add nuw nsw i64 %indvars.iv.i.i.i147, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i148
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.24305.1, i64 %indvars.iv.next.i.i.i148
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !72
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !72
  %indvars.iv.next.i.i.i148.1 = add nuw nsw i64 %indvars.iv.i.i.i147, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i148.1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.24305.1, i64 %indvars.iv.next.i.i.i148.1
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !72
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !72
  %indvars.iv.next.i.i.i148.2 = add nuw nsw i64 %indvars.iv.i.i.i147, 3 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i148.2
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.24305.1, i64 %indvars.iv.next.i.i.i148.2
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !72
  %indvars.iv.next.i.i.i148.3 = add nuw nsw i64 %indvars.iv.i.i.i147, 4 ; 2 uses
  %exitcond.not.i.i.i149.3 = icmp eq i64 %indvars.iv.next.i.i.i148.3, %wide.trip.count.i.i.i146
  br i1 %exitcond.not.i.i.i149.3, label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137.thread, label %scalar.ph453, !llvm.loop !159

.split7.i.i150:                                   ; preds = %.noexc151, %bb.g
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc152 unwind label %bb.h

.noexc152:                                        ; preds = %.split7.i.i150
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137 unwind label %bb.h

_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137: ; preds = %.noexc152, %.split.i.i136
  %.sroa.3294.5 = phi i32 [ %.sroa.3294.1, %.split.i.i136 ], [ 0, %.noexc152 ] ; 2 uses
  %.0.i12.i.i139 = phi ptr [ %i.al, %.split.i.i136 ], [ null, %.noexc152 ] ; 2 uses
  %.0.i.i140 = phi i32 [ %i.ah, %.split.i.i136 ], [ 0, %.noexc152 ] ; 2 uses
  %.not.i10.i.i141 = icmp eq ptr %.sroa.24305.1, null
  br i1 %.not.i10.i.i141, label %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE9push_backERKS2_.exit155, label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137.thread

_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137.thread: ; preds = %scalar.ph453.prol.loopexit, %scalar.ph453, %middle.block462, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137
  %.0.i.i140332 = phi i32 [ %.0.i.i140, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137 ], [ %i.ah, %middle.block462 ], [ %i.ah, %scalar.ph453 ], [ %i.ah, %scalar.ph453.prol.loopexit ]
  %.0.i12.i.i139330 = phi ptr [ %.0.i12.i.i139, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137 ], [ %i.al, %middle.block462 ], [ %i.al, %scalar.ph453 ], [ %i.al, %scalar.ph453.prol.loopexit ]
  %.sroa.3294.5328 = phi i32 [ %.sroa.3294.5, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137 ], [ %.sroa.3294.1, %middle.block462 ], [ %.sroa.3294.1, %scalar.ph453 ], [ %.sroa.3294.1, %scalar.ph453.prol.loopexit ]
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %.sroa.24305.1)
          to label %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE9push_backERKS2_.exit155 unwind label %bb.h

_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE9push_backERKS2_.exit155: ; preds = %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137.thread, %bb.e, %bb.f
  %.sroa.19.5 = phi i32 [ %.sroa.19.1, %bb.e ], [ %.sroa.3294.1, %bb.f ], [ %.0.i.i140, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137 ], [ %.0.i.i140332, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137.thread ]
  %.sroa.24305.7 = phi ptr [ %.sroa.24305.1, %bb.e ], [ %.sroa.24305.1, %bb.f ], [ %.0.i12.i.i139, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137 ], [ %.0.i12.i.i139330, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137.thread ] ; 2 uses
  %i.bm = phi i32 [ %.sroa.3294.1, %bb.e ], [ %.sroa.3294.1, %bb.f ], [ %.sroa.3294.5, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137 ], [ %.sroa.3294.5328, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137.thread ] ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.sroa.24305.7, i64 %i.bn
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !72
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !72
  %i.bq = add nsw i32 %i.bm, 1
  br label %bb.i

bb.h:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE4copyEiiPS2_.exit.i.i137.thread, %.noexc152, %.split7.i.i150, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE8allocateEi.exit.i.i135
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.i:                                             ; preds = %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE9push_backERKS2_.exit155, %bb.d
  %.sroa.3294.2 = phi i32 [ %.sroa.3294.1, %bb.d ], [ %i.bq, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE9push_backERKS2_.exit155 ] ; 2 uses
  %.sroa.19.2 = phi i32 [ %.sroa.19.1, %bb.d ], [ %.sroa.19.5, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE9push_backERKS2_.exit155 ] ; 2 uses
  %.sroa.24305.2 = phi ptr [ %.sroa.24305.1, %bb.d ], [ %.sroa.24305.7, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal6VertexEE9push_backERKS2_.exit155 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.076, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !58
  %.not115 = icmp eq i32 %i.bt, %i.e
  br i1 %.not115, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.p, align 16, !tbaa !160 ; 2 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %bb.k, label %.loopexit353

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !161 ; 4 uses
  %.not12.i = icmp eq ptr %i.bv, null
  br i1 %.not12.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !162
  store ptr %i.bx, ptr %i.q, align 8, !tbaa !161
  %.pre.i156 = load ptr, ptr %i.bv, align 8, !tbaa !164
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.by = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef 24, i32 noundef 16)
          to label %.noexc157 unwind label %bb.u  ; 5 uses

.noexc157:                                        ; preds = %bb.m
  %i.bz = load i32, ptr %i.r, align 8, !tbaa !165 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !166
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !162
  %i.cc = sext i32 %i.bz to i64
  %i.cd = mul nsw i64 %i.cc, 72
  %i.ce = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.cd, i32 noundef 16)
          to label %.noexc158 unwind label %bb.u  ; 2 uses

.noexc158:                                        ; preds = %.noexc157
  store ptr %i.ce, ptr %i.by, align 8, !tbaa !164
  %i.cf = load ptr, ptr %i.o, align 16, !tbaa !167
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !162
  store ptr %i.by, ptr %i.o, align 16, !tbaa !167
  br label %bb.n

bb.n:                                             ; preds = %.noexc158, %bb.l
  %i.cg = phi ptr [ %.pre.i156, %bb.l ], [ %i.ce, %.noexc158 ] ; 5 uses
  %.0.i = phi ptr [ %i.bv, %bb.l ], [ %i.by, %.noexc158 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !166 ; 9 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.i.preheader, label %.loopexit353

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %xtraiter474 = and i32 %i.ci, 3                 ; 3 uses
  %i.ck = icmp ult i32 %i.ci, 4
  br i1 %i.ck, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ci, 2147483644
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cx, %.lr.ph.i.i ] ; 4 uses
  %.068.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.preheader.new ], [ %i.cz, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.cl = or disjoint i32 %.09.i.i, 1
  %i.cm = icmp slt i32 %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 72 ; 2 uses
  %i.co = select i1 %i.cm, ptr %i.cn, ptr null
  store ptr %i.co, ptr %.068.i.i, align 8, !tbaa !168
  %i.cp = or disjoint i32 %.09.i.i, 2
  %i.cq = icmp slt i32 %i.cp, %i.ci
  %i.cr = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 144 ; 2 uses
  %i.cs = select i1 %i.cq, ptr %i.cr, ptr null
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !168
  %i.ct = or disjoint i32 %.09.i.i, 3
  %i.cu = icmp slt i32 %i.ct, %i.ci
  %i.cv = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 216 ; 2 uses
  %i.cw = select i1 %i.cu, ptr %i.cv, ptr null
  store ptr %i.cw, ptr %i.cr, align 8, !tbaa !168
  %i.cx = add nuw nsw i32 %.09.i.i, 4             ; 3 uses
  %i.cy = icmp slt i32 %i.cx, %i.ci
  %i.cz = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 288 ; 3 uses
  %i.da = select i1 %i.cy, ptr %i.cz, ptr null
  store ptr %i.da, ptr %i.cv, align 8, !tbaa !168
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit353.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !170

.loopexit353.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod475.not = icmp eq i32 %xtraiter474, 0
  br i1 %lcmp.mod475.not, label %.loopexit353, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit353.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.cx, %.loopexit353.loopexit.unr-lcssa ]
  %.068.i.i.epil.init = phi ptr [ %i.cg, %.lr.ph.i.i.preheader ], [ %i.cz, %.loopexit353.loopexit.unr-lcssa ]
  %lcmp.mod476 = icmp ne i32 %xtraiter474, 0
  tail call void @llvm.assume(i1 %lcmp.mod476)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i32 [ %i.db, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.068.i.i.epil = phi ptr [ %i.dd, %.lr.ph.i.i.epil ], [ %.068.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.db = add nuw nsw i32 %.09.i.i.epil, 1        ; 2 uses
  %i.dc = icmp slt i32 %i.db, %i.ci
  %i.dd = getelementptr inbounds nuw i8, ptr %.068.i.i.epil, i64 72 ; 2 uses
  %i.de = select i1 %i.dc, ptr %i.dd, ptr null
  store ptr %i.de, ptr %.068.i.i.epil, align 8, !tbaa !168
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter474
  br i1 %epil.iter.cmp.not, label %.loopexit353, label %.lr.ph.i.i.epil, !llvm.loop !171

.loopexit353:                                     ; preds = %.loopexit353.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.n, %bb.j
  %.09.i = phi ptr [ %i.bu, %bb.j ], [ %i.cg, %bb.n ], [ %i.cg, %.lr.ph.i.i.epil ], [ %i.cg, %.loopexit353.loopexit.unr-lcssa ] ; 13 uses
  %i.df = load ptr, ptr %.09.i, align 8, !tbaa !168
  store ptr %i.df, ptr %i.p, align 16, !tbaa !160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.09.i, i8 0, i64 24, i1 false)
  %i.dg = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.076, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !86
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !59 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  store ptr %i.dg, ptr %i.dn, align 8, !tbaa !172
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 104 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false), !tbaa.struct !130
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !82
  %i.ds = load i32, ptr %i.do, align 8, !tbaa !82
  %i.dt = sub nsw i32 %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 108
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !83
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 108 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !83
  %i.dy = sub nsw i32 %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !84
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dg, i64 112 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !84
  %i.ed = sub nsw i32 %i.ea, %i.ec
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.dy to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.dt to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.3.8.insert.ext.i.i.i = zext i32 %i.ed to i64
  %.sroa.3.8.insert.insert.i.i.i = or disjoint i64 %.sroa.3.8.insert.ext.i.i.i, -4294967296
  %i.ee = getelementptr inbounds nuw i8, ptr %.09.i, i64 40
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ee, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 48
  store i64 %.sroa.3.8.insert.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.ef = load i32, ptr %i.y, align 8, !tbaa !82
  %i.eg = load i32, ptr %i.do, align 8, !tbaa !82
  %i.eh = sub nsw i32 %i.ef, %i.eg
  %i.ei = load i32, ptr %i.z, align 4, !tbaa !83
  %i.ej = load i32, ptr %i.dw, align 4, !tbaa !83
  %i.ek = sub nsw i32 %i.ei, %i.ej
  %i.el = load i32, ptr %i.aa, align 8, !tbaa !84
  %i.em = load i32, ptr %i.eb, align 8, !tbaa !84
  %i.en = sub nsw i32 %i.el, %i.em
  %.sroa.2.0.insert.ext.i.i13.i = zext i32 %i.ek to i64
  %.sroa.2.0.insert.shift.i.i14.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i13.i, 32
  %.sroa.0.0.insert.ext.i.i15.i = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert.i.i16.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i14.i, %.sroa.0.0.insert.ext.i.i15.i
  %.sroa.3.8.insert.ext.i.i18.i = zext i32 %i.en to i64
  %.sroa.3.8.insert.insert.i.i19.i = or disjoint i64 %.sroa.3.8.insert.ext.i.i18.i, -4294967296
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i, i64 56
  store i64 %.sroa.0.0.insert.insert.i.i16.i, ptr %i.eo, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 64
  store i64 %.sroa.3.8.insert.insert.i.i19.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !173 ; 2 uses
  %.not.i159 = icmp eq ptr %i.eq, null
  br i1 %.not.i159, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit353
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %.09.i, ptr %i.er, align 8, !tbaa !174
  br label %bb.q

bb.p:                                             ; preds = %.loopexit353
  %i.es = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %.09.i, ptr %i.es, align 8, !tbaa !175
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %.09.i, ptr %i.ep, align 8, !tbaa !173
  %i.et = icmp eq i32 %.sroa.3.1, %.sroa.10.1
  br i1 %i.et, label %bb.r, label %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i160 = icmp eq i32 %.sroa.10.1, 0
  %i.eu = shl nsw i32 %.sroa.10.1, 1
  %i.ev = select i1 %.not.i.i160, i32 1, i32 %i.eu ; 7 uses
  %i.ew = icmp slt i32 %.sroa.10.1, %i.ev
  br i1 %i.ew, label %bb.s, label %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i161 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i161, label %.split7.i.i174, label %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE8allocateEi.exit.i.i: ; preds = %bb.s
  %i.ex = sext i32 %i.ev to i64
  %i.ey = shl nsw i64 %i.ex, 3
  %i.ez = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ey, i32 noundef 16)
          to label %.noexc175 unwind label %bb.u  ; 12 uses

.noexc175:                                        ; preds = %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE8allocateEi.exit.i.i
  %i.fa = ptrtoaddr ptr %i.ez to i64
  %i.fb = icmp eq ptr %i.ez, null
  br i1 %i.fb, label %.split7.i.i174, label %.split.i.i162

.split.i.i162:                                    ; preds = %.noexc175
  %i.fc = icmp sgt i32 %.sroa.10.1, 0
  br i1 %i.fc, label %.lr.ph.i.i.i169, label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i169:                                  ; preds = %.split.i.i162
  %wide.trip.count.i.i.i170 = zext nneg i32 %.sroa.10.1 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.10.1, 4
  %i.fd = sub i64 %.sroa.13281.1448, %i.fa
  %diff.check = icmp ugt i64 %i.fd, -32
  %or.cond466 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond466, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i169
  %n.vec = and i64 %wide.trip.count.i.i.i170, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.13281.1, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ff, align 8, !tbaa !176
  %wide.load449 = load <2 x ptr>, ptr %i.fg, align 8, !tbaa !176
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x ptr> %wide.load, ptr %i.fe, align 8, !tbaa !176
  store <2 x ptr> %wide.load449, ptr %i.fh, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i170
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i169, %middle.block
  %indvars.iv.i.i.i171.ph = phi i64 [ 0, %.lr.ph.i.i.i169 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter477 = and i64 %wide.trip.count.i.i.i170, 3 ; 2 uses
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod478.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i171.prol = phi i64 [ %indvars.iv.next.i.i.i172.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i171.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter479 = phi i64 [ %prol.iter479.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.i.i.i171.prol
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.13281.1, i64 %indvars.iv.i.i.i171.prol
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !176
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !176
  %indvars.iv.next.i.i.i172.prol = add nuw nsw i64 %indvars.iv.i.i.i171.prol, 1 ; 2 uses
  %prol.iter479.next = add i64 %prol.iter479, 1   ; 2 uses
  %prol.iter479.cmp.not = icmp eq i64 %prol.iter479.next, %xtraiter477
  br i1 %prol.iter479.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !178

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i171.unr = phi i64 [ %indvars.iv.i.i.i171.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i172.prol, %scalar.ph.prol ]
  %i.fm = sub nsw i64 %indvars.iv.i.i.i171.ph, %wide.trip.count.i.i.i170
  %i.fn = icmp ugt i64 %i.fm, -4
  br i1 %i.fn, label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i171 = phi i64 [ %indvars.iv.next.i.i.i172.3, %scalar.ph ], [ %indvars.iv.i.i.i171.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.i.i.i171
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.13281.1, i64 %indvars.iv.i.i.i171
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !176
  store ptr %i.fq, ptr %i.fo, align 8, !tbaa !176
  %indvars.iv.next.i.i.i172 = add nuw nsw i64 %indvars.iv.i.i.i171, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next.i.i.i172
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.13281.1, i64 %indvars.iv.next.i.i.i172
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !176
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !176
  %indvars.iv.next.i.i.i172.1 = add nuw nsw i64 %indvars.iv.i.i.i171, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next.i.i.i172.1
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.13281.1, i64 %indvars.iv.next.i.i.i172.1
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !176
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !176
  %indvars.iv.next.i.i.i172.2 = add nuw nsw i64 %indvars.iv.i.i.i171, 3 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next.i.i.i172.2
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.13281.1, i64 %indvars.iv.next.i.i.i172.2
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !176
  store ptr %i.fz, ptr %i.fx, align 8, !tbaa !176
  %indvars.iv.next.i.i.i172.3 = add nuw nsw i64 %indvars.iv.i.i.i171, 4 ; 2 uses
  %exitcond.not.i.i.i173.3 = icmp eq i64 %indvars.iv.next.i.i.i172.3, %wide.trip.count.i.i.i170
  br i1 %exitcond.not.i.i.i173.3, label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread, label %scalar.ph, !llvm.loop !179

.split7.i.i174:                                   ; preds = %.noexc175, %bb.s
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc176 unwind label %bb.u

.noexc176:                                        ; preds = %.split7.i.i174
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i unwind label %bb.u

_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i: ; preds = %.noexc176, %.split.i.i162
  %.sroa.3.4 = phi i32 [ %.sroa.10.1, %.split.i.i162 ], [ 0, %.noexc176 ] ; 2 uses
  %.0.i12.i.i164 = phi ptr [ %i.ez, %.split.i.i162 ], [ null, %.noexc176 ] ; 2 uses
  %.0.i.i165 = phi i32 [ %i.ev, %.split.i.i162 ], [ 0, %.noexc176 ] ; 2 uses
  %.not.i10.i.i166 = icmp eq ptr %.sroa.13281.1, null
  br i1 %.not.i10.i.i166, label %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit, label %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i
  %.0.i.i165343 = phi i32 [ %.0.i.i165, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i ], [ %i.ev, %middle.block ], [ %i.ev, %scalar.ph ], [ %i.ev, %scalar.ph.prol.loopexit ]
  %.0.i12.i.i164341 = phi ptr [ %.0.i12.i.i164, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i ], [ %i.ez, %middle.block ], [ %i.ez, %scalar.ph ], [ %i.ez, %scalar.ph.prol.loopexit ]
  %.sroa.3.4339 = phi i32 [ %.sroa.3.4, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i ], [ %.sroa.10.1, %middle.block ], [ %.sroa.10.1, %scalar.ph ], [ %.sroa.10.1, %scalar.ph.prol.loopexit ]
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %.sroa.13281.1)
          to label %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit unwind label %bb.u

_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit: ; preds = %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread, %bb.q, %bb.r
  %.sroa.13281.5 = phi ptr [ %.sroa.13281.1, %bb.q ], [ %.sroa.13281.1, %bb.r ], [ %.0.i12.i.i164, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i ], [ %.0.i12.i.i164341, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread ] ; 2 uses
  %.sroa.10.4 = phi i32 [ %.sroa.10.1, %bb.q ], [ %.sroa.10.1, %bb.r ], [ %.0.i.i165, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i ], [ %.0.i.i165343, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread ]
  %i.ga = phi i32 [ %.sroa.3.1, %bb.q ], [ %.sroa.10.1, %bb.r ], [ %.sroa.3.4, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i ], [ %.sroa.3.4339, %_ZNK20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE4copyEiiPS2_.exit.i.i.thread ] ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %.sroa.13281.5, i64 %i.gb
  store ptr %.09.i, ptr %i.gc, align 8, !tbaa !176
  %.promoted = load i64, ptr %6, align 8
  %.promoted373 = load i64, ptr %i.k, align 8
  %.promoted374 = load i64, ptr %7, align 8
  %.promoted375 = load i64, ptr %i.l, align 8
  %.promoted376 = load i64, ptr %8, align 8
  %.promoted377 = load i64, ptr %i.m, align 8
  %.promoted378 = load i64, ptr %9, align 8
  %.promoted379 = load i64, ptr %i.n, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit, %bb.v
  %i.gd = phi i64 [ %i.jo, %bb.v ], [ %.promoted379, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 2 uses
  %i.ge = phi i64 [ %i.jp, %bb.v ], [ %.promoted378, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 3 uses
  %i.gf = phi i64 [ %i.jq, %bb.v ], [ %.promoted377, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 2 uses
  %i.gg = phi i64 [ %i.jr, %bb.v ], [ %.promoted376, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 3 uses
  %i.gh = phi i64 [ %i.js, %bb.v ], [ %.promoted375, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 2 uses
  %i.gi = phi i64 [ %i.jt, %bb.v ], [ %.promoted374, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 3 uses
  %i.gj = phi i64 [ %i.ju, %bb.v ], [ %.promoted373, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 2 uses
  %i.gk = phi i64 [ %i.jv, %bb.v ], [ %.promoted, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 3 uses
  %.075 = phi ptr [ %i.kd, %bb.v ], [ %.076, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 4 uses
  %.074 = phi ptr [ %.073, %bb.v ], [ null, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 4 uses
  %.073 = phi ptr [ %i.jz, %bb.v ], [ null, %_ZN20b3AlignedObjectArrayIPN20b3ConvexHullInternal4FaceEE9push_backERKS2_.exit ] ; 5 uses
  %i.gl = icmp ne ptr %.074, null
  %i.gm = icmp ne ptr %.073, null
  %or.cond = select i1 %i.gl, i1 %i.gm, i1 false
  br i1 %or.cond, label %_ZN20b3ConvexHullInternal6Int128pLERKS0_.exit, label %bb.v

_ZN20b3ConvexHullInternal6Int128pLERKS0_.exit:    ; preds = %bb.t
  %i.gn = load i32, ptr %i.y, align 8, !tbaa !82  ; 2 uses
  %i.go = sub nsw i32 %i.gn, %.sroa.0267.0.copyload
  %i.gp = load i32, ptr %i.z, align 4, !tbaa !83  ; 2 uses
  %i.gq = sub nsw i32 %i.gp, %.sroa.8.0.copyload
  %i.gr = load i32, ptr %i.aa, align 8, !tbaa !84 ; 2 uses
  %i.gs = sub nsw i32 %i.gr, %.sroa.12.0.copyload
  %i.gt = getelementptr inbounds nuw i8, ptr %.074, i64 104
end_hunk_0
