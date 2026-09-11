Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclBufSize?download=true
inline.NumInlined: 320
inline.NumDeleted: 75
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Abc_SclBufSize:bb.a
  %i.na = load float, ptr %i.mz, align 4, !tbaa !73
  %i.nb = fadd float %i.mn, %i.na                 ; 3 uses
  %indvars.iv.next.i221.1 = add nuw nsw i64 %indvars.iv.i214, 2 ; 2 uses
  %niter340.next.1 = add i64 %niter340, 2         ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %Abc_NtkComputeNodeLoad.exit223.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !0

Abc_NtkComputeNodeLoad.exit223.loopexit.unr-lcssa: ; preds = %bb.ag
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %Abc_NtkComputeNodeLoad.exit223, label %.epil.preheader334

.epil.preheader334:                               ; preds = %Abc_NtkComputeNodeLoad.exit223.loopexit.unr-lcssa, %.lr.ph.i209
  %indvars.iv.i214.epil.init = phi i64 [ 0, %.lr.ph.i209 ], [ %indvars.iv.next.i221.1, %Abc_NtkComputeNodeLoad.exit223.loopexit.unr-lcssa ]
  %.01119.i215.epil.init = phi float [ %i.lv, %.lr.ph.i209 ], [ %i.nb, %Abc_NtkComputeNodeLoad.exit223.loopexit.unr-lcssa ]
  %lcmp.mod338 = trunc i32 %.val.i202 to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.val14.i210, i64 %indvars.iv.i214.epil.init
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !58
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %.val13.val.val.i212, i64 %i.ne
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !49 ; 2 uses
  %.val15.i216.epil = load ptr, ptr %i.ng, align 8, !tbaa !53
  %i.nh = getelementptr i8, ptr %i.ng, i64 16
  %.val16.i217.epil = load i32, ptr %i.nh, align 8, !tbaa !56
  %i.ni = getelementptr i8, ptr %.val15.i216.epil, i64 360
  %.val15.val.i218.epil = load ptr, ptr %i.ni, align 8, !tbaa !74
  %i.nj = getelementptr i8, ptr %.val15.val.i218.epil, i64 56
  %.val15.val.val.i219.epil = load ptr, ptr %i.nj, align 8, !tbaa !69
  %i.nk = getelementptr i8, ptr %.val15.val.val.i219.epil, i64 8
  %.val15.val.val.val.i220.epil = load ptr, ptr %i.nk, align 8, !tbaa !68
  %i.nl = sext i32 %.val16.i217.epil to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %.val15.val.val.val.i220.epil, i64 %i.nl
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !73
  %i.no = fadd float %.01119.i215.epil.init, %i.nn
  br label %Abc_NtkComputeNodeLoad.exit223

