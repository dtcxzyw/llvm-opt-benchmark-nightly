Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %i.bmq = load float, ptr %gep.i53.6, align 4, !tbaa !134
  %gep72.i.6 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.5
  store float %i.bmq, ptr %gep72.i.6, align 4, !tbaa !134
  %indvars.iv.next.i54.6 = add nuw nsw i64 %indvars.iv.i52, 7 ; 2 uses
  %gep.i53.7 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.6
  %i.bmr = load float, ptr %gep.i53.7, align 4, !tbaa !134
  %gep72.i.7 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.6
  store float %i.bmr, ptr %gep72.i.7, align 4, !tbaa !134
  %indvars.iv.next.i54.7 = add nuw nsw i64 %indvars.iv.i52, 8 ; 2 uses
  %exitcond.not.i55.7 = icmp eq i64 %indvars.iv.next.i54.7, %wide.trip.count.i48
  br i1 %exitcond.not.i55.7, label %._crit_edge.i56, label %vec.epilog.scalar.ph, !llvm.loop !315

._crit_edge.i56:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %._crit_edge53.i, label %iter.check, !llvm.loop !316

._crit_edge53.i:                                  ; preds = %._crit_edge.i56
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %_ZL15copy_local_gridP14PmeAndFftGridsi.exit, label %.preheader.i49, !llvm.loop !317

_ZL15copy_local_gridP14PmeAndFftGridsi.exit:      ; preds = %._crit_edge53.i, %.noexc, %.preheader.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bms = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.033 = extractvalue { ptr, i32 } %i.bms, 1
  %.034 = extractvalue { ptr, i32 } %i.bms, 0     ; 2 uses
  %i.bmt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #3
  %i.bmu = icmp eq i32 %.033, %i.bmt
  br i1 %i.bmu, label %bb.t, label %bb.x

bb.s:                                             ; preds = %_ZL15copy_local_gridP14PmeAndFftGridsi.exit, %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bmv = load i32, ptr %i.f, align 4, !tbaa !105
  %i.bmw = sext i32 %i.bmv to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bmw
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.t:                                             ; preds = %bb.r
  %i.bmx = call ptr @__cxa_begin_catch(ptr %.034) #3
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.bmx) #16
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

._crit_edge:                                      ; preds = %bb.s, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.w:                                             ; preds = %bb.t
  %i.bmy = landingpad { ptr, i32 }
          catch ptr null
  %i.bmz = extractvalue { ptr, i32 } %i.bmy, 0
  call void @__clang_call_terminate(ptr %i.bmz) #17
  unreachable

bb.x:                                             ; preds = %bb.r
  call void @__clang_call_terminate(ptr %.034) #17
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.j, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 %i.l, ptr %i.e, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  store i32 1, ptr %i.f, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  store i32 0, ptr %i.g, align 4, !tbaa !105
  %i.m = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.m, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.n = load i32, ptr %i.e, align 4, !tbaa !105
  %i.o = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.l) ; 2 uses
  store i32 %i.o, ptr %i.e, align 4, !tbaa !105
  %i.p = load i32, ptr %i.d, align 4, !tbaa !105  ; 2 uses
  %.not20 = icmp sgt i32 %i.p, %i.o
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = sext i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !11     ; 8 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !15     ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 736
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 880
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !129 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !130
  %i.af = invoke noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.p     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !105 ; 3 uses
  %i.ah = load i32, ptr %i.q, align 4, !tbaa !105 ; 3 uses
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !105 ; 6 uses
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !105
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !105 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193 ; 7 uses
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %indvars.iv ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !196 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !105 ; 4 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !105
  %reass.sub = sub i32 %i.au, %i.ar
  %i.aw = add i32 %reass.sub, 1
  %i.ax = add i32 %i.aw, %i.av
  %.sroa.speculated239.i = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ax) ; 3 uses
  %i.ay = load i32, ptr %i.an, align 4, !tbaa !105 ; 2 uses
  %i.az = load i32, ptr %i.as, align 4, !tbaa !105 ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !105
  %.sroa.speculated384.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated239.i, i32 %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.sroa.0.0.i = phi i32 [ %.sroa.speculated384.i, %bb.d ], [ %.sroa.speculated239.i, %.noexc ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !105 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !105
  %reass.sub22 = sub i32 %i.be, %i.ar
  %i.bh = add i32 %reass.sub22, 1
  %i.bi = add i32 %i.bh, %i.bg
  %.sroa.speculated239.1.i = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bi) ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !105 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !105 ; 3 uses
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = icmp eq i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.at, align 8, !tbaa !105
  %.sroa.speculated381.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated239.1.i, i32 %i.bp)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.6.0.i = phi i32 [ %.sroa.speculated381.i, %bb.f ], [ %.sroa.speculated239.1.i, %bb.e ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !105 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !105
  %reass.sub23 = sub i32 %i.br, %i.ar
  %i.bu = add i32 %reass.sub23, 1
  %i.bv = add i32 %i.bu, %i.bt
  %.sroa.speculated239.2.i = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bv) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !105 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !105 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !105 ; 2 uses
  %i.cc = sub nsw i32 0, %i.cb
  %.not304.i = icmp slt i32 %i.cb, 0
  br i1 %.not304.i, label %.loopexit, label %.lr.ph311.i

.lr.ph311.i:                                      ; preds = %bb.g
  %i.cd = sub nsw i32 0, %i.ag
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 188
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !105 ; 2 uses
  %i.ch = sub nsw i32 0, %i.cg
  %.not223290.i = icmp slt i32 %i.cg, 0
  %i.ci = sub nsw i32 0, %i.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 824
  %i.cl = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 800
  %i.cn = mul i32 %i.ai, %i.ag
  br i1 %.not223290.i, label %.loopexit, label %.lr.ph311.split.i

.lr.ph311.split.i:                                ; preds = %.lr.ph311.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !105 ; 2 uses
  %i.cq = sub nsw i32 0, %i.cp                    ; 2 uses
  %.not224274.i = icmp slt i32 %i.cp, 0
  br i1 %.not224274.i, label %.loopexit, label %.lr.ph311.split.split.i

.lr.ph311.split.split.i:                          ; preds = %.lr.ph311.split.i
  %i.cr = sext i32 %i.br to i64                   ; 23 uses
  %i.cs = sext i32 %i.be to i64                   ; 8 uses
  %i.ct = sext i32 %i.ak to i64                   ; 5 uses
  %i.cu = sext i32 %i.au to i64                   ; 6 uses
  %i.cv = sext i32 %i.aj to i64                   ; 3 uses
  %i.cw = sext i32 %i.ai to i64                   ; 9 uses
  %i.cx = shl nsw i64 %i.cr, 2                    ; 4 uses
  %i.cy = shl nsw i64 %i.cw, 2
  %i.cz = shl nsw i64 %i.cw, 2
  %i.da = shl nsw i64 %i.cw, 2
  %i.db = shl nsw i64 %i.cw, 2
  %i.dc = shl nsw i64 %i.cw, 2
  %i.dd = shl nsw i64 %i.cw, 2
  %i.de = xor i64 %i.cs, -1
  %i.df = mul nsw i64 %i.cu, %i.cv
  %i.dg = add i64 %i.df, %i.cs                    ; 2 uses
  %i.dh = shl i64 %i.dg, 2
  %i.di = mul i64 %i.dh, %i.ct
  %i.dj = shl nsw i64 %i.cr, 2                    ; 2 uses
  %i.dk = shl nsw i64 %i.cv, 2
  %i.dl = mul i64 %i.dk, %i.ct
  %i.dm = shl nsw i64 %i.ct, 2
  %i.dn = xor i64 %i.cs, -1
  %i.do = mul i64 %i.dg, %i.ct
  %i.dp = getelementptr i8, ptr %i.ac, i64 %i.di
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.dj
  %stride.check116 = icmp slt i32 %i.ak, 0
  %stride.check = icmp slt i32 %i.ai, 0
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge297.split.i, %.lr.ph311.split.split.i
  %.0189309.i = phi i1 [ true, %.lr.ph311.split.split.i ], [ %.us-phi289.i, %._crit_edge297.split.i ]
  %.0190308.i = phi i1 [ true, %.lr.ph311.split.split.i ], [ %.us-phi288.i, %._crit_edge297.split.i ]
  %.0195307.i = phi i1 [ true, %.lr.ph311.split.split.i ], [ %.us-phi.i, %._crit_edge297.split.i ]
  %.0208305.i = phi i32 [ 0, %.lr.ph311.split.split.i ], [ %i.rj, %._crit_edge297.split.i ] ; 4 uses
  %i.dr = add nsw i32 %.0208305.i, %i.ay          ; 3 uses
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %bb.i, label %.lr.ph296.i

bb.i:                                             ; preds = %bb.h
  %i.dt = add nsw i32 %i.dr, %i.az
  %i.du = load i32, ptr %i.ce, align 4, !tbaa !132
  %.fr.i = freeze i32 %i.du
  %i.dv = icmp sgt i32 %.fr.i, 1
  br label %.lr.ph296.i

.lr.ph296.i:                                      ; preds = %bb.i, %bb.h
  %.0205.i = phi i32 [ %i.dt, %bb.i ], [ %i.dr, %bb.h ]
  %.0202.i = phi i32 [ %i.cd, %bb.i ], [ 0, %bb.h ]
  %.0187.i = phi i1 [ %i.dv, %bb.i ], [ false, %bb.h ] ; 3 uses
  %i.dw = mul nsw i32 %.0205.i, %i.bm             ; 2 uses
  %i.dx = mul nsw i32 %i.dw, %i.bz
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !105
  %i.ec = add i32 %i.eb, %.0202.i                 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !105
  %i.ef = add i32 %i.ec, %i.ee
  %spec.select = select i1 %.0187.i, i32 %.sroa.0.0.i, i32 %.sroa.speculated239.i
  %.sroa.speculated235.i = call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.ef) ; 2 uses
  %i.eg = icmp sge i32 %i.au, %.sroa.speculated235.i ; 2 uses
  %wide.trip.count339.i = sext i32 %.sroa.speculated235.i to i64 ; 3 uses
  %i.eh = sub i32 %i.au, %i.ec                    ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge281.i, %.lr.ph296.i
  %.1294.i = phi i1 [ %.0189309.i, %.lr.ph296.i ], [ %.us-phi289.i, %._crit_edge281.i ] ; 2 uses
  %.1191293.i = phi i1 [ %.0190308.i, %.lr.ph296.i ], [ %.us-phi288.i, %._crit_edge281.i ] ; 2 uses
  %.1196292.i = phi i1 [ %.0195307.i, %.lr.ph296.i ], [ %.us-phi.i, %._crit_edge281.i ] ; 2 uses
  %.0207291.i = phi i32 [ 0, %.lr.ph296.i ], [ %i.ri, %._crit_edge281.i ] ; 4 uses
  %i.ei = add nsw i32 %.0207291.i, %i.bk          ; 3 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.k, label %.lr.ph280.i

