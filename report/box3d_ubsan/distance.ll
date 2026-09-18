Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance?download=true
inline.NumInlined: 304
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3ShapeDistance:bb.a
  %i.oc = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.not36.i183.i = icmp ugt ptr %i.n, inttoptr (i64 -9 to ptr)
  %i.od = add i64 %i.nu, 4                        ; 3 uses
  %.not.i577 = icmp eq i64 %i.od, 0
  %.not152.i = icmp eq ptr %i.l, inttoptr (i64 -4 to ptr)
  %i.oe = add i64 %i.nx, 4                        ; 3 uses
  %.not153.i = icmp eq i64 %i.oe, 0
  %.not154.i = icmp eq ptr %i.m, inttoptr (i64 -4 to ptr)
  %i.of = add i64 %i.oa, 4                        ; 3 uses
  %.not155.i = icmp eq i64 %i.of, 0
  %.not156.i = icmp eq ptr %i.n, inttoptr (i64 -4 to ptr)
  %i.og = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.not.i = icmp eq i64 %i.lw, 0                  ; 4 uses
  %.not52.i = icmp ugt ptr %5, inttoptr (i64 -49 to ptr) ; 6 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %.not522 = icmp ugt ptr %5, inttoptr (i64 -97 to ptr) ; 3 uses
  %.not521 = icmp eq i64 %i.mb, 0
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre3052 = load i32, ptr %i.ba, align 8, !tbaa !23
  %i.on = insertelement <2 x float> poison, float %i.as, i64 0
  %i.oo = insertelement <2 x float> %i.on, float %i.ar, i64 1
  %i.op = shufflevector <2 x float> %i.an, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.oq = shufflevector <2 x float> %i.ah, <2 x float> %i.an, <2 x i32> <i32 3, i32 0>
  br label %bb.ah

bb.ah:                                            ; preds = %.split2228, %bb.jn
  %i.or = phi i32 [ %.pre3052, %.split2228 ], [ %i.amn, %bb.jn ]
  %.12233 = phi i32 [ %.0466, %.split2228 ], [ %.2, %bb.jn ] ; 10 uses
  %.04672232 = phi float [ f0x7F7FFFFF, %.split2228 ], [ %i.afk, %bb.jn ]
  %.sroa.10.02231 = phi float [ 0.000000e+00, %.split2228 ], [ %i.ahq, %bb.jn ]
  %.sroa.0295.02230 = phi <2 x float> [ zeroinitializer, %.split2228 ], [ %i.ahp, %bb.jn ]
  %.04692229 = phi i32 [ 0, %.split2228 ], [ %i.amo, %bb.jn ] ; 6 uses
  switch i32 %i.or, label %.thread815.sink.split [
    i32 1, label %.critedge536
    i32 2, label %bb.ai
    i32 3, label %bb.au
    i32 4, label %bb.cn
  ]

.critedge536:                                     ; preds = %bb.ah
  store float 1.000000e+00, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not52.i, label %bb.aj, label %bb.ak, !prof !20, !nosanitize !11

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.lu, i64 %i.lw) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ak:                                            ; preds = %bb.ai
  %.sroa.532.0.copyload.i = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  %.sroa.030.0.copyload.i = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  %i.os = fsub float %.sroa.5.0.copyload.i, %.sroa.532.0.copyload.i ; 4 uses
  %i.ot = fmul float %i.os, %i.os
  %i.ou = fmul float %.sroa.5.0.copyload.i, %i.os
  %i.ov = fsub <2 x float> %.sroa.028.0.copyload.i, %.sroa.030.0.copyload.i ; 6 uses
  %foldExtExtBinop4410 = fmul <2 x float> %i.ov, %i.ov
  %foldExtExtBinop4412 = fmul <2 x float> %i.ov, %i.ov
  %shift4414 = shufflevector <2 x float> %foldExtExtBinop4412, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4415 = fadd <2 x float> %foldExtExtBinop4410, %shift4414
  %i.ow = extractelement <2 x float> %foldExtExtBinop4415, i64 0
  %i.ox = fadd float %i.ot, %i.ow                 ; 2 uses
  %i.oy = fmul <2 x float> %.sroa.028.0.copyload.i, %i.ov ; 2 uses
  %shift4417 = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4418 = fadd <2 x float> %i.oy, %shift4417
  %i.oz = extractelement <2 x float> %foldExtExtBinop4418, i64 0
  %i.pa = fadd float %i.ou, %i.oz                 ; 2 uses
  %i.pb = fmul <2 x float> %.sroa.030.0.copyload.i, %i.ov ; 2 uses
  %shift4420 = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4421 = fadd <2 x float> %i.pb, %shift4420
  %i.pc = extractelement <2 x float> %foldExtExtBinop4421, i64 0
  %i.pd = fmul float %.sroa.532.0.copyload.i, %i.os
  %i.pe = fadd float %i.pd, %i.pc                 ; 2 uses
  %i.pf = fneg float %i.pe
  %i.pg = fcmp ult float %i.pe, 0.000000e+00
  br i1 %i.pg, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  store float 1.000000e+00, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread

bb.am:                                            ; preds = %bb.ak
  %i.ph = fcmp ugt float %i.pa, 0.000000e+00
  br i1 %i.ph, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  br i1 %.not.i, label %bb.ao, label %bb.ap, !prof !20, !nosanitize !11

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @71, i64 %i.lu, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.lv, i64 48, i1 false), !tbaa.struct !55
  store float 1.000000e+00, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread

bb.aq:                                            ; preds = %bb.am
  %i.pi = fcmp ugt float %i.ox, 0.000000e+00
  br i1 %i.pi, label %bb.ar, label %.thread815.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.pj = fdiv float 1.000000e+00, %i.ox          ; 2 uses
  %i.pk = fmul float %i.pa, %i.pj                 ; 2 uses
  store float %i.pk, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br i1 %.not.i, label %bb.as, label %bb.at, !prof !20, !nosanitize !11

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @72, i64 %i.lu, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.at:                                            ; preds = %bb.ar
  %i.pl = fmul float %i.pj, %i.pf
  store float %i.pl, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread

