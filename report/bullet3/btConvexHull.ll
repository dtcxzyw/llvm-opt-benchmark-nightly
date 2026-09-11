Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHull?download=true
inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE:bb.a
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i104
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !41
  %.not.i106 = icmp eq i32 %i.dd, 0
  br i1 %.not.i106, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i102
  %i.de = icmp eq i32 %.01314.i105, -1
  br i1 %i.de, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i104 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !12
  %i.di = sext i32 %.01314.i105 to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %0, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !12
  %i.dm = load <2 x float>, ptr %i.df, align 4, !tbaa !12 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dj, align 4, !tbaa !12 ; 2 uses
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dp = fmul <2 x float> %i.cz, %i.do
  %i.dq = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.da, <2 x float> %i.dp)
  %i.ds = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.dl, i64 1
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.db, <2 x float> %i.dr) ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = extractelement <2 x float> %i.du, i64 1
  %i.dx = fcmp ogt float %i.dv, %i.dw
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dy = trunc nuw nsw i64 %indvars.iv.i104 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i102
  %.1.i107 = phi i32 [ %i.dy, %bb.k ], [ %.01314.i105, %bb.j ], [ %.01314.i105, %.lr.ph.i102 ] ; 2 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i
  br i1 %exitcond.not.i109, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110, label %.lr.ph.i102, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110: ; preds = %bb.l, %bb.h
  %.013.lcssa.i101 = phi i32 [ -1, %bb.h ], [ %.1.i107, %bb.l ] ; 3 uses
  %i.dz = icmp eq i32 %.064229, %.013.lcssa.i
  %i.ea = icmp eq i32 %.013.lcssa.i101, %.013.lcssa.i
  %or.cond = and i1 %i.dz, %i.ea
  br i1 %or.cond, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110
  %.not = icmp eq i32 %.064229, -1
  %.not77 = icmp eq i32 %.064229, %.013.lcssa.i101
  %or.cond78 = or i1 %.not, %.not77
  br i1 %or.cond78, label %.thread194, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = add nsw i32 %.063230.int, -40
  %i.ec = sitofp i32 %i.eb to float               ; 3 uses
  %i.ed = fcmp ugt float %i.ec, %indvar.conv
  br i1 %i.ed, label %.thread194, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %i.a, label %.lr.ph.i137.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.ee = fmul nnan float %i.ec, f0x3C8EFA35      ; 2 uses
  %i.ef = tail call noundef float @sinf(float noundef %i.ee) #19 ; 0 uses
  %i.eg = tail call noundef float @cosf(float noundef %i.ee) #19 ; 0 uses
  %i.eh = add nsw i32 %.063230.int, -35
  %i.ei = sitofp i32 %i.eh to float               ; 2 uses
  %i.ej = fcmp ugt float %i.ei, %indvar.conv
  br i1 %i.ej, label %.thread194, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.thread

.lr.ph.i137.us:                                   ; preds = %.lr.ph, %bb.u
  %.0227.us = phi float [ %i.fy, %bb.u ], [ %i.ec, %.lr.ph ] ; 2 uses
  %.062226.us = phi i32 [ %.1.i142.us, %bb.u ], [ %.064229, %.lr.ph ]
  %i.ek = fmul float %.0227.us, f0x3C8EFA35       ; 2 uses
  %i.el = tail call noundef float @sinf(float noundef %i.ek) #19
  %i.em = tail call noundef float @cosf(float noundef %i.ek) #19
  %i.en = insertelement <3 x float> poison, float %i.el, i64 0
  %i.eo = shufflevector <3 x float> %i.en, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ep = fmul <3 x float> %i.av, %i.eo
  %i.eq = insertelement <3 x float> poison, float %i.em, i64 0
  %i.er = shufflevector <3 x float> %i.eq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.es = fmul <3 x float> %i.bc, %i.er
  %i.et = fadd <3 x float> %i.ep, %i.es
  %i.eu = fmul <3 x float> %i.et, splat (float 2.500000e-02)
  %i.ev = fadd <3 x float> %i.g, %i.eu            ; 3 uses
  %i.ew = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ex = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ey = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i137.us
  %indvars.iv.i139.us = phi i64 [ 0, %.lr.ph.i137.us ], [ %indvars.iv.next.i143.us, %bb.t ] ; 4 uses
  %.01314.i140.us = phi i32 [ -1, %.lr.ph.i137.us ], [ %.1.i142.us, %bb.t ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i139.us
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !41
  %.not.i141.us = icmp eq i32 %i.fa, 0
  br i1 %.not.i141.us, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fb = icmp eq i32 %.01314.i140.us, -1
  br i1 %i.fb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i139.us ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !12
  %i.ff = sext i32 %.01314.i140.us to i64
  %i.fg = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !12
  %i.fj = load <2 x float>, ptr %i.fc, align 4, !tbaa !12 ; 2 uses
  %i.fk = load <2 x float>, ptr %i.fg, align 4, !tbaa !12 ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fj, <2 x float> %i.fk, <2 x i32> <i32 1, i32 3>
  %i.fm = fmul <2 x float> %i.ey, %i.fl
  %i.fn = shufflevector <2 x float> %i.fj, <2 x float> %i.fk, <2 x i32> <i32 0, i32 2>
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.ex, <2 x float> %i.fm)
  %i.fp = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.fi, i64 1
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.ew, <2 x float> %i.fo) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = extractelement <2 x float> %i.fr, i64 1
  %i.fu = fcmp ogt float %i.fs, %i.ft
  br i1 %i.fu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fv = trunc nuw nsw i64 %indvars.iv.i139.us to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.1.i142.us = phi i32 [ %i.fv, %bb.s ], [ %.01314.i140.us, %bb.r ], [ %.01314.i140.us, %bb.p ] ; 3 uses
  %indvars.iv.next.i143.us = add nuw nsw i64 %indvars.iv.i139.us, 1 ; 2 uses
  %exitcond.not.i144.us = icmp eq i64 %indvars.iv.next.i143.us, %wide.trip.count.i
  br i1 %exitcond.not.i144.us, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.us, label %bb.p, !llvm.loop !99

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.us: ; preds = %bb.t
  %i.fw = icmp eq i32 %.062226.us, %.013.lcssa.i
  %i.fx = icmp eq i32 %.1.i142.us, %.013.lcssa.i
  %or.cond79.us = and i1 %i.fw, %i.fx
  br i1 %or.cond79.us, label %.critedge.sink.split, label %bb.u

