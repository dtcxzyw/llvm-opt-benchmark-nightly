Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGImpactQuantizedBvh?download=true
inline.NumInlined: 484
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE:bb.a
_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit: ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !35
  %i.bz = icmp uge i16 %i.by, %i.ap               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !37 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, -1                  ; 2 uses
  %or.cond = and i1 %i.bz, %i.cc
  br i1 %or.cond, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit
  %i.cd = load i32, ptr %i.az, align 4, !tbaa !49 ; 7 uses
  %i.ce = load i32, ptr %i.ba, align 8, !tbaa !50
  %i.cf = icmp eq i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.cd, 0
  %i.cg = shl nsw i32 %i.cd, 1
  %i.ch = select i1 %.not.i.i, i32 1, i32 %i.cg   ; 4 uses
  %i.ci = icmp slt i32 %i.cd, %i.ch
  br i1 %i.ci, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = sext i32 %i.ch to i64
  %i.ck = shl nsw i64 %i.cj, 2
  %i.cl = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ck, i32 noundef 16)
  %.pre.i = load i32, ptr %i.az, align 4, !tbaa !49
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.cm = phi i32 [ %.pre.i, %bb.j ], [ %i.cd, %bb.i ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.cl, %bb.j ], [ null, %bb.i ] ; 8 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !51 ; 9 uses
  br i1 %i.cn, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.cp = ptrtoaddr ptr %i.co to i64
  %.0.i.i.i47 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.cm to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.cm, 8
  %i.cq = sub i64 %i.cp, %.0.i.i.i47
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond49 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load = load <4 x i32>, ptr %i.cs, align 4, !tbaa !26
  %wide.load48 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load, ptr %i.cr, align 4, !tbaa !26
  store <4 x i32> %wide.load48, ptr %i.cu, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i.i.i.prol
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !26
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !76

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cz = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !26
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !26
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !26
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i.2
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !26
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !77

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.dn = load i8, ptr %i.bc, align 8, !tbaa !54, !range !38, !noundef !39
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.co)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.az, align 4, !tbaa !49
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.l ], [ %i.cm, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  store i8 1, ptr %i.bc, align 8, !tbaa !54
  store ptr %.0.i.i.i, ptr %i.bb, align 8, !tbaa !51
  store i32 %i.ch, ptr %i.ba, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, %bb.h, %bb.g
  %i.dp = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.cd, %bb.h ], [ %i.cd, %bb.g ]
  %i.dq = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  store i32 %i.cb, ptr %i.ds, align 4, !tbaa !26
  %i.dt = load i32, ptr %i.az, align 4, !tbaa !49
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.az, align 4, !tbaa !49
  br label %bb.n

bb.m:                                             ; preds = %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit.thread, %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit
  %i.dv = phi i1 [ %i.bw, %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit.thread ], [ %i.cc, %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit ]
  %.0.i.i37 = phi i1 [ false, %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit.thread ], [ %i.bz, %_ZNK18btQuantizedBvhTree24testQuantizedBoxOverlappEiPtS0_.exit ]
  %or.cond3 = or i1 %i.dv, %.0.i.i37
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  %i.dw = add nsw i32 %.038, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %i.ay, align 8, !tbaa !33
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.be
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !37
  %i.eb = sub nsw i32 %.038, %i.ea
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i32 [ %i.dw, %bb.n ], [ %i.eb, %bb.o ] ; 2 uses
  %i.ec = icmp slt i32 %.1, %i.a
  br i1 %i.ec, label %bb.b, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !49
  %i.ef = icmp sgt i32 %i.ee, 0
  ret i1 %i.ef
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.024 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.q ]  ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.q = sext i32 %.024 to i64                    ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 6 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !35
  %i.t = load float, ptr %i.e, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.v = load float, ptr %i.d, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.x = load i16, ptr %i.w, align 2, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load <2 x i16>, ptr %i.u, align 2, !tbaa !35
  %i.aa = load <2 x float>, ptr %i.f, align 4, !tbaa !19
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ac = load <2 x i16>, ptr %i.y, align 2, !tbaa !35
  %i.ad = shufflevector <2 x i16> %i.z, <2 x i16> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = uitofp <4 x i16> %i.ad to <4 x float>
  %i.af = fdiv <4 x float> %i.ae, %i.ab           ; 2 uses
  %i.ag = insertelement <2 x i16> poison, i16 %i.s, i64 0
  %i.ah = insertelement <2 x i16> %i.ag, i16 %i.x, i64 1
  %i.ai = uitofp <2 x i16> %i.ah to <2 x float>
  %i.aj = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fdiv <2 x float> %i.ai, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.v, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fadd <2 x float> %i.al, %i.an           ; 2 uses
  %4 = extractelement <2 x float> %i.ao, i64 0
  %i.ap = extractelement <2 x float> %i.ao, i64 1 ; 2 uses
  %i.aq = fadd float %4, %i.ap
  %5 = load <2 x float>, ptr %i.g, align 4, !tbaa !19 ; 2 uses
  %6 = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %7 = fadd <2 x float> %6, %5
  %8 = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %9 = fadd <2 x float> %5, %8                    ; 3 uses
  %10 = fadd <2 x float> %7, %9                   ; 2 uses
  %11 = fmul float %i.aq, 5.000000e-01            ; 2 uses
  %12 = extractelement <2 x float> %10, i64 0
  %i.ar = fmul float %12, 5.000000e-01            ; 2 uses
  %13 = extractelement <2 x float> %10, i64 1
  %i.as = fmul float %13, 5.000000e-01            ; 2 uses
  %i.at = fsub float %i.ap, %11                   ; 3 uses
  %14 = extractelement <2 x float> %9, i64 0
  %i.au = fsub float %14, %i.ar                   ; 2 uses
  %15 = extractelement <2 x float> %9, i64 1
  %i.av = fsub float %15, %i.as                   ; 3 uses
  %i.aw = load float, ptr %2, align 4, !tbaa !19
  %i.ax = fsub float %i.aw, %11                   ; 4 uses
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.az = fcmp ogt float %i.ay, %i.at
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = load float, ptr %1, align 4, !tbaa !19
  %i.bb = fmul float %i.ax, %i.ba
  %i.bc = fcmp ult float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.d, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bd = load float, ptr %i.h, align 4, !tbaa !19
  %i.be = fsub float %i.bd, %i.ar                 ; 4 uses
  %i.bf = tail call noundef float @llvm.fabs.f32(float %i.be)
  %i.bg = fcmp ogt float %i.bf, %i.au
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = load float, ptr %i.i, align 4, !tbaa !19
  %i.bi = fmul float %i.be, %i.bh
  %i.bj = fcmp ult float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.f, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bk = load float, ptr %i.j, align 4, !tbaa !19
  %i.bl = fsub float %i.bk, %i.as                 ; 4 uses
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bl)
  %i.bn = fcmp ule float %i.bm, %i.av
  %i.bo = load float, ptr %i.k, align 4, !tbaa !19 ; 4 uses
  %i.bp = fmul float %i.bl, %i.bo
  %i.bq = fcmp ult float %i.bp, 0.000000e+00
  %or.cond.i = select i1 %i.bn, i1 true, i1 %i.bq
  br i1 %or.cond.i, label %._crit_edge.i, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %i.br = load float, ptr %i.i, align 4, !tbaa !19 ; 2 uses
  %i.bs = fneg float %i.be
  %i.bt = tail call noundef float @llvm.fabs.f32(float %i.bo) ; 2 uses
  %i.bu = tail call noundef float @llvm.fabs.f32(float %i.br) ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.av, i64 1
  %i.bx = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bu, i64 1
  %i.bz = fmul <2 x float> %i.bw, %i.by
  %i.ca = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.au, i64 1 ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.bt, i64 1
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cd, <2 x float> %i.bz) ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0
  %i.cg = tail call noundef float @llvm.fabs.f32(float %i.cf)
  %i.ch = extractelement <2 x float> %i.ce, i64 1
  %i.ci = fcmp ogt float %i.cg, %i.ch
  br i1 %i.ci, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.cj = load float, ptr %1, align 4, !tbaa !19  ; 3 uses
  %i.ck = fneg float %i.bl
  %i.cl = fmul float %i.cj, %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.ax, float %i.cl)
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cm)
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.cj) ; 2 uses
  %i.cp = fmul float %i.av, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bt, float %i.cp)
  %i.cr = fcmp ogt float %i.cn, %i.cq
  br i1 %i.cr, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit

