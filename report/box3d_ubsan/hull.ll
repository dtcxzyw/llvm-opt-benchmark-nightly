Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3CloneAndTransformHull:bb.a
.lr.ph1170.split.split.split:                     ; preds = %.lr.ph1170.split.split.split.preheader, %bb.cu
  %indvars.iv1795 = phi i64 [ 0, %.lr.ph1170.split.split.split.preheader ], [ %indvars.iv.next1796, %bb.cu ] ; 9 uses
  %i.lr = add i64 %indvars.iv1795, %i.kq, !nosanitize !12 ; 2 uses
  %.not1252 = icmp ult i64 %i.lr, %i.kq, !nosanitize !12
  br i1 %.not1252, label %.split1172.us, label %bb.bp, !prof !22, !nosanitize !12

.split1172.us:                                    ; preds = %.lr.ph1170.split.split.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @218, i64 %i.kq, i64 %i.lr) #14, !nosanitize !12
  unreachable, !nosanitize !12

.split1176.us:                                    ; preds = %.lr.ph1170
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @219, i64 0) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bp:                                            ; preds = %.lr.ph1170.split.split.split
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.i307, i64 %indvars.iv1795
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !82  ; 3 uses
  %i.lu = zext i8 %i.lt to i64                    ; 2 uses
  %i.lv = shl nuw nsw i64 %i.lu, 2
  %i.lw = add i64 %i.lv, %i.kr, !nosanitize !12   ; 2 uses
  %.not1254 = icmp ult i64 %i.lw, %i.kr, !nosanitize !12
  br i1 %.not1254, label %.split1187.us, label %bb.bq, !prof !22, !nosanitize !12

.split1187.us:                                    ; preds = %bb.bp, %.lr.ph1170.split.split.split.us, %.lr.ph1170.split.split.us
  %.us-phi1189 = phi i64 [ %i.ky, %.lr.ph1170.split.split.us ], [ %i.ld, %.lr.ph1170.split.split.split.us ], [ %i.lw, %bb.bp ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @220, i64 %i.kr, i64 %.us-phi1189) #14, !nosanitize !12
  unreachable, !nosanitize !12

.split1191.us:                                    ; preds = %.lr.ph1170.split.split.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @221, i64 0) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bq:                                            ; preds = %bb.bp
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.lu
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 2
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !80
  %i.ma = zext i8 %i.lz to i64                    ; 2 uses
  %i.mb = getelementptr inbounds nuw [12 x i8], ptr %.0.i309, i64 %i.ma ; 3 uses
  %i.mc = mul nuw nsw i64 %i.ma, 12
  %i.md = add i64 %i.mc, %i.ks, !nosanitize !12   ; 2 uses
  %.not1255 = icmp ult i64 %i.md, %i.ks, !nosanitize !12
  br i1 %.not1255, label %.split1211.us, label %bb.br, !prof !22, !nosanitize !12

.split1211.us:                                    ; preds = %bb.bq, %bb.bn
  %.us-phi1213 = phi i64 [ %i.li, %bb.bn ], [ %i.md, %bb.bq ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @222, i64 %i.ks, i64 %.us-phi1213) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.br:                                            ; preds = %bb.bq
  %i.me = ptrtoint ptr %i.mb to i64, !nosanitize !12 ; 2 uses
  %i.mf = and i64 %i.me, 3, !nosanitize !12
  %i.mg = icmp eq i64 %i.mf, 0, !nosanitize !12
  br i1 %i.mg, label %bb.bs, label %.split1215, !prof !13, !nosanitize !12

.split1215:                                       ; preds = %bb.br, %bb.bn
  %.us-phi1216 = phi i64 [ 0, %bb.bn ], [ %i.me, %bb.br ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @223, i64 %.us-phi1216) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bs:                                            ; preds = %bb.br
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.mb, align 4, !tbaa !28 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !28 ; 3 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.cd, %bb.bs
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.bs ], [ %i.oa, %bb.cd ]
  %.sroa.0389.0 = phi <2 x float> [ zeroinitializer, %bb.bs ], [ %.sroa.0389.4.vec.insert, %bb.cd ] ; 2 uses
  %.0258 = phi i8 [ %i.lt, %bb.bs ], [ %i.nz, %bb.cd ]
  %.sroa.075.0 = phi <2 x float> [ zeroinitializer, %bb.bs ], [ %i.nl, %bb.cd ]
  %.sroa.10.0 = phi float [ 0.000000e+00, %bb.bs ], [ %i.ni, %bb.cd ]
  %.0257 = phi i32 [ 0, %bb.bs ], [ %i.ng, %bb.cd ]
  %i.mh = zext i8 %.0258 to i64                   ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.mh ; 3 uses
  %i.mj = shl nuw nsw i64 %i.mh, 2
  %i.mk = add i64 %i.mj, %i.kr, !nosanitize !12   ; 2 uses
  %.not411 = icmp ult i64 %i.mk, %i.kr, !nosanitize !12
  br i1 %.not411, label %bb.bu, label %bb.bv, !prof !22, !nosanitize !12

bb.bu:                                            ; preds = %bb.bt
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @224, i64 %i.kr, i64 %i.mk) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bv:                                            ; preds = %bb.bt
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !77
  %i.mn = zext i8 %i.mm to i64                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.mn
  %i.mp = shl nuw nsw i64 %i.mn, 2
  %i.mq = add i64 %i.mp, %i.kr, !nosanitize !12   ; 2 uses
  %.not412 = icmp ult i64 %i.mq, %i.kr, !nosanitize !12
  br i1 %.not412, label %bb.bw, label %bb.bx, !prof !22, !nosanitize !12

bb.bw:                                            ; preds = %bb.bv
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @225, i64 %i.kr, i64 %i.mq) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bx:                                            ; preds = %bb.bv
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !80
  %i.mt = zext i8 %i.ms to i64                    ; 2 uses
  %i.mu = mul nuw nsw i64 %i.mt, 12
  %i.mv = add i64 %i.mu, %i.ks, !nosanitize !12   ; 2 uses
  %.not413 = icmp ult i64 %i.mv, %i.ks, !nosanitize !12
  br i1 %.not413, label %bb.by, label %bb.bz, !prof !22, !nosanitize !12

bb.by:                                            ; preds = %bb.bx
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @226, i64 %i.ks, i64 %i.mv) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bz:                                            ; preds = %bb.bx
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %.0.i309, i64 %i.mt ; 2 uses
  %.sroa.059.0.copyload = load <2 x float>, ptr %i.mw, align 4
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.sroa.260.0.copyload = load float, ptr %.sroa.260.0..sroa_idx, align 4
  %i.mx = fsub <2 x float> %.sroa.059.0.copyload, %.sroa.065.0.copyload ; 4 uses
  %i.my = fsub float %.sroa.260.0.copyload, %.sroa.6.0.copyload ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !80
  %i.nb = zext i8 %i.na to i64                    ; 2 uses
  %i.nc = mul nuw nsw i64 %i.nb, 12
  %i.nd = add i64 %i.nc, %i.ks, !nosanitize !12   ; 2 uses
  %.not414 = icmp ult i64 %i.nd, %i.ks, !nosanitize !12
  br i1 %.not414, label %bb.ca, label %bb.cb, !prof !22, !nosanitize !12

bb.ca:                                            ; preds = %bb.bz
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @227, i64 %i.ks, i64 %i.nd) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cb:                                            ; preds = %bb.bz
  %i.ne = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0257, i32 1), !nosanitize !12 ; 2 uses
  %i.nf = extractvalue { i32, i1 } %i.ne, 1, !nosanitize !12
  br i1 %i.nf, label %bb.cc, label %bb.cd, !prof !22, !nosanitize !12

bb.cc:                                            ; preds = %bb.cb
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @228, i64 2147483647, i64 1) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cd:                                            ; preds = %bb.cb
  %i.ng = extractvalue { i32, i1 } %i.ne, 0, !nosanitize !12 ; 2 uses
  %i.nh = getelementptr inbounds nuw [12 x i8], ptr %.0.i309, i64 %i.nb ; 2 uses
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.nh, align 4
  %i.ni = fadd float %.sroa.10.0, %i.my           ; 2 uses
  %.sroa.0389.4.vec.extract397 = extractelement <2 x float> %.sroa.0389.0, i64 1
  %i.nj = fsub float %.sroa.252.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %i.nk = fsub <2 x float> %.sroa.051.0.copyload, %.sroa.065.0.copyload ; 3 uses
  %i.nl = fadd <2 x float> %.sroa.075.0, %i.mx    ; 3 uses
  %i.nm = fadd float %i.my, %i.nj
  %i.nn = fsub <2 x float> %i.mx, %i.nk
  %foldExtExtBinop2566 = fadd <2 x float> %i.mx, %i.nk
  %i.no = shufflevector <2 x float> %foldExtExtBinop2566, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.np = insertelement <2 x float> %i.no, float %i.nm, i64 1
  %i.nq = fmul <2 x float> %i.nn, %i.np
  %i.nr = shufflevector <2 x float> %.sroa.0389.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ns = insertelement <2 x float> %i.nr, float %.sroa.12.0, i64 0
  %i.nt = fadd <2 x float> %i.ns, %i.nq           ; 5 uses
  %i.nu = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nv = fsub float %i.my, %i.nj
  %foldExtExtBinop2568 = fadd <2 x float> %i.mx, %i.nk
  %i.nw = extractelement <2 x float> %foldExtExtBinop2568, i64 0
  %i.nx = fmul float %i.nv, %i.nw
  %i.ny = fadd float %.sroa.0389.4.vec.extract397, %i.nx ; 4 uses
  %.sroa.0389.4.vec.insert = insertelement <2 x float> %i.nu, float %i.ny, i64 1
  %i.nz = load i8, ptr %i.mi, align 1, !tbaa !76  ; 2 uses
  %.not302 = icmp eq i8 %i.nz, %i.lt
  %i.oa = extractelement <2 x float> %i.nt, i64 0
  br i1 %.not302, label %bb.ce, label %bb.bt, !llvm.loop !263

bb.ce:                                            ; preds = %bb.cd
  %i.ob = sitofp i32 %i.ng to float
  %i.oc = fmul float %i.ny, %i.ny
  %i.od = fmul <2 x float> %i.nt, %i.nt           ; 2 uses
  %i.oe = extractelement <2 x float> %i.od, i64 1
  %i.of = fadd float %i.oe, %i.oc
  %i.og = extractelement <2 x float> %i.od, i64 0
  %i.oh = fadd float %i.og, %i.of
  %i.oi = tail call float @sqrtf(float noundef %i.oh) #15
  %i.oj = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.ok = insertelement <2 x float> %i.oj, float %i.oi, i64 1
  %i.ol = fdiv <2 x float> splat (float 1.000000e+00), %i.ok ; 4 uses
  %shift2570 = shufflevector <2 x float> %i.nl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2571 = fmul <2 x float> %i.ol, %shift2570
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> %i.nl, <2 x i32> <i32 0, i32 2>
  %i.op = fmul <2 x float> %i.om, %i.oo
  %shift2573 = shufflevector <2 x float> %.sroa.065.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2574 = fadd <2 x float> %shift2573, %foldExtExtBinop2571
  %i.oq = extractelement <2 x float> %foldExtExtBinop2574, i64 0
  %i.or = shufflevector <2 x float> %.sroa.065.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.os = insertelement <2 x float> %i.or, float %.sroa.6.0.copyload, i64 0
  %i.ot = fadd <2 x float> %i.os, %i.op
  %i.ou = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ov = fmul <2 x float> %i.nt, %i.ou           ; 5 uses
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ox = extractelement <2 x float> %i.ol, i64 1
  %i.oy = fmul float %i.ny, %i.ox                 ; 3 uses
  %.sroa.05.4.vec.insert.i366 = insertelement <2 x float> %i.ow, float %i.oy, i64 1
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %.0.i323, i64 %indvars.iv1795 ; 3 uses
  %i.pa = shl nuw nsw i64 %indvars.iv1795, 4
  %i.pb = add i64 %i.pa, %i.kt, !nosanitize !12   ; 3 uses
  %i.pc = icmp eq i64 %i.pb, 0
  %i.pd = xor i1 %i.ku, %i.pc
  %i.pe = icmp uge i64 %i.pb, %i.kt, !nosanitize !12
  %i.pf = and i1 %i.pd, %i.pe, !nosanitize !12
  br i1 %i.pf, label %bb.cg, label %bb.cf, !prof !13, !nosanitize !12