bb.u:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.us
  %i.fy = fadd float %.0227.us, 5.000000e+00      ; 2 uses
  %i.fz = fcmp ugt float %i.fy, %indvar.conv
  br i1 %i.fz, label %.thread194, label %.lr.ph.i137.us, !llvm.loop !100

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.thread: ; preds = %bb.o, %bb.v
  %.0227 = phi float [ %i.gd, %bb.v ], [ %i.ei, %bb.o ] ; 2 uses
  %i.ga = fmul float %.0227, f0x3C8EFA35          ; 2 uses
  %i.gb = tail call noundef float @sinf(float noundef %i.ga) #19 ; 0 uses
  %i.gc = tail call noundef float @cosf(float noundef %i.ga) #19 ; 0 uses
  br i1 %or.cond79216, label %.critedge.sink.split, label %bb.v

bb.v:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.thread
  %i.gd = fadd float %.0227, 5.000000e+00         ; 2 uses
  %i.ge = fcmp ugt float %i.gd, %indvar.conv
  br i1 %i.ge, label %.thread194, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.thread, !llvm.loop !101

.thread194:                                       ; preds = %bb.v, %bb.u, %bb.o, %bb.n, %bb.m
  %.int = add nuw nsw i32 %.063230.int, 45
  %i.gf = icmp samesign ugt i32 %.063230.int, 315
  br i1 %i.gf, label %.thread206, label %bb.h, !llvm.loop !102

.thread206:                                       ; preds = %.thread194
  store i32 0, ptr %i.ck, align 4, !tbaa !41
  br label %bb.b, !llvm.loop !103

.critedge.sink.split:                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit110, %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.thread, %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit145.us
  store i32 3, ptr %i.ck, align 4, !tbaa !41
  br label %.critedge

.critedge:                                        ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, %.critedge.sink.split
  ret i32 %.013.lcssa.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN11HullLibrary11calchullgenEP9btVector3ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btAlignedObjectArray.6, align 8 ; 8 uses
  %5 = alloca %class.btAlignedObjectArray.6, align 8 ; 11 uses
  %6 = alloca %class.btVector3, align 8           ; 8 uses
  %7 = alloca %class.btVector3, align 8           ; 8 uses
  %i.a = icmp slt i32 %2, 4
  br i1 %i.a, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  %i.c = load <2 x float>, ptr %1, align 4        ; 2 uses
  %.sroa.10358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10358.0.copyload = load float, ptr %.sroa.10358.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store i8 1, ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !63
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i unwind label %bb.k ; 2 uses

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i:   ; preds = %bb.b
  store i8 1, ptr %i.d, align 8, !tbaa !61
  store ptr %i.j, ptr %i.e, align 8, !tbaa !60
  store i32 %2, ptr %i.g, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  store i8 1, ptr %i.k, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr null, ptr %i.l, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 7 uses
  store i32 0, ptr %i.m, align 4, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.n, align 8, !tbaa !63
  %i.o = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i166 unwind label %bb.l ; 8 uses

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i166: ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i
  %i.p = load i32, ptr %i.m, align 4, !tbaa !62   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !60   ; 9 uses
  br i1 %i.q, label %.lr.ph.i.i171, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i168

