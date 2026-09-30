Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance?download=true
inline.NumInlined: 304
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3ShapeDistance:bb.a

bb.br:                                            ; preds = %bb.bq
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ly, i64 24, i1 false)
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex2.exit.thread810

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.o, <2 x float> %.sroa.669.0.copyload.i, float %.sroa.978.0.copyload.i, <2 x float> %.sroa.648.0.copyload.i, float %.sroa.957.0.copyload.i, <2 x float> %.sroa.6.0.copyload.i, float %.sroa.9.0.copyload.i)
  %i.ry = load float, ptr %i.oe, align 8, !tbaa !19 ; 2 uses
  %i.rz = fcmp ole float %i.ry, 0.000000e+00
  %i.sa = load float, ptr %i.l, align 4           ; 2 uses
  %i.sb = fcmp ogt float %i.sa, 0.000000e+00
  %or.cond166.i = select i1 %i.rz, i1 %i.sb, i1 false
  br i1 %or.cond166.i, label %bb.bt, label %bb.by

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not.i577, label %bb.bu, label %bb.bv, !prof !20, !nosanitize !11

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.ns, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bv:                                            ; preds = %bb.bt
  %i.sc = load float, ptr %i.nt, align 4, !tbaa !19 ; 2 uses
  %i.sd = fcmp ogt float %i.sc, 0.000000e+00
  br i1 %i.sd, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.669.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.978.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1285.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.047.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.648.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.957.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1264.i, i64 12, i1 false), !tbaa.struct !56
  %i.se = load float, ptr %i.nu, align 4, !tbaa !19 ; 3 uses
  %i.sf = fcmp ugt float %i.se, 0.000000e+00
  br i1 %i.sf, label %bb.bx, label %b3SolveSimplex2.exit

bb.bx:                                            ; preds = %bb.bw
  %i.sg = fdiv float %i.sa, %i.se                 ; 2 uses
  store float %i.sg, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.sh = fdiv float %i.sc, %i.se
  store float %i.sh, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread813

bb.by:                                            ; preds = %bb.bv, %bb.bs
  %i.si = load float, ptr %i.o, align 16, !tbaa !19 ; 2 uses
  %i.sj = fcmp ole float %i.si, 0.000000e+00
  %i.sk = load float, ptr %i.m, align 4           ; 2 uses
  %i.sl = fcmp ogt float %i.sk, 0.000000e+00
  %or.cond168.i = select i1 %i.sj, i1 %i.sl, i1 false
  br i1 %or.cond168.i, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %bb.by
  br i1 %.not153.i, label %bb.ca, label %bb.cb, !prof !20, !nosanitize !11

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.nv, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cb:                                            ; preds = %bb.bz
  %i.sm = load float, ptr %i.nw, align 4, !tbaa !19 ; 2 uses
  %i.sn = fcmp ogt float %i.sm, 0.000000e+00
  br i1 %i.sn, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.047.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.648.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.957.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1264.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12.i, i64 12, i1 false), !tbaa.struct !56
  %i.so = load float, ptr %i.nx, align 4, !tbaa !19 ; 3 uses
  %i.sp = fcmp ugt float %i.so, 0.000000e+00
  br i1 %i.sp, label %bb.cd, label %b3SolveSimplex2.exit

bb.cd:                                            ; preds = %bb.cc
  %i.sq = fdiv float %i.sk, %i.so                 ; 2 uses
  store float %i.sq, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.sr = fdiv float %i.sm, %i.so
  store float %i.sr, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread813

bb.ce:                                            ; preds = %bb.cb, %bb.by
  %i.ss = load float, ptr %i.of, align 4, !tbaa !19 ; 2 uses
  %i.st = fcmp ole float %i.ss, 0.000000e+00
  %i.su = load float, ptr %i.n, align 4           ; 2 uses
  %i.sv = fcmp ogt float %i.su, 0.000000e+00
  %or.cond170.i = select i1 %i.st, i1 %i.sv, i1 false
  br i1 %or.cond170.i, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  br i1 %.not155.i, label %bb.cg, label %bb.ch, !prof !20, !nosanitize !11

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @79, i64 %i.ny, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ch:                                            ; preds = %bb.cf
  %i.sw = load float, ptr %i.nz, align 4, !tbaa !19 ; 2 uses
  %i.sx = fcmp ogt float %i.sw, 0.000000e+00
  br i1 %i.sx, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.6.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.669.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.978.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1285.i, i64 12, i1 false), !tbaa.struct !56
  %i.sy = load float, ptr %i.oa, align 4, !tbaa !19 ; 3 uses
  %i.sz = fcmp ugt float %i.sy, 0.000000e+00
  br i1 %i.sz, label %bb.cj, label %b3SolveSimplex2.exit

bb.cj:                                            ; preds = %bb.ci
  %i.ta = fdiv float %i.su, %i.sy                 ; 2 uses
  store float %i.ta, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.tb = fdiv float %i.sw, %i.sy
  store float %i.tb, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread813

