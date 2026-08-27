Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuGridBroadphase?download=true
inline.NumInlined: 333
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN19b3GpuGridBroadphase29calculateOverlappingPairsHostEi:bb.a

._crit_edge:                                      ; preds = %bb.f, %.loopexit, %_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN13b3OpenCLArrayI6b3Int4E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.ao, ptr noundef nonnull align 8 dereferenceable(25) %i.an, i1 noundef zeroext true)
  ret void

bb.f:                                             ; preds = %.lr.ph29, %.loopexit
  %i.ap = phi i32 [ %i.ag, %.lr.ph29 ], [ %i.dk, %.loopexit ] ; 3 uses
  %indvars.iv33 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next34, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph29 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 3 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next34, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread
  %i.as = phi i32 [ %i.dk, %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread ], [ %i.ap, %bb.f ] ; 3 uses
  %i.at = phi i32 [ %i.dl, %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread ], [ %i.ap, %bb.f ] ; 3 uses
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread ], [ %indvars.iv, %bb.f ] ; 2 uses
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %indvars.iv33 ; 7 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %indvars.iv30 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load float, ptr %i.av, align 4, !tbaa !72
  %i.az = load float, ptr %i.ax, align 4, !tbaa !72
  %i.ba = fcmp ogt float %i.ay, %i.az
  br i1 %i.ba, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !72
  %i.bd = load float, ptr %i.aw, align 4, !tbaa !72
  %i.be = fcmp olt float %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph
  %i.bf = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ true, %.lr.ph ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !72
  %i.bk = fcmp ogt float %i.bh, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !72
  %i.bp = fcmp olt float %i.bm, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.not25 = phi i1 [ %i.bf, %bb.k ], [ true, %bb.j ], [ true, %bb.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !72
  %i.bu = fcmp ogt float %i.br, %i.bt
  br i1 %i.bu, label %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !72
  %i.bz = fcmp olt float %i.bw, %i.by
  %brmerge = or i1 %.not25, %i.bz
  br i1 %brmerge, label %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !107 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !107 ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 %i.cd)
  %spec.select26 = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cd)
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !57  ; 7 uses
  %i.cf = icmp slt i32 %i.ce, %1
  br i1 %i.cf, label %bb.o, label %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %i.aj, align 8, !tbaa !58
  %i.ch = icmp eq i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i32 %i.ce, 0
  %i.ci = shl nsw i32 %i.ce, 1
  %i.cj = select i1 %.not.i.i, i32 1, i32 %i.ci   ; 6 uses
  %i.ck = icmp slt i32 %i.ce, %i.cj
  br i1 %i.ck, label %bb.q, label %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i: ; preds = %bb.q
  %i.cl = sext i32 %i.cj to i64
  %i.cm = shl nsw i64 %i.cl, 4
  %i.cn = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.cm, i32 noundef 16) ; 7 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !57  ; 4 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cp to i64 ; 2 uses
  %xtraiter48 = and i64 %wide.trip.count.i.i.i, 1
  %i.cr = icmp eq i32 %i.cp, 1
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.r ]
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.i.i.i
  %i.ct = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cs, ptr noundef nonnull align 16 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !106
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i
  %i.cw = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cv, ptr noundef nonnull align 16 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !106
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.r, !llvm.loop !166

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i, %bb.q
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.23)
  store i32 0, ptr %i.a, align 4, !tbaa !57
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.r
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i32 %i.cp to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.i.i.i.epil.init
  %i.cz = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cy, ptr noundef nonnull align 16 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !106
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.cn, %.split.i.i ], [ %i.cn, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.cn, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.cj, %.split.i.i ], [ %i.cj, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.cj, %.epil.preheader ]
  %i.db = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %.not.i10.i.i22 = icmp eq ptr %i.db, null
  br i1 %.not.i10.i.i22, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23, label %bb.s

bb.s:                                             ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i
  %i.dc = load i8, ptr %i.al, align 8, !tbaa !55, !range !79, !noundef !80
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.t, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23