bb.k:                                             ; preds = %bb.j
  %i.ek = add nsw i32 %i.ei, %i.bm
  %i.el = load i32, ptr %i.cj, align 8, !tbaa !131
  %.fr246.i = freeze i32 %i.el
  %i.em = icmp sgt i32 %.fr246.i, 1
  br label %.lr.ph280.i

.lr.ph280.i:                                      ; preds = %bb.k, %bb.j
  %.0204.i = phi i32 [ %i.ek, %bb.k ], [ %i.ei, %bb.j ] ; 2 uses
  %.0201.i = phi i32 [ %i.ci, %bb.k ], [ 0, %bb.j ]
  %.0186.i = phi i1 [ %i.em, %bb.k ], [ false, %bb.j ] ; 3 uses
  %i.en = mul nsw i32 %.0204.i, %i.bz
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !105
  %i.es = add i32 %i.er, %.0201.i                 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !105
  %i.ev = add i32 %i.es, %i.eu
  %spec.select38 = select i1 %.0186.i, i32 %.sroa.6.0.i, i32 %.sroa.speculated239.1.i
  %.sroa.speculated231.i = call i32 @llvm.smin.i32(i32 %spec.select38, i32 %i.ev) ; 2 uses
  %i.ew = or i32 %.0207291.i, %.0208305.i         ; 2 uses
  %i.ex = add nsw i32 %.0204.i, %i.dw
  %i.ey = mul nsw i32 %i.ex, %i.bz                ; 2 uses
  %or.cond5.i = or i1 %.0187.i, %.0186.i
  %i.ez = icmp sge i32 %i.be, %.sroa.speculated231.i ; 2 uses
  %wide.trip.count349.i = sext i32 %.sroa.speculated231.i to i64 ; 5 uses
  %i.fa = sub i32 %i.be, %i.es                    ; 2 uses
  br i1 %or.cond5.i, label %.lr.ph280.split.us.i.preheader, label %.lr.ph280.split.i.preheader

.lr.ph280.split.us.i.preheader:                   ; preds = %.lr.ph280.i
  %i.fb = sub i32 %i.be, %i.es
  %i.fc = add nsw i64 %i.de, %wide.trip.count349.i
  %i.fd = mul i64 %i.dd, %i.fc
  br label %.lr.ph280.split.us.i

.lr.ph280.split.i.preheader:                      ; preds = %.lr.ph280.i
  %i.fe = select i1 %i.eg, i1 true, i1 %i.ez
  %i.ff = add nsw i64 %i.dn, %wide.trip.count349.i
  %i.fg = mul i64 %i.dm, %i.ff
  %i.fh = getelementptr i8, ptr %i.ac, i64 %i.fg
  br label %.lr.ph280.split.i

.lr.ph280.split.us.i:                             ; preds = %.lr.ph280.split.us.i.preheader, %.loopexit254.us.i
  %.2278.us.i = phi i1 [ %.4.us.i, %.loopexit254.us.i ], [ %.1294.i, %.lr.ph280.split.us.i.preheader ] ; 4 uses
  %.2192277.us.i = phi i1 [ %.4194.us.i, %.loopexit254.us.i ], [ %.1191293.i, %.lr.ph280.split.us.i.preheader ] ; 4 uses
  %.2197276.us.i = phi i1 [ %.4199.us.i, %.loopexit254.us.i ], [ %.1196292.i, %.lr.ph280.split.us.i.preheader ] ; 4 uses
  %.0206275.us.i = phi i32 [ %i.nb, %.loopexit254.us.i ], [ 0, %.lr.ph280.split.us.i.preheader ] ; 4 uses
  %i.fi = add nsw i32 %.0206275.us.i, %i.bx       ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 0                   ; 2 uses
  %i.fk = select i1 %i.fj, i32 %i.bz, i32 0
  %.0203.us.i = add nsw i32 %i.fk, %i.fi          ; 2 uses
  %i.fl = sext i32 %.0203.us.i to i64
  %i.fm = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !105
  %i.fp = select i1 %i.fj, i32 %i.ai, i32 0
  %i.fq = sub i32 %i.fo, %i.fp                    ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !105
  %i.ft = add i32 %i.fq, %i.fs
  %.sroa.speculated.us.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated239.2.i, i32 %i.ft) ; 3 uses
  %i.fu = or i32 %.0206275.us.i, %i.ew
  %or.cond3.us.i = icmp eq i32 %i.fu, 0
  br i1 %or.cond3.us.i, label %.loopexit254.us.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph280.split.us.i
  %i.fv = add nsw i32 %.0203.us.i, %i.ey
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.fw ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !194
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !195 ; 5 uses
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !105 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !105 ; 8 uses
  br i1 %.0186.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.gg = load i32, ptr %i.cl, align 4, !tbaa !364
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = load ptr, ptr %i.ck, align 8, !tbaa !181
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !105
  %i.gl = load ptr, ptr %i.cm, align 8, !tbaa !181
  %i.gm = getelementptr [4 x i8], ptr %i.gl, i64 %i.gh
  %i.gn = getelementptr i8, ptr %i.gm, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !105
  %i.gp = sub nsw i32 %i.gk, %i.go                ; 3 uses
  br i1 %.0187.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gq = mul i32 %i.cn, %i.gp
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.gr
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0216.us.i = phi i32 [ %i.gp, %bb.n ], [ %i.gp, %bb.m ], [ %i.ah, %bb.l ] ; 2 uses
  %.3198.us.i = phi i1 [ %.2197276.us.i, %bb.n ], [ %.2197276.us.i, %bb.m ], [ false, %bb.l ] ; 6 uses
  %.3193.us.i = phi i1 [ %.2192277.us.i, %bb.n ], [ false, %bb.m ], [ %.2192277.us.i, %bb.l ] ; 6 uses
  %.3.us.i = phi i1 [ false, %bb.n ], [ %.2278.us.i, %bb.m ], [ %.2278.us.i, %bb.l ] ; 6 uses
  %.0188.us.i = phi i1 [ %.2278.us.i, %bb.n ], [ %.2192277.us.i, %bb.m ], [ %.2197276.us.i, %bb.l ]
  %.0.us.i = phi ptr [ %i.gs, %bb.n ], [ %i.aa, %bb.m ], [ %i.y, %bb.l ] ; 5 uses
  %.0.us.i41 = ptrtoaddr ptr %.0.us.i to i64
  br i1 %i.eg, label %.loopexit254.us.i, label %.preheader252.lr.ph.us.i

.preheader252.lr.ph.us.i:                         ; preds = %bb.o
  %i.gt = icmp slt i32 %i.br, %.sroa.speculated.us.i ; 2 uses
  br i1 %i.ez, label %.loopexit254.us.i, label %.preheader252.lr.ph.split.us.i

.preheader252.lr.ph.split.us.i:                   ; preds = %.preheader252.lr.ph.us.i
  br i1 %.0188.us.i, label %.preheader252.lr.ph.split.split.us.us.i, label %.preheader252.lr.ph.split.split.us284.i

.preheader252.lr.ph.split.split.us284.i:          ; preds = %.preheader252.lr.ph.split.us.i
  br i1 %i.gt, label %.preheader252.us285.preheader.i, label %.loopexit254.us.i

.preheader252.us285.preheader.i:                  ; preds = %.preheader252.lr.ph.split.split.us284.i
  %i.gu = sext i32 %.0216.us.i to i64             ; 3 uses
  %wide.trip.count344.i = sext i32 %.sroa.speculated.us.i to i64 ; 6 uses
  %i.gv = mul nsw i64 %i.cu, %i.gu
  %i.gw = add i64 %i.gv, %i.cs                    ; 2 uses
  %i.gx = mul i64 %i.db, %i.gw
  %i.gy = mul i64 %i.dc, %i.gu
  %i.gz = mul i64 %i.gw, %i.cw
  %i.ha = add i64 %i.gz, %wide.trip.count344.i
  %i.hb = shl i64 %i.ha, 2
  %scevgep61 = getelementptr i8, ptr %i.ga, i64 %i.cx
  %i.hc = sext i32 %i.fq to i64
  %i.hd = mul nsw i64 %i.hc, -4                   ; 2 uses
  %scevgep62.a = getelementptr i8, ptr %scevgep61, i64 %i.hd
  %i.he = mul i32 %i.eh, %i.gd
  %i.hf = add i32 %i.fa, %i.he
  %i.hg = mul i32 %i.gf, %i.hf
  %i.hh = mul i32 %i.gd, %i.gf
  %scevgep66 = getelementptr i8, ptr %i.ga, i64 %i.hd
  %i.hi = sub nsw i64 %wide.trip.count344.i, %i.cr ; 7 uses
  %i.hj = getelementptr i8, ptr %.0.us.i, i64 %i.cx
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.gx
  %i.hl = getelementptr i8, ptr %.0.us.i, i64 %i.fd
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hb
  %min.iters.check70 = icmp ult i64 %i.hi, 8
  %min.iters.check72 = icmp ult i64 %i.hi, 32
  %i.hn = and i64 %i.hi, 24
  %n.vec74 = and i64 %i.hi, -32                   ; 4 uses
  %i.ho = add nsw i64 %n.vec74, %i.cr
  %cmp.n87 = icmp eq i64 %i.hi, %n.vec74
  %min.epilog.iters.check92 = icmp eq i64 %i.hn, 0
  %n.vec94 = and i64 %i.hi, -8                    ; 3 uses
  %i.hp = add nsw i64 %n.vec94, %i.cr
  %cmp.n101 = icmp eq i64 %i.hi, %n.vec94
  br label %.preheader252.us285.i