bb.ck:                                            ; preds = %bb.ch, %bb.ce
  %i.tc = load float, ptr %i.og, align 4, !tbaa !19 ; 4 uses
  %i.td = fcmp ugt float %i.tc, 0.000000e+00
  br i1 %i.td, label %bb.cl, label %b3SolveSimplex2.exit

bb.cl:                                            ; preds = %bb.ck
  %i.te = fdiv float %i.si, %i.tc                 ; 2 uses
  store float %i.te, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.tf = fdiv float %i.ss, %i.tc
  store float %i.tf, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.tg = fdiv float %i.ry, %i.tc
  store float %i.tg, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex2.exit.thread813

bb.cm:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0225.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24262.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10226.0.copyload.i = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19 ; 20 uses
  %.sroa.17247.0.copyload.i = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 16 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0180.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24217.i)
  br i1 %i.lx, label %bb.co, label %bb.cn, !prof !12, !nosanitize !11

bb.cn:                                            ; preds = %bb.cm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %i.ls, i64 %i.lu) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.co:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lt, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10181.0.copyload.i = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19 ; 25 uses
  %.sroa.17202.0.copyload.i = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19 ; 17 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0135.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24172.i)
  br i1 %i.mc, label %bb.cq, label %bb.cp, !prof !12, !nosanitize !11

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @87, i64 %i.ls, i64 %i.lz) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ly, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10136.0.copyload.i = load <2 x float>, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19 ; 26 uses
  %.sroa.17157.0.copyload.i = load float, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19 ; 18 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.093.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i)
  br i1 %i.mh, label %bb.cs, label %bb.cr, !prof !12, !nosanitize !11

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @88, i64 %i.ls, i64 %i.me) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, ptr noundef nonnull align 8 dereferenceable(24) %i.md, i64 24, i1 false), !tbaa.struct !55
  %.sroa.10.0.copyload.i = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !19 ; 25 uses
  %.sroa.17.0.copyload.i = load float, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !19 ; 18 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.th = fsub <2 x float> %.sroa.10181.0.copyload.i, %.sroa.10226.0.copyload.i ; 5 uses
  %i.ti = fsub float %.sroa.17202.0.copyload.i, %.sroa.17247.0.copyload.i ; 5 uses
  %i.tj = fmul float %.sroa.17202.0.copyload.i, %i.ti
  %i.tk = shufflevector <2 x float> %.sroa.10226.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.tl = shufflevector <2 x float> %i.th, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tm = fmul <2 x float> %i.tk, %i.tl
  %i.tn = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.to = fmul <2 x float> %i.tn, %i.th
  %i.tp = fadd <2 x float> %i.tm, %i.to           ; 2 uses
  %i.tq = extractelement <2 x float> %i.tp, i64 0
  %i.tr = fadd float %i.tj, %i.tq                 ; 2 uses
  store float %i.tr, ptr %i.a, align 4, !tbaa !19
  %i.ts = fmul float %.sroa.17247.0.copyload.i, %i.ti
  %i.tt = extractelement <2 x float> %i.tp, i64 1
  %i.tu = fadd float %i.ts, %i.tt                 ; 2 uses
  br i1 %.not.i.i582, label %bb.ct, label %bb.cu, !prof !20, !nosanitize !11

bb.ct:                                            ; preds = %bb.cs
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.mi, i64 %i.na) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cu:                                            ; preds = %bb.cs
  %i.tv = fneg float %i.tu
  store float %i.tv, ptr %i.mj, align 4, !tbaa !19
  br i1 %.not36.i.i583, label %bb.cv, label %b3BarycentricCoordsEdge.exit.i584, !prof !20, !nosanitize !11

bb.cv:                                            ; preds = %bb.cu
  %i.tw = add i64 %i.mi, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mi, i64 %i.tw) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit.i584:                ; preds = %bb.cu
  %i.tx = fmul float %i.ti, %i.ti
  %i.ty = fmul <2 x float> %i.th, %i.th           ; 2 uses
  %shift4394 = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4395 = fadd <2 x float> %i.ty, %shift4394
  %i.tz = extractelement <2 x float> %foldExtExtBinop4395, i64 0
  %i.ua = fadd float %i.tx, %i.tz
  store float %i.ua, ptr %i.mk, align 4, !tbaa !19
  %i.ub = fsub <2 x float> %.sroa.10136.0.copyload.i, %.sroa.10226.0.copyload.i ; 7 uses
  %i.uc = fsub float %.sroa.17157.0.copyload.i, %.sroa.17247.0.copyload.i ; 5 uses
  %i.ud = fmul float %.sroa.17157.0.copyload.i, %i.uc
  %i.ue = shufflevector <2 x float> %.sroa.10226.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.uf = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ug = fmul <2 x float> %i.ue, %i.uf
  %i.uh = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.ui = fmul <2 x float> %i.uh, %i.ub
  %i.uj = fadd <2 x float> %i.ug, %i.ui           ; 2 uses
  %i.uk = extractelement <2 x float> %i.uj, i64 0
  %i.ul = fadd float %i.ud, %i.uk                 ; 2 uses
  store float %i.ul, ptr %i.b, align 4, !tbaa !19
  %i.um = fmul float %.sroa.17247.0.copyload.i, %i.uc
  %i.un = extractelement <2 x float> %i.uj, i64 1
  %i.uo = fadd float %i.um, %i.un                 ; 2 uses
  br i1 %.not.i513.i, label %bb.cw, label %bb.cx, !prof !20, !nosanitize !11