Abc_NtkComputeNodeLoad.exit223:                   ; preds = %.epil.preheader334, %Abc_NtkComputeNodeLoad.exit223.loopexit.unr-lcssa, %.critedge6
  %.011.lcssa.i204 = phi float [ %i.lv, %.critedge6 ], [ %i.nb, %Abc_NtkComputeNodeLoad.exit223.loopexit.unr-lcssa ], [ %i.no, %.epil.preheader334 ]
  %.val18.i205 = load i32, ptr %i.cu, align 8, !tbaa !56
  %i.np = getelementptr i8, ptr %.val17.pre.i203, i64 360
  %.val17.val.i206 = load ptr, ptr %i.np, align 8, !tbaa !74
  %i.nq = getelementptr i8, ptr %.val17.val.i206, i64 72
  %.val17.val.val.i207 = load ptr, ptr %i.nq, align 8, !tbaa !71
  %i.nr = getelementptr i8, ptr %.val17.val.val.i207, i64 8
  %.val17.val.val.val.i208 = load ptr, ptr %i.nr, align 8, !tbaa !68
  %i.ns = sext i32 %.val18.i205 to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %.val17.val.val.val.i208, i64 %i.ns
  store float %.011.lcssa.i204, ptr %i.nt, align 4, !tbaa !73
  %.val162.pre = load i32, ptr %i.al, align 4
  %.pre283 = and i32 %.val162.pre, 15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.r, %Abc_NtkComputeNodeLoad.exit223, %bb.q
  %.pre-phi = phi i32 [ %i.da, %bb.r ], [ %.pre283, %Abc_NtkComputeNodeLoad.exit223 ], [ %i.da, %bb.q ]
  %.0119 = phi float [ %.011.lcssa.i, %bb.r ], [ %.09.lcssa.i, %Abc_NtkComputeNodeLoad.exit223 ], [ %.011.lcssa.i, %bb.q ]
  switch i32 %.pre-phi, label %bb.ai [
    i32 5, label %bb.am
    i32 2, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.nu = load ptr, ptr %0, align 8, !tbaa !22
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !87
  %i.nx = sitofp i32 %i.nw to float
  %i.ny = call float @Abc_NtkComputeNodeDeparture(ptr noundef nonnull %i.aj, float noundef %i.nx) ; 0 uses
  %i.nz = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.oa = getelementptr i8, ptr %i.nz, i64 4
  %.val5.i225 = load i32, ptr %i.oa, align 4, !tbaa !54
  %.not.i226 = icmp eq i32 %.val5.i225, 4
  br i1 %.not.i226, label %bb.aj, label %Abc_ObjIsBarBuf.exit230.thread

bb.aj:                                            ; preds = %bb.ai
  %.val.i227 = load i32, ptr %i.al, align 4
  %i.ob = and i32 %.val.i227, 15
  %.not7.i228 = icmp eq i32 %i.ob, 7
  br i1 %.not7.i228, label %bb.ak, label %Abc_ObjIsBarBuf.exit230.thread

bb.ak:                                            ; preds = %bb.aj
  %i.oc = getelementptr i8, ptr %i.aj, i64 28
  %.val6.i229 = load i32, ptr %i.oc, align 4, !tbaa !78
  %i.od = icmp eq i32 %.val6.i229, 1
  br i1 %i.od, label %Abc_ObjIsBarBuf.exit230, label %Abc_ObjIsBarBuf.exit230.thread

Abc_ObjIsBarBuf.exit230:                          ; preds = %bb.ak
  %i.oe = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !55
  %.not246 = icmp eq ptr %i.of, null
  br i1 %.not246, label %bb.am, label %Abc_ObjIsBarBuf.exit230.thread

Abc_ObjIsBarBuf.exit230.thread:                   ; preds = %bb.ai, %bb.aj, %bb.ak, %Abc_ObjIsBarBuf.exit230
  %i.og = fdiv float %.0119, %i.r
  %i.oh = call ptr @Abc_SclFindSmallestGate(ptr noundef %.0, float noundef %i.og) #26
  %.val165 = load ptr, ptr %i.aj, align 8, !tbaa !53
  %.val166 = load i32, ptr %i.cu, align 8, !tbaa !56
  %i.oi = getelementptr i8, ptr %i.oh, i64 8
  %.val167 = load i32, ptr %i.oi, align 8, !tbaa !85
  %i.oj = getelementptr i8, ptr %.val165, i64 376
  %.val165.val = load ptr, ptr %i.oj, align 8, !tbaa !59
  %i.ok = getelementptr i8, ptr %.val165.val, i64 8
  %.val165.val.val = load ptr, ptr %i.ok, align 8, !tbaa !60
  %i.ol = sext i32 %.val166 to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %.val165.val.val, i64 %i.ol
  store i32 %.val167, ptr %i.om, align 4, !tbaa !58
  %i.on = load ptr, ptr %0, align 8, !tbaa !22
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !130
  %.not138 = icmp eq i32 %i.op, 0
  br i1 %.not138, label %bb.am, label %bb.al

bb.al:                                            ; preds = %Abc_ObjIsBarBuf.exit230.thread
  call void @Abc_SclOneNodePrint(ptr nonnull poison, ptr noundef nonnull %i.aj)
  br label %bb.am

bb.am:                                            ; preds = %bb.f, %bb.e, %bb.ah, %bb.ah, %bb.d, %bb.al, %Abc_ObjIsBarBuf.exit230.thread, %Abc_ObjIsBarBuf.exit230, %bb.g
  %i.oq = icmp sgt i64 %indvars.iv270, 1
  br i1 %i.oq, label %bb.d, label %.critedge.preheader.loopexit, !llvm.loop !121

bb.an:                                            ; preds = %.lr.ph263, %.critedge
  %indvars.iv273 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next274, %.critedge ] ; 2 uses
  %.val168262 = phi ptr [ %.val168258, %.lr.ph263 ], [ %.val168, %.critedge ]
  %.0117261 = phi float [ 0.000000e+00, %.lr.ph263 ], [ %i.qd, %.critedge ] ; 2 uses
  %i.or = getelementptr i8, ptr %.val168262, i64 8
  %.val169.val = load ptr, ptr %i.or, align 8, !tbaa !48
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %.val169.val, i64 %indvars.iv273
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !49 ; 3 uses
  %i.ou = load ptr, ptr %0, align 8, !tbaa !22
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !87
  %i.ox = sitofp i32 %i.ow to float
  %i.oy = call float @Abc_NtkComputeNodeDeparture(ptr noundef %i.ot, float noundef %i.ox) ; 2 uses
  %i.oz = load ptr, ptr %i.ad, align 8, !tbaa !75 ; 4 uses
  %.not140 = icmp eq ptr %i.oz, null
  br i1 %.not140, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val158 = load ptr, ptr %i.ot, align 8, !tbaa !53
  %i.pa = getelementptr i8, ptr %i.ot, i64 16
  %.val159 = load i32, ptr %i.pa, align 8, !tbaa !56
  %i.pb = getelementptr i8, ptr %.val158, i64 360
  %.val158.val = load ptr, ptr %i.pb, align 8, !tbaa !74
  %i.pc = getelementptr i8, ptr %.val158.val, i64 72
  %.val158.val.val = load ptr, ptr %i.pc, align 8, !tbaa !71
  %i.pd = getelementptr i8, ptr %.val158.val.val, i64 8
  %.val158.val.val.val = load ptr, ptr %i.pd, align 8, !tbaa !68
  %i.pe = sext i32 %.val159 to i64
  %i.pf = getelementptr inbounds [4 x i8], ptr %.val158.val.val.val, i64 %i.pe
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !73 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store float %i.pg, ptr %9, align 4, !tbaa !80
  store float %i.pg, ptr %i.ae, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 0, ptr %6, align 8
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !73
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !82 ; 2 uses
  %i.pj = getelementptr i8, ptr %i.oz, i64 52
  %.val15.i.i.i = load i32, ptr %i.pj, align 4, !tbaa !47
  %.not.i.i.i = icmp slt i32 %i.pi, %.val15.i.i.i
  br i1 %.not.i.i.i, label %bb.ap, label %Scl_LibHandleInputDriver.exit

