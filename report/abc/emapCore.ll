inline.NumInlined: 489
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@Emap_NodeMatch:bb.a
  %i.mj = load i32, ptr %i.jh, align 8, !tbaa !180
  %i.mk = sext i32 %i.mj to i64
  %i.ml = icmp slt i64 %indvars.iv.next194.1, %i.mk
  br i1 %i.ml, label %bb.ar, label %Emap_BestIsBetterMode.exit.thread.loopexit.1, !llvm.loop !189

Emap_BestIsBetterMode.exit.thread.loopexit.1:     ; preds = %bb.ar
  %.pre.1 = load i32, ptr %i.p, align 8, !tbaa !20
  br label %Emap_BestIsBetterMode.exit.thread.1

Emap_BestIsBetterMode.exit.thread.1:              ; preds = %Emap_BestIsBetterMode.exit.thread.loopexit.1, %Emap_BestIsBetterMode.exit.thread161.1, %.split.1, %bb.aq, %Emap_BestIsBetterMode.exit.1, %bb.ao, %._crit_edge.1
  %i.mm = phi i32 [ %.pre.1, %Emap_BestIsBetterMode.exit.thread.loopexit.1 ], [ %i.iz, %Emap_BestIsBetterMode.exit.thread161.1 ], [ %i.iz, %bb.aq ], [ %i.iz, %bb.ao ], [ %i.iz, %._crit_edge.1 ], [ %i.iz, %Emap_BestIsBetterMode.exit.1 ], [ %i.iz, %.split.1 ] ; 2 uses
  %indvars.iv.next197.1 = add nuw nsw i64 %indvars.iv196.1, 1 ; 2 uses
  %i.mn = trunc nuw i64 %indvars.iv.next197.1 to i32
  %i.mo = icmp sgt i32 %i.mm, %i.mn
  br i1 %i.mo, label %bb.ag, label %.loopexit, !llvm.loop !190

.loopexit:                                        ; preds = %._crit_edge.i.1, %bb.ae, %bb.af, %Emap_BestIsBetterMode.exit.thread.1, %bb.aj, %bb.ai, %bb.f
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %.preheader, label %bb.f, !llvm.loop !191

bb.as:                                            ; preds = %.preheader.split.preheader
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 5304
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !51
  %i.mr = load float, ptr %i.ah, align 4, !tbaa !16
  %i.ms = fpext float %i.mr to double
  %i.mt = fadd double %i.mq, %i.ms                ; 2 uses
  %.val = load i32, ptr %i.ai, align 8, !tbaa !40
  %i.mu = shl i32 %.val, 1
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.mv
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !126
  %i.my = fadd double %i.mx, 1.000000e-03
  %i.mz = fcmp ugt double %i.mt, %i.my
  br i1 %i.mz, label %Emap_BestIsBetterMode.exit156.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 5312
  %i.nb = load float, ptr %i.na, align 8, !tbaa !53
  %i.nc = load float, ptr %i.aj, align 8, !tbaa !15
  %i.nd = fadd float %i.nb, %i.nc
  %i.ne = fpext float %i.nd to double             ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 5216 ; 3 uses
  %i.ng = load float, ptr %i.nf, align 8, !tbaa !53
  %i.nh = fpext float %i.ng to double             ; 2 uses
  %i.ni = fadd double %i.nh, -1.000000e-04
  %i.nj = fcmp ogt double %i.ni, %i.ne
  br i1 %i.nj, label %Emap_BestIsBetterMode.exit156.thread168, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nk = fadd double %i.nh, 1.000000e-04
  %i.nl = fcmp olt double %i.nk, %i.ne
  br i1 %i.nl, label %Emap_BestIsBetterMode.exit156.thread, label %Emap_BestIsBetterMode.exit156

Emap_BestIsBetterMode.exit156:                    ; preds = %bb.au
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 5208
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !51
  %i.no = fadd double %i.nn, -1.000000e-04
  %i.np = fcmp olt double %i.mt, %i.no
  br i1 %i.np, label %Emap_BestIsBetterMode.exit156.thread168, label %Emap_BestIsBetterMode.exit156.thread

Emap_BestIsBetterMode.exit156.thread168:          ; preds = %bb.at, %Emap_BestIsBetterMode.exit156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !tbaa.struct !135
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 5200
  store i32 1, ptr %i.nq, align 8, !tbaa !54
  %i.nr = load float, ptr %i.ah, align 4, !tbaa !16
  %i.ns = fpext float %i.nr to double
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 5208 ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !51
  %i.nv = fadd double %i.nu, %i.ns
  store double %i.nv, ptr %i.nt, align 8, !tbaa !51
  %i.nw = load float, ptr %i.aj, align 8, !tbaa !15
  %i.nx = load float, ptr %i.nf, align 8, !tbaa !53
  %i.ny = fadd float %i.nw, %i.nx
  store float %i.ny, ptr %i.nf, align 8, !tbaa !53
  br label %Emap_BestIsBetterMode.exit156.thread

Emap_BestIsBetterMode.exit156.thread:             ; preds = %bb.au, %.preheader.split.preheader, %bb.as, %Emap_BestIsBetterMode.exit156, %Emap_BestIsBetterMode.exit156.thread168
  %i.nz = load ptr, ptr %i.a, align 8, !tbaa !77
  %.not.1 = icmp eq ptr %i.nz, null
  br i1 %.not.1, label %.split.us, label %bb.av

bb.av:                                            ; preds = %Emap_BestIsBetterMode.exit156.thread
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 5208
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !51
  %i.oc = load float, ptr %i.ah, align 4, !tbaa !16
  %i.od = fpext float %i.oc to double
  %i.oe = fadd double %i.ob, %i.od                ; 2 uses
  %.val.1 = load i32, ptr %i.ai, align 8, !tbaa !40
  %i.of = shl i32 %.val.1, 1
  %i.og = or disjoint i32 %i.of, 1
  %i.oh = zext i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.oh
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !126
  %i.ok = fadd double %i.oj, 1.000000e-03
  %i.ol = fcmp ugt double %i.oe, %i.ok
  br i1 %i.ol, label %.split.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 5216
  %i.on = load float, ptr %i.om, align 8, !tbaa !53
  %i.oo = load float, ptr %i.aj, align 8, !tbaa !15
  %i.op = fadd float %i.on, %i.oo
  %i.oq = fpext float %i.op to double             ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 5312 ; 3 uses
  %i.os = load float, ptr %i.or, align 8, !tbaa !53
  %i.ot = fpext float %i.os to double             ; 2 uses
  %i.ou = fadd double %i.ot, -1.000000e-04
  %i.ov = fcmp ogt double %i.ou, %i.oq
  br i1 %i.ov, label %Emap_BestIsBetterMode.exit156.thread168.1, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ow = fadd double %i.ot, 1.000000e-04
  %i.ox = fcmp olt double %i.ow, %i.oq
  br i1 %i.ox, label %.split.us, label %Emap_BestIsBetterMode.exit156.1