_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread: ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %._crit_edge.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !37
  %i.cu = icmp sgt i32 %i.ct, -1
  br label %bb.n

_ZNK6btAABB11collide_rayERK9btVector3S2_.exit:    ; preds = %bb.g
  %i.cv = fneg float %i.ax
  %i.cw = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.co, i64 1
  %i.cy = fmul <2 x float> %i.cb, %i.cx
  %i.cz = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.at, i64 1
  %i.db = insertelement <2 x float> poison, float %i.be, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.bu, i64 1
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dc, <2 x float> %i.cy) ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0
  %i.df = tail call noundef float @llvm.fabs.f32(float %i.de)
  %i.dg = extractelement <2 x float> %i.dd, i64 1
  %i.dh = fcmp ule float %i.df, %i.dg             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !37 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, -1                  ; 2 uses
  %or.cond = and i1 %i.dh, %i.dk
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
  %i.dl = load i32, ptr %i.l, align 4, !tbaa !49  ; 7 uses
  %i.dm = load i32, ptr %i.m, align 8, !tbaa !50
  %i.dn = icmp eq i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.dl, 0
  %i.do = shl nsw i32 %i.dl, 1
  %i.dp = select i1 %.not.i.i, i32 1, i32 %i.do   ; 4 uses
  %i.dq = icmp slt i32 %i.dl, %i.dp
  br i1 %i.dq, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dr = sext i32 %i.dp to i64
  %i.ds = shl nsw i64 %i.dr, 2
  %i.dt = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ds, i32 noundef 16)
  %.pre.i = load i32, ptr %i.l, align 4, !tbaa !49
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.du = phi i32 [ %.pre.i, %bb.k ], [ %i.dl, %bb.j ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.dt, %bb.k ], [ null, %bb.j ] ; 8 uses
  %i.dv = icmp sgt i32 %i.du, 0
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !51  ; 9 uses
  br i1 %i.dv, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %.0.i.i.i33 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.du to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.du, 8
  %i.dy = sub i64 %i.dx, %.0.i.i.i33
  %diff.check = icmp ugt i64 %i.dy, -32
  %or.cond35 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond35, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load = load <4 x i32>, ptr %i.ea, align 4, !tbaa !26
  %wide.load34 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load, ptr %i.dz, align 4, !tbaa !26
  store <4 x i32> %wide.load34, ptr %i.ec, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i.i.i.prol
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !26
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.eh = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i.i.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !26
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !26
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !26
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i.i.i.1
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !26
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i.i.i.2
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !26
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !81

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.ev = load i8, ptr %i.o, align 8, !tbaa !54, !range !38, !noundef !39
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.l, label %bb.m
end_hunk_0
