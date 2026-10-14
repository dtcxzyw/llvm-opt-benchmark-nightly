Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh?download=true
inline.NumInlined: 435
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3IdentifyEdges:bb.a

bb.cl:                                            ; preds = %bb.cj
  %i.og = getelementptr inbounds i8, ptr %.0.i280, i64 %i.np ; 4 uses
  %i.oh = add i64 %i.np, %i.hh, !nosanitize !9    ; 3 uses
  %i.oi = icmp eq i64 %i.oh, 0
  %i.oj = xor i1 %i.hi, %i.oi
  %i.ok = icmp uge i64 %i.oh, %i.hh, !nosanitize !9
  %i.ol = xor i1 %i.nw, %i.ok
  %i.om = and i1 %i.oj, %i.ol, !nosanitize !9
  br i1 %i.om, label %bb.cn, label %bb.cm, !prof !10, !nosanitize !9

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @593, i64 %i.hh, i64 %i.oh) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cn:                                            ; preds = %bb.cl
  %i.on = ptrtoint ptr %i.nq to i64, !nosanitize !9 ; 2 uses
  %i.oo = and i64 %i.on, 3, !nosanitize !9
  %i.op = icmp eq i64 %i.oo, 0, !nosanitize !9
  %i.oq = and i1 %i.hg, %i.op
  br i1 %i.oq, label %bb.cp, label %bb.co, !prof !10, !nosanitize !9

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @594, i64 %i.on) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cp:                                            ; preds = %bb.cn
  %i.or = getelementptr inbounds nuw i8, ptr %i.mw, i64 19 ; 3 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !228
  switch i8 %i.os, label %bb.ct [
    i8 0, label %bb.cq
    i8 1, label %bb.cr
    i8 2, label %bb.cs
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !60
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  %i.ov = load i32, ptr %i.nq, align 4, !tbaa !58
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !59
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cp, %bb.cs, %bb.cr, %bb.cq
  %.0218 = phi i32 [ -1, %bb.cp ], [ %i.ou, %bb.cq ], [ %i.ov, %bb.cr ], [ %i.ox, %bb.cs ] ; 2 uses
  %i.oy = ptrtoint ptr %i.ne to i64, !nosanitize !9 ; 2 uses
  %i.oz = and i64 %i.oy, 3, !nosanitize !9
  %i.pa = icmp eq i64 %i.oz, 0, !nosanitize !9
  br i1 %i.pa, label %bb.cv, label %bb.cu, !prof !10, !nosanitize !9

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @595, i64 %i.oy) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cv:                                            ; preds = %bb.ct
  %i.pb = load i32, ptr %i.ne, align 4, !tbaa !58 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !59 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !60 ; 2 uses
  %i.pg = sext i32 %i.pb to i64                   ; 2 uses
  %i.ph = getelementptr inbounds [12 x i8], ptr %.0.i279, i64 %i.pg ; 3 uses
  %i.pi = mul nsw i64 %i.pg, 12
  %i.pj = add i64 %i.pi, %i.hj, !nosanitize !9    ; 3 uses
  %i.pk = icmp eq i64 %i.pj, 0
  %i.pl = xor i1 %i.hk, %i.pk
  %i.pm = icmp uge i64 %i.pj, %i.hj, !nosanitize !9
  %i.pn = icmp slt i32 %i.pb, 0
  %i.po = xor i1 %i.pn, %i.pm
  %i.pp = and i1 %i.pl, %i.po, !nosanitize !9
  br i1 %i.pp, label %bb.cx, label %bb.cw, !prof !10, !nosanitize !9

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @596, i64 %i.hj, i64 %i.pj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cx:                                            ; preds = %bb.cv
  %i.pq = ptrtoint ptr %i.ph to i64, !nosanitize !9 ; 2 uses
  %i.pr = and i64 %i.pq, 3, !nosanitize !9
  %i.ps = icmp eq i64 %i.pr, 0, !nosanitize !9
  %i.pt = and i1 %i.hk, %i.ps
  br i1 %i.pt, label %bb.cz, label %bb.cy, !prof !10, !nosanitize !9

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @597, i64 %i.pq) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cz:                                            ; preds = %bb.cx
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.ph, align 4, !tbaa !22 ; 3 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %.sroa.426.0.copyload = load float, ptr %.sroa.426.0..sroa_idx, align 4, !tbaa !22 ; 2 uses
  %i.pu = sext i32 %i.pd to i64                   ; 2 uses
  %i.pv = getelementptr inbounds [12 x i8], ptr %.0.i279, i64 %i.pu ; 3 uses
  %i.pw = mul nsw i64 %i.pu, 12
  %i.px = add i64 %i.pw, %i.hj, !nosanitize !9    ; 3 uses
  %i.py = icmp ne i64 %i.px, 0
  %i.pz = icmp uge i64 %i.px, %i.hj, !nosanitize !9
  %i.qa = icmp slt i32 %i.pd, 0
  %i.qb = xor i1 %i.qa, %i.pz
  %i.qc = and i1 %i.py, %i.qb, !nosanitize !9
  br i1 %i.qc, label %bb.db, label %bb.da, !prof !10, !nosanitize !9

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @598, i64 %i.hj, i64 %i.px) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.db:                                            ; preds = %bb.cz
  %i.qd = ptrtoint ptr %i.pv to i64, !nosanitize !9 ; 2 uses
  %i.qe = and i64 %i.qd, 3, !nosanitize !9
  %i.qf = icmp eq i64 %i.qe, 0, !nosanitize !9
  br i1 %i.qf, label %bb.dd, label %bb.dc, !prof !10, !nosanitize !9

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @599, i64 %i.qd) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dd:                                            ; preds = %bb.db
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.pv, align 4, !tbaa !22
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %.sroa.424.0.copyload = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !22
  %i.qg = sext i32 %i.pf to i64                   ; 2 uses
  %i.qh = getelementptr inbounds [12 x i8], ptr %.0.i279, i64 %i.qg ; 3 uses
  %i.qi = mul nsw i64 %i.qg, 12
  %i.qj = add i64 %i.qi, %i.hj, !nosanitize !9    ; 3 uses
  %i.qk = icmp ne i64 %i.qj, 0
  %i.ql = icmp uge i64 %i.qj, %i.hj, !nosanitize !9
  %i.qm = icmp slt i32 %i.pf, 0
  %i.qn = xor i1 %i.qm, %i.ql
  %i.qo = and i1 %i.qk, %i.qn, !nosanitize !9
  br i1 %i.qo, label %bb.df, label %bb.de, !prof !10, !nosanitize !9

