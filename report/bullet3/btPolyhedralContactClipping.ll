Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btPolyhedralContactClipping?download=true
inline.NumInlined: 245
inline.NumDeleted: 55
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN27btPolyhedralContactClipping18findSeparatingAxisERK18btConvexPolyhedronS2_RK11btTransformS5_R9btVector3RN36btDiscreteCollisionDetectorInterface6ResultE:bb.a

bb.at:                                            ; preds = %bb.ab, %bb.as, %.thread498.thread, %.thread399, %.thread387
  %.17 = phi i1 [ false, %.thread387 ], [ false, %.thread399 ], [ true, %.thread498.thread ], [ true, %bb.as ], [ false, %bb.ab ]
  ret i1 %.17
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btPolyhedralContactClipping19clipFaceAgainstHullERK9btVector3RK18btConvexPolyhedronRK11btTransformR20btAlignedObjectArrayIS0_ESB_ffRN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %4, float noundef %5, float noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.btVector3, align 8           ; 9 uses
  %9 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %or.cond197 = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond197, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !24
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %.not.i5.i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.b:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.b, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.i, align 8, !tbaa !23
  store ptr null, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.d, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.a, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
  %i.l = phi i32 [ %i.e, %bb.a ], [ 0, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ]
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = icmp slt i32 %i.l, %i.n
  br i1 %i.p, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit

bb.c:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i: ; preds = %bb.c
  %i.q = sext i32 %i.n to i64
  %i.r = shl nsw i64 %i.q, 4
  %i.s = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16) ; 6 uses
  %.pre183 = load i32, ptr %i.a, align 4, !tbaa !15 ; 4 uses
  %i.t = icmp sgt i32 %.pre183, 0
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %.pre183 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.v = icmp eq i32 %.pre183, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !21
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next.i.i
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !21
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !0

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i32 %.pre183 to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i.i.epil.init
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !21
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %bb.c, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %.0.i.i195 = phi ptr [ null, %bb.c ], [ %i.s, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i ], [ %i.s, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ag, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !23, !range !24, !noundef !25
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ag)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 1, ptr %i.ak, align 8, !tbaa !23
  store ptr %.0.i.i195, ptr %i.af, align 8, !tbaa !16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit

_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = load float, ptr %2, align 4, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load float, ptr %i.az, align 4, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !18
  %i.bh = load float, ptr %0, align 4, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.am to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  %i.bm = icmp slt i32 %.1, 0
  br i1 %i.bm, label %.loopexit, label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.063163 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.g ]
  %.064162 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.165, %bb.g ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %indvars.iv ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.br = load float, ptr %i.bo, align 4, !tbaa !18 ; 3 uses
  %i.bs = load float, ptr %i.bp, align 4, !tbaa !18 ; 3 uses
  %i.bt = load float, ptr %i.bq, align 4, !tbaa !18 ; 3 uses
  %i.bu = fmul float %i.bs, %i.as
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.br, float %i.bu)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.bt, float %i.bv)
  %i.bx = fmul float %i.bs, %i.ay
  %i.by = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.br, float %i.bx)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.bt, float %i.by)
  %i.ca = fmul float %i.bs, %i.be
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.br, float %i.ca)
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bt, float %i.cb)
  %i.cd = fmul float %i.bz, %i.bj
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bh, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.bl, float %i.ce) ; 2 uses
  %i.cg = fcmp olt float %i.cf, %.064162          ; 2 uses
  %.165 = select i1 %i.cg, float %i.cf, float %.064162
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.cg, i32 %i.ch, i32 %.063163  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !48

bb.h:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !34
  %i.ck = zext nneg i32 %.1 to i64
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.ck ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dc = zext nneg i32 %i.cn to i64              ; 2 uses
  %.not = icmp eq i32 %i.cn, 1
  br i1 %.not, label %._crit_edge169.loopexit.peel.begin, label %.lr.ph168.split

