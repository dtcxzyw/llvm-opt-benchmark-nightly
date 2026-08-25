Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGImpactQuantizedBvh?download=true
inline.NumInlined: 486
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE:bb.a
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
  %.pre.i = load i32, ptr %i.az, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.cm = phi i32 [ %.pre.i, %bb.j ], [ %i.cd, %bb.i ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.cl, %bb.j ], [ null, %bb.i ] ; 8 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %i.co = load ptr, ptr %i.bb, align 8, !tbaa !56 ; 9 uses
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
  %wide.load = load <4 x i32>, ptr %i.cs, align 4, !tbaa !4
  %wide.load48 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load, ptr %i.cr, align 4, !tbaa !4
  store <4 x i32> %wide.load48, ptr %i.cu, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !57

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
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !60

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cz = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i.2
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !61

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.dn = load i8, ptr %i.bc, align 8, !tbaa !62, !range !39, !noundef !40
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.co)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.az, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.l ], [ %i.cm, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  store i8 1, ptr %i.bc, align 8, !tbaa !62
  store ptr %.0.i.i.i, ptr %i.bb, align 8, !tbaa !56
  store i32 %i.ch, ptr %i.ba, align 8, !tbaa !55
  br label %.thread

.thread:                                          ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, %bb.h, %bb.g
  %i.dp = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.cd, %bb.h ], [ %i.cd, %bb.g ]
  %i.dq = load ptr, ptr %i.bb, align 8, !tbaa !56
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  store i32 %i.cb, ptr %i.ds, align 4, !tbaa !4
  %i.dt = load i32, ptr %i.az, align 4, !tbaa !51
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.az, align 4, !tbaa !51
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
  %i.dx = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.be
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !33
  %i.eb = sub nsw i32 %.038, %i.ea
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i32 [ %i.dw, %bb.n ], [ %i.eb, %bb.o ] ; 2 uses
  %i.ec = icmp slt i32 %.1, %i.a
  br i1 %i.ec, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !51
  %i.ef = icmp sgt i32 %i.ee, 0
  ret i1 %i.ef
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZNK21btGImpactQuantizedBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.024 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.q ]  ; 3 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.r = sext i32 %.024 to i64                    ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.r ; 6 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !31
  %4 = load <4 x float>, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %5 = load <4 x float>, ptr %i.d, align 8
  %i.v = load float, ptr %i.g, align 4, !tbaa !16 ; 2 uses
  %i.w = load float, ptr %i.h, align 8, !tbaa !16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.y = load i16, ptr %i.x, align 2, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load <2 x i16>, ptr %i.u, align 2, !tbaa !31
  %i.ab = load <2 x float>, ptr %i.f, align 4, !tbaa !16
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ad = load <2 x i16>, ptr %i.z, align 2, !tbaa !31
  %i.ae = shufflevector <2 x i16> %i.aa, <2 x i16> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = uitofp <4 x i16> %i.ae to <4 x float>
  %i.ag = fdiv <4 x float> %i.af, %i.ac           ; 4 uses
  %i.ah = extractelement <4 x float> %i.ag, i64 0
  %i.ai = fadd float %i.ah, %i.v
  %i.aj = extractelement <4 x float> %i.ag, i64 1
  %i.ak = fadd float %i.aj, %i.w
  %i.al = insertelement <2 x i16> poison, i16 %i.t, i64 0
  %i.am = insertelement <2 x i16> %i.al, i16 %i.y, i64 1
  %i.an = uitofp <2 x i16> %i.am to <2 x float>
  %i.ao = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv <2 x float> %i.an, %i.ao
  %i.aq = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fadd <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = extractelement <4 x float> %i.ag, i64 2
  %i.at = fadd float %i.v, %i.as                  ; 2 uses
  %i.au = extractelement <4 x float> %i.ag, i64 3
  %i.av = fadd float %i.w, %i.au                  ; 2 uses
  %i.aw = extractelement <2 x float> %i.ar, i64 0
  %i.ax = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.ay = fadd float %i.aw, %i.ax
  %i.az = fadd float %i.ai, %i.at
  %i.ba = fadd float %i.ak, %i.av
  %i.bb = fmul float %i.ay, 5.000000e-01          ; 2 uses
  %i.bc = fmul float %i.az, 5.000000e-01          ; 2 uses
  %i.bd = fmul float %i.ba, 5.000000e-01          ; 2 uses
  %i.be = fsub float %i.ax, %i.bb                 ; 3 uses
  %i.bf = fsub float %i.at, %i.bc                 ; 2 uses
  %i.bg = fsub float %i.av, %i.bd                 ; 3 uses
  %i.bh = load float, ptr %2, align 4, !tbaa !16
  %i.bi = fsub float %i.bh, %i.bb                 ; 4 uses
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp ogt float %i.bj, %i.be
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bl = load float, ptr %1, align 4, !tbaa !16
  %i.bm = fmul float %i.bi, %i.bl
  %i.bn = fcmp ult float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.d, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bo = load float, ptr %i.i, align 4, !tbaa !16
  %i.bp = fsub float %i.bo, %i.bc                 ; 4 uses
  %i.bq = tail call noundef float @llvm.fabs.f32(float %i.bp)
  %i.br = fcmp ogt float %i.bq, %i.bf
  br i1 %i.br, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bs = load float, ptr %i.j, align 4, !tbaa !16
  %i.bt = fmul float %i.bp, %i.bs
  %i.bu = fcmp ult float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.f, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bv = load float, ptr %i.k, align 4, !tbaa !16
  %i.bw = fsub float %i.bv, %i.bd                 ; 4 uses
  %i.bx = tail call noundef float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp ule float %i.bx, %i.bg
  %i.bz = load float, ptr %i.l, align 4, !tbaa !16 ; 4 uses
  %i.ca = fmul float %i.bw, %i.bz
  %i.cb = fcmp ult float %i.ca, 0.000000e+00
  %or.cond.i = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %._crit_edge.i, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %i.cc = load float, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.cd = fneg float %i.bp
  %i.ce = tail call noundef float @llvm.fabs.f32(float %i.bz) ; 2 uses
  %i.cf = tail call noundef float @llvm.fabs.f32(float %i.cc) ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.bg, i64 1
  %i.ci = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.cf, i64 1
  %i.ck = fmul <2 x float> %i.ch, %i.cj
  %i.cl = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.bf, i64 1 ; 2 uses
  %i.cn = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.ce, i64 1
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.co, <2 x float> %i.ck) ; 2 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0
  %i.cr = tail call noundef float @llvm.fabs.f32(float %i.cq)
  %i.cs = extractelement <2 x float> %i.cp, i64 1
  %i.ct = fcmp ogt float %i.cr, %i.cs
  br i1 %i.ct, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.cu = load float, ptr %1, align 4, !tbaa !16  ; 3 uses
  %i.cv = fneg float %i.bw
  %i.cw = fmul float %i.cu, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bi, float %i.cw)
  %i.cy = tail call noundef float @llvm.fabs.f32(float %i.cx)
  %i.cz = tail call noundef float @llvm.fabs.f32(float %i.cu) ; 2 uses
  %i.da = fmul float %i.bg, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.be, float %i.ce, float %i.da)
  %i.dc = fcmp ogt float %i.cy, %i.db
  br i1 %i.dc, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit

_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread: ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %._crit_edge.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !33
  %i.df = icmp sgt i32 %i.de, -1
  br label %bb.n

_ZNK6btAABB11collide_rayERK9btVector3S2_.exit:    ; preds = %bb.g
  %i.dg = fneg float %i.bi
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.cz, i64 1
  %i.dj = fmul <2 x float> %i.cm, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.be, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.cf, i64 1
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dn, <2 x float> %i.dj) ; 2 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dr = extractelement <2 x float> %i.do, i64 1
  %i.ds = fcmp ule float %i.dq, %i.dr             ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !33 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1                  ; 2 uses
  %or.cond = and i1 %i.ds, %i.dv
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
  %i.dw = load i32, ptr %i.m, align 4, !tbaa !51  ; 7 uses
  %i.dx = load i32, ptr %i.n, align 8, !tbaa !55
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.dw, 0
  %i.dz = shl nsw i32 %i.dw, 1
  %i.ea = select i1 %.not.i.i, i32 1, i32 %i.dz   ; 4 uses
  %i.eb = icmp slt i32 %i.dw, %i.ea
  br i1 %i.eb, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ec = sext i32 %i.ea to i64
  %i.ed = shl nsw i64 %i.ec, 2
  %i.ee = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ed, i32 noundef 16)
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.ef = phi i32 [ %.pre.i, %bb.k ], [ %i.dw, %bb.j ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ee, %bb.k ], [ null, %bb.j ] ; 8 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !56  ; 9 uses
  br i1 %i.eg, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %.0.i.i.i33 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ef to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ef, 8
  %i.ej = sub i64 %i.ei, %.0.i.i.i33
  %diff.check = icmp ugt i64 %i.ej, -32
  %or.cond35 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond35, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load = load <4 x i32>, ptr %i.el, align 4, !tbaa !4
  %wide.load34 = load <4 x i32>, ptr %i.em, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <4 x i32> %wide.load, ptr %i.ek, align 4, !tbaa !4
  store <4 x i32> %wide.load34, ptr %i.en, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !63

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
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i.i.i.prol
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !64

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.es = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.et = icmp ugt i64 %i.es, -4
  br i1 %i.et, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