bb.au:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.068.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1285.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !55
  %.sroa.669.0.copyload.i = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8 ; 9 uses
  %.sroa.978.0.copyload.i = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1285.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.047.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1264.i)
  br i1 %i.lz, label %bb.aw, label %bb.av, !prof !12, !nosanitize !11

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @73, i64 %i.lu, i64 %i.lw) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.047.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false), !tbaa.struct !55
  %.sroa.648.0.copyload.i = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8 ; 10 uses
  %.sroa.957.0.copyload.i = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1264.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.029.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  br i1 %i.me, label %bb.ay, label %bb.ax, !prof !12, !nosanitize !11

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @74, i64 %i.lu, i64 %i.mb) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ma, i64 24, i1 false), !tbaa.struct !55
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.10136.0..sroa_idx.i, align 8 ; 10 uses
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  %i.pm = fsub <2 x float> %.sroa.648.0.copyload.i, %.sroa.669.0.copyload.i ; 4 uses
  %i.pn = fsub float %.sroa.957.0.copyload.i, %.sroa.978.0.copyload.i ; 4 uses
  %i.po = fmul float %.sroa.957.0.copyload.i, %i.pn
  %i.pp = shufflevector <2 x float> %.sroa.669.0.copyload.i, <2 x float> %.sroa.648.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.pq = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pr = fmul <2 x float> %i.pp, %i.pq
  %i.ps = shufflevector <2 x float> %.sroa.648.0.copyload.i, <2 x float> %.sroa.669.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.pt = fmul <2 x float> %i.ps, %i.pm
  %i.pu = fadd <2 x float> %i.pr, %i.pt           ; 2 uses
  %i.pv = extractelement <2 x float> %i.pu, i64 0
  %i.pw = fadd float %i.po, %i.pv                 ; 2 uses
  store float %i.pw, ptr %i.l, align 4, !tbaa !19
  %i.px = fmul float %.sroa.978.0.copyload.i, %i.pn
  %i.py = extractelement <2 x float> %i.pu, i64 1
  %i.pz = fadd float %i.px, %i.py                 ; 2 uses
  br i1 %.not.i.i, label %bb.az, label %bb.ba, !prof !20, !nosanitize !11

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.nu, i64 %i.od) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ba:                                            ; preds = %bb.ay
  %i.qa = fneg float %i.pz
  store float %i.qa, ptr %i.nv, align 4, !tbaa !19
  br i1 %.not36.i.i, label %bb.bb, label %b3BarycentricCoordsEdge.exit.i, !prof !20, !nosanitize !11

bb.bb:                                            ; preds = %bb.ba
  %i.qb = add i64 %i.nu, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.nu, i64 %i.qb) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit.i:                   ; preds = %bb.ba
  %i.qc = fmul float %i.pn, %i.pn
  %i.qd = fmul <2 x float> %i.pm, %i.pm           ; 2 uses
  %shift4423 = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4424 = fadd <2 x float> %i.qd, %shift4423
  %i.qe = extractelement <2 x float> %foldExtExtBinop4424, i64 0
  %i.qf = fadd float %i.qc, %i.qe
  store float %i.qf, ptr %i.nw, align 4, !tbaa !19
  %i.qg = fsub <2 x float> %.sroa.6.0.copyload.i, %.sroa.648.0.copyload.i ; 6 uses
  %i.qh = fsub float %.sroa.9.0.copyload.i, %.sroa.957.0.copyload.i ; 4 uses
  %i.qi = fmul float %.sroa.9.0.copyload.i, %i.qh
  %foldExtExtBinop4426 = fmul <2 x float> %.sroa.6.0.copyload.i, %i.qg
  %foldExtExtBinop4541 = fmul <2 x float> %.sroa.6.0.copyload.i, %i.qg
  %shift4543 = shufflevector <2 x float> %foldExtExtBinop4541, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4544 = fadd <2 x float> %foldExtExtBinop4426, %shift4543
  %i.qj = extractelement <2 x float> %foldExtExtBinop4544, i64 0
  %i.qk = fadd float %i.qi, %i.qj                 ; 2 uses
  store float %i.qk, ptr %i.m, align 4, !tbaa !19
  %foldExtExtBinop4428 = fmul <2 x float> %.sroa.648.0.copyload.i, %i.qg
  %foldExtExtBinop4430 = fmul <2 x float> %.sroa.648.0.copyload.i, %i.qg
  %shift4432 = shufflevector <2 x float> %foldExtExtBinop4430, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4433 = fadd <2 x float> %foldExtExtBinop4428, %shift4432
  %i.ql = extractelement <2 x float> %foldExtExtBinop4433, i64 0
  %11 = fmul float %.sroa.957.0.copyload.i, %i.qh
  %i.qm = fadd float %11, %i.ql                   ; 2 uses
  br i1 %.not.i175.i, label %bb.bc, label %bb.bd, !prof !20, !nosanitize !11

bb.bc:                                            ; preds = %b3BarycentricCoordsEdge.exit.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.nx, i64 %i.oe) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bd:                                            ; preds = %b3BarycentricCoordsEdge.exit.i
  %i.qn = fneg float %i.qm
  store float %i.qn, ptr %i.ny, align 4, !tbaa !19
  br i1 %.not36.i176.i, label %bb.be, label %b3BarycentricCoordsEdge.exit177.i, !prof !20, !nosanitize !11