Emap_BestIsBetterMode.exit156.1:                  ; preds = %bb.ax
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 5304
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !51
  %i.pa = fadd double %i.oz, -1.000000e-04
  %i.pb = fcmp olt double %i.oe, %i.pa
  br i1 %i.pb, label %Emap_BestIsBetterMode.exit156.thread168.1, label %.split.us

Emap_BestIsBetterMode.exit156.thread168.1:        ; preds = %Emap_BestIsBetterMode.exit156.1, %bb.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !tbaa.struct !135
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 5296
  store i32 1, ptr %i.pc, align 8, !tbaa !54
  %i.pd = load float, ptr %i.ah, align 4, !tbaa !16
  %i.pe = fpext float %i.pd to double
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 5304 ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !51
  %i.ph = fadd double %i.pg, %i.pe
  store double %i.ph, ptr %i.pf, align 8, !tbaa !51
  %i.pi = load float, ptr %i.aj, align 8, !tbaa !15
  %i.pj = load float, ptr %i.or, align 8, !tbaa !53
  %i.pk = fadd float %i.pi, %i.pj
  store float %i.pk, ptr %i.or, align 8, !tbaa !53
  br label %.split.us

.split.us:                                        ; preds = %Emap_BestIsBetterMode.exit156.thread, %bb.av, %bb.ax, %Emap_BestIsBetterMode.exit156.1, %Emap_BestIsBetterMode.exit156.thread168.1, %Emap_BestIsBetterMode.exit156.thread.us, %bb.e, %Emap_BestIsBetterMode.exit156.us.1, %Emap_BestIsBetterMode.exit156.thread168.us.1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Emap_ManTryExactRecoveries(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef nonnull writeonly captures(none) %9, ptr nofree noundef nonnull writeonly captures(none) %10, double noundef %11) unnamed_addr #0 {
bb.a:
  %12 = alloca %struct.Emap_PackEntry_t_, align 8 ; 7 uses
  %13 = alloca %struct.Emap_PackEntry_t_, align 8 ; 7 uses
  %14 = alloca %struct.Emap_Best_t_, align 8      ; 5 uses
  %15 = alloca %struct.Emap_Best_t_, align 8      ; 5 uses
  %16 = alloca %struct.Emap_Best_t_, align 8      ; 5 uses
  %17 = alloca %struct.Emap_Best_t_, align 8      ; 5 uses
  %18 = alloca %struct.Emap_Best_t_, align 8      ; 4 uses
  %.sroa.5.i112.i = alloca { i32, i32, [6 x i32], [6 x i32] }, align 8 ; 4 uses
  %19 = alloca %struct.Emap_Best_t_, align 8      ; 4 uses
  %.sroa.5.i.i = alloca { i32, i32, [6 x i32], [6 x i32] }, align 8 ; 4 uses
  %20 = alloca %struct.Emap_Best_t_, align 8      ; 10 uses
  %21 = alloca %struct.Emap_Best_t_, align 8      ; 15 uses
  %i.a = getelementptr i8, ptr %0, i64 32         ; 15 uses
  %i.b = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %21, i64 68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 13 uses
  %.not85.i = icmp eq ptr %4, null
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 76 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.aj = fadd double %11, 1.000000e-01
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Emap_ManSaveBests.exit
  %.050131 = phi float [ 1.000000e+20, %bb.a ], [ %.1, %Emap_ManSaveBests.exit ] ; 3 uses
  %.051130 = phi i32 [ 0, %bb.a ], [ %.152, %Emap_ManSaveBests.exit ] ; 2 uses
  %.053129 = phi double [ 1.000000e+20, %bb.a ], [ %.154, %Emap_ManSaveBests.exit ] ; 2 uses
  %.055128 = phi i32 [ 0, %bb.a ], [ %.156, %Emap_ManSaveBests.exit ] ; 2 uses
  %.057127 = phi i32 [ 0, %bb.a ], [ %i.aop, %Emap_ManSaveBests.exit ] ; 3 uses
  %i.ak = and i32 %.057127, 1
  %.val10.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.al = getelementptr i8, ptr %.val10.i, i64 4
  %.val.val11.i = load i32, ptr %i.al, align 4, !tbaa !37
  %i.am = icmp sgt i32 %.val.val11.i, 0
  br i1 %i.am, label %.lr.ph.i, label %Emap_ManRestoreBests.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.an = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 5128
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 192
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 %.idx.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ap, i64 96, i1 false), !tbaa.struct !135
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 5224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ar, i64 96, i1 false), !tbaa.struct !135
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.as = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.as, align 4, !tbaa !37
  %i.at = sext i32 %.val.val.i to i64
  %i.au = icmp slt i64 %indvars.iv.next.i, %i.at
  br i1 %i.au, label %.lr.ph.i, label %Emap_ManRestoreBests.exit, !llvm.loop !139

