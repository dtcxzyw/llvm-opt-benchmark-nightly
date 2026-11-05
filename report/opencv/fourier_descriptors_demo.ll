Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fourier_descriptors_demo?download=true
inline.NumInlined: 724
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

.noexc.i.i.invoke:                                ; preds = %bb.v, %bb.av, %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc.i.i.cont unwind label %.loopexit.split-lp876.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.cont:                                  ; preds = %.noexc.i.i.invoke
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.mf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #20
          to label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc373_crit_edge unwind label %.loopexit.split-lp876.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc373_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !22
  %.pre1552 = load ptr, ptr %i.s, align 8, !tbaa !22
  br label %.noexc373

.noexc373:                                        ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc373_crit_edge, %bb.g
  %i.mg = phi ptr [ %i.lz, %bb.g ], [ %.pre1552, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc373_crit_edge ] ; 3 uses
  %i.mh = phi ptr [ %i.ma, %bb.g ], [ %.pre, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc373_crit_edge ] ; 5 uses
  %i.mi = phi ptr [ null, %bb.g ], [ %i.mf, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc373_crit_edge ] ; 12 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.md ; 2 uses
  %i.mk = ptrtoaddr ptr %i.mh to i64              ; 3 uses
  %i.ml = ptrtoaddr ptr %i.mg to i64              ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.mh, %i.mg
  br i1 %.not7.i.i.i.i.i, label %.noexc83.i.thread, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc373
  %i.mm = ptrtoaddr ptr %i.mi to i64
  %i.mn = add i64 %i.ml, -8
  %i.mo = sub i64 %i.mn, %i.mk                    ; 2 uses
  %i.mp = lshr i64 %i.mo, 3
  %i.mq = add nuw nsw i64 %i.mp, 1                ; 2 uses
  %min.iters.check2270 = icmp ult i64 %i.mo, 24
  %i.mr = sub i64 %i.mk, %i.mm
  %diff.check2272 = icmp ugt i64 %i.mr, -32
  %or.cond2286 = or i1 %min.iters.check2270, %diff.check2272
  br i1 %or.cond2286, label %.lr.ph.i.i.i.i.i.preheader2301, label %vector.ph2273

vector.ph2273:                                    ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec2274 = and i64 %i.mq, 4611686018427387900 ; 3 uses
  %i.ms = shl i64 %n.vec2274, 3                   ; 2 uses
  %i.mt = getelementptr i8, ptr %i.mi, i64 %i.ms  ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mh, i64 %i.ms
  br label %vector.body2275

vector.body2275:                                  ; preds = %vector.body2275, %vector.ph2273
  %index2276 = phi i64 [ 0, %vector.ph2273 ], [ %index.next2281, %vector.body2275 ] ; 2 uses
  %i.mv = shl i64 %index2276, 3                   ; 2 uses
  %next.gep2277 = getelementptr i8, ptr %i.mi, i64 %i.mv ; 2 uses
  %next.gep2278 = getelementptr i8, ptr %i.mh, i64 %i.mv ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep2278, i64 16
  %wide.load2279 = load <2 x i64>, ptr %next.gep2278, align 4, !tbaa !11
  %wide.load2280 = load <2 x i64>, ptr %i.mw, align 4, !tbaa !11
  %i.mx = getelementptr i8, ptr %next.gep2277, i64 16
  store <2 x i64> %wide.load2279, ptr %next.gep2277, align 4, !tbaa !11
  store <2 x i64> %wide.load2280, ptr %i.mx, align 4, !tbaa !11
  %index.next2281 = add nuw i64 %index2276, 4     ; 2 uses
  %i.my = icmp eq i64 %index.next2281, %n.vec2274
  br i1 %i.my, label %middle.block2282, label %vector.body2275, !llvm.loop !57

middle.block2282:                                 ; preds = %vector.body2275
  %cmp.n2283 = icmp eq i64 %i.mq, %n.vec2274
  br i1 %cmp.n2283, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader2301