bb.be:                                            ; preds = %bb.bd
  %i.qo = add i64 %i.nx, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.nx, i64 %i.qo) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit177.i:                ; preds = %bb.bd
  %i.qp = fmul float %i.qh, %i.qh
  %i.qq = fmul <2 x float> %i.qg, %i.qg           ; 2 uses
  %shift4435.a = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4436.a = fadd <2 x float> %i.qq, %shift4435.a
  %i.qr = extractelement <2 x float> %foldExtExtBinop4436.a, i64 0
  %i.qs = fadd float %i.qp, %i.qr
  store float %i.qs, ptr %i.nz, align 4, !tbaa !19
  %i.qt = fsub <2 x float> %.sroa.669.0.copyload.i, %.sroa.6.0.copyload.i ; 6 uses
  %i.qu = fsub float %.sroa.978.0.copyload.i, %.sroa.9.0.copyload.i ; 4 uses
  %i.qv = fmul float %.sroa.978.0.copyload.i, %i.qu
  %foldExtExtBinop4438 = fmul <2 x float> %.sroa.669.0.copyload.i, %i.qt
  %foldExtExtBinop4440 = fmul <2 x float> %.sroa.669.0.copyload.i, %i.qt
  %shift4442 = shufflevector <2 x float> %foldExtExtBinop4440, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4443 = fadd <2 x float> %foldExtExtBinop4438, %shift4442
  %i.qw = extractelement <2 x float> %foldExtExtBinop4443, i64 0
  %i.qx = fadd float %i.qv, %i.qw                 ; 2 uses
  store float %i.qx, ptr %i.n, align 4, !tbaa !19
  %foldExtExtBinop4445 = fmul <2 x float> %.sroa.6.0.copyload.i, %i.qt
  %foldExtExtBinop4447 = fmul <2 x float> %.sroa.6.0.copyload.i, %i.qt
  %shift4449 = shufflevector <2 x float> %foldExtExtBinop4447, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4450 = fadd <2 x float> %foldExtExtBinop4445, %shift4449
  %i.qy = extractelement <2 x float> %foldExtExtBinop4450, i64 0
  %12 = fmul float %.sroa.9.0.copyload.i, %i.qu
  %i.qz = fadd float %12, %i.qy                   ; 2 uses
  br i1 %.not.i182.i, label %bb.bf, label %bb.bg, !prof !20, !nosanitize !11

bb.bf:                                            ; preds = %b3BarycentricCoordsEdge.exit177.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.oa, i64 %i.of) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bg:                                            ; preds = %b3BarycentricCoordsEdge.exit177.i
  %i.ra = fneg float %i.qz
  store float %i.ra, ptr %i.ob, align 4, !tbaa !19
  br i1 %.not36.i183.i, label %bb.bh, label %b3BarycentricCoordsEdge.exit184.i, !prof !20, !nosanitize !11

bb.bh:                                            ; preds = %bb.bg
  %i.rb = add i64 %i.oa, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.oa, i64 %i.rb) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit184.i:                ; preds = %bb.bg
  %i.rc = fmul float %i.qu, %i.qu
  %i.rd = fmul <2 x float> %i.qt, %i.qt           ; 2 uses
  %shift4452 = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4453 = fadd <2 x float> %i.rd, %shift4452
  %i.re = extractelement <2 x float> %foldExtExtBinop4453, i64 0
  %i.rf = fadd float %i.rc, %i.re
  store float %i.rf, ptr %i.oc, align 4, !tbaa !19
  br i1 %.not152.i, label %bb.bi, label %bb.bj, !prof !20, !nosanitize !11

bb.bi:                                            ; preds = %b3BarycentricCoordsEdge.exit184.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @75, i64 %i.nu, i64 %i.od) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bj:                                            ; preds = %b3BarycentricCoordsEdge.exit184.i
  %i.rg = fcmp ult float %i.pz, 0.000000e+00
  %i.rh = fcmp ugt float %i.qx, 0.000000e+00
  %or.cond.i = select i1 %i.rg, i1 true, i1 %i.rh
  br i1 %or.cond.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  br label %b3SolveSimplex2.exit.thread810

bb.bl:                                            ; preds = %bb.bj
  br i1 %.not154.i, label %bb.bm, label %bb.bn, !prof !20, !nosanitize !11

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @76, i64 %i.nx, i64 %i.oe) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bn:                                            ; preds = %bb.bl
  %i.ri = fcmp ult float %i.qm, 0.000000e+00
  %i.rj = fcmp ugt float %i.pw, 0.000000e+00
  %or.cond162.i = select i1 %i.ri, i1 true, i1 %i.rj
  br i1 %or.cond162.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false)
  store <2 x float> %.sroa.648.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.957.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex2.exit.thread810

bb.bp:                                            ; preds = %bb.bn
  br i1 %.not156.i, label %bb.bq, label %bb.br, !prof !20, !nosanitize !11

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.oa, i64 %i.of) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.br:                                            ; preds = %bb.bp
  %i.rk = fcmp ult float %i.qz, 0.000000e+00
  %i.rl = fcmp ugt float %i.qk, 0.000000e+00
  %or.cond164.i = select i1 %i.rk, i1 true, i1 %i.rl
  br i1 %or.cond164.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ma, i64 24, i1 false)
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex2.exit.thread810

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.o, <2 x float> %.sroa.669.0.copyload.i, float %.sroa.978.0.copyload.i, <2 x float> %.sroa.648.0.copyload.i, float %.sroa.957.0.copyload.i, <2 x float> %.sroa.6.0.copyload.i, float %.sroa.9.0.copyload.i)
  %i.rm = load float, ptr %i.og, align 8, !tbaa !19 ; 2 uses
  %i.rn = fcmp ole float %i.rm, 0.000000e+00
  %i.ro = load float, ptr %i.l, align 4           ; 2 uses
  %i.rp = fcmp ogt float %i.ro, 0.000000e+00
  %or.cond166.i = select i1 %i.rn, i1 %i.rp, i1 false
  br i1 %or.cond166.i, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  br i1 %.not.i577, label %bb.bv, label %bb.bw, !prof !20, !nosanitize !11

bb.bv:                                            ; preds = %bb.bu
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.nu, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bw:                                            ; preds = %bb.bu
  %i.rq = load float, ptr %i.nv, align 4, !tbaa !19 ; 2 uses
  %i.rr = fcmp ogt float %i.rq, 0.000000e+00
  br i1 %i.rr, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.669.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.978.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1285.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.047.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.648.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8
  store float %.sroa.957.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1264.i, i64 12, i1 false), !tbaa.struct !56
  %i.rs = load float, ptr %i.nw, align 4, !tbaa !19 ; 3 uses
  %i.rt = fcmp ugt float %i.rs, 0.000000e+00
  br i1 %i.rt, label %bb.by, label %b3SolveSimplex2.exit

bb.by:                                            ; preds = %bb.bx
  %i.ru = fdiv float %i.ro, %i.rs                 ; 2 uses
  store float %i.ru, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.rv = fdiv float %i.rq, %i.rs
  store float %i.rv, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread813

bb.bz:                                            ; preds = %bb.bw, %bb.bt
  %i.rw = load float, ptr %i.o, align 16, !tbaa !19 ; 2 uses
  %i.rx = fcmp ole float %i.rw, 0.000000e+00
  %i.ry = load float, ptr %i.m, align 4           ; 2 uses
  %i.rz = fcmp ogt float %i.ry, 0.000000e+00
  %or.cond168.i = select i1 %i.rx, i1 %i.rz, i1 false
  br i1 %or.cond168.i, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not153.i, label %bb.cb, label %bb.cc, !prof !20, !nosanitize !11