end_hunk_0
begin_hunk_1_@_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib:bb.a
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !86

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !87, !range !39, !noundef !40
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.h, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cl)
  %.pre2.pre.pre.i.i = load i32, ptr %i.bx, align 4, !tbaa !78
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i: ; preds = %bb.h, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.ci, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i ], [ %.pre2.pre.pre.i.i, %bb.h ], [ %i.ci, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.do, align 8, !tbaa !87
  store ptr %.0.i.i.i.i, ptr %i.ck, align 8, !tbaa !83
  store i32 %i.cd, ptr %i.bz, align 8, !tbaa !82
  br label %_ZN9btPairSet9push_pairEii.exit

_ZN9btPairSet9push_pairEii.exit:                  ; preds = %bb.d, %bb.e, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i
  %i.dp = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i ], [ %i.by, %bb.e ], [ %i.by, %bb.d ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !83
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ds ; 2 uses
  store i32 %i.bq, ptr %i.dt, align 4, !tbaa !88
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %i.bv, ptr %i.du, align 4, !tbaa !90
  %i.dv = add nsw i32 %i.dp, 1
  store i32 %i.dv, ptr %i.bx, align 4, !tbaa !78
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.dw = add nsw i32 %5, 1                       ; 3 uses
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %4, i32 noundef %i.dw, i1 noundef zeroext false)
  %i.dx = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !33 ; 2 uses
  %i.ec = add nsw i32 %5, 2
  %i.ed = sub nsw i32 %i.dw, %i.eb
  %i.ee = icmp slt i32 %i.eb, 0
  %.0.i.i = select i1 %i.ee, i32 %i.ed, i32 %i.ec
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %4, i32 noundef %.0.i.i, i1 noundef zeroext false)
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  %i.ef = add nsw i32 %4, 1                       ; 8 uses
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.ef, i32 noundef %5, i1 noundef zeroext false)
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !33 ; 2 uses
  %i.el = add nsw i32 %4, 2
  %i.em = sub nsw i32 %i.ef, %i.ek
  %i.en = icmp slt i32 %i.ek, 0
  %.0.i.i76 = select i1 %i.en, i32 %i.em, i32 %i.el
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i76, i32 noundef %5, i1 noundef zeroext false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.eo = add nsw i32 %5, 1                       ; 5 uses
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.ef, i32 noundef %i.eo, i1 noundef zeroext false)
  %i.ep = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.eq = sext i32 %i.eo to i64                   ; 2 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ep, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !33 ; 2 uses
  %i.eu = add nsw i32 %5, 2                       ; 2 uses
  %i.ev = sub nsw i32 %i.eo, %i.et
  %i.ew = icmp slt i32 %i.et, 0
  %.0.i.i77 = select i1 %i.ew, i32 %i.ev, i32 %i.eu
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.ef, i32 noundef %.0.i.i77, i1 noundef zeroext false)
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ey = sext i32 %i.ef to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !33 ; 2 uses
  %i.fc = add nsw i32 %4, 2                       ; 2 uses
  %i.fd = sub nsw i32 %i.ef, %i.fb
  %i.fe = icmp slt i32 %i.fb, 0
  %.0.i.i78 = select i1 %i.fe, i32 %i.fd, i32 %i.fc
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i78, i32 noundef %i.eo, i1 noundef zeroext false)
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.ey
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !33 ; 2 uses
  %i.fj = sub nsw i32 %i.ef, %i.fi
  %i.fk = icmp slt i32 %i.fi, 0
  %.0.i.i79 = select i1 %i.fk, i32 %i.fj, i32 %i.fc
  %i.fl = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.fm = getelementptr inbounds [16 x i8], ptr %i.fl, i64 %i.eq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33 ; 2 uses
  %i.fp = sub nsw i32 %i.eo, %i.fo
  %i.fq = icmp slt i32 %i.fo, 0
  %.0.i.i80 = select i1 %i.fq, i32 %i.fp, i32 %i.eu
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i79, i32 noundef %.0.i.i80, i1 noundef zeroext false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.a, %bb.i, %_ZN9btPairSet9push_pairEii.exit
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(112) %2, i1 noundef zeroext %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !16 ; 2 uses
  %i.c = load float, ptr %0, align 4, !tbaa !16
  %i.d = fadd float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !16
  %i.i = fadd float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !16
  %i.n = fadd float %i.k, %i.m
  %i.o = fmul float %i.d, 5.000000e-01            ; 2 uses
  %i.p = fmul float %i.i, 5.000000e-01            ; 2 uses
  %i.q = fmul float %i.n, 5.000000e-01            ; 2 uses
  %i.r = fsub float %i.b, %i.o                    ; 10 uses
  %i.s = fsub float %i.f, %i.p                    ; 10 uses
  %i.t = fsub float %i.k, %i.q                    ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = load float, ptr %1, align 4, !tbaa !16
  %i.x = fadd float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !16
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = fmul float %i.x, 5.000000e-01           ; 3 uses
  %i.aj = fmul float %i.ac, 5.000000e-01          ; 3 uses
  %i.ak = fmul float %i.ah, 5.000000e-01          ; 3 uses
  %i.al = fsub float %i.v, %i.ai                  ; 9 uses
  %i.am = fsub float %i.z, %i.aj                  ; 9 uses
  %i.an = fsub float %i.ae, %i.ak                 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !16 ; 4 uses
  %i.at = fmul float %i.aj, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ai, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !16 ; 4 uses
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.ak, float %i.au)
  %i.ay = load float, ptr %2, align 4, !tbaa !16
  %i.az = fadd float %i.ay, %i.ax
  %i.ba = fsub float %i.az, %i.o                  ; 10 uses
  %i.bb = load float, ptr %i.ap, align 4, !tbaa !16 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !16 ; 6 uses
  %i.be = fmul float %i.bd, %i.am
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.al, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !16 ; 6 uses
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.an, float %i.bf)
  %i.bj = fadd float %i.bi, %i.r
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.ba)
  %i.bl = fcmp ogt float %i.bk, %i.bj
  br i1 %i.bl, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !16 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %4 = load <4 x float>, ptr %i.bq, align 4
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !16 ; 6 uses
  %i.bv = load <2 x float>, ptr %i.bm, align 4, !tbaa !16 ; 3 uses
  %i.bw = load float, ptr %i.bn, align 4, !tbaa !16 ; 3 uses
  %i.bx = load <2 x float>, ptr %i.br, align 4, !tbaa !16 ; 3 uses
  %i.by = load float, ptr %i.bs, align 4, !tbaa !16 ; 5 uses
  %i.bz = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.am, i64 1 ; 2 uses
  %i.cb = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.cc = fmul <2 x float> %i.ca, %i.cb
  %i.cd = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.ce = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.al, i64 1 ; 2 uses
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cc)
  %i.ch = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.bu, i64 1
  %i.cj = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.an, i64 1 ; 2 uses
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ck, <2 x float> %i.cg)
  %i.cm = insertelement <2 x float> %5, float %i.s, i64 1
  %i.cn = fadd <2 x float> %i.cm, %i.cl           ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = fsub float %i.co, %i.p                  ; 10 uses
  %i.cq = tail call noundef float @llvm.fabs.f32(float %i.cp)
  %i.cr = extractelement <2 x float> %i.cn, i64 1
  %i.cs = fcmp ogt float %i.cq, %i.cr
  br i1 %i.cs, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = load <4 x float>, ptr %i.cx, align 4
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.db = load float, ptr %i.da, align 4, !tbaa !16 ; 6 uses
  %i.dc = load <2 x float>, ptr %i.ct, align 4, !tbaa !16 ; 3 uses
  %i.dd = load float, ptr %i.cu, align 4, !tbaa !16 ; 3 uses
  %i.de = load <2 x float>, ptr %i.cy, align 4, !tbaa !16 ; 3 uses
  %i.df = load float, ptr %i.cz, align 4, !tbaa !16 ; 5 uses
  %i.dg = shufflevector <2 x float> %i.dc, <2 x float> %i.de, <2 x i32> <i32 1, i32 3>
  %i.dh = fmul <2 x float> %i.ca, %i.dg
  %i.di = shufflevector <2 x float> %i.dc, <2 x float> %i.de, <2 x i32> <i32 0, i32 2>
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.cf, <2 x float> %i.dh)
  %i.dk = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.db, i64 1
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.ck, <2 x float> %i.dj)
  %i.dn = insertelement <2 x float> %7, float %i.t, i64 1
  %i.do = fadd <2 x float> %i.dn, %i.dm           ; 2 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = fsub float %i.dp, %i.q                  ; 10 uses
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dq)
  %i.ds = extractelement <2 x float> %i.do, i64 1
  %i.dt = fcmp ogt float %i.dr, %i.ds
  br i1 %i.dt, label %.critedge, label %.preheader83