.lr.ph168.split:                                  ; preds = %.lr.ph168
  %i.dd = add nsw i64 %i.dc, -2
  br label %bb.l

._crit_edge169.loopexit.peel.begin:               ; preds = %.lr.ph168, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114
  %i.de = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next176, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 2 uses
  %i.df = phi ptr [ %3, %.lr.ph168 ], [ %.0158164, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 6 uses
  %i.dg = phi ptr [ %4, %.lr.ph168 ], [ %.0157165, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 2 uses
  %i.dh = load ptr, ptr %i.cp, align 8, !tbaa !41 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.de
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !32
  %i.dk = load ptr, ptr %i.cq, align 8, !tbaa !16 ; 2 uses
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [16 x i8], ptr %i.dk, i64 %i.dl ; 3 uses
  %indvars.iv.next176.peel = add nuw nsw i64 %i.de, 1 ; 2 uses
  %i.dn = icmp eq i64 %indvars.iv.next176.peel, %i.dc
  %i.do = select i1 %i.dn, i64 0, i64 %indvars.iv.next176.peel
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dk, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load float, ptr %i.cs, align 4, !tbaa !18 ; 2 uses
  %i.dx = load float, ptr %i.cv, align 4, !tbaa !18
  %i.dy = load float, ptr %i.cy, align 4, !tbaa !18 ; 2 uses
  %i.dz = load float, ptr %i.du, align 4, !tbaa !18 ; 3 uses
  %i.ea = load float, ptr %i.dv, align 4, !tbaa !18
  %i.eb = fsub float %i.dz, %i.ea
  %i.ec = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 3 uses
  %i.ed = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ee = load <2 x float>, ptr %i.ct, align 4, !tbaa !18 ; 3 uses
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eg = load float, ptr %i.cu, align 4, !tbaa !18
  %i.eh = load <2 x float>, ptr %i.cw, align 4, !tbaa !18 ; 5 uses
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ej = load float, ptr %i.cx, align 4, !tbaa !18
  %i.ek = shufflevector <2 x float> %i.ee, <2 x float> %i.eh, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.el = shufflevector <2 x float> %i.eh, <2 x float> %i.ec, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.em = shufflevector <2 x float> %i.ee, <2 x float> %i.eh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.en = shufflevector <2 x float> %i.eh, <2 x float> %i.ec, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.dy, i64 1 ; 3 uses
  %i.eq = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.dw, i64 1 ; 2 uses
  %10 = load <3 x float>, ptr %i.cz, align 8, !tbaa !18 ; 3 uses
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eu = fmul <2 x float> %i.el, %11
  %i.ev = fmul <2 x float> %i.ek, %11
  %i.ew = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ew, <2 x float> %i.eu)
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ew, <2 x float> %i.ev)
  %12 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %12, <2 x float> %i.ex) ; 2 uses
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %12, <2 x float> %i.ey) ; 2 uses
  %i.fb = fneg <2 x float> %i.fa
  %i.fc = extractelement <2 x float> %i.ez, i64 1
  %i.fd = fneg float %i.fc
  %i.fe = load <2 x float>, ptr %i.dm, align 4, !tbaa !18 ; 3 uses
  %i.ff = load float, ptr %i.dt, align 4, !tbaa !18
  %i.fg = load <2 x float>, ptr %i.ds, align 4, !tbaa !18
  %i.fh = insertelement <2 x float> %i.fe, float %i.ff, i64 1
  %i.fi = fsub <2 x float> %i.fh, %i.fg           ; 2 uses
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fk = fmul <2 x float> %i.fj, %i.ek
  %i.fl = fmul <2 x float> %i.fj, %i.el
  %i.fm = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fm, <2 x float> %i.fk)
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.fm, <2 x float> %i.fl)
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.er, <2 x float> %i.fn) ; 2 uses
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.er, <2 x float> %i.fo) ; 2 uses
  %i.fr = fmul <2 x float> %i.fq, %i.fb
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.ez, <2 x float> %i.fr)
  %i.ft = fneg <2 x float> %i.fs                  ; 3 uses
  %i.fu = shufflevector <2 x float> %i.fp, <2 x float> %i.fe, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.fv = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %i.ed, i64 1
  %i.fx = insertelement <4 x float> %i.fw, float %i.eg, i64 2
  %i.fy = insertelement <4 x float> %i.fx, float %i.ej, i64 3
  %i.fz = fmul <4 x float> %i.fu, %i.fy
  %i.ga = shufflevector <2 x float> %i.fq, <2 x float> %i.fe, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.gb = shufflevector <2 x float> %i.fa, <2 x float> %i.ec, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.gd, <4 x float> %i.fz) ; 3 uses
  %i.gf = extractelement <4 x float> %i.ge, i64 0
  %i.gg = fneg float %i.gf                        ; 2 uses
  %.sroa.3.12.vec.insert.i99.peel = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gg, i64 0
  %i.gh = extractelement <4 x float> %i.ge, i64 1
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dw, float %i.gh)
  %i.gj = load float, ptr %i.da, align 4, !tbaa !18
  %i.gk = fadd float %i.gi, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.ep, <2 x float> %i.gn)
  %i.gp = load <2 x float>, ptr %i.db, align 4, !tbaa !18
  %i.gq = fadd <2 x float> %i.go, %i.gp           ; 2 uses
  %shift.peel = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.peel = fmul <2 x float> %i.gq, %shift.peel
  %i.gr = extractelement <2 x float> %foldExtExtBinop.peel, i64 0
  %i.gs = extractelement <2 x float> %i.ft, i64 0
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gs, float %i.gr)
  %i.gu = extractelement <2 x float> %i.gq, i64 1
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.gu, float %i.gg, float %i.gt)
  %i.gw = fneg float %i.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store <2 x float> %i.ft, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i99.peel, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !20
  call void @_ZN27btPolyhedralContactClipping8clipFaceERK20btAlignedObjectArrayI9btVector3ERS2_RKS1_f(ptr noundef nonnull align 8 dereferenceable(25) %i.df, ptr noundef nonnull align 8 dereferenceable(25) %i.dg, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !15
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel

bb.i:                                             ; preds = %._crit_edge169.loopexit.peel.begin
  %i.ha = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !19
  %i.hc = icmp slt i32 %i.hb, 0
  br i1 %i.hc, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106.peel, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106.peel: ; preds = %bb.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i.i107.peel = icmp eq ptr %i.he, null
  br i1 %.not.i5.i.i107.peel, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel, label %bb.j

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106.peel
  %i.hf = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !23, !range !24, !noundef !25
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.k, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel

bb.k:                                             ; preds = %bb.j
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.he)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel: ; preds = %bb.k, %bb.j, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106.peel
  %i.hi = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i8 1, ptr %i.hi, align 8, !tbaa !23
  store ptr null, ptr %i.hd, align 8, !tbaa !16
  store i32 0, ptr %i.ha, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel, %bb.i, %._crit_edge169.loopexit.peel.begin
  store i32 0, ptr %i.gx, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %._crit_edge169