bb.cf:                                            ; preds = %bb.ce
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @229, i64 %i.kt, i64 %i.pb) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cg:                                            ; preds = %bb.ce
  %i.pg = ptrtoint ptr %i.oz to i64, !nosanitize !12 ; 2 uses
  %i.ph = and i64 %i.pg, 3, !nosanitize !12
  %i.pi = icmp eq i64 %i.ph, 0, !nosanitize !12
  %i.pj = and i1 %i.ku, %i.pi
  br i1 %i.pj, label %bb.ci, label %bb.ch, !prof !13, !nosanitize !12

bb.ch:                                            ; preds = %bb.cg
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @230, i64 %i.pg) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.ci:                                            ; preds = %bb.cg
  %i.pk = fmul <2 x float> %i.ot, %i.ov           ; 2 uses
  %i.pl = fmul float %i.oq, %i.oy
  %i.pm = extractelement <2 x float> %i.pk, i64 1
  %i.pn = fadd float %i.pm, %i.pl
  %i.po = extractelement <2 x float> %i.pk, i64 0
  %i.pp = fadd float %i.po, %i.pn
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %i.ov, float %i.pp, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i366, ptr %i.oz, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store <2 x float> %.sroa.211.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !28
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.0.i324, i64 %indvars.iv1795 ; 2 uses
  %i.pr = shl nuw nsw i64 %indvars.iv1795, 2      ; 3 uses
  %i.ps = add i64 %i.pr, %i.jy, !nosanitize !12   ; 3 uses
  %i.pt = icmp eq i64 %i.ps, 0
  %i.pu = xor i1 %i.ka, %i.pt
  %i.pv = icmp uge i64 %i.ps, %i.jy, !nosanitize !12
  %i.pw = and i1 %i.pu, %i.pv, !nosanitize !12
  br i1 %i.pw, label %bb.ck, label %bb.cj, !prof !13, !nosanitize !12

bb.cj:                                            ; preds = %bb.ci
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @231, i64 %i.jy, i64 %i.ps) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.ck:                                            ; preds = %bb.ci
  %i.px = ptrtoint ptr %i.pq to i64, !nosanitize !12 ; 2 uses
  %i.py = and i64 %i.px, 3, !nosanitize !12
  %i.pz = icmp eq i64 %i.py, 0, !nosanitize !12
  %i.qa = and i1 %i.ka, %i.pz
  br i1 %i.qa, label %bb.cm, label %bb.cl, !prof !13, !nosanitize !12

bb.cl:                                            ; preds = %bb.ck
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @232, i64 %i.px) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cm:                                            ; preds = %bb.ck
  %i.qb = extractelement <2 x float> %i.ov, i64 1
  store float %i.qb, ptr %i.pq, align 4, !tbaa !28
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv1795 ; 2 uses
  %i.qd = add i64 %i.pr, %i.ki, !nosanitize !12   ; 2 uses
  %.not1256 = icmp ult i64 %i.qd, %i.ki, !nosanitize !12
  br i1 %.not1256, label %bb.cn, label %bb.co, !prof !22, !nosanitize !12

bb.cn:                                            ; preds = %bb.cm
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @233, i64 %i.ki, i64 %i.qd) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.co:                                            ; preds = %bb.cm
  %i.qe = ptrtoint ptr %i.qc to i64, !nosanitize !12 ; 2 uses
  %i.qf = and i64 %i.qe, 3, !nosanitize !12
  %i.qg = icmp eq i64 %i.qf, 0, !nosanitize !12
  br i1 %i.qg, label %bb.cq, label %bb.cp, !prof !13, !nosanitize !12

bb.cp:                                            ; preds = %bb.co
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @234, i64 %i.qe) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cq:                                            ; preds = %bb.co
  store float %i.oy, ptr %i.qc, align 4, !tbaa !28
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv1795 ; 2 uses
  %i.qi = add i64 %i.pr, %i.kv, !nosanitize !12   ; 2 uses
  %.not1257 = icmp ult i64 %i.qi, %i.kv, !nosanitize !12
  br i1 %.not1257, label %bb.cr, label %bb.cs, !prof !22, !nosanitize !12

bb.cr:                                            ; preds = %bb.cq
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @235, i64 %i.kv, i64 %i.qi) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cs:                                            ; preds = %bb.cq
  %i.qj = ptrtoint ptr %i.qh to i64, !nosanitize !12 ; 2 uses
  %i.qk = and i64 %i.qj, 3, !nosanitize !12
  %i.ql = icmp eq i64 %i.qk, 0, !nosanitize !12
  br i1 %i.ql, label %bb.cu, label %bb.ct, !prof !13, !nosanitize !12

bb.ct:                                            ; preds = %bb.cs
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @236, i64 %i.qj) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cu:                                            ; preds = %bb.cs
  %i.qm = extractelement <2 x float> %i.ov, i64 0
  store float %i.qm, ptr %i.qh, align 4, !tbaa !28
  %indvars.iv.next1796 = add nuw nsw i64 %indvars.iv1795, 1 ; 2 uses
  %exitcond1799.not = icmp eq i64 %indvars.iv.next1796, %wide.trip.count1798
  br i1 %exitcond1799.not, label %.preheader, label %.lr.ph1170.split.split.split, !llvm.loop !264

._crit_edge1220:                                  ; preds = %bb.dl, %.preheader
  br i1 %i.ek, label %b3GetHullPoints.exit.i, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge1220
  %i.qn = sext i32 %i.ej to i64                   ; 2 uses
  %i.qo = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 %i.qn), !nosanitize !12 ; 2 uses
  %i.qp = extractvalue { i64, i1 } %i.qo, 1, !nosanitize !12
  br i1 %i.qp, label %bb.cw, label %bb.cx, !prof !22, !nosanitize !12

bb.cw:                                            ; preds = %bb.cv
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @336, i64 %i.k, i64 %i.qn) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cx:                                            ; preds = %bb.cv
  %i.qq = extractvalue { i64, i1 } %i.qo, 0, !nosanitize !12
  %i.qr = inttoptr i64 %i.qq to ptr
  br label %b3GetHullPoints.exit.i

b3GetHullPoints.exit.i:                           ; preds = %._crit_edge1220, %bb.cx
  %.0.i.i = phi ptr [ %i.qr, %bb.cx ], [ null, %._crit_edge1220 ] ; 5 uses
  %i.qs = load i32, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %i.qt = icmp ne ptr %.0.i.i, null, !nosanitize !12
  %i.qu = ptrtoint ptr %.0.i.i to i64, !nosanitize !12 ; 5 uses
  %i.qv = and i64 %i.qu, 3, !nosanitize !12
  %i.qw = icmp eq i64 %i.qv, 0, !nosanitize !12
  %i.qx = and i1 %i.qt, %i.qw, !nosanitize !12
  br i1 %i.qx, label %bb.cz, label %bb.cy, !prof !13, !nosanitize !12

bb.cy:                                            ; preds = %b3GetHullPoints.exit.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @554, i64 %i.qu) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cz:                                            ; preds = %b3GetHullPoints.exit.i
  %.sroa.0.0.copyload36.i = load <2 x float>, ptr %.0.i.i, align 4, !tbaa !28 ; 4 uses
  %.sroa.6.0..0.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.sroa.6.0.copyload37.i = load float, ptr %.sroa.6.0..0.i.sroa_idx.i, align 4, !tbaa !28 ; 4 uses
  %i.qy = icmp sgt i32 %i.qs, 1
  br i1 %i.qy, label %.lr.ph.preheader.i, label %b3UpdateHullBounds.exit

.lr.ph.preheader.i:                               ; preds = %bb.cz
  %wide.trip.count.i = zext nneg i32 %i.qs to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.db, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.db ] ; 3 uses
  %.sroa.0.052.i = phi <2 x float> [ %.sroa.0.0.copyload36.i, %.lr.ph.preheader.i ], [ %i.rj, %bb.db ] ; 2 uses
  %.sroa.6.051.i = phi float [ %.sroa.6.0.copyload37.i, %.lr.ph.preheader.i ], [ %i.rh, %bb.db ] ; 2 uses
  %.sroa.8.050.i = phi <2 x float> [ %.sroa.0.0.copyload36.i, %.lr.ph.preheader.i ], [ %i.rf, %bb.db ] ; 2 uses
  %.sroa.11.049.i = phi float [ %.sroa.6.0.copyload37.i, %.lr.ph.preheader.i ], [ %i.rd, %bb.db ] ; 2 uses
  %i.qz = mul nuw nsw i64 %indvars.iv.i, 12
  %i.ra = add i64 %i.qz, %i.qu, !nosanitize !12   ; 2 uses
  %.not.i = icmp ult i64 %i.ra, %i.qu, !nosanitize !12
  br i1 %.not.i, label %bb.da, label %bb.db, !prof !22, !nosanitize !12

bb.da:                                            ; preds = %.lr.ph.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @555, i64 %i.qu, i64 %i.ra) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.db:                                            ; preds = %.lr.ph.i
  %i.rb = getelementptr inbounds nuw [12 x i8], ptr %.0.i.i, i64 %indvars.iv.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !28 ; 4 uses
  %i.rc = fcmp ogt float %.sroa.11.049.i, %.sroa.5.0.copyload.i
  %i.rd = select i1 %i.rc, float %.sroa.11.049.i, float %.sroa.5.0.copyload.i ; 2 uses
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %i.rb, align 4, !tbaa !28 ; 4 uses
  %i.re = fcmp ogt <2 x float> %.sroa.8.050.i, %.sroa.016.0.copyload.i
  %i.rf = select <2 x i1> %i.re, <2 x float> %.sroa.8.050.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %i.rg = fcmp olt float %.sroa.6.051.i, %.sroa.5.0.copyload.i
  %i.rh = select i1 %i.rg, float %.sroa.6.051.i, float %.sroa.5.0.copyload.i ; 2 uses
  %i.ri = fcmp olt <2 x float> %.sroa.0.052.i, %.sroa.016.0.copyload.i
  %i.rj = select <2 x i1> %i.ri, <2 x float> %.sroa.0.052.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b3UpdateHullBounds.exit, label %.lr.ph.i, !llvm.loop !0

