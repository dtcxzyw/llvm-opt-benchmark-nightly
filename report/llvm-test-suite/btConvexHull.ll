inline.NumInlined: 627
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE:bb.a

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %bb.l
  %indvars.iv.i103 = phi i64 [ %indvars.iv.next.i107, %bb.l ], [ 0, %.lr.ph.i101.preheader ] ; 4 uses
  %.01314.i104 = phi i32 [ %.1.i106, %bb.l ], [ -1, %.lr.ph.i101.preheader ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i103
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %.not.i105 = icmp eq i32 %i.dd, 0
  br i1 %.not.i105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i101
  %i.de = icmp eq i32 %.01314.i104, -1
  br i1 %i.de, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i103 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8
  %i.di = sext i32 %.01314.i104 to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %0, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !8
  %i.dm = load <2 x float>, ptr %i.df, align 4, !tbaa !8 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dj, align 4, !tbaa !8 ; 2 uses
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dp = fmul <2 x float> %i.cx, %i.do
  %i.dq = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.cz, <2 x float> %i.dp)
  %i.ds = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.dl, i64 1
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.db, <2 x float> %i.dr) ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = extractelement <2 x float> %i.du, i64 1
  %i.dx = fcmp ogt float %i.dv, %i.dw
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dy = trunc nuw nsw i64 %indvars.iv.i103 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i101
  %.1.i106 = phi i32 [ %i.dy, %bb.k ], [ %.01314.i104, %bb.j ], [ %.01314.i104, %.lr.ph.i101 ] ; 2 uses
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i
  br i1 %exitcond.not.i108, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109, label %.lr.ph.i101

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109: ; preds = %bb.l, %bb.h
  %.013.lcssa.i100 = phi i32 [ -1, %bb.h ], [ %.1.i106, %bb.l ] ; 3 uses
  %i.dz = icmp eq i32 %.068220, %.013.lcssa.i
  %i.ea = icmp eq i32 %.013.lcssa.i100, %.013.lcssa.i
  %or.cond = and i1 %i.dz, %i.ea
  br i1 %or.cond, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109
  %.not = icmp eq i32 %.068220, -1
  %.not77 = icmp eq i32 %.068220, %.013.lcssa.i100
  %or.cond78 = or i1 %.not, %.not77
  br i1 %or.cond78, label %.thread193, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = add nsw i32 %.067221.int, -40
  %i.ec = sitofp i32 %i.eb to float               ; 3 uses
  %i.ed = fcmp ugt float %i.ec, %indvar.conv
  br i1 %i.ed, label %.thread193, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %i.a, label %.lr.ph.i136.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.ee = fmul nnan float %i.ec, f0x3C8EFA35      ; 2 uses
  %i.ef = tail call noundef float @sinf(float noundef %i.ee) #19, !tbaa !4 ; 0 uses
  %i.eg = tail call noundef float @cosf(float noundef %i.ee) #19, !tbaa !4 ; 0 uses
  %i.eh = add nsw i32 %.067221.int, -35
  %i.ei = sitofp i32 %i.eh to float               ; 2 uses
  %i.ej = fcmp ugt float %i.ei, %indvar.conv
  br i1 %i.ej, label %.thread193, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread

.lr.ph.i136.us:                                   ; preds = %.lr.ph, %bb.u
  %.062218.us = phi float [ %i.gh, %bb.u ], [ %i.ec, %.lr.ph ] ; 2 uses
  %.063217.us = phi i32 [ %.1.i141.us, %bb.u ], [ %.068220, %.lr.ph ]
  %i.ek = fmul float %.062218.us, f0x3C8EFA35     ; 2 uses
  %i.el = tail call noundef float @sinf(float noundef %i.ek) #19, !tbaa !4 ; 3 uses
  %i.em = tail call noundef float @cosf(float noundef %i.ek) #19, !tbaa !4 ; 3 uses
  %i.en = fmul float %i.ak, %i.el
  %i.eo = fmul float %i.al, %i.el
  %i.ep = fmul float %i.am, %i.el
  %i.eq = fmul float %i.ap, %i.em
  %i.er = fmul float %i.ar, %i.em
  %i.es = fmul float %i.at, %i.em
  %i.et = fadd float %i.en, %i.eq
  %i.eu = fadd float %i.eo, %i.er
  %i.ev = fadd float %i.ep, %i.es
  %i.ew = fmul float %i.et, 2.500000e-02
  %i.ex = fmul float %i.eu, 2.500000e-02
  %i.ey = fmul float %i.ev, 2.500000e-02
  %i.ez = fadd float %i.j, %i.ew
  %i.fa = fadd float %i.f, %i.ex
  %i.fb = fadd float %i.g, %i.ey
  %i.fc = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i136.us
  %indvars.iv.i138.us = phi i64 [ 0, %.lr.ph.i136.us ], [ %indvars.iv.next.i142.us, %bb.t ] ; 4 uses
  %.01314.i139.us = phi i32 [ -1, %.lr.ph.i136.us ], [ %.1.i141.us, %bb.t ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i138.us
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %.not.i140.us = icmp eq i32 %i.fj, 0
  br i1 %.not.i140.us, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fk = icmp eq i32 %.01314.i139.us, -1
  br i1 %i.fk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i138.us ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !8
  %i.fo = sext i32 %.01314.i139.us to i64
  %i.fp = getelementptr inbounds [16 x i8], ptr %0, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !8
  %i.fs = load <2 x float>, ptr %i.fl, align 4, !tbaa !8 ; 2 uses
  %i.ft = load <2 x float>, ptr %i.fp, align 4, !tbaa !8 ; 2 uses
  %i.fu = shufflevector <2 x float> %i.fs, <2 x float> %i.ft, <2 x i32> <i32 1, i32 3>
  %i.fv = fmul <2 x float> %i.fh, %i.fu
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> %i.ft, <2 x i32> <i32 0, i32 2>
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.ff, <2 x float> %i.fv)
  %i.fy = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fr, i64 1
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.fd, <2 x float> %i.fx) ; 2 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 0
  %i.gc = extractelement <2 x float> %i.ga, i64 1
  %i.gd = fcmp ogt float %i.gb, %i.gc
  br i1 %i.gd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ge = trunc nuw nsw i64 %indvars.iv.i138.us to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.1.i141.us = phi i32 [ %i.ge, %bb.s ], [ %.01314.i139.us, %bb.r ], [ %.01314.i139.us, %bb.p ] ; 3 uses
  %indvars.iv.next.i142.us = add nuw nsw i64 %indvars.iv.i138.us, 1 ; 2 uses
  %exitcond.not.i143.us = icmp eq i64 %indvars.iv.next.i142.us, %wide.trip.count.i
  br i1 %exitcond.not.i143.us, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.us, label %bb.p

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.us: ; preds = %bb.t
  %i.gf = icmp eq i32 %.063217.us, %.013.lcssa.i
  %i.gg = icmp eq i32 %.1.i141.us, %.013.lcssa.i
  %or.cond79.us = and i1 %i.gf, %i.gg
  br i1 %or.cond79.us, label %.critedge.sink.split, label %bb.u

