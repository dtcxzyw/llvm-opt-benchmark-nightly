Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/depth_registration?download=true
inline.NumInlined: 452
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2cv19performRegistrationItEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.lw, ptr %25, align 8, !tbaa !76
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lt
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lw, i8 0, i64 %i.lv, i1 false), !tbaa !52
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.lw, i64 %i.lv
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.ly = phi ptr [ %i.lw, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.lx, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.lz = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.ma, align 8, !tbaa !79
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.lz, align 8, !tbaa !80
  %i.mb = fdiv float 1.000000e+00, %7
  %i.mc = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !62
  %i.me = icmp sgt i32 %i.md, 0
  br i1 %i.me, label %.lr.ph422, label %._crit_edge423

.lr.ph422:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.mf = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.mj = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.mk = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.mq = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.mv = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge423:                                   ; preds = %._crit_edge419, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.nb = phi ptr [ %i.ly, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.qe, %._crit_edge419 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge423
  %i.nc = load ptr, ptr %i.ma, align 8, !tbaa !79
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nf) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge423, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0460)
  ret void

bb.n:                                             ; preds = %._crit_edge407.split
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %bb.j, %bb.h, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ng, %bb.n ], [ %i.kd, %bb.j ], [ %i.jk, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph422, %._crit_edge419
  %i.ni = phi ptr [ %i.ly, %.lr.ph422 ], [ %i.qe, %._crit_edge419 ] ; 8 uses
  %indvars.iv448 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next449, %._crit_edge419 ] ; 5 uses
  br i1 %i.h, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !81
  %i.nj = trunc nuw nsw i64 %indvars.iv448 to i32
  store i32 %i.nj, ptr %9, align 4, !tbaa !84, !noalias !81
  %i.nk = trunc i64 %indvars.iv448 to i32
  %i.nl = add i32 %i.nk, 1
  store i32 %i.nl, ptr %i.mh, align 4, !tbaa !86, !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !81
  store i64 9223372034707292160, ptr %10, align 8, !noalias !81
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !81
  store i32 0, ptr %i.mi, align 8, !tbaa !17
  store i32 0, ptr %i.mj, align 4, !tbaa !15
  store i32 -2130640827, ptr %26, align 8, !tbaa !54
  store ptr %27, ptr %i.mk, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !52
  store float 0.000000e+00, ptr %i.ml, align 8, !tbaa !52
  store i32 -1056833531, ptr %28, align 8, !tbaa !54
  store ptr %29, ptr %i.mn, align 8, !tbaa !21
  store i64 12884901889, ptr %i.mm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !52
  store float 0.000000e+00, ptr %i.mo, align 8, !tbaa !52
  store i32 -1056833531, ptr %30, align 8, !tbaa !54
  store ptr %31, ptr %i.mq, align 8, !tbaa !21
  store i64 12884901889, ptr %i.mp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !54
  store ptr %2, ptr %i.ms, align 8, !tbaa !21
  store i64 12884901891, ptr %i.mr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.mt, align 8, !tbaa !17
  store i32 0, ptr %i.mu, align 4, !tbaa !15
  store i32 -2130640891, ptr %33, align 8, !tbaa !54
  store ptr %3, ptr %i.mv, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.mx, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !54
  store ptr %25, ptr %i.mw, align 8, !tbaa !21
  %i.nm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.nm, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !76
  %.pre464 = load ptr, ptr %i.mf, align 8, !tbaa !51
  %.pre465 = load i64, ptr %i.mg, align 8, !tbaa !49
  %.pre466 = mul i64 %.pre465, %indvars.iv448
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.no, %bb.v ], [ %i.nn, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.np = load ptr, ptr %25, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.nq = load ptr, ptr %i.lz, align 8, !tbaa !80 ; 3 uses
  %i.nr = load ptr, ptr %i.mf, align 8, !tbaa !51 ; 4 uses
  %i.ns = load i64, ptr %i.mg, align 8, !tbaa !49
  %i.nt = mul i64 %i.ns, %indvars.iv448           ; 4 uses
  %i.nu = icmp ult ptr %i.ni, %i.nq
  br i1 %i.nu, label %.lr.ph411.preheader, label %.loopexit

.lr.ph411.preheader:                              ; preds = %bb.x
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nt ; 6 uses
  %i.nw = ptrtoaddr ptr %i.nq to i64
  %i.nx = ptrtoaddr ptr %i.ni to i64              ; 2 uses
  %35 = add i64 %i.nx, 8
  %36 = call i64 @llvm.umax.i64(i64 %i.nw, i64 %35)
  %i.ny = xor i64 %i.nx, -1
  %i.nz = add i64 %36, %i.ny                      ; 2 uses
  %i.oa = lshr i64 %i.nz, 3
  %i.ob = add nuw nsw i64 %i.oa, 1                ; 2 uses
  %min.iters.check504 = icmp ult i64 %i.nz, 24
  br i1 %min.iters.check504, label %.lr.ph411.preheader520, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph411.preheader
  %n.vec506 = and i64 %i.ob, 4611686018427387900  ; 4 uses
  %i.oc = mul i64 %n.vec506, 12
  %i.od = getelementptr i8, ptr %i.nv, i64 %i.oc
  %i.oe = shl i64 %n.vec506, 3
  %i.of = getelementptr i8, ptr %i.ni, i64 %i.oe
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 3 uses
  %i.og = mul i64 %index508, 12                   ; 4 uses
  %next.gep509 = getelementptr i8, ptr %i.nv, i64 %i.og ; 3 uses
  %i.oh = getelementptr i8, ptr %i.nv, i64 %i.og  ; 3 uses
  %next.gep510 = getelementptr i8, ptr %i.oh, i64 12
  %i.oi = getelementptr i8, ptr %i.nv, i64 %i.og  ; 3 uses
  %next.gep511 = getelementptr i8, ptr %i.oi, i64 24
  %i.oj = getelementptr i8, ptr %i.nv, i64 %i.og  ; 3 uses
  %next.gep512 = getelementptr i8, ptr %i.oj, i64 36
  %i.ok = shl i64 %index508, 3
  %next.gep513 = getelementptr i8, ptr %i.ni, i64 %i.ok
  %i.ol = load float, ptr %next.gep509, align 4, !tbaa !71
  %i.om = load float, ptr %next.gep510, align 4, !tbaa !71
  %i.on = load float, ptr %next.gep511, align 4, !tbaa !71
  %i.oo = load float, ptr %next.gep512, align 4, !tbaa !71
  %i.op = insertelement <4 x float> poison, float %i.ol, i64 0
  %i.oq = insertelement <4 x float> %i.op, float %i.om, i64 1
  %i.or = insertelement <4 x float> %i.oq, float %i.on, i64 2
  %i.os = insertelement <4 x float> %i.or, float %i.oo, i64 3
  %i.ot = getelementptr inbounds nuw i8, ptr %next.gep509, i64 8
  %i.ou = getelementptr i8, ptr %i.oh, i64 20
  %i.ov = getelementptr i8, ptr %i.oi, i64 32
  %i.ow = getelementptr i8, ptr %i.oj, i64 44
  %i.ox = load float, ptr %i.ot, align 4, !tbaa !74
  %i.oy = load float, ptr %i.ou, align 4, !tbaa !74
  %i.oz = load float, ptr %i.ov, align 4, !tbaa !74
  %i.pa = load float, ptr %i.ow, align 4, !tbaa !74
  %i.pb = insertelement <4 x float> poison, float %i.ox, i64 0
  %i.pc = insertelement <4 x float> %i.pb, float %i.oy, i64 1
  %i.pd = insertelement <4 x float> %i.pc, float %i.oz, i64 2
  %i.pe = insertelement <4 x float> %i.pd, float %i.pa, i64 3 ; 2 uses
  %i.pf = fdiv <4 x float> %i.os, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %next.gep509, i64 4
  %i.ph = getelementptr i8, ptr %i.oh, i64 16
  %i.pi = getelementptr i8, ptr %i.oi, i64 28
  %i.pj = getelementptr i8, ptr %i.oj, i64 40
  %i.pk = load float, ptr %i.pg, align 4, !tbaa !73
  %i.pl = load float, ptr %i.ph, align 4, !tbaa !73
  %i.pm = load float, ptr %i.pi, align 4, !tbaa !73
  %i.pn = load float, ptr %i.pj, align 4, !tbaa !73
  %i.po = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.pp = insertelement <4 x float> %i.po, float %i.pl, i64 1
  %i.pq = insertelement <4 x float> %i.pp, float %i.pm, i64 2
  %i.pr = insertelement <4 x float> %i.pq, float %i.pn, i64 3
  %i.ps = fdiv <4 x float> %i.pr, %i.pe
  %interleaved.vec514 = shufflevector <4 x float> %i.pf, <4 x float> %i.ps, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec514, ptr %next.gep513, align 4, !tbaa !52
  %index.next515 = add nuw i64 %index508, 4       ; 2 uses
  %i.pt = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.pt, label %middle.block516, label %vector.body507, !llvm.loop !87

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.ob, %n.vec506
  br i1 %cmp.n517, label %.loopexit, label %.lr.ph411.preheader520

.lr.ph411.preheader520:                           ; preds = %.lr.ph411.preheader, %middle.block516
  %.096409.ph = phi ptr [ %i.nv, %.lr.ph411.preheader ], [ %i.od, %middle.block516 ]
  %.097408.ph = phi ptr [ %i.ni, %.lr.ph411.preheader ], [ %i.of, %middle.block516 ]
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader520, %.lr.ph411
  %.096409 = phi ptr [ %i.qb, %.lr.ph411 ], [ %.096409.ph, %.lr.ph411.preheader520 ] ; 3 uses
  %.097408 = phi ptr [ %i.qa, %.lr.ph411 ], [ %.097408.ph, %.lr.ph411.preheader520 ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.096409, i64 8
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !74
  %i.pw = load <2 x float>, ptr %.096409, align 4, !tbaa !52
  %i.px = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = fdiv <2 x float> %i.pw, %i.py
  store <2 x float> %i.pz, ptr %.097408, align 4, !tbaa !52
  %i.qa = getelementptr inbounds nuw i8, ptr %.097408, i64 8 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.096409, i64 12
  %i.qc = icmp ult ptr %i.qa, %i.nq
  br i1 %i.qc, label %.lr.ph411, label %.loopexit, !llvm.loop !88

.loopexit:                                        ; preds = %.lr.ph411, %middle.block516, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre466, %bb.t ], [ %i.nt, %bb.x ], [ %i.nt, %middle.block516 ], [ %i.nt, %.lr.ph411 ]
  %i.qd = phi ptr [ %.pre464, %bb.t ], [ %i.nr, %bb.x ], [ %i.nr, %middle.block516 ], [ %i.nr, %.lr.ph411 ]
  %i.qe = phi ptr [ %.pre, %bb.t ], [ %i.ni, %bb.x ], [ %i.ni, %middle.block516 ], [ %i.ni, %.lr.ph411 ] ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.pre-phi ; 2 uses
  %i.qg = load i32, ptr %i.lr, align 4, !tbaa !63 ; 2 uses
  %i.qh = sext i32 %i.qg to i64
  %.idx = mul nsw i64 %i.qh, 12
  %i.qi = getelementptr inbounds i8, ptr %i.qf, i64 %.idx
  %i.qj = icmp sgt i32 %i.qg, 0
  br i1 %i.qj, label %.lr.ph418, label %._crit_edge419

.lr.ph418:                                        ; preds = %.loopexit, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread
  %.094416 = phi ptr [ %i.sz, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.qf, %.loopexit ] ; 2 uses
  %.095415 = phi ptr [ %i.sy, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.qe, %.loopexit ] ; 3 uses
  %i.qk = load float, ptr %.095415, align 4       ; 2 uses
  %i.ql = fcmp ord float %i.qk, 0.000000e+00
  br i1 %i.ql, label %bb.y, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.y:                                             ; preds = %.lr.ph418
  %.095.sroa_idx = getelementptr inbounds nuw i8, ptr %.095415, i64 4
  %i.qm = load float, ptr %.095.sroa_idx, align 4
  %i.qn = insertelement <4 x float> poison, float %i.qk, i64 0
  %i.qo = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.qn) ; 8 uses
  %i.qp = insertelement <4 x float> poison, float %i.qm, i64 0
  %i.qq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.qp) ; 15 uses
  %i.qr = icmp slt i32 %i.qo, %.sroa.0381.0.extract.trunc
  %i.qs = or i32 %i.qq, %i.qo
  %i.qt = icmp sgt i32 %i.qs, -1
  %or.cond385.not395 = and i1 %i.qr, %i.qt
  %i.qu = icmp slt i32 %i.qq, %.sroa.3.0.extract.trunc
  %or.cond386 = and i1 %i.qu, %or.cond385.not395
  br i1 %or.cond386, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.qv = getelementptr inbounds nuw i8, ptr %.094416, i64 8
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !74
  %i.qx = fmul float %i.mb, %i.qw
  %i.qy = fpext float %i.qx to double
  %i.qz = fadd double %i.qy, 5.000000e-01
  %i.ra = fptoui double %i.qz to i16
  %i.rb = freeze i16 %i.ra                        ; 14 uses
  %i.rc = load i32, ptr %i.my, align 4, !tbaa !89
  %.fr424 = freeze i32 %i.rc
  %i.rd = icmp slt i32 %.fr424, 2                 ; 2 uses
  %i.re = load ptr, ptr %i.mz, align 8, !tbaa !51 ; 7 uses
  %i.rf = load i64, ptr %i.na, align 8
  %i.rg = zext nneg i32 %i.qq to i64
  %i.rh = mul i64 %i.rf, %i.rg
  %.sink.idx.i = select i1 %i.rd, i64 0, i64 %i.rh
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.re, i64 %.sink.idx.i
  %i.ri = zext nneg i32 %i.qo to i64              ; 3 uses
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %.sink.i159, i64 %i.ri ; 2 uses
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !64
  %i.rl = add i16 %i.rk, -1
  %or.cond387.not = icmp ult i16 %i.rl, %i.rb
  br i1 %or.cond387.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i16 %i.rb, ptr %i.rj, align 2, !tbaa !64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.rm = add nsw i32 %i.qo, -1                   ; 4 uses
  %i.rn = add nsw i32 %i.qq, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.qo, 0
  %i.ro = icmp sle i32 %i.qo, %.sroa.0381.0.extract.trunc
  %or.cond388.us = and i1 %.not.i160.us, %i.ro    ; 4 uses
  br i1 %i.rd, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ac
  br i1 %or.cond388.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread

.split.us.preheader:                              ; preds = %bb.ac
  br i1 %or.cond388.us, label %bb.ad, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us

bb.ad:                                            ; preds = %.split.us.preheader
  %.not8.i161.us = icmp sgt i32 %i.qq, -1
  br i1 %.not8.i161.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.rp = zext nneg i32 %i.rm to i64
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %i.rp ; 2 uses
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !64
  %i.rs = add i16 %i.rr, -1
  %or.cond390.not.us = icmp ult i16 %i.rs, %i.rb
  br i1 %or.cond390.not.us, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i16 %i.rb, ptr %i.rq, align 2, !tbaa !64
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us: ; preds = %.split.us.preheader
  %.not.i160.us.1 = icmp sgt i32 %i.qo, -1
  br i1 %.not.i160.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.af, %bb.ae, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us
  %.not8.i161.us.1 = icmp sgt i32 %i.qq, 0
  %i.rt = icmp sle i32 %i.qq, %.sroa.3.0.extract.trunc
  %or.cond389.us.1 = and i1 %.not8.i161.us.1, %i.rt
  br i1 %or.cond389.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %i.ri ; 2 uses
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !64
  %i.rw = add i16 %i.rv, -1
  %or.cond390.not.us.1 = icmp ult i16 %i.rw, %i.rb
  br i1 %or.cond390.not.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, label %bb.ah