.preheader83:                                     ; preds = %bb.c
  %i.du = extractelement <2 x float> %i.bv, i64 0 ; 3 uses
  %i.dv = fmul float %i.cp, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.aq, float %i.dv)
  %i.dx = extractelement <2 x float> %i.dc, i64 0 ; 3 uses
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dx, float %i.dw)
  %i.dz = extractelement <2 x float> %i.bx, i64 0 ; 5 uses
  %i.ea = fmul float %i.s, %i.dz
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bb, float %i.ea)
  %i.ec = extractelement <2 x float> %i.de, i64 0 ; 5 uses
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.ec, float %i.eb)
  %i.ee = fadd float %i.ed, %i.al
  %i.ef = tail call noundef float @llvm.fabs.f32(float %i.dy)
  %i.eg = fcmp ogt float %i.ef, %i.ee
  br i1 %i.eg, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.preheader83
  %i.eh = fmul float %i.cp, %i.bw
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.as, float %i.eh)
  %i.ej = tail call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dd, float %i.ei)
  %i.ek = fmul float %i.s, %i.by
  %i.el = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bd, float %i.ek)
  %i.em = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.df, float %i.el)
  %i.en = fadd float %i.em, %i.am
  %i.eo = tail call noundef float @llvm.fabs.f32(float %i.ej)
  %i.ep = fcmp ogt float %i.eo, %i.en
  br i1 %i.ep, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eq = fmul float %i.cp, %i.bp
  %i.er = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.aw, float %i.eq)
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.cw, float %i.er)
  %i.et = fmul float %i.s, %i.bu
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bh, float %i.et)
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.db, float %i.eu)
  %i.ew = fadd float %i.ev, %i.an
  %i.ex = tail call noundef float @llvm.fabs.f32(float %i.es)
  %i.ey = fcmp ule float %i.ex, %i.ew             ; 2 uses
  %brmerge.not = and i1 %i.ey, %3
  br i1 %brmerge.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.e
  %i.ez = fneg float %i.dx
  %i.fa = fmul float %i.cp, %i.ez
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.du, float %i.fa)
  %i.fc = fmul float %i.t, %i.dz
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.s, float %i.ec, float %i.fc)
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.am, float %i.bh, float %i.fd)
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.an, float %i.bd, float %i.fe)
  %i.fg = tail call noundef float @llvm.fabs.f32(float %i.fb)
  %i.fh = fcmp ogt float %i.fg, %i.ff
  br i1 %i.fh, label %.critedge.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.fi = fneg float %i.dd
  %i.fj = fmul float %i.cp, %i.fi
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.bw, float %i.fj)
  %i.fl = fmul float %i.t, %i.by
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.s, float %i.df, float %i.fl)
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bh, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.an, float %i.bb, float %i.fn)
  %i.fp = tail call noundef float @llvm.fabs.f32(float %i.fk)
  %i.fq = fcmp ogt float %i.fp, %i.fo
  br i1 %i.fq, label %.critedge.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fr = fneg float %i.cw
  %i.fs = fmul float %i.cp, %i.fr
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.bp, float %i.fs)
  %i.fu = fmul float %i.t, %i.bu
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.s, float %i.db, float %i.fu)
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bd, float %i.fv)
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.am, float %i.bb, float %i.fw)
  %i.fy = tail call noundef float @llvm.fabs.f32(float %i.ft)
  %i.fz = fcmp ogt float %i.fy, %i.fx
  br i1 %i.fz, label %.critedge.loopexit, label %.loopexit