bb.cw:                                            ; preds = %b3BarycentricCoordsEdge.exit.i584
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.ml, i64 %i.nf) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cx:                                            ; preds = %b3BarycentricCoordsEdge.exit.i584
  %i.up = fneg float %i.uo
  store float %i.up, ptr %i.mm, align 4, !tbaa !19
  br i1 %.not36.i514.i, label %bb.cy, label %b3BarycentricCoordsEdge.exit515.i, !prof !20, !nosanitize !11

bb.cy:                                            ; preds = %bb.cx
  %i.uq = add i64 %i.ml, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.ml, i64 %i.uq) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit515.i:                ; preds = %bb.cx
  %i.ur = fmul float %i.uc, %i.uc
  %i.us = fmul <2 x float> %i.ub, %i.ub           ; 2 uses
  %shift4397 = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4398 = fadd <2 x float> %i.us, %shift4397
  %i.ut = extractelement <2 x float> %foldExtExtBinop4398, i64 0
  %i.uu = fadd float %i.ur, %i.ut
  store float %i.uu, ptr %i.mn, align 4, !tbaa !19
  %i.uv = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10226.0.copyload.i ; 6 uses
  %11 = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.uw = fsub float %.sroa.17.0.copyload.i, %.sroa.17247.0.copyload.i ; 5 uses
  %i.ux = fmul float %.sroa.17.0.copyload.i, %i.uw
  %12 = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.uy = fmul <2 x float> %12, %11
  %i.uz = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.va = fmul <2 x float> %i.uz, %i.uv
  %i.vb = fadd <2 x float> %i.uy, %i.va           ; 2 uses
  %i.vc = extractelement <2 x float> %i.vb, i64 0
  %i.vd = fadd float %i.ux, %i.vc                 ; 2 uses
  store float %i.vd, ptr %i.c, align 4, !tbaa !19
  %i.ve = fmul float %.sroa.17247.0.copyload.i, %i.uw
  %i.vf = extractelement <2 x float> %i.vb, i64 1
  %i.vg = fadd float %i.ve, %i.vf                 ; 2 uses
  br i1 %.not.i520.i, label %bb.cz, label %bb.da, !prof !20, !nosanitize !11

bb.cz:                                            ; preds = %b3BarycentricCoordsEdge.exit515.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.mo, i64 %i.ni) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.da:                                            ; preds = %b3BarycentricCoordsEdge.exit515.i
  %i.vh = fneg float %i.vg
  store float %i.vh, ptr %i.mp, align 4, !tbaa !19
  br i1 %.not36.i521.i, label %bb.db, label %b3BarycentricCoordsEdge.exit522.i, !prof !20, !nosanitize !11

bb.db:                                            ; preds = %bb.da
  %i.vi = add i64 %i.mo, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mo, i64 %i.vi) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit522.i:                ; preds = %bb.da
  %i.vj = fmul float %i.uw, %i.uw
  %i.vk = fmul <2 x float> %i.uv, %i.uv           ; 2 uses
  %i.vl = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4401 = fadd <2 x float> %i.vk, %i.vl
  %i.vm = extractelement <2 x float> %foldExtExtBinop4401, i64 0
  %i.vn = fadd float %i.vj, %i.vm
  store float %i.vn, ptr %i.mq, align 4, !tbaa !19
  %i.vo = fsub <2 x float> %.sroa.10136.0.copyload.i, %.sroa.10181.0.copyload.i ; 4 uses
  %i.vp = fsub float %.sroa.17157.0.copyload.i, %.sroa.17202.0.copyload.i ; 4 uses
  %i.vq = fmul float %.sroa.17157.0.copyload.i, %i.vp
  %i.vr = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.vs = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vt = fmul <2 x float> %i.vr, %i.vs
  %i.vu = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.vv = fmul <2 x float> %i.vu, %i.vo
  %i.vw = fadd <2 x float> %i.vt, %i.vv           ; 2 uses
  %i.vx = extractelement <2 x float> %i.vw, i64 0
  %i.vy = fadd float %i.vq, %i.vx                 ; 2 uses
  store float %i.vy, ptr %i.d, align 4, !tbaa !19
  %i.vz = fmul float %.sroa.17202.0.copyload.i, %i.vp
  %i.wa = extractelement <2 x float> %i.vw, i64 1
  %i.wb = fadd float %i.vz, %i.wa                 ; 2 uses
  br i1 %.not.i527.i, label %bb.dc, label %bb.dd, !prof !20, !nosanitize !11