.lr.ph.i.i171:                                    ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i166
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = ptrtoaddr ptr %i.o to i64
  %wide.trip.count.i.i172 = zext nneg i32 %i.p to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  %i.u = sub i64 %i.s, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond488 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond488, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i171
  %n.vec = and i64 %wide.trip.count.i.i172, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !41
  %wide.load457 = load <4 x i32>, ptr %i.x, align 4, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !41
  store <4 x i32> %wide.load457, ptr %i.y, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i172
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i176, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i171, %middle.block
  %indvars.iv.i.i173.ph = phi i64 [ 0, %.lr.ph.i.i171 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i172, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i173.prol = phi i64 [ %indvars.iv.next.i.i174.prol, %scalar.ph.prol ], [ %indvars.iv.i.i173.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i173.prol
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i173.prol
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !41
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !41
  %indvars.iv.next.i.i174.prol = add nuw nsw i64 %indvars.iv.i.i173.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !106

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i173.unr = phi i64 [ %indvars.iv.i.i173.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i174.prol, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.i.i173.ph, %wide.trip.count.i.i172
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i176, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i173 = phi i64 [ %indvars.iv.next.i.i174.3, %scalar.ph ], [ %indvars.iv.i.i173.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i173
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i173
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !41
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !41
  %indvars.iv.next.i.i174 = add nuw nsw i64 %indvars.iv.i.i173, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i174
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i174
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !41
  %indvars.iv.next.i.i174.1 = add nuw nsw i64 %indvars.iv.i.i173, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i174.1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i174.1
  %i.an = load i32, ptr %i.am, align 4, !tbaa !41
  store i32 %i.an, ptr %i.al, align 4, !tbaa !41
  %indvars.iv.next.i.i174.2 = add nuw nsw i64 %indvars.iv.i.i173, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i174.2
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i174.2
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !41
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !41
  %indvars.iv.next.i.i174.3 = add nuw nsw i64 %indvars.iv.i.i173, 4 ; 2 uses
  %exitcond.not.i.i175.3 = icmp eq i64 %indvars.iv.next.i.i174.3, %wide.trip.count.i.i172
  br i1 %exitcond.not.i.i175.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i176, label %scalar.ph, !llvm.loop !107

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i168: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i166
  %.not.i5.i169 = icmp ne ptr %i.r, null
  %i.ar = load i8, ptr %i.k, align 8, !range !36
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond456 = select i1 %.not.i5.i169, i1 %i.as, i1 false
  br i1 %or.cond456, label %bb.c, label %.lr.ph.preheader

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i176: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old = load i8, ptr %i.k, align 8, !tbaa !61, !range !36, !noundef !37
  %.old455 = trunc nuw i8 %.old to i1
  br i1 %.old455, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i168, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i176
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.r)
          to label %.lr.ph.preheader unwind label %bb.l

.lr.ph.preheader:                                 ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i176, %bb.c, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i168
  store i8 1, ptr %i.k, align 8, !tbaa !61
  store ptr %i.o, ptr %i.l, align 8, !tbaa !60
  store i32 %2, ptr %i.n, align 8, !tbaa !63
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.at = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.du, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 10 uses
  %i.au = phi i32 [ %2, %.lr.ph.preheader ], [ %i.dv, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 7 uses
  %.pre2.pre.i191 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dz, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %.sroa.10358.0390 = phi float [ %.sroa.10358.0.copyload, %.lr.ph.preheader ], [ %.sroa.10358.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %.sroa.10.0386 = phi float [ %.sroa.10358.0.copyload, %.lr.ph.preheader ], [ %.sroa.10.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %i.av = phi <2 x float> [ %i.c, %.lr.ph.preheader ], [ %i.ei, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %i.aw = phi <2 x float> [ %i.c, %.lr.ph.preheader ], [ %i.eg, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %i.ax = ptrtoaddr ptr %i.at to i64
  %i.ay = load i32, ptr %i.m, align 4, !tbaa !62  ; 7 uses
  %i.az = load i32, ptr %i.n, align 8, !tbaa !63
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i180 = icmp eq i32 %i.ay, 0
  %i.bb = shl nsw i32 %i.ay, 1
  %i.bc = select i1 %.not.i.i180, i32 1, i32 %i.bb ; 4 uses
  %i.bd = icmp slt i32 %i.ay, %i.bc
  br i1 %i.bd, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = sext i32 %i.bc to i64
  %i.bf = shl nsw i64 %i.be, 2
  %i.bg = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bf, i32 noundef 16)
          to label %.noexc181 unwind label %bb.m

.noexc181:                                        ; preds = %bb.f
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !62
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %.noexc181, %bb.e
  %i.bh = phi i32 [ %.pre.i, %.noexc181 ], [ %i.ay, %bb.e ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.bg, %.noexc181 ], [ null, %bb.e ] ; 8 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !60  ; 9 uses
  br i1 %i.bi, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.bk = ptrtoaddr ptr %i.bj to i64
  %.0.i.i.i473 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.bh to i64 ; 5 uses
  %min.iters.check476 = icmp ult i32 %i.bh, 8
  %i.bl = sub i64 %i.bk, %.0.i.i.i473
  %diff.check474 = icmp ugt i64 %i.bl, -32
  %or.cond490 = select i1 %min.iters.check476, i1 true, i1 %diff.check474
  br i1 %or.cond490, label %scalar.ph475.preheader, label %vector.ph477

vector.ph477:                                     ; preds = %.lr.ph.i.i.i
  %n.vec478 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next483, %vector.body479 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index480 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index480 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load481 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !41
  %wide.load482 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load481, ptr %i.bm, align 4, !tbaa !41
  store <4 x i32> %wide.load482, ptr %i.bp, align 4, !tbaa !41
  %index.next483 = add nuw i64 %index480, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next483, %n.vec478
  br i1 %i.bq, label %middle.block484, label %vector.body479, !llvm.loop !108

middle.block484:                                  ; preds = %vector.body479
  %cmp.n485 = icmp eq i64 %n.vec478, %wide.trip.count.i.i.i
  br i1 %cmp.n485, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph475.preheader

scalar.ph475.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block484
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec478, %middle.block484 ] ; 3 uses
  %xtraiter514 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %scalar.ph475.prol.loopexit, label %scalar.ph475.prol

scalar.ph475.prol:                                ; preds = %scalar.ph475.preheader, %scalar.ph475.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph475.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph475.preheader ] ; 3 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %scalar.ph475.prol ], [ 0, %scalar.ph475.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.i.i.prol
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !41
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !41
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter516.next = add i64 %prol.iter516, 1   ; 2 uses
  %prol.iter516.cmp.not = icmp eq i64 %prol.iter516.next, %xtraiter514
  br i1 %prol.iter516.cmp.not, label %scalar.ph475.prol.loopexit, label %scalar.ph475.prol, !llvm.loop !109

scalar.ph475.prol.loopexit:                       ; preds = %scalar.ph475.prol, %scalar.ph475.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph475.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph475.prol ]
  %i.bu = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph475

scalar.ph475:                                     ; preds = %scalar.ph475.prol.loopexit, %scalar.ph475
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph475 ], [ %indvars.iv.i.i.i.unr, %scalar.ph475.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.i.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !41
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !41
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !41
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.i.1
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !41
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !41
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.i.2
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !41
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !41
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph475, !llvm.loop !110

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph475.prol.loopexit, %scalar.ph475, %middle.block484, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.ci = load i8, ptr %i.k, align 8, !tbaa !61, !range !36, !noundef !37
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.g, label %.noexc182

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bj)
          to label %.noexc182 unwind label %bb.m

.noexc182:                                        ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.m, align 4, !tbaa !62
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %.noexc182, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %.noexc182 ], [ %i.bh, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  store i8 1, ptr %i.k, align 8, !tbaa !61
  store ptr %.0.i.i.i, ptr %i.l, align 8, !tbaa !60
  store i32 %i.bc, ptr %i.n, align 8, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, %bb.d, %.lr.ph
  %i.ck = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.ay, %bb.d ], [ %i.ay, %.lr.ph ]
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 1, ptr %i.cn, align 4, !tbaa !41
  %i.co = load i32, ptr %i.m, align 4, !tbaa !62
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.m, align 4, !tbaa !62
  %i.cq = icmp eq i32 %.pre2.pre.i191, %i.au
  br i1 %i.cq, label %bb.i, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.cr = shl nuw nsw i32 %i.au, 1                ; 4 uses
  %i.cs = icmp slt i32 %i.au, %i.cr
  br i1 %i.cs, label %bb.j, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cu, i32 noundef 16)
          to label %.lr.ph.i.i.i194 unwind label %bb.n ; 9 uses

.lr.ph.i.i.i194:                                  ; preds = %bb.j
  %wide.trip.count.i.i.i195 = zext i32 %i.au to i64 ; 5 uses
  %min.iters.check461 = icmp ult i32 %i.au, 8
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = sub i64 %i.ax, %i.cw
  %diff.check459 = icmp ugt i64 %i.cx, -32
  %or.cond493 = or i1 %min.iters.check461, %diff.check459
  br i1 %or.cond493, label %scalar.ph460.preheader, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph.i.i.i194
  %n.vec463 = and i64 %wide.trip.count.i.i.i195, 2147483640 ; 3 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next468, %vector.body464 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index465 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index465 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load466 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !41
  %wide.load467 = load <4 x i32>, ptr %i.da, align 4, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x i32> %wide.load466, ptr %i.cy, align 4, !tbaa !41
  store <4 x i32> %wide.load467, ptr %i.db, align 4, !tbaa !41
  %index.next468 = add nuw i64 %index465, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next468, %n.vec463
  br i1 %i.dc, label %middle.block469, label %vector.body464, !llvm.loop !111

middle.block469:                                  ; preds = %vector.body464
  %cmp.n470 = icmp eq i64 %n.vec463, %wide.trip.count.i.i.i195
  br i1 %cmp.n470, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i190, label %scalar.ph460.preheader

scalar.ph460.preheader:                           ; preds = %.lr.ph.i.i.i194, %middle.block469
  %indvars.iv.i.i.i196.ph = phi i64 [ 0, %.lr.ph.i.i.i194 ], [ %n.vec463, %middle.block469 ] ; 3 uses
  %xtraiter517 = and i64 %wide.trip.count.i.i.i195, 3 ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %scalar.ph460.prol.loopexit, label %scalar.ph460.prol

scalar.ph460.prol:                                ; preds = %scalar.ph460.preheader, %scalar.ph460.prol
  %indvars.iv.i.i.i196.prol = phi i64 [ %indvars.iv.next.i.i.i197.prol, %scalar.ph460.prol ], [ %indvars.iv.i.i.i196.ph, %scalar.ph460.preheader ] ; 3 uses
  %prol.iter519 = phi i64 [ %prol.iter519.next, %scalar.ph460.prol ], [ 0, %scalar.ph460.preheader ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.i196.prol
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.i196.prol
  %i.df = load i32, ptr %i.de, align 4, !tbaa !41
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !41
  %indvars.iv.next.i.i.i197.prol = add nuw nsw i64 %indvars.iv.i.i.i196.prol, 1 ; 2 uses
  %prol.iter519.next = add i64 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i64 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %scalar.ph460.prol.loopexit, label %scalar.ph460.prol, !llvm.loop !112

scalar.ph460.prol.loopexit:                       ; preds = %scalar.ph460.prol, %scalar.ph460.preheader
  %indvars.iv.i.i.i196.unr = phi i64 [ %indvars.iv.i.i.i196.ph, %scalar.ph460.preheader ], [ %indvars.iv.next.i.i.i197.prol, %scalar.ph460.prol ]
  %i.dg = sub nsw i64 %indvars.iv.i.i.i196.ph, %wide.trip.count.i.i.i195
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i190, label %scalar.ph460

scalar.ph460:                                     ; preds = %scalar.ph460.prol.loopexit, %scalar.ph460
  %indvars.iv.i.i.i196 = phi i64 [ %indvars.iv.next.i.i.i197.3, %scalar.ph460 ], [ %indvars.iv.i.i.i196.unr, %scalar.ph460.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.i196
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.i196
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !41
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !41
  %indvars.iv.next.i.i.i197 = add nuw nsw i64 %indvars.iv.i.i.i196, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.i197
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i197
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !41
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !41
  %indvars.iv.next.i.i.i197.1 = add nuw nsw i64 %indvars.iv.i.i.i196, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.i197.1
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i197.1
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !41
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !41
  %indvars.iv.next.i.i.i197.2 = add nuw nsw i64 %indvars.iv.i.i.i196, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i.i197.2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i197.2
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !41
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !41
  %indvars.iv.next.i.i.i197.3 = add nuw nsw i64 %indvars.iv.i.i.i196, 4 ; 2 uses
  %exitcond.not.i.i.i198.3 = icmp eq i64 %indvars.iv.next.i.i.i197.3, %wide.trip.count.i.i.i195
  br i1 %exitcond.not.i.i.i198.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i190, label %scalar.ph460, !llvm.loop !113

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i190: ; preds = %scalar.ph460.prol.loopexit, %scalar.ph460, %middle.block469
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.at)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i192 unwind label %bb.n

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i192: ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i190
  store i8 1, ptr %i.d, align 8, !tbaa !61
  store ptr %i.cv, ptr %i.e, align 8, !tbaa !60
  store i32 %i.cr, ptr %i.g, align 8, !tbaa !63
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i192, %bb.i, %bb.h
  %i.du = phi ptr [ %i.cv, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i192 ], [ %i.at, %bb.i ], [ %i.at, %bb.h ] ; 10 uses
  %i.dv = phi i32 [ %i.cr, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i192 ], [ %i.au, %bb.i ], [ %i.au, %bb.h ]
  %i.dw = sext i32 %.pre2.pre.i191 to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dw
  store i32 0, ptr %i.dx, align 4, !tbaa !41
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !62
  %i.dz = add nsw i32 %i.dy, 1                    ; 2 uses
  store i32 %i.dz, ptr %i.f, align 4, !tbaa !62
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12 ; 4 uses
  %i.ed = fcmp olt float %i.ec, %.sroa.10358.0390
  %.sroa.10358.1 = select i1 %i.ed, float %i.ec, float %.sroa.10358.0390 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.ea, align 4, !tbaa !12 ; 4 uses
  %i.ef = fcmp olt <2 x float> %i.ee, %i.aw
  %i.eg = select <2 x i1> %i.ef, <2 x float> %i.ee, <2 x float> %i.aw ; 3 uses
  %i.eh = fcmp olt <2 x float> %i.av, %i.ee
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.ee, <2 x float> %i.av ; 3 uses
  %i.ej = fcmp olt float %.sroa.10.0386, %i.ec
  %.sroa.10.1 = select i1 %i.ej, float %i.ec, float %.sroa.10.0386 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !114

bb.k:                                             ; preds = %bb.b
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.l:                                             ; preds = %bb.c, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i190, %bb.j
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge:                                      ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %foldExtExtBinop = fsub <2 x float> %i.ei, %i.eg
  %i.eo = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop495 = fsub <2 x float> %i.ei, %i.eg ; 2 uses
  %i.ep = fsub float %.sroa.10.1, %.sroa.10358.1  ; 2 uses
  %foldExtExtBinop497 = fmul <2 x float> %foldExtExtBinop495, %foldExtExtBinop495
  %i.eq = extractelement <2 x float> %foldExtExtBinop497, i64 1
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.eq)
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.er)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.es)
  %i.et = fmul float %sqrt.i, 1.000000e-03        ; 4 uses
  %i.eu = invoke { i64, i64 } @_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %5)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %._crit_edge
  %i.ev = extractvalue { i64, i64 } %i.eu, 0      ; 4 uses
  %.sroa.0303.0.extract.trunc = trunc i64 %i.ev to i32 ; 4 uses
  %i.ew = icmp eq i32 %.sroa.0303.0.extract.trunc, -1
  br i1 %i.ew, label %.critedge, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.q:                                             ; preds = %bb.o
  %i.ey = extractvalue { i64, i64 } %i.eu, 1      ; 4 uses
  %sext = shl i64 %i.ev, 32
  %i.ez = ashr exact i64 %sext, 32                ; 2 uses
  %i.fa = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ez ; 2 uses
  %.sroa.0303.4.extract.shift = lshr i64 %i.ev, 32
  %.sroa.0303.4.extract.trunc = trunc nuw i64 %.sroa.0303.4.extract.shift to i32 ; 3 uses
  %i.fb = ashr i64 %i.ev, 32                      ; 2 uses
  %i.fc = getelementptr inbounds [16 x i8], ptr %1, i64 %i.fb ; 2 uses
  %i.fd = load float, ptr %i.fa, align 4, !tbaa !12
  %i.fe = load float, ptr %i.fc, align 4, !tbaa !12
  %i.ff = fadd float %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %.sroa.15.8.extract.trunc = trunc i64 %i.ey to i32 ; 3 uses
  %sext363 = shl i64 %i.ey, 32
  %i.fi = ashr exact i64 %sext363, 32             ; 2 uses
  %i.fj = getelementptr inbounds [16 x i8], ptr %1, i64 %i.fi ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !12
  %i.fl = fadd float %i.ff, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %.sroa.15.12.extract.shift = lshr i64 %i.ey, 32
  %.sroa.15.12.extract.trunc = trunc nuw i64 %.sroa.15.12.extract.shift to i32 ; 3 uses
  %i.fn = ashr i64 %i.ey, 32                      ; 2 uses
  %i.fo = getelementptr inbounds [16 x i8], ptr %1, i64 %i.fn ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !12
  %i.fq = fadd float %i.fl, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fs = load <2 x float>, ptr %i.fg, align 4, !tbaa !12
  %i.ft = load <2 x float>, ptr %i.fh, align 4, !tbaa !12
  %i.fu = fadd <2 x float> %i.fs, %i.ft
  %i.fv = load <2 x float>, ptr %i.fm, align 4, !tbaa !12
  %i.fw = fadd <2 x float> %i.fu, %i.fv
  %i.fx = load <2 x float>, ptr %i.fr, align 4, !tbaa !12
  %i.fy = fadd <2 x float> %i.fw, %i.fx
  %i.fz = fmul float %i.fq, 2.500000e-01
  %i.ga = fmul <2 x float> %i.fy, splat (float 2.500000e-01)
  %i.gb = invoke noundef ptr @_ZN11HullLibrary16allocateTriangleEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.sroa.15.8.extract.trunc, i32 noundef %.sroa.15.12.extract.trunc, i32 noundef %.sroa.0303.4.extract.trunc)
          to label %bb.r unwind label %bb.z       ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i32 2, ptr %i.gc, align 4, !tbaa !41
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 3, ptr %.sroa.4293.0..sroa_idx, align 4, !tbaa !41
  %.sroa.5294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  store i32 1, ptr %.sroa.5294.0..sroa_idx, align 4, !tbaa !41
  %i.gd = invoke noundef ptr @_ZN11HullLibrary16allocateTriangleEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.sroa.15.12.extract.trunc, i32 noundef %.sroa.15.8.extract.trunc, i32 noundef %.sroa.0303.0.extract.trunc)
          to label %bb.s unwind label %bb.aa      ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 3, ptr %i.ge, align 4, !tbaa !41
  %.sroa.4290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i32 2, ptr %.sroa.4290.0..sroa_idx, align 4, !tbaa !41
  %.sroa.5291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  store i32 0, ptr %.sroa.5291.0..sroa_idx, align 4, !tbaa !41
  %i.gf = invoke noundef ptr @_ZN11HullLibrary16allocateTriangleEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.sroa.0303.0.extract.trunc, i32 noundef %.sroa.0303.4.extract.trunc, i32 noundef %.sroa.15.12.extract.trunc)
          to label %bb.t unwind label %bb.ab      ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gg, align 4, !tbaa !41
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i32 1, ptr %.sroa.4287.0..sroa_idx, align 4, !tbaa !41
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  store i32 3, ptr %.sroa.5288.0..sroa_idx, align 4, !tbaa !41
  %i.gh = invoke noundef ptr @_ZN11HullLibrary16allocateTriangleEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.sroa.0303.4.extract.trunc, i32 noundef %.sroa.0303.0.extract.trunc, i32 noundef %.sroa.15.8.extract.trunc)
          to label %bb.u unwind label %bb.ac      ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 1, ptr %i.gi, align 4, !tbaa !41
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !41
  %.sroa.5285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 20
  store i32 2, ptr %.sroa.5285.0..sroa_idx, align 4, !tbaa !41
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.fn
  store i32 1, ptr %i.gj, align 4, !tbaa !41
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.fi
  store i32 1, ptr %i.gk, align 4, !tbaa !41
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.fb
  store i32 1, ptr %i.gl, align 4, !tbaa !41
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ez
  store i32 1, ptr %i.gm, align 4, !tbaa !41
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !54
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph400, label %._crit_edge401