._crit_edge169:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel, %bb.h
  %.0157.lcssa = phi ptr [ %3, %bb.h ], [ %i.dg, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.hm = load float, ptr %i.hj, align 4, !tbaa !18 ; 3 uses
  %i.hn = load float, ptr %i.hk, align 4, !tbaa !18 ; 3 uses
  %i.ho = load float, ptr %i.hl, align 4, !tbaa !18 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !18
  %i.hr = load float, ptr %2, align 4, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !18
  %i.hu = fmul float %i.hn, %i.ht
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hm, float %i.hu)
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !18
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.hx, float %i.ho, float %i.hv) ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !18
  %i.id = fmul float %i.hn, %i.ic
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.hm, float %i.id)
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ig = load float, ptr %i.if, align 4, !tbaa !18
  %i.ih = tail call noundef float @llvm.fmuladd.f32(float %i.ig, float %i.ho, float %i.ie) ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.il = load float, ptr %i.ik, align 4, !tbaa !18
  %i.im = fmul float %i.hn, %i.il
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.hm, float %i.im)
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ip = load float, ptr %i.io, align 4, !tbaa !18
  %i.iq = tail call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.ho, float %i.in) ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.is = load float, ptr %i.ir, align 4, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.iu = load float, ptr %i.it, align 4, !tbaa !18
  %i.iv = fmul float %i.ih, %i.iu
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.is, float %i.iv)
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !18
  %i.iz = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %i.iy, float %i.iw)
  %i.ja = fsub float %i.hq, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %.0157.lcssa, i64 4 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !15 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph173, label %.loopexit