bb.dc:                                            ; preds = %b3BarycentricCoordsEdge.exit522.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.mr, i64 %i.nk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dd:                                            ; preds = %b3BarycentricCoordsEdge.exit522.i
  %i.wc = fneg float %i.wb
  store float %i.wc, ptr %i.ms, align 4, !tbaa !19
  br i1 %.not36.i528.i, label %bb.de, label %b3BarycentricCoordsEdge.exit529.i, !prof !20, !nosanitize !11

bb.de:                                            ; preds = %bb.dd
  %i.wd = add i64 %i.mr, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mr, i64 %i.wd) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit529.i:                ; preds = %bb.dd
  %i.we = fmul float %i.vp, %i.vp
  %i.wf = fmul <2 x float> %i.vo, %i.vo           ; 2 uses
  %shift4403 = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4404 = fadd <2 x float> %i.wf, %shift4403
  %i.wg = extractelement <2 x float> %foldExtExtBinop4404, i64 0
  %i.wh = fadd float %i.we, %i.wg
  store float %i.wh, ptr %i.mt, align 4, !tbaa !19
  %i.wi = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10136.0.copyload.i ; 4 uses
  %i.wj = fsub float %.sroa.17.0.copyload.i, %.sroa.17157.0.copyload.i ; 4 uses
  %i.wk = fmul float %.sroa.17.0.copyload.i, %i.wj
  %i.wl = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.wm = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wn = fmul <2 x float> %i.wl, %i.wm
  %i.wo = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.wp = fmul <2 x float> %i.wo, %i.wi
  %i.wq = fadd <2 x float> %i.wn, %i.wp           ; 2 uses
  %i.wr = extractelement <2 x float> %i.wq, i64 0
  %i.ws = fadd float %i.wk, %i.wr                 ; 2 uses
  store float %i.ws, ptr %i.e, align 4, !tbaa !19
  %i.wt = fmul float %.sroa.17157.0.copyload.i, %i.wj
  %i.wu = extractelement <2 x float> %i.wq, i64 1
  %i.wv = fadd float %i.wt, %i.wu                 ; 2 uses
  br i1 %.not.i534.i, label %bb.df, label %bb.dg, !prof !20, !nosanitize !11

bb.df:                                            ; preds = %b3BarycentricCoordsEdge.exit529.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.mu, i64 %i.nl) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dg:                                            ; preds = %b3BarycentricCoordsEdge.exit529.i
  %i.ww = fneg float %i.wv
  store float %i.ww, ptr %i.mv, align 4, !tbaa !19
  br i1 %.not36.i535.i, label %bb.dh, label %b3BarycentricCoordsEdge.exit536.i, !prof !20, !nosanitize !11

bb.dh:                                            ; preds = %bb.dg
  %i.wx = add i64 %i.mu, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mu, i64 %i.wx) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit536.i:                ; preds = %bb.dg
  %i.wy = fmul float %i.wj, %i.wj
  %i.wz = fmul <2 x float> %i.wi, %i.wi           ; 2 uses
  %shift4406 = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4407 = fadd <2 x float> %i.wz, %shift4406
  %i.xa = extractelement <2 x float> %foldExtExtBinop4407, i64 0
  %i.xb = fadd float %i.wy, %i.xa
  store float %i.xb, ptr %i.mw, align 4, !tbaa !19
  %i.xc = fsub <2 x float> %.sroa.10181.0.copyload.i, %.sroa.10.0.copyload.i ; 4 uses
  %i.xd = fsub float %.sroa.17202.0.copyload.i, %.sroa.17.0.copyload.i ; 4 uses
  %i.xe = fmul float %.sroa.17202.0.copyload.i, %i.xd
  %i.xf = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.xg = shufflevector <2 x float> %i.xc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xh = fmul <2 x float> %i.xf, %i.xg
  %i.xi = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.xj = fmul <2 x float> %i.xi, %i.xc
  %i.xk = fadd <2 x float> %i.xh, %i.xj           ; 2 uses
  %i.xl = extractelement <2 x float> %i.xk, i64 0
  %i.xm = fadd float %i.xe, %i.xl                 ; 2 uses
  store float %i.xm, ptr %i.f, align 4, !tbaa !19
  %i.xn = fmul float %.sroa.17.0.copyload.i, %i.xd
  %i.xo = extractelement <2 x float> %i.xk, i64 1
  %i.xp = fadd float %i.xn, %i.xo                 ; 2 uses
  br i1 %.not.i541.i, label %bb.di, label %bb.dj, !prof !20, !nosanitize !11

bb.di:                                            ; preds = %b3BarycentricCoordsEdge.exit536.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.mx, i64 %i.nn) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dj:                                            ; preds = %b3BarycentricCoordsEdge.exit536.i
  %i.xq = fneg float %i.xp
  store float %i.xq, ptr %i.my, align 4, !tbaa !19
  br i1 %.not36.i542.i, label %bb.dk, label %b3BarycentricCoordsEdge.exit543.i, !prof !20, !nosanitize !11