bb.cb:                                            ; preds = %bb.ca
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @79, i64 %i.nx, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cc:                                            ; preds = %bb.ca
  %i.sa = load float, ptr %i.ny, align 4, !tbaa !19 ; 2 uses
  %i.sb = fcmp ogt float %i.sa, 0.000000e+00
  br i1 %i.sb, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.047.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.648.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.957.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1264.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12.i, i64 12, i1 false), !tbaa.struct !56
  %i.sc = load float, ptr %i.nz, align 4, !tbaa !19 ; 3 uses
  %i.sd = fcmp ugt float %i.sc, 0.000000e+00
  br i1 %i.sd, label %bb.ce, label %b3SolveSimplex2.exit

bb.ce:                                            ; preds = %bb.cd
  %i.se = fdiv float %i.ry, %i.sc                 ; 2 uses
  store float %i.se, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.sf = fdiv float %i.sa, %i.sc
  store float %i.sf, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread813

bb.cf:                                            ; preds = %bb.cc, %bb.bz
  %i.sg = load float, ptr %i.oh, align 4, !tbaa !19 ; 2 uses
  %i.sh = fcmp ole float %i.sg, 0.000000e+00
  %i.si = load float, ptr %i.n, align 4           ; 2 uses
  %i.sj = fcmp ogt float %i.si, 0.000000e+00
  %or.cond170.i = select i1 %i.sh, i1 %i.sj, i1 false
  br i1 %or.cond170.i, label %bb.cg, label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not155.i, label %bb.ch, label %bb.ci, !prof !20, !nosanitize !11

bb.ch:                                            ; preds = %bb.cg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.oa, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ci:                                            ; preds = %bb.cg
  %i.sk = load float, ptr %i.ob, align 4, !tbaa !19 ; 2 uses
  %i.sl = fcmp ogt float %i.sk, 0.000000e+00
  br i1 %i.sl, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.669.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8
  store float %.sroa.978.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1285.i, i64 12, i1 false), !tbaa.struct !56
  %i.sm = load float, ptr %i.oc, align 4, !tbaa !19 ; 3 uses
  %i.sn = fcmp ugt float %i.sm, 0.000000e+00
  br i1 %i.sn, label %bb.ck, label %b3SolveSimplex2.exit

bb.ck:                                            ; preds = %bb.cj
  %i.so = fdiv float %i.si, %i.sm                 ; 2 uses
  store float %i.so, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.sp = fdiv float %i.sk, %i.sm
  store float %i.sp, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread813

bb.cl:                                            ; preds = %bb.ci, %bb.cf
  %i.sq = load float, ptr %i.oi, align 4, !tbaa !19 ; 4 uses
  %i.sr = fcmp ugt float %i.sq, 0.000000e+00
  br i1 %i.sr, label %bb.cm, label %b3SolveSimplex2.exit

bb.cm:                                            ; preds = %bb.cl
  %i.ss = fdiv float %i.rw, %i.sq                 ; 2 uses
  store float %i.ss, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.st = fdiv float %i.sg, %i.sq
  store float %i.st, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.su = fdiv float %i.rm, %i.sq
  store float %i.su, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread813

bb.cn:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0225.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24262.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10226.0.copyload.i = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8 ; 19 uses
  %.sroa.17247.0.copyload.i = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 16 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0180.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24217.i)
  br i1 %i.lz, label %bb.cp, label %bb.co, !prof !12, !nosanitize !11

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @87, i64 %i.lu, i64 %i.lw) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10181.0.copyload.i = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8 ; 24 uses
  %.sroa.17202.0.copyload.i = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19 ; 17 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0135.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24172.i)
  br i1 %i.me, label %bb.cr, label %bb.cq, !prof !12, !nosanitize !11

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @88, i64 %i.lu, i64 %i.mb) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ma, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10136.0.copyload.i = load <2 x float>, ptr %.sroa.10136.0..sroa_idx.i, align 8 ; 24 uses
  %.sroa.17157.0.copyload.i = load float, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19 ; 18 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.093.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i)
  br i1 %i.mj, label %bb.ct, label %bb.cs, !prof !12, !nosanitize !11

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @89, i64 %i.lu, i64 %i.mg) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, ptr noundef nonnull align 8 dereferenceable(24) %i.mf, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10.0.copyload.i = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i, align 8 ; 23 uses
  %.sroa.17.0.copyload.i = load float, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !19 ; 18 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %.sroa.0.0.vec.extract.i.i.i579 = extractelement <2 x float> %.sroa.10226.0.copyload.i, i64 0
  %.sroa.07.4.vec.extract.i.i.i580 = extractelement <2 x float> %.sroa.10181.0.copyload.i, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.i.i581 = extractelement <2 x float> %.sroa.10226.0.copyload.i, i64 1 ; 2 uses
  %i.sv = fsub <2 x float> %.sroa.10181.0.copyload.i, %.sroa.10226.0.copyload.i ; 5 uses
  %i.sw = fsub float %.sroa.17202.0.copyload.i, %.sroa.17247.0.copyload.i ; 5 uses
  %i.sx = fmul float %.sroa.17202.0.copyload.i, %i.sw
  %i.sy = shufflevector <2 x float> %.sroa.10226.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.sz = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ta = fmul <2 x float> %i.sy, %i.sz
  %i.tb = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.tc = fmul <2 x float> %i.tb, %i.sv
  %i.td = fadd <2 x float> %i.ta, %i.tc           ; 2 uses
  %i.te = extractelement <2 x float> %i.td, i64 0
  %i.tf = fadd float %i.sx, %i.te                 ; 2 uses
  store float %i.tf, ptr %i.a, align 4, !tbaa !19
  %i.tg = fmul float %.sroa.17247.0.copyload.i, %i.sw
  %i.th = extractelement <2 x float> %i.td, i64 1
  %i.ti = fadd float %i.tg, %i.th                 ; 2 uses
  br i1 %.not.i.i582, label %bb.cu, label %bb.cv, !prof !20, !nosanitize !11

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mk, i64 %i.nc) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cv:                                            ; preds = %bb.ct
  %i.tj = fneg float %i.ti
  store float %i.tj, ptr %i.ml, align 4, !tbaa !19
  br i1 %.not36.i.i583, label %bb.cw, label %b3BarycentricCoordsEdge.exit.i584, !prof !20, !nosanitize !11