bb.t:                                             ; preds = %bb.s
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.db)
  br label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23: ; preds = %bb.t, %bb.s, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.al, align 8, !tbaa !55
  store ptr %.0.i12.i.i, ptr %i.ak, align 8, !tbaa !56
  store i32 %.0.i.i, ptr %i.aj, align 8, !tbaa !58
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !57
  br label %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit: ; preds = %bb.o, %bb.p, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23
  %i.de = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i23 ], [ %i.ce, %bb.p ], [ %i.ce, %bb.o ]
  %i.df = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.dg = sext i32 %i.de to i64
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  store i32 %spec.select26, ptr %i.dh, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %spec.select, ptr %.sroa.5.0..sroa_idx, align 4
  %i.di = load i32, ptr %i.a, align 4, !tbaa !57
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.a, align 4, !tbaa !57
  %.pre = load i32, ptr %i.af, align 4, !tbaa !45 ; 2 uses
  br label %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread

_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread: ; preds = %bb.m, %bb.l, %bb.n, %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit
  %i.dk = phi i32 [ %i.as, %bb.m ], [ %i.as, %bb.l ], [ %i.as, %bb.n ], [ %.pre, %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit ] ; 3 uses
  %i.dl = phi i32 [ %i.at, %bb.m ], [ %i.at, %bb.l ], [ %i.at, %bb.n ], [ %.pre, %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit ] ; 2 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.dm = trunc nuw i64 %indvars.iv.next31 to i32
  %i.dn = icmp sgt i32 %i.dl, %i.dm
  br i1 %i.dn, label %.lr.ph, label %.loopexit, !llvm.loop !167
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK13b3OpenCLArrayI9b3SapAabbE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !168  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45   ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i.i: ; preds = %bb.c
  %sext = shl i64 %i.b, 32
  %i.j = ashr exact i64 %sext, 27
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.d, align 4, !tbaa !45   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !115

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.23)
  store i32 0, ptr %i.d, align 4, !tbaa !45
  br label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.y, i64 32, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.c, %.split.i.i ], [ %i.c, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.c, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !43, !range !79, !noundef !80
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !43
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !44
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !46
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ag = sext i32 %i.e to i64                    ; 4 uses
  %sext3 = shl i64 %i.b, 32
  %wide.trip.count.i = ashr exact i64 %sext3, 32  ; 2 uses
  %i.ah = sub i64 %i.b, %i.ag
  %xtraiter10 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %indvars.iv.i.prol
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !169

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ag, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.ak = sub nsw i64 %i.ag, %wide.trip.count.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.an = getelementptr inbounds [32 x i8], ptr %i.am, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.an, i8 0, i64 32, i1 false)
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ap = getelementptr [32 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.as = getelementptr [32 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.av = getelementptr [32 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new, !llvm.loop !170

_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit.loopexit: ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !168
  br label %_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit

_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit: ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit.loopexit, %bb.a
  %i.ax = phi i64 [ %.pre, %_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !45
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %_ZNK13b3OpenCLArrayI9b3SapAabbE17copyToHostPointerEPS0_mmb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE6resizeEiRKS0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !171
  %.not.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !44
  %i.bc = load ptr, ptr @__clewEnqueueReadBuffer, align 8, !tbaa !81
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !94
  %i.bh = shl i64 %i.ax, 5
  %i.bi = tail call i32 %i.bc(ptr noundef %i.be, ptr noundef %i.bg, i32 noundef 0, i64 noundef 0, i64 noundef %i.bh, ptr noundef nonnull %i.bb, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !172 ; 0 uses
  br i1 %2, label %bb.i, label %_ZNK13b3OpenCLArrayI9b3SapAabbE17copyToHostPointerEPS0_mmb.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr @__clewFinish, align 8, !tbaa !81
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bl = tail call i32 %i.bj(ptr noundef %i.bk), !inline_history !172 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI9b3SapAabbE17copyToHostPointerEPS0_mmb.exit

bb.j:                                             ; preds = %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19, i32 noundef 285)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.24)
end_hunk_0