b3UpdateHullBounds.exit:                          ; preds = %bb.db, %bb.cz
  %.sroa.11.0.lcssa.i = phi float [ %.sroa.6.0.copyload37.i, %bb.cz ], [ %i.rd, %bb.db ]
  %.sroa.8.0.lcssa.i = phi <2 x float> [ %.sroa.0.0.copyload36.i, %bb.cz ], [ %i.rf, %bb.db ]
  %.sroa.6.0.lcssa.i = phi float [ %.sroa.6.0.copyload37.i, %bb.cz ], [ %i.rh, %bb.db ]
  %.sroa.0.0.lcssa.i = phi <2 x float> [ %.sroa.0.0.copyload36.i, %bb.cz ], [ %i.rj, %bb.db ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x float> %.sroa.0.0.lcssa.i, ptr %i.rk, align 8, !tbaa !28
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store float %.sroa.6.0.lcssa.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !28
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store <2 x float> %.sroa.8.0.lcssa.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !28
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store float %.sroa.11.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !28
  %i.rl = tail call fastcc zeroext i1 @b3UpdateHullBulkProperties(ptr noundef %i.h)
  br i1 %i.rl, label %bb.dn, label %bb.dm

.lr.ph1219.split:                                 ; preds = %.lr.ph1219, %bb.dl
  %indvars.iv1800 = phi i64 [ %indvars.iv.next1801, %bb.dl ], [ %i.lo, %.lr.ph1219 ] ; 6 uses
  %i.rm = getelementptr inbounds [4 x i8], ptr %.0.i324, i64 %indvars.iv1800 ; 2 uses
  %i.rn = shl nsw i64 %indvars.iv1800, 2          ; 3 uses
  %i.ro = add i64 %i.rn, %i.jy, !nosanitize !12   ; 3 uses
  %i.rp = icmp ne i64 %i.ro, 0
  %i.rq = icmp sgt i64 %indvars.iv1800, -1        ; 3 uses
  %i.rr = icmp ult i64 %i.ro, %i.jy, !nosanitize !12
  %i.rs = xor i1 %i.rq, %i.rr
  %i.rt = and i1 %i.rp, %i.rs, !nosanitize !12
  br i1 %i.rt, label %bb.dc, label %.split1222.us, !prof !13, !nosanitize !12

.split1222.us:                                    ; preds = %.lr.ph1219.split, %.lr.ph1219.split.us
  %.us-phi1223 = phi i64 [ %i.lp, %.lr.ph1219.split.us ], [ %i.ro, %.lr.ph1219.split ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @237, i64 %i.jy, i64 %.us-phi1223) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.dc:                                            ; preds = %.lr.ph1219.split
  %i.ru = ptrtoint ptr %i.rm to i64, !nosanitize !12 ; 2 uses
  %i.rv = and i64 %i.ru, 3, !nosanitize !12
  %i.rw = icmp eq i64 %i.rv, 0, !nosanitize !12
  br i1 %i.rw, label %bb.dd, label %.split1225, !prof !13, !nosanitize !12

.split1225:                                       ; preds = %bb.dc, %.lr.ph1219.split.us
  %.us-phi1226 = phi i64 [ 0, %.lr.ph1219.split.us ], [ %i.ru, %bb.dc ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @238, i64 %.us-phi1226) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.dd:                                            ; preds = %bb.dc
  store float 0.000000e+00, ptr %i.rm, align 4, !tbaa !28
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %indvars.iv1800 ; 2 uses
  %i.ry = add i64 %i.rn, %i.ki, !nosanitize !12   ; 3 uses
  %i.rz = icmp ne i64 %i.ry, 0
  %i.sa = icmp ult i64 %i.ry, %i.ki, !nosanitize !12
  %i.sb = xor i1 %i.rq, %i.sa
end_hunk_0
begin_hunk_1_@b3ComputeSweptHullAABB:bb.a
  %foldExtExtBinop = fmul <2 x float> %i.j, %.sroa.5192.0.copyload
  %foldExtExtBinop253 = fmul <2 x float> %i.m, %.sroa.4189.0.copyload
  %foldExtExtBinop255 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop253
  %i.n = shufflevector <2 x float> %i.j, <2 x float> %i.m, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.o = fmul <2 x float> %i.n, %.sroa.4189.0.copyload
  %i.p = shufflevector <2 x float> %.sroa.4189.0.copyload, <2 x float> %.sroa.5192.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.q = fmul <2 x float> %i.j, %i.p
  %i.r = fsub <2 x float> %i.o, %i.q              ; 2 uses
  %i.s = shufflevector <2 x float> %.sroa.5192.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.t = fmul <2 x float> %i.m, %i.s
  %i.u = fmul <2 x float> %i.n, %i.s
  %i.v = fadd <2 x float> %i.t, %i.r              ; 2 uses
  %i.w = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = shufflevector <2 x float> %foldExtExtBinop255, <2 x float> %i.w, <2 x i32> <i32 0, i32 3>
  %i.y = fadd <2 x float> %i.u, %i.x              ; 2 uses
  %i.z = fmul <2 x float> %i.p, %i.v
  %i.aa = shufflevector <2 x float> %.sroa.5192.0.copyload, <2 x float> %.sroa.4189.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ab = fmul <2 x float> %i.aa, %i.y
  %i.ac = fsub <2 x float> %i.z, %i.ab
  %i.ad = shufflevector <2 x float> %i.y, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.ae = fmul <2 x float> %.sroa.4189.0.copyload, %i.ad ; 2 uses
  %i.af = fmul <2 x float> %i.ac, splat (float 2.000000e+00)
  %i.ag = fadd <2 x float> %i.j, %i.af
  %i.ah = fadd <2 x float> %.sroa.0188.sroa.0.0.copyload, %i.ag ; 2 uses
  %i.ai = fmul <2 x float> %.sroa.4189.0.copyload, %.sroa.4189.0.copyload ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fsub float %.sroa.9200.0.copyload, %.sroa.5197.0.copyload
  %i.al = shufflevector <2 x float> %.sroa.4189.0.copyload, <2 x float> %.sroa.5192.0.copyload, <4 x i32> <i32 poison, i32 0, i32 2, i32 2>
  %i.am = shufflevector <2 x float> %.sroa.4166.0.copyload, <2 x float> %.sroa.5169.0.copyload, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <7 x i32> <i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.ao = insertelement <7 x float> %i.an, float %i.ak, i64 0
  %i.ap = shufflevector <2 x float> %.sroa.4189.0.copyload, <2 x float> %.sroa.5192.0.copyload, <4 x i32> <i32 poison, i32 1, i32 3, i32 2>
  %i.aq = shufflevector <2 x float> %.sroa.4166.0.copyload, <2 x float> %.sroa.5169.0.copyload, <4 x i32> <i32 1, i32 3, i32 2, i32 poison>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <7 x i32> <i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.as = insertelement <7 x float> %i.ar, float 5.000000e-01, i64 0
  %i.at = fmul <7 x float> %i.ao, %i.as           ; 7 uses
  %i.au = extractelement <7 x float> %i.at, i64 1 ; 2 uses
  %i.av = extractelement <7 x float> %i.at, i64 2 ; 2 uses
  %i.aw = fadd float %i.au, %i.av
  %i.ax = fsub float %i.au, %i.av
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.aw, i64 1
  %i.ba = fmul <2 x float> %i.az, splat (float 2.000000e+00) ; 3 uses
  %i.bb = shufflevector <7 x float> %i.at, <7 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.bc = fadd <2 x float> %i.aj, %i.bb
  %i.bd = fmul <2 x float> %i.bc, splat (float 2.000000e+00)
  %i.be = fsub <2 x float> splat (float 1.000000e+00), %i.bd ; 3 uses
  %i.bf = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ai)
  %i.bg = fcmp olt <2 x float> %i.ba, zeroinitializer
  %i.bh = fneg <2 x float> %i.ba
  %i.bi = select <2 x i1> %i.bg, <2 x float> %i.bh, <2 x float> %i.ba
  %i.bj = fcmp olt <2 x float> %i.be, zeroinitializer
  %i.bk = fneg <2 x float> %i.be
  %i.bl = select <2 x i1> %i.bj, <2 x float> %i.bk, <2 x float> %i.be
  %i.bm = fsub <2 x float> %.sroa.7198.0.copyload, %.sroa.0195.0.copyload
  %i.bn = fmul <2 x float> %i.bm, splat (float 5.000000e-01) ; 3 uses
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.bp = fmul <2 x float> %.sroa.4189.0.copyload, %i.s ; 4 uses
  %i.bq = shufflevector <2 x float> %.sroa.4189.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.br = shufflevector <2 x float> %.sroa.5192.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bq, %i.br           ; 4 uses
  %i.bt = fsub <2 x float> %i.bs, %i.bp
  %i.bu = fadd <2 x float> %i.bs, %i.bp
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.bw = fmul <2 x float> %i.bv, splat (float 2.000000e+00) ; 3 uses
  %foldExtExtBinop257 = fadd <2 x float> %i.bs, %i.bp
  %foldExtExtBinop259 = fsub <2 x float> %i.bs, %i.bp
  %i.bx = shufflevector <2 x float> %foldExtExtBinop257, <2 x float> %foldExtExtBinop259, <2 x i32> <i32 1, i32 2>
  %i.by = fmul <2 x float> %i.bx, splat (float 2.000000e+00) ; 3 uses
  %i.bz = fcmp olt <2 x float> %i.bw, zeroinitializer
  %i.ca = fneg <2 x float> %i.bw
  %i.cb = select <2 x i1> %i.bz, <2 x float> %i.ca, <2 x float> %i.bw
  %i.cc = fcmp olt <2 x float> %i.by, zeroinitializer
  %i.cd = fneg <2 x float> %i.by
  %i.ce = select <2 x i1> %i.cc, <2 x float> %i.cd, <2 x float> %i.by
  %i.cf = fmul <2 x float> %i.bo, %i.cb           ; 2 uses
  %i.cg = fmul <2 x float> %i.bo, %i.bi
  %i.ch = fmul <2 x float> %i.bn, %i.bl
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  %i.cj = shufflevector <7 x float> %i.at, <7 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ck = fmul <2 x float> %i.cj, %i.ce
  %i.cl = fadd <2 x float> %i.ck, %i.ci           ; 2 uses
  %i.cm = fsub <2 x float> %i.ah, %i.cl           ; 2 uses
  %foldExtExtBinop261 = fmul <2 x float> %i.j, %.sroa.5169.0.copyload
  %foldExtExtBinop263 = fmul <2 x float> %i.m, %.sroa.4166.0.copyload
  %foldExtExtBinop265 = fsub <2 x float> %foldExtExtBinop261, %foldExtExtBinop263
  %i.cn = fmul <2 x float> %i.n, %.sroa.4166.0.copyload
  %i.co = shufflevector <2 x float> %.sroa.4166.0.copyload, <2 x float> %.sroa.5169.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cp = fmul <2 x float> %i.j, %i.co
  %i.cq = fsub <2 x float> %i.cn, %i.cp           ; 2 uses
  %i.cr = shufflevector <2 x float> %.sroa.5169.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.cs = fmul <2 x float> %i.m, %i.cr
  %i.ct = fmul <2 x float> %i.n, %i.cr
  %i.cu = fadd <2 x float> %i.cs, %i.cq           ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cw = shufflevector <2 x float> %foldExtExtBinop265, <2 x float> %i.cv, <2 x i32> <i32 0, i32 3>
  %i.cx = fadd <2 x float> %i.ct, %i.cw           ; 2 uses
  %i.cy = fmul <2 x float> %i.co, %i.cu
  %i.cz = shufflevector <2 x float> %.sroa.5169.0.copyload, <2 x float> %.sroa.4166.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.da = fmul <2 x float> %i.cz, %i.cx
  %i.db = fsub <2 x float> %i.cy, %i.da
  %i.dc = shufflevector <2 x float> %i.cx, <2 x float> %i.cu, <2 x i32> <i32 0, i32 3>
  %i.dd = fmul <2 x float> %.sroa.4166.0.copyload, %i.dc ; 2 uses
  %i.de = fmul <2 x float> %i.db, splat (float 2.000000e+00)
  %i.df = fadd <2 x float> %i.j, %i.de
  %i.dg = fadd <2 x float> %.sroa.0165.sroa.0.0.copyload, %i.df ; 2 uses
  %i.dh = fmul <2 x float> %.sroa.4166.0.copyload, %.sroa.4166.0.copyload ; 2 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dj = extractelement <7 x float> %i.at, i64 4 ; 2 uses
  %i.dk = extractelement <7 x float> %i.at, i64 5 ; 2 uses
  %i.dl = fadd float %i.dj, %i.dk
  %i.dm = fsub float %i.dj, %i.dk
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dl, i64 1
  %i.dp = fmul <2 x float> %i.do, splat (float 2.000000e+00) ; 3 uses
  %i.dq = shufflevector <7 x float> %i.at, <7 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.dr = fadd <2 x float> %i.di, %i.dq
  %i.ds = fmul <2 x float> %i.dr, splat (float 2.000000e+00)
  %i.dt = fsub <2 x float> splat (float 1.000000e+00), %i.ds ; 3 uses
  %i.du = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dh)
  %i.dv = fcmp olt <2 x float> %i.dp, zeroinitializer
  %i.dw = fneg <2 x float> %i.dp
  %i.dx = select <2 x i1> %i.dv, <2 x float> %i.dw, <2 x float> %i.dp
  %i.dy = fcmp olt <2 x float> %i.dt, zeroinitializer
  %i.dz = fneg <2 x float> %i.dt
  %i.ea = select <2 x i1> %i.dy, <2 x float> %i.dz, <2 x float> %i.dt
  %i.eb = fmul <2 x float> %.sroa.4166.0.copyload, %i.cr ; 4 uses
  %i.ec = shufflevector <2 x float> %.sroa.4166.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = shufflevector <2 x float> %.sroa.5169.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.ec, %i.ed           ; 4 uses
  %i.ef = fsub <2 x float> %i.ee, %i.eb
  %i.eg = fadd <2 x float> %i.ee, %i.eb
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> %i.ef, <2 x i32> <i32 0, i32 3>
  %i.ei = fmul <2 x float> %i.eh, splat (float 2.000000e+00) ; 3 uses
  %foldExtExtBinop267 = fadd <2 x float> %i.ee, %i.eb
  %foldExtExtBinop269 = fsub <2 x float> %i.ee, %i.eb
  %i.ej = shufflevector <2 x float> %foldExtExtBinop267, <2 x float> %foldExtExtBinop269, <2 x i32> <i32 1, i32 2>
  %i.ek = fmul <2 x float> %i.ej, splat (float 2.000000e+00) ; 3 uses
  %i.el = fcmp olt <2 x float> %i.ei, zeroinitializer
  %i.em = fneg <2 x float> %i.ei
  %i.en = select <2 x i1> %i.el, <2 x float> %i.em, <2 x float> %i.ei
  %i.eo = fcmp olt <2 x float> %i.ek, zeroinitializer
  %i.ep = fneg <2 x float> %i.ek
  %i.eq = select <2 x i1> %i.eo, <2 x float> %i.ep, <2 x float> %i.ek
  %i.er = fmul <2 x float> %i.bo, %i.en           ; 2 uses
  %i.es = fmul <2 x float> %i.bo, %i.dx
  %i.et = fmul <2 x float> %i.bn, %i.ea
  %i.eu = fadd <2 x float> %i.es, %i.et
  %i.ev = fmul <2 x float> %i.cj, %i.eq
  %i.ew = fadd <2 x float> %i.ev, %i.eu           ; 2 uses
  %i.ex = fsub <2 x float> %i.dg, %i.ew           ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ae, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.ez = shufflevector <2 x float> %i.ae, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.fa = fsub <2 x float> %i.ey, %i.ez
  %i.fb = fmul <2 x float> %i.fa, splat (float 2.000000e+00)
  %i.fc = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fadd <2 x float> %i.fc, %i.fb
  %i.fe = insertelement <2 x float> %i.g, float %.sroa.0165.sroa.4.0.copyload, i64 1
  %i.ff = fadd <2 x float> %i.fe, %i.fd           ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.du, i64 1
  %i.fi = fmul <2 x float> %i.fh, splat (float 2.000000e+00)
  %i.fj = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 3 uses
  %i.fk = fcmp olt <2 x float> %i.fj, zeroinitializer
  %i.fl = fneg <2 x float> %i.fj
  %i.fm = select <2 x i1> %i.fk, <2 x float> %i.fl, <2 x float> %i.fj
  %i.fn = shufflevector <2 x float> %i.cf, <2 x float> %i.er, <2 x i32> <i32 1, i32 3>
  %i.fo = shufflevector <2 x float> %i.cf, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.fp = fadd <2 x float> %i.fn, %i.fo
  %i.fq = fmul <2 x float> %i.cj, %i.fm
  %i.fr = fadd <2 x float> %i.fq, %i.fp           ; 2 uses
  %i.fs = fsub <2 x float> %i.ff, %i.fr           ; 2 uses
  %i.ft = fadd <2 x float> %i.ff, %i.fr           ; 2 uses
  %i.fu = fcmp olt <2 x float> %i.cm, %i.ex
  %i.fv = select <2 x i1> %i.fu, <2 x float> %i.cm, <2 x float> %i.ex
  %i.fw = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fx = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fy = fcmp olt float %i.fw, %i.fx
  %i.fz = select i1 %i.fy, float %i.fw, float %i.fx
  store <2 x float> %i.fv, ptr %0, align 4, !tbaa !28, !alias.scope !277
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.fz, ptr %.sroa.415.0..sroa_idx.i, align 4, !tbaa !28, !alias.scope !277
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gb = fadd <2 x float> %i.ah, %i.cl           ; 2 uses
  %i.gc = fadd <2 x float> %i.dg, %i.ew           ; 2 uses
  %i.gd = fcmp ogt <2 x float> %i.gb, %i.gc
  %i.ge = select <2 x i1> %i.gd, <2 x float> %i.gb, <2 x float> %i.gc
  %i.gf = extractelement <2 x float> %i.ft, i64 0 ; 2 uses
  %i.gg = extractelement <2 x float> %i.ft, i64 1 ; 2 uses
  %i.gh = fcmp ogt float %i.gf, %i.gg
  %i.gi = select i1 %i.gh, float %i.gf, float %i.gg
  store <2 x float> %i.ge, ptr %i.ga, align 4, !tbaa !28, !alias.scope !277
  %.sroa.4.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gi, ptr %.sroa.4.0..sroa_idx.i160, align 4, !tbaa !28, !alias.scope !277
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapHull(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !278 {
bb.a:
  %3 = alloca %struct.b3DistanceInput, align 8    ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %5 = alloca %struct.b3DistanceOutput, align 4   ; 4 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !12
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 4 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @335, i64 %i.b) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.i), !nosanitize !12 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1, !nosanitize !12
  br i1 %i.k, label %bb.e, label %bb.f, !prof !22, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @336, i64 %i.b, i64 %i.i) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !12
  %i.m = inttoptr i64 %i.l to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0.i = phi ptr [ %i.m, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !20
  store ptr %.0.i, ptr %3, align 8, !tbaa !140
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !88
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !28
  %i.p = icmp ne ptr %2, null, !nosanitize !12
  %i.q = ptrtoint ptr %2 to i64, !nosanitize !12  ; 2 uses
  %i.r = and i64 %i.q, 7, !nosanitize !12
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !12
  %i.t = and i1 %i.p, %i.s, !nosanitize !12
  br i1 %i.t, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @248, i64 %i.q) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !141
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.012.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.413.0.copyload = load float, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.514.0.copyload = load <2 x float>, ptr %.sroa.514.0..sroa_idx, align 4 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.w = fsub <2 x float> zeroinitializer, %.sroa.012.0.copyload ; 4 uses
  %i.x = fsub float 0.000000e+00, %.sroa.413.0.copyload ; 3 uses
  %i.y = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1 ; 2 uses
  %i.aa = fmul <2 x float> %i.z, %.sroa.514.0.copyload
  %i.ab = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.514.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %i.w, %i.ab
  %i.ad = shufflevector <2 x float> %.sroa.514.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ae = fmul <2 x float> %i.w, %i.ad
  %i.af = insertelement <2 x float> %i.y, float %i.x, i64 0 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %.sroa.514.0.copyload
  %i.ah = fsub <2 x float> %i.aa, %i.ae
  %i.ai = fsub <2 x float> %i.ac, %i.ag
  %i.aj = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ak = fmul <2 x float> %i.af, %i.aj
  %i.al = fmul <2 x float> %i.z, %i.aj
  %i.am = fsub <2 x float> %i.ah, %i.ak           ; 2 uses
  %i.an = fsub <2 x float> %i.ai, %i.al           ; 2 uses
  %i.ao = fmul <2 x float> %i.ad, %i.am
  %i.ap = fmul <2 x float> %i.ab, %i.an
  %i.aq = fsub <2 x float> %i.ao, %i.ap
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.as = fmul <2 x float> %.sroa.514.0.copyload, %i.ar ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = fmul <2 x float> %i.aq, splat (float 2.000000e+00)
  %i.av = fadd <2 x float> %i.w, %i.au
  %i.aw = fmul float %i.at, 2.000000e+00
  %i.ax = fadd float %i.x, %i.aw
  %i.ay = shufflevector <2 x float> %.sroa.514.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.az = fmul <4 x float> %i.ay, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.ba = extractelement <4 x float> %i.az, i64 1 ; 2 uses
  %i.bb = extractelement <4 x float> %i.az, i64 2
  %i.bc = extractelement <4 x float> %i.az, i64 0 ; 2 uses
  %i.bd = fsub float %i.ba, %i.bc
  %i.be = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.bf = fadd float %i.bd, %i.be
  %i.bg = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.bh = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bi = fsub <2 x float> %i.bg, %i.bh
  %i.bj = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fadd <2 x float> %i.bk, %i.bi
  %i.bm = fsub <2 x float> %i.bl, %.sroa.514.0.copyload
  %i.bn = fsub float %i.bf, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bo = fadd float %i.bc, %i.ba
  %i.bp = fadd float %i.bb, %i.bo
  %i.bq = fadd float %.sroa.2.12.vec.extract.i, %i.bp
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.bq, i64 1
  store <2 x float> %i.av, ptr %i.v, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.ax, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.bm, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.br, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #15
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !148
  %i.bu = call float @b3GetLengthUnitsPerMeter() #15
  %i.bv = fmul float %i.bu, 5.000000e-03
  %i.bw = fmul float %i.bv, 1.000000e-01
  %i.bx = fcmp olt float %i.bt, %i.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %i.bx
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3RayCastHull(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3CastOutput) align 4 captures(none) initializes((0, 48)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !279 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.a = icmp ne ptr %2, null, !nosanitize !12
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @251, i64 %i.b) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !281
  %i.h = icmp ne ptr %1, null, !nosanitize !12
  %i.i = ptrtoint ptr %1 to i64, !nosanitize !12  ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !12
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !12
  %i.l = and i1 %i.h, %i.k, !nosanitize !12
  br i1 %i.l, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @337, i64 %i.i) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %.fr130 = freeze i32 %i.n                       ; 2 uses
  %i.o = icmp eq i32 %.fr130, 0
  br i1 %i.o, label %.lr.ph.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %.fr130 to i64                  ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 %i.p), !nosanitize !12 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1, !nosanitize !12
  br i1 %i.r, label %bb.g, label %b3GetHullPlanes.exit, !prof !22, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @338, i64 %i.i, i64 %i.p) #14, !nosanitize !12
  unreachable, !nosanitize !12