Emap_ManRestoreBests.exit:                        ; preds = %.lr.ph.i, %bb.b
  %i.av = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 16 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 10 uses
  store i32 0, ptr %i.aw, align 4, !tbaa !85
  store i32 1000, ptr %i.av, align 8, !tbaa !86
  %i.ax = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 6 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %.not132.i.i = icmp eq i32 %i.ak, 0             ; 3 uses
  %.not84.i = icmp samesign ult i32 %.057127, 2
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %Emap_ManRestoreBests.exit
  %.076214.i = phi i32 [ 0, %Emap_ManRestoreBests.exit ], [ %i.anq, %.critedge.i ] ; 3 uses
  %i.az = phi i1 [ true, %Emap_ManRestoreBests.exit ], [ false, %.critedge.i ]
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ba = getelementptr i8, ptr %.val.i.i, i64 4
  %.val.val.i.i = load i32, ptr %i.ba, align 4, !tbaa !37
  %i.bb = sext i32 %.val.val.i.i to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %i.bc, i1 false)
  %.val141.i.i = load ptr, ptr %i.b, align 8, !tbaa !128 ; 3 uses
  %i.bd = getelementptr i8, ptr %.val141.i.i, i64 4
  %.val14.val2.i.i = load i32, ptr %i.bd, align 4, !tbaa !37 ; 2 uses
  %i.be = icmp sgt i32 %.val14.val2.i.i, 0
  br i1 %i.be, label %.lr.ph.i.i, label %Emap_ManComputeRefs.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.val144.i.i = phi ptr [ %.val14.i.i, %.lr.ph.i.i ], [ %.val141.i.i, %bb.c ]
  %i.bf = getelementptr i8, ptr %.val144.i.i, i64 8
  %.val15.val.i.i = load ptr, ptr %i.bf, align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i.i, i64 %indvars.iv.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %.val12.i.i = load ptr, ptr %i.bi, align 8, !tbaa !61
  %.val12.val.i.i = load i32, ptr %.val12.i.i, align 4, !tbaa !58
  %i.bj = getelementptr i8, ptr %i.bh, i64 20
  %.val13.i.i = load i32, ptr %i.bj, align 4
  %i.bk = lshr i32 %.val13.i.i, 10
  %i.bl = and i32 %i.bk, 1
  tail call fastcc void @Emap_RefPhase_rec(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef %6, i32 noundef %.val12.val.i.i, i32 noundef %i.bl)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val14.i.i = load ptr, ptr %i.b, align 8, !tbaa !128 ; 3 uses
  %i.bm = getelementptr i8, ptr %.val14.i.i, i64 4
  %.val14.val.i.i = load i32, ptr %i.bm, align 4, !tbaa !37 ; 2 uses
  %i.bn = sext i32 %.val14.val.i.i to i64
  %i.bo = icmp slt i64 %indvars.iv.next.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i, label %Emap_ManComputeRefs.exit.i, !llvm.loop !140

Emap_ManComputeRefs.exit.i:                       ; preds = %.lr.ph.i.i, %bb.c
  %.val37.val.i.i = phi i32 [ %.val14.val2.i.i, %bb.c ], [ %.val14.val.i.i, %.lr.ph.i.i ] ; 2 uses
  %.val37.i.i = phi ptr [ %.val141.i.i, %bb.c ], [ %.val14.i.i, %.lr.ph.i.i ]
  %.val31.i.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bp = getelementptr i8, ptr %.val31.i.i, i64 4
  %.val31.val.i.i = load i32, ptr %i.bp, align 4, !tbaa !37 ; 3 uses
  %i.bq = icmp sgt i32 %.val31.val.i.i, 0         ; 2 uses
  br i1 %i.bq, label %.lr.ph.preheader.i.i, label %.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %Emap_ManComputeRefs.exit.i
  %i.br = shl nuw i32 %.val31.val.i.i, 1          ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.br, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 3 uses
  %min.iters.check240 = icmp slt i32 %i.br, 4
  br i1 %min.iters.check240, label %.lr.ph.i97.i.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec242 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next245, %vector.body243 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index244 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x double> splat (double 1.000000e+20), ptr %i.bs, align 8, !tbaa !126
  store <2 x double> splat (double 1.000000e+20), ptr %i.bt, align 8, !tbaa !126
  %index.next245 = add nuw i64 %index244, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next245, %n.vec242
  br i1 %i.bu, label %middle.block246, label %vector.body243, !llvm.loop !192

middle.block246:                                  ; preds = %vector.body243
  %cmp.n247 = icmp eq i64 %n.vec242, %wide.trip.count.i.i
  br i1 %cmp.n247, label %.preheader.i.i, label %.lr.ph.i97.i.preheader

.lr.ph.i97.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block246
  %indvars.iv.i98.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec242, %middle.block246 ]
  br label %.lr.ph.i97.i

.preheader.i.i:                                   ; preds = %.lr.ph.i97.i, %middle.block246, %Emap_ManComputeRefs.exit.i
  %i.bv = icmp sgt i32 %.val37.val.i.i, 0
  br i1 %i.bv, label %.lr.ph43.i.i, label %.critedge.preheader.i.i

.lr.ph43.i.i:                                     ; preds = %.preheader.i.i
  %i.bw = getelementptr i8, ptr %.val37.i.i, i64 8
  %.val38.val.i.i = load ptr, ptr %i.bw, align 8, !tbaa !56
  %wide.trip.count51.i.i = zext nneg i32 %.val37.val.i.i to i64
  br label %bb.d