.lr.ph173:                                        ; preds = %._crit_edge169
  %i.je = getelementptr inbounds nuw i8, ptr %.0157.lcssa, i64 16
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph168.split, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114
  %indvars.iv175 = phi i64 [ 0, %.lr.ph168.split ], [ %indvars.iv.next176, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 3 uses
  %.0157165 = phi ptr [ %3, %.lr.ph168.split ], [ %.0158164, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 8 uses
  %.0158164 = phi ptr [ %4, %.lr.ph168.split ], [ %.0157165, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 3 uses
  %i.jf = load ptr, ptr %i.cp, align 8, !tbaa !41 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv175
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !32
  %i.ji = load ptr, ptr %i.cq, align 8, !tbaa !16 ; 2 uses
  %i.jj = sext i32 %i.jh to i64
  %i.jk = getelementptr inbounds [16 x i8], ptr %i.ji, i64 %i.jj ; 3 uses
  %indvars.iv.next176 = add i64 %indvars.iv175, 1 ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.next176
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !32
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [16 x i8], ptr %i.ji, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.js = load float, ptr %i.cs, align 4, !tbaa !18 ; 2 uses
  %i.jt = load float, ptr %i.cv, align 4, !tbaa !18
  %i.ju = load float, ptr %i.cy, align 4, !tbaa !18 ; 2 uses
  %i.jv = load float, ptr %i.jq, align 4, !tbaa !18 ; 3 uses
  %i.jw = load float, ptr %i.jr, align 4, !tbaa !18
  %i.jx = fsub float %i.jv, %i.jw
  %i.jy = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 3 uses
  %i.jz = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ka = load <2 x float>, ptr %i.ct, align 4, !tbaa !18 ; 3 uses
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kc = load float, ptr %i.cu, align 4, !tbaa !18
  %i.kd = load <2 x float>, ptr %i.cw, align 4, !tbaa !18 ; 5 uses
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kf = load float, ptr %i.cx, align 4, !tbaa !18
  %i.kg = shufflevector <2 x float> %i.ka, <2 x float> %i.kd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kh = shufflevector <2 x float> %i.kd, <2 x float> %i.jy, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ki = shufflevector <2 x float> %i.ka, <2 x float> %i.kd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kj = shufflevector <2 x float> %i.kd, <2 x float> %i.jy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kk = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.kl = insertelement <2 x float> %i.kk, float %i.ju, i64 1 ; 3 uses
  %i.km = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ko = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.js, i64 1 ; 2 uses
  %13 = load <3 x float>, ptr %i.cz, align 8, !tbaa !18 ; 3 uses
  %14 = shufflevector <3 x float> %13, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kq = fmul <2 x float> %i.kh, %14
  %i.kr = fmul <2 x float> %i.kg, %14
  %i.ks = shufflevector <3 x float> %13, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kj, <2 x float> %i.ks, <2 x float> %i.kq)
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> %i.ks, <2 x float> %i.kr)
  %15 = shufflevector <3 x float> %13, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.kv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %15, <2 x float> %i.kt) ; 2 uses
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %15, <2 x float> %i.ku) ; 2 uses
  %i.kx = fneg <2 x float> %i.kw
  %i.ky = extractelement <2 x float> %i.kv, i64 1
  %i.kz = fneg float %i.ky
  %i.la = load <2 x float>, ptr %i.jk, align 4, !tbaa !18 ; 3 uses
  %i.lb = load float, ptr %i.jp, align 4, !tbaa !18
  %i.lc = load <2 x float>, ptr %i.jo, align 4, !tbaa !18
  %i.ld = insertelement <2 x float> %i.la, float %i.lb, i64 1
  %i.le = fsub <2 x float> %i.ld, %i.lc           ; 2 uses
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lg = fmul <2 x float> %i.lf, %i.kg
  %i.lh = fmul <2 x float> %i.lf, %i.kh
  %i.li = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> %i.li, <2 x float> %i.lg)
  %i.lk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kj, <2 x float> %i.li, <2 x float> %i.lh)
  %i.ll = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.kn, <2 x float> %i.lj) ; 2 uses
  %i.lm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.kn, <2 x float> %i.lk) ; 2 uses
  %i.ln = fmul <2 x float> %i.lm, %i.kx
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ll, <2 x float> %i.kv, <2 x float> %i.ln)
  %i.lp = fneg <2 x float> %i.lo                  ; 3 uses
  %i.lq = shufflevector <2 x float> %i.ll, <2 x float> %i.la, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.lr = insertelement <4 x float> poison, float %i.kz, i64 0
  %i.ls = insertelement <4 x float> %i.lr, float %i.jz, i64 1
  %i.lt = insertelement <4 x float> %i.ls, float %i.kc, i64 2
  %i.lu = insertelement <4 x float> %i.lt, float %i.kf, i64 3
  %i.lv = fmul <4 x float> %i.lq, %i.lu
  %i.lw = shufflevector <2 x float> %i.lm, <2 x float> %i.la, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.lx = shufflevector <2 x float> %i.kw, <2 x float> %i.jy, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> %i.kb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> %i.ke, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ma = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %i.lz, <4 x float> %i.lv) ; 3 uses
  %i.mb = extractelement <4 x float> %i.ma, i64 0
  %i.mc = fneg float %i.mb                        ; 2 uses
  %.sroa.3.12.vec.insert.i99 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mc, i64 0
  %i.md = extractelement <4 x float> %i.ma, i64 1
  %i.me = tail call noundef float @llvm.fmuladd.f32(float %i.jv, float %i.js, float %i.md)
  %i.mf = load float, ptr %i.da, align 4, !tbaa !18
  %i.mg = fadd float %i.me, %i.mf
  %i.mh = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = shufflevector <4 x float> %i.ma, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.mk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> %i.kl, <2 x float> %i.mj)
  %i.ml = load <2 x float>, ptr %i.db, align 4, !tbaa !18
  %i.mm = fadd <2 x float> %i.mk, %i.ml           ; 2 uses
  %shift = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.mm, %shift
  %i.mn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.mo = extractelement <2 x float> %i.lp, i64 0
  %i.mp = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mo, float %i.mn)
  %i.mq = extractelement <2 x float> %i.mm, i64 1
  %i.mr = tail call noundef float @llvm.fmuladd.f32(float %i.mq, float %i.mc, float %i.mp)
  %i.ms = fneg float %i.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store <2 x float> %i.lp, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i99, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !20
  call void @_ZN27btPolyhedralContactClipping8clipFaceERK20btAlignedObjectArrayI9btVector3ERS2_RKS1_f(ptr noundef nonnull align 8 dereferenceable(25) %.0157165, ptr noundef nonnull align 8 dereferenceable(25) %.0158164, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.ms)
  %i.mt = getelementptr inbounds nuw i8, ptr %.0157165, i64 4 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !15
  %i.mv = icmp slt i32 %i.mu, 0
  br i1 %i.mv, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114