.lr.ph400:                                        ; preds = %bb.u
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph400, %bb.y
  %indvars.iv421 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next422, %bb.y ] ; 2 uses
  %i.gt = load ptr, ptr %i.gq, align 8, !tbaa !46
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv421
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !48 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !41
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [16 x i8], ptr %1, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !41
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [16 x i8], ptr %1, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !41
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [16 x i8], ptr %1, i64 %i.hf ; 2 uses
  %i.hh = load float, ptr %i.hc, align 4, !tbaa !12
  %i.hi = load float, ptr %i.gy, align 4, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hl = load float, ptr %i.hg, align 4, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hn = load <2 x float>, ptr %i.hj, align 4, !tbaa !12 ; 3 uses
  %i.ho = load <2 x float>, ptr %i.hk, align 4, !tbaa !12 ; 2 uses
  %i.hp = fsub <2 x float> %i.hn, %i.ho           ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hr = insertelement <2 x float> %i.hq, float %i.hh, i64 1 ; 2 uses
  %i.hs = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ht = insertelement <2 x float> %i.hs, float %i.hi, i64 1
  %i.hu = fsub <2 x float> %i.hr, %i.ht           ; 2 uses
  %i.hv = load <2 x float>, ptr %i.hm, align 4, !tbaa !12 ; 2 uses
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hx = insertelement <2 x float> %i.hw, float %i.hl, i64 1
  %i.hy = fsub <2 x float> %i.hx, %i.hr           ; 2 uses
  %i.hz = fsub <2 x float> %i.hv, %i.hn           ; 2 uses
  %i.ia = fneg <2 x float> %i.hz
  %i.ib = fmul <2 x float> %i.hu, %i.ia
  %i.ic = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hy, <2 x float> %i.ib) ; 4 uses
  %i.id = extractelement <2 x float> %i.hy, i64 1
  %i.ie = fneg float %i.id
  %i.if = extractelement <2 x float> %i.hp, i64 0
  %i.ig = fmul float %i.if, %i.ie
  %i.ih = extractelement <2 x float> %i.hu, i64 1
  %i.ii = extractelement <2 x float> %i.hz, i64 0
  %i.ij = call float @llvm.fmuladd.f32(float %i.ih, float %i.ii, float %i.ig) ; 3 uses
  %foldExtExtBinop499 = fmul <2 x float> %i.ic, %i.ic
  %i.ik = extractelement <2 x float> %foldExtExtBinop499, i64 1
  %i.il = extractelement <2 x float> %i.ic, i64 0 ; 2 uses
  %i.im = call float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.ik)
  %i.in = call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.im) ; 2 uses
  %i.io = fcmp oeq float %i.in, 0.000000e+00
  br i1 %i.io, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.in)
  %i.ip = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult:bb.a
  br i1 %i.li, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ch)
          to label %bb.ax unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  tail call void @__clang_call_terminate(ptr %i.lk) #20
  unreachable