bb.cw:                                            ; preds = %bb.cv
  %i.tk = add i64 %i.mk, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.mk, i64 %i.tk) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit.i584:                ; preds = %bb.cv
  %i.tl = fmul float %i.sw, %i.sw
  %i.tm = fmul <2 x float> %i.sv, %i.sv           ; 2 uses
  %shift4455 = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4456 = fadd <2 x float> %i.tm, %shift4455
  %i.tn = extractelement <2 x float> %foldExtExtBinop4456, i64 0
  %i.to = fadd float %i.tl, %i.tn
  store float %i.to, ptr %i.mm, align 4, !tbaa !19
  %.sroa.07.4.vec.extract.i.i511.i = extractelement <2 x float> %.sroa.10136.0.copyload.i, i64 1 ; 3 uses
  %i.tp = fsub <2 x float> %.sroa.10136.0.copyload.i, %.sroa.10226.0.copyload.i ; 8 uses
  %i.tq = fsub float %.sroa.17157.0.copyload.i, %.sroa.17247.0.copyload.i ; 5 uses
  %i.tr = fmul float %.sroa.17157.0.copyload.i, %i.tq
  %foldExtExtBinop4458 = fmul <2 x float> %.sroa.10136.0.copyload.i, %i.tp
  %13 = extractelement <2 x float> %foldExtExtBinop4458, i64 0
  %14 = extractelement <2 x float> %i.tp, i64 1   ; 2 uses
  %15 = fmul float %.sroa.07.4.vec.extract.i.i511.i, %14
  %16 = fadd float %13, %15
  %17 = fadd float %i.tr, %16                     ; 2 uses
  store float %17, ptr %i.b, align 4, !tbaa !19
  %foldExtExtBinop4460 = fmul <2 x float> %.sroa.10226.0.copyload.i, %i.tp
  %18 = extractelement <2 x float> %foldExtExtBinop4460, i64 0
  %i.ts = fmul float %.sroa.0.4.vec.extract.i.i.i581, %14
  %19 = fadd float %18, %i.ts
  %20 = fmul float %.sroa.17247.0.copyload.i, %i.tq
  %i.tt = fadd float %20, %19                     ; 2 uses
  br i1 %.not.i513.i, label %bb.cx, label %bb.cy, !prof !20, !nosanitize !11

bb.cx:                                            ; preds = %b3BarycentricCoordsEdge.exit.i584
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mn, i64 %i.nh) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cy:                                            ; preds = %b3BarycentricCoordsEdge.exit.i584
  %i.tu = fneg float %i.tt
  store float %i.tu, ptr %i.mo, align 4, !tbaa !19
  br i1 %.not36.i514.i, label %bb.cz, label %b3BarycentricCoordsEdge.exit515.i, !prof !20, !nosanitize !11

bb.cz:                                            ; preds = %bb.cy
  %i.tv = add i64 %i.mn, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.mn, i64 %i.tv) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit515.i:                ; preds = %bb.cy
  %i.tw = fmul float %i.tq, %i.tq
  %i.tx = fmul <2 x float> %i.tp, %i.tp           ; 2 uses
  %shift4462.a = shufflevector <2 x float> %i.tx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4463.a = fadd <2 x float> %i.tx, %shift4462.a
  %i.ty = extractelement <2 x float> %foldExtExtBinop4463.a, i64 0
  %i.tz = fadd float %i.tw, %i.ty
  store float %i.tz, ptr %i.mp, align 4, !tbaa !19
  %.sroa.07.0.vec.extract.i.i516.i = extractelement <2 x float> %.sroa.10.0.copyload.i, i64 0
  %.sroa.07.4.vec.extract.i.i518.i = extractelement <2 x float> %.sroa.10.0.copyload.i, i64 1 ; 3 uses
  %i.ua = fsub float %.sroa.17.0.copyload.i, %.sroa.17247.0.copyload.i ; 5 uses
  %i.ub = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10226.0.copyload.i ; 7 uses
  %i.uc = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ud = fmul float %.sroa.17.0.copyload.i, %i.ua
  %21 = extractelement <2 x float> %i.ub, i64 0   ; 2 uses
  %22 = fmul float %.sroa.07.0.vec.extract.i.i516.i, %21
  %23 = extractelement <2 x float> %i.ub, i64 1   ; 2 uses
  %24 = fmul float %.sroa.07.4.vec.extract.i.i518.i, %23
  %25 = fadd float %22, %24
  %26 = fadd float %i.ud, %25                     ; 2 uses
  store float %26, ptr %i.c, align 4, !tbaa !19
  %27 = fmul float %.sroa.0.0.vec.extract.i.i.i579, %21
  %i.ue = fmul float %.sroa.0.4.vec.extract.i.i.i581, %23
  %28 = fadd float %27, %i.ue
  %29 = fmul float %.sroa.17247.0.copyload.i, %i.ua
  %i.uf = fadd float %29, %28                     ; 2 uses
  br i1 %.not.i520.i, label %bb.da, label %bb.db, !prof !20, !nosanitize !11

bb.da:                                            ; preds = %b3BarycentricCoordsEdge.exit515.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mq, i64 %i.nk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.db:                                            ; preds = %b3BarycentricCoordsEdge.exit515.i
  %i.ug = fneg float %i.uf
  store float %i.ug, ptr %i.mr, align 4, !tbaa !19
  br i1 %.not36.i521.i, label %bb.dc, label %b3BarycentricCoordsEdge.exit522.i, !prof !20, !nosanitize !11