b3GetHullPlanes.exit:                             ; preds = %bb.f
  %i.s = extractvalue { i64, i1 } %i.q, 0, !nosanitize !12 ; 8 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = load i32, ptr %i.u, align 8, !tbaa !24   ; 3 uses
  %.not131.not = icmp eq i64 %i.s, 0
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  br i1 %.not131.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader, !prof !26

.lr.ph.thread:                                    ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = load i32, ptr %i.x, align 8, !tbaa !24
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %b3GetHullPlanes.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not193 = icmp slt i32 %i.v, 1
  br i1 %exitcond.not193, label %.split.us, label %.lr.ph198

.lr.ph.split.us:                                  ; preds = %.lr.ph.thread, %b3GetHullPlanes.exit
  %i.z = phi i32 [ %i.y, %.lr.ph.thread ], [ %i.v, %b3GetHullPlanes.exit ]
  %.not.us = icmp sgt i32 %i.z, 0
  br i1 %.not.us, label %.split127, label %.split.us.thread

.lr.ph198:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.060118197 = phi i32 [ %.262, %.lr.ph.split ], [ -1, %.lr.ph.split.preheader ] ; 4 uses
  %.056119196 = phi float [ %.258, %.lr.ph.split ], [ %i.g, %.lr.ph.split.preheader ] ; 5 uses
  %.0120195 = phi float [ %.2, %.lr.ph.split ], [ 0.000000e+00, %.lr.ph.split.preheader ] ; 5 uses
  %indvars.iv194 = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv194 ; 4 uses
  %i.ab = shl nuw nsw i64 %indvars.iv194, 4
  %i.ac = add i64 %i.ab, %i.s, !nosanitize !12    ; 2 uses
  %.not132 = icmp ult i64 %i.ac, %i.s, !nosanitize !12
  br i1 %.not132, label %.split123.us, label %bb.h, !prof !22, !nosanitize !12

.split123.us:                                     ; preds = %.lr.ph198
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @252, i64 %i.s, i64 %i.ac) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %.lr.ph198
  %i.ad = ptrtoint ptr %i.aa to i64, !nosanitize !12 ; 2 uses
  %i.ae = and i64 %i.ad, 3, !nosanitize !12
  %i.af = icmp eq i64 %i.ae, 0, !nosanitize !12
  br i1 %i.af, label %bb.i, label %.split127, !prof !13, !nosanitize !12

.split127:                                        ; preds = %bb.h, %.lr.ph.split.us
  %.us-phi128 = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ad, %bb.h ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @253, i64 %.us-phi128) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aa, align 4, !tbaa !28 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !28
  %.sroa.026.0.copyload = load <2 x float>, ptr %2, align 4 ; 2 uses
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 4
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload, %.sroa.026.0.copyload
  %foldExtExtBinop201 = fmul <2 x float> %.sroa.0.0.copyload, %.sroa.026.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop201, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop203 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.ag = extractelement <2 x float> %foldExtExtBinop203, i64 0
  %i.ah = fmul float %.sroa.5.0.copyload, %.sroa.227.0.copyload
  %i.ai = fadd float %i.ah, %i.ag
  %i.aj = fsub float %.sroa.7.0.copyload, %i.ai   ; 2 uses
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.220.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %i.ak = fmul <2 x float> %.sroa.0.0.copyload, %.sroa.019.0.copyload ; 2 uses
  %shift205 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop206 = fadd <2 x float> %i.ak, %shift205
  %i.al = extractelement <2 x float> %foldExtExtBinop206, i64 0
  %i.am = fmul float %.sroa.5.0.copyload, %.sroa.220.0.copyload
  %i.an = fadd float %i.am, %i.al                 ; 3 uses
  %i.ao = fcmp oeq float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = fcmp olt float %i.aj, 0.000000e+00
  br i1 %i.ap, label %.thread94, label %.lr.ph.split