bb.u:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.us
  %i.gh = fadd float %.062218.us, 5.000000e+00    ; 2 uses
  %i.gi = fcmp ugt float %i.gh, %indvar.conv
  br i1 %i.gi, label %.thread193, label %.lr.ph.i136.us

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread: ; preds = %bb.o, %bb.v
  %.062218 = phi float [ %i.gm, %bb.v ], [ %i.ei, %bb.o ] ; 2 uses
  %i.gj = fmul float %.062218, f0x3C8EFA35        ; 2 uses
  %i.gk = tail call noundef float @sinf(float noundef %i.gj) #19, !tbaa !4 ; 0 uses
  %i.gl = tail call noundef float @cosf(float noundef %i.gj) #19, !tbaa !4 ; 0 uses
  br i1 %or.cond79198, label %.critedge.sink.split, label %bb.v

bb.v:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread
  %i.gm = fadd float %.062218, 5.000000e+00       ; 2 uses
  %i.gn = fcmp ugt float %i.gm, %indvar.conv
  br i1 %i.gn, label %.thread193, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread, !llvm.loop !74

.thread193:                                       ; preds = %bb.v, %bb.u, %bb.o, %bb.n, %bb.m
  %.int = add nuw nsw i32 %.067221.int, 45
  %i.go = icmp samesign ugt i32 %.067221.int, 315
  br i1 %i.go, label %.thread208, label %bb.h

.thread208:                                       ; preds = %.thread193
  store i32 0, ptr %i.cb, align 4, !tbaa !4
  br label %bb.b

.critedge.sink.split:                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109, %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread, %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.us
  store i32 3, ptr %i.cb, align 4, !tbaa !4
  br label %.critedge

.critedge:                                        ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, %.critedge.sink.split
  ret i32 %.013.lcssa.i
}

; Function Attrs: uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN11HullLibrary11calchullgenEP9btVector3ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btAlignedObjectArray.6, align 8 ; 10 uses
  %5 = alloca %class.btVector3, align 8           ; 8 uses
  %6 = alloca %class.btVector3, align 8           ; 8 uses
  %i.a = icmp slt i32 %2, 4
  br i1 %i.a, label %_ZN20btAlignedObjectArrayIiED2Ev.exit270, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  %.sroa.0386.0.copyload = load float, ptr %1, align 4 ; 2 uses
  %.sroa.7388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.7388.0.copyload = load float, ptr %.sroa.7388.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10390.0.copyload = load float, ptr %.sroa.10390.0..sroa_idx, align 4 ; 2 uses
  %i.c = zext nneg i32 %2 to i64
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.d, i32 noundef 16) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 8 uses
  store i8 1, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr null, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  store i32 0, ptr %i.h, align 4, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !78
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.d, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i167 unwind label %bb.l ; 8 uses

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i167: ; preds = %bb.b
  %i.k = load i32, ptr %i.h, align 4, !tbaa !77   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !70   ; 9 uses
  br i1 %i.l, label %.lr.ph.i.i172, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i169