.preheader252.us285.i:                            ; preds = %._crit_edge270.split.us.i, %.preheader252.us285.preheader.i
  %indvar56 = phi i64 [ %indvar.next57, %._crit_edge270.split.us.i ], [ 0, %.preheader252.us285.preheader.i ] ; 3 uses
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i, %._crit_edge270.split.us.i ], [ %i.cu, %.preheader252.us285.preheader.i ] ; 3 uses
  %i.hq = mul i64 %i.gy, %indvar56                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hk, i64 %i.hq
  %scevgep60 = getelementptr i8, ptr %i.hm, i64 %i.hq
  %i.hr = trunc i64 %indvar56 to i32
  %i.hs = mul i32 %i.hh, %i.hr
  %i.ht = add i32 %i.hs, %i.hg
  %i.hu = mul nsw i64 %indvars.iv351.i, %i.gu
  %i.hv = trunc i64 %indvars.iv351.i to i32
  %i.hw = sub i32 %i.hv, %i.ec
  %i.hx = mul i32 %i.hw, %i.gd
  %i.hy = sub i32 %i.hx, %i.es
  br label %iter.check89

iter.check89:                                     ; preds = %..loopexit251_crit_edge.us.i, %.preheader252.us285.i
  %indvar63 = phi i32 [ %indvar.next64, %..loopexit251_crit_edge.us.i ], [ 0, %.preheader252.us285.i ] ; 2 uses
  %indvars.iv346.i = phi i64 [ %indvars.iv.next347.i, %..loopexit251_crit_edge.us.i ], [ %i.cs, %.preheader252.us285.i ] ; 3 uses
  %i.hz = add nsw i64 %indvars.iv346.i, %i.hu
  %i.ia = mul nsw i64 %i.hz, %i.cw
  %i.ib = trunc nsw i64 %indvars.iv346.i to i32
  %i.ic = add i32 %i.hy, %i.ib
  %i.id = mul nsw i32 %i.ic, %i.gf
  %i.ie = sub nsw i32 %i.id, %i.fq
  %i.if = sext i32 %i.ie to i64
  %invariant.gep395.i = getelementptr [4 x i8], ptr %i.ga, i64 %i.if ; 11 uses
  %invariant.gep397.i = getelementptr [4 x i8], ptr %.0.us.i, i64 %i.ia ; 11 uses
  br i1 %min.iters.check70, label %vec.epilog.scalar.ph90.preheader, label %vector.memcheck55

vector.memcheck55:                                ; preds = %iter.check89
  %i.ig = mul i32 %i.gf, %indvar63
  %i.ih = add i32 %i.ht, %i.ig
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = add nsw i64 %wide.trip.count344.i, %i.ii
  %i.ik = shl nsw i64 %i.ij, 2
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.ik
  %i.il = shl nsw i64 %i.ii, 2
  %scevgep65 = getelementptr i8, ptr %scevgep62.a, i64 %i.il
  %bound0 = icmp ult ptr %scevgep, %scevgep67
  %bound1 = icmp ult ptr %scevgep65, %scevgep60
  %found.conflict = and i1 %bound0, %bound1
  %i.im = or i1 %found.conflict, %stride.check
  br i1 %i.im, label %vec.epilog.scalar.ph90.preheader, label %vector.main.loop.iter.check71

vector.main.loop.iter.check71:                    ; preds = %vector.memcheck55
  br i1 %min.iters.check72, label %vec.epilog.ph93, label %vector.body75

vector.body75:                                    ; preds = %vector.main.loop.iter.check71, %vector.body75
  %index76 = phi i64 [ %index.next85, %vector.body75 ], [ 0, %vector.main.loop.iter.check71 ] ; 2 uses
  %i.in = add i64 %index76, %i.cr                 ; 2 uses
  %i.io = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %i.in ; 4 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 32
  %i.iq = getelementptr i8, ptr %i.io, i64 64
  %i.ir = getelementptr i8, ptr %i.io, i64 96
  %wide.load77.a = load <8 x float>, ptr %i.io, align 4, !tbaa !134, !alias.scope !365
  %wide.load78.a = load <8 x float>, ptr %i.ip, align 4, !tbaa !134, !alias.scope !365
  %wide.load79.a = load <8 x float>, ptr %i.iq, align 4, !tbaa !134, !alias.scope !365
  %wide.load80 = load <8 x float>, ptr %i.ir, align 4, !tbaa !134, !alias.scope !365
  %i.is = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %i.in ; 5 uses
  %i.it = getelementptr i8, ptr %i.is, i64 32     ; 2 uses
  %i.iu = getelementptr i8, ptr %i.is, i64 64     ; 2 uses
  %i.iv = getelementptr i8, ptr %i.is, i64 96     ; 2 uses
  %wide.load81 = load <8 x float>, ptr %i.is, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %wide.load82 = load <8 x float>, ptr %i.it, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %wide.load83 = load <8 x float>, ptr %i.iu, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %wide.load84 = load <8 x float>, ptr %i.iv, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %i.iw = fadd <8 x float> %wide.load77.a, %wide.load81
  %i.ix = fadd <8 x float> %wide.load78.a, %wide.load82
  %i.iy = fadd <8 x float> %wide.load79.a, %wide.load83
  %i.iz = fadd <8 x float> %wide.load80, %wide.load84
  store <8 x float> %i.iw, ptr %i.is, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  store <8 x float> %i.ix, ptr %i.it, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  store <8 x float> %i.iy, ptr %i.iu, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  store <8 x float> %i.iz, ptr %i.iv, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %index.next85 = add nuw i64 %index76, 32        ; 2 uses
  %i.ja = icmp eq i64 %index.next85, %n.vec74
  br i1 %i.ja, label %middle.block86, label %vector.body75, !llvm.loop !342

middle.block86:                                   ; preds = %vector.body75
  br i1 %cmp.n87, label %..loopexit251_crit_edge.us.i, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block86
  br i1 %min.epilog.iters.check92, label %vec.epilog.scalar.ph90.preheader, label %vec.epilog.ph93, !prof !192

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check71, %vec.epilog.iter.check91
  %vec.epilog.resume.val88 = phi i64 [ %n.vec74, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check71 ]
  br label %vec.epilog.vector.body95

vec.epilog.vector.body95:                         ; preds = %vec.epilog.vector.body95, %vec.epilog.ph93
  %index96 = phi i64 [ %vec.epilog.resume.val88, %vec.epilog.ph93 ], [ %index.next99, %vec.epilog.vector.body95 ] ; 2 uses
  %i.jb = add i64 %index96, %i.cr                 ; 2 uses
  %i.jc = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %i.jb
  %wide.load97 = load <8 x float>, ptr %i.jc, align 4, !tbaa !134, !alias.scope !365
  %i.jd = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %i.jb ; 2 uses
  %wide.load98 = load <8 x float>, ptr %i.jd, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %i.je = fadd <8 x float> %wide.load97, %wide.load98
  store <8 x float> %i.je, ptr %i.jd, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.jf = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.jf, label %vec.epilog.middle.block100, label %vec.epilog.vector.body95, !llvm.loop !343

vec.epilog.middle.block100:                       ; preds = %vec.epilog.vector.body95
  br i1 %cmp.n101, label %..loopexit251_crit_edge.us.i, label %vec.epilog.scalar.ph90.preheader

vec.epilog.scalar.ph90.preheader:                 ; preds = %iter.check89, %vector.memcheck55, %vec.epilog.iter.check91, %vec.epilog.middle.block100
  %indvars.iv341.i.ph = phi i64 [ %i.cr, %iter.check89 ], [ %i.cr, %vector.memcheck55 ], [ %i.ho, %vec.epilog.iter.check91 ], [ %i.hp, %vec.epilog.middle.block100 ] ; 4 uses
  %i.jg = sub nsw i64 %wide.trip.count344.i, %indvars.iv341.i.ph
  %xtraiter154 = and i64 %i.jg, 7                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %vec.epilog.scalar.ph90.prol.loopexit, label %vec.epilog.scalar.ph90.prol

vec.epilog.scalar.ph90.prol:                      ; preds = %vec.epilog.scalar.ph90.preheader, %vec.epilog.scalar.ph90.prol
  %indvars.iv341.i.prol = phi i64 [ %indvars.iv.next342.i.prol, %vec.epilog.scalar.ph90.prol ], [ %indvars.iv341.i.ph, %vec.epilog.scalar.ph90.preheader ] ; 3 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %vec.epilog.scalar.ph90.prol ], [ 0, %vec.epilog.scalar.ph90.preheader ]
  %gep396.i.prol = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv341.i.prol
  %i.jh = load float, ptr %gep396.i.prol, align 4, !tbaa !134
  %gep398.i.prol = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv341.i.prol ; 2 uses
  %i.ji = load float, ptr %gep398.i.prol, align 4, !tbaa !134
  %i.jj = fadd float %i.jh, %i.ji
  store float %i.jj, ptr %gep398.i.prol, align 4, !tbaa !134
  %indvars.iv.next342.i.prol = add nsw i64 %indvars.iv341.i.prol, 1 ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %vec.epilog.scalar.ph90.prol.loopexit, label %vec.epilog.scalar.ph90.prol, !llvm.loop !344

vec.epilog.scalar.ph90.prol.loopexit:             ; preds = %vec.epilog.scalar.ph90.prol, %vec.epilog.scalar.ph90.preheader
  %indvars.iv341.i.unr = phi i64 [ %indvars.iv341.i.ph, %vec.epilog.scalar.ph90.preheader ], [ %indvars.iv.next342.i.prol, %vec.epilog.scalar.ph90.prol ]
  %i.jk = sub nsw i64 %indvars.iv341.i.ph, %wide.trip.count344.i
  %i.jl = icmp ugt i64 %i.jk, -8
  br i1 %i.jl, label %..loopexit251_crit_edge.us.i, label %vec.epilog.scalar.ph90