end_hunk_0
begin_hunk_1_@_ZN2cv19performRegistrationIfEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.nh, ptr %25, align 8, !tbaa !76
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.ne
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nh, i8 0, i64 %i.ng, i1 false), !tbaa !52
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.nh, i64 %i.ng
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.nj = phi ptr [ %i.nh, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ni, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.nk = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.nl, align 8, !tbaa !79
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.nk, align 8, !tbaa !80
  %i.nm = fdiv float 1.000000e+00, %7
  %i.nn = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !62
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.nq = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.nv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.of = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.og = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.oj = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ok = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ol = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge424:                                   ; preds = %._crit_edge420, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.om = phi ptr [ %i.nj, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.rp, %._crit_edge420 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.om, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge424
  %i.on = load ptr, ptr %i.nl, align 8, !tbaa !79
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = ptrtoint ptr %i.om to i64
  %i.oq = sub i64 %i.oo, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef %i.oq) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge424, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  ret void

bb.n:                                             ; preds = %._crit_edge408.split
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %bb.j, %bb.h, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.or, %bb.n ], [ %i.ks, %bb.j ], [ %i.jl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph423, %._crit_edge420
  %i.ot = phi ptr [ %i.nj, %.lr.ph423 ], [ %i.rp, %._crit_edge420 ] ; 8 uses
  %indvars.iv449 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next450, %._crit_edge420 ] ; 5 uses
  br i1 %i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !108
  %i.ou = trunc nuw nsw i64 %indvars.iv449 to i32
  store i32 %i.ou, ptr %9, align 4, !tbaa !84, !noalias !108
  %i.ov = trunc i64 %indvars.iv449 to i32
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr %i.ns, align 4, !tbaa !86, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !108
  store i64 9223372034707292160, ptr %10, align 8, !noalias !108
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !108
  store i32 0, ptr %i.nt, align 8, !tbaa !17
  store i32 0, ptr %i.nu, align 4, !tbaa !15
  store i32 -2130640827, ptr %26, align 8, !tbaa !54
  store ptr %27, ptr %i.nv, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !52
  store float 0.000000e+00, ptr %i.nw, align 8, !tbaa !52
  store i32 -1056833531, ptr %28, align 8, !tbaa !54
  store ptr %29, ptr %i.ny, align 8, !tbaa !21
  store i64 12884901889, ptr %i.nx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !52
  store float 0.000000e+00, ptr %i.nz, align 8, !tbaa !52
  store i32 -1056833531, ptr %30, align 8, !tbaa !54
  store ptr %31, ptr %i.ob, align 8, !tbaa !21
  store i64 12884901889, ptr %i.oa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !54
  store ptr %2, ptr %i.od, align 8, !tbaa !21
  store i64 12884901891, ptr %i.oc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.oe, align 8, !tbaa !17
  store i32 0, ptr %i.of, align 4, !tbaa !15
  store i32 -2130640891, ptr %33, align 8, !tbaa !54
  store ptr %3, ptr %i.og, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.oi, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !54
  store ptr %25, ptr %i.oh, align 8, !tbaa !21
  %i.ox = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.ox, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !76
  %.pre465 = load ptr, ptr %i.nq, align 8, !tbaa !51
  %.pre466 = load i64, ptr %i.nr, align 8, !tbaa !49
  %.pre467 = mul i64 %.pre466, %indvars.iv449
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oz, %bb.v ], [ %i.oy, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.pa = load ptr, ptr %25, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.pb = load ptr, ptr %i.nk, align 8, !tbaa !80 ; 3 uses
  %i.pc = load ptr, ptr %i.nq, align 8, !tbaa !51 ; 4 uses
  %i.pd = load i64, ptr %i.nr, align 8, !tbaa !49
  %i.pe = mul i64 %i.pd, %indvars.iv449           ; 4 uses
  %i.pf = icmp ult ptr %i.ot, %i.pb
  br i1 %i.pf, label %.lr.ph412.preheader, label %.loopexit

.lr.ph412.preheader:                              ; preds = %bb.x
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pe ; 6 uses
  %i.ph = ptrtoaddr ptr %i.pb to i64
  %i.pi = ptrtoaddr ptr %i.ot to i64              ; 2 uses
  %35 = add i64 %i.pi, 8
  %36 = call i64 @llvm.umax.i64(i64 %i.ph, i64 %35)
  %i.pj = xor i64 %i.pi, -1
  %i.pk = add i64 %36, %i.pj                      ; 2 uses
  %i.pl = lshr i64 %i.pk, 3
  %i.pm = add nuw nsw i64 %i.pl, 1                ; 2 uses
  %min.iters.check502 = icmp ult i64 %i.pk, 24
  br i1 %min.iters.check502, label %.lr.ph412.preheader518, label %vector.ph503

vector.ph503:                                     ; preds = %.lr.ph412.preheader
  %n.vec504 = and i64 %i.pm, 4611686018427387900  ; 4 uses
  %i.pn = mul i64 %n.vec504, 12
  %i.po = getelementptr i8, ptr %i.pg, i64 %i.pn
  %i.pp = shl i64 %n.vec504, 3
  %i.pq = getelementptr i8, ptr %i.ot, i64 %i.pp
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next513, %vector.body505 ] ; 3 uses
  %i.pr = mul i64 %index506, 12                   ; 4 uses
  %next.gep507 = getelementptr i8, ptr %i.pg, i64 %i.pr ; 3 uses
  %i.ps = getelementptr i8, ptr %i.pg, i64 %i.pr  ; 3 uses
  %next.gep508 = getelementptr i8, ptr %i.ps, i64 12
  %i.pt = getelementptr i8, ptr %i.pg, i64 %i.pr  ; 3 uses
  %next.gep509 = getelementptr i8, ptr %i.pt, i64 24
  %i.pu = getelementptr i8, ptr %i.pg, i64 %i.pr  ; 3 uses
  %next.gep510 = getelementptr i8, ptr %i.pu, i64 36
  %i.pv = shl i64 %index506, 3
  %next.gep511 = getelementptr i8, ptr %i.ot, i64 %i.pv
  %i.pw = load float, ptr %next.gep507, align 4, !tbaa !71
  %i.px = load float, ptr %next.gep508, align 4, !tbaa !71
  %i.py = load float, ptr %next.gep509, align 4, !tbaa !71
  %i.pz = load float, ptr %next.gep510, align 4, !tbaa !71
  %i.qa = insertelement <4 x float> poison, float %i.pw, i64 0
  %i.qb = insertelement <4 x float> %i.qa, float %i.px, i64 1
  %i.qc = insertelement <4 x float> %i.qb, float %i.py, i64 2
  %i.qd = insertelement <4 x float> %i.qc, float %i.pz, i64 3
  %i.qe = getelementptr inbounds nuw i8, ptr %next.gep507, i64 8
  %i.qf = getelementptr i8, ptr %i.ps, i64 20
  %i.qg = getelementptr i8, ptr %i.pt, i64 32
  %i.qh = getelementptr i8, ptr %i.pu, i64 44
  %i.qi = load float, ptr %i.qe, align 4, !tbaa !74
  %i.qj = load float, ptr %i.qf, align 4, !tbaa !74
  %i.qk = load float, ptr %i.qg, align 4, !tbaa !74
  %i.ql = load float, ptr %i.qh, align 4, !tbaa !74
  %i.qm = insertelement <4 x float> poison, float %i.qi, i64 0
  %i.qn = insertelement <4 x float> %i.qm, float %i.qj, i64 1
  %i.qo = insertelement <4 x float> %i.qn, float %i.qk, i64 2
  %i.qp = insertelement <4 x float> %i.qo, float %i.ql, i64 3 ; 2 uses
  %i.qq = fdiv <4 x float> %i.qd, %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %next.gep507, i64 4
  %i.qs = getelementptr i8, ptr %i.ps, i64 16
  %i.qt = getelementptr i8, ptr %i.pt, i64 28
  %i.qu = getelementptr i8, ptr %i.pu, i64 40
  %i.qv = load float, ptr %i.qr, align 4, !tbaa !73
  %i.qw = load float, ptr %i.qs, align 4, !tbaa !73
  %i.qx = load float, ptr %i.qt, align 4, !tbaa !73
  %i.qy = load float, ptr %i.qu, align 4, !tbaa !73
  %i.qz = insertelement <4 x float> poison, float %i.qv, i64 0
  %i.ra = insertelement <4 x float> %i.qz, float %i.qw, i64 1
  %i.rb = insertelement <4 x float> %i.ra, float %i.qx, i64 2
  %i.rc = insertelement <4 x float> %i.rb, float %i.qy, i64 3
  %i.rd = fdiv <4 x float> %i.rc, %i.qp
  %interleaved.vec512 = shufflevector <4 x float> %i.qq, <4 x float> %i.rd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec512, ptr %next.gep511, align 4, !tbaa !52
  %index.next513 = add nuw i64 %index506, 4       ; 2 uses
  %i.re = icmp eq i64 %index.next513, %n.vec504
  br i1 %i.re, label %middle.block514, label %vector.body505, !llvm.loop !111