bb.de:                                            ; preds = %bb.dd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @600, i64 %i.hj, i64 %i.qj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.df:                                            ; preds = %bb.dd
  %i.qp = ptrtoint ptr %i.qh to i64, !nosanitize !9 ; 2 uses
  %i.qq = and i64 %i.qp, 3, !nosanitize !9
  %i.qr = icmp eq i64 %i.qq, 0, !nosanitize !9
  br i1 %i.qr, label %bb.dh, label %bb.dg, !prof !10, !nosanitize !9

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @601, i64 %i.qp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dh:                                            ; preds = %bb.df
  %.sroa.021.0.copyload = load <2 x float>, ptr %i.qh, align 4, !tbaa !22
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %.sroa.422.0.copyload = load float, ptr %.sroa.422.0..sroa_idx, align 4, !tbaa !22
  %i.qs = sext i32 %.0218 to i64                  ; 2 uses
  %i.qt = getelementptr inbounds [12 x i8], ptr %.0.i279, i64 %i.qs ; 3 uses
  %i.qu = mul nsw i64 %i.qs, 12
  %i.qv = add i64 %i.qu, %i.hj, !nosanitize !9    ; 3 uses
  %i.qw = icmp ne i64 %i.qv, 0
  %i.qx = icmp uge i64 %i.qv, %i.hj, !nosanitize !9
  %i.qy = icmp slt i32 %.0218, 0
  %i.qz = xor i1 %i.qy, %i.qx
  %i.ra = and i1 %i.qw, %i.qz, !nosanitize !9
  br i1 %i.ra, label %bb.dj, label %bb.di, !prof !10, !nosanitize !9