.loopexit:                                        ; preds = %bb.g
  %i.ga = fneg float %i.aq
  %i.gb = fmul float %i.dq, %i.ga
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.dx, float %i.gb)
  %i.gd = fmul float %i.t, %i.bb
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ec, float %i.gd)
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.am, float %i.bu, float %i.ge)
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.an, float %i.by, float %i.gf)
  %i.gh = tail call noundef float @llvm.fabs.f32(float %i.gc)
  %i.gi = fcmp ogt float %i.gh, %i.gg
  br i1 %i.gi, label %.critedge.loopexit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.gj = fneg float %i.as
  %i.gk = fmul float %i.dq, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.dd, float %i.gk)
  %i.gm = fmul float %i.t, %i.bd
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.r, float %i.df, float %i.gm)
  %i.go = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bu, float %i.gn)
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.an, float %i.dz, float %i.go)
  %i.gq = tail call noundef float @llvm.fabs.f32(float %i.gl)
  %i.gr = fcmp ogt float %i.gq, %i.gp
  br i1 %i.gr, label %.critedge.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gs = fneg float %i.aw
  %i.gt = fmul float %i.dq, %i.gs
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.cw, float %i.gt)
  %i.gv = fmul float %i.t, %i.bh
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.r, float %i.db, float %i.gv)
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.al, float %i.by, float %i.gw)
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.am, float %i.dz, float %i.gx)
  %i.gz = tail call noundef float @llvm.fabs.f32(float %i.gu)
  %i.ha = fcmp ogt float %i.gz, %i.gy
  br i1 %i.ha, label %.critedge.loopexit, label %.loopexit.1