bb.ap:                                            ; preds = %bb.ao
  %i.pk = getelementptr i8, ptr %i.oz, i64 56
  %.val18.i.i.i = load ptr, ptr %i.pk, align 8, !tbaa !48
  %i.pl = sext i32 %i.pi to i64
  %i.pm = getelementptr inbounds [8 x i8], ptr %.val18.i.i.i, i64 %i.pl
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !49 ; 2 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 68
  %.val14.i.i.i = load i32, ptr %i.po, align 4, !tbaa !47
  %.not13.i.i.i = icmp sgt i32 %.val14.i.i.i, 0
  br i1 %.not13.i.i.i, label %bb.aq, label %Scl_LibHandleInputDriver.exit

bb.aq:                                            ; preds = %bb.ap
  %i.pp = getelementptr i8, ptr %i.pn, i64 72
  %.val17.i.i.i = load ptr, ptr %i.pp, align 8, !tbaa !48
  %i.pq = load ptr, ptr %.val17.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 12
  %.val.i.i.i = load i32, ptr %i.pr, align 4, !tbaa !47
  %i.ps = icmp eq i32 %.val.i.i.i, 0
  br i1 %i.ps, label %Scl_LibHandleInputDriver.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pt = getelementptr i8, ptr %i.pq, i64 16
  %.val16.i.i.i = load ptr, ptr %i.pt, align 8, !tbaa !48
  %i.pu = load ptr, ptr %.val16.i.i.i, align 8, !tbaa !49
  br label %Scl_LibHandleInputDriver.exit