middle.block514:                                  ; preds = %vector.body505
  %cmp.n515 = icmp eq i64 %i.pm, %n.vec504
  br i1 %cmp.n515, label %.loopexit, label %.lr.ph412.preheader518

.lr.ph412.preheader518:                           ; preds = %.lr.ph412.preheader, %middle.block514
  %.096410.ph = phi ptr [ %i.pg, %.lr.ph412.preheader ], [ %i.po, %middle.block514 ]
  %.097409.ph = phi ptr [ %i.ot, %.lr.ph412.preheader ], [ %i.pq, %middle.block514 ]
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader518, %.lr.ph412
  %.096410 = phi ptr [ %i.rm, %.lr.ph412 ], [ %.096410.ph, %.lr.ph412.preheader518 ] ; 3 uses
  %.097409 = phi ptr [ %i.rl, %.lr.ph412 ], [ %.097409.ph, %.lr.ph412.preheader518 ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.096410, i64 8
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !74
  %i.rh = load <2 x float>, ptr %.096410, align 4, !tbaa !52
  %i.ri = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.rj = shufflevector <2 x float> %i.ri, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rk = fdiv <2 x float> %i.rh, %i.rj
  store <2 x float> %i.rk, ptr %.097409, align 4, !tbaa !52
  %i.rl = getelementptr inbounds nuw i8, ptr %.097409, i64 8 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.096410, i64 12
  %i.rn = icmp ult ptr %i.rl, %i.pb
  br i1 %i.rn, label %.lr.ph412, label %.loopexit, !llvm.loop !112

.loopexit:                                        ; preds = %.lr.ph412, %middle.block514, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre467, %bb.t ], [ %i.pe, %bb.x ], [ %i.pe, %middle.block514 ], [ %i.pe, %.lr.ph412 ]
  %i.ro = phi ptr [ %.pre465, %bb.t ], [ %i.pc, %bb.x ], [ %i.pc, %middle.block514 ], [ %i.pc, %.lr.ph412 ]
  %i.rp = phi ptr [ %.pre, %bb.t ], [ %i.ot, %bb.x ], [ %i.ot, %middle.block514 ], [ %i.ot, %.lr.ph412 ] ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.pre-phi ; 2 uses
  %i.rr = load i32, ptr %i.nc, align 4, !tbaa !63 ; 2 uses
  %i.rs = sext i32 %i.rr to i64
  %.idx = mul nsw i64 %i.rs, 12
  %i.rt = getelementptr inbounds i8, ptr %i.rq, i64 %.idx
  %i.ru = icmp sgt i32 %i.rr, 0
  br i1 %i.ru, label %.lr.ph419, label %._crit_edge420