bb.aw:                                            ; preds = %bb.an, %bb.am, %bb.z, %bb.y, %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.fw, %bb.x ], [ %i.fy, %bb.z ], [ %i.fx, %bb.y ], [ %i.kd, %bb.an ], [ %i.kc, %bb.am ], [ %i.fv, %bb.w ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bc

.thread:                                          ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pre227 = load i8, ptr %i.l, align 8, !range !36
  %i.ll = trunc nuw i8 %.pre227 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.ll, label %bb.ay, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193

bb.ay:                                            ; preds = %.thread, %bb.ax
  %.072248 = phi i32 [ 1, %.thread ], [ 0, %bb.ax ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  tail call void @__clang_call_terminate(ptr %i.ln) #20
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193: ; preds = %bb.ax, %bb.ay
  %.072247 = phi i32 [ 0, %bb.ax ], [ %.072248, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.lo = load ptr, ptr %i.d, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.lo, null
  %i.lp = load i8, ptr %i.c, align 8, !range !36
  %i.lq = trunc nuw i8 %i.lp to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.lq, i1 false
  br i1 %or.cond.i.i.i, label %bb.ba, label %_ZN11PHullResultD2Ev.exit

bb.ba:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lo)
          to label %_ZN11PHullResultD2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  tail call void @__clang_call_terminate(ptr %i.ls) #20
  unreachable

_ZN11PHullResultD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit193, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.072247

bb.bc:                                            ; preds = %bb.aw, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aw ], [ %i.bh, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bc ], [ %i.bg, %bb.e ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN11PHullResultD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, float noundef %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !62   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  %i.g = icmp slt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 3 uses
  br i1 %i.g, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !36
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond369 = select i1 %.not.i5.i.i, i1 %i.l, i1 false
  br i1 %or.cond369, label %bb.d, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr %i.j, align 8, !tbaa !61
  store ptr null, ptr %i.h, align 8, !tbaa !60
  store i32 0, ptr %i.e, align 8, !tbaa !63
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = sext i32 %i.c to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !62
  store i32 0, ptr %4, align 4, !tbaa !41
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !12
  %i.r = zext i32 %3 to i64                       ; 3 uses
  %xtraiter = and i32 %1, 1
  %i.s = icmp eq i32 %1, 1
  br i1 %i.s, label %.epil.preheader, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter = and i32 %1, -2
  br label %bb.f

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.loopexit
  %.0282384.epil.init = phi ptr [ %2, %.loopexit ], [ %i.ax, %.unr-lcssa ]
  %.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit ], [ %i.aw, %.unr-lcssa ] ; 2 uses
  %.epil.init538 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit ], [ %i.av, %.unr-lcssa ] ; 2 uses
  %lcmp.mod541 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod541)
  %i.t = load <3 x float>, ptr %.0282384.epil.init, align 4, !tbaa !12
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.v = fcmp olt <4 x float> %i.u, %.epil.init538
  %i.w = fcmp ogt <4 x float> %i.u, %.epil.init
  %i.x = select <4 x i1> %i.v, <4 x float> %i.u, <4 x float> %.epil.init538
  %i.y = select <4 x i1> %i.w, <4 x float> %i.u, <4 x float> %.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa536 = phi <4 x float> [ %i.av, %.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 2 uses
  %.lcssa535 = phi <4 x float> [ %i.aw, %.unr-lcssa ], [ %i.y, %.epil.preheader ]
  %i.z = fsub <4 x float> %.lcssa535, %.lcssa536  ; 5 uses
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 5.000000e-01), <4 x float> %.lcssa536) ; 5 uses
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 4 uses
  %i.ac = fcmp olt <2 x float> %i.ab, splat (float f0x358637BD) ; 3 uses
  %i.ad = extractelement <2 x i1> %i.ac, i64 0
  %i.ae = extractelement <2 x i1> %i.ac, i64 1
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  %i.af = extractelement <4 x float> %i.z, i64 2  ; 7 uses
  %i.ag = fcmp olt float %i.af, f0x358637BD       ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ag
  %i.ah = icmp ult i32 %1, 3
  %or.cond5 = or i1 %i.ah, %or.cond3
  br i1 %or.cond5, label %bb.g, label %bb.k