vec.epilog.scalar.ph90:                           ; preds = %vec.epilog.scalar.ph90.prol.loopexit, %vec.epilog.scalar.ph90
  %indvars.iv341.i = phi i64 [ %indvars.iv.next342.i.7, %vec.epilog.scalar.ph90 ], [ %indvars.iv341.i.unr, %vec.epilog.scalar.ph90.prol.loopexit ] ; 10 uses
  %gep396.i = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv341.i
  %i.jm = load float, ptr %gep396.i, align 4, !tbaa !134
  %gep398.i = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv341.i ; 2 uses
  %i.jn = load float, ptr %gep398.i, align 4, !tbaa !134
  %i.jo = fadd float %i.jm, %i.jn
  store float %i.jo, ptr %gep398.i, align 4, !tbaa !134
  %indvars.iv.next342.i = add nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %gep396.i.1 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i
  %i.jp = load float, ptr %gep396.i.1, align 4, !tbaa !134
  %gep398.i.1 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i ; 2 uses
  %i.jq = load float, ptr %gep398.i.1, align 4, !tbaa !134
  %i.jr = fadd float %i.jp, %i.jq
  store float %i.jr, ptr %gep398.i.1, align 4, !tbaa !134
  %indvars.iv.next342.i.1 = add nsw i64 %indvars.iv341.i, 2 ; 2 uses
  %gep396.i.2 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.1
  %i.js = load float, ptr %gep396.i.2, align 4, !tbaa !134
  %gep398.i.2 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.1 ; 2 uses
  %i.jt = load float, ptr %gep398.i.2, align 4, !tbaa !134
  %i.ju = fadd float %i.js, %i.jt
  store float %i.ju, ptr %gep398.i.2, align 4, !tbaa !134
  %indvars.iv.next342.i.2 = add nsw i64 %indvars.iv341.i, 3 ; 2 uses
  %gep396.i.3 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.2
  %i.jv = load float, ptr %gep396.i.3, align 4, !tbaa !134
  %gep398.i.3 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.2 ; 2 uses
  %i.jw = load float, ptr %gep398.i.3, align 4, !tbaa !134
  %i.jx = fadd float %i.jv, %i.jw
  store float %i.jx, ptr %gep398.i.3, align 4, !tbaa !134
  %indvars.iv.next342.i.3 = add nsw i64 %indvars.iv341.i, 4 ; 2 uses
  %gep396.i.4 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.3
  %i.jy = load float, ptr %gep396.i.4, align 4, !tbaa !134
  %gep398.i.4 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.3 ; 2 uses
  %i.jz = load float, ptr %gep398.i.4, align 4, !tbaa !134
  %i.ka = fadd float %i.jy, %i.jz
  store float %i.ka, ptr %gep398.i.4, align 4, !tbaa !134
  %indvars.iv.next342.i.4 = add nsw i64 %indvars.iv341.i, 5 ; 2 uses
  %gep396.i.5 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.4
  %i.kb = load float, ptr %gep396.i.5, align 4, !tbaa !134
  %gep398.i.5 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.4 ; 2 uses
  %i.kc = load float, ptr %gep398.i.5, align 4, !tbaa !134
  %i.kd = fadd float %i.kb, %i.kc
  store float %i.kd, ptr %gep398.i.5, align 4, !tbaa !134
  %indvars.iv.next342.i.5 = add nsw i64 %indvars.iv341.i, 6 ; 2 uses
  %gep396.i.6 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.5
  %i.ke = load float, ptr %gep396.i.6, align 4, !tbaa !134
  %gep398.i.6 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.5 ; 2 uses
  %i.kf = load float, ptr %gep398.i.6, align 4, !tbaa !134
  %i.kg = fadd float %i.ke, %i.kf
  store float %i.kg, ptr %gep398.i.6, align 4, !tbaa !134
  %indvars.iv.next342.i.6 = add nsw i64 %indvars.iv341.i, 7 ; 2 uses
  %gep396.i.7 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.6
  %i.kh = load float, ptr %gep396.i.7, align 4, !tbaa !134
  %gep398.i.7 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.6 ; 2 uses
  %i.ki = load float, ptr %gep398.i.7, align 4, !tbaa !134
  %i.kj = fadd float %i.kh, %i.ki
  store float %i.kj, ptr %gep398.i.7, align 4, !tbaa !134
  %indvars.iv.next342.i.7 = add nsw i64 %indvars.iv341.i, 8 ; 2 uses
  %exitcond345.not.i.7 = icmp eq i64 %indvars.iv.next342.i.7, %wide.trip.count344.i
  br i1 %exitcond345.not.i.7, label %..loopexit251_crit_edge.us.i, label %vec.epilog.scalar.ph90, !llvm.loop !345

..loopexit251_crit_edge.us.i:                     ; preds = %vec.epilog.scalar.ph90.prol.loopexit, %vec.epilog.scalar.ph90, %vec.epilog.middle.block100, %middle.block86
  %indvars.iv.next347.i = add nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  %indvar.next64 = add i32 %indvar63, 1
  br i1 %exitcond350.not.i, label %._crit_edge270.split.us.i, label %iter.check89, !llvm.loop !346

._crit_edge270.split.us.i:                        ; preds = %..loopexit251_crit_edge.us.i
  %indvars.iv.next352.i = add nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %exitcond355.not.i = icmp eq i64 %indvars.iv.next352.i, %wide.trip.count339.i
  %indvar.next57 = add i64 %indvar56, 1
  br i1 %exitcond355.not.i, label %.loopexit254.us.i, label %.preheader252.us285.i, !llvm.loop !347

.preheader252.lr.ph.split.split.us.us.i:          ; preds = %.preheader252.lr.ph.split.us.i
  br i1 %i.gt, label %.preheader252.us.us.preheader.i, label %.loopexit254.us.i

.preheader252.us.us.preheader.i:                  ; preds = %.preheader252.lr.ph.split.split.us.us.i
  %i.kk = sext i32 %.0216.us.i to i64             ; 3 uses
  %wide.trip.count362.i = sext i32 %.sroa.speculated.us.i to i64 ; 4 uses
  %i.kl = add i64 %i.cx, %.0.us.i41
  %i.km = mul nsw i64 %i.cu, %i.kk
  %i.kn = add i64 %i.km, %i.cs
  %i.ko = mul i64 %i.cy, %i.kn
  %i.kp = add i64 %i.kl, %i.ko
  %i.kq = mul i64 %i.cz, %i.kk
  %i.kr = add i64 %i.cx, %i.gb
  %i.ks = sext i32 %i.fq to i64
  %i.kt = shl nsw i64 %i.ks, 2
  %i.ku = mul i32 %i.eh, %i.gd
  %i.kv = add i32 %i.fb, %i.ku
  %i.kw = mul i32 %i.gf, %i.kv
  %i.kx = zext i32 %i.kw to i64
  %i.ky = mul i32 %i.gd, %i.gf
  %i.kz = zext i32 %i.ky to i64
  %i.la = zext i32 %i.gf to i64
  %i.lb = sub nsw i64 %wide.trip.count362.i, %i.cr ; 7 uses
  %min.iters.check = icmp ult i64 %i.lb, 8
  %invariant.op160 = add i64 %i.kp, %i.kt
  %min.iters.check45 = icmp ult i64 %i.lb, 32
  %i.lc = and i64 %i.lb, 24
  %n.vec = and i64 %i.lb, -32                     ; 4 uses
  %i.ld = add nsw i64 %n.vec, %i.cr
  %cmp.n = icmp eq i64 %i.lb, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.lc, 0
  %n.vec49 = and i64 %i.lb, -8                    ; 3 uses
  %i.le = add nsw i64 %n.vec49, %i.cr
  %cmp.n53 = icmp eq i64 %i.lb, %n.vec49
  br label %.preheader252.us.us.i

.preheader252.us.us.i:                            ; preds = %._crit_edge270.split.us.us.us.i, %.preheader252.us.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge270.split.us.us.us.i ], [ 0, %.preheader252.us.us.preheader.i ] ; 3 uses
  %indvars.iv369.i = phi i64 [ %indvars.iv.next370.i, %._crit_edge270.split.us.us.us.i ], [ %i.cu, %.preheader252.us.us.preheader.i ] ; 3 uses
  %i.lf = mul i64 %i.kq, %indvar
  %i.lg = mul i64 %indvar, %i.kz
  %i.lh = add i64 %i.lg, %i.kx
  %i.li = mul nsw i64 %indvars.iv369.i, %i.kk
  %i.lj = trunc i64 %indvars.iv369.i to i32
  %i.lk = sub i32 %i.lj, %i.ec
  %i.ll = mul i32 %i.lk, %i.gd
  %i.lm = sub i32 %i.ll, %i.es
  %invariant.op.reass = add i64 %i.lf, %invariant.op160
  br label %iter.check