bb.k:                                             ; preds = %bb.i
  %i.aq = fdiv float %i.aj, %i.an                 ; 4 uses
  %i.ar = fcmp olt float %i.an, 0.000000e+00
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp ogt float %i.aq, %.0120195
  br i1 %i.as, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.at = trunc nuw nsw i64 %indvars.iv194 to i32
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.au = fcmp olt float %i.aq, %.056119196
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l, %bb.m
  %.161 = phi i32 [ %i.at, %bb.m ], [ %.060118197, %bb.l ], [ %.060118197, %bb.o ], [ %.060118197, %bb.n ]
  %.157 = phi float [ %.056119196, %bb.m ], [ %.056119196, %bb.l ], [ %i.aq, %bb.o ], [ %.056119196, %bb.n ] ; 2 uses
  %.1 = phi float [ %i.aq, %bb.m ], [ %.0120195, %bb.l ], [ %.0120195, %bb.o ], [ %.0120195, %bb.n ] ; 2 uses
  %i.av = fcmp uge float %.157, %.1
  br i1 %i.av, label %.lr.ph.split, label %.thread94

.lr.ph.split:                                     ; preds = %bb.j, %bb.p
  %.262 = phi i32 [ %.060118197, %bb.j ], [ %.161, %bb.p ] ; 2 uses
  %.258 = phi float [ %.056119196, %bb.j ], [ %.157, %bb.p ]
  %.2 = phi float [ %.0120195, %bb.j ], [ %.1, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.us, label %.lr.ph198

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.preheader
  %.0120.lcssa = phi float [ 0.000000e+00, %.lr.ph.split.preheader ], [ %.2, %.lr.ph.split ] ; 3 uses
  %.060118.lcssa = phi i32 [ -1, %.lr.ph.split.preheader ], [ %.262, %.lr.ph.split ] ; 2 uses
  %i.aw = icmp sgt i32 %.060118.lcssa, -1
  br i1 %i.aw, label %bb.q, label %.split.us.thread

bb.q:                                             ; preds = %.split.us
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.212.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %i.ay = fmul float %.0120.lcssa, %.sroa.212.0.copyload
  %.sroa.05.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.26.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 4
end_hunk_1
begin_hunk_2_@b3MakeTransformedBoxHull:bb.a
  br i1 %.not338, label %bb.cj, label %bb.ck, !prof !22, !nosanitize !12

bb.cj:                                            ; preds = %bb.ci
  %i.aas = add i64 %i.aap, 8, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @321, i64 %i.aap, i64 %i.aas) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.ck:                                            ; preds = %bb.ci
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 584
  store float %i.mb, ptr %i.aat, align 8, !tbaa !28
  %.not339 = icmp ugt ptr %i.aao, inttoptr (i64 -13 to ptr)
  br i1 %.not339, label %bb.cl, label %bb.cm, !prof !22, !nosanitize !12

bb.cl:                                            ; preds = %bb.ck
  %i.aau = add i64 %i.aap, 12, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @322, i64 %i.aap, i64 %i.aau) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cm:                                            ; preds = %bb.ck
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.aaw = extractelement <4 x float> %i.nc, i64 0
  store float %i.aaw, ptr %i.aav, align 4, !tbaa !28
  %.not340 = icmp ugt ptr %i.aao, inttoptr (i64 -17 to ptr)
  br i1 %.not340, label %bb.cn, label %bb.co, !prof !22, !nosanitize !12

bb.cn:                                            ; preds = %bb.cm
  %i.aax = add i64 %i.aap, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @323, i64 %i.aap, i64 %i.aax) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.co:                                            ; preds = %bb.cm
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 592
  store float %i.oc, ptr %i.aay, align 8, !tbaa !28
  %.not341 = icmp ugt ptr %i.aao, inttoptr (i64 -21 to ptr)
  br i1 %.not341, label %bb.cp, label %bb.cq, !prof !22, !nosanitize !12

bb.cp:                                            ; preds = %bb.co
  %i.aaz = add i64 %i.aap, 20, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @324, i64 %i.aap, i64 %i.aaz) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cq:                                            ; preds = %bb.co
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.abb = extractelement <4 x float> %i.pb, i64 1
  store float %i.abb, ptr %i.aba, align 4, !tbaa !28
  %.not342 = icmp ugt ptr %i.aao, inttoptr (i64 -25 to ptr)
  br i1 %.not342, label %bb.cr, label %bb.cs, !prof !22, !nosanitize !12

bb.cr:                                            ; preds = %bb.cq
  %i.abc = add i64 %i.aap, 24, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @325, i64 %i.aap, i64 %i.abc) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cs:                                            ; preds = %bb.cq
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 600
  store float 0.000000e+00, ptr %i.abd, align 8, !tbaa !28
  %.not343 = icmp ugt ptr %i.aao, inttoptr (i64 -29 to ptr)
  br i1 %.not343, label %bb.ct, label %bb.cu, !prof !22, !nosanitize !12

bb.ct:                                            ; preds = %bb.cs
  %i.abe = add i64 %i.aap, 28, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @326, i64 %i.aap, i64 %i.abe) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cu:                                            ; preds = %bb.cs
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float 0.000000e+00, ptr %i.abf, align 4, !tbaa !28
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 8 uses
  %i.abh = ptrtoint ptr %i.abg to i64, !nosanitize !12 ; 12 uses
  store float %i.jh, ptr %i.abg, align 8, !tbaa !28
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.abj = extractelement <4 x float> %i.ks, i64 2
  store float %i.abj, ptr %i.abi, align 4, !tbaa !28
  %.not344 = icmp eq ptr %i.abg, inttoptr (i64 -8 to ptr)
  br i1 %.not344, label %bb.cv, label %bb.cw, !prof !22, !nosanitize !12

bb.cv:                                            ; preds = %bb.cu
  %i.abk = add i64 %i.abh, 8, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @327, i64 %i.abh, i64 %i.abk) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cw:                                            ; preds = %bb.cu
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 616
  store float %i.mc, ptr %i.abl, align 8, !tbaa !28
  %.not345 = icmp ugt ptr %i.abg, inttoptr (i64 -13 to ptr)
  br i1 %.not345, label %bb.cx, label %bb.cy, !prof !22, !nosanitize !12

bb.cx:                                            ; preds = %bb.cw
  %i.abm = add i64 %i.abh, 12, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @328, i64 %i.abh, i64 %i.abm) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cy:                                            ; preds = %bb.cw
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.abo = extractelement <4 x float> %i.nc, i64 2
  store float %i.abo, ptr %i.abn, align 4, !tbaa !28
  %.not346 = icmp ugt ptr %i.abg, inttoptr (i64 -17 to ptr)
  br i1 %.not346, label %bb.cz, label %bb.da, !prof !22, !nosanitize !12

bb.cz:                                            ; preds = %bb.cy
  %i.abp = add i64 %i.abh, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @329, i64 %i.abh, i64 %i.abp) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.da:                                            ; preds = %bb.cy
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float %i.oe, ptr %i.abq, align 8, !tbaa !28
  %.not347 = icmp ugt ptr %i.abg, inttoptr (i64 -21 to ptr)
  br i1 %.not347, label %bb.db, label %bb.dc, !prof !22, !nosanitize !12

bb.db:                                            ; preds = %bb.da
  %i.abr = add i64 %i.abh, 20, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @330, i64 %i.abh, i64 %i.abr) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.dc:                                            ; preds = %bb.da
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.abt = extractelement <4 x float> %i.pb, i64 2
  store float %i.abt, ptr %i.abs, align 4, !tbaa !28
  %.not348 = icmp ugt ptr %i.abg, inttoptr (i64 -25 to ptr)
  br i1 %.not348, label %bb.dd, label %bb.de, !prof !22, !nosanitize !12

bb.dd:                                            ; preds = %bb.dc
  %i.abu = add i64 %i.abh, 24, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @331, i64 %i.abh, i64 %i.abu) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.de:                                            ; preds = %bb.dc
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 632
  store float 0.000000e+00, ptr %i.abv, align 8, !tbaa !28
  %.not349 = icmp ugt ptr %i.abg, inttoptr (i64 -29 to ptr)
  br i1 %.not349, label %bb.df, label %bb.dg, !prof !22, !nosanitize !12

bb.df:                                            ; preds = %bb.de
  %i.abw = add i64 %i.abh, 28, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @332, i64 %i.abh, i64 %i.abw) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.dg:                                            ; preds = %bb.de
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 636
  store float 0.000000e+00, ptr %i.abx, align 4, !tbaa !28
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.aby, align 8, !tbaa !306
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !307
  %i.acb = call i64 @b3Hash64NonZero(ptr noundef nonnull %0, i32 noundef %i.aca) #15
  store i64 %i.acb, ptr %i.aby, align 8, !tbaa !306
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

declare void @b3BoxInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, <2 x float>, float, <2 x float>, float) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3MakeCubeHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1) local_unnamed_addr #8 !func_sanitize !308 {
bb.a:
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %1, float noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity)
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3MakeBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #8 !func_sanitize !309 {
bb.a:
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity)
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3MakeOffsetBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1, float noundef %2, float noundef %3, <2 x float> %4, float %5) local_unnamed_addr #0 !func_sanitize !310 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store <2 x float> %4, ptr %6, align 8, !tbaa !28
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %5, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) @b3Quat_identity, i64 16, i1 false), !tbaa.struct !83
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3ScaleBox(ptr noundef %0, ptr noundef %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #0 !func_sanitize !313 {
bb.a:
  %5 = alloca %struct.b3Matrix3, align 8          ; 13 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !12
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @333, i64 %i.b) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0180.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !28 ; 8 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.10.0.copyload = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !28 ; 6 uses
  %i.g = fcmp olt <2 x float> %2, zeroinitializer ; 3 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0      ; 2 uses
  %i.i = extractelement <2 x i1> %i.g, i64 1      ; 2 uses
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  %i.j = fcmp olt float %3, 0.000000e+00          ; 3 uses
  %or.cond206 = select i1 %or.cond, i1 true, i1 %i.j
  br i1 %or.cond206, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %.sroa.0.4.vec.extract354 = extractelement <2 x float> %2, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %foldExtExtBinop = fmul <2 x float> %.sroa.10.0.copyload, %.sroa.10.0.copyload ; 2 uses
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop381 = fmul <2 x float> %.sroa.0180.0.copyload, %.sroa.0180.0.copyload
  %i.l = extractelement <2 x float> %foldExtExtBinop381, i64 1 ; 2 uses
  %foldExtExtBinop383 = fmul <2 x float> %.sroa.0180.0.copyload, %.sroa.0180.0.copyload ; 2 uses
  %i.m = extractelement <2 x float> %foldExtExtBinop383, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.t = fadd float %i.m, %i.l
  %i.u = fmul float %i.t, 2.000000e+00
  %i.v = fsub float 1.000000e+00, %i.u            ; 2 uses
  store float %i.v, ptr %i.s, align 8, !tbaa !86, !alias.scope !314
  %i.w = shufflevector <2 x float> %.sroa.0180.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 0>
  %i.x = insertelement <4 x float> %i.w, float 1.000000e+00, i64 1
  %i.y = shufflevector <2 x float> %.sroa.0180.0.copyload, <2 x float> %.sroa.10.0.copyload, <4 x i32> <i32 1, i32 poison, i32 2, i32 2>
  %i.z = insertelement <4 x float> %i.y, float 1.000000e+00, i64 1
  %i.aa = fmul <4 x float> %i.x, %i.z             ; 5 uses
  %foldExtExtBinop385 = fadd <2 x float> %foldExtExtBinop383, %foldExtExtBinop
  %i.ab = shufflevector <2 x float> %foldExtExtBinop385, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ac = shufflevector <2 x float> %.sroa.10.0.copyload, <2 x float> %.sroa.0180.0.copyload, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> %i.ab, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ae = shufflevector <2 x float> %.sroa.10.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 1>
  %i.af = insertelement <4 x float> %i.ae, float 2.000000e+00, i64 1
  %i.ag = fmul <4 x float> %i.ad, %i.af           ; 5 uses
  %foldExtExtBinop387 = fsub <4 x float> %i.aa, %i.ag
  %i.ah = extractelement <4 x float> %foldExtExtBinop387, i64 3
  %i.ai = fmul float %i.ah, 2.000000e+00
  %i.aj = fsub <4 x float> %i.aa, %i.ag
  %i.ak = fadd <4 x float> %i.aa, %i.ag
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = fmul <4 x float> %i.al, <float 2.000000e+00, float 1.000000e+00, float 1.000000e+00, float 2.000000e+00>
  %foldExtExtBinop389 = fsub <4 x float> %i.aa, %i.ag
  %i.an = extractelement <4 x float> %foldExtExtBinop389, i64 2
  %i.ao = fmul float %i.an, 2.000000e+00
  %i.ap = fadd float %i.l, %i.k
  %i.aq = fmul float %i.ap, 2.000000e+00
  %i.ar = fsub float 1.000000e+00, %i.aq
  %foldExtExtBinop391 = fadd <4 x float> %i.aa, %i.ag
  %i.as = extractelement <4 x float> %foldExtExtBinop391, i64 0
  %i.at = fmul float %i.as, 2.000000e+00
  %i.au = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.at, i64 1
  %i.aw = fmul <2 x float> %2, %i.av
  store <2 x float> %i.aw, ptr %5, align 8, !tbaa !28
  %i.ax = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.ay = insertelement <4 x float> %i.ax, float 2.000000e+00, i64 2
  %i.az = fmul <4 x float> %i.ay, %i.am           ; 2 uses
  store <4 x float> %i.az, ptr %i.o, align 4, !tbaa !28
  %i.ba = fmul float %.sroa.0.4.vec.extract354, %i.ao
  store float %i.ba, ptr %i.r, align 4, !tbaa !315
  %i.bb = fmul float %3, %i.ai                    ; 3 uses
  %i.bc = extractelement <4 x float> %i.az, i64 2
  %i.bd = fmul float %3, %i.bc                    ; 3 uses
  %i.be = fmul float %3, %i.v                     ; 3 uses
  %.sroa.0176.0.copyload = load <2 x float>, ptr %5, align 8 ; 3 uses
  %i.bf = fmul <2 x float> %.sroa.0176.0.copyload, %.sroa.0176.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop393 = fadd <2 x float> %i.bf, %shift
  %i.bg = extractelement <2 x float> %foldExtExtBinop393, i64 0
  %i.bh = fmul float %i.bb, %i.bb
  %i.bi = fadd float %i.bh, %i.bg                 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, f0x057A0000
  br i1 %i.bj, label %bb.e, label %b3Normalize.exit222