.lr.ph.i.i172:                                    ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i167
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = ptrtoaddr ptr %i.j to i64
  %wide.trip.count.i.i173 = zext nneg i32 %i.k to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.k, 8
  %i.p = sub i64 %i.n, %i.o
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond545 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond545, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i172
  %n.vec = and i64 %wide.trip.count.i.i173, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !4
  %wide.load512 = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %wide.load, ptr %i.q, align 4, !tbaa !4
  store <4 x i32> %wide.load512, ptr %i.t, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i173
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i177, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i172, %middle.block
  %indvars.iv.i.i174.ph = phi i64 [ 0, %.lr.ph.i.i172 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i173, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i174.prol = phi i64 [ %indvars.iv.next.i.i175.prol, %scalar.ph.prol ], [ %indvars.iv.i.i174.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i174.prol
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i174.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  store i32 %i.x, ptr %i.v, align 4, !tbaa !4
  %indvars.iv.next.i.i175.prol = add nuw nsw i64 %indvars.iv.i.i174.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i174.unr = phi i64 [ %indvars.iv.i.i174.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i175.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.i174.ph, %wide.trip.count.i.i173
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i177, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i174 = phi i64 [ %indvars.iv.next.i.i175.3, %scalar.ph ], [ %indvars.iv.i.i174.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i174
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i174
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.i.i175 = add nuw nsw i64 %indvars.iv.i.i174, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i175
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i175
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !4
  %indvars.iv.next.i.i175.1 = add nuw nsw i64 %indvars.iv.i.i174, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i175.1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i175.1
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next.i.i175.2 = add nuw nsw i64 %indvars.iv.i.i174, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i175.2
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i175.2
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next.i.i175.3 = add nuw nsw i64 %indvars.iv.i.i174, 4 ; 2 uses
  %exitcond.not.i.i176.3 = icmp eq i64 %indvars.iv.next.i.i175.3, %wide.trip.count.i.i173
  br i1 %exitcond.not.i.i176.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i177, label %scalar.ph, !llvm.loop !81

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i169: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i167
  %.not.i5.i170 = icmp ne ptr %i.m, null
  %i.am = load i8, ptr %i.f, align 8, !range !39
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond508 = select i1 %.not.i5.i170, i1 %i.an, i1 false
  br i1 %or.cond508, label %bb.c, label %.lr.ph.preheader

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i177: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old = load i8, ptr %i.f, align 8, !tbaa !76, !range !39, !noundef !40
  %.old507 = trunc nuw i8 %.old to i1
  br i1 %.old507, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i169, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i177
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.m)
          to label %.lr.ph.preheader unwind label %bb.l

.lr.ph.preheader:                                 ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i177, %bb.c, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i169
  store i8 1, ptr %i.f, align 8, !tbaa !76
  store ptr %i.j, ptr %i.g, align 8, !tbaa !70
  store i32 %2, ptr %i.i, align 8, !tbaa !78
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 13 uses
  %.sroa.10390.0428 = phi float [ %.sroa.10390.0.copyload, %.lr.ph.preheader ], [ %.sroa.10390.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %.sroa.7388.0427 = phi float [ %.sroa.7388.0.copyload, %.lr.ph.preheader ], [ %.sroa.7388.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %.sroa.0386.0426 = phi float [ %.sroa.0386.0.copyload, %.lr.ph.preheader ], [ %.sroa.0386.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %.sroa.10384.0424 = phi float [ %.sroa.10390.0.copyload, %.lr.ph.preheader ], [ %.sroa.10384.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %.sroa.7382.0423 = phi float [ %.sroa.7388.0.copyload, %.lr.ph.preheader ], [ %.sroa.7382.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %.sroa.0380.0422 = phi float [ %.sroa.0386.0.copyload, %.lr.ph.preheader ], [ %.sroa.0380.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %.sroa.10.0421 = phi i32 [ %2, %.lr.ph.preheader ], [ %.sroa.10.2, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 3 uses
  %7 = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.dn, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 13 uses
  %i.ao = ptrtoaddr ptr %7 to i64
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !77  ; 7 uses
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !78
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i181 = icmp eq i32 %i.ap, 0
  %i.as = shl nsw i32 %i.ap, 1
  %i.at = select i1 %.not.i.i181, i32 1, i32 %i.as ; 4 uses
  %i.au = icmp slt i32 %i.ap, %i.at
  br i1 %i.au, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = sext i32 %i.at to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aw, i32 noundef 16)
          to label %.noexc182 unwind label %bb.m

.noexc182:                                        ; preds = %bb.f
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !77
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %.noexc182, %bb.e
  %i.ay = phi i32 [ %.pre.i, %.noexc182 ], [ %i.ap, %bb.e ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ax, %.noexc182 ], [ null, %bb.e ] ; 8 uses
  %i.az = icmp sgt i32 %i.ay, 0
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !70  ; 9 uses
  br i1 %i.az, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %.0.i.i.i529 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ay to i64 ; 5 uses
  %min.iters.check532 = icmp ult i32 %i.ay, 8
  %i.bc = sub i64 %i.bb, %.0.i.i.i529
  %diff.check530 = icmp ugt i64 %i.bc, -32
  %or.cond547 = select i1 %min.iters.check532, i1 true, i1 %diff.check530
  br i1 %or.cond547, label %scalar.ph531.preheader, label %vector.ph533

vector.ph533:                                     ; preds = %.lr.ph.i.i.i
  %n.vec535 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph533
  %index537 = phi i64 [ 0, %vector.ph533 ], [ %index.next540, %vector.body536 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index537 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index537 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load538 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  %wide.load539 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %wide.load538, ptr %i.bd, align 4, !tbaa !4
  store <4 x i32> %wide.load539, ptr %i.bg, align 4, !tbaa !4
  %index.next540 = add nuw i64 %index537, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next540, %n.vec535
  br i1 %i.bh, label %middle.block541, label %vector.body536, !llvm.loop !82

middle.block541:                                  ; preds = %vector.body536
  %cmp.n542 = icmp eq i64 %n.vec535, %wide.trip.count.i.i.i
  br i1 %cmp.n542, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph531.preheader

scalar.ph531.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block541
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec535, %middle.block541 ] ; 3 uses
  %xtraiter561 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %scalar.ph531.prol.loopexit, label %scalar.ph531.prol

scalar.ph531.prol:                                ; preds = %scalar.ph531.preheader, %scalar.ph531.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph531.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph531.preheader ] ; 3 uses
  %prol.iter563 = phi i64 [ %prol.iter563.next, %scalar.ph531.prol ], [ 0, %scalar.ph531.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i.prol
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter563.next = add i64 %prol.iter563, 1   ; 2 uses
  %prol.iter563.cmp.not = icmp eq i64 %prol.iter563.next, %xtraiter561
  br i1 %prol.iter563.cmp.not, label %scalar.ph531.prol.loopexit, label %scalar.ph531.prol, !llvm.loop !83

scalar.ph531.prol.loopexit:                       ; preds = %scalar.ph531.prol, %scalar.ph531.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph531.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph531.prol ]
  %i.bl = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph531

scalar.ph531:                                     ; preds = %scalar.ph531.prol.loopexit, %scalar.ph531
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph531 ], [ %indvars.iv.i.i.i.unr, %scalar.ph531.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.1
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i.2
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph531, !llvm.loop !84

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph531.prol.loopexit, %scalar.ph531, %middle.block541, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.bz = load i8, ptr %i.f, align 8, !tbaa !76, !range !39, !noundef !40
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.g, label %.noexc183

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ba)
          to label %.noexc183 unwind label %bb.m

.noexc183:                                        ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.h, align 4, !tbaa !77
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %.noexc183, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %.noexc183 ], [ %i.ay, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  store i8 1, ptr %i.f, align 8, !tbaa !76
  store ptr %.0.i.i.i, ptr %i.g, align 8, !tbaa !70
  store i32 %i.at, ptr %i.i, align 8, !tbaa !78
  br label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, %bb.d, %.lr.ph
  %i.cb = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.ap, %bb.d ], [ %i.ap, %.lr.ph ]
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  store i32 1, ptr %i.ce, align 4, !tbaa !4
  %i.cf = load i32, ptr %i.h, align 4, !tbaa !77
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.h, align 4, !tbaa !77
  %i.ch = zext i32 %.sroa.10.0421 to i64
  %i.ci = icmp eq i64 %indvars.iv, %i.ch
  br i1 %i.ci, label %bb.i, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i184 = icmp eq i64 %indvars.iv, 0       ; 2 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.cj = shl i32 %indvars.iv.tr, 1
  %i.ck = select i1 %.not.i.i184, i32 1, i32 %i.cj ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = icmp samesign ult i64 %indvars.iv, %i.cl
  br i1 %i.cm, label %bb.j, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.cn = shl nuw nsw i64 %i.cl, 2
  %i.co = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cn, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i187 unwind label %bb.n ; 9 uses

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i187: ; preds = %bb.j
  br i1 %.not.i.i184, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i189, label %.lr.ph.i.i.i195.preheader

.lr.ph.i.i.i195.preheader:                        ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i187
  %i.cp = ptrtoaddr ptr %i.co to i64
  %min.iters.check516 = icmp samesign ult i64 %indvars.iv, 8
  %i.cq = sub i64 %i.ao, %i.cp
  %diff.check514 = icmp ugt i64 %i.cq, -32
  %or.cond549 = or i1 %min.iters.check516, %diff.check514
  br i1 %or.cond549, label %.lr.ph.i.i.i195.preheader557, label %vector.ph517

vector.ph517:                                     ; preds = %.lr.ph.i.i.i195.preheader
  %n.vec519 = and i64 %indvars.iv, 9223372036854775800 ; 3 uses
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph517
  %index521 = phi i64 [ 0, %vector.ph517 ], [ %index.next524, %vector.body520 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index521 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index521 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load522 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !4
  %wide.load523 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load522, ptr %i.cr, align 4, !tbaa !4
  store <4 x i32> %wide.load523, ptr %i.cu, align 4, !tbaa !4
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next524, %n.vec519
  br i1 %i.cv, label %middle.block525, label %vector.body520, !llvm.loop !85

middle.block525:                                  ; preds = %vector.body520
  %cmp.n526 = icmp eq i64 %indvars.iv, %n.vec519
  br i1 %cmp.n526, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191, label %.lr.ph.i.i.i195.preheader557

.lr.ph.i.i.i195.preheader557:                     ; preds = %.lr.ph.i.i.i195.preheader, %middle.block525
  %indvars.iv.i.i.i197.ph = phi i64 [ 0, %.lr.ph.i.i.i195.preheader ], [ %n.vec519, %middle.block525 ] ; 3 uses
  %xtraiter564 = and i64 %indvars.iv, 3           ; 2 uses
  %lcmp.mod565.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565.not, label %.lr.ph.i.i.i195.prol.loopexit, label %.lr.ph.i.i.i195.prol

.lr.ph.i.i.i195.prol:                             ; preds = %.lr.ph.i.i.i195.preheader557, %.lr.ph.i.i.i195.prol
  %indvars.iv.i.i.i197.prol = phi i64 [ %indvars.iv.next.i.i.i198.prol, %.lr.ph.i.i.i195.prol ], [ %indvars.iv.i.i.i197.ph, %.lr.ph.i.i.i195.preheader557 ] ; 3 uses
  %prol.iter566 = phi i64 [ %prol.iter566.next, %.lr.ph.i.i.i195.prol ], [ 0, %.lr.ph.i.i.i195.preheader557 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i.i.i197.prol
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.i.i197.prol
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next.i.i.i198.prol = add nuw nsw i64 %indvars.iv.i.i.i197.prol, 1 ; 2 uses
  %prol.iter566.next = add i64 %prol.iter566, 1   ; 2 uses
  %prol.iter566.cmp.not = icmp eq i64 %prol.iter566.next, %xtraiter564
  br i1 %prol.iter566.cmp.not, label %.lr.ph.i.i.i195.prol.loopexit, label %.lr.ph.i.i.i195.prol, !llvm.loop !86

.lr.ph.i.i.i195.prol.loopexit:                    ; preds = %.lr.ph.i.i.i195.prol, %.lr.ph.i.i.i195.preheader557
  %indvars.iv.i.i.i197.unr = phi i64 [ %indvars.iv.i.i.i197.ph, %.lr.ph.i.i.i195.preheader557 ], [ %indvars.iv.next.i.i.i198.prol, %.lr.ph.i.i.i195.prol ]
  %i.cz = sub nsw i64 %indvars.iv.i.i.i197.ph, %indvars.iv
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191, label %.lr.ph.i.i.i195

.lr.ph.i.i.i195:                                  ; preds = %.lr.ph.i.i.i195.prol.loopexit, %.lr.ph.i.i.i195
  %indvars.iv.i.i.i197 = phi i64 [ %indvars.iv.next.i.i.i198.3, %.lr.ph.i.i.i195 ], [ %indvars.iv.i.i.i197.unr, %.lr.ph.i.i.i195.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i.i.i197
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.i.i197
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next.i.i.i198 = add nuw nsw i64 %indvars.iv.i.i.i197, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i198
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next.i.i.i198
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next.i.i.i198.1 = add nuw nsw i64 %indvars.iv.i.i.i197, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i198.1
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next.i.i.i198.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next.i.i.i198.2 = add nuw nsw i64 %indvars.iv.i.i.i197, 3 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i198.2
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next.i.i.i198.2
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !4
  %indvars.iv.next.i.i.i198.3 = add nuw nsw i64 %indvars.iv.i.i.i197, 4 ; 2 uses
  %exitcond.not.i.i.i199.3 = icmp eq i64 %indvars.iv.next.i.i.i198.3, %indvars.iv
  br i1 %exitcond.not.i.i.i199.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191, label %.lr.ph.i.i.i195, !llvm.loop !87

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i189: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i187
  %.not.i5.i.i190.not = icmp eq ptr %7, null
  br i1 %.not.i5.i.i190.not, label %_Z8btSetMinIfEvRT_RKS0_.exit.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191: ; preds = %.lr.ph.i.i.i195.prol.loopexit, %.lr.ph.i.i.i195, %middle.block525, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i189
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %7)
          to label %_Z8btSetMinIfEvRT_RKS0_.exit.i unwind label %bb.n

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i189, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191, %bb.i, %bb.h
  %i.dn = phi ptr [ %7, %bb.h ], [ %7, %bb.i ], [ %i.co, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191 ], [ %i.co, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i189 ] ; 20 uses
  %.sroa.10.2 = phi i32 [ %.sroa.10.0421, %bb.h ], [ %.sroa.10.0421, %bb.i ], [ %i.ck, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191 ], [ 1, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i189 ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv
  store i32 0, ptr %i.do, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %8 = load float, ptr %i.dp, align 4, !tbaa !8   ; 4 uses
  %9 = fcmp olt float %8, %.sroa.0386.0426
  %.sroa.0386.1 = select i1 %9, float %8, float %.sroa.0386.0426 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !8 ; 4 uses
  %i.ds = fcmp olt float %i.dr, %.sroa.7388.0427
  %.sroa.7388.1 = select i1 %i.ds, float %i.dr, float %.sroa.7388.0427 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %11 = load float, ptr %10, align 4, !tbaa !8    ; 4 uses
  %12 = fcmp olt float %11, %.sroa.10390.0428
  %.sroa.10390.1 = select i1 %12, float %11, float %.sroa.10390.0428 ; 2 uses
  %13 = fcmp olt float %.sroa.0380.0422, %8
  %.sroa.0380.1 = select i1 %13, float %8, float %.sroa.0380.0422 ; 2 uses
  %14 = fcmp olt float %.sroa.7382.0423, %i.dr
  %.sroa.7382.1 = select i1 %14, float %i.dr, float %.sroa.7382.0423 ; 2 uses
  %i.dt = fcmp olt float %.sroa.10384.0424, %11
  %.sroa.10384.1 = select i1 %i.dt, float %11, float %.sroa.10384.0424 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.bl
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i191, %bb.j
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

._crit_edge:                                      ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %15 = fsub float %.sroa.0380.1, %.sroa.0386.1   ; 2 uses
  %i.dy = fsub float %.sroa.7382.1, %.sroa.7388.1 ; 2 uses
  %16 = fsub float %.sroa.10384.1, %.sroa.10390.1 ; 2 uses
  %17 = fmul float %i.dy, %i.dy
  %i.dz = tail call float @llvm.fmuladd.f32(float %15, float %15, float %17)
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %16, float %16, float %i.dz)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ea)
  %i.eb = fmul float %sqrt.i, 1.000000e-03        ; 4 uses
  %i.ec = invoke { i64, i64 } @_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %._crit_edge
  %i.ed = extractvalue { i64, i64 } %i.ec, 0      ; 4 uses
  %.sroa.0313.0.extract.trunc = trunc i64 %i.ed to i32 ; 4 uses
  %i.ee = icmp eq i32 %.sroa.0313.0.extract.trunc, -1
  br i1 %i.ee, label %.critedge, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.q:                                             ; preds = %bb.o
  %i.eg = extractvalue { i64, i64 } %i.ec, 1      ; 4 uses
  %sext = shl i64 %i.ed, 32
  %i.eh = ashr exact i64 %sext, 32                ; 2 uses
  %i.ei = getelementptr inbounds [16 x i8], ptr %1, i64 %i.eh ; 3 uses
  %.sroa.0313.4.extract.shift = lshr i64 %i.ed, 32
  %.sroa.0313.4.extract.trunc = trunc nuw i64 %.sroa.0313.4.extract.shift to i32 ; 3 uses
  %i.ej = ashr i64 %i.ed, 32                      ; 2 uses
  %i.ek = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ej ; 3 uses
  %i.el = load float, ptr %i.ei, align 4, !tbaa !8
  %i.em = load float, ptr %i.ek, align 4, !tbaa !8
  %i.en = fadd float %i.el, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !8
  %i.es = fadd float %i.ep, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !8
  %i.ex = fadd float %i.eu, %i.ew
  %.sroa.15.8.extract.trunc = trunc i64 %i.eg to i32 ; 3 uses
  %sext395 = shl i64 %i.eg, 32
  %i.ey = ashr exact i64 %sext395, 32             ; 2 uses
  %i.ez = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ey ; 3 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !8
  %i.fb = fadd float %i.en, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !8
  %i.fe = fadd float %i.es, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !8
  %i.fh = fadd float %i.ex, %i.fg
  %.sroa.15.12.extract.shift = lshr i64 %i.eg, 32
  %.sroa.15.12.extract.trunc = trunc nuw i64 %.sroa.15.12.extract.shift to i32 ; 3 uses
  %i.fi = ashr i64 %i.eg, 32                      ; 2 uses
  %i.fj = getelementptr inbounds [16 x i8], ptr %1, i64 %i.fi ; 3 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !8
  %i.fl = fadd float %i.fb, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !8
  %i.fo = fadd float %i.fe, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !8
  %i.fr = fadd float %i.fh, %i.fq
  %i.fs = fmul float %i.fl, 2.500000e-01
  %i.ft = fmul float %i.fo, 2.500000e-01
  %i.fu = fmul float %i.fr, 2.500000e-01
  %i.fv = invoke noundef ptr @_ZN11HullLibrary16allocateTriangleEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.sroa.15.8.extract.trunc, i32 noundef %.sroa.15.12.extract.trunc, i32 noundef %.sroa.0313.4.extract.trunc)
          to label %bb.r unwind label %bb.z       ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store i32 2, ptr %i.fw, align 4, !tbaa !4
  %.sroa.4303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store i32 3, ptr %.sroa.4303.0..sroa_idx, align 4, !tbaa !4
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  store i32 1, ptr %.sroa.5304.0..sroa_idx, align 4, !tbaa !4
  %i.fx = invoke noundef ptr @_ZN11HullLibrary16allocateTriangleEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.sroa.15.12.extract.trunc, i32 noundef %.sroa.15.8.extract.trunc, i32 noundef %.sroa.0313.0.extract.trunc)
          to label %bb.s unwind label %bb.aa      ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i32 3, ptr %i.fy, align 4, !tbaa !4
  %.sroa.4300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i32 2, ptr %.sroa.4300.0..sroa_idx, align 4, !tbaa !4
  %.sroa.5301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  store i32 0, ptr %.sroa.5301.0..sroa_idx, align 4, !tbaa !4
  %i.fz = invoke noundef ptr @_ZN11HullLibrary16allocateTriangleEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.sroa.0313.0.extract.trunc, i32 noundef %.sroa.0313.4.extract.trunc, i32 noundef %.sroa.15.12.extract.trunc)
          to label %bb.t unwind label %bb.ab      ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ga, align 4, !tbaa !4
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i32 1, ptr %.sroa.4297.0..sroa_idx, align 4, !tbaa !4
  %.sroa.5298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  store i32 3, ptr %.sroa.5298.0..sroa_idx, align 4, !tbaa !4
  %i.gb = invoke noundef ptr @_ZN11HullLibrary16allocateTriangleEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.sroa.0313.4.extract.trunc, i32 noundef %.sroa.0313.0.extract.trunc, i32 noundef %.sroa.15.8.extract.trunc)
          to label %bb.u unwind label %bb.ac      ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i32 1, ptr %i.gc, align 4, !tbaa !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !4
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  store i32 2, ptr %.sroa.5295.0..sroa_idx, align 4, !tbaa !4
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.fi
  store i32 1, ptr %i.gd, align 4, !tbaa !4
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ey
  store i32 1, ptr %i.ge, align 4, !tbaa !4
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ej
  store i32 1, ptr %i.gf, align 4, !tbaa !4
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.eh
  store i32 1, ptr %i.gg, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !64
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph439, label %._crit_edge440

.lr.ph439:                                        ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph439, %bb.y
  %indvars.iv465 = phi i64 [ 0, %.lr.ph439 ], [ %indvars.iv.next466, %bb.y ] ; 2 uses
  %i.gn = load ptr, ptr %i.gk, align 8, !tbaa !49
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv465
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !54 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [16 x i8], ptr %1, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [16 x i8], ptr %1, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [16 x i8], ptr %1, i64 %i.gz ; 2 uses
  %i.hb = load float, ptr %i.gw, align 4, !tbaa !8
  %i.hc = load float, ptr %i.gs, align 4, !tbaa !8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.hf = load float, ptr %i.ha, align 4, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hh = load <2 x float>, ptr %i.hd, align 4, !tbaa !8 ; 3 uses
  %i.hi = load <2 x float>, ptr %i.he, align 4, !tbaa !8 ; 2 uses
  %i.hj = fsub <2 x float> %i.hh, %i.hi           ; 2 uses
  %i.hk = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hl = insertelement <2 x float> %i.hk, float %i.hb, i64 1 ; 2 uses
  %i.hm = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hn = insertelement <2 x float> %i.hm, float %i.hc, i64 1
  %i.ho = fsub <2 x float> %i.hl, %i.hn           ; 2 uses
  %i.hp = load <2 x float>, ptr %i.hg, align 4, !tbaa !8 ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hr = insertelement <2 x float> %i.hq, float %i.hf, i64 1
  %i.hs = fsub <2 x float> %i.hr, %i.hl           ; 2 uses
  %i.ht = fsub <2 x float> %i.hp, %i.hh           ; 2 uses
  %i.hu = fneg <2 x float> %i.ht
  %i.hv = fmul <2 x float> %i.ho, %i.hu
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hs, <2 x float> %i.hv) ; 4 uses
  %i.hx = extractelement <2 x float> %i.hs, i64 1
  %i.hy = fneg float %i.hx
  %i.hz = extractelement <2 x float> %i.hj, i64 0
  %i.ia = fmul float %i.hz, %i.hy
  %i.ib = extractelement <2 x float> %i.ho, i64 1
  %i.ic = extractelement <2 x float> %i.ht, i64 0
  %i.id = call float @llvm.fmuladd.f32(float %i.ib, float %i.ic, float %i.ia) ; 3 uses
  %foldExtExtBinop.a = fmul <2 x float> %i.hw, %i.hw
  %i.ie = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.if = extractelement <2 x float> %i.hw, i64 0 ; 2 uses
  %i.ig = call float @llvm.fmuladd.f32(float %i.if, float %i.if, float %i.ie)
  %i.ih = call noundef float @llvm.fmuladd.f32(float %i.id, float %i.id, float %i.ig) ; 2 uses
  %i.ii = fcmp oeq float %i.ih, 0.000000e+00
  br i1 %i.ii, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ih)
  %i.ij = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ik = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x float> %i.hw, %i.il
  %i.in = fmul float %i.id, %i.ij
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.in, i64 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.028.0.i = phi <2 x float> [ %i.im, %bb.w ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.v ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i13.i, %bb.w ], [ zeroinitializer, %bb.v ]
  store <2 x float> %.sroa.028.0.i, ptr %5, align 8
  store <2 x float> %.sroa.4.0.i, ptr %i.gl, align 8
  %i.io = invoke noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.y unwind label %bb.ad      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !62
  %i.iq = sext i32 %i.io to i64
end_hunk_0
begin_hunk_1_@_ZN11HullLibrary11calchullgenEP9btVector3ii:bb.a
  br i1 %or.cond, label %.critedge2, label %.backedge

.critedge2:                                       ; preds = %._crit_edge474
  %i.ql = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !4
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.qn
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !54
  invoke void @_ZN11HullLibrary7extrudeEP14btHullTrianglei(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.qp, i32 noundef %i.ld)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.critedge2
  %i.qq = load i32, ptr %i.gh, align 4, !tbaa !64 ; 2 uses
  br label %.backedge

bb.ba:                                            ; preds = %.critedge2
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.backedge:                                        ; preds = %bb.az, %._crit_edge474, %.lr.ph447
  %i.qs = phi i32 [ %i.nu, %.lr.ph447 ], [ %i.qq, %bb.az ], [ %i.nu, %._crit_edge474 ] ; 2 uses
  %.3.be = phi i32 [ %i.nv, %.lr.ph447 ], [ %i.qq, %bb.az ], [ %i.nv, %._crit_edge474 ] ; 2 uses
  %.not134 = icmp eq i32 %.3.be, 0
  br i1 %.not134, label %._crit_edge448, label %.lr.ph447

._crit_edge448:                                   ; preds = %.backedge, %bb.aw
  %i.qt = phi i32 [ %i.nu, %bb.aw ], [ %i.qs, %.backedge ] ; 2 uses
  %.not137450 = icmp eq i32 %i.qt, 0
  br i1 %.not137450, label %.thread, label %.lr.ph452.preheader

.lr.ph452.preheader:                              ; preds = %._crit_edge448
  %i.qu = sext i32 %i.qt to i64
  br label %.lr.ph452

.lr.ph452:                                        ; preds = %.lr.ph452.preheader, %bb.bk
  %indvars.iv471 = phi i64 [ %i.qu, %.lr.ph452.preheader ], [ %indvars.iv.next472, %bb.bk ]
  %indvars.iv.next472 = add nsw i64 %indvars.iv471, -1 ; 3 uses
  %i.qv = load ptr, ptr %i.jz, align 8, !tbaa !49
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %indvars.iv.next472
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !54 ; 7 uses
  %.not138 = icmp eq ptr %i.qx, null
  br i1 %.not138, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph452
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 28 ; 3 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !62
  %i.ra = icmp sgt i32 %i.qz, -1
  br i1 %i.ra, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.rb = load i32, ptr %i.qx, align 4, !tbaa !4
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [16 x i8], ptr %1, i64 %i.rc ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !4
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [16 x i8], ptr %1, i64 %i.rg ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !4
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [16 x i8], ptr %1, i64 %i.rk ; 2 uses
  %i.rm = load float, ptr %i.rh, align 4, !tbaa !8
  %i.rn = load float, ptr %i.rd, align 4, !tbaa !8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.rq = load float, ptr %i.rl, align 4, !tbaa !8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rs = load <2 x float>, ptr %i.ro, align 4, !tbaa !8 ; 3 uses
  %i.rt = load <2 x float>, ptr %i.rp, align 4, !tbaa !8 ; 2 uses
  %i.ru = fsub <2 x float> %i.rs, %i.rt           ; 2 uses
  %i.rv = shufflevector <2 x float> %i.rs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.rw = insertelement <2 x float> %i.rv, float %i.rm, i64 1 ; 2 uses
  %i.rx = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ry = insertelement <2 x float> %i.rx, float %i.rn, i64 1
  %i.rz = fsub <2 x float> %i.rw, %i.ry           ; 2 uses
  %i.sa = load <2 x float>, ptr %i.rr, align 4, !tbaa !8 ; 2 uses
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sc = insertelement <2 x float> %i.sb, float %i.rq, i64 1
  %i.sd = fsub <2 x float> %i.sc, %i.rw           ; 2 uses
  %i.se = fsub <2 x float> %i.sa, %i.rs           ; 2 uses
  %i.sf = fneg <2 x float> %i.se
  %i.sg = fmul <2 x float> %i.rz, %i.sf
  %i.sh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ru, <2 x float> %i.sd, <2 x float> %i.sg) ; 4 uses
  %i.si = extractelement <2 x float> %i.sd, i64 1
  %i.sj = fneg float %i.si
  %i.sk = extractelement <2 x float> %i.ru, i64 0
  %i.sl = fmul float %i.sk, %i.sj
  %i.sm = extractelement <2 x float> %i.rz, i64 1
  %i.sn = extractelement <2 x float> %i.se, i64 0
  %i.so = call float @llvm.fmuladd.f32(float %i.sm, float %i.sn, float %i.sl) ; 3 uses
  %foldExtExtBinop555 = fmul <2 x float> %i.sh, %i.sh
  %i.sp = extractelement <2 x float> %foldExtExtBinop555, i64 1
  %i.sq = extractelement <2 x float> %i.sh, i64 0 ; 2 uses
  %i.sr = call float @llvm.fmuladd.f32(float %i.sq, float %i.sq, float %i.sp)
  %i.ss = call noundef float @llvm.fmuladd.f32(float %i.so, float %i.so, float %i.sr) ; 2 uses
  %i.st = fcmp oeq float %i.ss, 0.000000e+00
  br i1 %i.st, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %sqrt.i.i252 = call noundef float @llvm.sqrt.f32(float %i.ss)
  %i.su = fdiv float 1.000000e+00, %sqrt.i.i252   ; 2 uses
  %i.sv = insertelement <2 x float> poison, float %i.su, i64 0
  %i.sw = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sx = fmul <2 x float> %i.sh, %i.sw
  %i.sy = fmul float %i.so, %i.su
  %.sroa.3.12.vec.insert.i13.i255 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sy, i64 0
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.028.0.i256 = phi <2 x float> [ %i.sx, %bb.bd ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.bc ]
  %.sroa.4.0.i257 = phi <2 x float> [ %.sroa.3.12.vec.insert.i13.i255, %bb.bd ], [ zeroinitializer, %bb.bc ]
  store <2 x float> %.sroa.028.0.i256, ptr %6, align 8
  store <2 x float> %.sroa.4.0.i257, ptr %i.kd, align 8
  %i.sz = invoke noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.bf unwind label %bb.bh     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  store i32 %i.sz, ptr %i.qy, align 4, !tbaa !62
  %i.ta = sext i32 %i.sz to i64                   ; 2 uses
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !4
  %.not139 = icmp eq i32 %i.tc, 0
  br i1 %.not139, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 -1, ptr %i.qy, align 4, !tbaa !62
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  %i.td = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bf
  %i.te = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ta ; 3 uses
  %i.tf = load i32, ptr %i.qx, align 4, !tbaa !4
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [16 x i8], ptr %1, i64 %i.tg ; 3 uses
  %i.ti = load float, ptr %i.te, align 4, !tbaa !8
  %i.tj = load float, ptr %i.th, align 4, !tbaa !8
  %i.tk = fsub float %i.ti, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.to = load float, ptr %i.tn, align 4, !tbaa !8
  %i.tp = fsub float %i.tm, %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !8
  %i.tu = fsub float %i.tr, %i.tt
  %i.tv = load float, ptr %6, align 8, !tbaa !8
  %i.tw = load float, ptr %i.ke, align 4, !tbaa !8
  %i.tx = fmul float %i.tp, %i.tw
  %i.ty = call float @llvm.fmuladd.f32(float %i.tv, float %i.tk, float %i.tx)
  %i.tz = load float, ptr %i.kd, align 8, !tbaa !8
  %i.ua = call noundef float @llvm.fmuladd.f32(float %i.tz, float %i.tu, float %i.ty)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  store float %i.ua, ptr %i.ub, align 4, !tbaa !63
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph452, %bb.bj
  %.not137 = icmp eq i64 %indvars.iv.next472, 0
  br i1 %.not137, label %.thread, label %.lr.ph452