bb.dk:                                            ; preds = %bb.dj
  %i.xr = add i64 %i.mx, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mx, i64 %i.xr) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit543.i:                ; preds = %bb.dj
  %i.xs = fmul float %i.xd, %i.xd
  %i.xt = fmul <2 x float> %i.xc, %i.xc           ; 2 uses
  %shift4409 = shufflevector <2 x float> %i.xt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4410 = fadd <2 x float> %i.xt, %shift4409
  %i.xu = extractelement <2 x float> %foldExtExtBinop4410, i64 0
  %i.xv = fadd float %i.xs, %i.xu
  store float %i.xv, ptr %i.mz, align 4, !tbaa !19
  br i1 %.not453.i, label %bb.dl, label %bb.dm, !prof !20, !nosanitize !11

bb.dl:                                            ; preds = %b3BarycentricCoordsEdge.exit543.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @89, i64 %i.mi, i64 %i.na) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dm:                                            ; preds = %b3BarycentricCoordsEdge.exit543.i
  %i.xw = fcmp ult float %i.tu, 0.000000e+00
  br i1 %i.xw, label %bb.du, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  br i1 %.not454.i, label %bb.do, label %bb.dp, !prof !20, !nosanitize !11

bb.do:                                            ; preds = %bb.dn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @90, i64 %i.ml, i64 %i.nf) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dp:                                            ; preds = %bb.dn
  %i.xx = fcmp ult float %i.uo, 0.000000e+00
  br i1 %i.xx, label %bb.du, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not455.i, label %bb.dr, label %bb.ds, !prof !20, !nosanitize !11

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @91, i64 %i.mo, i64 %i.ni) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ds:                                            ; preds = %bb.dq
  %i.xy = fcmp ult float %i.vg, 0.000000e+00
  br i1 %i.xy, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  br label %b3SolveSimplex4.exit.thread

bb.du:                                            ; preds = %bb.ds, %bb.dp, %bb.dm
  %i.xz = fcmp ugt float %i.tr, 0.000000e+00
  %i.ya = fcmp ugt float %i.xm, 0.000000e+00
  %or.cond.i586 = select i1 %i.xz, i1 true, i1 %i.ya
  br i1 %or.cond.i586, label %bb.dz, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  br i1 %.not456.i, label %bb.dw, label %bb.dx, !prof !20, !nosanitize !11

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @92, i64 %i.mr, i64 %i.nk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dx:                                            ; preds = %bb.dv
end_hunk_0
begin_hunk_1_@b3ShapeDistance:bb.a
  %i.zk = load float, ptr %i.c, align 4           ; 2 uses
  %i.zl = fcmp ogt float %i.zk, 0.000000e+00
  %or.cond486.i = select i1 %i.zj, i1 %i.zl, i1 false
  br i1 %or.cond486.i, label %bb.fb, label %bb.fi

bb.fb:                                            ; preds = %bb.fa
  br i1 %.not455.i, label %bb.fc, label %bb.fd, !prof !20, !nosanitize !11

bb.fc:                                            ; preds = %bb.fb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @98, i64 %i.mo, i64 %i.ni) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fd:                                            ; preds = %bb.fb
  %i.zm = load float, ptr %i.mp, align 4, !tbaa !19 ; 2 uses
  %i.zn = fcmp ogt float %i.zm, 0.000000e+00
  br i1 %i.zn, label %bb.fe, label %bb.fi

bb.fe:                                            ; preds = %bb.fd
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.zo = load float, ptr %i.mq, align 4, !tbaa !19 ; 3 uses
  %i.zp = fcmp ugt float %i.zo, 0.000000e+00
  br i1 %i.zp, label %bb.ff, label %b3SolveSimplex4.exit.thread833

bb.ff:                                            ; preds = %bb.fe
  %i.zq = fdiv float %i.zk, %i.zo                 ; 2 uses
  store float %i.zq, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br i1 %.not461.i, label %bb.fg, label %bb.fh, !prof !20, !nosanitize !11

bb.fg:                                            ; preds = %bb.ff
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @99, i64 %i.mo, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fh:                                            ; preds = %bb.ff
  %i.zr = fdiv float %i.zm, %i.zo
  br label %b3SolveSimplex4.exit.thread830

bb.fi:                                            ; preds = %bb.fd, %bb.fa, %bb.ez
  %i.zs = load float, ptr %i.g, align 16, !tbaa !19 ; 3 uses
  %i.zt = fcmp ugt float %i.zs, 0.000000e+00
  br i1 %i.zt, label %bb.fr, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.zu = load float, ptr %i.nj, align 8, !tbaa !19
  %i.zv = fcmp ole float %i.zu, 0.000000e+00
  %i.zw = load float, ptr %i.d, align 4           ; 2 uses
  %i.zx = fcmp ogt float %i.zw, 0.000000e+00
  %or.cond488.i = select i1 %i.zv, i1 %i.zx, i1 false
  br i1 %or.cond488.i, label %bb.fk, label %bb.fr

bb.fk:                                            ; preds = %bb.fj
  br i1 %.not456.i, label %bb.fl, label %bb.fm, !prof !20, !nosanitize !11