Scl_LibHandleInputDriver.exit:                    ; preds = %bb.ap, %bb.ao, %bb.aq, %bb.ar
  %.sink = phi ptr [ %i.pu, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ao ], [ null, %bb.ap ] ; 2 uses
  call fastcc void @Scl_LibPinArrival(ptr noundef %.sink, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %6)
  call fastcc void @Scl_LibPinArrival(ptr noundef %.sink, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, ptr noundef nonnull readonly %9, ptr noundef %5, ptr noundef nonnull %8)
  %i.pv = load <2 x float>, ptr %5, align 8, !tbaa !73
  %i.pw = load <2 x float>, ptr %4, align 8, !tbaa !73
  %i.px = fsub <2 x float> %i.pv, %i.pw           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %10 = extractelement <2 x float> %i.px, i64 1
  %11 = fpext float %10 to double
  %12 = extractelement <2 x float> %i.px, i64 0
  %13 = fpext float %12 to double
  %14 = fmul double %13, 5.000000e-01
  %i.py = call double @llvm.fmuladd.f64(double %11, double 5.000000e-01, double %14)
  %i.pz = fpext float %i.oy to double
  %i.qa = fadd double %i.py, %i.pz
  %i.qb = fptrunc double %i.qa to float
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge

.critedge:                                        ; preds = %Scl_LibHandleInputDriver.exit, %bb.an
  %.0116 = phi float [ %i.qb, %Scl_LibHandleInputDriver.exit ], [ %i.oy, %bb.an ] ; 2 uses
  %i.qc = fcmp ogt float %.0117261, %.0116
  %i.qd = select i1 %i.qc, float %.0117261, float %.0116 ; 2 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.qe = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.qf = getelementptr i8, ptr %i.qe, i64 56
  %.val168 = load ptr, ptr %i.qf, align 8, !tbaa !127 ; 2 uses
  %i.qg = getelementptr i8, ptr %.val168, i64 4
  %.val168.val = load i32, ptr %i.qg, align 4, !tbaa !47
  %i.qh = sext i32 %.val168.val to i64
  %i.qi = icmp slt i64 %indvars.iv.next274, %i.qh
  br i1 %i.qi, label %bb.an, label %.critedge8.loopexit, !llvm.loop !122

.critedge8.loopexit:                              ; preds = %.critedge
  %i.qj = fpext float %i.qd to double
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %.critedge.preheader, %.critedge.thread
  %.1 = phi double [ 0.000000e+00, %.critedge.thread ], [ 0.000000e+00, %.critedge.preheader ], [ %i.qj, %.critedge8.loopexit ]
  %i.qk = load ptr, ptr %0, align 8, !tbaa !22    ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 28
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !131
  %.not139 = icmp eq i32 %i.qm, 0
  br i1 %.not139, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.critedge8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !33
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !84
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !87
  %i.qt = load i32, ptr %i.qk, align 4, !tbaa !88
  %i.qu = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.qv = getelementptr i8, ptr %i.qu, i64 32
  %.val154 = load ptr, ptr %i.qv, align 8, !tbaa !46
  %i.qw = getelementptr i8, ptr %.val154, i64 4
  %.val154.val = load i32, ptr %i.qw, align 4, !tbaa !47
  %i.qx = sub nsw i32 %.val154.val, %.val156.val
  %i.qy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.qo, i32 noundef %i.qq, i32 noundef %i.qs, i32 noundef %i.qt, i32 noundef %i.qx, double noundef %.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.qz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #26
  %i.ra = icmp slt i32 %i.qz, 0
  br i1 %i.ra, label %Abc_Clock.exit232, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rb = load i64, ptr %2, align 8, !tbaa !125
  %i.rc = mul nsw i64 %i.rb, 1000000
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !126
  %i.rf = sdiv i64 %i.re, 1000
  %i.rg = add nsw i64 %i.rf, %i.rc
  br label %Abc_Clock.exit232