iter.check:                                       ; preds = %..loopexit_crit_edge.us.us.us.i, %.preheader252.us.us.i
  %indvar42 = phi i64 [ %indvar.next43, %..loopexit_crit_edge.us.us.us.i ], [ 0, %.preheader252.us.us.i ] ; 3 uses
  %indvars.iv364.i = phi i64 [ %indvars.iv.next365.i, %..loopexit_crit_edge.us.us.us.i ], [ %i.cs, %.preheader252.us.us.i ] ; 3 uses
  %i.ln = add nsw i64 %indvars.iv364.i, %i.li
  %i.lo = mul nsw i64 %i.ln, %i.cw
  %i.lp = trunc nsw i64 %indvars.iv364.i to i32
  %i.lq = add i32 %i.lm, %i.lp
  %i.lr = mul nsw i32 %i.lq, %i.gf
  %i.ls = sub nsw i32 %i.lr, %i.fq
  %i.lt = sext i32 %i.ls to i64
  %invariant.gep399.i = getelementptr [4 x i8], ptr %i.ga, i64 %i.lt ; 11 uses
  %invariant.gep401.i = getelementptr [4 x i8], ptr %.0.us.i, i64 %i.lo ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.lu = mul i64 %i.da, %indvar42
  %i.lv = mul i64 %indvar42, %i.la
  %i.lw = add i64 %i.lh, %i.lv
  %i.lx = shl i64 %i.lw, 32
  %i.ly = ashr exact i64 %i.lx, 30
  %i.lz = add i64 %i.kr, %i.ly
  %.reass = add i64 %i.lu, %invariant.op.reass
  %i.ma = sub i64 %i.lz, %.reass
  %diff.check = icmp ugt i64 %i.ma, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.mb = add i64 %index, %i.cr                   ; 2 uses
  %i.mc = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %i.mb ; 4 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 32
  %i.me = getelementptr i8, ptr %i.mc, i64 64
  %i.mf = getelementptr i8, ptr %i.mc, i64 96
  %wide.load = load <8 x float>, ptr %i.mc, align 4, !tbaa !134
  %wide.load46.a = load <8 x float>, ptr %i.md, align 4, !tbaa !134
  %wide.load47.a = load <8 x float>, ptr %i.me, align 4, !tbaa !134
  %wide.load48 = load <8 x float>, ptr %i.mf, align 4, !tbaa !134
  %i.mg = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %i.mb ; 4 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 32
  %i.mi = getelementptr i8, ptr %i.mg, i64 64
  %i.mj = getelementptr i8, ptr %i.mg, i64 96
  store <8 x float> %wide.load, ptr %i.mg, align 4, !tbaa !134
  store <8 x float> %wide.load46.a, ptr %i.mh, align 4, !tbaa !134
  store <8 x float> %wide.load47.a, ptr %i.mi, align 4, !tbaa !134
  store <8 x float> %wide.load48, ptr %i.mj, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mk = icmp eq i64 %index.next, %n.vec
  br i1 %i.mk, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !192

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.ml = add i64 %index50, %i.cr                 ; 2 uses
  %i.mm = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %i.ml
  %wide.load51 = load <8 x float>, ptr %i.mm, align 4, !tbaa !134
  %i.mn = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %i.ml
  store <8 x float> %wide.load51, ptr %i.mn, align 4, !tbaa !134
  %index.next52 = add nuw i64 %index50, 8         ; 2 uses
  %i.mo = icmp eq i64 %index.next52, %n.vec49
  br i1 %i.mo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !349

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n53, label %..loopexit_crit_edge.us.us.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv359.i.ph = phi i64 [ %i.cr, %iter.check ], [ %i.cr, %vector.memcheck ], [ %i.ld, %vec.epilog.iter.check ], [ %i.le, %vec.epilog.middle.block ] ; 4 uses
  %i.mp = sub nsw i64 %wide.trip.count362.i, %indvars.iv359.i.ph
  %xtraiter157 = and i64 %i.mp, 7                 ; 2 uses
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv359.i.prol = phi i64 [ %indvars.iv.next360.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv359.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter159 = phi i64 [ %prol.iter159.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep400.i.prol = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv359.i.prol
  %i.mq = load float, ptr %gep400.i.prol, align 4, !tbaa !134
  %gep402.i.prol = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv359.i.prol
  store float %i.mq, ptr %gep402.i.prol, align 4, !tbaa !134
  %indvars.iv.next360.i.prol = add nsw i64 %indvars.iv359.i.prol, 1 ; 2 uses
  %prol.iter159.next = add i64 %prol.iter159, 1   ; 2 uses
  %prol.iter159.cmp.not = icmp eq i64 %prol.iter159.next, %xtraiter157
  br i1 %prol.iter159.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !350

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv359.i.unr = phi i64 [ %indvars.iv359.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next360.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.mr = sub nsw i64 %indvars.iv359.i.ph, %wide.trip.count362.i
  %i.ms = icmp ugt i64 %i.mr, -8
  br i1 %i.ms, label %..loopexit_crit_edge.us.us.us.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv359.i = phi i64 [ %indvars.iv.next360.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv359.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep400.i = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv359.i
  %i.mt = load float, ptr %gep400.i, align 4, !tbaa !134
  %gep402.i = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv359.i
  store float %i.mt, ptr %gep402.i, align 4, !tbaa !134
  %indvars.iv.next360.i = add nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %gep400.i.1 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i
  %i.mu = load float, ptr %gep400.i.1, align 4, !tbaa !134
  %gep402.i.1 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i
  store float %i.mu, ptr %gep402.i.1, align 4, !tbaa !134
  %indvars.iv.next360.i.1 = add nsw i64 %indvars.iv359.i, 2 ; 2 uses
  %gep400.i.2 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.1
  %i.mv = load float, ptr %gep400.i.2, align 4, !tbaa !134
  %gep402.i.2 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.1
  store float %i.mv, ptr %gep402.i.2, align 4, !tbaa !134
  %indvars.iv.next360.i.2 = add nsw i64 %indvars.iv359.i, 3 ; 2 uses
  %gep400.i.3 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.2
  %i.mw = load float, ptr %gep400.i.3, align 4, !tbaa !134
  %gep402.i.3 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.2
  store float %i.mw, ptr %gep402.i.3, align 4, !tbaa !134
  %indvars.iv.next360.i.3 = add nsw i64 %indvars.iv359.i, 4 ; 2 uses
  %gep400.i.4 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.3
  %i.mx = load float, ptr %gep400.i.4, align 4, !tbaa !134
  %gep402.i.4 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.3
  store float %i.mx, ptr %gep402.i.4, align 4, !tbaa !134
  %indvars.iv.next360.i.4 = add nsw i64 %indvars.iv359.i, 5 ; 2 uses
  %gep400.i.5 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.4
  %i.my = load float, ptr %gep400.i.5, align 4, !tbaa !134
  %gep402.i.5 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.4
  store float %i.my, ptr %gep402.i.5, align 4, !tbaa !134
  %indvars.iv.next360.i.5 = add nsw i64 %indvars.iv359.i, 6 ; 2 uses
  %gep400.i.6 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.5
  %i.mz = load float, ptr %gep400.i.6, align 4, !tbaa !134
  %gep402.i.6 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.5
  store float %i.mz, ptr %gep402.i.6, align 4, !tbaa !134
  %indvars.iv.next360.i.6 = add nsw i64 %indvars.iv359.i, 7 ; 2 uses
  %gep400.i.7 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.6
  %i.na = load float, ptr %gep400.i.7, align 4, !tbaa !134
  %gep402.i.7 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.6
  store float %i.na, ptr %gep402.i.7, align 4, !tbaa !134
  %indvars.iv.next360.i.7 = add nsw i64 %indvars.iv359.i, 8 ; 2 uses
  %exitcond363.not.i.7 = icmp eq i64 %indvars.iv.next360.i.7, %wide.trip.count362.i
  br i1 %exitcond363.not.i.7, label %..loopexit_crit_edge.us.us.us.i, label %vec.epilog.scalar.ph, !llvm.loop !351

..loopexit_crit_edge.us.us.us.i:                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next365.i = add nsw i64 %indvars.iv364.i, 1 ; 2 uses
  %exitcond368.not.i = icmp eq i64 %indvars.iv.next365.i, %wide.trip.count349.i
  %indvar.next43 = add i64 %indvar42, 1
  br i1 %exitcond368.not.i, label %._crit_edge270.split.us.us.us.i, label %iter.check, !llvm.loop !346

._crit_edge270.split.us.us.us.i:                  ; preds = %..loopexit_crit_edge.us.us.us.i
  %indvars.iv.next370.i = add nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %wide.trip.count339.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond373.not.i, label %.loopexit254.us.i, label %.preheader252.us.us.i, !llvm.loop !347

.loopexit254.us.i:                                ; preds = %._crit_edge270.split.us.i, %._crit_edge270.split.us.us.us.i, %.preheader252.lr.ph.split.split.us.us.i, %.preheader252.lr.ph.split.split.us284.i, %.preheader252.lr.ph.us.i, %bb.o, %.lr.ph280.split.us.i
  %.4199.us.i = phi i1 [ %.2197276.us.i, %.lr.ph280.split.us.i ], [ %.3198.us.i, %.preheader252.lr.ph.us.i ], [ %.3198.us.i, %.preheader252.lr.ph.split.split.us284.i ], [ %.3198.us.i, %bb.o ], [ %.3198.us.i, %._crit_edge270.split.us.us.us.i ], [ %.3198.us.i, %.preheader252.lr.ph.split.split.us.us.i ], [ %.3198.us.i, %._crit_edge270.split.us.i ] ; 2 uses
  %.4194.us.i = phi i1 [ %.2192277.us.i, %.lr.ph280.split.us.i ], [ %.3193.us.i, %.preheader252.lr.ph.us.i ], [ %.3193.us.i, %.preheader252.lr.ph.split.split.us284.i ], [ %.3193.us.i, %bb.o ], [ %.3193.us.i, %._crit_edge270.split.us.us.us.i ], [ %.3193.us.i, %.preheader252.lr.ph.split.split.us.us.i ], [ %.3193.us.i, %._crit_edge270.split.us.i ] ; 2 uses
  %.4.us.i = phi i1 [ %.2278.us.i, %.lr.ph280.split.us.i ], [ %.3.us.i, %.preheader252.lr.ph.us.i ], [ %.3.us.i, %.preheader252.lr.ph.split.split.us284.i ], [ %.3.us.i, %bb.o ], [ %.3.us.i, %._crit_edge270.split.us.us.us.i ], [ %.3.us.i, %.preheader252.lr.ph.split.split.us.us.i ], [ %.3.us.i, %._crit_edge270.split.us.i ] ; 2 uses
  %i.nb = add nsw i32 %.0206275.us.i, -1
  %.not224.us.not.i = icmp sgt i32 %.0206275.us.i, %i.cq
  br i1 %.not224.us.not.i, label %.lr.ph280.split.us.i, label %._crit_edge281.i, !llvm.loop !352

.lr.ph280.split.i:                                ; preds = %.lr.ph280.split.i.preheader, %.loopexit256.i
  %.0206275.i = phi i32 [ %i.rh, %.loopexit256.i ], [ 0, %.lr.ph280.split.i.preheader ] ; 4 uses
  %i.nc = add nsw i32 %.0206275.i, %i.bx          ; 2 uses
  %i.nd = icmp slt i32 %i.nc, 0                   ; 2 uses
  %i.ne = select i1 %i.nd, i32 %i.bz, i32 0
  %.0203.i = add nsw i32 %i.ne, %i.nc             ; 2 uses
  %i.nf = sext i32 %.0203.i to i64
  %i.ng = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !105 ; 2 uses
  %i.nj = select i1 %i.nd, i32 %i.ai, i32 0       ; 2 uses
  %i.nk = sub i32 %i.ni, %i.nj                    ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 20
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !105
  %i.nn = add i32 %i.nk, %i.nm
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated239.2.i, i32 %i.nn) ; 2 uses
  %i.no = or i32 %.0206275.i, %i.ew
  %or.cond3.i = icmp eq i32 %i.no, 0
  br i1 %or.cond3.i, label %.loopexit256.i, label %.preheader255.i

.preheader255.i:                                  ; preds = %.lr.ph280.split.i
  %i.np = add nsw i32 %.0203.i, %i.ey
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.nq ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 56
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !194
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !195 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 44
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !105 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !105 ; 4 uses
  %i.nz = icmp sge i32 %i.br, %.sroa.speculated.i
  %or.cond.i = select i1 %i.fe, i1 true, i1 %i.nz
  br i1 %or.cond.i, label %.loopexit256.i, label %.preheader253.preheader.i

.preheader253.preheader.i:                        ; preds = %.preheader255.i
  %wide.trip.count.i = sext i32 %.sroa.speculated.i to i64 ; 6 uses
  %i.oa = add i64 %i.do, %wide.trip.count.i
  %i.ob = shl i64 %i.oa, 2
  %scevgep108 = getelementptr i8, ptr %i.nu, i64 %i.dj
  %i.oc = mul i32 %i.eh, %i.nw
  %i.od = add i32 %i.fa, %i.oc
  %i.oe = mul i32 %i.ny, %i.od
  %i.of = add i32 %i.nj, %i.oe
  %i.og = sub i32 %i.of, %i.ni
  %i.oh = mul i32 %i.nw, %i.ny
  %i.oi = sub nsw i64 %wide.trip.count.i, %i.cr   ; 7 uses
  %i.oj = getelementptr i8, ptr %i.fh, i64 %i.ob
  %min.iters.check119 = icmp ult i64 %i.oi, 8
  %min.iters.check121 = icmp ult i64 %i.oi, 32
  %i.ok = and i64 %i.oi, 24
  %n.vec123 = and i64 %i.oi, -32                  ; 4 uses
  %i.ol = add nsw i64 %n.vec123, %i.cr
  %cmp.n136 = icmp eq i64 %i.oi, %n.vec123
  %min.epilog.iters.check141 = icmp eq i64 %i.ok, 0
  %n.vec143 = and i64 %i.oi, -8                   ; 3 uses
  %i.om = add nsw i64 %n.vec143, %i.cr
  %cmp.n150 = icmp eq i64 %i.oi, %n.vec143
  br label %.preheader253.i

.preheader253.i:                                  ; preds = %._crit_edge261.i, %.preheader253.preheader.i
  %indvar104.a = phi i64 [ %indvar.next105, %._crit_edge261.i ], [ 0, %.preheader253.preheader.i ] ; 3 uses
  %indvars.iv336.i = phi i64 [ %indvars.iv.next337.i, %._crit_edge261.i ], [ %i.cu, %.preheader253.preheader.i ] ; 3 uses
  %i.on = mul i64 %i.dl, %indvar104.a             ; 2 uses
  %scevgep106.a = getelementptr i8, ptr %i.dq, i64 %i.on
  %scevgep107.a = getelementptr i8, ptr %i.oj, i64 %i.on
  %i.oo = trunc i64 %indvar104.a to i32
  %i.op = mul i32 %i.oh, %i.oo
  %i.oq = add i32 %i.op, %i.og
  %i.or = mul nsw i64 %indvars.iv336.i, %i.cv
  %i.os = trunc i64 %indvars.iv336.i to i32
  %i.ot = sub i32 %i.os, %i.ec
  %i.ou = mul i32 %i.ot, %i.nw
  %i.ov = sub i32 %i.ou, %i.es
  br label %iter.check138

iter.check138:                                    ; preds = %._crit_edge.i, %.preheader253.i
  %indvar109 = phi i32 [ %indvar.next110, %._crit_edge.i ], [ 0, %.preheader253.i ] ; 2 uses
  %indvars.iv331.i = phi i64 [ %indvars.iv.next332.i, %._crit_edge.i ], [ %i.cs, %.preheader253.i ] ; 3 uses
  %i.ow = add nsw i64 %indvars.iv331.i, %i.or
  %i.ox = mul nsw i64 %i.ow, %i.ct
  %i.oy = trunc nsw i64 %indvars.iv331.i to i32
  %i.oz = add i32 %i.ov, %i.oy
  %i.pa = mul nsw i32 %i.oz, %i.ny
  %i.pb = sub i32 %i.pa, %i.nk
  %i.pc = sext i32 %i.pb to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.nu, i64 %i.pc ; 11 uses
  %invariant.gep393.i = getelementptr [4 x i8], ptr %i.ac, i64 %i.ox ; 11 uses
  br i1 %min.iters.check119, label %vec.epilog.scalar.ph139.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %iter.check138
  %i.pd = mul i32 %i.ny, %indvar109
  %i.pe = add i32 %i.oq, %i.pd
  %i.pf = sext i32 %i.pe to i64                   ; 2 uses
  %i.pg = add nsw i64 %wide.trip.count.i, %i.pf
  %i.ph = shl nsw i64 %i.pg, 2
  %scevgep112 = getelementptr i8, ptr %i.nu, i64 %i.ph
  %i.pi = shl nsw i64 %i.pf, 2
  %scevgep111 = getelementptr i8, ptr %scevgep108, i64 %i.pi
  %bound0113 = icmp ult ptr %scevgep106.a, %scevgep112
  %bound1114 = icmp ult ptr %scevgep111, %scevgep107.a
  %found.conflict115 = and i1 %bound0113, %bound1114
  %i.pj = or i1 %found.conflict115, %stride.check116
  br i1 %i.pj, label %vec.epilog.scalar.ph139.preheader, label %vector.main.loop.iter.check120

vector.main.loop.iter.check120:                   ; preds = %vector.memcheck103
  br i1 %min.iters.check121, label %vec.epilog.ph142, label %vector.body124

vector.body124:                                   ; preds = %vector.main.loop.iter.check120, %vector.body124
  %index125 = phi i64 [ %index.next134, %vector.body124 ], [ 0, %vector.main.loop.iter.check120 ] ; 2 uses
  %i.pk = add i64 %index125, %i.cr                ; 2 uses
  %i.pl = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.pk ; 4 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 32
  %i.pn = getelementptr i8, ptr %i.pl, i64 64
  %i.po = getelementptr i8, ptr %i.pl, i64 96
  %wide.load126.a = load <8 x float>, ptr %i.pl, align 4, !tbaa !134, !alias.scope !367
  %wide.load127 = load <8 x float>, ptr %i.pm, align 4, !tbaa !134, !alias.scope !367
  %wide.load128 = load <8 x float>, ptr %i.pn, align 4, !tbaa !134, !alias.scope !367
  %wide.load129 = load <8 x float>, ptr %i.po, align 4, !tbaa !134, !alias.scope !367
  %i.pp = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %i.pk ; 5 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 32     ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pp, i64 64     ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pp, i64 96     ; 2 uses
  %wide.load130 = load <8 x float>, ptr %i.pp, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %wide.load131 = load <8 x float>, ptr %i.pq, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %wide.load132 = load <8 x float>, ptr %i.pr, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %wide.load133 = load <8 x float>, ptr %i.ps, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %i.pt = fadd <8 x float> %wide.load126.a, %wide.load130
  %i.pu = fadd <8 x float> %wide.load127, %wide.load131
  %i.pv = fadd <8 x float> %wide.load128, %wide.load132
  %i.pw = fadd <8 x float> %wide.load129, %wide.load133
  store <8 x float> %i.pt, ptr %i.pp, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  store <8 x float> %i.pu, ptr %i.pq, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  store <8 x float> %i.pv, ptr %i.pr, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  store <8 x float> %i.pw, ptr %i.ps, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %index.next134 = add nuw i64 %index125, 32      ; 2 uses
  %i.px = icmp eq i64 %index.next134, %n.vec123
  br i1 %i.px, label %middle.block135, label %vector.body124, !llvm.loop !356

middle.block135:                                  ; preds = %vector.body124
  br i1 %cmp.n136, label %._crit_edge.i, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block135
  br i1 %min.epilog.iters.check141, label %vec.epilog.scalar.ph139.preheader, label %vec.epilog.ph142, !prof !192

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check120, %vec.epilog.iter.check140
  %vec.epilog.resume.val137 = phi i64 [ %n.vec123, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check120 ]
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph142
  %index145 = phi i64 [ %vec.epilog.resume.val137, %vec.epilog.ph142 ], [ %index.next148, %vec.epilog.vector.body144 ] ; 2 uses
  %i.py = add i64 %index145, %i.cr                ; 2 uses
  %i.pz = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.py
  %wide.load146 = load <8 x float>, ptr %i.pz, align 4, !tbaa !134, !alias.scope !367
  %i.qa = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %i.py ; 2 uses
  %wide.load147 = load <8 x float>, ptr %i.qa, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %i.qb = fadd <8 x float> %wide.load146, %wide.load147
  store <8 x float> %i.qb, ptr %i.qa, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.qc = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.qc, label %vec.epilog.middle.block149, label %vec.epilog.vector.body144, !llvm.loop !357

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body144
  br i1 %cmp.n150, label %._crit_edge.i, label %vec.epilog.scalar.ph139.preheader

vec.epilog.scalar.ph139.preheader:                ; preds = %iter.check138, %vector.memcheck103, %vec.epilog.iter.check140, %vec.epilog.middle.block149
  %indvars.iv.i.ph = phi i64 [ %i.cr, %iter.check138 ], [ %i.cr, %vector.memcheck103 ], [ %i.ol, %vec.epilog.iter.check140 ], [ %i.om, %vec.epilog.middle.block149 ] ; 4 uses
  %i.qd = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.qd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol

vec.epilog.scalar.ph139.prol:                     ; preds = %vec.epilog.scalar.ph139.preheader, %vec.epilog.scalar.ph139.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph139.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph139.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph139.prol ], [ 0, %vec.epilog.scalar.ph139.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.qe = load float, ptr %gep.i.prol, align 4, !tbaa !134
  %gep394.i.prol = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.qf = load float, ptr %gep394.i.prol, align 4, !tbaa !134
  %i.qg = fadd float %i.qe, %i.qf
  store float %i.qg, ptr %gep394.i.prol, align 4, !tbaa !134
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol, !llvm.loop !358

vec.epilog.scalar.ph139.prol.loopexit:            ; preds = %vec.epilog.scalar.ph139.prol, %vec.epilog.scalar.ph139.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph139.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph139.prol ]
  %i.qh = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.qi = icmp ugt i64 %i.qh, -8
  br i1 %i.qi, label %._crit_edge.i, label %vec.epilog.scalar.ph139

vec.epilog.scalar.ph139:                          ; preds = %vec.epilog.scalar.ph139.prol.loopexit, %vec.epilog.scalar.ph139
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph139 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph139.prol.loopexit ] ; 10 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.qj = load float, ptr %gep.i, align 4, !tbaa !134
  %gep394.i = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.i ; 2 uses
  %i.qk = load float, ptr %gep394.i, align 4, !tbaa !134
  %i.ql = fadd float %i.qj, %i.qk
  store float %i.ql, ptr %gep394.i, align 4, !tbaa !134
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.qm = load float, ptr %gep.i.1, align 4, !tbaa !134
  %gep394.i.1 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i ; 2 uses
  %i.qn = load float, ptr %gep394.i.1, align 4, !tbaa !134
  %i.qo = fadd float %i.qm, %i.qn
  store float %i.qo, ptr %gep394.i.1, align 4, !tbaa !134
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.qp = load float, ptr %gep.i.2, align 4, !tbaa !134
  %gep394.i.2 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.qq = load float, ptr %gep394.i.2, align 4, !tbaa !134
  %i.qr = fadd float %i.qp, %i.qq
  store float %i.qr, ptr %gep394.i.2, align 4, !tbaa !134
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.qs = load float, ptr %gep.i.3, align 4, !tbaa !134
  %gep394.i.3 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.qt = load float, ptr %gep394.i.3, align 4, !tbaa !134
  %i.qu = fadd float %i.qs, %i.qt
  store float %i.qu, ptr %gep394.i.3, align 4, !tbaa !134
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %gep.i.4 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.3
  %i.qv = load float, ptr %gep.i.4, align 4, !tbaa !134
  %gep394.i.4 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.qw = load float, ptr %gep394.i.4, align 4, !tbaa !134
  %i.qx = fadd float %i.qv, %i.qw
  store float %i.qx, ptr %gep394.i.4, align 4, !tbaa !134
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5 ; 2 uses
  %gep.i.5 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.4
  %i.qy = load float, ptr %gep.i.5, align 4, !tbaa !134
  %gep394.i.5 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.4 ; 2 uses
  %i.qz = load float, ptr %gep394.i.5, align 4, !tbaa !134
  %i.ra = fadd float %i.qy, %i.qz
  store float %i.ra, ptr %gep394.i.5, align 4, !tbaa !134
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6 ; 2 uses
  %gep.i.6 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.5
  %i.rb = load float, ptr %gep.i.6, align 4, !tbaa !134
  %gep394.i.6 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.5 ; 2 uses
  %i.rc = load float, ptr %gep394.i.6, align 4, !tbaa !134
  %i.rd = fadd float %i.rb, %i.rc
  store float %i.rd, ptr %gep394.i.6, align 4, !tbaa !134
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7 ; 2 uses
  %gep.i.7 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.6
  %i.re = load float, ptr %gep.i.7, align 4, !tbaa !134
  %gep394.i.7 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.6 ; 2 uses
  %i.rf = load float, ptr %gep394.i.7, align 4, !tbaa !134
  %i.rg = fadd float %i.re, %i.rf
  store float %i.rg, ptr %gep394.i.7, align 4, !tbaa !134
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %vec.epilog.scalar.ph139, !llvm.loop !359

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph139.prol.loopexit, %vec.epilog.scalar.ph139, %vec.epilog.middle.block149, %middle.block135
  %indvars.iv.next332.i = add nsw i64 %indvars.iv331.i, 1 ; 2 uses
  %exitcond335.not.i = icmp eq i64 %indvars.iv.next332.i, %wide.trip.count349.i
  %indvar.next110 = add i32 %indvar109, 1
  br i1 %exitcond335.not.i, label %._crit_edge261.i, label %iter.check138, !llvm.loop !360

._crit_edge261.i:                                 ; preds = %._crit_edge.i
  %indvars.iv.next337.i = add nsw i64 %indvars.iv336.i, 1 ; 2 uses
  %exitcond340.not.i = icmp eq i64 %indvars.iv.next337.i, %wide.trip.count339.i
  %indvar.next105 = add i64 %indvar104.a, 1
  br i1 %exitcond340.not.i, label %.loopexit256.i, label %.preheader253.i, !llvm.loop !361

.loopexit256.i:                                   ; preds = %._crit_edge261.i, %.preheader255.i, %.lr.ph280.split.i
  %i.rh = add nsw i32 %.0206275.i, -1
  %.not224.not.i = icmp sgt i32 %.0206275.i, %i.cq
  br i1 %.not224.not.i, label %.lr.ph280.split.i, label %._crit_edge281.i, !llvm.loop !352

._crit_edge281.i:                                 ; preds = %.loopexit256.i, %.loopexit254.us.i
  %.us-phi.i = phi i1 [ %.4199.us.i, %.loopexit254.us.i ], [ %.1196292.i, %.loopexit256.i ] ; 2 uses
  %.us-phi288.i = phi i1 [ %.4194.us.i, %.loopexit254.us.i ], [ %.1191293.i, %.loopexit256.i ] ; 2 uses
  %.us-phi289.i = phi i1 [ %.4.us.i, %.loopexit254.us.i ], [ %.1294.i, %.loopexit256.i ] ; 2 uses
  %i.ri = add nsw i32 %.0207291.i, -1
  %.not223.not.i = icmp sgt i32 %.0207291.i, %i.ch
  br i1 %.not223.not.i, label %bb.j, label %._crit_edge297.split.i, !llvm.loop !362

._crit_edge297.split.i:                           ; preds = %._crit_edge281.i
  %i.rj = add nsw i32 %.0208305.i, -1
  %.not.not.i = icmp sgt i32 %.0208305.i, %i.cc
  br i1 %.not.not.i, label %bb.h, label %.loopexit, !llvm.loop !363

bb.p:                                             ; preds = %bb.c
  %i.rk = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.rl = extractvalue { ptr, i32 } %i.rk, 0      ; 2 uses
  %i.rm = extractvalue { ptr, i32 } %i.rk, 1
  %i.rn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #3
  %i.ro = icmp eq i32 %i.rm, %i.rn
  br i1 %i.ro, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.rp = call ptr @__cxa_begin_catch(ptr %i.rl) #3
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.rp) #16
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