bb.di:                                            ; preds = %bb.dh
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @602, i64 %i.hj, i64 %i.qv) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dj:                                            ; preds = %bb.dh
  %i.rb = ptrtoint ptr %i.qt to i64, !nosanitize !9 ; 2 uses
  %i.rc = and i64 %i.rb, 3, !nosanitize !9
  %i.rd = icmp eq i64 %i.rc, 0, !nosanitize !9
  br i1 %i.rd, label %bb.dl, label %bb.dk, !prof !10, !nosanitize !9

bb.dk:                                            ; preds = %bb.dj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @603, i64 %i.rb) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dl:                                            ; preds = %bb.dj
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.qt, align 4, !tbaa !22 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %.sroa.420.0.copyload = load float, ptr %.sroa.420.0..sroa_idx, align 4, !tbaa !22
  %i.re = shufflevector <2 x float> %.sroa.025.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.rf = insertelement <4 x float> poison, float %.sroa.422.0.copyload, i64 0
  %i.rg = insertelement <4 x float> %i.rf, float %.sroa.424.0.copyload, i64 1
  %i.rh = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ri = insertelement <4 x float> poison, float %.sroa.426.0.copyload, i64 0
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rk = fsub <4 x float> %i.rh, %i.rj
  %i.rl = shufflevector <2 x float> %.sroa.021.0.copyload, <2 x float> %.sroa.023.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  %i.rm = fsub <4 x float> %i.rl, %i.re           ; 5 uses
  %i.rn = fmul <4 x float> %i.rm, %i.rk           ; 4 uses
  %shift7948 = shufflevector <4 x float> %i.rn, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop7949 = fsub <4 x float> %i.rn, %shift7948
  %i.ro = extractelement <4 x float> %foldExtExtBinop7949, i64 1
  %shift7951 = shufflevector <4 x float> %i.rn, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop7952 = fsub <4 x float> %i.rn, %shift7951
  %i.rp = extractelement <4 x float> %foldExtExtBinop7952, i64 0
  %shift7957 = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop7955 = fmul <4 x float> %shift7957, %i.rm
  %4 = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %shift7960 = fmul <4 x float> %4, %5
  %foldExtExtBinop7961 = fsub <4 x float> %shift7960, %foldExtExtBinop7955
  %i.rq = extractelement <4 x float> %foldExtExtBinop7961, i64 0
  %foldExtExtBinop7963 = fsub <2 x float> %.sroa.019.0.copyload, %.sroa.025.0.copyload
  %i.rr = extractelement <2 x float> %foldExtExtBinop7963, i64 0
  %foldExtExtBinop7965 = fsub <2 x float> %.sroa.019.0.copyload, %.sroa.025.0.copyload
  %i.rs = extractelement <2 x float> %foldExtExtBinop7965, i64 1
  %i.rt = fsub float %.sroa.420.0.copyload, %.sroa.426.0.copyload
  %i.ru = fmul float %i.ro, %i.rr
  %i.rv = fmul float %i.rp, %i.rs
  %i.rw = fadd float %i.ru, %i.rv
  %i.rx = fmul float %i.rq, %i.rt
  %i.ry = fadd float %i.rx, %i.rw                 ; 2 uses
  %i.rz = getelementptr inbounds [12 x i8], ptr %i.ao, i64 %i.nd ; 3 uses
  %i.sa = add i64 %i.nf, %i.hl, !nosanitize !9    ; 3 uses
  %i.sb = icmp eq i64 %i.sa, 0
  %i.sc = xor i1 %i.hm, %i.sb
  %i.sd = icmp uge i64 %i.sa, %i.hl, !nosanitize !9
  %i.se = xor i1 %i.nk, %i.sd
  %i.sf = and i1 %i.sc, %i.se, !nosanitize !9
  br i1 %i.sf, label %bb.dn, label %bb.dm, !prof !10, !nosanitize !9

bb.dm:                                            ; preds = %bb.dl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @604, i64 %i.hl, i64 %i.sa) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dn:                                            ; preds = %bb.dl
  %i.sg = ptrtoint ptr %i.rz to i64, !nosanitize !9 ; 2 uses
  %i.sh = and i64 %i.sg, 3, !nosanitize !9
  %i.si = icmp eq i64 %i.sh, 0, !nosanitize !9
  %i.sj = and i1 %i.hm, %i.si
  br i1 %i.sj, label %bb.dp, label %bb.do, !prof !10, !nosanitize !9