bb.dc:                                            ; preds = %bb.db
  %i.uh = add i64 %i.mq, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.mq, i64 %i.uh) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit522.i:                ; preds = %bb.db
  %i.ui = fmul float %i.ua, %i.ua
  %i.uj = fmul <2 x float> %i.ub, %i.ub           ; 2 uses
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4466.a = fadd <2 x float> %i.uj, %i.uk
  %i.ul = extractelement <2 x float> %foldExtExtBinop4466.a, i64 0
  %i.um = fadd float %i.ui, %i.ul
  store float %i.um, ptr %i.ms, align 4, !tbaa !19
  %i.un = fsub <2 x float> %.sroa.10136.0.copyload.i, %.sroa.10181.0.copyload.i ; 5 uses
  %i.uo = fsub float %.sroa.17157.0.copyload.i, %.sroa.17202.0.copyload.i ; 4 uses
  %i.up = fmul float %.sroa.17157.0.copyload.i, %i.uo
  %foldExtExtBinop4468 = fmul <2 x float> %.sroa.10136.0.copyload.i, %i.un
  %30 = extractelement <2 x float> %foldExtExtBinop4468, i64 0
  %31 = extractelement <2 x float> %i.un, i64 1   ; 2 uses
  %32 = fmul float %.sroa.07.4.vec.extract.i.i511.i, %31
  %33 = fadd float %30, %32
  %34 = fadd float %i.up, %33                     ; 2 uses
  store float %34, ptr %i.d, align 4, !tbaa !19
  %foldExtExtBinop4470 = fmul <2 x float> %.sroa.10181.0.copyload.i, %i.un
  %35 = extractelement <2 x float> %foldExtExtBinop4470, i64 0
  %i.uq = fmul float %.sroa.07.4.vec.extract.i.i.i580, %31
  %36 = fadd float %35, %i.uq
  %37 = fmul float %.sroa.17202.0.copyload.i, %i.uo
  %i.ur = fadd float %37, %36                     ; 2 uses
  br i1 %.not.i527.i, label %bb.dd, label %bb.de, !prof !20, !nosanitize !11

bb.dd:                                            ; preds = %b3BarycentricCoordsEdge.exit522.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mt, i64 %i.nm) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.de:                                            ; preds = %b3BarycentricCoordsEdge.exit522.i
  %i.us = fneg float %i.ur
  store float %i.us, ptr %i.mu, align 4, !tbaa !19
  br i1 %.not36.i528.i, label %bb.df, label %b3BarycentricCoordsEdge.exit529.i, !prof !20, !nosanitize !11

bb.df:                                            ; preds = %bb.de
  %i.ut = add i64 %i.mt, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.mt, i64 %i.ut) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit529.i:                ; preds = %bb.de
  %i.uu = fmul float %i.uo, %i.uo
  %i.uv = fmul <2 x float> %i.un, %i.un           ; 2 uses
  %shift4472 = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4473 = fadd <2 x float> %i.uv, %shift4472
  %i.uw = extractelement <2 x float> %foldExtExtBinop4473, i64 0
  %i.ux = fadd float %i.uu, %i.uw
  store float %i.ux, ptr %i.mv, align 4, !tbaa !19
  %i.uy = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10136.0.copyload.i ; 5 uses
  %i.uz = fsub float %.sroa.17.0.copyload.i, %.sroa.17157.0.copyload.i ; 4 uses
  %i.va = fmul float %.sroa.17.0.copyload.i, %i.uz
  %foldExtExtBinop4475 = fmul <2 x float> %.sroa.10.0.copyload.i, %i.uy
  %38 = extractelement <2 x float> %foldExtExtBinop4475, i64 0
  %39 = extractelement <2 x float> %i.uy, i64 1   ; 2 uses
  %40 = fmul float %.sroa.07.4.vec.extract.i.i518.i, %39
  %41 = fadd float %38, %40
  %42 = fadd float %i.va, %41                     ; 2 uses
  store float %42, ptr %i.e, align 4, !tbaa !19
  %foldExtExtBinop4477 = fmul <2 x float> %.sroa.10136.0.copyload.i, %i.uy
  %43 = extractelement <2 x float> %foldExtExtBinop4477, i64 0
  %i.vb = fmul float %.sroa.07.4.vec.extract.i.i511.i, %39
  %44 = fadd float %43, %i.vb
  %45 = fmul float %.sroa.17157.0.copyload.i, %i.uz
  %i.vc = fadd float %45, %44                     ; 2 uses
  br i1 %.not.i534.i, label %bb.dg, label %bb.dh, !prof !20, !nosanitize !11

bb.dg:                                            ; preds = %b3BarycentricCoordsEdge.exit529.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mw, i64 %i.nn) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dh:                                            ; preds = %b3BarycentricCoordsEdge.exit529.i
  %i.vd = fneg float %i.vc
  store float %i.vd, ptr %i.mx, align 4, !tbaa !19
  br i1 %.not36.i535.i, label %bb.di, label %b3BarycentricCoordsEdge.exit536.i, !prof !20, !nosanitize !11

bb.di:                                            ; preds = %bb.dh
  %i.ve = add i64 %i.mw, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.mw, i64 %i.ve) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit536.i:                ; preds = %bb.dh
  %i.vf = fmul float %i.uz, %i.uz
  %i.vg = fmul <2 x float> %i.uy, %i.uy           ; 2 uses
  %shift4479 = shufflevector <2 x float> %i.vg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4480 = fadd <2 x float> %i.vg, %shift4479
  %i.vh = extractelement <2 x float> %foldExtExtBinop4480, i64 0
  %i.vi = fadd float %i.vf, %i.vh
  store float %i.vi, ptr %i.my, align 4, !tbaa !19
  %i.vj = fsub <2 x float> %.sroa.10181.0.copyload.i, %.sroa.10.0.copyload.i ; 5 uses
  %i.vk = fsub float %.sroa.17202.0.copyload.i, %.sroa.17.0.copyload.i ; 4 uses
  %i.vl = fmul float %.sroa.17202.0.copyload.i, %i.vk
  %foldExtExtBinop4482 = fmul <2 x float> %.sroa.10181.0.copyload.i, %i.vj
  %46 = extractelement <2 x float> %foldExtExtBinop4482, i64 0
  %47 = extractelement <2 x float> %i.vj, i64 1   ; 2 uses
  %48 = fmul float %.sroa.07.4.vec.extract.i.i.i580, %47
  %49 = fadd float %46, %48
  %50 = fadd float %i.vl, %49                     ; 2 uses
  store float %50, ptr %i.f, align 4, !tbaa !19
  %foldExtExtBinop4484 = fmul <2 x float> %.sroa.10.0.copyload.i, %i.vj
  %51 = extractelement <2 x float> %foldExtExtBinop4484, i64 0
  %i.vm = fmul float %.sroa.07.4.vec.extract.i.i518.i, %47
  %52 = fadd float %51, %i.vm
  %53 = fmul float %.sroa.17.0.copyload.i, %i.vk
  %i.vn = fadd float %53, %52                     ; 2 uses
  br i1 %.not.i541.i, label %bb.dj, label %bb.dk, !prof !20, !nosanitize !11

