Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fourier_descriptors_demo?download=true
inline.NumInlined: 724
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mt, ptr align 4 %i.mf, i64 %i.mx, i1 false), !tbaa !12, !noalias !116
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mr
  %scevgep = getelementptr i8, ptr %i.mt, i64 8
  %scevgep1547 = getelementptr i8, ptr %scevgep, i64 %i.mw
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i: ; preds = %.noexc83.i, %.noexc83.i.thread
  %i.mz = phi ptr [ null, %.noexc83.i.thread ], [ %i.my, %.noexc83.i ]
  %i.na = phi ptr [ null, %.noexc83.i.thread ], [ %i.mt, %.noexc83.i ] ; 10 uses
  %.in = phi i32 [ %i.mj, %.noexc83.i.thread ], [ %i.mo, %.noexc83.i ] ; 2 uses
  %i.nb = phi i64 [ %i.mk, %.noexc83.i.thread ], [ %i.mq, %.noexc83.i ] ; 4 uses
  %i.nc = phi i64 [ 0, %.noexc83.i.thread ], [ %i.mr, %.noexc83.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i377 = phi ptr [ null, %.noexc83.i.thread ], [ %scevgep1547, %.noexc83.i ] ; 2 uses
  %i.nd = sitofp i32 %.in to double               ; 3 uses
  %i.ne = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i377 to i64
  %i.nf = ptrtoint ptr %i.na to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = lshr exact i64 %i.ng, 3                 ; 3 uses
  %i.ni = trunc i64 %i.nh to i32
  %i.nj = icmp sgt i32 %i.ni, 0                   ; 2 uses
  br i1 %i.nj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i
  %wide.trip.count.i = and i64 %i.nh, 2147483647
  %i.nk = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i
  %.sroa.0200.0.lcssa.i = phi i64 [ 4294967295, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEC2ERKS4_.exit.i ], [ %i.of, %.lr.ph.i ]
  %i.nm = icmp eq i32 %.in, 0
  br i1 %i.nm, label %_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i378

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.sroa.0200.0256.i = phi i64 [ 4294967295, %.lr.ph.preheader.i ], [ %i.of, %.lr.ph.i ] ; 2 uses
  %i.nn = and i64 %.sroa.0200.0256.i, 4294967295
  %i.no = mul nuw i64 %i.nn, 4164903690
  %i.np = lshr i64 %.sroa.0200.0256.i, 32
  %i.nq = add nuw i64 %i.no, %i.np                ; 3 uses
  %i.nr = shl i64 %i.nq, 32
  %i.ns = and i64 %i.nq, 4294967295
  %i.nt = mul nuw i64 %i.ns, 4164903690
  %i.nu = lshr i64 %i.nq, 32
  %i.nv = add nuw i64 %i.nt, %i.nu                ; 2 uses
  %i.nw = and i64 %i.nv, 4294967295               ; 2 uses
  %i.nx = or disjoint i64 %i.nw, %i.nr
  %i.ny = mul nuw i64 %i.nw, 4164903690
  %i.nz = lshr i64 %i.nv, 32
  %i.oa = add nuw i64 %i.ny, %i.nz                ; 3 uses
  %i.ob = shl i64 %i.oa, 32
  %i.oc = and i64 %i.oa, 4294967295
  %i.od = mul nuw i64 %i.oc, 4164903690
  %i.oe = lshr i64 %i.oa, 32
  %i.of = add nuw i64 %i.od, %i.oe                ; 3 uses
  %i.og = and i64 %i.of, 4294967295
  %i.oh = or disjoint i64 %i.og, %i.ob
  %i.oi = insertelement <2 x i64> poison, i64 %i.nx, i64 0
  %i.oj = insertelement <2 x i64> %i.oi, i64 %i.oh, i64 1
  %i.ok = uitofp <2 x i64> %i.oj to <2 x double>
  %i.ol = fmul nnan <2 x double> %i.ok, splat (double f0x3BF0000000000000)
  %i.om = call nnan <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ol, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00))
  %i.on = fmul <2 x double> %i.om, %i.nl          ; 2 uses
  %i.oo = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.on)
  %i.op = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.oq = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.op)
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv.i ; 3 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !118, !noalias !116
  %i.ot = add nsw i32 %i.os, %i.oo
  store i32 %i.ot, ptr %i.or, align 4, !tbaa !118, !noalias !116
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !119, !noalias !116
  %i.ow = add nsw i32 %i.ov, %i.oq
  store i32 %i.ow, ptr %i.ou, align 4, !tbaa !119, !noalias !116
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !58

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i378: ; preds = %._crit_edge.i
  %i.ox = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %bb.j unwind label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit131.i, !noalias !116 ; 4 uses