bb.fl:                                            ; preds = %bb.fk
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @100, i64 %i.mr, i64 %i.nk) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fm:                                            ; preds = %bb.fk
  %i.zy = load float, ptr %i.ms, align 4, !tbaa !19 ; 2 uses
  %i.zz = fcmp ogt float %i.zy, 0.000000e+00
  br i1 %i.zz, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  %i.aaa = load float, ptr %i.mt, align 4, !tbaa !19 ; 3 uses
  %i.aab = fcmp ugt float %i.aaa, 0.000000e+00
  br i1 %i.aab, label %bb.fo, label %b3SolveSimplex4.exit.thread833

bb.fo:                                            ; preds = %bb.fn
  %i.aac = fdiv float %i.zw, %i.aaa               ; 2 uses
  store float %i.aac, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br i1 %.not463.i, label %bb.fp, label %bb.fq, !prof !20, !nosanitize !11

bb.fp:                                            ; preds = %bb.fo
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @101, i64 %i.mr, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fq:                                            ; preds = %bb.fo
  %i.aad = fdiv float %i.zy, %i.aaa
  br label %b3SolveSimplex4.exit.thread830

bb.fr:                                            ; preds = %bb.fm, %bb.fj, %bb.fi
  %i.aae = load float, ptr %i.i, align 16, !tbaa !19 ; 3 uses
  %i.aaf = fcmp ole float %i.aae, 0.000000e+00
  %i.aag = load float, ptr %i.j, align 16         ; 3 uses
  %i.aah = fcmp ole float %i.aag, 0.000000e+00
  %or.cond490.not551.i = select i1 %i.aaf, i1 %i.aah, i1 false
  %i.aai = load float, ptr %i.e, align 4          ; 2 uses
  %i.aaj = fcmp ogt float %i.aai, 0.000000e+00
  %or.cond492.i = select i1 %or.cond490.not551.i, i1 %i.aaj, i1 false
  br i1 %or.cond492.i, label %bb.fs, label %bb.fz

bb.fs:                                            ; preds = %bb.fr
  br i1 %.not457.i, label %bb.ft, label %bb.fu, !prof !20, !nosanitize !11

bb.ft:                                            ; preds = %bb.fs
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @102, i64 %i.mu, i64 %i.nl) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fu:                                            ; preds = %bb.fs
  %i.aak = load float, ptr %i.mv, align 4, !tbaa !19 ; 2 uses
  %i.aal = fcmp ogt float %i.aak, 0.000000e+00
  br i1 %i.aal, label %bb.fv, label %bb.fz

bb.fv:                                            ; preds = %bb.fu
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.aam = load float, ptr %i.mw, align 4, !tbaa !19 ; 3 uses
  %i.aan = fcmp ugt float %i.aam, 0.000000e+00
  br i1 %i.aan, label %bb.fw, label %b3SolveSimplex4.exit.thread833

bb.fw:                                            ; preds = %bb.fv
  %i.aao = fdiv float %i.aai, %i.aam              ; 2 uses
  store float %i.aao, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br i1 %.not465.i, label %bb.fx, label %bb.fy, !prof !20, !nosanitize !11

bb.fx:                                            ; preds = %bb.fw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @103, i64 %i.mu, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.fy:                                            ; preds = %bb.fw
  %i.aap = fdiv float %i.aak, %i.aam
  br label %b3SolveSimplex4.exit.thread830

bb.fz:                                            ; preds = %bb.fu, %bb.fr
  %i.aaq = load float, ptr %i.h, align 16, !tbaa !19 ; 3 uses
  %i.aar = fcmp ugt float %i.aaq, 0.000000e+00
  br i1 %i.aar, label %bb.gi, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aas = load float, ptr %i.nm, align 4, !tbaa !19
  %i.aat = fcmp ole float %i.aas, 0.000000e+00
  %i.aau = load float, ptr %i.f, align 4          ; 2 uses
  %i.aav = fcmp ogt float %i.aau, 0.000000e+00
  %or.cond494.i = select i1 %i.aat, i1 %i.aav, i1 false
  br i1 %or.cond494.i, label %bb.gb, label %bb.gi

bb.gb:                                            ; preds = %bb.ga
  br i1 %.not458.i, label %bb.gc, label %bb.gd, !prof !20, !nosanitize !11

bb.gc:                                            ; preds = %bb.gb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @104, i64 %i.mx, i64 %i.nn) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.gd:                                            ; preds = %bb.gb
  %i.aaw = load float, ptr %i.my, align 4, !tbaa !19 ; 2 uses
  %i.aax = fcmp ogt float %i.aaw, 0.000000e+00
  br i1 %i.aax, label %bb.ge, label %bb.gi

bb.ge:                                            ; preds = %bb.gd
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  %i.aay = load float, ptr %i.mz, align 4, !tbaa !19 ; 3 uses
  %i.aaz = fcmp ugt float %i.aay, 0.000000e+00
  br i1 %i.aaz, label %bb.gf, label %b3SolveSimplex4.exit.thread833

bb.gf:                                            ; preds = %bb.ge
  %i.aba = fdiv float %i.aau, %i.aay              ; 2 uses
  store float %i.aba, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br i1 %.not467.i, label %bb.gg, label %bb.gh, !prof !20, !nosanitize !11