bb.do:                                            ; preds = %bb.dn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @605, i64 %i.sg) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dp:                                            ; preds = %bb.dn
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.rz, align 4, !tbaa !22
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %.sroa.46.0.copyload = load float, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !22
  %i.sk = getelementptr inbounds [12 x i8], ptr %i.ao, i64 %i.np ; 3 uses
  %i.sl = add i64 %i.nr, %i.hl, !nosanitize !9    ; 3 uses
  %i.sm = icmp ne i64 %i.sl, 0
  %i.sn = icmp uge i64 %i.sl, %i.hl, !nosanitize !9
  %i.so = xor i1 %i.nw, %i.sn
  %i.sp = and i1 %i.sm, %i.so, !nosanitize !9
  br i1 %i.sp, label %bb.dr, label %bb.dq, !prof !10, !nosanitize !9

bb.dq:                                            ; preds = %bb.dp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @606, i64 %i.hl, i64 %i.sl) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dr:                                            ; preds = %bb.dp
  %i.sq = ptrtoint ptr %i.sk to i64, !nosanitize !9 ; 2 uses
  %i.sr = and i64 %i.sq, 3, !nosanitize !9
  %i.ss = icmp eq i64 %i.sr, 0, !nosanitize !9
  br i1 %i.ss, label %bb.dt, label %bb.ds, !prof !10, !nosanitize !9

bb.ds:                                            ; preds = %bb.dr
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @607, i64 %i.sq) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dt:                                            ; preds = %bb.dr
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.sk, align 4, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  %i.st = fmul <2 x float> %.sroa.05.0.copyload, %.sroa.04.0.copyload ; 2 uses
  %shift7967 = shufflevector <2 x float> %i.st, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop7968 = fadd <2 x float> %i.st, %shift7967
  %i.su = extractelement <2 x float> %foldExtExtBinop7968, i64 0
  %i.sv = fmul float %.sroa.46.0.copyload, %.sroa.4.0.copyload
  %i.sw = fadd float %i.sv, %i.su
  %i.sx = fcmp ogt float %i.ry, 0.000000e+00
  %i.sy = fcmp ogt float %i.sw, 9.962000e-01      ; 2 uses
  %or.cond = select i1 %i.sx, i1 true, i1 %i.sy
  br i1 %or.cond, label %bb.du, label %bb.ef

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @__const.b3IdentifyEdges.edgeFlags, i64 12, i1 false)
  %i.sz = getelementptr inbounds nuw i8, ptr %i.mw, i64 18
  %i.ta = load i8, ptr %i.sz, align 2, !tbaa !227 ; 2 uses
  %i.tb = zext i8 %i.ta to i64, !nosanitize !9    ; 3 uses
  %i.tc = icmp ult i8 %i.ta, 3
  br i1 %i.tc, label %bb.dw, label %bb.dv, !prof !10, !nosanitize !9

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @609, i64 %i.tb) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dw:                                            ; preds = %bb.du
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.tb
  %i.te = shl nuw nsw i64 %i.tb, 2
  %i.tf = add i64 %i.te, %i.hn, !nosanitize !9    ; 2 uses
  %.not262 = icmp ult i64 %i.tf, %i.hn, !nosanitize !9
  br i1 %.not262, label %bb.dx, label %bb.dy, !prof !17, !nosanitize !9

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @610, i64 %i.hn, i64 %i.tf) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dy:                                            ; preds = %bb.dw
  br i1 %i.hi, label %bb.ea, label %bb.dz, !prof !10, !nosanitize !9

bb.dz:                                            ; preds = %bb.dy
  %i.tg = ptrtoint ptr %i.nz to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @611, i64 %i.tg) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ea:                                            ; preds = %bb.dy
  %i.th = load i32, ptr %i.td, align 4, !tbaa !23
  %i.ti = load i8, ptr %i.nz, align 1, !tbaa !24
  %i.tj = trunc i32 %i.th to i8
  %i.tk = or i8 %i.ti, %i.tj
  store i8 %i.tk, ptr %i.nz, align 1, !tbaa !24
  %i.tl = load i8, ptr %i.or, align 1, !tbaa !228 ; 2 uses
  %i.tm = zext i8 %i.tl to i64, !nosanitize !9    ; 3 uses
  %i.tn = icmp ult i8 %i.tl, 3
  br i1 %i.tn, label %bb.ec, label %bb.eb, !prof !10, !nosanitize !9