Abc_Clock.exit232:                                ; preds = %bb.as, %bb.at
  %.0.i231 = phi i64 [ %i.rg, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.rh = add i64 %.0.i231, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20)
  %i.ri = sitofp i64 %i.rh to double
  %i.rj = fdiv double %i.ri, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.rj)
  br label %bb.au

bb.au:                                            ; preds = %Abc_Clock.exit232, %.critedge8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

declare void @Abc_NodeCollectFanouts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nounwind uwtable
define ptr @Abc_SclBufferingPerform(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Abc_SclCheckNtk(ptr noundef %0, i32 noundef 0) #26
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Abc_SclReportDupFanins(ptr noundef %0) #26
  tail call void @Abc_SclMioGates2SclGates(ptr noundef %1, ptr noundef %0) #26
  %i.b = tail call ptr @Bus_ManStart(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 3 uses
  tail call void @Bus_ManReadInOutLoads(ptr noundef %i.b)
  %i.c = load i32, ptr %2, align 4, !tbaa !88
  %i.d = sitofp i32 %i.c to double
  %i.e = fmul nnan double %i.d, 1.000000e-02
  %i.f = fptrunc double %i.e to float
  tail call void @Abc_SclBufSize(ptr noundef %i.b, float noundef %i.f)
  tail call void @Bus_ManStop(ptr noundef %i.b)
  tail call void @Abc_SclSclGates2MioGates(ptr noundef %1, ptr noundef %0) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83   ; 7 uses
  %.not20 = icmp eq ptr %i.h, null
  br i1 %.not20, label %Vec_IntFillExtra.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.j, align 4, !tbaa !47 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !78   ; 4 uses
  %.not.i = icmp sgt i32 %.val.val, %i.l
  br i1 %.not.i, label %bb.d, label %Vec_IntFillExtra.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.h, align 8, !tbaa !86   ; 4 uses
  %i.n = shl nsw i32 %i.m, 1                      ; 2 uses
  %i.o = icmp sgt i32 %.val.val, %i.n
  %.not.i.i = icmp slt i32 %i.m, %.val.val        ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %bb.f, label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.q, null
  %i.r = sext i32 %.val.val to i64
  %i.s = shl nsw i64 %i.r, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi ptr [ %i.t, %bb.g ], [ %i.u, %bb.h ]
  store ptr %i.v, ptr %i.p, align 8, !tbaa !60
  br label %Vec_IntGrow.exit.sink.split.i

bb.j:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %bb.k, label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %bb.j
  %i.w = icmp slt i32 %i.m, 1073741823
  %spec.select.i = select i1 %i.w, i32 %i.n, i32 2147483647 ; 3 uses
  %.not.i22.i = icmp slt i32 %i.m, %spec.select.i
  br i1 %.not.i22.i, label %bb.l, label %Vec_IntGrow.exit.i

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60   ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.y, null
  %i.z = sext i32 %spec.select.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  br i1 %.not9.i23.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = phi ptr [ %i.ab, %bb.m ], [ %i.ac, %bb.n ]
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !60
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.o, %bb.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.o ], [ %.val.val, %bb.i ]
  store i32 %spec.select.sink.i, ptr %i.h, align 8, !tbaa !86
  %.pre = load i32, ptr %i.k, align 4, !tbaa !78
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.k, %bb.j, %bb.e
  %i.ae = phi i32 [ %.pre, %Vec_IntGrow.exit.sink.split.i ], [ %i.l, %bb.k ], [ %i.l, %bb.j ], [ %i.l, %bb.e ] ; 3 uses
  %i.af = icmp slt i32 %i.ae, %.val.val
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60
  %i.ai = sext i32 %i.ae to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %scevgep.i = getelementptr i8, ptr %i.ah, i64 %i.aj
  %i.ak = xor i32 %i.ae, -1
  %i.al = add i32 %.val.val, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2
end_hunk_0