bb.e:                                             ; preds = %bb.d
  %i.bk = tail call float @sqrtf(float noundef %i.bi) #15
  %i.bl = fdiv float 1.000000e+00, %i.bk          ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %.sroa.0176.0.copyload, %i.bn
  %i.bp = fmul float %i.bb, %i.bl
  br label %b3Normalize.exit222

b3Normalize.exit222:                              ; preds = %bb.d, %bb.e
  %.sroa.07.0.i216 = phi <2 x float> [ %i.bo, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %.sroa.5.0.i217 = phi float [ %i.bp, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  store <2 x float> %.sroa.07.0.i216, ptr %5, align 8, !tbaa !28
  store float %.sroa.5.0.i217, ptr %i.n, align 8, !tbaa !28
  %.sroa.0168.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 3 uses
  %i.bq = fmul <2 x float> %.sroa.0168.0.copyload, %.sroa.0168.0.copyload ; 2 uses
  %shift395 = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop396 = fadd <2 x float> %i.bq, %shift395
  %i.br = extractelement <2 x float> %foldExtExtBinop396, i64 0
  %i.bs = fmul float %i.bd, %i.bd
  %i.bt = fadd float %i.bs, %i.br                 ; 2 uses
  %i.bu = fcmp ogt float %i.bt, f0x057A0000
  br i1 %i.bu, label %bb.f, label %b3Normalize.exit214

bb.f:                                             ; preds = %b3Normalize.exit222
  %i.bv = tail call float @sqrtf(float noundef %i.bt) #15
  %i.bw = fdiv float 1.000000e+00, %i.bv          ; 2 uses
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %.sroa.0168.0.copyload, %i.by
  %i.ca = fmul float %i.bd, %i.bw
  br label %b3Normalize.exit214

b3Normalize.exit214:                              ; preds = %b3Normalize.exit222, %bb.f
  %.sroa.07.0.i208 = phi <2 x float> [ %i.bz, %bb.f ], [ zeroinitializer, %b3Normalize.exit222 ] ; 2 uses
  %.sroa.5.0.i209 = phi float [ %i.ca, %bb.f ], [ 0.000000e+00, %b3Normalize.exit222 ] ; 2 uses
  store <2 x float> %.sroa.07.0.i208, ptr %i.o, align 4, !tbaa !28
  store float %.sroa.5.0.i209, ptr %i.p, align 4, !tbaa !28
  %.sroa.0160.0.copyload = load <2 x float>, ptr %i.q, align 8 ; 3 uses
  %i.cb = fmul <2 x float> %.sroa.0160.0.copyload, %.sroa.0160.0.copyload ; 2 uses
  %shift398 = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop399 = fadd <2 x float> %i.cb, %shift398
  %i.cc = extractelement <2 x float> %foldExtExtBinop399, i64 0
  %i.cd = fmul float %i.be, %i.be
  %i.ce = fadd float %i.cd, %i.cc                 ; 2 uses
  %i.cf = fcmp ogt float %i.ce, f0x057A0000
  br i1 %i.cf, label %bb.g, label %b3Normalize.exit

bb.g:                                             ; preds = %b3Normalize.exit214
  %i.cg = tail call float @sqrtf(float noundef %i.ce) #15
  %i.ch = fdiv float 1.000000e+00, %i.cg          ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %.sroa.0160.0.copyload, %i.cj
  %i.cl = fmul float %i.be, %i.ch
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %b3Normalize.exit214, %bb.g
  %.sroa.07.0.i = phi <2 x float> [ %i.ck, %bb.g ], [ zeroinitializer, %b3Normalize.exit214 ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.cl, %bb.g ], [ 0.000000e+00, %b3Normalize.exit214 ] ; 2 uses
  store <2 x float> %.sroa.07.0.i, ptr %i.q, align 8, !tbaa !28
  store float %.sroa.5.0.i, ptr %i.s, align 8, !tbaa !28
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %b3Normalize.exit
  %i.cm = fneg <2 x float> %.sroa.07.0.i216
  %i.cn = fneg float %.sroa.5.0.i217
  store <2 x float> %i.cm, ptr %5, align 8, !tbaa !28
  store float %i.cn, ptr %i.n, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %b3Normalize.exit, %bb.h
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = fneg <2 x float> %.sroa.07.0.i208
  %i.cp = fneg float %.sroa.5.0.i209
  store <2 x float> %i.co, ptr %i.o, align 4, !tbaa !28
  store float %i.cp, ptr %i.p, align 4, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  br i1 %i.j, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = fneg <2 x float> %.sroa.07.0.i
  %i.cr = fneg float %.sroa.5.0.i
  store <2 x float> %i.cq, ptr %i.q, align 8, !tbaa !28
  store float %i.cr, ptr %i.s, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cs = call { <2 x float>, <2 x float> } @b3MakeQuatFromMatrix(ptr noundef nonnull %5) #15 ; 2 uses
  %i.ct = extractvalue { <2 x float>, <2 x float> } %i.cs, 0
  %i.cu = extractvalue { <2 x float>, <2 x float> } %i.cs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.m
  %.sroa.0180.0 = phi <2 x float> [ %i.ct, %bb.m ], [ %.sroa.0180.0.copyload, %bb.c ] ; 13 uses
  %.sroa.10.0 = phi <2 x float> [ %i.cu, %bb.m ], [ %.sroa.10.0.copyload, %bb.c ] ; 9 uses
  %i.cv = icmp ne ptr %0, null, !nosanitize !12
  %i.cw = ptrtoint ptr %0 to i64, !nosanitize !12 ; 2 uses
  %i.cx = and i64 %i.cw, 3, !nosanitize !12
  %i.cy = icmp eq i64 %i.cx, 0, !nosanitize !12
  %i.cz = and i1 %i.cv, %i.cy, !nosanitize !12
  br i1 %i.cz, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @334, i64 %i.cw) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.p:                                             ; preds = %bb.n
  %i.da = fneg float %3
  %i.db = select i1 %i.j, float %i.da, float %3   ; 2 uses
  %i.dc = fneg <2 x float> %2
  %.sroa.0118.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !28 ; 5 uses
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5120.0.copyload = load float, ptr %.sroa.5120.0..sroa_idx, align 4, !tbaa !28 ; 5 uses
  %.sroa.0.0.vec.extract.i243 = extractelement <2 x float> %.sroa.0118.0.copyload, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i245 = extractelement <2 x float> %.sroa.0118.0.copyload, i64 1 ; 3 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.10.0, i64 0
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %.sroa.0180.0, i64 1 ; 2 uses
  %i.dd = fmul float %.sroa.2.8.vec.extract65.i, %.sroa.0.4.vec.extract.i245 ; 2 uses
  %i.de = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.5120.0.copyload ; 2 uses
  %i.df = fsub float %i.dd, %i.de
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0180.0, i64 0 ; 4 uses
  %i.dg = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.5120.0.copyload ; 2 uses
  %foldExtExtBinop401 = fmul <2 x float> %.sroa.10.0, %.sroa.0118.0.copyload
  %i.dh = extractelement <2 x float> %foldExtExtBinop401, i64 0 ; 2 uses
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.0.0.vec.extract.i243 ; 2 uses
  %i.dk = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.0.4.vec.extract.i245 ; 2 uses
  %i.dl = fsub float %i.dj, %i.dk
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.10.0, i64 1 ; 3 uses
  %i.dm = fmul float %.sroa.2.12.vec.extract.i, %.sroa.0.0.vec.extract.i243
  %i.dn = fmul float %.sroa.2.12.vec.extract.i, %.sroa.0.4.vec.extract.i245 ; 2 uses
  %i.do = fmul float %.sroa.2.12.vec.extract.i, %.sroa.5120.0.copyload
  %i.dp = fsub float %i.de, %i.dd
  %i.dq = fsub float %i.dh, %i.dg
  %i.dr = fsub float %i.dk, %i.dj
  %i.ds = select <2 x i1> %i.g, <2 x float> %i.dc, <2 x float> %2 ; 3 uses
  %i.dt = fsub float %i.di, %i.dn                 ; 2 uses
  %i.du = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.df, i64 1
  %i.dw = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.dm, i64 1 ; 2 uses
  %i.dy = fsub <2 x float> %i.dv, %i.dx           ; 3 uses
  %i.dz = shufflevector <2 x float> %.sroa.0180.0, <2 x float> %.sroa.10.0, <2 x i32> <i32 1, i32 2> ; 6 uses
  %i.ea = fmul <2 x float> %i.dz, %i.dy
  %i.eb = shufflevector <2 x float> %.sroa.10.0, <2 x float> %.sroa.0180.0, <2 x i32> <i32 0, i32 2> ; 6 uses
  %i.ec = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ed = insertelement <2 x float> %i.ec, float %i.dt, i64 0
  %i.ee = fmul <2 x float> %i.eb, %i.ed
  %i.ef = fsub <2 x float> %i.ea, %i.ee
  %i.eg = fmul float %.sroa.09.0.vec.extract.i.i, %i.dt
  %foldExtExtBinop403 = fmul <2 x float> %.sroa.0180.0, %i.dy
  %i.eh = extractelement <2 x float> %foldExtExtBinop403, i64 1
  %i.ei = fsub float %i.eg, %i.eh
  %i.ej = fmul <2 x float> %i.ef, splat (float 2.000000e+00)
  %i.ek = fsub <2 x float> %i.ej, %.sroa.0118.0.copyload
  %i.el = fmul float %i.ei, 2.000000e+00
  %i.em = fsub float %i.el, %.sroa.5120.0.copyload
  %i.en = fmul <2 x float> %i.ds, %i.ek           ; 6 uses
  %i.eo = fmul float %i.db, %i.em                 ; 3 uses
  %i.ep = fadd float %i.dn, %i.dq                 ; 2 uses
  %i.eq = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.dp, i64 1
  %i.es = fadd <2 x float> %i.dx, %i.er           ; 3 uses
  %i.et = fmul <2 x float> %i.dz, %i.es
  %i.eu = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ev = insertelement <2 x float> %i.eu, float %i.ep, i64 0
  %i.ew = fmul <2 x float> %i.eb, %i.ev
  %i.ex = fsub <2 x float> %i.et, %i.ew
  %i.ey = fmul float %.sroa.09.0.vec.extract.i.i, %i.ep
  %foldExtExtBinop405 = fmul <2 x float> %.sroa.0180.0, %i.es
  %i.ez = extractelement <2 x float> %foldExtExtBinop405, i64 1
  %i.fa = fsub float %i.ey, %i.ez
  %i.fb = fmul <2 x float> %i.ex, splat (float 2.000000e+00)
  %i.fc = fadd <2 x float> %.sroa.0118.0.copyload, %i.fb ; 2 uses
  %i.fd = fmul float %i.fa, 2.000000e+00
  %i.fe = fadd float %.sroa.5120.0.copyload, %i.fd
  %i.ff = fmul <2 x float> %i.ds, %i.fc           ; 5 uses
  %i.fg = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fh = insertelement <2 x float> %i.fg, float %i.db, i64 0
  %i.fi = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fj = insertelement <2 x float> %i.fi, float %i.fe, i64 0
  %i.fk = fmul <2 x float> %i.fh, %i.fj           ; 4 uses
  %i.fl = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fm = insertelement <2 x float> %i.fl, float %i.eo, i64 1
  %i.fn = fmul <2 x float> %.sroa.0180.0, %i.fm
  %i.fo = fmul <2 x float> %i.eb, %i.en
  %i.fp = fmul <2 x float> %i.dz, %i.en
  %i.fq = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> %i.en, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fs = fmul <2 x float> %.sroa.0180.0, %i.fr
  %i.ft = fsub <2 x float> %i.fn, %i.fp
  %i.fu = fsub <2 x float> %i.fo, %i.fs
  %foldExtExtBinop407 = fmul <2 x float> %.sroa.10.0, %i.en
  %i.fv = shufflevector <2 x float> %.sroa.10.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fw = fmul <2 x float> %i.fv, %i.fr           ; 2 uses
  %i.fx = fsub <2 x float> %i.ft, %i.fw           ; 2 uses
  %i.fy = shufflevector <2 x float> %foldExtExtBinop407, <2 x float> %i.fw, <2 x i32> <i32 1, i32 2>
  %i.fz = fsub <2 x float> %i.fu, %i.fy           ; 2 uses
  %i.ga = fmul <2 x float> %i.dz, %i.fx
  %i.gb = fmul <2 x float> %i.eb, %i.fz
  %i.gc = fsub <2 x float> %i.ga, %i.gb
  %i.gd = fmul <2 x float> %i.gc, splat (float 2.000000e+00)
  %i.ge = fadd <2 x float> %i.en, %i.gd           ; 4 uses
  %i.gf = shufflevector <2 x float> %i.ff, <2 x float> %i.fk, <2 x i32> <i32 1, i32 2>
  %i.gg = fmul <2 x float> %.sroa.0180.0, %i.gf
  %i.gh = fmul <2 x float> %i.eb, %i.ff
  %i.gi = fmul <2 x float> %i.dz, %i.ff
  %i.gj = fmul <2 x float> %.sroa.0180.0, %i.fk
  %i.gk = fsub <2 x float> %i.gg, %i.gi
  %i.gl = fsub <2 x float> %i.gh, %i.gj
  %foldExtExtBinop409 = fmul <2 x float> %.sroa.10.0, %i.ff
  %i.gm = fmul <2 x float> %i.fv, %i.fk           ; 2 uses
  %i.gn = fsub <2 x float> %i.gk, %i.gm           ; 2 uses
  %i.go = shufflevector <2 x float> %foldExtExtBinop409, <2 x float> %i.gm, <2 x i32> <i32 1, i32 2>
  %i.gp = fsub <2 x float> %i.gl, %i.go           ; 2 uses
  %i.gq = fmul <2 x float> %i.dz, %i.gn
  %i.gr = fmul <2 x float> %i.eb, %i.gp
  %i.gs = fsub <2 x float> %i.gq, %i.gr
  %i.gt = fmul <2 x float> %i.gs, splat (float 2.000000e+00)
  %i.gu = fadd <2 x float> %i.ff, %i.gt           ; 4 uses
  %i.gv = fcmp olt <2 x float> %i.ge, %i.gu
  %i.gw = select <2 x i1> %i.gv, <2 x float> %i.ge, <2 x float> %i.gu
  %i.gx = fcmp ogt <2 x float> %i.ge, %i.gu
  %i.gy = select <2 x i1> %i.gx, <2 x float> %i.ge, <2 x float> %i.gu
  %i.gz = shufflevector <2 x float> %.sroa.0180.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = shufflevector <2 x float> %i.gp, <2 x float> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.hb = fmul <2 x float> %i.gz, %i.ha
  %i.hc = shufflevector <2 x float> %.sroa.0180.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = shufflevector <2 x float> %i.gn, <2 x float> %i.fx, <2 x i32> <i32 1, i32 3>
  %i.he = fmul <2 x float> %i.hc, %i.hd
  %i.hf = fsub <2 x float> %i.hb, %i.he
  %i.hg = fmul <2 x float> %i.hf, splat (float 2.000000e+00)
  %i.hh = insertelement <2 x float> %i.fk, float %i.eo, i64 1
  %i.hi = fadd <2 x float> %i.hh, %i.hg           ; 4 uses
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hk = fcmp ogt <2 x float> %i.hi, %i.hj
  %i.hl = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hm = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = select <2 x i1> %i.hk, <2 x float> %i.hl, <2 x float> %i.hm ; 2 uses
  %i.ho = fsub <2 x float> %i.gy, %i.gw
  %shift411 = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop412 = fsub <2 x float> %shift411, %i.hn
  %i.hp = extractelement <2 x float> %foldExtExtBinop412, i64 0
  %i.hq = fmul <2 x float> %i.ho, splat (float 5.000000e-01) ; 2 uses
  %i.hr = fmul float %i.hp, 5.000000e-01          ; 2 uses
  %i.hs = insertelement <2 x float> poison, float %4, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hu = fcmp ogt <2 x float> %i.hq, %i.ht
  %i.hv = select <2 x i1> %i.hu, <2 x float> %i.hq, <2 x float> %i.ht
  %i.hw = fcmp ogt float %i.hr, %4
  %i.hx = select i1 %i.hw, float %i.hr, float %4
  store <2 x float> %i.hv, ptr %0, align 4, !tbaa !28
  store float %i.hx, ptr %.sroa.5120.0..sroa_idx, align 4, !tbaa !28
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.hy = fmul <2 x float> %2, %.sroa.01.0.copyload
  %i.hz = fmul float %3, %.sroa.22.0.copyload
  store <2 x float> %i.hy, ptr %1, align 4, !tbaa !28
  store float %i.hz, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !28
  store <2 x float> %.sroa.0180.0, ptr %i.f, align 4, !tbaa !28
  store <2 x float> %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !28
  ret void
}