.lr.ph.i97.i:                                     ; preds = %.lr.ph.i97.i.preheader, %.lr.ph.i97.i
  %indvars.iv.i98.i = phi i64 [ %indvars.iv.next.i99.i, %.lr.ph.i97.i ], [ %indvars.iv.i98.i.ph, %.lr.ph.i97.i.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i98.i
  store double 1.000000e+20, ptr %i.bx, align 8, !tbaa !126
  %indvars.iv.next.i99.i = add nuw nsw i64 %indvars.iv.i98.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i99.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i97.i, !llvm.loop !193

.critedge.preheader.i.i:                          ; preds = %Emap_RequiredUpdate.exit.i.i, %.preheader.i.i
  br i1 %i.bq, label %.lr.ph46.preheader.i.i, label %.critedge.thread.i

.lr.ph46.preheader.i.i:                           ; preds = %.critedge.preheader.i.i
  %i.by = zext nneg i32 %.val31.val.i.i to i64
  br label %.lr.ph46.i.i

bb.d:                                             ; preds = %Emap_RequiredUpdate.exit.i.i, %.lr.ph43.i.i
  %indvars.iv48.i.i = phi i64 [ 0, %.lr.ph43.i.i ], [ %indvars.iv.next49.i.i, %Emap_RequiredUpdate.exit.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val38.val.i.i, i64 %indvars.iv48.i.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !57 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 32
  %.val35.i.i = load ptr, ptr %i.cb, align 8, !tbaa !61
  %.val35.val.i.i = load i32, ptr %.val35.i.i, align 4, !tbaa !58
  %i.cc = getelementptr i8, ptr %i.ca, i64 20
  %.val36.i.i = load i32, ptr %i.cc, align 4
  %i.cd = lshr i32 %.val36.i.i, 10
  %i.ce = and i32 %i.cd, 1
  %i.cf = shl nsw i32 %.val35.val.i.i, 1
  %i.cg = or disjoint i32 %i.ce, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ch ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !126
  %i.ck = fcmp olt double %11, %i.cj
  br i1 %i.ck, label %bb.e, label %Emap_RequiredUpdate.exit.i.i

bb.e:                                             ; preds = %bb.d
  store double %11, ptr %i.ci, align 8, !tbaa !126
  br label %Emap_RequiredUpdate.exit.i.i

Emap_RequiredUpdate.exit.i.i:                     ; preds = %bb.e, %bb.d
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %exitcond52.not.i.i = icmp eq i64 %indvars.iv.next49.i.i, %wide.trip.count51.i.i
  br i1 %exitcond52.not.i.i, label %.critedge.preheader.i.i, label %bb.d, !llvm.loop !145

.lr.ph46.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph46.preheader.i.i
  %indvars.iv53.i.i = phi i64 [ %i.by, %.lr.ph46.preheader.i.i ], [ %indvars.iv.next54.i.i, %.critedge.i.i ] ; 2 uses
  %indvars.iv.next54.i.i = add nsw i64 %indvars.iv53.i.i, -1 ; 2 uses
  %.val33.i.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cl = getelementptr i8, ptr %.val33.i.i, i64 8
  %.val33.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i.i, i64 %indvars.iv.next54.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57 ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.critedge.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph46.i.i
  %i.cp = getelementptr i8, ptr %i.cn, i64 20
  %.val39.i.i = load i32, ptr %i.cp, align 4
  %i.cq = and i32 %.val39.i.i, 15
  %.not.i.i = icmp eq i32 %i.cq, 7
  br i1 %.not.i.i, label %bb.g, label %.critedge.i.i

bb.g:                                             ; preds = %bb.f
  %i.cr = getelementptr i8, ptr %i.cn, i64 28
  %.val34.i.i = load i32, ptr %i.cr, align 4, !tbaa !60
  %.not40.i.i = icmp eq i32 %.val34.i.i, 2
  br i1 %.not40.i.i, label %bb.h, label %.critedge.i.i

bb.h:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@Emap_ManTryExactRecoveries:bb.a
bb.du:                                            ; preds = %bb.dt
  %i.aht = tail call double @Mio_GateReadArea(ptr noundef nonnull %i.ahm) #19, !inline_history !207
  %i.ahu = fptrunc double %i.aht to float         ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahl, i64 12 ; 2 uses
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !188
  %i.ahx = icmp sgt i32 %i.ahw, 0
  br i1 %i.ahx, label %.lr.ph.i159.i, label %Emap_CutDerefLeavesLocal_rec.exit.i

.lr.ph.i159.i:                                    ; preds = %bb.du
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !179
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = getelementptr [40 x i8], ptr %i.xo, i64 %i.aia
  %i.aic = getelementptr i8, ptr %i.aib, i64 12
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahl, i64 40
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.lr.ph.i159.i
  %indvars.iv.i160.i = phi i64 [ 0, %.lr.ph.i159.i ], [ %indvars.iv.next.i161.i, %bb.dv ] ; 3 uses
  %.03337.i.i = phi float [ %i.ahu, %.lr.ph.i159.i ], [ %i.ain, %bb.dv ]
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.i160.i
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !58
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds [4 x i8], ptr %i.aic, i64 %i.aih
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !58
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %indvars.iv.i160.i
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !58
  %i.aim = tail call fastcc float @Emap_PhaseDerefLocal_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.av, i32 noundef %i.aij, i32 noundef %i.ail), !inline_history !207
  %i.ain = fadd float %.03337.i.i, %i.aim         ; 2 uses
  %indvars.iv.next.i161.i = add nuw nsw i64 %indvars.iv.i160.i, 1 ; 2 uses
  %i.aio = load i32, ptr %i.ahv, align 4, !tbaa !188
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = icmp slt i64 %indvars.iv.next.i161.i, %i.aip
  br i1 %i.aiq, label %bb.dv, label %Emap_CutDerefLeavesLocal_rec.exit.i, !llvm.loop !208

Emap_CutDerefLeavesLocal_rec.exit.i:              ; preds = %bb.dv, %bb.du, %.thread.i157.i, %bb.ds
  %.034.i.i = phi float [ %i.ahs, %.thread.i157.i ], [ 0.000000e+00, %bb.ds ], [ %i.ahu, %bb.du ], [ %i.ain, %bb.dv ]
  %i.air = fadd float %i.ahk, %.034.i.i           ; 2 uses
  %i.ais = or disjoint i32 %.not254.i.i, %i.wl
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !58
  %.not255.i.i = icmp eq i32 %i.aiv, 0
  br i1 %.not255.i.i, label %bb.dw, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %Emap_CutDerefLeavesLocal_rec.exit.i, %Emap_CutDerefLeavesLocal_rec.exit181.i
  %.sink.i.i = phi float [ %i.afs, %Emap_CutDerefLeavesLocal_rec.exit181.i ], [ %i.air, %Emap_CutDerefLeavesLocal_rec.exit.i ]
  %i.aiw = load float, ptr %i.s, align 8, !tbaa !15
  %i.aix = fadd float %.sink.i.i, %i.aiw
  br label %bb.dw

bb.dw:                                            ; preds = %.sink.split.i.i, %Emap_CutDerefLeavesLocal_rec.exit.i, %Emap_CutDerefLeavesLocal_rec.exit181.i
  %.0234.i.i = phi float [ %i.afs, %Emap_CutDerefLeavesLocal_rec.exit181.i ], [ %i.air, %Emap_CutDerefLeavesLocal_rec.exit.i ], [ %i.aix, %.sink.split.i.i ]
  %.val261.i.i = load i32, ptr %i.aw, align 4, !tbaa !85
  %.val261.fr.i.i = freeze i32 %.val261.i.i       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i8 0, i64 40, i1 false)
  store i32 %i.wa, ptr %12, align 8, !tbaa !88
  %i.aiy = load <2 x i32>, ptr %i.abd, align 4, !tbaa !58
  store <2 x i32> %i.aiy, ptr %i.ab, align 4, !tbaa !58
  store i32 %i.wc, ptr %13, align 8, !tbaa !88
  %i.aiz = load i32, ptr %i.abl, align 4, !tbaa !152
  store i32 %i.aiz, ptr %i.ad, align 4, !tbaa !90
  %i.aja = load i32, ptr %i.abc, align 4, !tbaa !150
  store i32 %i.aja, ptr %i.ae, align 8, !tbaa !91
  %i.ajb = load i32, ptr %i.za, align 4, !tbaa !120
  call fastcc void @Emap_MogApply(ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %i.vz, i32 noundef %i.ajb)
  %i.ajc = load i32, ptr %i.abd, align 4, !tbaa !151 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.vz, i64 88 ; 3 uses
  %i.aje = load float, ptr %i.ajd, align 8, !tbaa !160
  %.not.i291.i.i = icmp eq i32 %i.ajc, 0
  %i.ajf = zext i1 %.not.i291.i.i to i64
  %i.ajg = getelementptr inbounds nuw [96 x i8], ptr %i.xf, i64 %i.ajf ; 6 uses
  %i.ajh = sext i32 %i.ajc to i64
  %i.aji = getelementptr inbounds [96 x i8], ptr %i.xf, i64 %i.ajh ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ajg, ptr noundef nonnull align 8 dereferenceable(96) %i.aji, i64 96, i1 false), !tbaa.struct !135
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajg, i64 72
  store i32 1, ptr %i.ajj, align 8, !tbaa !54
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajg, i64 64
  store i32 -1, ptr %i.ajk, align 8, !tbaa !154
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajg, i64 68
  store i32 -1, ptr %i.ajl, align 4, !tbaa !163
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aji, i64 80
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !51
  %i.ajo = load float, ptr %i.r, align 4, !tbaa !16
  %i.ajp = fpext float %i.ajo to double
  %i.ajq = fadd double %i.ajn, %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajg, i64 80
  store double %i.ajq, ptr %i.ajr, align 8, !tbaa !51
  %i.ajs = load float, ptr %i.s, align 8, !tbaa !15
  %i.ajt = fadd float %i.aje, %i.ajs
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajg, i64 88
  store float %i.ajt, ptr %i.aju, align 8, !tbaa !53
  %i.ajv = load i32, ptr %i.abl, align 4, !tbaa !152 ; 2 uses
  %i.ajw = load float, ptr %i.ajd, align 8, !tbaa !160
  %.not.i292.i.i = icmp eq i32 %i.ajv, 0
  %i.ajx = zext i1 %.not.i292.i.i to i64
  %i.ajy = getelementptr inbounds nuw [96 x i8], ptr %i.xp, i64 %i.ajx ; 6 uses
  %i.ajz = sext i32 %i.ajv to i64
  %i.aka = getelementptr inbounds [96 x i8], ptr %i.xp, i64 %i.ajz ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ajy, ptr noundef nonnull align 8 dereferenceable(96) %i.aka, i64 96, i1 false), !tbaa.struct !135
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 72
  store i32 1, ptr %i.akb, align 8, !tbaa !54
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajy, i64 64
  store i32 -1, ptr %i.akc, align 8, !tbaa !154
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajy, i64 68
  store i32 -1, ptr %i.akd, align 4, !tbaa !163
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aka, i64 80
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !51
  %i.akg = load float, ptr %i.r, align 4, !tbaa !16
  %i.akh = fpext float %i.akg to double
  %i.aki = fadd double %i.akf, %i.akh
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajy, i64 80
  store double %i.aki, ptr %i.akj, align 8, !tbaa !51
  %i.akk = load float, ptr %i.s, align 8, !tbaa !15
  %i.akl = fadd float %i.ajw, %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ajy, i64 88
  store float %i.akl, ptr %i.akm, align 8, !tbaa !53
  %i.akn = load float, ptr %i.ajd, align 8, !tbaa !160
  %i.ako = load i32, ptr %i.abd, align 4, !tbaa !151
  %i.akp = tail call fastcc float @Emap_MogRefLeavesForUsedPhases(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.av, i32 noundef %i.wa, i32 noundef %i.ako)
  %i.akq = fadd float %i.akn, %i.akp
  %i.akr = load i32, ptr %i.abl, align 4, !tbaa !152
  %i.aks = tail call fastcc float @Emap_MogRefLeavesForUsedPhases(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.av, i32 noundef %i.wc, i32 noundef %i.akr)
  %i.akt = fadd float %i.akq, %i.aks
  %.val.i144.i = load i32, ptr %i.aw, align 4, !tbaa !85 ; 2 uses
  %invariant.smax.i.i = tail call i32 @llvm.smax.i32(i32 %.val261.fr.i.i, i32 0) ; 2 uses
  %or.cond302307.i.i = icmp sgt i32 %.val.i144.i, %invariant.smax.i.i
  br i1 %or.cond302307.i.i, label %.lr.ph.i148.i, label %.critedge.i145.i