bb.f:                                             ; preds = %bb.f, %.loopexit.new
  %.0282384 = phi ptr [ %2, %.loopexit.new ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ai = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit.new ], [ %i.aw, %bb.f ] ; 2 uses
  %i.aj = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit.new ], [ %i.av, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.loopexit.new ], [ %niter.next.1, %bb.f ]
  %i.ak = load <3 x float>, ptr %.0282384, align 4, !tbaa !12
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.am = fcmp olt <4 x float> %i.al, %i.aj
  %i.an = fcmp ogt <4 x float> %i.al, %i.ai
  %i.ao = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> %i.aj ; 2 uses
  %i.ap = select <4 x i1> %i.an, <4 x float> %i.al, <4 x float> %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0282384, i64 %i.r ; 2 uses
  %i.ar = load <3 x float>, ptr %i.aq, align 4, !tbaa !12
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.at = fcmp olt <4 x float> %i.as, %i.ao
  %i.au = fcmp ogt <4 x float> %i.as, %i.ap
  %i.av = select <4 x i1> %i.at, <4 x float> %i.as, <4 x float> %i.ao ; 3 uses
  %i.aw = select <4 x i1> %i.au, <4 x float> %i.as, <4 x float> %i.ap ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.r ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !155

bb.g:                                             ; preds = %bb.e
  %i.ay = extractelement <4 x float> %i.z, i64 0  ; 3 uses
  %i.az = fcmp ogt float %i.ay, f0x358637BD
  %i.ba = fcmp olt float %i.ay, f0x7F7FFFFF
  %or.cond332 = and i1 %i.az, %i.ba
  %.0308 = select i1 %or.cond332, float %i.ay, float f0x7F7FFFFF ; 2 uses
  %i.bb = extractelement <4 x float> %i.z, i64 1  ; 3 uses
  %i.bc = fcmp ogt float %i.bb, f0x358637BD
  %i.bd = fcmp olt float %i.bb, %.0308
  %or.cond333 = and i1 %i.bc, %i.bd
  %.1309 = select i1 %or.cond333, float %i.bb, float %.0308 ; 2 uses
  %i.be = fcmp ogt float %i.af, f0x358637BD
  %i.bf = fcmp olt float %i.af, %.1309
  %or.cond334 = select i1 %i.be, i1 %i.bf, i1 false
  %.2310 = select i1 %or.cond334, float %i.af, float %.1309 ; 2 uses
  %i.bg = fcmp oeq float %.2310, f0x7F7FFFFF
  br i1 %i.bg, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = fmul float %.2310, 5.000000e-02         ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = select <2 x i1> %i.ac, <2 x float> %i.bj, <2 x float> %i.ab ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0307 = phi float [ %i.af, %bb.h ], [ %i.bh, %bb.i ], [ f0x3C23D70A, %bb.g ] ; 2 uses
  %i.bl = phi <2 x float> [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ splat (float f0x3C23D70A), %bb.g ] ; 2 uses
  %i.bm = extractelement <4 x float> %i.aa, i64 1
  %i.bn = extractelement <2 x float> %i.bl, i64 1
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = extractelement <4 x float> %i.aa, i64 2
  %i.bq = fsub float %i.bp, %.0307
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float %.0307, i64 2
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bu = fadd <4 x float> %i.aa, %i.bt
  %i.bv = fsub <4 x float> %i.aa, %i.bt
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  store <2 x float> %i.ab, ptr %7, align 4, !tbaa !12
  store float %i.af, ptr %i.q, align 4, !tbaa !12
  %i.bx = fdiv <2 x float> splat (float 1.000000e+00), %i.ab ; 2 uses
  %i.by = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.bz = shufflevector <4 x float> %i.aa, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.ca = shufflevector <2 x float> %i.bx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.cb = insertelement <3 x float> %i.ca, float %i.by, i64 2
  %i.cc = fmul <3 x float> %i.bz, %i.cb           ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cg = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ch = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = insertelement <2 x float> poison, float %6, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %i.cl = load i32, ptr %4, align 4, !tbaa !41    ; 3 uses
  %.not395 = icmp eq i32 %i.cl, 0
  br i1 %.not395, label %._crit_edge, label %.lr.ph393.preheader