declare { <2 x float>, <2 x float> } @b3MakeQuatFromMatrix(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3MakeScaledBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, <2 x float> %1, float %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, <2 x float> %4, float %5) local_unnamed_addr #0 !func_sanitize !316 {
bb.a:
  %6 = alloca %struct.b3Vec3, align 8             ; 7 uses
  %7 = alloca %struct.b3Transform, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store <2 x float> %1, ptr %6, align 8, !tbaa !28
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %2, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !149
  %i.a = tail call float @b3GetLengthUnitsPerMeter() #15
  %i.b = fmul float %i.a, 5.000000e-03
  %i.c = fmul float %i.b, 4.000000e+00
  call void @b3ScaleBox(ptr noundef nonnull %6, ptr noundef nonnull %7, <2 x float> %4, float %5, float noundef %i.c)
  %i.d = load float, ptr %6, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !317
  %i.g = load float, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !86
  call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %i.d, float noundef %i.f, float noundef %i.g, ptr noundef nonnull byval(%struct.b3Transform) align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @b3HullBuilder_NewVertex(ptr noundef nonnull %0, <2 x float> %1, float %2) unnamed_addr #0 !func_sanitize !318 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @386, i64 %i.a) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !319  ; 4 uses
  %i.f = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.e, i32 1), !nosanitize !12 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1, !nosanitize !12
  br i1 %i.g, label %bb.d, label %bb.e, !prof !22, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %i.e to i64, !nosanitize !12
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @387, i64 %i.h, i64 1) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 3 uses
  %i.k = extractvalue { i32, i1 } %i.f, 0, !nosanitize !12
  store i32 %i.k, ptr %i.d, align 4, !tbaa !319
  %i.l = sext i32 %i.e to i64                     ; 2 uses
  %i.m = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.l ; 9 uses
  %i.n = mul nsw i64 %i.l, 48
  %i.o = ptrtoint ptr %i.j to i64, !nosanitize !12 ; 3 uses
  %i.p = add i64 %i.n, %i.o, !nosanitize !12      ; 3 uses
  %i.q = icmp ne ptr %i.j, null, !nosanitize !12  ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  %i.s = xor i1 %i.q, %i.r
  %i.t = icmp uge i64 %i.p, %i.o, !nosanitize !12
  %i.u = icmp slt i32 %i.e, 0
  %i.v = xor i1 %i.u, %i.t
  %i.w = and i1 %i.s, %i.v, !nosanitize !12
  br i1 %i.w, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @388, i64 %i.o, i64 %i.p) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.g:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.m to i64, !nosanitize !12 ; 2 uses
  %i.y = and i64 %i.x, 7, !nosanitize !12
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !12
  %i.aa = and i1 %i.q, %i.z
  br i1 %i.aa, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @389, i64 %i.x) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.m, align 8, !tbaa !320
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !321
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store <2 x float> %1, ptr %i.ad, align 8, !tbaa !28
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store float %2, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store i32 -1, ptr %i.ae, align 4, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 0, ptr %i.af, align 8, !tbaa !102
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @b3HullBuilder_NewFace(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !func_sanitize !322 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @394, i64 %i.a) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 3 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @395, i64 %i.f) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  store ptr %i.j, ptr %i.d, align 8, !tbaa !100
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !323  ; 4 uses
  %i.o = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.n, i32 1), !nosanitize !12 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1, !nosanitize !12
  br i1 %i.p, label %bb.h, label %bb.i, !prof !22, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %i.n to i64, !nosanitize !12
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @396, i64 %i.q, i64 1) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.g
  %i.r = extractvalue { i32, i1 } %i.o, 0, !nosanitize !12
  store i32 %i.r, ptr %i.m, align 4, !tbaa !323
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = shl nsw i64 %i.s, 7
  %i.u = ptrtoint ptr %i.l to i64, !nosanitize !12 ; 3 uses
  %i.v = add i64 %i.t, %i.u, !nosanitize !12      ; 3 uses
  %i.w = icmp ne ptr %i.l, null, !nosanitize !12
  %i.x = icmp eq i64 %i.v, 0
  %i.y = xor i1 %i.w, %i.x
  %i.z = icmp uge i64 %i.v, %i.u, !nosanitize !12
  %i.aa = icmp slt i32 %i.n, 0
  %i.ab = xor i1 %i.aa, %i.z
  %i.ac = and i1 %i.y, %i.ab, !nosanitize !12
  br i1 %i.ac, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @397, i64 %i.u, i64 %i.v) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds [128 x i8], ptr %i.l, i64 %i.s ; 2 uses
  %.pre187 = ptrtoint ptr %i.ad to i64, !nosanitize !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pre-phi188 = phi i64 [ %.pre187, %bb.k ], [ %i.f, %bb.f ] ; 2 uses
  %.0 = phi ptr [ %i.ad, %bb.k ], [ %i.e, %bb.f ] ; 20 uses
  %i.ae = icmp ne ptr %.0, null, !nosanitize !12
  %i.af = and i64 %.pre-phi188, 7, !nosanitize !12
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !12
  %i.ah = and i1 %i.ae, %i.ag, !nosanitize !12
  br i1 %i.ah, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @398, i64 %.pre-phi188) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.n:                                             ; preds = %bb.l
  store ptr null, ptr %.0, align 8, !tbaa !324
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 8
end_hunk_2
begin_hunk_3_@b3HullBuilder_ConnectEdges:bb.a
bb.bm:                                            ; preds = %bb.bl, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3NewellPlane(ptr noundef %0) unnamed_addr #0 !func_sanitize !339 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !12
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @501, i64 %i.b) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 5 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !12
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !12 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !12
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !12
  %i.l = and i1 %i.h, %i.k, !nosanitize !12
  br i1 %i.l, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @502, i64 %i.i) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79   ; 4 uses
  %i.o = icmp ne ptr %i.n, null, !nosanitize !12
  %i.p = ptrtoint ptr %i.n to i64, !nosanitize !12 ; 2 uses
  %i.q = and i64 %i.p, 7, !nosanitize !12
  %i.r = icmp eq i64 %i.q, 0, !nosanitize !12
  %i.s = and i1 %i.o, %i.r, !nosanitize !12
  br i1 %i.s, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @503, i64 %i.p) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.t, align 8, !tbaa !28 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !28 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.r, %bb.g
  %.sroa.10.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.bu, %bb.r ]
  %.sroa.0136.0 = phi <2 x float> [ zeroinitializer, %bb.g ], [ %.sroa.0136.4.vec.insert, %bb.r ] ; 2 uses
  %.076 = phi ptr [ %i.g, %bb.g ], [ %i.bt, %bb.r ] ; 5 uses
  %.sroa.066.0 = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.br, %bb.r ]
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.bq, %bb.r ]
  %.0 = phi i32 [ 0, %bb.g ], [ %i.az, %bb.r ]
  %i.u = icmp ne ptr %.076, null, !nosanitize !12
  %i.v = ptrtoint ptr %.076 to i64, !nosanitize !12 ; 2 uses
  %i.w = and i64 %i.v, 7, !nosanitize !12
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !12
  %i.y = and i1 %i.u, %i.x, !nosanitize !12
  br i1 %i.y, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @504, i64 %i.v) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.076, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.076, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !79 ; 4 uses
  %i.ad = icmp ne ptr %i.ac, null, !nosanitize !12
  %i.ae = ptrtoint ptr %i.ac to i64, !nosanitize !12 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !12
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !12
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !12
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @505, i64 %i.ae) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.ai, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 8
  %i.aj = fsub <2 x float> %.sroa.055.0.copyload, %.sroa.058.0.copyload ; 4 uses
  %i.ak = fsub float %.sroa.256.0.copyload, %.sroa.6.0.copyload ; 3 uses
  %i.al = icmp ne ptr %i.aa, null, !nosanitize !12
  %i.am = ptrtoint ptr %i.aa to i64, !nosanitize !12 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !12
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !12
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !12
  br i1 %i.ap, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @506, i64 %i.am) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.n:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79 ; 4 uses
  %i.as = icmp ne ptr %i.ar, null, !nosanitize !12
  %i.at = ptrtoint ptr %i.ar to i64, !nosanitize !12 ; 2 uses
  %i.au = and i64 %i.at, 7, !nosanitize !12
  %i.av = icmp eq i64 %i.au, 0, !nosanitize !12
  %i.aw = and i1 %i.as, %i.av, !nosanitize !12
  br i1 %i.aw, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @507, i64 %i.at) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.p:                                             ; preds = %bb.n
  %i.ax = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0, i32 1), !nosanitize !12 ; 2 uses
  %i.ay = extractvalue { i32, i1 } %i.ax, 1, !nosanitize !12
  br i1 %i.ay, label %bb.q, label %bb.r, !prof !22, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @508, i64 2147483647, i64 1) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.r:                                             ; preds = %bb.p
  %i.az = extractvalue { i32, i1 } %i.ax, 0, !nosanitize !12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.bb, align 8
  %.sroa.0136.4.vec.extract = extractelement <2 x float> %.sroa.0136.0, i64 1
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 8
  %i.bc = fsub <2 x float> %.sroa.047.0.copyload, %.sroa.058.0.copyload ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %i.aj, %i.bc
  %i.bd = fsub float %.sroa.248.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %i.be = fsub float %i.ak, %i.bd
  %foldExtExtBinop385 = fadd <2 x float> %i.aj, %i.bc
  %i.bf = extractelement <2 x float> %foldExtExtBinop385, i64 0
  %i.bg = fmul float %i.be, %i.bf
  %i.bh = fadd float %.sroa.0136.4.vec.extract, %i.bg ; 4 uses
  %i.bi = fadd float %i.ak, %i.bd
  %i.bj = fsub <2 x float> %i.aj, %i.bc
  %i.bk = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bl = insertelement <2 x float> %i.bk, float %i.bi, i64 1
  %i.bm = fmul <2 x float> %i.bj, %i.bl
  %i.bn = shufflevector <2 x float> %.sroa.0136.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %.sroa.10.0, i64 0
  %i.bp = fadd <2 x float> %i.bo, %i.bm           ; 5 uses
  %i.bq = fadd float %.sroa.11.0, %i.ak           ; 2 uses
  %i.br = fadd <2 x float> %.sroa.066.0, %i.aj    ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0136.4.vec.insert = insertelement <2 x float> %i.bs, float %i.bh, i64 1
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.g
  %i.bu = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.h, !llvm.loop !338