bb.gg:                                            ; preds = %bb.gf
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @105, i64 %i.mx, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.gh:                                            ; preds = %bb.gf
  %i.abb = fdiv float %i.aaw, %i.aay
  br label %b3SolveSimplex4.exit.thread830

bb.gi:                                            ; preds = %bb.gd, %bb.ga, %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.abc = fmul <2 x float> %i.ub, %11            ; 2 uses
  %shift4412.a = shufflevector <2 x float> %i.abc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4413 = fsub <2 x float> %i.abc, %shift4412.a
  %13 = extractelement <2 x float> %foldExtExtBinop4413, i64 0
  %14 = shufflevector <2 x float> %i.ub, <2 x float> %i.uv, <2 x i32> <i32 1, i32 2>
  %15 = insertelement <2 x float> poison, float %i.uw, i64 0
  %16 = insertelement <2 x float> %15, float %i.uc, i64 1 ; 2 uses
  %17 = fmul <2 x float> %14, %16
  %18 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %19 = shufflevector <2 x float> %i.ub, <2 x float> %i.uv, <2 x i32> <i32 3, i32 0>
  %20 = fmul <2 x float> %18, %19
  %i.abd = fsub <2 x float> %17, %20
  %21 = fmul <2 x float> %i.th, %i.abd            ; 2 uses
  %shift4415 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4416 = fadd <2 x float> %21, %shift4415
  %i.abe = extractelement <2 x float> %foldExtExtBinop4416, i64 0
  %22 = fmul float %i.ti, %13
  %i.abf = fadd float %22, %i.abe                 ; 2 uses
  %i.abg = fcmp olt float %i.abf, 0.000000e+00
  %i.abh = select i1 %i.abg, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.abi = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abj = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.abk = fmul <4 x float> %i.abi, %i.abj
  %i.abl = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.abm = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.abn = fmul <4 x float> %i.abl, %i.abm
  %i.abo = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <4 x i32> <i32 1, i32 3, i32 2, i32 1>
  %i.abp = insertelement <4 x float> poison, float %.sroa.17.0.copyload.i, i64 0
  %i.abq = insertelement <4 x float> %i.abp, float %.sroa.17157.0.copyload.i, i64 1
  %i.abr = insertelement <4 x float> %i.abq, float %.sroa.17202.0.copyload.i, i64 2 ; 2 uses
  %i.abs = shufflevector <4 x float> %i.abr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.abt = fmul <4 x float> %i.abo, %i.abs
  %i.abu = insertelement <4 x float> poison, float %.sroa.17157.0.copyload.i, i64 0
  %i.abv = insertelement <4 x float> %i.abu, float %.sroa.17.0.copyload.i, i64 1
  %i.abw = shufflevector <4 x float> %i.abv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0> ; 2 uses
  %i.abx = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.aby = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abz = shufflevector <4 x float> %i.abx, <4 x float> %i.aby, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.aca = fmul <4 x float> %i.abw, %i.abz
  %i.acb = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 0, i32 poison, i32 3, i32 2>
  %i.acc = shufflevector <4 x float> %i.acb, <4 x float> %i.aby, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.acd = fmul <4 x float> %i.abw, %i.acc
  %i.ace = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.acf = fmul <4 x float> %i.ace, %i.abs
  %i.acg = fsub <4 x float> %i.abt, %i.aca
  %i.ach = fsub <4 x float> %i.acd, %i.acf
  %i.aci = fsub <4 x float> %i.abk, %i.abn
  %i.acj = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <4 x i32> <i32 0, i32 2, i32 3, i32 2>
  %i.ack = fmul <4 x float> %i.acj, %i.acg
  %i.acl = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <4 x i32> <i32 1, i32 3, i32 2, i32 3>
  %i.acm = fmul <4 x float> %i.acl, %i.ach
  %i.acn = fadd <4 x float> %i.ack, %i.acm
  %i.aco = shufflevector <4 x float> %i.abr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.acp = insertelement <2 x float> %i.aco, float %.sroa.17247.0.copyload.i, i64 1
  %i.acq = shufflevector <2 x float> %i.acp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.acr = fmul <4 x float> %i.acq, %i.aci
  %i.acs = fadd <4 x float> %i.acr, %i.acn
  %i.act = insertelement <4 x float> poison, float %i.abh, i64 0
  %i.acu = shufflevector <4 x float> %i.act, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acv = fmul <4 x float> %i.acs, %i.acu        ; 6 uses
  store <4 x float> %i.acv, ptr %i.k, align 16, !tbaa !19
  br i1 %.not102.i.i, label %bb.gj, label %b3BarycentricCoordsTet.exit.i, !prof !20, !nosanitize !11

bb.gj:                                            ; preds = %bb.gi
  %i.acw = ptrtoint ptr %i.k to i64, !nosanitize !11 ; 2 uses
  %i.acx = add i64 %i.acw, 16, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.acw, i64 %i.acx) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsTet.exit.i:                    ; preds = %bb.gi
  %i.acy = fmul float %i.abf, %i.abh              ; 2 uses
  %i.acz = extractelement <4 x float> %i.acv, i64 3
  %i.ada = fcmp olt float %i.acz, 0.000000e+00
  %i.adb = fcmp ogt float %i.zs, 0.000000e+00
  %or.cond496.i = and i1 %i.ada, %i.adb
  br i1 %or.cond496.i, label %bb.gk, label %bb.gn