.lr.ph393.preheader:                              ; preds = %bb.l
  %wide.trip.count416 = zext i32 %i.cl to i64
  br label %.lr.ph393

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283390 = phi ptr [ %2, %bb.k ], [ %i.cm, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0301389 = phi i32 [ 0, %bb.k ], [ %i.ft, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.1283390, i64 %i.r
  %i.cn = load <2 x float>, ptr %.1283390, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %.1283390, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !12
  %i.cq = fmul <2 x float> %i.bx, %i.cn           ; 5 uses
  %i.cr = fmul float %i.by, %i.cp                 ; 4 uses
  %i.cs = load i32, ptr %4, align 4, !tbaa !41    ; 6 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i32 %i.cs to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load <2 x float>, ptr %i.ct, align 4, !tbaa !12 ; 3 uses
  %i.cw = load float, ptr %i.cu, align 4, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
  %i.cz = fsub float %i.cy, %i.cr
  %i.da = tail call noundef float @llvm.fabs.f32(float %i.cz)
  %i.db = insertelement <2 x float> %i.cv, float %i.cw, i64 1
  %i.dc = fsub <2 x float> %i.db, %i.cq
  %i.dd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dc)
  %i.de = fcmp uge <2 x float> %i.dd, %i.ck
  %i.df = bitcast <2 x i1> %i.de to i2
  %or.cond335 = icmp eq i2 %i.df, 0
  %i.dg = fcmp olt float %i.da, %6
  %or.cond336 = and i1 %or.cond335, %i.dg
  br i1 %or.cond336, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.dh = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.di = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.cy, i64 1
  %i.dk = fsub <2 x float> %i.dj, %i.cg           ; 2 uses
  %i.dl = shufflevector <2 x float> %i.cq, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.dm = fsub <2 x float> %i.dl, %i.ch           ; 2 uses
  %i.dn = shufflevector <2 x float> %i.cq, <2 x float> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.do = fsub <2 x float> %i.dn, %i.ci           ; 2 uses
  %i.dp = fmul <2 x float> %i.do, %i.do
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dm, <2 x float> %i.dp)
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dk, <2 x float> %i.dq) ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = extractelement <2 x float> %i.dr, i64 1
  %i.du = fcmp ogt float %i.ds, %i.dt
  br i1 %i.du, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store <2 x float> %i.cq, ptr %i.ct, align 4, !tbaa !12
  store float %i.cr, ptr %i.dv, align 4, !tbaa !12
  br label %.thread

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond407.not, label %.thread.thread, label %.lr.ph, !llvm.loop !156