bb.j:                                             ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i378
  %i.oy = load i64, ptr %i.na, align 4, !noalias !116
  store i64 %i.oy, ptr %i.ox, align 4, !tbaa !12, !noalias !116
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 4 uses
  br i1 %i.nj, label %.lr.ph287.preheader.i, label %._crit_edge288.i

.lr.ph287.preheader.i:                            ; preds = %bb.j
  %i.pa = and i64 %i.nh, 2147483647
  br label %.lr.ph287.i

.loopexit.i:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i, %.lr.ph287.i
  %.sroa.0187.1.lcssa.i = phi ptr [ %.sroa.0187.0277.i, %.lr.ph287.i ], [ %.sroa.0187.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 2 uses
  %.sroa.12.1.lcssa.i = phi ptr [ %.sroa.12.0278.i, %.lr.ph287.i ], [ %.sroa.12.3.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 2 uses
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0279.i, %.lr.ph287.i ], [ %.sroa.19.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 2 uses
  %.sroa.0200.2.lcssa.i = phi i64 [ %.sroa.0200.1280.i, %.lr.ph287.i ], [ %i.qw, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ]
  br i1 %.not331.i, label %._crit_edge288.i, label %.lr.ph287.i, !llvm.loop !59

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit131.i: ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i378
  %i.pb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i132.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i132.i, label %.body382, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.thread222.i

.lr.ph287.i:                                      ; preds = %.loopexit.i, %.lr.ph287.preheader.i
  %indvars.iv314.i = phi i64 [ 0, %.lr.ph287.preheader.i ], [ %indvars.iv.next315.i, %.loopexit.i ] ; 2 uses
  %.sroa.0200.1280.i = phi i64 [ %.sroa.0200.0.lcssa.i, %.lr.ph287.preheader.i ], [ %.sroa.0200.2.lcssa.i, %.loopexit.i ] ; 2 uses
  %.sroa.19.0279.i = phi ptr [ %i.oz, %.lr.ph287.preheader.i ], [ %.sroa.19.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.sroa.12.0278.i = phi ptr [ %i.oz, %.lr.ph287.preheader.i ], [ %.sroa.12.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.sroa.0187.0277.i = phi ptr [ %i.ox, %.lr.ph287.preheader.i ], [ %.sroa.0187.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 3 uses
  %.not331.i = icmp eq i64 %indvars.iv.next315.i, %i.pa ; 2 uses
  %i.pc = select i1 %.not331.i, i64 0, i64 %indvars.iv.next315.i
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.pc
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv314.i ; 2 uses
  %i.pf = load <2 x i32>, ptr %i.pd, align 4, !tbaa !12, !noalias !116
  %i.pg = load <2 x i32>, ptr %i.pe, align 4, !tbaa !12, !noalias !116
  %i.ph = sub nsw <2 x i32> %i.pf, %i.pg
  %i.pi = sitofp <2 x i32> %i.ph to <2 x double>  ; 3 uses
  %i.pj = extractelement <2 x double> %i.pi, i64 1 ; 3 uses
  %i.pk = fmul double %i.pj, %i.pj
  %i.pl = extractelement <2 x double> %i.pi, i64 0 ; 3 uses
  %i.pm = call double @llvm.fmuladd.f64(double %i.pl, double %i.pl, double %i.pk)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.pm)
  %i.pn = fptosi double %sqrt.i to i32            ; 3 uses
  %i.po = call double @atan2(double noundef %i.pj, double noundef %i.pl) #19, !noalias !116
  %i.pp = icmp samesign ugt i32 %i.pn, 1
  br i1 %i.pp, label %.preheader.lr.ph.i, label %.loopexit.i

.preheader.lr.ph.i:                               ; preds = %.lr.ph287.i
  %i.pq = uitofp nneg i32 %i.pn to double         ; 2 uses
  %i.pr = fdiv double %i.pq, %i.nd
  %i.ps = fptosi double %i.pr to i32
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ps, i32 1)
  %i.pt = insertelement <2 x double> poison, double %i.pq, i64 0
  %i.pu = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i, %.preheader.lr.ph.i
  %.0268.i = phi i32 [ 1, %.preheader.lr.ph.i ], [ %i.sg, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 2 uses
  %.sroa.0200.2263.i = phi i64 [ %.sroa.0200.1280.i, %.preheader.lr.ph.i ], [ %i.qw, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ]
  %.sroa.19.1262.i = phi ptr [ %.sroa.19.0279.i, %.preheader.lr.ph.i ], [ %.sroa.19.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 5 uses
  %.sroa.12.1261.i = phi ptr [ %.sroa.12.0278.i, %.preheader.lr.ph.i ], [ %.sroa.12.3.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 3 uses
  %.sroa.0187.1260.i = phi ptr [ %.sroa.0187.0277.i, %.preheader.lr.ph.i ], [ %.sroa.0187.6.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i ] ; 6 uses
  %i.pv = uitofp nneg i32 %.0268.i to double
  %i.pw = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.px = shufflevector <2 x double> %i.pw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.py = fmul nnan <2 x double> %i.px, %i.pi
  %i.pz = fdiv <2 x double> %i.py, %i.pu
  %i.qa = load <2 x i32>, ptr %i.pe, align 4, !tbaa !12, !noalias !116
  %i.qb = sitofp <2 x i32> %i.qa to <2 x double>
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i
  %.sroa.0200.3.i = phi i64 [ %i.qw, %bb.k ], [ %.sroa.0200.2263.i, %.preheader.i ] ; 2 uses
  %i.qc = and i64 %.sroa.0200.3.i, 4294967295
  %i.qd = mul nuw i64 %i.qc, 4164903690
  %i.qe = lshr i64 %.sroa.0200.3.i, 32
  %i.qf = add nuw i64 %i.qd, %i.qe                ; 3 uses
  %i.qg = shl i64 %i.qf, 32
  %i.qh = and i64 %i.qf, 4294967295
  %i.qi = mul nuw i64 %i.qh, 4164903690
  %i.qj = lshr i64 %i.qf, 32
  %i.qk = add nuw i64 %i.qi, %i.qj                ; 2 uses
  %i.ql = and i64 %i.qk, 4294967295               ; 2 uses
  %i.qm = or disjoint i64 %i.ql, %i.qg
  %i.qn = uitofp i64 %i.qm to double
  %i.qo = fmul nnan double %i.qn, f0x3BF0000000000000
  %i.qp = mul nuw i64 %i.ql, 4164903690
  %i.qq = lshr i64 %i.qk, 32
  %i.qr = add nuw i64 %i.qp, %i.qq                ; 3 uses
  %i.qs = shl i64 %i.qr, 32
  %i.qt = and i64 %i.qr, 4294967295
  %i.qu = mul nuw i64 %i.qt, 4164903690
  %i.qv = lshr i64 %i.qr, 32
  %i.qw = add nuw i64 %i.qu, %i.qv                ; 4 uses
  %i.qx = and i64 %i.qw, 4294967295
  %i.qy = or disjoint i64 %i.qx, %i.qs
  %i.qz = uitofp i64 %i.qy to double
  %i.ra = fmul nnan double %i.qz, f0x3BF0000000000000
  %i.rb = call noundef double @llvm.fmuladd.f64(double %i.ra, double f0x401921FB54442D18, double 0.000000e+00)
  %i.rc = fmul double %i.qo, %i.nd
  %i.rd = fadd double %i.po, %i.rb                ; 2 uses
  %i.re = call double @cos(double noundef %i.rd) #19, !noalias !116
  %i.rf = call double @sin(double noundef %i.rd) #19, !noalias !116
  %i.rg = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.rh = shufflevector <2 x double> %i.rg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ri = insertelement <2 x double> poison, double %i.re, i64 0
  %i.rj = insertelement <2 x double> %i.ri, double %i.rf, i64 1
  %i.rk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rh, <2 x double> %i.rj, <2 x double> %i.pz)
  %i.rl = fadd <2 x double> %i.rk, %i.qb          ; 2 uses
  %i.rm = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.rl) ; 3 uses
  %i.rn = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ro = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.rn) ; 2 uses
  %i.rp = or i32 %i.ro, %i.rm
  %.not.i = icmp sgt i32 %i.rp, -1
  br i1 %.not.i, label %bb.l, label %bb.k, !llvm.loop !60

bb.l:                                             ; preds = %bb.k
  %.sroa.2.0.insert.ext.i97.le.i = zext i32 %i.ro to i64
  %.sroa.2.0.insert.shift.i98.le.i = shl nuw i64 %.sroa.2.0.insert.ext.i97.le.i, 32 ; 2 uses
  %.not.i101.i = icmp eq ptr %.sroa.12.1261.i, %.sroa.19.1262.i
  br i1 %.not.i101.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0139.0.insert.ext.i = zext nneg i32 %i.rm to i64
  %.sroa.0139.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i98.le.i, %.sroa.0139.0.insert.ext.i
  store i64 %.sroa.0139.0.insert.insert.i, ptr %.sroa.12.1261.i, align 4, !tbaa !12, !noalias !116
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i

bb.n:                                             ; preds = %bb.l
  %i.rq = ptrtoint ptr %.sroa.19.1262.i to i64
  %i.rr = ptrtoint ptr %.sroa.0187.1260.i to i64
  %i.rs = sub i64 %i.rq, %i.rr                    ; 5 uses
  %i.rt = icmp eq i64 %i.rs, 9223372036854775800
  br i1 %i.rt, label %bb.o, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i102.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.noexc114.i unwind label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !116

.noexc114.i:                                      ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i102.i: ; preds = %bb.n
  %i.ru = ashr exact i64 %i.rs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i103.i = call i64 @llvm.umax.i64(i64 %i.ru, i64 1)
  %i.rv = add nsw i64 %.sroa.speculated.i.i.i103.i, %i.ru ; 2 uses
  %i.rw = icmp ult i64 %i.rv, %i.ru
  %i.rx = call i64 @llvm.umin.i64(i64 %i.rv, i64 1152921504606846975)
  %i.ry = select i1 %i.rw, i64 1152921504606846975, i64 %i.rx ; 3 uses
  %.not.i.i.i104.i = icmp ne i64 %i.ry, 0
  call void @llvm.assume(i1 %.not.i.i.i104.i)
  %i.rz = shl nuw nsw i64 %i.ry, 3
  %i.sa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rz) #20
          to label %.noexc115.i unwind label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !116 ; 5 uses

.noexc115.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i102.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.rs
  %.sroa.0139.0.insert.ext143.i = zext nneg i32 %i.rm to i64
  %.sroa.0139.0.insert.insert145.i = or disjoint i64 %.sroa.2.0.insert.shift.i98.le.i, %.sroa.0139.0.insert.ext143.i
  store i64 %.sroa.0139.0.insert.insert145.i, ptr %i.sb, align 4, !tbaa !12, !noalias !116
  %.not10.i.i.i.i.i105.i = icmp eq ptr %.sroa.0187.1260.i, %.sroa.19.1262.i
  br i1 %.not10.i.i.i.i.i105.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i, label %.lr.ph.i.i.i.i.i106.i

.lr.ph.i.i.i.i.i106.i:                            ; preds = %.noexc115.i, %.lr.ph.i.i.i.i.i106.i
  %.012.i.i.i.i.i107.i = phi ptr [ %i.se, %.lr.ph.i.i.i.i.i106.i ], [ %i.sa, %.noexc115.i ] ; 2 uses
  %.0911.i.i.i.i.i108.i = phi ptr [ %i.sd, %.lr.ph.i.i.i.i.i106.i ], [ %.sroa.0187.1260.i, %.noexc115.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.sc = load i64, ptr %.0911.i.i.i.i.i108.i, align 4, !tbaa !12, !alias.scope !121, !noalias !116
  store i64 %i.sc, ptr %.012.i.i.i.i.i107.i, align 4, !tbaa !12, !alias.scope !120, !noalias !116
  %i.sd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i108.i, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i107.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i109.i = icmp eq ptr %i.sd, %.sroa.19.1262.i
  br i1 %.not.i.i.i.i.i109.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i, label %.lr.ph.i.i.i.i.i106.i, !llvm.loop !64

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i: ; preds = %.lr.ph.i.i.i.i.i106.i, %.noexc115.i
  %.0.lcssa.i.i.i.i.i111.i = phi ptr [ %i.sa, %.noexc115.i ], [ %i.se, %.lr.ph.i.i.i.i.i106.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.1260.i, i64 noundef %i.rs) #21, !noalias !116
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.ry
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit116.i: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i, %bb.m
  %.sroa.0187.6.i = phi ptr [ %i.sa, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i ], [ %.sroa.0187.1260.i, %bb.m ] ; 2 uses
  %.0.lcssa.i.i.i.i.i111.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i111.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i ], [ %.sroa.12.1261.i, %bb.m ]
  %.sroa.19.6.i = phi ptr [ %i.sf, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i113.i ], [ %.sroa.19.1262.i, %bb.m ] ; 2 uses
  %.sroa.12.3.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i111.pn.i, i64 8 ; 2 uses
  %i.sg = add nuw nsw i32 %.0268.i, %.sroa.speculated.i ; 2 uses
  %i.sh = icmp samesign ult i32 %i.sg, %i.pn
  br i1 %i.sh, label %.preheader.i, label %.loopexit.i, !llvm.loop !65

._crit_edge288.i:                                 ; preds = %.loopexit.i, %bb.j
  %.sroa.0187.0.lcssa.i = phi ptr [ %i.ox, %bb.j ], [ %.sroa.0187.1.lcssa.i, %.loopexit.i ]
  %.sroa.12.0.lcssa.i = phi ptr [ %i.oz, %bb.j ], [ %.sroa.12.1.lcssa.i, %.loopexit.i ]
  %.sroa.19.0.lcssa.i = phi ptr [ %i.oz, %bb.j ], [ %.sroa.19.1.lcssa.i, %.loopexit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.nc) #21, !noalias !116
  br label %_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.thread222.i: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit131.i
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.nc) #21, !noalias !116
  br label %.body382

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit133.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i102.i, %bb.o
  %lpad.loopexit.split-lp2169 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef %i.nc) #21, !noalias !116
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0187.1260.i, i64 noundef %i.rs) #21, !noalias !116
  br label %.body382