.thread:                                          ; preds = %bb.bk, %bb.bb, %bb.ap, %._crit_edge444, %._crit_edge448
  %i.uc = add nsw i32 %.0102454, -1
  %i.ud = icmp sgt i32 %.0102454, 1
  br i1 %i.ud, label %bb.ae, label %.critedge

.critedge:                                        ; preds = %.thread, %._crit_edge15.i.epil, %._crit_edge440, %bb.o
  %.0 = phi i32 [ 0, %bb.o ], [ 1, %._crit_edge440 ], [ 1, %._crit_edge15.i.epil ], [ 1, %.thread ] ; 2 uses
  %i.ue = load ptr, ptr %i.g, align 8, !tbaa !70  ; 2 uses
  %.not.i.i.i266 = icmp ne ptr %i.ue, null
  %i.uf = load i8, ptr %i.f, align 8, !range !39
  %i.ug = trunc nuw i8 %i.uf to i1
  %or.cond.i.i = select i1 %.not.i.i.i266, i1 %i.ug, i1 false
  br i1 %or.cond.i.i, label %bb.bl, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.bl:                                            ; preds = %.critedge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ue)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.k

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %.critedge, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not.i.i.i268.not = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i268.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit270, label %bb.bm

bb.bm:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dn)
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit270

bb.bn:                                            ; preds = %bb.p, %bb.ba, %bb.z, %bb.ab, %bb.bh, %bb.av, %bb.ad, %bb.ac, %bb.aa, %bb.n, %bb.m, %bb.l
  %.sroa.15366.0 = phi ptr [ %i.dn, %bb.bh ], [ %i.dn, %bb.ba ], [ %i.dn, %bb.av ], [ %i.dn, %bb.ad ], [ %i.dn, %bb.ac ], [ %i.dn, %bb.ab ], [ %i.dn, %bb.aa ], [ %i.dn, %bb.z ], [ %i.dn, %bb.p ], [ %7, %bb.n ], [ %7, %bb.m ], [ %i.e, %bb.l ] ; 2 uses
  %.pn161 = phi { ptr, i32 } [ %i.td, %bb.bh ], [ %i.qr, %bb.ba ], [ %i.nt, %bb.av ], [ %i.jw, %bb.ad ], [ %i.jv, %bb.ac ], [ %i.ju, %bb.ab ], [ %i.jt, %bb.aa ], [ %i.js, %bb.z ], [ %i.ef, %bb.p ], [ %i.dx, %bb.n ], [ %i.dw, %bb.m ], [ %i.dv, %bb.l ] ; 2 uses
  %i.uh = load ptr, ptr %i.g, align 8, !tbaa !70  ; 2 uses
  %.not.i.i.i271 = icmp ne ptr %i.uh, null
  %i.ui = load i8, ptr %i.f, align 8, !range !39
  %i.uj = trunc nuw i8 %i.ui to i1
  %or.cond.i.i272 = select i1 %.not.i.i.i271, i1 %i.uj, i1 false
  br i1 %or.cond.i.i272, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.uh)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.k, %bb.bo, %bb.bn
  %.sroa.15366.1 = phi ptr [ %i.dn, %bb.k ], [ %.sroa.15366.0, %bb.bo ], [ %.sroa.15366.0, %bb.bn ] ; 2 uses
  %.pn161.pn = phi { ptr, i32 } [ %i.du, %bb.k ], [ %.pn161, %bb.bo ], [ %.pn161, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not.i.i.i275.not = icmp eq ptr %.sroa.15366.1, null
  br i1 %.not.i.i.i275.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit278, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.15366.1)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit278 unwind label %bb.br