.lr.ph.i148.i:                                    ; preds = %bb.dw
  %.val263.i.i = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.aku = zext nneg i32 %.val.i144.i to i64
  %i.akv = zext nneg i32 %invariant.smax.i.i to i64
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %.lr.ph.i148.i
  %indvars.iv.i149.i = phi i64 [ %i.aku, %.lr.ph.i148.i ], [ %indvars.iv.next.i150.i, %bb.dx ]
  %indvars.iv.next.i150.i = add nsw i64 %indvars.iv.i149.i, -1 ; 3 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %.val263.i.i, i64 %indvars.iv.next.i150.i
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !58
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds [4 x i8], ptr %6, i64 %i.aky ; 2 uses
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !58
  %i.alb = add nsw i32 %i.ala, -1
  store i32 %i.alb, ptr %i.akz, align 4, !tbaa !58
  %or.cond302.i.i = icmp samesign ugt i64 %indvars.iv.next.i150.i, %i.akv
  br i1 %or.cond302.i.i, label %bb.dx, label %.critedge.i145.i, !llvm.loop !209

.critedge.i145.i:                                 ; preds = %bb.dx, %bb.dw
  %i.alc = fpext float %i.akt to double
  %i.ald = fpext float %.0234.i.i to double
  %i.ale = fadd double %i.ald, -1.000000e-03
  %i.alf = fcmp ogt double %i.ale, %i.alc
  br i1 %i.alf, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %.critedge.i145.i
  %i.alg = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %.val.i98 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.alh = getelementptr i8, ptr %.val.i98, i64 4
  %.val.val.i99 = load i32, ptr %i.alh, align 4, !tbaa !37
  %i.ali = sext i32 %.val.val.i99 to i64
  %i.alj = shl nsw i64 %i.ali, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %6, i8 0, i64 %i.alj, i1 false)
  %.val141.i = load ptr, ptr %i.b, align 8, !tbaa !128 ; 2 uses
  %i.alk = getelementptr i8, ptr %.val141.i, i64 4
  %.val14.val2.i = load i32, ptr %i.alk, align 4, !tbaa !37
  %i.all = icmp sgt i32 %.val14.val2.i, 0
  br i1 %i.all, label %.lr.ph.i101, label %Emap_ManComputeRefs.exit