.thread:                                          ; preds = %bb.m, %bb.o, %bb.n
  %.0297375 = phi i32 [ %i.dh, %bb.n ], [ %i.dh, %bb.o ], [ 0, %bb.m ] ; 3 uses
  %i.dw = icmp eq i32 %.0297375, %i.cs
  br i1 %i.dw, label %.thread.thread, label %bb.q

.thread.thread:                                   ; preds = %bb.p, %.thread
  %.0297375454 = phi i32 [ %.0297375, %.thread ], [ %i.cs, %bb.p ]
  %i.dx = zext i32 %i.cs to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dx ; 2 uses
  store <2 x float> %i.cq, ptr %i.dy, align 4, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store float %i.cr, ptr %i.dz, align 4, !tbaa !12
  %i.ea = add i32 %i.cs, 1
  store i32 %i.ea, ptr %4, align 4, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %.thread.thread, %.thread
  %.0297375453 = phi i32 [ %.0297375454, %.thread.thread ], [ %.0297375, %.thread ]
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !62  ; 7 uses
  %i.ec = load i32, ptr %i.cd, align 8, !tbaa !63
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.r, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp eq i32 %i.eb, 0
  %i.ee = shl nsw i32 %i.eb, 1
  %i.ef = select i1 %.not.i.i, i32 1, i32 %i.ee   ; 4 uses
  %i.eg = icmp slt i32 %i.eb, %i.ef
  br i1 %i.eg, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = sext i32 %i.ef to i64
  %i.ei = shl nsw i64 %i.eh, 2
  %i.ej = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ei, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !62
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ek = phi i32 [ %.pre.i, %bb.t ], [ %i.eb, %bb.s ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ej, %bb.t ], [ null, %bb.s ] ; 8 uses
  %i.el = icmp sgt i32 %i.ek, 0
  %i.em = load ptr, ptr %i.ce, align 8, !tbaa !60 ; 9 uses
  br i1 %i.el, label %.lr.ph.i.i.i346, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i342

.lr.ph.i.i.i346:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.en = ptrtoaddr ptr %i.em to i64
  %.0.i.i.i523 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i347 = zext nneg i32 %i.ek to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ek, 8
  %i.eo = sub i64 %i.en, %.0.i.i.i523
  %diff.check = icmp ugt i64 %i.eo, -32
  %or.cond525 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond525, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i346
  %n.vec = and i64 %wide.trip.count.i.i.i347, 2147483640 ; 3 uses
end_hunk_1