.lr.ph419:                                        ; preds = %.loopexit, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread
  %.094417 = phi ptr [ %i.un, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.rq, %.loopexit ] ; 2 uses
  %.095416 = phi ptr [ %i.um, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.rp, %.loopexit ] ; 3 uses
  %i.rv = load float, ptr %.095416, align 4       ; 2 uses
  %i.rw = fcmp ord float %i.rv, 0.000000e+00
  br i1 %i.rw, label %bb.y, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.y:                                             ; preds = %.lr.ph419
  %.095.sroa_idx = getelementptr inbounds nuw i8, ptr %.095416, i64 4
  %i.rx = load float, ptr %.095.sroa_idx, align 4
  %i.ry = insertelement <4 x float> poison, float %i.rv, i64 0
  %i.rz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ry) ; 8 uses
  %i.sa = insertelement <4 x float> poison, float %i.rx, i64 0
  %i.sb = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.sa) ; 15 uses
  %i.sc = icmp slt i32 %i.rz, %.sroa.0382.0.extract.trunc
  %i.sd = or i32 %i.sb, %i.rz
  %i.se = icmp sgt i32 %i.sd, -1
  %or.cond386.not396 = and i1 %i.sc, %i.se
  %i.sf = icmp slt i32 %i.sb, %.sroa.3.0.extract.trunc
  %or.cond387 = and i1 %i.sf, %or.cond386.not396
  br i1 %or.cond387, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.sg = getelementptr inbounds nuw i8, ptr %.094417, i64 8
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !74
  %i.si = fmul float %i.nm, %i.sh                 ; 14 uses
  %i.sj = load i32, ptr %i.oj, align 4, !tbaa !89
  %.fr425 = freeze i32 %i.sj
  %i.sk = icmp slt i32 %.fr425, 2                 ; 2 uses
  %i.sl = load ptr, ptr %i.ok, align 8, !tbaa !51 ; 7 uses
  %i.sm = load i64, ptr %i.ol, align 8
  %i.sn = zext nneg i32 %i.sb to i64
  %i.so = mul i64 %i.sm, %i.sn
  %.sink.idx.i = select i1 %i.sk, i64 0, i64 %i.so
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.sink.idx.i
  %i.sp = zext nneg i32 %i.rz to i64              ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i159, i64 %i.sp ; 2 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !52 ; 2 uses
  %i.ss = fcmp uno float %i.sr, 0.000000e+00
  %i.st = fcmp ogt float %i.sr, %i.si
  %or.cond388 = select i1 %i.ss, i1 true, i1 %i.st
  br i1 %or.cond388, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store float %i.si, ptr %i.sq, align 4, !tbaa !52
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.su = add nsw i32 %i.rz, -1                   ; 4 uses
  %i.sv = add nsw i32 %i.sb, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.rz, 0
  %i.sw = icmp sle i32 %i.rz, %.sroa.0382.0.extract.trunc
  %or.cond389.us = and i1 %.not.i160.us, %i.sw    ; 4 uses
  br i1 %i.sk, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread

.split.us.preheader:                              ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.ad, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us

bb.ad:                                            ; preds = %.split.us.preheader
  %.not8.i161.us = icmp sgt i32 %i.sb, -1
  br i1 %.not8.i161.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.sx = zext nneg i32 %i.su to i64
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.sx ; 2 uses
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !52 ; 2 uses
  %i.ta = fcmp uno float %i.sz, 0.000000e+00
  %i.tb = fcmp ogt float %i.sz, %i.si
  %or.cond391.us = select i1 %i.ta, i1 true, i1 %i.tb
  br i1 %or.cond391.us, label %bb.af, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.af:                                            ; preds = %bb.ae
  store float %i.si, ptr %i.sy, align 4, !tbaa !52
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us: ; preds = %.split.us.preheader
  %.not.i160.us.1 = icmp sgt i32 %i.rz, -1
  br i1 %.not.i160.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.af, %bb.ae, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us
  %.not8.i161.us.1 = icmp sgt i32 %i.sb, 0
  %i.tc = icmp sle i32 %i.sb, %.sroa.3.0.extract.trunc
  %or.cond390.us.1 = and i1 %.not8.i161.us.1, %i.tc
  br i1 %or.cond390.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.sp ; 2 uses
  %i.te = load float, ptr %i.td, align 4, !tbaa !52 ; 2 uses
  %i.tf = fcmp uno float %i.te, 0.000000e+00
  %i.tg = fcmp ogt float %i.te, %i.si
  %or.cond391.us.1 = select i1 %i.tf, i1 true, i1 %i.tg
  br i1 %or.cond391.us.1, label %bb.ah, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

