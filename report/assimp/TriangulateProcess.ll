Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/TriangulateProcess?download=true
inline.NumInlined: 605
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6mapbox6detail6EarcutIjEclISt6vectorIS4_I10aiVector2tIfESaIS6_EESaIS8_EEEEvRKT_:bb.a
  %i.cj = sdiv exact i64 %i.ci, 24
  %i.ck = icmp ugt i64 %i.cj, 1
  br i1 %i.ck, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cl = tail call noundef ptr @_ZN6mapbox6detail6EarcutIjE14eliminateHolesISt6vectorIS4_I10aiVector2tIfESaIS6_EESaIS8_EEEEPNS2_4NodeERKT_SC_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.031 = phi ptr [ %i.cl, %bb.i ], [ %i.bk, %bb.h ] ; 5 uses
  %i.cm = icmp slt i32 %i.bu, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.034.lobit = lshr i32 %i.bu, 31
  %i.co = trunc nuw nsw i32 %.034.lobit to i8
  store i8 %i.co, ptr %i.cn, align 8
  br i1 %i.cm, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %.031, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.cv = load double, ptr %i.cr, align 8         ; 3 uses
  store double %i.cv, ptr %i.cs, align 8
  store double %i.cv, ptr %i.ct, align 8
  %i.cw = load double, ptr %i.cu, align 8         ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store double %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.cw, ptr %i.cy, align 8
  %i.cz = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cw, i64 1 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0 = phi ptr [ %i.cq, %bb.k ], [ %i.dn, %bb.l ] ; 2 uses
  %i.db = phi <2 x double> [ %i.da, %bb.k ], [ %i.dj, %bb.l ] ; 2 uses
  %i.dc = phi <2 x double> [ %i.da, %bb.k ], [ %i.dg, %bb.l ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.de = load <2 x double>, ptr %i.dd, align 8   ; 4 uses
  %i.df = fcmp olt <2 x double> %i.de, %i.dc
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.de, <2 x double> %i.dc ; 4 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  store double %i.dh, ptr %i.ct, align 8
  %i.di = fcmp olt <2 x double> %i.db, %i.de
  %i.dj = select <2 x i1> %i.di, <2 x double> %i.de, <2 x double> %i.db ; 4 uses
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> %i.dg, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dk, ptr %i.cs, align 8
  %i.dl = extractelement <2 x double> %i.dj, i64 1
  store double %i.dl, ptr %i.cx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.dn, %.031
  br i1 %.not37, label %bb.m, label %bb.l, !llvm.loop !38

bb.m:                                             ; preds = %bb.l
  %i.do = fsub <2 x double> %i.dj, %i.dg          ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0 ; 2 uses
  %i.dq = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %i.dr = fcmp olt double %i.dp, %i.dq
  %.sroa.speculated = select i1 %i.dr, double %i.dq, double %i.dp ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = fcmp une double %.sroa.speculated, 0.000000e+00
  %i.du = fdiv double 3.276700e+04, %.sroa.speculated
  %i.dv = select i1 %i.dt, double %i.du, double 0.000000e+00
  store double %i.dv, ptr %i.ds, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  tail call void @_ZN6mapbox6detail6EarcutIjE12earcutLinkedEPNS2_4NodeEi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %.031, i32 noundef 0)
  %i.dw = load i64, ptr %i.z, align 8
  %i.dx = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.dy = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not10.i.i = icmp eq ptr %i.dx, %i.dy
  br i1 %.not10.i.i, label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.p, align 8         ; 2 uses
  %.pre12.i.i = load ptr, ptr %i.r, align 8
  %i.dz = icmp eq ptr %.pre12.i.i, %.pre.i.i
  br i1 %i.dz, label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %._crit_edge.i.i
  store ptr %.pre.i.i, ptr %i.r, align 8
  br label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.05.011.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %i.dx, %bb.n ] ; 2 uses
  %i.ea = load ptr, ptr %.sroa.05.011.i.i, align 8
  %i.eb = load i64, ptr %i.z, align 8
  %i.ec = mul i64 %i.eb, 72
  tail call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ec) #18
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i, i64 8 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ed, %i.dy
  br i1 %.not.i.i42, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit: ; preds = %bb.n, %._crit_edge.i.i, %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1) ; 2 uses
  store i64 %.sroa.speculated.i.i, ptr %i.z, align 8
  store ptr null, ptr %i.m, align 8
  store i64 %.sroa.speculated.i.i, ptr %i.aa, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE5clearEv.exit, %bb.g, %_ZNSt6vectorIjSaIjEE7reserveEm.exit, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6mapbox6detail6EarcutIjED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not10.i.i.i, label %bb.b, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8       ; 4 uses
  %.pre12.i.i.i = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %.pre12.i.i.i, %.pre.i.i.i
  br i1 %i.h, label %bb.b, label %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i
  store ptr %.pre.i.i.i, ptr %i.f, align 8
  br label %bb.b

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.05.011.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.05.011.i.i.i, align 8
  %i.j = load i64, ptr %i.b, align 8
  %i.k = mul i64 %i.j, 72
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #18
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %._crit_edge.i.i.i, %bb.a
  %i.m = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPPN6mapbox6detail6EarcutIjE4NodeES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i ], [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  store i64 %.sroa.speculated.i.i.i, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.speculated.i.i.i, ptr %i.n, align 8
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #18
  br label %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit

_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6mapbox6detail6EarcutIjE10linkedListISt6vectorI10aiVector2tIfESaIS6_EEEEPNS2_4NodeERKT_b(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %1, align 8                ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 6 uses
  %.not65 = icmp eq ptr %i.h, %i.i
  br i1 %.not65, label %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 1)
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 4 ; 2 uses
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre73 = load float, ptr %.phi.trans.insert72, align 4 ; 2 uses
  %i.o = icmp eq i64 %i.l, 8
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %3 = phi float [ %.pre73, %.lr.ph.preheader.new ], [ %19, %.lr.ph ]
  %4 = phi float [ %.pre, %.lr.ph.preheader.new ], [ %16, %.lr.ph ]
  %.055 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %.04154 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 3 uses
  %.04154.a = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04154 ; 2 uses
  %6 = fpext float %4 to double
  %7 = load float, ptr %5, align 4                ; 2 uses
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %10 = load float, ptr %9, align 4               ; 2 uses
  %11 = fpext float %10 to double
  %12 = fpext float %3 to double
  %13 = fsub double %6, %8
  %14 = fadd double %11, %12
  %i.p = tail call double @llvm.fmuladd.f64(double %13, double %14, double %.055)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04154 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %15 = fpext float %7 to double
  %16 = load float, ptr %i.r, align 4             ; 3 uses
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %19 = load float, ptr %18, align 4              ; 3 uses
  %20 = fpext float %19 to double
  %21 = fpext float %10 to double
  %22 = fsub double %15, %17
  %23 = fadd double %20, %21
  %i.s = tail call double @llvm.fmuladd.f64(double %22, double %23, double %i.p) ; 3 uses
  %i.t = add nuw i64 %.04154, 2                   ; 2 uses
  %niter.next.1 = add i64 %.04154.a, 2            ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !39

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.u = and i64 %i.l, 8
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi float [ %.pre73, %.lr.ph.preheader ], [ %19, %._crit_edge.unr-lcssa ]
  %.epil.init89 = phi float [ %.pre, %.lr.ph.preheader ], [ %16, %._crit_edge.unr-lcssa ]
  %.055.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.s, %._crit_edge.unr-lcssa ]
  %.04154.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.t, %._crit_edge.unr-lcssa ]
  %lcmp.mod92 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04154.epil.init ; 2 uses
  %24 = fpext float %.epil.init89 to double
  %25 = load float, ptr %i.v, align 4
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %28 = load float, ptr %27, align 4
  %29 = fpext float %28 to double
  %30 = fpext float %.epil.init to double
  %31 = fsub double %24, %26
  %32 = fadd double %29, %30
  %i.w = tail call double @llvm.fmuladd.f64(double %31, double %32, double %.055.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa90 = phi double [ %i.s, %._crit_edge.unr-lcssa ], [ %i.w, %.lr.ph.epil.preheader ]
  %i.x = fcmp ule double %.lcssa90, 0.000000e+00
  %i.y = xor i1 %2, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br i1 %i.y, label %.lr.ph63, label %.lr.ph59

.lr.ph63:                                         ; preds = %._crit_edge, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit
  %.162 = phi i64 [ %i.ar, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit ], [ 0, %._crit_edge ] ; 3 uses
  %.04361 = phi ptr [ %i.aj, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit ], [ null, %._crit_edge ] ; 3 uses
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, %.162
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.162 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.af = trunc i64 %i.ac to i32
  store i32 %i.af, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ag = load float, ptr %i.ae, align 4
  store float %i.ag, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load float, ptr %i.ah, align 4
  store float %i.ai, ptr %i.f, align 4
  %i.aj = call noundef ptr @_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE9constructIJjffEEEPS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(49) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %.not.i = icmp eq ptr %.04361, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph63
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.aj, ptr %i.al, align 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit

bb.c:                                             ; preds = %.lr.ph63
  %i.am = getelementptr inbounds nuw i8, ptr %.04361, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %i.ak, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %.04361, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aj, ptr %i.aq, align 8
  store ptr %i.aj, ptr %i.am, align 8
  br label %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit

_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit: ; preds = %bb.b, %bb.c
  %i.ar = add nuw i64 %.162, 1                    ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ar, %i.m
  br i1 %exitcond71.not, label %.loopexit, label %.lr.ph63, !llvm.loop !40

.lr.ph59:                                         ; preds = %._crit_edge, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit49
  %.258 = phi i64 [ %i.as, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit49 ], [ %i.m, %._crit_edge ]
  %.14457 = phi ptr [ %i.bb, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit49 ], [ null, %._crit_edge ] ; 3 uses
  %i.as = add i64 %.258, -1                       ; 4 uses
  %i.at = load i64, ptr %i.z, align 8
  %i.au = add i64 %i.at, %i.as
  %i.av = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ax = trunc i64 %i.au to i32
  store i32 %i.ax, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ay = load float, ptr %i.aw, align 4
  store float %i.ay, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load float, ptr %i.az, align 4
  store float %i.ba, ptr %i.c, align 4
  %i.bb = call noundef ptr @_ZN6mapbox6detail6EarcutIjE10ObjectPoolINS2_4NodeESaIS4_EE9constructIJjffEEEPS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(49) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not.i48 = icmp eq ptr %.14457, null
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  br i1 %.not.i48, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.bb, ptr %i.bd, align 8
  store ptr %i.bb, ptr %i.bc, align 8
  br label %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit49

bb.e:                                             ; preds = %.lr.ph59
  %i.be = getelementptr inbounds nuw i8, ptr %.14457, i64 32 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  store ptr %i.bf, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %.14457, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr %i.bb, ptr %i.bi, align 8
  store ptr %i.bb, ptr %i.be, align 8
  br label %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit49

_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit49: ; preds = %bb.d, %bb.e
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %.loopexit, label %.lr.ph59, !llvm.loop !41

.loopexit:                                        ; preds = %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit49, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit
  %.245 = phi ptr [ %i.aj, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit ], [ %i.bb, %_ZN6mapbox6detail6EarcutIjE10insertNodeI10aiVector2tIfEEEPNS2_4NodeEmRKT_S7_.exit49 ] ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.245, i64 32 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.245, i64 8
  %i.bm = load double, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = fcmp oeq double %i.bm, %i.bo
  br i1 %i.bp, label %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit, label %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit.thread

_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit: ; preds = %.loopexit
  %i.bq = getelementptr inbounds nuw i8, ptr %.245, i64 16
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bt = load double, ptr %i.bs, align 8
  %i.bu = fcmp oeq double %i.br, %i.bt
  br i1 %i.bu, label %bb.f, label %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit.thread

bb.f:                                             ; preds = %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.245, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bw, ptr %i.bx, align 8
  %i.by = load ptr, ptr %i.bj, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.245, i64 48 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not.i50 = icmp eq ptr %i.cb, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.245, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  br i1 %.not.i50, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %.pre.i, ptr %i.cc, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %.not11.i = icmp eq ptr %.pre.i, null
  br i1 %.not11.i, label %_ZN6mapbox6detail6EarcutIjE10removeNodeEPNS2_4NodeE.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.cd = load ptr, ptr %i.ca, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48
  store ptr %i.cd, ptr %i.ce, align 8
  br label %_ZN6mapbox6detail6EarcutIjE10removeNodeEPNS2_4NodeE.exit

_ZN6mapbox6detail6EarcutIjE10removeNodeEPNS2_4NodeE.exit: ; preds = %._crit_edge.i, %bb.h
  %i.cf = load ptr, ptr %i.bj, align 8
  br label %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit.thread

_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit.thread: ; preds = %bb.a, %.loopexit, %_ZN6mapbox6detail6EarcutIjE10removeNodeEPNS2_4NodeE.exit, %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit
  %.3 = phi ptr [ %i.cf, %_ZN6mapbox6detail6EarcutIjE10removeNodeEPNS2_4NodeE.exit ], [ %.245, %_ZN6mapbox6detail6EarcutIjE6equalsEPKNS2_4NodeES5_.exit ], [ %.245, %.loopexit ], [ null, %bb.a ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = add i64 %i.ch, %i.m
  store i64 %i.ci, ptr %i.cg, align 8
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6mapbox6detail6EarcutIjE14eliminateHolesISt6vectorIS4_I10aiVector2tIfESaIS6_EESaIS8_EEEEPNS2_4NodeERKT_SC_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6mapbox6detail6EarcutIjE4NodeESt6vectorIS7_SaIS7_EEEEZNS5_14eliminateHolesIS9_IS9_I10aiVector2tIfESaISF_EESaISH_EEEES7_RKT_S7_EUlPKS6_SO_E_EvSK_SK_T0_.exit.thread

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN6mapbox6detail6EarcutIjE4NodeESaIS5_EE9push_backEOS5_.exit
  %.not.i.i = icmp eq ptr %.sroa.0.1, %.sroa.11.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6mapbox6detail6EarcutIjE4NodeESt6vectorIS7_SaIS7_EEEEZNS5_14eliminateHolesIS9_IS9_I10aiVector2tIfESaISF_EESaISH_EEEES7_RKT_S7_EUlPKS6_SO_E_EvSK_SK_T0_.exit.thread, label %bb.b

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6mapbox6detail6EarcutIjE4NodeESt6vectorIS7_SaIS7_EEEEZNS5_14eliminateHolesIS9_IS9_I10aiVector2tIfESaISF_EESaISH_EEEES7_RKT_S7_EUlPKS6_SO_E_EvSK_SK_T0_.exit.thread: ; preds = %._crit_edge, %bb.a
  %.sroa.17.0.lcssa110 = phi ptr [ %.sroa.17.1, %._crit_edge ], [ null, %bb.a ]
  %.sroa.0.0.lcssa107 = phi ptr [ %.sroa.0.1, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.pre87 = ptrtoint ptr %.sroa.0.0.lcssa107 to i64
  br label %._crit_edge75

bb.b:                                             ; preds = %._crit_edge
  %i.i = ptrtoint ptr %.sroa.11.1 to i64
  %i.j = ptrtoint ptr %.sroa.0.1 to i64           ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = xor i64 %i.n, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN6mapbox6detail6EarcutIjE4NodeESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_14eliminateHolesIS9_IS9_I10aiVector2tIfESaISH_EESaISJ_EEEES7_RKT_S7_EUlPKS6_SQ_E_EEEvSM_SM_T0_T1_(ptr %.sroa.0.1, ptr %.sroa.11.1, i64 noundef %i.o)
end_hunk_0