.lr.ph.i.i.i.i.i.preheader2301:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block2282
  %.09.i.i.i.i.i.ph = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.mt, %middle.block2282 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.mh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.mu, %middle.block2282 ]
  br label %.lr.ph.i.i.i.i.i

.noexc83.i.thread:                                ; preds = %.noexc373
  %i.mz = load i32, ptr %8, align 16, !tbaa !108
  %i.na = ptrtoint ptr %i.mi to i64
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader2301, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader2301 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader2301 ] ; 2 uses
  %i.nb = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !11
  store i64 %i.nb, ptr %.09.i.i.i.i.i, align 4, !tbaa !11
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nc, %i.mg
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !58

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block2282
  %.lcssa = phi ptr [ %i.mt, %middle.block2282 ], [ %i.nd, %.lr.ph.i.i.i.i.i ]
  %i.ne = load i32, ptr %8, align 16, !tbaa !108
  %i.nf = ptrtoint ptr %.lcssa to i64
  %i.ng = ptrtoint ptr %i.mi to i64               ; 3 uses
  %i.nh = sub i64 %i.nf, %i.ng                    ; 4 uses
  %i.ni = icmp ugt i64 %i.nh, 9223372036854775800
  br i1 %i.ni, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !21

.noexc.i.i.i:                                     ; preds = %.loopexit
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc380 unwind label %.loopexit.split-lp889.loopexit.split-lp

.noexc380:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %.loopexit
  %i.nj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nh) #20
          to label %.noexc83.i unwind label %.loopexit.split-lp889.loopexit.split-lp ; 4 uses