.lr.ph.i101:                                      ; preds = %bb.dy, %.lr.ph.i101
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i103, %.lr.ph.i101 ], [ 0, %bb.dy ] ; 2 uses
  %.val144.i = phi ptr [ %.val14.i, %.lr.ph.i101 ], [ %.val141.i, %bb.dy ]
  %i.alm = getelementptr i8, ptr %.val144.i, i64 8
  %.val15.val.i = load ptr, ptr %i.alm, align 8, !tbaa !56
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %indvars.iv.i102
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !57 ; 2 uses
  %i.alp = getelementptr i8, ptr %i.alo, i64 32
  %.val12.i = load ptr, ptr %i.alp, align 8, !tbaa !61
  %.val12.val.i = load i32, ptr %.val12.i, align 4, !tbaa !58
  %i.alq = getelementptr i8, ptr %i.alo, i64 20
  %.val13.i = load i32, ptr %i.alq, align 4
  %i.alr = lshr i32 %.val13.i, 10
  %i.als = and i32 %i.alr, 1
  tail call fastcc void @Emap_RefPhase_rec(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %6, i32 noundef %.val12.val.i, i32 noundef %i.als)
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %.val14.i = load ptr, ptr %i.b, align 8, !tbaa !128 ; 2 uses
  %i.alt = getelementptr i8, ptr %.val14.i, i64 4
  %.val14.val.i = load i32, ptr %i.alt, align 4, !tbaa !37
  %i.alu = sext i32 %.val14.val.i to i64
  %i.alv = icmp slt i64 %indvars.iv.next.i103, %i.alu
  br i1 %i.alv, label %.lr.ph.i101, label %Emap_ManComputeRefs.exit, !llvm.loop !140

Emap_ManComputeRefs.exit:                         ; preds = %.lr.ph.i101, %bb.dy
  %i.alw = load i32, ptr %i.ai, align 8, !tbaa !169
  %i.alx = add nsw i32 %i.alw, 1
  store i32 %i.alx, ptr %i.ai, align 8, !tbaa !169
  %i.aly = load i32, ptr %i.alg, align 8, !tbaa !97
  switch i32 %i.aly, label %bb.ec [
    i32 2, label %.sink.split332.i.i
    i32 3, label %bb.dz
  ]

bb.dz:                                            ; preds = %Emap_ManComputeRefs.exit
  br label %.sink.split332.i.i

bb.ea:                                            ; preds = %.critedge.i145.i
  %i.alz = load i32, ptr %i.af, align 4, !tbaa !174
  %i.ama = add nsw i32 %i.alz, 1
  store i32 %i.ama, ptr %i.af, align 4, !tbaa !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.xf, ptr noundef nonnull align 8 dereferenceable(96) %14, i64 96, i1 false), !tbaa.struct !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.xj, ptr noundef nonnull align 8 dereferenceable(96) %15, i64 96, i1 false), !tbaa.struct !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.xp, ptr noundef nonnull align 8 dereferenceable(96) %16, i64 96, i1 false), !tbaa.struct !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.xt, ptr noundef nonnull align 8 dereferenceable(96) %17, i64 96, i1 false), !tbaa.struct !135
  %i.amb = icmp sgt i32 %.val261.fr.i.i, 0
  br i1 %i.amb, label %.lr.ph310.i.i, label %.loopexit.i143.i

.lr.ph310.i.i:                                    ; preds = %bb.ea
  %.val262.i.i = load ptr, ptr %i.ay, align 8, !tbaa !87 ; 5 uses
  %wide.trip.count.i146.i = zext nneg i32 %.val261.fr.i.i to i64 ; 2 uses
  %xtraiter272 = and i64 %wide.trip.count.i146.i, 3 ; 3 uses
  %i.amc = icmp ult i32 %.val261.fr.i.i, 4
  br i1 %i.amc, label %.epil.preheader, label %.lr.ph310.i.i.new

.lr.ph310.i.i.new:                                ; preds = %.lr.ph310.i.i
  %unroll_iter = and i64 %wide.trip.count.i146.i, 2147483644
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.lr.ph310.i.i.new
  %indvars.iv319.i.i = phi i64 [ 0, %.lr.ph310.i.i.new ], [ %indvars.iv.next320.i.i.3, %bb.eb ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph310.i.i.new ], [ %niter.next.3, %bb.eb ]
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %.val262.i.i, i64 %indvars.iv319.i.i
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !58
  %i.amf = sext i32 %i.ame to i64
  %i.amg = getelementptr inbounds [4 x i8], ptr %6, i64 %i.amf ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !58
  %i.ami = add nsw i32 %i.amh, 1
  store i32 %i.ami, ptr %i.amg, align 4, !tbaa !58
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %.val262.i.i, i64 %indvars.iv319.i.i
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 4
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !58
  %i.amm = sext i32 %i.aml to i64
  %i.amn = getelementptr inbounds [4 x i8], ptr %6, i64 %i.amm ; 2 uses
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !58
  %i.amp = add nsw i32 %i.amo, 1
  store i32 %i.amp, ptr %i.amn, align 4, !tbaa !58
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.val262.i.i, i64 %indvars.iv319.i.i
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !58
  %i.amt = sext i32 %i.ams to i64
  %i.amu = getelementptr inbounds [4 x i8], ptr %6, i64 %i.amt ; 2 uses
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !58
  %i.amw = add nsw i32 %i.amv, 1
  store i32 %i.amw, ptr %i.amu, align 4, !tbaa !58
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %.val262.i.i, i64 %indvars.iv319.i.i
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 12
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !58
  %i.ana = sext i32 %i.amz to i64
  %i.anb = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ana ; 2 uses
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !58
  %i.and = add nsw i32 %i.anc, 1
  store i32 %i.and, ptr %i.anb, align 4, !tbaa !58
  %indvars.iv.next320.i.i.3 = add nuw nsw i64 %indvars.iv319.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i143.i.loopexit.unr-lcssa, label %bb.eb, !llvm.loop !210

.sink.split332.i.i:                               ; preds = %bb.dz, %Emap_ManComputeRefs.exit
  %.sink337.i.i = phi i64 [ 104, %bb.dz ], [ 100, %Emap_ManComputeRefs.exit ]
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 %.sink337.i.i ; 2 uses
  %23 = load i32, ptr %22, align 4, !tbaa !58
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !58
  br label %bb.ec

bb.ec:                                            ; preds = %.sink.split332.i.i, %Emap_ManComputeRefs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %Emap_NodeMatchMogExactLocal.exit.i