bb.s:                                             ; preds = %bb.r
  %i.bv = sitofp i32 %i.az to float
  %i.bw = fmul <2 x float> %i.bp, %i.bp           ; 2 uses
  %i.bx = fmul float %i.bh, %i.bh
  %i.by = extractelement <2 x float> %i.bw, i64 1
  %i.bz = fadd float %i.by, %i.bx
  %i.ca = extractelement <2 x float> %i.bw, i64 0
  %i.cb = fadd float %i.ca, %i.bz
  %i.cc = tail call float @sqrtf(float noundef %i.cb) #15 ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.cc, i64 1
  %i.cf = fdiv <2 x float> splat (float 1.000000e+00), %i.ce ; 4 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 1 ; 2 uses
  %i.ch = extractelement <2 x float> %i.cf, i64 0
  %i.ci = fmul float %i.ch, %i.bq
  %i.cj = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.cj, %i.br
  %i.cl = fadd <2 x float> %.sroa.058.0.copyload, %i.ck ; 3 uses
  %i.cm = fadd float %.sroa.6.0.copyload, %i.ci   ; 2 uses
  %foldExtExtBinop387 = fmul <2 x float> %i.bp, %i.cf
  %i.cn = extractelement <2 x float> %foldExtExtBinop387, i64 1 ; 2 uses
  %.sroa.05.0.vec.insert.i115 = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.co = fmul float %i.bh, %i.cg                 ; 2 uses
  %.sroa.05.4.vec.insert.i117 = insertelement <2 x float> %.sroa.05.0.vec.insert.i115, float %i.co, i64 1
  %i.cp = fmul float %i.bu, %i.cg                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.cl, ptr %i.cq, align 8, !tbaa !28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.cm, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.211.8.vec.insert.i = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = extractelement <2 x float> %i.cl, i64 0
  %i.ct = fmul float %i.cs, %i.cn
  %i.cu = extractelement <2 x float> %i.cl, i64 1
  %i.cv = fmul float %i.cu, %i.co
  %i.cw = fadd float %i.ct, %i.cv
  %i.cx = fmul float %i.cm, %i.cp
  %i.cy = fadd float %i.cx, %i.cw
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %.sroa.211.8.vec.insert.i, float %i.cy, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i117, ptr %i.cr, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.211.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.da = fmul float %i.cc, 5.000000e-01
  store float %i.da, ptr %i.cz, align 4, !tbaa !98
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3HullBuilder_RetireFace(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #8 !func_sanitize !340 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !12
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @517, i64 %i.b) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !32     ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %b3QHList_Contains.exit.thread, label %b3QHList_Contains.exit

b3QHList_Contains.exit:                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %b3QHList_Contains.exit.thread, label %bb.d

bb.d:                                             ; preds = %b3QHList_Contains.exit
  %i.i = ptrtoint ptr %i.f to i64, !nosanitize !12 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !12
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !12
  br i1 %i.k, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @418, i64 %i.i) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.l, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  %i.n = icmp ne ptr %i.m, null, !nosanitize !12
  %i.o = ptrtoint ptr %i.m to i64, !nosanitize !12 ; 2 uses
  %i.p = and i64 %i.o, 7, !nosanitize !12
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !12
  %i.r = and i1 %i.n, %i.q, !nosanitize !12
  br i1 %i.r, label %b3QHList_Remove.exit, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @419, i64 %i.o) #14, !nosanitize !12
  unreachable, !nosanitize !12

b3QHList_Remove.exit:                             ; preds = %bb.f
  store ptr %i.f, ptr %i.m, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %b3QHList_Contains.exit.thread

b3QHList_Contains.exit.thread:                    ; preds = %b3QHList_Remove.exit, %b3QHList_Contains.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.s, align 8, !tbaa !61
  %i.t = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !12
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !12
  br i1 %i.v, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %b3QHList_Contains.exit.thread
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @518, i64 %i.t) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %b3QHList_Contains.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  store ptr %i.y, ptr %i.w, align 8, !tbaa !101
  store ptr %1, ptr %i.x, align 8, !tbaa !100
  ret void
}

declare void @b3Steiner(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, <2 x float>, float) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i1 @b3HullMap_find_first_empty(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #10 !func_sanitize !341 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64, !nosanitize !12  ; 2 uses
  %i.b = and i64 %i.a, 1, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @620, i64 %i.a) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  store i16 1, ptr %3, align 2, !tbaa !121
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !12
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !12
  %i.g = add i64 %1, 1
  br i1 %i.f, label %.lr.ph, label %bb.g, !prof !134, !nosanitize !12

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.j = and i64 %i.i, 7
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.split.split.split.us, label %bb.h, !prof !13, !nosanitize !12

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !111
  %.fr67 = freeze ptr %i.m                        ; 3 uses
  %i.n = ptrtoint ptr %.fr67 to i64, !nosanitize !12 ; 5 uses
  %.not = icmp eq ptr %.fr67, null, !nosanitize !12
  %i.o = load i64, ptr %i.h, align 8, !tbaa !109
  %i.p = and i64 %i.o, %i.g                       ; 4 uses
  store i64 %i.p, ptr %2, align 8, !tbaa !112
  %i.q = add i64 %i.p, 4611686018427387904
  %i.r = icmp sgt i64 %i.q, -1                    ; 2 uses
  %i.s = shl i64 %i.p, 1                          ; 3 uses
  br i1 %.not, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split.split.us, !prof !22

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i1 %i.r, %i.t, !nosanitize !12
  br i1 %i.u, label %.split49.us, label %.split.us, !prof !13, !nosanitize !12

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us
  %i.v = add i64 %i.s, %i.n, !nosanitize !12      ; 2 uses
  %i.w = icmp uge i64 %i.v, %i.n, !nosanitize !12
  %i.x = and i1 %i.r, %i.w, !nosanitize !12
  br i1 %i.x, label %.lr.ph65, label %.split.us, !prof !134, !nosanitize !12

bb.d:                                             ; preds = %bb.f
  %i.y = zext i16 %i.aq to i64
  %i.z = add i64 %.045.us.us5664, %i.y            ; 2 uses
  %i.aa = add i64 %i.z, %1
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !109
  %i.ac = and i64 %i.ab, %i.aa                    ; 4 uses
  store i64 %i.ac, ptr %2, align 8, !tbaa !112
  %i.ad = add i64 %i.ac, 4611686018427387904
  %i.ae = icmp sgt i64 %i.ad, -1
  %i.af = shl i64 %i.ac, 1
  %i.ag = add i64 %i.af, %i.n, !nosanitize !12    ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %i.n, !nosanitize !12
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !12
  br i1 %i.ai, label %.lr.ph65, label %.split.us, !prof !130, !nosanitize !12

.lr.ph65:                                         ; preds = %.lr.ph.split.split.split.us.split.split.us, %bb.d
  %i.aj = phi i16 [ %i.aq, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %.pn = phi i64 [ %i.ac, %bb.d ], [ %i.p, %.lr.ph.split.split.split.us.split.split.us ]
  %.045.us.us5664 = phi i64 [ %i.z, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.fr67, i64 %.pn ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64, !nosanitize !12 ; 2 uses
  %i.am = and i64 %i.al, 1, !nosanitize !12
  %i.an = icmp eq i64 %i.am, 0, !nosanitize !12
  br i1 %i.an, label %bb.e, label %.split49.us, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %.lr.ph65
  %i.ao = load i16, ptr %i.ak, align 2, !tbaa !121
  %i.ap = icmp eq i16 %i.ao, 0                    ; 2 uses
  br i1 %i.ap, label %.split52.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i16 %i.aj, 1                        ; 4 uses
  store i16 %i.aq, ptr %3, align 2, !tbaa !121
  %i.ar = icmp eq i16 %i.aq, 2047
  br i1 %i.ar, label %.split52.us, label %bb.d, !prof !113

bb.g:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @621, i64 %i.d) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @622, i64 %i.i) #14, !nosanitize !12
  unreachable, !nosanitize !12

.split.us:                                        ; preds = %bb.d, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.split.us
  %.us-phi54 = phi i64 [ %i.s, %.lr.ph.split.split.split.us.split.us ], [ %i.v, %.lr.ph.split.split.split.us.split.split.us ], [ %i.ag, %bb.d ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @623, i64 %i.n, i64 %.us-phi54) #14, !nosanitize !12
  unreachable, !nosanitize !12

.split49.us:                                      ; preds = %.lr.ph65, %.lr.ph.split.split.split.us.split.us
  %.us-phi55 = phi i64 [ 0, %.lr.ph.split.split.split.us.split.us ], [ %i.al, %.lr.ph65 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @624, i64 %.us-phi55) #14, !nosanitize !12
  unreachable, !nosanitize !12

.split52.us:                                      ; preds = %bb.f, %bb.e
  ret i1 %i.ap
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @b3HullMap_find_insert_location_in_chain(ptr noundef nonnull %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #10 !func_sanitize !342 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12
end_hunk_3