bb.dj:                                            ; preds = %b3BarycentricCoordsEdge.exit536.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mz, i64 %i.np) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dk:                                            ; preds = %b3BarycentricCoordsEdge.exit536.i
  %i.vo = fneg float %i.vn
  store float %i.vo, ptr %i.na, align 4, !tbaa !19
  br i1 %.not36.i542.i, label %bb.dl, label %b3BarycentricCoordsEdge.exit543.i, !prof !20, !nosanitize !11

bb.dl:                                            ; preds = %bb.dk
  %i.vp = add i64 %i.mz, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.mz, i64 %i.vp) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit543.i:                ; preds = %bb.dk
  %i.vq = fmul float %i.vk, %i.vk
  %i.vr = fmul <2 x float> %i.vj, %i.vj           ; 2 uses
  %shift4486 = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4487 = fadd <2 x float> %i.vr, %shift4486
  %i.vs = extractelement <2 x float> %foldExtExtBinop4487, i64 0
  %i.vt = fadd float %i.vq, %i.vs
  store float %i.vt, ptr %i.nb, align 4, !tbaa !19
  br i1 %.not453.i, label %bb.dm, label %bb.dn, !prof !20, !nosanitize !11

bb.dm:                                            ; preds = %b3BarycentricCoordsEdge.exit543.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @90, i64 %i.mk, i64 %i.nc) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dn:                                            ; preds = %b3BarycentricCoordsEdge.exit543.i
  %i.vu = fcmp ult float %i.ti, 0.000000e+00
  br i1 %i.vu, label %bb.dv, label %bb.do

bb.do:                                            ; preds = %bb.dn
  br i1 %.not454.i, label %bb.dp, label %bb.dq, !prof !20, !nosanitize !11

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @91, i64 %i.mn, i64 %i.nh) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dq:                                            ; preds = %bb.do
  %i.vv = fcmp ult float %i.tt, 0.000000e+00
  br i1 %i.vv, label %bb.dv, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  br i1 %.not455.i, label %bb.ds, label %bb.dt, !prof !20, !nosanitize !11

bb.ds:                                            ; preds = %bb.dr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @92, i64 %i.mq, i64 %i.nk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dt:                                            ; preds = %bb.dr
  %i.vw = fcmp ult float %i.uf, 0.000000e+00
  br i1 %i.vw, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  br label %b3SolveSimplex4.exit.thread

bb.dv:                                            ; preds = %bb.dt, %bb.dq, %bb.dn
  %i.vx = fcmp ugt float %i.tf, 0.000000e+00
  %i.vy = fcmp ugt float %50, 0.000000e+00
  %or.cond.i586 = select i1 %i.vx, i1 true, i1 %i.vy
  br i1 %or.cond.i586, label %bb.ea, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  br i1 %.not456.i, label %bb.dx, label %bb.dy, !prof !20, !nosanitize !11

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @93, i64 %i.mt, i64 %i.nm) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dy:                                            ; preds = %bb.dw
  %i.vz = fcmp ult float %i.ur, 0.000000e+00
  br i1 %i.vz, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false)
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex4.exit.thread

bb.ea:                                            ; preds = %bb.dy, %bb.dv
  %i.wa = fcmp ugt float %17, 0.000000e+00
  %i.wb = fcmp ugt float %34, 0.000000e+00
  %or.cond478.i = select i1 %i.wa, i1 true, i1 %i.wb
  br i1 %or.cond478.i, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  br i1 %.not457.i, label %bb.ec, label %bb.ed, !prof !20, !nosanitize !11

bb.ec:                                            ; preds = %bb.eb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @94, i64 %i.mw, i64 %i.nn) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ed:                                            ; preds = %bb.eb
  %i.wc = fcmp ult float %i.vc, 0.000000e+00
  br i1 %i.wc, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ma, i64 24, i1 false)
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex4.exit.thread

bb.ef:                                            ; preds = %bb.ed, %bb.ea
  %i.wd = fcmp ugt float %26, 0.000000e+00
  %i.we = fcmp ugt float %42, 0.000000e+00
  %or.cond480.i = select i1 %i.wd, i1 true, i1 %i.we
  br i1 %or.cond480.i, label %bb.ek, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  br i1 %.not458.i, label %bb.eh, label %bb.ei, !prof !20, !nosanitize !11

bb.eh:                                            ; preds = %bb.eg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @95, i64 %i.mz, i64 %i.np) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ei:                                            ; preds = %bb.eg
  %i.wf = fcmp ult float %i.vn, 0.000000e+00
  br i1 %i.wf, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.mf, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex4.exit.thread

bb.ek:                                            ; preds = %bb.ei, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.g, <2 x float> %.sroa.10226.0.copyload.i, float %.sroa.17247.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, float %.sroa.17157.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, float %.sroa.17202.0.copyload.i)
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.h, <2 x float> %.sroa.10226.0.copyload.i, float %.sroa.17247.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, float %.sroa.17202.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, float %.sroa.17.0.copyload.i)
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.i, <2 x float> %.sroa.10226.0.copyload.i, float %.sroa.17247.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, float %.sroa.17.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, float %.sroa.17157.0.copyload.i)
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.j, <2 x float> %.sroa.10181.0.copyload.i, float %.sroa.17202.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, float %.sroa.17157.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, float %.sroa.17.0.copyload.i)
  %i.wg = load float, ptr %i.nd, align 8, !tbaa !19 ; 3 uses
  %i.wh = fcmp ugt float %i.wg, 0.000000e+00
  br i1 %i.wh, label %bb.er, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.wi = load float, ptr %i.ne, align 4, !tbaa !19
  %i.wj = fcmp ole float %i.wi, 0.000000e+00
  %i.wk = load float, ptr %i.a, align 4           ; 2 uses
  %i.wl = fcmp ogt float %i.wk, 0.000000e+00
  %or.cond482.i = select i1 %i.wj, i1 %i.wl, i1 false
  br i1 %or.cond482.i, label %bb.em, label %bb.er