_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit: ; preds = %._crit_edge288.i, %._crit_edge.i
  %.sroa.11.0 = phi ptr [ %.sroa.19.0.lcssa.i, %._crit_edge288.i ], [ %i.mz, %._crit_edge.i ]
  %.sroa.8785.0 = phi ptr [ %.sroa.12.0.lcssa.i, %._crit_edge288.i ], [ %.0.lcssa.i.i.i.i.i.i377, %._crit_edge.i ]
  %.sroa.0783.0 = phi ptr [ %.sroa.0187.0.lcssa.i, %._crit_edge288.i ], [ %i.na, %._crit_edge.i ]
  %i.si = load ptr, ptr %5, align 8, !tbaa !16    ; 3 uses
  %i.sj = load ptr, ptr %i.go, align 8, !tbaa !18
  store ptr %.sroa.0783.0, ptr %5, align 8, !tbaa !16
  store ptr %.sroa.8785.0, ptr %i.gn, align 8, !tbaa !17
  store ptr %.sroa.11.0, ptr %i.go, align 8, !tbaa !18
  %.not.i.i.i.i.i384 = icmp eq ptr %i.si, null
  br i1 %.not.i.i.i.i.i384, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit
  %i.sk = ptrtoint ptr %i.sj to i64
  %i.sl = ptrtoint ptr %i.si to i64
  %i.sm = sub i64 %i.sk, %i.sl
  call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef %i.sm) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.p, %_ZL12NoisyPolygonSt6vectorIN2cv6Point_IiEESaIS2_EEd.exit
  %.not.i.i.i385 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i385, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit
  %i.sn = ptrtoint ptr %i.mg to i64
  %i.so = sub i64 %i.sn, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.so) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store i32 0, ptr %i.gp, align 8, !tbaa !122
  store i32 0, ptr %i.gq, align 4, !tbaa !123
  %i.sp = load ptr, ptr %i.gn, align 8, !tbaa !17
  %i.sq = load ptr, ptr %5, align 8, !tbaa !16
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = sub i64 %i.sr, %i.ss
  %i.su = ashr exact i64 %i.st, 3                 ; 2 uses
  %.not.i387 = icmp ugt i64 %i.su, 2147483647
  br i1 %.not.i387, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.su, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #22
          to label %.noexc388 unwind label %bb.ao