end_hunk_1
begin_hunk_2_@_ZN2cv19performRegistrationIdEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a
.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.lx, ptr %25, align 8, !tbaa !76
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.lu
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lx, i8 0, i64 %i.lw, i1 false), !tbaa !52
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.lx, i64 %i.lw
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.lz = phi ptr [ %i.lx, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ly, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.ma = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.mb, align 8, !tbaa !79
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ma, align 8, !tbaa !80
  %i.mc = fdiv float 1.000000e+00, %7
  %i.md = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.me = load i32, ptr %i.md, align 8, !tbaa !62
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.mg = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.mj = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.mk = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.ml = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.mt = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.mw = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge424:                                   ; preds = %._crit_edge420, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.nc = phi ptr [ %i.lz, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.qf, %._crit_edge420 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge424
  %i.nd = load ptr, ptr %i.mb, align 8, !tbaa !79
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nc to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.ng) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge424, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  ret void

bb.n:                                             ; preds = %._crit_edge408.split
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %bb.j, %bb.h, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nh, %bb.n ], [ %i.ke, %bb.j ], [ %i.jl, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph423, %._crit_edge420
  %i.nj = phi ptr [ %i.lz, %.lr.ph423 ], [ %i.qf, %._crit_edge420 ] ; 8 uses
  %indvars.iv449 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next450, %._crit_edge420 ] ; 5 uses
  br i1 %i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !124
  %i.nk = trunc nuw nsw i64 %indvars.iv449 to i32
  store i32 %i.nk, ptr %9, align 4, !tbaa !84, !noalias !124
  %i.nl = trunc i64 %indvars.iv449 to i32
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr %i.mi, align 4, !tbaa !86, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !124
  store i64 9223372034707292160, ptr %10, align 8, !noalias !124
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !124
  store i32 0, ptr %i.mj, align 8, !tbaa !17
  store i32 0, ptr %i.mk, align 4, !tbaa !15
  store i32 -2130640827, ptr %26, align 8, !tbaa !54
  store ptr %27, ptr %i.ml, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !52
  store float 0.000000e+00, ptr %i.mm, align 8, !tbaa !52
  store i32 -1056833531, ptr %28, align 8, !tbaa !54
  store ptr %29, ptr %i.mo, align 8, !tbaa !21
  store i64 12884901889, ptr %i.mn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !52
  store float 0.000000e+00, ptr %i.mp, align 8, !tbaa !52
  store i32 -1056833531, ptr %30, align 8, !tbaa !54
  store ptr %31, ptr %i.mr, align 8, !tbaa !21
  store i64 12884901889, ptr %i.mq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !54
  store ptr %2, ptr %i.mt, align 8, !tbaa !21
  store i64 12884901891, ptr %i.ms, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.mu, align 8, !tbaa !17
  store i32 0, ptr %i.mv, align 4, !tbaa !15
  store i32 -2130640891, ptr %33, align 8, !tbaa !54
  store ptr %3, ptr %i.mw, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.my, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !54
  store ptr %25, ptr %i.mx, align 8, !tbaa !21
  %i.nn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.nn, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !76
  %.pre465 = load ptr, ptr %i.mg, align 8, !tbaa !51
  %.pre466 = load i64, ptr %i.mh, align 8, !tbaa !49
  %.pre467 = mul i64 %.pre466, %indvars.iv449
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.np, %bb.v ], [ %i.no, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.nq = load ptr, ptr %25, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.nr = load ptr, ptr %i.ma, align 8, !tbaa !80 ; 3 uses
  %i.ns = load ptr, ptr %i.mg, align 8, !tbaa !51 ; 4 uses
  %i.nt = load i64, ptr %i.mh, align 8, !tbaa !49
  %i.nu = mul i64 %i.nt, %indvars.iv449           ; 4 uses
  %i.nv = icmp ult ptr %i.nj, %i.nr
  br i1 %i.nv, label %.lr.ph412.preheader, label %.loopexit

.lr.ph412.preheader:                              ; preds = %bb.x
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nu ; 6 uses
  %i.nx = ptrtoaddr ptr %i.nr to i64
  %i.ny = ptrtoaddr ptr %i.nj to i64              ; 2 uses
  %35 = add i64 %i.ny, 8
  %36 = call i64 @llvm.umax.i64(i64 %i.nx, i64 %35)
  %i.nz = xor i64 %i.ny, -1
  %i.oa = add i64 %36, %i.nz                      ; 2 uses
  %i.ob = lshr i64 %i.oa, 3
  %i.oc = add nuw nsw i64 %i.ob, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.oa, 24
  br i1 %min.iters.check500, label %.lr.ph412.preheader516, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph412.preheader
  %n.vec502 = and i64 %i.oc, 4611686018427387900  ; 4 uses
  %i.od = mul i64 %n.vec502, 12
  %i.oe = getelementptr i8, ptr %i.nw, i64 %i.od
  %i.of = shl i64 %n.vec502, 3
  %i.og = getelementptr i8, ptr %i.nj, i64 %i.of
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next511, %vector.body503 ] ; 3 uses
  %i.oh = mul i64 %index504, 12                   ; 4 uses
  %next.gep505 = getelementptr i8, ptr %i.nw, i64 %i.oh ; 3 uses
  %i.oi = getelementptr i8, ptr %i.nw, i64 %i.oh  ; 3 uses
  %next.gep506 = getelementptr i8, ptr %i.oi, i64 12
  %i.oj = getelementptr i8, ptr %i.nw, i64 %i.oh  ; 3 uses
  %next.gep507 = getelementptr i8, ptr %i.oj, i64 24
  %i.ok = getelementptr i8, ptr %i.nw, i64 %i.oh  ; 3 uses
  %next.gep508 = getelementptr i8, ptr %i.ok, i64 36
  %i.ol = shl i64 %index504, 3
  %next.gep509 = getelementptr i8, ptr %i.nj, i64 %i.ol
  %i.om = load float, ptr %next.gep505, align 4, !tbaa !71
  %i.on = load float, ptr %next.gep506, align 4, !tbaa !71
  %i.oo = load float, ptr %next.gep507, align 4, !tbaa !71
  %i.op = load float, ptr %next.gep508, align 4, !tbaa !71
  %i.oq = insertelement <4 x float> poison, float %i.om, i64 0
  %i.or = insertelement <4 x float> %i.oq, float %i.on, i64 1
  %i.os = insertelement <4 x float> %i.or, float %i.oo, i64 2
  %i.ot = insertelement <4 x float> %i.os, float %i.op, i64 3
  %i.ou = getelementptr inbounds nuw i8, ptr %next.gep505, i64 8
  %i.ov = getelementptr i8, ptr %i.oi, i64 20
  %i.ow = getelementptr i8, ptr %i.oj, i64 32
  %i.ox = getelementptr i8, ptr %i.ok, i64 44
  %i.oy = load float, ptr %i.ou, align 4, !tbaa !74
  %i.oz = load float, ptr %i.ov, align 4, !tbaa !74
  %i.pa = load float, ptr %i.ow, align 4, !tbaa !74
  %i.pb = load float, ptr %i.ox, align 4, !tbaa !74
  %i.pc = insertelement <4 x float> poison, float %i.oy, i64 0
  %i.pd = insertelement <4 x float> %i.pc, float %i.oz, i64 1
  %i.pe = insertelement <4 x float> %i.pd, float %i.pa, i64 2
  %i.pf = insertelement <4 x float> %i.pe, float %i.pb, i64 3 ; 2 uses
  %i.pg = fdiv <4 x float> %i.ot, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %next.gep505, i64 4
  %i.pi = getelementptr i8, ptr %i.oi, i64 16
  %i.pj = getelementptr i8, ptr %i.oj, i64 28
  %i.pk = getelementptr i8, ptr %i.ok, i64 40
  %i.pl = load float, ptr %i.ph, align 4, !tbaa !73
  %i.pm = load float, ptr %i.pi, align 4, !tbaa !73
  %i.pn = load float, ptr %i.pj, align 4, !tbaa !73
  %i.po = load float, ptr %i.pk, align 4, !tbaa !73
  %i.pp = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pq = insertelement <4 x float> %i.pp, float %i.pm, i64 1
  %i.pr = insertelement <4 x float> %i.pq, float %i.pn, i64 2
  %i.ps = insertelement <4 x float> %i.pr, float %i.po, i64 3
  %i.pt = fdiv <4 x float> %i.ps, %i.pf
  %interleaved.vec510 = shufflevector <4 x float> %i.pg, <4 x float> %i.pt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec510, ptr %next.gep509, align 4, !tbaa !52
  %index.next511 = add nuw i64 %index504, 4       ; 2 uses
  %i.pu = icmp eq i64 %index.next511, %n.vec502
  br i1 %i.pu, label %middle.block512, label %vector.body503, !llvm.loop !127