.loopexit:                                        ; preds = %._crit_edge297.split.i, %.lr.ph311.split.i, %.lr.ph311.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.rq = load i32, ptr %i.e, align 4, !tbaa !105
  %i.rr = sext i32 %i.rq to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.rr
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.t:                                             ; preds = %bb.q
  %i.rs = landingpad { ptr, i32 }
          catch ptr null
  %i.rt = extractvalue { ptr, i32 } %i.rs, 0
  call void @__clang_call_terminate(ptr %i.rt) #17
  unreachable

bb.u:                                             ; preds = %bb.p
  call void @__clang_call_terminate(ptr %i.rl) #17
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !372  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !183    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !373
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not37.i = icmp ult i64 %i.n, %i.i
  br i1 %.not37.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i, ptr %i.a, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not13.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i
  %i.y = ptrtoaddr ptr %i.w to i64
  %i.z = add i64 %i.d, -4
  %i.aa = sub i64 %i.z, %i.e                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.aa, 28
  %i.ad = sub i64 %i.e, %i.y
  %diff.check = icmp ugt i64 %i.ad, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.aa, 124
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, 9223372036854775776     ; 4 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 4 uses
  %next.gep13 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  %i.aj = getelementptr i8, ptr %next.gep13, i64 32
  %i.ak = getelementptr i8, ptr %next.gep13, i64 64
  %i.al = getelementptr i8, ptr %next.gep13, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep13, align 4, !tbaa !105
  %wide.load14 = load <8 x i32>, ptr %i.aj, align 4, !tbaa !105
  %wide.load15 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !105
  %wide.load16 = load <8 x i32>, ptr %i.al, align 4, !tbaa !105
  %i.am = getelementptr i8, ptr %next.gep, i64 32
  %i.an = getelementptr i8, ptr %next.gep, i64 64
  %i.ao = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !105
  store <8 x i32> %wide.load14, ptr %i.am, align 4, !tbaa !105
  store <8 x i32> %wide.load15, ptr %i.an, align 4, !tbaa !105
  store <8 x i32> %wide.load16, ptr %i.ao, align 4, !tbaa !105
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !192

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.ac, 9223372036854775800   ; 3 uses
  %i.aq = shl i64 %n.vec18, 2                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.w, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.c, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index19, 2                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.w, i64 %i.at
  %next.gep21 = getelementptr i8, ptr %i.c, i64 %i.at
  %wide.load22 = load <8 x i32>, ptr %next.gep21, align 4, !tbaa !105
  store <8 x i32> %wide.load22, ptr %next.gep20, align 4, !tbaa !105
  %index.next23 = add nuw i64 %index19, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !370

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.ac, %n.vec18
  br i1 %cmp.n24, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.sroa.010.014.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.sroa.010.014.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.av = load i32, ptr %.sroa.010.014.i.i.i, align 4, !tbaa !105
  store i32 %i.av, ptr %.015.i.i.i, align 4, !tbaa !105
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.aw, %i.b
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !371

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i
  %.not.i41.i = icmp eq ptr %i.c, null
  br i1 %.not.i41.i, label %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !373
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #19
  br label %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i