_ZN20btAlignedObjectArrayIiED2Ev.exit278:         ; preds = %bb.bp, %bb.bq
  resume { ptr, i32 } %.pn161.pn

_ZN20btAlignedObjectArrayIiED2Ev.exit270:         ; preds = %bb.bm, %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.0, %_ZN20btAlignedObjectArrayIiED2Ev.exit ], [ %.0, %bb.bm ]
  ret i32 %.1

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.uk = landingpad { ptr, i32 }
          catch ptr null
  %i.ul = extractvalue { ptr, i32 } %i.uk, 0
  call void @__clang_call_terminate(ptr %i.ul) #20
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN11HullLibrary8calchullEP9btVector3iR20btAlignedObjectArrayIjERii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, i32 noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN11HullLibrary11calchullgenEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %5)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit, label %.preheader72

.preheader72:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !64   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle.exit
  %i.f = phi i32 [ %i.c, %.lr.ph ], [ %i.eh, %_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle.exit ] ; 5 uses
  %.sroa.1564.092 = phi ptr [ null, %.lr.ph ], [ %.sroa.1564.2, %_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle.exit ] ; 14 uses
  %.sroa.12.091 = phi i32 [ 0, %.lr.ph ], [ %.sroa.12.2, %_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle.exit ] ; 4 uses
  %.sroa.3.090 = phi i32 [ 0, %.lr.ph ], [ %.sroa.3.2, %_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle.exit ] ; 13 uses
  %.sroa.1564.092151 = ptrtoaddr ptr %.sroa.1564.092 to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 2 uses
  %.not26 = icmp eq ptr %i.i, null
  br i1 %.not26, label %_ZN11HullLibrary18deAllocateTriangleEP14btHullTriangle.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.j = sext i32 %.sroa.3.090 to i64             ; 13 uses
  %i.k = icmp eq i32 %.sroa.3.090, %.sroa.12.091
  br i1 %i.k, label %bb.c, label %.preheader.1