.loopexit.i143.i.loopexit.unr-lcssa:              ; preds = %bb.eb
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.loopexit.i143.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i143.i.loopexit.unr-lcssa, %.lr.ph310.i.i
  %indvars.iv319.i.i.epil.init = phi i64 [ 0, %.lr.ph310.i.i ], [ %indvars.iv.next320.i.i.3, %.loopexit.i143.i.loopexit.unr-lcssa ]
  %lcmp.mod274 = icmp ne i64 %xtraiter272, 0
  tail call void @llvm.assume(i1 %lcmp.mod274)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %.epil.preheader
  %indvars.iv319.i.i.epil = phi i64 [ %indvars.iv319.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next320.i.i.epil, %bb.ed ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ed ]
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %.val262.i.i, i64 %indvars.iv319.i.i.epil
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !58
  %i.ang = sext i32 %i.anf to i64
  %i.anh = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ang ; 2 uses
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !58
  %i.anj = add nsw i32 %i.ani, 1
  store i32 %i.anj, ptr %i.anh, align 4, !tbaa !58
  %indvars.iv.next320.i.i.epil = add nuw nsw i64 %indvars.iv319.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter272
  br i1 %epil.iter.cmp.not, label %.loopexit.i143.i, label %bb.ed, !llvm.loop !211

.loopexit.i143.i:                                 ; preds = %.loopexit.i143.i.loopexit.unr-lcssa, %bb.ed, %bb.ea, %bb.cy, %bb.cv, %bb.cs, %Emap_ObjSharedPhase.exit279.thread.i.i, %bb.bz, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ank = load ptr, ptr %4, align 8, !tbaa !115  ; 2 uses
  %i.anl = getelementptr inbounds nuw [40 x i8], ptr %i.ank, i64 %i.vt
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 36
  %.0229.i.i = load i32, ptr %i.anm, align 4, !tbaa !58 ; 2 uses
  %i.ann = icmp sgt i32 %.0229.i.i, -1
  br i1 %i.ann, label %bb.bm, label %Emap_NodeMatchMogExactLocal.exit.i, !llvm.loop !212

Emap_NodeMatchMogExactLocal.exit.i:               ; preds = %.loopexit.i143.i, %bb.ec, %bb.bl, %bb.bk
  %.0.i139.i = phi i32 [ 0, %bb.bk ], [ 1, %bb.ec ], [ 0, %bb.bl ], [ 0, %.loopexit.i143.i ]
  %i.ano = add nsw i32 %.0.i139.i, %.2.i
  br label %bb.ee

bb.ee:                                            ; preds = %Emap_NodeMatchMogExactLocal.exit.i, %bb.bj, %bb.bi
  %.3.i = phi i32 [ %i.ano, %Emap_NodeMatchMogExactLocal.exit.i ], [ %.2.i, %bb.bj ], [ %.2.i, %bb.bi ]
  %.val87.i = load i32, ptr %i.dd, align 8, !tbaa !40
  tail call fastcc void @Emap_RequiredPropagateUsedObj(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %.val87.i)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.j, %bb.i, %.lr.ph.i59
  %.4.i = phi i32 [ %.075211.i, %.lr.ph.i59 ], [ %.3.i, %bb.ee ], [ %.075211.i, %bb.j ], [ %.075211.i, %bb.i ] ; 3 uses
  %i.anp = icmp sgt i64 %indvars.iv232.i, 1
  br i1 %i.anp, label %.lr.ph.i59, label %.critedge.i, !llvm.loop !213

.critedge.i:                                      ; preds = %bb.ef
  %i.anq = add nsw i32 %.4.i, %.076214.i          ; 2 uses
  %i.anr = icmp ne i32 %.4.i, 0
  %or.cond.i = and i1 %i.az, %i.anr
  br i1 %or.cond.i, label %bb.c, label %.critedge.thread.i, !llvm.loop !214

.critedge.thread.i:                               ; preds = %.critedge.i, %Emap_ManComputeRequiredTarget.exit.i, %.critedge.preheader.i.i
  %i.ans = phi i32 [ %.076214.i, %.critedge.preheader.i.i ], [ %i.anq, %.critedge.i ], [ %.076214.i, %Emap_ManComputeRequiredTarget.exit.i ] ; 2 uses
  %i.ant = load ptr, ptr %i.ay, align 8, !tbaa !87 ; 2 uses
  %.not.i155.i = icmp eq ptr %i.ant, null
  br i1 %.not.i155.i, label %Emap_ManRecoverExactArea.exit, label %bb.eg

bb.eg:                                            ; preds = %.critedge.thread.i
  tail call void @free(ptr noundef nonnull %i.ant) #19
  br label %Emap_ManRecoverExactArea.exit

Emap_ManRecoverExactArea.exit:                    ; preds = %.critedge.thread.i, %bb.eg
  tail call void @free(ptr noundef nonnull %i.av) #19
  %i.anu = tail call fastcc ptr @Emap_ManBuildMappedNtk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) ; 4 uses
  %i.anv = icmp eq ptr %i.anu, null
  br i1 %i.anv, label %Emap_ManComputeActualMappedStats.exit, label %bb.eh

bb.eh:                                            ; preds = %Emap_ManRecoverExactArea.exit
  %i.anw = tail call float @Abc_NtkDelayTrace(ptr noundef nonnull %i.anu, ptr noundef null, ptr noundef null, i32 noundef 0) #19
  %i.anx = fpext float %i.anw to double
  %i.any = tail call double @Abc_NtkGetMappedArea(ptr noundef nonnull %i.anu) #19
  %i.anz = fptrunc double %i.any to float
  tail call void @Abc_NtkDelete(ptr noundef nonnull %i.anu) #19
  br label %Emap_ManComputeActualMappedStats.exit

Emap_ManComputeActualMappedStats.exit:            ; preds = %Emap_ManRecoverExactArea.exit, %bb.eh
  %.0106 = phi double [ %i.anx, %bb.eh ], [ 1.000000e+20, %Emap_ManRecoverExactArea.exit ] ; 3 uses
  %.0.i = phi float [ %i.anz, %bb.eh ], [ 1.000000e+20, %Emap_ManRecoverExactArea.exit ] ; 3 uses
  %i.aoa = fcmp ugt double %.0106, %i.aj
  br i1 %i.aoa, label %Emap_ManSaveBests.exit, label %bb.ei

bb.ei:                                            ; preds = %Emap_ManComputeActualMappedStats.exit
  %i.aob = fpext float %.0.i to double
  %i.aoc = fpext float %.050131 to double
  %i.aod = fadd double %i.aoc, -1.000000e-03
  %i.aoe = fcmp ogt double %i.aod, %i.aob
  br i1 %i.aoe, label %bb.ej, label %Emap_ManSaveBests.exit