middle.block512:                                  ; preds = %vector.body503
  %cmp.n513 = icmp eq i64 %i.oc, %n.vec502
  br i1 %cmp.n513, label %.loopexit, label %.lr.ph412.preheader516

.lr.ph412.preheader516:                           ; preds = %.lr.ph412.preheader, %middle.block512
  %.096410.ph = phi ptr [ %i.nw, %.lr.ph412.preheader ], [ %i.oe, %middle.block512 ]
  %.097409.ph = phi ptr [ %i.nj, %.lr.ph412.preheader ], [ %i.og, %middle.block512 ]
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader516, %.lr.ph412
  %.096410 = phi ptr [ %i.qc, %.lr.ph412 ], [ %.096410.ph, %.lr.ph412.preheader516 ] ; 3 uses
  %.097409 = phi ptr [ %i.qb, %.lr.ph412 ], [ %.097409.ph, %.lr.ph412.preheader516 ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.096410, i64 8
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !74
  %i.px = load <2 x float>, ptr %.096410, align 4, !tbaa !52
  %i.py = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.pz = shufflevector <2 x float> %i.py, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qa = fdiv <2 x float> %i.px, %i.pz
  store <2 x float> %i.qa, ptr %.097409, align 4, !tbaa !52
  %i.qb = getelementptr inbounds nuw i8, ptr %.097409, i64 8 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.096410, i64 12
  %i.qd = icmp ult ptr %i.qb, %i.nr
  br i1 %i.qd, label %.lr.ph412, label %.loopexit, !llvm.loop !128

.loopexit:                                        ; preds = %.lr.ph412, %middle.block512, %bb.x, %bb.t
  %.pre-phi = phi i64 [ %.pre467, %bb.t ], [ %i.nu, %bb.x ], [ %i.nu, %middle.block512 ], [ %i.nu, %.lr.ph412 ]
  %i.qe = phi ptr [ %.pre465, %bb.t ], [ %i.ns, %bb.x ], [ %i.ns, %middle.block512 ], [ %i.ns, %.lr.ph412 ]
  %i.qf = phi ptr [ %.pre, %bb.t ], [ %i.nj, %bb.x ], [ %i.nj, %middle.block512 ], [ %i.nj, %.lr.ph412 ] ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.pre-phi ; 2 uses
  %i.qh = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.qi = sext i32 %i.qh to i64
  %.idx = mul nsw i64 %i.qi, 12
  %i.qj = getelementptr inbounds i8, ptr %i.qg, i64 %.idx
  %i.qk = icmp sgt i32 %i.qh, 0
  br i1 %i.qk, label %.lr.ph419, label %._crit_edge420

.lr.ph419:                                        ; preds = %.loopexit, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread
  %.094417 = phi ptr [ %i.te, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.qg, %.loopexit ] ; 2 uses
  %.095416 = phi ptr [ %i.td, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread ], [ %i.qf, %.loopexit ] ; 3 uses
  %i.ql = load float, ptr %.095416, align 4       ; 2 uses
  %i.qm = fcmp ord float %i.ql, 0.000000e+00
  br i1 %i.qm, label %bb.y, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.y:                                             ; preds = %.lr.ph419
  %.095.sroa_idx = getelementptr inbounds nuw i8, ptr %.095416, i64 4
  %i.qn = load float, ptr %.095.sroa_idx, align 4
  %i.qo = insertelement <4 x float> poison, float %i.ql, i64 0
  %i.qp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.qo) ; 8 uses
  %i.qq = insertelement <4 x float> poison, float %i.qn, i64 0
  %i.qr = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.qq) ; 15 uses
  %i.qs = icmp slt i32 %i.qp, %.sroa.0382.0.extract.trunc
  %i.qt = or i32 %i.qr, %i.qp
  %i.qu = icmp sgt i32 %i.qt, -1
  %or.cond386.not396 = and i1 %i.qs, %i.qu
  %i.qv = icmp slt i32 %i.qr, %.sroa.3.0.extract.trunc
  %or.cond387 = and i1 %i.qv, %or.cond386.not396
  br i1 %or.cond387, label %bb.z, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.qw = getelementptr inbounds nuw i8, ptr %.094417, i64 8
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !74
  %i.qy = fmul float %i.mc, %i.qx
  %i.qz = fpext float %i.qy to double             ; 14 uses
  %i.ra = load i32, ptr %i.mz, align 4, !tbaa !89
  %.fr425 = freeze i32 %i.ra
  %i.rb = icmp slt i32 %.fr425, 2                 ; 2 uses
  %i.rc = load ptr, ptr %i.na, align 8, !tbaa !51 ; 7 uses
  %i.rd = load i64, ptr %i.nb, align 8
  %i.re = zext nneg i32 %i.qr to i64
  %i.rf = mul i64 %i.rd, %i.re
  %.sink.idx.i = select i1 %i.rb, i64 0, i64 %i.rf
  %.sink.i159 = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.sink.idx.i
  %i.rg = zext nneg i32 %i.qp to i64              ; 3 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %.sink.i159, i64 %i.rg ; 2 uses
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !92 ; 2 uses
  %i.rj = fcmp uno double %i.ri, 0.000000e+00
  %i.rk = fcmp ogt double %i.ri, %i.qz
  %or.cond388 = select i1 %i.rj, i1 true, i1 %i.rk
  br i1 %or.cond388, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %i.qz, ptr %i.rh, align 8, !tbaa !92
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.rl = add nsw i32 %i.qp, -1                   ; 4 uses
  %i.rm = add nsw i32 %i.qr, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.qp, 0
  %i.rn = icmp sle i32 %i.qp, %.sroa.0382.0.extract.trunc
  %or.cond389.us = and i1 %.not.i160.us, %i.rn    ; 4 uses
  br i1 %i.rb, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread

.split.us.preheader:                              ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.ad, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us

bb.ad:                                            ; preds = %.split.us.preheader
  %.not8.i161.us = icmp sgt i32 %i.qr, -1
  br i1 %.not8.i161.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ro = zext nneg i32 %i.rl to i64
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.ro ; 2 uses
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !92 ; 2 uses
  %i.rr = fcmp uno double %i.rq, 0.000000e+00
  %i.rs = fcmp ogt double %i.rq, %i.qz
  %or.cond391.us = select i1 %i.rr, i1 true, i1 %i.rs
  br i1 %or.cond391.us, label %bb.af, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.af:                                            ; preds = %bb.ae
  store double %i.qz, ptr %i.rp, align 8, !tbaa !92
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us: ; preds = %.split.us.preheader
  %.not.i160.us.1 = icmp sgt i32 %i.qp, -1
  br i1 %.not.i160.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.af, %bb.ae, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us
  %.not8.i161.us.1 = icmp sgt i32 %i.qr, 0
  %i.rt = icmp sle i32 %i.qr, %.sroa.3.0.extract.trunc
  %or.cond390.us.1 = and i1 %.not8.i161.us.1, %i.rt
  br i1 %or.cond390.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.rg ; 2 uses
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !92 ; 2 uses
  %i.rw = fcmp uno double %i.rv, 0.000000e+00
  %i.rx = fcmp ogt double %i.rv, %i.qz
  %or.cond391.us.1 = select i1 %i.rw, i1 true, i1 %i.rx
  br i1 %or.cond391.us.1, label %bb.ah, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1
end_hunk_2
begin_hunk_3_@_ZN2cv4Mat_IfEaSEONS_3MatE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !54
  store ptr %0, ptr %i.o, align 8, !tbaa !21
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #1

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_ItEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !29
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 2
  store i32 %i.d, ptr %0, align 8, !tbaa !29
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !89
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863678, ptr %3, align 8, !tbaa !54
  store ptr %0, ptr %i.o, align 8, !tbaa !21
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 2, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !29
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 6
  store i32 %i.d, ptr %0, align 8, !tbaa !29
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !89
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863674, ptr %3, align 8, !tbaa !54
  store ptr %0, ptr %i.o, align 8, !tbaa !21
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !5, i64 4}
!16 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!17 = !{!16, !5, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!20 = distinct !{!20, !"_ZNK2cv11_InputArray6getMatEi"}
!21 = !{!22, !12, i64 8}
!22 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !12, i64 8, !16, i64 16}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!25 = distinct !{!25, !"_ZNK2cv11_InputArray6getMatEi"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!28 = distinct !{!28, !"_ZNK2cv11_InputArray6getMatEi"}
!29 = !{!30, !5, i64 0}
!30 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !31, i64 56, !32, i64 64, !33, i64 72, !35, i64 128}
!31 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!32 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!33 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !34, i64 4, !5, i64 8, !6, i64 12}
!34 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!35 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!38 = distinct !{!38, !"_ZNK2cv11_InputArray6getMatEi"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!41 = distinct !{!41, !"_ZNK2cv11_InputArray6getMatEi"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!44 = distinct !{!44, !"_ZNK2cv11_InputArray6getMatEi"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!47 = distinct !{!47, !"_ZNK2cv11_InputArray6getMatEi"}
!48 = !{!10, !11, i64 0}
!49 = !{!13, !13, i64 0}
!50 = !{!9, !13, i64 8}
!51 = !{!30, !11, i64 24}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !6, i64 0}
!54 = !{!22, !5, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!57 = distinct !{!57, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!58 = !{i64 0, i64 64, !14}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!61 = distinct !{!61, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!62 = !{!30, !5, i64 8}
!63 = !{!30, !5, i64 12}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !6, i64 0}
!66 = distinct !{!66, !67, !68, !69}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !67}
!71 = !{!72, !53, i64 0}
!72 = !{!"_ZTSN2cv7Point3_IfEE", !53, i64 0, !53, i64 4, !53, i64 8}
!73 = !{!72, !53, i64 4}
!74 = !{!72, !53, i64 8}
!75 = distinct !{!75, !67, !69, !68}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!78 = !{!"p1 _ZTSN2cv6Point_IfEE", !12, i64 0}
!79 = !{!77, !78, i64 16}
!80 = !{!77, !78, i64 8}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi: argument 0"}
!83 = distinct !{!83, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi"}
!84 = !{!85, !5, i64 0}
!85 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!86 = !{!85, !5, i64 4}
!87 = distinct !{!87, !67, !68, !69}
!88 = distinct !{!88, !67, !69, !68}
!89 = !{!30, !5, i64 4}
!90 = distinct !{!90, !67}
!91 = distinct !{!91, !67}
!92 = !{!93, !93, i64 0}
!93 = !{!"double", !6, i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!96 = distinct !{!96, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!99 = distinct !{!99, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !67, !68, !69}
!106 = distinct !{!106, !67}
!107 = distinct !{!107, !67, !68}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi: argument 0"}
!110 = distinct !{!110, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi"}
!111 = distinct !{!111, !67, !68, !69}
!112 = distinct !{!112, !67, !69, !68}
!113 = distinct !{!113, !67}
!114 = distinct !{!114, !67}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!117 = distinct !{!117, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb: argument 0"}
!120 = distinct !{!120, !"_ZNK2cv4MatxIfLi4ELi4EE3invEiPb"}
!121 = distinct !{!121, !67, !68, !69}
!122 = distinct !{!122, !67}
!123 = distinct !{!123, !67, !69, !68}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi: argument 0"}
!126 = distinct !{!126, !"_ZNK2cv4Mat_INS_7Point3_IfEEE3rowEi"}
!127 = distinct !{!127, !67, !68, !69}
!128 = distinct !{!128, !67, !69, !68}
!129 = distinct !{!129, !67}
!130 = distinct !{!130, !67}
end_hunk_3