bb.em:                                            ; preds = %bb.el
  br i1 %.not.i585, label %bb.en, label %bb.eo, !prof !20, !nosanitize !11

bb.en:                                            ; preds = %bb.em
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @96, i64 %i.mk, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.eo:                                            ; preds = %bb.em
  %i.wm = load float, ptr %i.ml, align 4, !tbaa !19 ; 2 uses
  %i.wn = fcmp ogt float %i.wm, 0.000000e+00
  br i1 %i.wn, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  %i.wo = load float, ptr %i.mm, align 4, !tbaa !19 ; 3 uses
  %i.wp = fcmp ugt float %i.wo, 0.000000e+00
  br i1 %i.wp, label %bb.eq, label %b3SolveSimplex4.exit.thread833

bb.eq:                                            ; preds = %bb.ep
  %i.wq = fdiv float %i.wk, %i.wo                 ; 2 uses
  store float %i.wq, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.wr = fdiv float %i.wm, %i.wo
  br label %b3SolveSimplex4.exit.thread830

bb.er:                                            ; preds = %bb.eo, %bb.el, %bb.ek
  %i.ws = load float, ptr %i.nf, align 8, !tbaa !19 ; 3 uses
  %i.wt = fcmp ugt float %i.ws, 0.000000e+00
  br i1 %i.wt, label %bb.fa, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.wu = load float, ptr %i.ng, align 4, !tbaa !19
  %i.wv = fcmp ole float %i.wu, 0.000000e+00
  %i.ww = load float, ptr %i.b, align 4           ; 2 uses
  %i.wx = fcmp ogt float %i.ww, 0.000000e+00
  %or.cond484.i = select i1 %i.wv, i1 %i.wx, i1 false
  br i1 %or.cond484.i, label %bb.et, label %bb.fa

bb.et:                                            ; preds = %bb.es
  br i1 %.not454.i, label %bb.eu, label %bb.ev, !prof !20, !nosanitize !11

bb.eu:                                            ; preds = %bb.et
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @97, i64 %i.mn, i64 %i.nh) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ev:                                            ; preds = %bb.et
  %i.wy = load float, ptr %i.mo, align 4, !tbaa !19 ; 2 uses
  %i.wz = fcmp ogt float %i.wy, 0.000000e+00
  br i1 %i.wz, label %bb.ew, label %bb.fa

bb.ew:                                            ; preds = %bb.ev
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  %i.xa = load float, ptr %i.mp, align 4, !tbaa !19 ; 3 uses
  %i.xb = fcmp ugt float %i.xa, 0.000000e+00
  br i1 %i.xb, label %bb.ex, label %b3SolveSimplex4.exit.thread833

bb.ex:                                            ; preds = %bb.ew
  %i.xc = fdiv float %i.ww, %i.xa                 ; 2 uses
  store float %i.xc, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br i1 %.not459.i, label %bb.ey, label %bb.ez, !prof !20, !nosanitize !11

bb.ey:                                            ; preds = %bb.ex
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @98, i64 %i.mn, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ez:                                            ; preds = %bb.ex
  %i.xd = fdiv float %i.wy, %i.xa
  br label %b3SolveSimplex4.exit.thread830

bb.fa:                                            ; preds = %bb.ev, %bb.es, %bb.er
  %i.xe = load float, ptr %i.ni, align 8, !tbaa !19 ; 3 uses
  %i.xf = fcmp ugt float %i.xe, 0.000000e+00
  br i1 %i.xf, label %bb.fj, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xg = load float, ptr %i.nj, align 4, !tbaa !19
  %i.xh = fcmp ole float %i.xg, 0.000000e+00
  %i.xi = load float, ptr %i.c, align 4           ; 2 uses
  %i.xj = fcmp ogt float %i.xi, 0.000000e+00
  %or.cond486.i = select i1 %i.xh, i1 %i.xj, i1 false
  br i1 %or.cond486.i, label %bb.fc, label %bb.fj

bb.fc:                                            ; preds = %bb.fb
  br i1 %.not455.i, label %bb.fd, label %bb.fe, !prof !20, !nosanitize !11

bb.fd:                                            ; preds = %bb.fc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @99, i64 %i.mq, i64 %i.nk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fe:                                            ; preds = %bb.fc
  %i.xk = load float, ptr %i.mr, align 4, !tbaa !19 ; 2 uses
  %i.xl = fcmp ogt float %i.xk, 0.000000e+00
  br i1 %i.xl, label %bb.ff, label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.xm = load float, ptr %i.ms, align 4, !tbaa !19 ; 3 uses
  %i.xn = fcmp ugt float %i.xm, 0.000000e+00
  br i1 %i.xn, label %bb.fg, label %b3SolveSimplex4.exit.thread833

bb.fg:                                            ; preds = %bb.ff
  %i.xo = fdiv float %i.xi, %i.xm                 ; 2 uses
  store float %i.xo, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br i1 %.not461.i, label %bb.fh, label %bb.fi, !prof !20, !nosanitize !11

bb.fh:                                            ; preds = %bb.fg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @100, i64 %i.mq, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fi:                                            ; preds = %bb.fg
  %i.xp = fdiv float %i.xk, %i.xm
  br label %b3SolveSimplex4.exit.thread830

bb.fj:                                            ; preds = %bb.fe, %bb.fb, %bb.fa
  %i.xq = load float, ptr %i.g, align 16, !tbaa !19 ; 3 uses
  %i.xr = fcmp ugt float %i.xq, 0.000000e+00
  br i1 %i.xr, label %bb.fs, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xs = load float, ptr %i.nl, align 8, !tbaa !19
  %i.xt = fcmp ole float %i.xs, 0.000000e+00
  %i.xu = load float, ptr %i.d, align 4           ; 2 uses
  %i.xv = fcmp ogt float %i.xu, 0.000000e+00
  %or.cond488.i = select i1 %i.xt, i1 %i.xv, i1 false
  br i1 %or.cond488.i, label %bb.fl, label %bb.fs

bb.fl:                                            ; preds = %bb.fk
  br i1 %.not456.i, label %bb.fm, label %bb.fn, !prof !20, !nosanitize !11

bb.fm:                                            ; preds = %bb.fl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @101, i64 %i.mt, i64 %i.nm) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fn:                                            ; preds = %bb.fl
end_hunk_0