bb.m:                                             ; preds = %bb.l
  %i.mw = getelementptr inbounds nuw i8, ptr %.0157165, i64 8 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !19
  %i.my = icmp slt i32 %i.mx, 0
  br i1 %i.my, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106: ; preds = %bb.m
  %i.mz = getelementptr inbounds nuw i8, ptr %.0157165, i64 16 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i.i107 = icmp eq ptr %i.na, null
  br i1 %.not.i5.i.i107, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108, label %bb.n

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106
  %i.nb = getelementptr inbounds nuw i8, ptr %.0157165, i64 24
  %i.nc = load i8, ptr %i.nb, align 8, !tbaa !23, !range !24, !noundef !25
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.o, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108

bb.o:                                             ; preds = %bb.n
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.na)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108: ; preds = %bb.o, %bb.n, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106
  %i.ne = getelementptr inbounds nuw i8, ptr %.0157165, i64 24
  store i8 1, ptr %i.ne, align 8, !tbaa !23
  store ptr null, ptr %i.mz, align 8, !tbaa !16
  store i32 0, ptr %i.mw, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108, %bb.l
  store i32 0, ptr %i.mt, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %exitcond179.not = icmp eq i64 %indvars.iv175, %i.dd
  br i1 %exitcond179.not, label %._crit_edge169.loopexit.peel.begin, label %bb.l, !llvm.loop !49