.noexc83.i:                                       ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.nk = add i64 %i.ml, -8
  %i.nl = sub i64 %i.nk, %i.mk
  %i.nm = and i64 %i.nl, -8                       ; 2 uses
  %i.nn = add i64 %i.nm, 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nj, ptr align 4 %i.mi, i64 %i.nn, i1 false), !tbaa !11, !noalias !126
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nh
  %scevgep = getelementptr i8, ptr %i.nj, i64 8
  %scevgep1547 = getelementptr i8, ptr %scevgep, i64 %i.nm
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i: ; preds = %.noexc83.i, %.noexc83.i.thread
  %i.np = phi ptr [ null, %.noexc83.i.thread ], [ %i.no, %.noexc83.i ]
  %i.nq = phi ptr [ null, %.noexc83.i.thread ], [ %i.nj, %.noexc83.i ] ; 10 uses
  %.in = phi i32 [ %i.mz, %.noexc83.i.thread ], [ %i.ne, %.noexc83.i ] ; 2 uses
  %i.nr = phi i64 [ %i.na, %.noexc83.i.thread ], [ %i.ng, %.noexc83.i ] ; 4 uses
  %i.ns = phi i64 [ 0, %.noexc83.i.thread ], [ %i.nh, %.noexc83.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i377 = phi ptr [ null, %.noexc83.i.thread ], [ %scevgep1547, %.noexc83.i ] ; 2 uses
  %i.nt = sitofp i32 %.in to double               ; 3 uses
  %i.nu = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i377 to i64
  %i.nv = ptrtoint ptr %i.nq to i64
  %i.nw = sub i64 %i.nu, %i.nv
  %i.nx = lshr exact i64 %i.nw, 3                 ; 3 uses
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = icmp sgt i32 %i.ny, 0                   ; 2 uses
  br i1 %i.nz, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i
  %wide.trip.count.i = and i64 %i.nx, 2147483647
  %i.oa = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i
  %.sroa.0200.0.lcssa.i = phi i64 [ 4294967295, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i ], [ %i.ov, %.lr.ph.i ]
  %i.oc = icmp eq i32 %.in, 0
  br i1 %i.oc, label %_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i378

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.sroa.0200.0256.i = phi i64 [ 4294967295, %.lr.ph.preheader.i ], [ %i.ov, %.lr.ph.i ] ; 2 uses
  %i.od = and i64 %.sroa.0200.0256.i, 4294967295
  %i.oe = mul nuw i64 %i.od, 4164903690
  %i.of = lshr i64 %.sroa.0200.0256.i, 32
  %i.og = add nuw i64 %i.oe, %i.of                ; 3 uses
  %i.oh = shl i64 %i.og, 32
  %i.oi = and i64 %i.og, 4294967295
  %i.oj = mul nuw i64 %i.oi, 4164903690
  %i.ok = lshr i64 %i.og, 32
  %i.ol = add nuw i64 %i.oj, %i.ok                ; 2 uses
  %i.om = and i64 %i.ol, 4294967295               ; 2 uses
  %i.on = or disjoint i64 %i.om, %i.oh
  %i.oo = mul nuw i64 %i.om, 4164903690
  %i.op = lshr i64 %i.ol, 32
  %i.oq = add nuw i64 %i.oo, %i.op                ; 3 uses
  %i.or = shl i64 %i.oq, 32
  %i.os = and i64 %i.oq, 4294967295
  %i.ot = mul nuw i64 %i.os, 4164903690
  %i.ou = lshr i64 %i.oq, 32
  %i.ov = add nuw i64 %i.ot, %i.ou                ; 3 uses
  %i.ow = and i64 %i.ov, 4294967295
  %i.ox = or disjoint i64 %i.ow, %i.or
  %i.oy = insertelement <2 x i64> poison, i64 %i.on, i64 0
  %i.oz = insertelement <2 x i64> %i.oy, i64 %i.ox, i64 1
  %i.pa = uitofp <2 x i64> %i.oz to <2 x double>
  %i.pb = fmul nnan <2 x double> %i.pa, splat (double f0x3BF0000000000000)
  %i.pc = call nnan <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00))
  %i.pd = fmul <2 x double> %i.pc, %i.ob          ; 2 uses
  %i.pe = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.pd)
  %i.pf = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.pf)
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.i ; 3 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !128, !noalias !126
  %i.pj = add nsw i32 %i.pi, %i.pe
  store i32 %i.pj, ptr %i.ph, align 4, !tbaa !128, !noalias !126
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 4 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !129, !noalias !126
  %i.pm = add nsw i32 %i.pl, %i.pg
  store i32 %i.pm, ptr %i.pk, align 4, !tbaa !129, !noalias !126
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !61

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i378: ; preds = %._crit_edge.i
  %i.pn = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %bb.i unwind label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit131.i, !noalias !126 ; 4 uses

bb.i:                                             ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i378
  %i.po = load i64, ptr %i.nq, align 4, !noalias !126
  store i64 %i.po, ptr %i.pn, align 4, !tbaa !11, !noalias !126
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 4 uses
  br i1 %i.nz, label %.lr.ph287.preheader.i, label %._crit_edge288.i

.lr.ph287.preheader.i:                            ; preds = %bb.i
  %i.pq = and i64 %i.nx, 2147483647
  %79 = insertelement <2 x double> <double f0x401921FB54442D18, double poison>, double %i.nt, i64 1
  br label %.lr.ph287.i