bb.eb:                                            ; preds = %bb.ea
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @612, i64 %i.tm) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ec:                                            ; preds = %bb.ea
  %i.to = shl nuw nsw i64 %i.tm, 2
  %i.tp = add i64 %i.to, %i.hn, !nosanitize !9    ; 2 uses
  %.not263 = icmp ult i64 %i.tp, %i.hn, !nosanitize !9
  br i1 %.not263, label %bb.ed, label %bb.ee, !prof !17, !nosanitize !9

bb.ed:                                            ; preds = %bb.ec
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @613, i64 %i.hn, i64 %i.tp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ee:                                            ; preds = %bb.ec
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.tm
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !23
  %i.ts = load i8, ptr %i.og, align 1, !tbaa !24
  %i.tt = trunc i32 %i.tr to i8
  %i.tu = or i8 %i.ts, %i.tt
  store i8 %i.tu, ptr %i.og, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ef

bb.ef:                                            ; preds = %bb.dt, %bb.ee
  %i.tv = fcmp olt float %i.ry, 0.000000e+00
  %or.cond277 = select i1 %i.tv, i1 true, i1 %i.sy
  br i1 %or.cond277, label %bb.eg, label %bb.er

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) @__const.b3IdentifyEdges.edgeFlags.7, i64 12, i1 false)
  %i.tw = getelementptr inbounds nuw i8, ptr %i.mw, i64 18
  %i.tx = load i8, ptr %i.tw, align 2, !tbaa !227 ; 2 uses
  %i.ty = zext i8 %i.tx to i64, !nosanitize !9    ; 3 uses
  %i.tz = icmp ult i8 %i.tx, 3
  br i1 %i.tz, label %bb.ei, label %bb.eh, !prof !10, !nosanitize !9

bb.eh:                                            ; preds = %bb.eg
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @614, i64 %i.ty) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ei:                                            ; preds = %bb.eg
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ty
  %i.ub = shl nuw nsw i64 %i.ty, 2
  %i.uc = add i64 %i.ub, %i.ho, !nosanitize !9    ; 2 uses
  %.not266 = icmp ult i64 %i.uc, %i.ho, !nosanitize !9
  br i1 %.not266, label %bb.ej, label %bb.ek, !prof !17, !nosanitize !9

bb.ej:                                            ; preds = %bb.ei
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @615, i64 %i.ho, i64 %i.uc) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ek:                                            ; preds = %bb.ei
  br i1 %i.hi, label %bb.em, label %bb.el, !prof !10, !nosanitize !9

bb.el:                                            ; preds = %bb.ek
  %i.ud = ptrtoint ptr %i.nz to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @616, i64 %i.ud) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.em:                                            ; preds = %bb.ek
  %i.ue = load i32, ptr %i.ua, align 4, !tbaa !23
  %i.uf = load i8, ptr %i.nz, align 1, !tbaa !24
  %i.ug = trunc i32 %i.ue to i8
  %i.uh = or i8 %i.uf, %i.ug
  store i8 %i.uh, ptr %i.nz, align 1, !tbaa !24
  %i.ui = load i8, ptr %i.or, align 1, !tbaa !228 ; 2 uses
  %i.uj = zext i8 %i.ui to i64, !nosanitize !9    ; 3 uses
  %i.uk = icmp ult i8 %i.ui, 3
  br i1 %i.uk, label %bb.eo, label %bb.en, !prof !10, !nosanitize !9

bb.en:                                            ; preds = %bb.em
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @617, i64 %i.uj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.eo:                                            ; preds = %bb.em
  %i.ul = shl nuw nsw i64 %i.uj, 2
  %i.um = add i64 %i.ul, %i.ho, !nosanitize !9    ; 2 uses
  %.not267 = icmp ult i64 %i.um, %i.ho, !nosanitize !9
  br i1 %.not267, label %bb.ep, label %bb.eq, !prof !17, !nosanitize !9
end_hunk_0