bb.p:                                             ; preds = %.lr.ph173, %bb.r
  %i.nf = phi i32 [ %i.jc, %.lr.ph173 ], [ %i.nq, %bb.r ]
  %indvars.iv180 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next181, %bb.r ] ; 2 uses
  %i.ng = load ptr, ptr %i.je, align 8, !tbaa !16
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %i.ng, i64 %indvars.iv180 ; 4 uses
  %.sroa.0.0.copyload = load float, ptr %i.nh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ni = fmul float %i.ih, %.sroa.4.0.copyload
  %i.nj = call float @llvm.fmuladd.f32(float %i.hy, float %.sroa.0.0.copyload, float %i.ni)
  %i.nk = call noundef float @llvm.fmuladd.f32(float %i.iq, float %.sroa.5.0.copyload, float %i.nj)
  %i.nl = fadd float %i.ja, %i.nk                 ; 2 uses
  %.inv = fcmp ole float %i.nl, %5
  %.0 = select i1 %.inv, float %5, float %i.nl    ; 2 uses
  %i.nm = fcmp ugt float %.0, %6
  br i1 %i.nm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %i.nh, i64 16, i1 false), !tbaa.struct !21
  %i.nn = load ptr, ptr %7, align 8, !tbaa !36
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  %.pre184 = load i32, ptr %i.jb, align 4, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.nq = phi i32 [ %.pre184, %bb.q ], [ %i.nf, %bb.p ] ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %i.nr = sext i32 %i.nq to i64
  %i.ns = icmp slt i64 %indvars.iv.next181, %i.nr
  br i1 %i.ns, label %bb.p, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %bb.r, %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit, %._crit_edge169, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btPolyhedralContactClipping19clipHullAgainstHullERK9btVector3RK18btConvexPolyhedronS5_RK11btTransformS8_ffR20btAlignedObjectArrayIS0_ESB_RN36btDiscreteCollisionDetectorInterface6ResultE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, float noundef %5, float noundef %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %0, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !20 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.a = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.a)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.c = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.b)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.c)
  %i.d = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 3 uses
  %i.e = fmul float %.sroa.0.0.vec.extract.i, %i.d ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.f = fmul float %.sroa.0.4.vec.extract.i, %i.d ; 2 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.f, i64 1
  %i.g = fmul float %.sroa.8.8.vec.extract.i, %i.d ; 2 uses
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> %.sroa.8.0.copyload.i, float %i.g, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %10, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = load float, ptr %4, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = load float, ptr %i.w, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load float, ptr %i.y, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.b, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.b:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !19
  %i.aj = icmp slt i32 %i.ai, 0
end_hunk_0