.loopexit.i:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i, %.lr.ph287.i
  %.sroa.0187.1.lcssa.i = phi ptr [ %.sroa.0187.0277.i, %.lr.ph287.i ], [ %.sroa.0187.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 2 uses
  %.sroa.12.1.lcssa.i = phi ptr [ %.sroa.12.0278.i, %.lr.ph287.i ], [ %.sroa.12.3.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0279.i, %.lr.ph287.i ], [ %.sroa.19.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 2 uses
  %.sroa.0200.2.lcssa.i = phi i64 [ %.sroa.0200.1280.i, %.lr.ph287.i ], [ %i.rk, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ]
  br i1 %.not331.i, label %._crit_edge288.i, label %.lr.ph287.i, !llvm.loop !62

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit131.i: ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i378
  %i.pr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i132.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i132.i, label %.body382, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.thread222.i

.lr.ph287.i:                                      ; preds = %.loopexit.i, %.lr.ph287.preheader.i
  %indvars.iv314.i = phi i64 [ 0, %.lr.ph287.preheader.i ], [ %indvars.iv.next315.i, %.loopexit.i ] ; 2 uses
  %.sroa.0200.1280.i = phi i64 [ %.sroa.0200.0.lcssa.i, %.lr.ph287.preheader.i ], [ %.sroa.0200.2.lcssa.i, %.loopexit.i ] ; 2 uses
  %.sroa.19.0279.i = phi ptr [ %i.pp, %.lr.ph287.preheader.i ], [ %.sroa.19.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.sroa.12.0278.i = phi ptr [ %i.pp, %.lr.ph287.preheader.i ], [ %.sroa.12.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.sroa.0187.0277.i = phi ptr [ %i.pn, %.lr.ph287.preheader.i ], [ %.sroa.0187.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 3 uses
  %.not331.i = icmp eq i64 %indvars.iv.next315.i, %i.pq ; 2 uses
  %i.ps = select i1 %.not331.i, i64 0, i64 %indvars.iv.next315.i
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.ps
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv314.i ; 2 uses
  %i.pv = load <2 x i32>, ptr %i.pt, align 4, !tbaa !11, !noalias !126
  %i.pw = load <2 x i32>, ptr %i.pu, align 4, !tbaa !11, !noalias !126
  %i.px = sub nsw <2 x i32> %i.pv, %i.pw
  %i.py = sitofp <2 x i32> %i.px to <2 x double>  ; 3 uses
  %i.pz = extractelement <2 x double> %i.py, i64 1 ; 3 uses
  %i.qa = fmul double %i.pz, %i.pz
  %i.qb = extractelement <2 x double> %i.py, i64 0 ; 3 uses
  %i.qc = call double @llvm.fmuladd.f64(double %i.qb, double %i.qb, double %i.qa)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.qc)
  %i.qd = fptosi double %sqrt.i.i to i32          ; 3 uses
  %i.qe = call double @atan2(double noundef %i.pz, double noundef %i.qb) #19, !noalias !126
  %i.qf = icmp samesign ugt i32 %i.qd, 1
  br i1 %i.qf, label %.preheader.lr.ph.i, label %.loopexit.i

.preheader.lr.ph.i:                               ; preds = %.lr.ph287.i
  %i.qg = uitofp nneg i32 %i.qd to double         ; 2 uses
  %i.qh = fdiv double %i.qg, %i.nt
  %i.qi = fptosi double %i.qh to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.qi, i32 1)
  %i.qj = insertelement <2 x double> poison, double %i.qg, i64 0
  %i.qk = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i, %.preheader.lr.ph.i
  %.0268.i = phi i32 [ 1, %.preheader.lr.ph.i ], [ %i.sz, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 2 uses
  %.sroa.0200.2263.i = phi i64 [ %.sroa.0200.1280.i, %.preheader.lr.ph.i ], [ %i.rk, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ]
  %.sroa.19.1262.i = phi ptr [ %.sroa.19.0279.i, %.preheader.lr.ph.i ], [ %.sroa.19.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 5 uses
  %.sroa.12.1261.i = phi ptr [ %.sroa.12.0278.i, %.preheader.lr.ph.i ], [ %.sroa.12.3.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 3 uses
  %.sroa.0187.1260.i = phi ptr [ %.sroa.0187.0277.i, %.preheader.lr.ph.i ], [ %.sroa.0187.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 8 uses
  %i.ql = uitofp nneg i32 %.0268.i to double
  %i.qm = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qn = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qo = fmul nnan <2 x double> %i.qn, %i.py
  %i.qp = fdiv <2 x double> %i.qo, %i.qk
  %i.qq = load <2 x i32>, ptr %i.pu, align 4, !tbaa !11, !noalias !126
  %i.qr = sitofp <2 x i32> %i.qq to <2 x double>
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i
  %.sroa.0200.3.i = phi i64 [ %i.rk, %bb.j ], [ %.sroa.0200.2263.i, %.preheader.i ] ; 2 uses
  %i.qs = and i64 %.sroa.0200.3.i, 4294967295
  %i.qt = mul nuw i64 %i.qs, 4164903690
  %i.qu = lshr i64 %.sroa.0200.3.i, 32
  %i.qv = add nuw i64 %i.qt, %i.qu                ; 3 uses
  %i.qw = shl i64 %i.qv, 32
  %i.qx = and i64 %i.qv, 4294967295
  %i.qy = mul nuw i64 %i.qx, 4164903690
  %i.qz = lshr i64 %i.qv, 32
  %i.ra = add nuw i64 %i.qy, %i.qz                ; 2 uses
  %i.rb = and i64 %i.ra, 4294967295               ; 2 uses
  %i.rc = or disjoint i64 %i.rb, %i.qw
  %i.rd = mul nuw i64 %i.rb, 4164903690
  %i.re = lshr i64 %i.ra, 32
  %i.rf = add nuw i64 %i.rd, %i.re                ; 3 uses
  %i.rg = shl i64 %i.rf, 32
  %i.rh = and i64 %i.rf, 4294967295
  %i.ri = mul nuw i64 %i.rh, 4164903690
  %i.rj = lshr i64 %i.rf, 32
  %i.rk = add nuw i64 %i.ri, %i.rj                ; 4 uses
  %i.rl = and i64 %i.rk, 4294967295
  %i.rm = or disjoint i64 %i.rl, %i.rg
  %80 = insertelement <2 x i64> poison, i64 %i.rm, i64 0
  %81 = insertelement <2 x i64> %80, i64 %i.rc, i64 1
  %82 = uitofp <2 x i64> %81 to <2 x double>
  %83 = fmul nnan <2 x double> %82, splat (double f0x3BF0000000000000)
  %84 = fmul <2 x double> %83, %79                ; 2 uses
  %85 = extractelement <2 x double> %84, i64 0
  %86 = fadd double %i.qe, %85                    ; 2 uses
  %i.rn = call double @cos(double noundef %86) #19, !noalias !126
  %87 = call double @sin(double noundef %86) #19, !noalias !126
  %88 = shufflevector <2 x double> %84, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ro = insertelement <2 x double> poison, double %i.rn, i64 0
  %i.rp = insertelement <2 x double> %i.ro, double %87, i64 1
  %i.rq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %88, <2 x double> %i.rp, <2 x double> %i.qp)
  %i.rr = fadd <2 x double> %i.rq, %i.qr          ; 2 uses
  %i.rs = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.rr) ; 3 uses
  %i.rt = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ru = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.rt) ; 2 uses
  %i.rv = or i32 %i.ru, %i.rs
  %.not.i = icmp sgt i32 %i.rv, -1
  br i1 %.not.i, label %bb.k, label %bb.j, !llvm.loop !63

bb.k:                                             ; preds = %bb.j
  %.sroa.2.0.insert.ext.i97.le.i = zext i32 %i.ru to i64
  %.sroa.2.0.insert.shift.i98.le.i = shl nuw i64 %.sroa.2.0.insert.ext.i97.le.i, 32 ; 2 uses
  %.not.i101.i = icmp eq ptr %.sroa.12.1261.i, %.sroa.19.1262.i
  br i1 %.not.i101.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0139.0.insert.ext.i = zext nneg i32 %i.rs to i64
  %.sroa.0139.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i98.le.i, %.sroa.0139.0.insert.ext.i
  store i64 %.sroa.0139.0.insert.insert.i, ptr %.sroa.12.1261.i, align 4, !tbaa !11, !noalias !126
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i

bb.m:                                             ; preds = %bb.k
  %i.rw = ptrtoint ptr %.sroa.19.1262.i to i64    ; 2 uses
  %i.rx = ptrtoint ptr %.sroa.0187.1260.i to i64  ; 3 uses
  %i.ry = sub i64 %i.rw, %i.rx                    ; 5 uses
  %i.rz = icmp eq i64 %i.ry, 9223372036854775800
  br i1 %i.rz, label %bb.n, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i102.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.noexc114.i unwind label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !126

.noexc114.i:                                      ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i102.i: ; preds = %bb.m
  %i.sa = ashr exact i64 %i.ry, 3                 ; 3 uses
  %.sroa.speculated.i.i.i103.i = call i64 @llvm.umax.i64(i64 %i.sa, i64 1)
  %i.sb = add nsw i64 %.sroa.speculated.i.i.i103.i, %i.sa ; 2 uses
  %i.sc = icmp ult i64 %i.sb, %i.sa
  %i.sd = call i64 @llvm.umin.i64(i64 %i.sb, i64 1152921504606846975)
  %i.se = select i1 %i.sc, i64 1152921504606846975, i64 %i.sd ; 3 uses
  %.not.i.i.i104.i = icmp ne i64 %i.se, 0
  call void @llvm.assume(i1 %.not.i.i.i104.i)
  %i.sf = shl nuw nsw i64 %i.se, 3
  %i.sg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sf) #20
          to label %.noexc115.i unwind label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !126 ; 8 uses

.noexc115.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i102.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.ry
  %.sroa.0139.0.insert.ext143.i = zext nneg i32 %i.rs to i64
  %.sroa.0139.0.insert.insert145.i = or disjoint i64 %.sroa.2.0.insert.shift.i98.le.i, %.sroa.0139.0.insert.ext143.i
  store i64 %.sroa.0139.0.insert.insert145.i, ptr %i.sh, align 4, !tbaa !11, !noalias !126
  %.not10.i.i.i.i.i105.i = icmp eq ptr %.sroa.0187.1260.i, %.sroa.19.1262.i
  br i1 %.not10.i.i.i.i.i105.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i, label %.lr.ph.i.i.i.i.i106.i.preheader

.lr.ph.i.i.i.i.i106.i.preheader:                  ; preds = %.noexc115.i
  %i.si = ptrtoaddr ptr %i.sg to i64
  %i.sj = add i64 %i.rw, -8
  %i.sk = sub i64 %i.sj, %i.rx                    ; 2 uses
  %i.sl = lshr i64 %i.sk, 3
  %i.sm = add nuw nsw i64 %i.sl, 1                ; 2 uses
  %min.iters.check2251 = icmp ult i64 %i.sk, 24
  %i.sn = sub i64 %i.rx, %i.si
  %diff.check2253 = icmp ugt i64 %i.sn, -32
  %or.cond2287 = or i1 %min.iters.check2251, %diff.check2253
  br i1 %or.cond2287, label %.lr.ph.i.i.i.i.i106.i.preheader2291, label %vector.ph2254

vector.ph2254:                                    ; preds = %.lr.ph.i.i.i.i.i106.i.preheader
  %n.vec2255 = and i64 %i.sm, 4611686018427387900 ; 3 uses
  %i.so = shl i64 %n.vec2255, 3                   ; 2 uses
  %i.sp = getelementptr i8, ptr %i.sg, i64 %i.so  ; 2 uses
  %i.sq = getelementptr i8, ptr %.sroa.0187.1260.i, i64 %i.so
  br label %vector.body2256

vector.body2256:                                  ; preds = %vector.body2256, %vector.ph2254
  %index2257 = phi i64 [ 0, %vector.ph2254 ], [ %index.next2262, %vector.body2256 ] ; 2 uses
  %i.sr = shl i64 %index2257, 3                   ; 2 uses
  %next.gep2258 = getelementptr i8, ptr %i.sg, i64 %i.sr ; 2 uses
  %next.gep2259 = getelementptr i8, ptr %.sroa.0187.1260.i, i64 %i.sr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ss = getelementptr i8, ptr %next.gep2259, i64 16
  %wide.load2260 = load <2 x i64>, ptr %next.gep2259, align 4, !tbaa !11, !alias.scope !131, !noalias !126
  %wide.load2261 = load <2 x i64>, ptr %i.ss, align 4, !tbaa !11, !alias.scope !131, !noalias !126
  %i.st = getelementptr i8, ptr %next.gep2258, i64 16
  store <2 x i64> %wide.load2260, ptr %next.gep2258, align 4, !tbaa !11, !alias.scope !130, !noalias !126
  store <2 x i64> %wide.load2261, ptr %i.st, align 4, !tbaa !11, !alias.scope !130, !noalias !126
  %index.next2262 = add nuw i64 %index2257, 4     ; 2 uses
  %i.su = icmp eq i64 %index.next2262, %n.vec2255
  br i1 %i.su, label %middle.block2263, label %vector.body2256, !llvm.loop !67

middle.block2263:                                 ; preds = %vector.body2256
  %cmp.n2264 = icmp eq i64 %i.sm, %n.vec2255
  br i1 %cmp.n2264, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i, label %.lr.ph.i.i.i.i.i106.i.preheader2291

.lr.ph.i.i.i.i.i106.i.preheader2291:              ; preds = %.lr.ph.i.i.i.i.i106.i.preheader, %middle.block2263
  %.012.i.i.i.i.i107.i.ph = phi ptr [ %i.sg, %.lr.ph.i.i.i.i.i106.i.preheader ], [ %i.sp, %middle.block2263 ]
  %.0911.i.i.i.i.i108.i.ph = phi ptr [ %.sroa.0187.1260.i, %.lr.ph.i.i.i.i.i106.i.preheader ], [ %i.sq, %middle.block2263 ]
  br label %.lr.ph.i.i.i.i.i106.i

.lr.ph.i.i.i.i.i106.i:                            ; preds = %.lr.ph.i.i.i.i.i106.i.preheader2291, %.lr.ph.i.i.i.i.i106.i
  %.012.i.i.i.i.i107.i = phi ptr [ %i.sx, %.lr.ph.i.i.i.i.i106.i ], [ %.012.i.i.i.i.i107.i.ph, %.lr.ph.i.i.i.i.i106.i.preheader2291 ] ; 2 uses
  %.0911.i.i.i.i.i108.i = phi ptr [ %i.sw, %.lr.ph.i.i.i.i.i106.i ], [ %.0911.i.i.i.i.i108.i.ph, %.lr.ph.i.i.i.i.i106.i.preheader2291 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.sv = load i64, ptr %.0911.i.i.i.i.i108.i, align 4, !tbaa !11, !alias.scope !131, !noalias !126
  store i64 %i.sv, ptr %.012.i.i.i.i.i107.i, align 4, !tbaa !11, !alias.scope !130, !noalias !126
  %i.sw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i108.i, i64 8 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i107.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i109.i = icmp eq ptr %i.sw, %.sroa.19.1262.i
  br i1 %.not.i.i.i.i.i109.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i, label %.lr.ph.i.i.i.i.i106.i, !llvm.loop !68

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i: ; preds = %.lr.ph.i.i.i.i.i106.i, %middle.block2263, %.noexc115.i
  %.0.lcssa.i.i.i.i.i111.i = phi ptr [ %i.sg, %.noexc115.i ], [ %i.sp, %middle.block2263 ], [ %i.sx, %.lr.ph.i.i.i.i.i106.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.1260.i, i64 noundef %i.ry) #21, !noalias !126
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.se
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i, %bb.l
  %.sroa.0187.6.i = phi ptr [ %i.sg, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i ], [ %.sroa.0187.1260.i, %bb.l ] ; 2 uses
  %.0.lcssa.i.i.i.i.i111.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i111.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i ], [ %.sroa.12.1261.i, %bb.l ]
  %.sroa.19.6.i = phi ptr [ %i.sy, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i ], [ %.sroa.19.1262.i, %bb.l ] ; 2 uses
  %.sroa.12.3.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i111.pn.i, i64 8 ; 2 uses
  %i.sz = add nuw nsw i32 %.0268.i, %.sroa.speculated.i ; 2 uses
  %i.ta = icmp samesign ult i32 %i.sz, %i.qd
  br i1 %i.ta, label %.preheader.i, label %.loopexit.i, !llvm.loop !69

._crit_edge288.i:                                 ; preds = %.loopexit.i, %bb.i
  %.sroa.0187.0.lcssa.i = phi ptr [ %i.pn, %bb.i ], [ %.sroa.0187.1.lcssa.i, %.loopexit.i ]
  %.sroa.12.0.lcssa.i = phi ptr [ %i.pp, %bb.i ], [ %.sroa.12.1.lcssa.i, %.loopexit.i ]
  %.sroa.19.0.lcssa.i = phi ptr [ %i.pp, %bb.i ], [ %.sroa.19.1.lcssa.i, %.loopexit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.ns) #21, !noalias !126
  br label %_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.thread222.i: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit131.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.ns) #21, !noalias !126
  br label %.body382

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i102.i, %bb.n
  %lpad.loopexit.split-lp2293 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.ns) #21, !noalias !126
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.1260.i, i64 noundef %i.ry) #21, !noalias !126
  br label %.body382