.loopexit.1:                                      ; preds = %bb.i
  %i.hb = fneg float %i.du
  %i.hc = fmul float %i.ba, %i.hb
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.aq, float %i.hc)
  %i.he = fmul float %i.s, %i.bb
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.r, float %i.dz, float %i.he)
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.am, float %i.db, float %i.hf)
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.an, float %i.df, float %i.hg)
  %i.hi = tail call noundef float @llvm.fabs.f32(float %i.hd)
  %i.hj = fcmp ogt float %i.hi, %i.hh
  br i1 %i.hj, label %.critedge.loopexit, label %bb.j

bb.j:                                             ; preds = %.loopexit.1
  %i.hk = fneg float %i.bw
  %i.hl = fmul float %i.ba, %i.hk
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.as, float %i.hl)
  %i.hn = fmul float %i.s, %i.bd
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.r, float %i.by, float %i.hn)
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.al, float %i.db, float %i.ho)
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ec, float %i.hp)
  %i.hr = tail call noundef float @llvm.fabs.f32(float %i.hm)
  %i.hs = fcmp ogt float %i.hr, %i.hq
  br i1 %i.hs, label %.critedge.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ht = fneg float %i.bp
  %i.hu = fmul float %i.ba, %i.ht
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.aw, float %i.hu)
  %i.hw = fmul float %i.s, %i.bh
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bu, float %i.hw)
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.al, float %i.df, float %i.hx)
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ec, float %i.hy)
  %i.ia = tail call noundef float @llvm.fabs.f32(float %i.hv)
  %i.ib = fcmp ogt float %i.ia, %i.hz
  br i1 %i.ib, label %.critedge.loopexit, label %.critedge

.critedge.loopexit:                               ; preds = %bb.k, %bb.j, %.loopexit.1, %bb.i, %bb.h, %.loopexit, %bb.g, %bb.f, %.preheader
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %.preheader83, %bb.d, %bb.k, %.critedge.loopexit
  %.165 = phi i1 [ true, %bb.k ], [ false, %.critedge.loopexit ], [ false, %bb.a ], [ false, %.preheader83 ], [ %i.ey, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.165
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { inlinehint uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
end_hunk_1