bb.ej:                                            ; preds = %bb.ei
  %.val10.i61 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aof = getelementptr i8, ptr %.val10.i61, i64 4
  %.val.val11.i62 = load i32, ptr %i.aof, align 4, !tbaa !37
  %i.aog = icmp sgt i32 %.val.val11.i62, 0
  br i1 %i.aog, label %.lr.ph.i63, label %Emap_ManSaveBests.exit

.lr.ph.i63:                                       ; preds = %bb.ej, %.lr.ph.i63
  %indvars.iv.i64 = phi i64 [ %indvars.iv.next.i66, %.lr.ph.i63 ], [ 0, %bb.ej ] ; 3 uses
  %.idx.i65 = mul nuw nsw i64 %indvars.iv.i64, 192
  %i.aoh = getelementptr inbounds nuw i8, ptr %8, i64 %.idx.i65 ; 2 uses
  %i.aoi = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %indvars.iv.i64 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 5128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aoh, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.aoj, i64 96, i1 false), !tbaa.struct !135
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 96
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoi, i64 5224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aok, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.aol, i64 96, i1 false), !tbaa.struct !135
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %.val.i67 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aom = getelementptr i8, ptr %.val.i67, i64 4
  %.val.val.i68 = load i32, ptr %i.aom, align 4, !tbaa !37
  %i.aon = sext i32 %.val.val.i68 to i64
  %i.aoo = icmp slt i64 %indvars.iv.next.i66, %i.aon
  br i1 %i.aoo, label %.lr.ph.i63, label %Emap_ManSaveBests.exit, !llvm.loop !138

Emap_ManSaveBests.exit:                           ; preds = %.lr.ph.i63, %bb.ej, %bb.ei, %Emap_ManComputeActualMappedStats.exit
  %.156 = phi i32 [ %.055128, %Emap_ManComputeActualMappedStats.exit ], [ %.055128, %bb.ei ], [ 1, %bb.ej ], [ 1, %.lr.ph.i63 ] ; 2 uses
  %.154 = phi double [ %.053129, %Emap_ManComputeActualMappedStats.exit ], [ %.053129, %bb.ei ], [ %.0106, %bb.ej ], [ %.0106, %.lr.ph.i63 ] ; 3 uses
  %.152 = phi i32 [ %.051130, %Emap_ManComputeActualMappedStats.exit ], [ %.051130, %bb.ei ], [ %i.ans, %bb.ej ], [ %i.ans, %.lr.ph.i63 ] ; 3 uses
  %.1 = phi float [ %.050131, %Emap_ManComputeActualMappedStats.exit ], [ %.050131, %bb.ei ], [ %.0.i, %bb.ej ], [ %.0.i, %.lr.ph.i63 ] ; 3 uses
  %i.aop = add nuw nsw i32 %.057127, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.aop, 4
  br i1 %exitcond.not, label %bb.ek, label %bb.b, !llvm.loop !215

bb.ek:                                            ; preds = %Emap_ManSaveBests.exit
  %.not = icmp eq i32 %.156, 0
  %.val10.i78 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aoq = getelementptr i8, ptr %.val10.i78, i64 4
  %.val.val11.i79 = load i32, ptr %i.aoq, align 4, !tbaa !37
  %i.aor = icmp sgt i32 %.val.val11.i79, 0        ; 2 uses
  br i1 %.not, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  br i1 %i.aor, label %.lr.ph.i71, label %Emap_ManRestoreBests.exit77

.lr.ph.i71:                                       ; preds = %bb.el, %.lr.ph.i71
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i74, %.lr.ph.i71 ], [ 0, %bb.el ] ; 3 uses
  %i.aos = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %indvars.iv.i72 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 5128
  %.idx.i73 = mul nuw nsw i64 %indvars.iv.i72, 192
  %i.aou = getelementptr inbounds nuw i8, ptr %8, i64 %.idx.i73 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aot, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.aou, i64 96, i1 false), !tbaa.struct !135
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 5224
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aou, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aov, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.aow, i64 96, i1 false), !tbaa.struct !135
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %.val.i75 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aox = getelementptr i8, ptr %.val.i75, i64 4
  %.val.val.i76 = load i32, ptr %i.aox, align 4, !tbaa !37
  %i.aoy = sext i32 %.val.val.i76 to i64
  %i.aoz = icmp slt i64 %indvars.iv.next.i74, %i.aoy
  br i1 %i.aoz, label %.lr.ph.i71, label %Emap_ManRestoreBests.exit77, !llvm.loop !139

bb.em:                                            ; preds = %bb.ek
  br i1 %i.aor, label %.lr.ph.i80, label %Emap_ManRestoreBests.exit86

.lr.ph.i80:                                       ; preds = %bb.em, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i83, %.lr.ph.i80 ], [ 0, %bb.em ] ; 3 uses
  %i.apa = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %indvars.iv.i81 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 5128
  %.idx.i82 = mul nuw nsw i64 %indvars.iv.i81, 192
  %i.apc = getelementptr inbounds nuw i8, ptr %7, i64 %.idx.i82 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.apb, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.apc, i64 96, i1 false), !tbaa.struct !135
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apa, i64 5224
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.apd, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ape, i64 96, i1 false), !tbaa.struct !135
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %.val.i84 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apf = getelementptr i8, ptr %.val.i84, i64 4
  %.val.val.i85 = load i32, ptr %i.apf, align 4, !tbaa !37
  %i.apg = sext i32 %.val.val.i85 to i64
  %i.aph = icmp slt i64 %indvars.iv.next.i83, %i.apg
  br i1 %i.aph, label %.lr.ph.i80, label %Emap_ManRestoreBests.exit86, !llvm.loop !139

Emap_ManRestoreBests.exit86:                      ; preds = %.lr.ph.i80, %bb.em
  %i.api = tail call fastcc ptr @Emap_ManBuildMappedNtk(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) ; 4 uses
  %i.apj = icmp eq ptr %i.api, null
  br i1 %i.apj, label %Emap_ManComputeActualMappedStats.exit88, label %bb.en

bb.en:                                            ; preds = %Emap_ManRestoreBests.exit86
  %i.apk = tail call float @Abc_NtkDelayTrace(ptr noundef nonnull %i.api, ptr noundef null, ptr noundef null, i32 noundef 0) #19
  %i.apl = fpext float %i.apk to double
  %i.apm = tail call double @Abc_NtkGetMappedArea(ptr noundef nonnull %i.api) #19
  %i.apn = fptrunc double %i.apm to float
end_hunk_1