_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i: ; preds = %bb.f, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !183
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !372
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.bc, ptr %i.j, align 8, !tbaa !373
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.bd = icmp ult i64 %1, %i.g
  br i1 %i.bd, label %bb.h, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.be
  br i1 %.not.i4, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.a, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit: ; preds = %bb.i, %bb.h, %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

declare noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

declare noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS9gmx_pme_t", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS11PmeAtomComm", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS14PmeAndFftGrids", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTS10tmpi_comm_", !9, i64 0}
!19 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !9, i64 0}
!20 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !19, i64 0}
!21 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !20, i64 0}
!22 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !21, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !22, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !23, i64 0}
!25 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !24, i64 0}
!26 = !{!"_ZTSN3gmx7MpiCommE", !18, i64 0, !6, i64 8, !6, i64 12, !25, i64 16}
!27 = !{!"p1 _ZTSN3gmx7MpiCommE", !9, i64 0}
!28 = !{!"float", !5, i64 0}
!29 = !{!"_ZTS10PmeRunMode", !5, i64 0}
!30 = !{!"p1 _ZTS6PmeGpu", !9, i64 0}
!31 = !{!"p1 _ZTS15EwaldBoxZScaler", !9, i64 0}
!32 = !{!"_ZTSSt10_Head_baseILm0EP15EwaldBoxZScalerLb0EE", !31, i64 0}
!33 = !{!"_ZTSSt11_Tuple_implILm0EJP15EwaldBoxZScalerSt14default_deleteIS0_EEE", !32, i64 0}
!34 = !{!"_ZTSSt5tupleIJP15EwaldBoxZScalerSt14default_deleteIS0_EEE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_implI15EwaldBoxZScalerSt14default_deleteIS0_EE", !34, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_dataI15EwaldBoxZScalerSt14default_deleteIS0_ELb1ELb1EE", !35, i64 0}
!37 = !{!"_ZTSSt10unique_ptrI15EwaldBoxZScalerSt14default_deleteIS0_EE", !36, i64 0}
!38 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!39 = !{!"p1 _ZTS15pme_spline_work", !9, i64 0}
!40 = !{!"_ZTSSt10_Head_baseILm0EP15pme_spline_workLb0EE", !39, i64 0}
!41 = !{!"_ZTSSt11_Tuple_implILm0EJP15pme_spline_workSt14default_deleteIS0_EEE", !40, i64 0}
!42 = !{!"_ZTSSt5tupleIJP15pme_spline_workSt14default_deleteIS0_EEE", !41, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_implI15pme_spline_workSt14default_deleteIS0_EE", !42, i64 0}
!44 = !{!"_ZTSSt15__uniq_ptr_dataI15pme_spline_workSt14default_deleteIS0_ELb1ELb1EE", !43, i64 0}
!45 = !{!"_ZTSSt10unique_ptrI15pme_spline_workSt14default_deleteIS0_EE", !44, i64 0}
!46 = !{!"p1 _ZTS15PmeGridsStorage", !9, i64 0}
!47 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!48 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0}
!49 = !{!"_ZTSSt12__shared_ptrI15PmeGridsStorageLN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0, !48, i64 8}
!50 = !{!"_ZTSSt10shared_ptrI15PmeGridsStorageE", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorI14PmeAndFftGridsSaIS0_EE", !53, i64 0}
!55 = !{!"p1 _ZTSN9gmx_pme_t8GridsRefE", !9, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIN9gmx_pme_t8GridsRefESaIS1_EE", !58, i64 0}
!60 = !{!"any p2 pointer", !9, i64 0}
!61 = !{!"p2 _ZTS9t_complex", !60, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIP9t_complexSaIS1_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIP9t_complexSaIS1_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIP9t_complexSaIS1_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIP9t_complexSaIS1_EE", !64, i64 0}
!66 = !{!"p1 int", !9, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorIiSaIiEE", !69, i64 0}
!71 = !{!"p1 float", !9, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIfSaIfEE", !74, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseI11PmeAtomCommSaIS0_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!77 = !{!"_ZTSNSt12_Vector_baseI11PmeAtomCommSaIS0_EE12_Vector_implE", !76, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseI11PmeAtomCommSaIS0_EE", !77, i64 0}
!79 = !{!"_ZTSSt6vectorI11PmeAtomCommSaIS0_EE", !78, i64 0}
!80 = !{!"_ZTSSt5arrayISt6vectorIfSaIfEELm3EE", !5, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE", !83, i64 0}
!85 = !{!"_ZTSSt5arrayI13pme_overlap_tLm2EE", !5, i64 0}
!86 = !{!"_ZTSSt10_Head_baseILm0EP11PmeAtomCommLb0EE", !12, i64 0}
!87 = !{!"_ZTSSt11_Tuple_implILm0EJP11PmeAtomCommSt14default_deleteIS0_EEE", !86, i64 0}
!88 = !{!"_ZTSSt5tupleIJP11PmeAtomCommSt14default_deleteIS0_EEE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implI11PmeAtomCommSt14default_deleteIS0_EE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_dataI11PmeAtomCommSt14default_deleteIS0_ELb1ELb1EE", !89, i64 0}
!91 = !{!"_ZTSSt10unique_ptrI11PmeAtomCommSt14default_deleteIS0_EE", !90, i64 0}
!92 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !95, i64 0}
!97 = !{!"p1 _ZTS8PmeSolve", !9, i64 0}
!98 = !{!"_ZTSSt10_Head_baseILm0EP8PmeSolveLb0EE", !97, i64 0}
!99 = !{!"_ZTSSt11_Tuple_implILm0EJP8PmeSolveSt14default_deleteIS0_EEE", !98, i64 0}
!100 = !{!"_ZTSSt5tupleIJP8PmeSolveSt14default_deleteIS0_EEE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_implI8PmeSolveSt14default_deleteIS0_EE", !100, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_dataI8PmeSolveSt14default_deleteIS0_ELb1ELb1EE", !101, i64 0}
!103 = !{!"_ZTSSt10unique_ptrI8PmeSolveSt14default_deleteIS0_EE", !102, i64 0}
!104 = !{!"_ZTS9gmx_pme_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !26, i64 32, !27, i64 56, !5, i64 64, !16, i64 80, !6, i64 84, !16, i64 88, !16, i64 89, !16, i64 90, !16, i64 91, !16, i64 92, !16, i64 93, !16, i64 94, !16, i64 95, !6, i64 96, !6, i64 100, !6, i64 104, !16, i64 108, !6, i64 112, !28, i64 116, !28, i64 120, !28, i64 124, !6, i64 128, !28, i64 132, !29, i64 136, !30, i64 144, !37, i64 152, !38, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !45, i64 192, !50, i64 200, !54, i64 216, !54, i64 240, !59, i64 264, !65, i64 288, !70, i64 312, !70, i64 336, !70, i64 360, !75, i64 384, !75, i64 408, !75, i64 432, !79, i64 456, !5, i64 480, !28, i64 516, !80, i64 520, !84, i64 592, !84, i64 616, !85, i64 640, !91, i64 928, !96, i64 936, !75, i64 960, !103, i64 984}
!105 = !{!6, !6, i64 0}
!106 = !{i8 0, i8 2}
!107 = !{}
!108 = !{!104, !16, i64 80}
!109 = !{!"p1 _ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !9, i64 0}
!110 = !{!"long", !5, i64 0}
!111 = !{!"_ZTS9pmegrid_t", !5, i64 0, !5, i64 12, !5, i64 24, !6, i64 36, !5, i64 40, !109, i64 56, !110, i64 64}
!112 = !{!"p1 _ZTS9pmegrid_t", !9, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseI9pmegrid_tSaIS0_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!114 = !{!"_ZTSNSt12_Vector_baseI9pmegrid_tSaIS0_EE12_Vector_implE", !113, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseI9pmegrid_tSaIS0_EE", !114, i64 0}
!116 = !{!"_ZTSSt6vectorI9pmegrid_tSaIS0_EE", !115, i64 0}
!117 = !{!"_ZTSSt5arrayISt6vectorIiSaIiEELm3EE", !5, i64 0}
!118 = !{!"_ZTS10pmegrids_t", !111, i64 0, !6, i64 72, !5, i64 76, !116, i64 88, !117, i64 112, !5, i64 184}
!119 = !{!"p1 _ZTS9t_complex", !9, i64 0}
!120 = !{!"p1 _ZTS18gmx_parallel_3dfft", !9, i64 0}
!121 = !{!"_ZTSSt10_Head_baseILm0EP18gmx_parallel_3dfftLb0EE", !120, i64 0}
!122 = !{!"_ZTSSt11_Tuple_implILm0EJP18gmx_parallel_3dfftN3gmx15functor_wrapperIS0_XadL_Z22parallel_3dfft_destroyS1_EEEEEE", !121, i64 0}
!123 = !{!"_ZTSSt5tupleIJP18gmx_parallel_3dfftN3gmx15functor_wrapperIS0_XadL_Z22parallel_3dfft_destroyS1_EEEEEE", !122, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_implI18gmx_parallel_3dfftN3gmx15functor_wrapperIS0_XadL_Z22parallel_3dfft_destroyPS0_EEEEE", !123, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_dataI18gmx_parallel_3dfftN3gmx15functor_wrapperIS0_XadL_Z22parallel_3dfft_destroyPS0_EEEELb1ELb1EE", !124, i64 0}
!126 = !{!"_ZTSSt10unique_ptrI18gmx_parallel_3dfftN3gmx15functor_wrapperIS0_XadL_Z22parallel_3dfft_destroyPS0_EEEEE", !125, i64 0}
!127 = !{!"_ZTS14PmeAndFftGrids", !118, i64 0, !71, i64 200, !119, i64 208, !126, i64 216}
!128 = !{!127, !6, i64 72}
!129 = !{!127, !71, i64 200}
!130 = !{!120, !120, i64 0}
!131 = !{!104, !6, i64 24}
!132 = !{!104, !6, i64 20}
!133 = !{!72, !71, i64 0}
!134 = !{!28, !28, i64 0}
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"llvm.loop.isvectorized", i32 1}
!137 = !{!"llvm.loop.unroll.runtime.disable"}
!138 = !{!"branch_weights", i32 4, i32 28}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !{!"p1 _ZTS13SlabCommSetup", !9, i64 0}
!141 = !{!"_ZTSNSt12_Vector_baseI13SlabCommSetupSaIS0_EE17_Vector_impl_dataE", !140, i64 0, !140, i64 8, !140, i64 16}
!142 = !{!"_ZTSNSt12_Vector_baseI13SlabCommSetupSaIS0_EE12_Vector_implE", !141, i64 0}
!143 = !{!"_ZTSSt12_Vector_baseI13SlabCommSetupSaIS0_EE", !142, i64 0}
!144 = !{!"_ZTSSt6vectorI13SlabCommSetupSaIS0_EE", !143, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!146 = !{!"_ZTSNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_Vector_implE", !145, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE", !146, i64 0}
!148 = !{!"_ZTSSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE", !147, i64 0}
!149 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !9, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !149, i64 0, !149, i64 8, !149, i64 16}
!151 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !150, i64 0}
!152 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !151, i64 0}
!153 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !152, i64 0}
!154 = !{!"_ZTSN3gmx12ArrayRefIterIKNS_11BasicVectorIfEEEE", !92, i64 0}
!155 = !{!"_ZTSN3gmx8ArrayRefIKNS_11BasicVectorIfEEEE", !154, i64 0, !154, i64 8}
!156 = !{!"_ZTSN3gmx12ArrayRefIterIKfEE", !71, i64 0}
!157 = !{!"_ZTSN3gmx8ArrayRefIKfEE", !156, i64 0, !156, i64 8}
!158 = !{!"_ZTSN3gmx12ArrayRefIterINS_11BasicVectorIfEEEE", !92, i64 0}
!159 = !{!"_ZTSN3gmx8ArrayRefINS_11BasicVectorIfEEEE", !158, i64 0, !158, i64 8}
!160 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!161 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE12_Vector_implE", !160, i64 0}
!162 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE", !161, i64 0}
!163 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE", !162, i64 0}
!164 = !{!"p1 _ZTSN3gmx11BasicVectorIiEE", !9, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIiEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE17_Vector_impl_dataE", !164, i64 0, !164, i64 8, !164, i64 16}
!166 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIiEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE12_Vector_implE", !165, i64 0}
!167 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIiEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE", !166, i64 0}
!168 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIiEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE", !167, i64 0}
!169 = !{!"p1 _ZTS15AtomToThreadMap", !9, i64 0}
!170 = !{!"_ZTSNSt12_Vector_baseI15AtomToThreadMapSaIS0_EE17_Vector_impl_dataE", !169, i64 0, !169, i64 8, !169, i64 16}
!171 = !{!"_ZTSNSt12_Vector_baseI15AtomToThreadMapSaIS0_EE12_Vector_implE", !170, i64 0}
!172 = !{!"_ZTSSt12_Vector_baseI15AtomToThreadMapSaIS0_EE", !171, i64 0}
!173 = !{!"_ZTSSt6vectorI15AtomToThreadMapSaIS0_EE", !172, i64 0}
!174 = !{!"p1 _ZTS12splinedata_t", !9, i64 0}
end_hunk_0