_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit: ; preds = %._crit_edge288.i, %._crit_edge.i
  %.sroa.11.0 = phi ptr [ %.sroa.19.0.lcssa.i, %._crit_edge288.i ], [ %i.np, %._crit_edge.i ]
  %.sroa.8785.0 = phi ptr [ %.sroa.12.0.lcssa.i, %._crit_edge288.i ], [ %.0.lcssa.i.i.i.i.i.i377, %._crit_edge.i ]
  %.sroa.0783.0 = phi ptr [ %.sroa.0187.0.lcssa.i, %._crit_edge288.i ], [ %i.nq, %._crit_edge.i ]
  %i.tb = load ptr, ptr %5, align 8, !tbaa !15    ; 3 uses
  %i.tc = load ptr, ptr %i.gr, align 8, !tbaa !17
  store ptr %.sroa.0783.0, ptr %5, align 8, !tbaa !15
  store ptr %.sroa.8785.0, ptr %i.gq, align 8, !tbaa !16
  store ptr %.sroa.11.0, ptr %i.gr, align 8, !tbaa !17
  %.not.i.i.i.i.i384 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i.i.i384, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit
  %i.td = ptrtoint ptr %i.tc to i64
  %i.te = ptrtoint ptr %i.tb to i64
  %i.tf = sub i64 %i.td, %i.te
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef %i.tf) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.o, %_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit
  %.not.i.i.i385 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i385, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit
  %i.tg = ptrtoint ptr %i.mj to i64
  %i.th = sub i64 %i.tg, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.th) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store i32 0, ptr %i.gs, align 8, !tbaa !132
  store i32 0, ptr %i.gt, align 4, !tbaa !133
  %i.ti = load ptr, ptr %i.gq, align 8, !tbaa !16
  %i.tj = load ptr, ptr %5, align 8, !tbaa !15
  %i.tk = ptrtoint ptr %i.ti to i64
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = sub i64 %i.tk, %i.tl
  %i.tn = ashr exact i64 %i.tm, 3                 ; 2 uses
  %.not.i387 = icmp ugt i64 %i.tn, 2147483647
  br i1 %.not.i387, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.tn, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #22
          to label %.noexc388 unwind label %bb.an

.noexc388:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386
  store i32 -2130509788, ptr %25, align 8, !tbaa !124
  store ptr %5, ptr %i.gu, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store i64 0, ptr %i.gw, align 8
end_hunk_0