.thread:                                          ; preds = %bb.l
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.c:                                             ; preds = %.preheader.preheader
  %i.m = icmp eq i32 %.sroa.3.090, 0
  %i.n = shl i32 %.sroa.3.090, 1
  %i.o = select i1 %i.m, i32 1, i32 %i.n          ; 5 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i32 %.sroa.3.090, %i.o
  br i1 %i.q, label %bb.d, label %.preheader.1

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i64 %i.p, 2
  %i.s = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i unwind label %bb.m

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ null, %bb.d ], [ %i.s, %bb.e ] ; 9 uses
  %i.t = icmp sgt i32 %.sroa.3.090, 0
  br i1 %i.t, label %.lr.ph.i.i.i.preheader, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.0.i.i.i150 = ptrtoaddr ptr %.0.i.i.i to i64
  %min.iters.check154 = icmp ult i32 %.sroa.3.090, 8
  %i.u = sub i64 %.sroa.1564.092151, %.0.i.i.i150
  %diff.check152 = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check154, i1 true, i1 %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader205, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec157 = and i64 %i.j, 2147483640            ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next162, %vector.body158 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index159 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1564.092, i64 %index159 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load160 = load <4 x i32>, ptr %i.w, align 4, !tbaa !4
  %wide.load161 = load <4 x i32>, ptr %i.x, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load160, ptr %i.v, align 4, !tbaa !4
  store <4 x i32> %wide.load161, ptr %i.y, align 4, !tbaa !4
  %index.next162 = add nuw i64 %index159, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.z, label %middle.block163, label %vector.body158, !llvm.loop !88

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %n.vec157, %i.j
  br i1 %cmp.n164, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %.lr.ph.i.i.i.preheader205