.noexc388:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit386
  store i32 -2130509788, ptr %25, align 8, !tbaa !114
  store ptr %5, ptr %i.gr, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store i64 0, ptr %i.gt, align 8
  store i32 -2113732572, ptr %26, align 8, !tbaa !114
  store ptr %6, ptr %i.gs, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store i32 0, ptr %i.gu, align 8, !tbaa !122
  store i32 0, ptr %i.gv, align 4, !tbaa !123
  store i32 16842752, ptr %27, align 8, !tbaa !114
  store ptr %24, ptr %i.gw, align 8, !tbaa !115
  invoke void @_ZN2cv9transformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.t unwind label %bb.ap

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.sv = load ptr, ptr %7, align 8, !tbaa !16    ; 4 uses
  %i.sw = load ptr, ptr %i.gx, align 8, !tbaa !17 ; 2 uses
  %.not.i.i389 = icmp eq ptr %i.sw, %i.sv
  br i1 %.not.i.i389, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.t
  store ptr %i.sv, ptr %i.gx, align 8, !tbaa !17
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit: ; preds = %bb.t, %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.sx = phi ptr [ %i.sw, %bb.t ], [ %i.sv, %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.sy = load ptr, ptr %i.gn, align 8, !tbaa !17 ; 2 uses
  %i.sz = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ta = ptrtoint ptr %i.sy to i64
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = ashr exact i64 %i.tc, 3                 ; 2 uses
  %i.te = trunc i64 %i.td to i32
  %i.tf = icmp sgt i32 %i.te, 0
  br i1 %i.tf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit
  %.pre1553 = load ptr, ptr %i.gy, align 8, !tbaa !18
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit
  %i.tg = load ptr, ptr %22, align 8, !tbaa !27   ; 4 uses
  %i.th = load ptr, ptr %i.gz, align 8, !tbaa !28 ; 3 uses
  %.not.i.i390 = icmp eq ptr %i.th, %i.tg
  br i1 %.not.i.i390, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.to, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i ], [ %i.tg, %._crit_edge ] ; 3 uses
  %i.ti = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !18
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = ptrtoint ptr %i.ti to i64
  %i.tn = sub i64 %i.tl, %i.tm
end_hunk_0