bb.gk:                                            ; preds = %b3BarycentricCoordsTet.exit.i
  %i.adc = load float, ptr %i.nc, align 4, !tbaa !19 ; 2 uses
  %i.add = fcmp ogt float %i.adc, 0.000000e+00
  %i.ade = fcmp ogt float %i.yu, 0.000000e+00
  %or.cond498.i = and i1 %i.ade, %i.add
  br i1 %or.cond498.i, label %bb.gl, label %bb.gn

bb.gl:                                            ; preds = %bb.gk
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  %i.adf = load float, ptr %i.nr, align 4, !tbaa !19 ; 4 uses
  %i.adg = fcmp ugt float %i.adf, 0.000000e+00
  br i1 %i.adg, label %bb.gm, label %b3SolveSimplex4.exit

bb.gm:                                            ; preds = %bb.gl
  %i.adh = fdiv float %i.zs, %i.adf               ; 2 uses
  store float %i.adh, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.adi = fdiv float %i.adc, %i.adf
  store float %i.adi, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.adj = fdiv float %i.yu, %i.adf
  store float %i.adj, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread836

bb.gn:                                            ; preds = %bb.gk, %b3BarycentricCoordsTet.exit.i
  %i.adk = extractelement <4 x float> %i.acv, i64 2
  %i.adl = fcmp olt float %i.adk, 0.000000e+00
  %i.adm = fcmp ogt float %i.aaq, 0.000000e+00
  %or.cond500.i = and i1 %i.adl, %i.adm
  br i1 %or.cond500.i, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  %i.adn = load float, ptr %i.nh, align 4, !tbaa !19 ; 2 uses
  %i.ado = fcmp ogt float %i.adn, 0.000000e+00
  %i.adp = fcmp ogt float %i.yi, 0.000000e+00
  %or.cond502.i = and i1 %i.adp, %i.ado
  br i1 %or.cond502.i, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %bb.go
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.adq = load float, ptr %i.nq, align 4, !tbaa !19 ; 4 uses
  %i.adr = fcmp ugt float %i.adq, 0.000000e+00
  br i1 %i.adr, label %bb.gq, label %b3SolveSimplex4.exit

bb.gq:                                            ; preds = %bb.gp
  %i.ads = fdiv float %i.aaq, %i.adq              ; 2 uses
  store float %i.ads, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.adt = fdiv float %i.adn, %i.adq
  store float %i.adt, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.adu = fdiv float %i.yi, %i.adq
  store float %i.adu, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread836

bb.gr:                                            ; preds = %bb.go, %bb.gn
  %i.adv = extractelement <4 x float> %i.acv, i64 1
  %i.adw = fcmp olt float %i.adv, 0.000000e+00
  %i.adx = fcmp ogt float %i.aae, 0.000000e+00
  %or.cond504.i = and i1 %i.adw, %i.adx
  br i1 %or.cond504.i, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  %i.ady = load float, ptr %i.ne, align 4, !tbaa !19 ; 2 uses
  %i.adz = fcmp ogt float %i.ady, 0.000000e+00
  %i.aea = fcmp ogt float %i.zg, 0.000000e+00
  %or.cond506.i = and i1 %i.aea, %i.adz
  br i1 %or.cond506.i, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  %i.aeb = load float, ptr %i.np, align 4, !tbaa !19 ; 4 uses
  %i.aec = fcmp ugt float %i.aeb, 0.000000e+00
  br i1 %i.aec, label %bb.gu, label %b3SolveSimplex4.exit

bb.gu:                                            ; preds = %bb.gt
  %i.aed = fdiv float %i.aae, %i.aeb              ; 2 uses
  store float %i.aed, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.aee = fdiv float %i.ady, %i.aeb
  store float %i.aee, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.aef = fdiv float %i.zg, %i.aeb
  store float %i.aef, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread836

bb.gv:                                            ; preds = %bb.gs, %bb.gr
  %i.aeg = extractelement <4 x float> %i.acv, i64 0
  %i.aeh = fcmp olt float %i.aeg, 0.000000e+00
  %i.aei = fcmp ogt float %i.aag, 0.000000e+00
  %or.cond508.i = select i1 %i.aeh, i1 %i.aei, i1 false
  br i1 %or.cond508.i, label %bb.gw, label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  %i.aej = load float, ptr %i.nm, align 4, !tbaa !19 ; 2 uses
  %i.aek = fcmp ogt float %i.aej, 0.000000e+00
  br i1 %i.aek, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  %i.ael = load float, ptr %i.nj, align 8, !tbaa !19 ; 2 uses
  %i.aem = fcmp ogt float %i.ael, 0.000000e+00
  br i1 %i.aem, label %bb.gy, label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
end_hunk_1