.lr.ph.i.i.i.preheader205:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block163
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec157, %middle.block163 ] ; 3 uses
  %xtraiter = and i64 %i.j, 3
  %i.aa = and i32 %.sroa.3.090, 3
  %lcmp.mod.not = icmp eq i32 %i.aa, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader205, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader205 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader205 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1564.092, i64 %indvars.iv.i.i.i.prol
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !89

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader205
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader205 ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %i.j
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1564.092, i64 %indvars.iv.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1564.092, i64 %indvars.iv.next.i.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.1207 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1207
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1564.092, i64 %indvars.iv.next.i.i.i.1207
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.2211 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2211
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1564.092, i64 %indvars.iv.next.i.i.i.2211
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %i.j
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !90

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i.not = icmp eq ptr %.sroa.1564.092, null
  br i1 %.not.i5.i.i.not, label %.preheader.1, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block163, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1564.092)
          to label %.preheader.1 unwind label %bb.m

.preheader.1:                                     ; preds = %bb.c, %.preheader.preheader, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.sroa.12.3 = phi i32 [ %.sroa.12.091, %.preheader.preheader ], [ %.sroa.12.091, %bb.c ], [ %i.o, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %i.o, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i ] ; 3 uses
  %.sroa.1564.4 = phi ptr [ %.sroa.1564.092, %.preheader.preheader ], [ %.sroa.1564.092, %bb.c ], [ %.0.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ], [ %.0.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i ] ; 13 uses
  %.sroa.1564.4134 = ptrtoaddr ptr %.sroa.1564.4 to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.sroa.1564.4, i64 %i.j
  %i.at = load i32, ptr %i.i, align 4, !tbaa !4
  store i32 %i.at, ptr %i.as, align 4, !tbaa !4
  %indvars.iv.next101 = add nsw i64 %i.j, 1       ; 8 uses
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
end_hunk_1
