Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/sensor?download=true
inline.NumInlined: 28
inline.NumDeleted: 17
begin_hunk_0_@b3SensorQueryCallback:bb.a
  br i1 %i.bo, label %bb.s, label %bb.t, !prof !73, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.bp = zext nneg i32 %i.n to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @143, i64 %i.bp, i64 1) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 4760
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 196
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !87
  %i.bu = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.a, i32 1), !nosanitize !9 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 0, !nosanitize !9
  %i.bw = extractvalue { i32, i1 } %i.bu, 1, !nosanitize !9
  br i1 %i.bw, label %bb.u, label %bb.v, !prof !73, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  %i.bx = and i64 %1, 4294967295
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @144, i64 %i.bx, i64 1) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.bz = load i16, ptr %i.by, align 4, !tbaa !87
  %i.ca = getelementptr i8, ptr %i.bl, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !nosanitize !9
  %i.cc = icmp eq i32 %i.cb, -1056584962, !nosanitize !9
  br i1 %i.cc, label %bb.w, label %bb.y, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr i8, ptr %i.bl, i64 -4
  %i.ce = load i32, ptr %i.cd, align 8, !nosanitize !9
  %i.cf = icmp eq i32 %i.ce, -38424242, !nosanitize !9
  br i1 %i.cf, label %bb.y, label %bb.x, !prof !10, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  %i.cg = ptrtoint ptr %i.bl to i64, !nosanitize !9
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @146, i64 %i.cg) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 4672
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !152
  %.sroa.510.0.insert.ext = zext i16 %i.bt to i64
  %.sroa.510.0.insert.shift = shl nuw i64 %.sroa.510.0.insert.ext, 48
  %.sroa.49.0.insert.ext = zext i16 %i.br to i64
  %.sroa.49.0.insert.shift = shl nuw nsw i64 %.sroa.49.0.insert.ext, 32 ; 2 uses
  %.sroa.08.0.insert.ext = zext i32 %i.bn to i64
  %i.cj = or disjoint i64 %.sroa.510.0.insert.shift, %.sroa.08.0.insert.ext
  %.sroa.08.0.insert.insert = or disjoint i64 %i.cj, %.sroa.49.0.insert.shift
  %.sroa.5.0.insert.ext = zext i16 %i.bz to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.07.0.insert.ext = zext i32 %i.bv to i64
  %i.ck = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.07.0.insert.ext
  %.sroa.07.0.insert.insert = or disjoint i64 %i.ck, %.sroa.49.0.insert.shift
  %i.cl = tail call zeroext i1 %i.bl(i64 %.sroa.08.0.insert.insert, i64 %.sroa.07.0.insert.insert, ptr noundef %i.ci) #11
  br i1 %i.cl, label %._crit_edge, label %b3IsConvex.exit

._crit_edge:                                      ; preds = %bb.y
  %.pre = load i32, ptr %i.at, align 4, !tbaa !106
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.p, %bb.q
  %i.cm = phi i32 [ %.pre, %._crit_edge ], [ %i.av, %bb.p ], [ %i.av, %bb.q ]
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %5, ptr noundef nonnull %i.p, i32 noundef %i.cm) #11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %.sroa.683.0.copyload = load <2 x float>, ptr %.sroa.683.0..sroa_idx, align 4 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.582.0.copyload = load <2 x float>, ptr %.sroa.582.0..sroa_idx, align 4 ; 10 uses
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.481.0.copyload = load float, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.080.0.copyload = load <2 x float>, ptr %i.co, align 8
  %.sroa.679.sroa.4.0..sroa.679.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.679.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.679.sroa.4.0..sroa.679.0..sroa_idx.sroa_idx, align 4 ; 5 uses
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.679.sroa.0.0.copyload = load <2 x float>, ptr %.sroa.679.0..sroa_idx, align 4 ; 7 uses
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cp = load i32, ptr %i.cn, align 8, !tbaa !150
  %.sroa.578.0.copyload = load float, ptr %.sroa.578.0..sroa_idx, align 8
  %i.cq = load <2 x float>, ptr %5, align 8
  %i.cr = call { ptr, i64 } @b3MakeShapeProxy(ptr noundef nonnull %i.y) #11 ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1      ; 2 uses
  %.sroa.445.sroa.0.0.extract.trunc.i = trunc i64 %i.ct to i32 ; 2 uses
  %.sroa.445.sroa.4.0.extract.shift.i = lshr i64 %i.ct, 32
  %.sroa.445.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.445.sroa.4.0.extract.shift.i to i32
  %i.cu = fsub <2 x float> %i.cq, %.sroa.080.0.copyload ; 4 uses
  %i.cv = fsub float %.sroa.578.0.copyload, %.sroa.481.0.copyload ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = insertelement <2 x float> %i.cw, float %i.cv, i64 1 ; 2 uses
  %i.cy = fmul <2 x float> %.sroa.582.0.copyload, %i.cx
  %i.cz = shufflevector <2 x float> %.sroa.683.0.copyload, <2 x float> %.sroa.582.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.da = fmul <2 x float> %i.cz, %i.cu
  %i.db = shufflevector <2 x float> %.sroa.582.0.copyload, <2 x float> %.sroa.683.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.dc = fmul <2 x float> %i.db, %i.cu
  %i.dd = insertelement <2 x float> %i.cw, float %i.cv, i64 0 ; 2 uses
  %i.de = fmul <2 x float> %.sroa.582.0.copyload, %i.dd
  %i.df = fsub <2 x float> %i.cy, %i.dc
  %i.dg = fsub <2 x float> %i.da, %i.de
  %i.dh = shufflevector <2 x float> %.sroa.683.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.di = fmul <2 x float> %i.dh, %i.dd
  %i.dj = fmul <2 x float> %i.dh, %i.cx
  %i.dk = fsub <2 x float> %i.df, %i.di           ; 2 uses
  %i.dl = fsub <2 x float> %i.dg, %i.dj           ; 2 uses
  %i.dm = fmul <2 x float> %i.db, %i.dk
  %i.dn = fmul <2 x float> %i.cz, %i.dl
  %i.do = fsub <2 x float> %i.dm, %i.dn
  %foldExtExtBinop = fmul <2 x float> %.sroa.582.0.copyload, %i.dl
  %foldExtExtBinop135 = fmul <2 x float> %.sroa.582.0.copyload, %i.dk
  %shift = shufflevector <2 x float> %foldExtExtBinop135, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.dp = extractelement <2 x float> %foldExtExtBinop137, i64 0
  %i.dq = fmul <2 x float> %i.do, splat (float 2.000000e+00)
  %i.dr = fadd <2 x float> %i.cu, %i.dq
  %i.ds = fmul float %i.dp, 2.000000e+00
  %i.dt = fadd float %i.cv, %i.ds
  %shift153 = shufflevector <2 x float> %.sroa.679.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop154 = fmul <2 x float> %.sroa.683.0.copyload, %shift153
  %i.du = extractelement <2 x float> %foldExtExtBinop154, i64 0
  %i.dv = shufflevector <2 x float> %.sroa.679.sroa.4.0.copyload, <2 x float> %.sroa.679.sroa.0.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.dw = fmul <2 x float> %.sroa.582.0.copyload, %i.dv
  %i.dx = fmul <2 x float> %i.cz, %.sroa.679.sroa.0.0.copyload
  %i.dy = fsub <2 x float> %i.dw, %i.dx
  %i.dz = shufflevector <2 x float> %.sroa.679.sroa.0.0.copyload, <2 x float> %.sroa.679.sroa.4.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ea = fmul <2 x float> %i.dh, %i.dz
  %i.eb = fadd <2 x float> %i.ea, %i.dy
  %i.ec = shufflevector <2 x float> %.sroa.679.sroa.4.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ed = fmul <2 x float> %i.db, %i.ec
  %i.ee = fsub <2 x float> %i.eb, %i.ed           ; 5 uses
  %i.ef = shufflevector <2 x float> %.sroa.582.0.copyload, <2 x float> %.sroa.683.0.copyload, <4 x i32> <i32 1, i32 3, i32 0, i32 3>
  %i.eg = shufflevector <2 x float> %.sroa.679.sroa.4.0.copyload, <2 x float> %.sroa.679.sroa.0.0.copyload, <4 x i32> <i32 0, i32 2, i32 1, i32 1>
  %i.eh = fmul <4 x float> %i.ef, %i.eg           ; 4 uses
  %i.ei = extractelement <4 x float> %i.eh, i64 0
  %i.ej = fsub float %i.du, %i.ei
  %i.ek = extractelement <4 x float> %i.eh, i64 1
  %i.el = fadd float %i.ek, %i.ej
  %i.em = extractelement <4 x float> %i.eh, i64 2
  %i.en = fsub float %i.el, %i.em                 ; 4 uses
  %foldExtExtBinop139 = fmul <2 x float> %.sroa.582.0.copyload, %.sroa.679.sroa.0.0.copyload
  %foldExtExtBinop141 = fmul <2 x float> %.sroa.582.0.copyload, %.sroa.679.sroa.0.0.copyload
  %shift143 = shufflevector <2 x float> %foldExtExtBinop141, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144 = fadd <2 x float> %foldExtExtBinop139, %shift143
  %foldExtExtBinop146 = fmul <2 x float> %.sroa.683.0.copyload, %.sroa.679.sroa.4.0.copyload
  %foldExtExtBinop148 = fadd <2 x float> %foldExtExtBinop146, %foldExtExtBinop144
  %i.eo = extractelement <2 x float> %foldExtExtBinop148, i64 0
  %i.ep = extractelement <4 x float> %i.eh, i64 3
  %i.eq = fadd float %i.ep, %i.eo                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.er = call noundef range(i32 -2147483648, 129) i32 @llvm.smin.i32(i32 %.sroa.445.sroa.0.0.extract.trunc.i, i32 128) ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.er, ptr %i.es, align 8, !tbaa !155
  %i.et = icmp sgt i32 %.sroa.445.sroa.0.0.extract.trunc.i, 0
  br i1 %i.et, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.eu = ptrtoint ptr %3 to i64, !nosanitize !9  ; 3 uses
  %i.ev = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.ew = icmp ne ptr %i.cs, null
  %wide.trip.count.i = zext nneg i32 %i.er to i64
  %i.ex = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = extractelement <2 x float> %i.ee, i64 0
  %i.fa = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ae ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.fc = mul nuw nsw i64 %indvars.iv.i, 12       ; 2 uses
  %i.fd = add i64 %i.fc, %i.eu, !nosanitize !9    ; 2 uses
  %.not.i67 = icmp ult i64 %i.fd, %i.eu, !nosanitize !9
  br i1 %.not.i67, label %bb.ab, label %bb.ac, !prof !73, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @150, i64 %i.eu, i64 %i.fd) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.fe = add i64 %i.fc, %i.ev, !nosanitize !9    ; 3 uses
  %i.ff = icmp eq i64 %i.fe, 0
  %i.fg = xor i1 %i.ew, %i.ff
  %i.fh = icmp uge i64 %i.fe, %i.ev, !nosanitize !9
  %i.fi = and i1 %i.fh, %i.fg, !nosanitize !9
  br i1 %i.fi, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @151, i64 %i.ev, i64 %i.fe) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.fj = getelementptr inbounds nuw [12 x i8], ptr %i.cs, i64 %indvars.iv.i ; 2 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.fj, align 4 ; 5 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.0.4.vec.extract8.i.i27.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i28.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0
  %i.fk = fmul float %i.fa, %.sroa.0.0.vec.extract.i.i28.i
  %i.fl = fmul float %i.en, %.sroa.22.0.copyload.i
  %i.fm = fmul float %i.ez, %.sroa.22.0.copyload.i
  %i.fn = fsub float %i.fk, %i.fl
  %i.fo = fmul float %i.en, %.sroa.0.4.vec.extract8.i.i27.i
  %i.fp = fmul <2 x float> %i.ee, %.sroa.01.0.copyload.i
  %i.fq = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fm, i64 1
  %i.fs = fsub <2 x float> %i.fr, %i.fp
  %i.ft = fmul float %i.eq, %.sroa.0.4.vec.extract8.i.i27.i
  %i.fu = fadd float %i.ft, %i.fn                 ; 2 uses
  %i.fv = shufflevector <2 x float> %.sroa.01.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fw = insertelement <2 x float> %i.fv, float %.sroa.22.0.copyload.i, i64 0
  %i.fx = fmul <2 x float> %i.ey, %i.fw
  %i.fy = fadd <2 x float> %i.fx, %i.fs           ; 3 uses
  %i.fz = fmul float %i.fa, %i.fu
  %i.ga = fmul <2 x float> %i.ee, %i.fy
  %i.gb = extractelement <2 x float> %i.fy, i64 0
  %i.gc = fmul float %i.en, %i.gb
  %i.gd = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.gc, i64 1
  %i.gf = fsub <2 x float> %i.ga, %i.ge
  %i.gg = fmul float %i.en, %i.fu
  %shift150 = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop151 = fmul <2 x float> %i.ee, %shift150
  %i.gh = extractelement <2 x float> %foldExtExtBinop151, i64 0
  %i.gi = fsub float %i.gg, %i.gh
  %i.gj = fmul <2 x float> %i.gf, splat (float 2.000000e+00)
  %i.gk = fadd <2 x float> %.sroa.01.0.copyload.i, %i.gj
  %i.gl = fmul float %i.gi, 2.000000e+00
  %i.gm = fadd float %.sroa.22.0.copyload.i, %i.gl
  %i.gn = fadd <2 x float> %i.dr, %i.gk
  %i.go = fadd float %i.dt, %i.gm
  store <2 x float> %i.gn, ptr %i.fb, align 4, !tbaa !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store float %i.go, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !115
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aa, !llvm.loop !148

._crit_edge.i:                                    ; preds = %bb.ae, %bb.z
  store ptr %3, ptr %4, align 8, !tbaa !156
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.445.sroa.4.0.extract.trunc.i, ptr %i.gp, align 4, !tbaa !157
  switch i32 %i.cp, label %b3OverlapSensor.exit.thread [
    i32 0, label %b3OverlapSensor.exit
    i32 1, label %.split92
    i32 2, label %.split91
    i32 3, label %.split90
    i32 4, label %.split89
    i32 5, label %.split88
  ]

b3OverlapSensor.exit.thread:                      ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %b3IsConvex.exit

.split92:                                         ; preds = %._crit_edge.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !158
  %i.gs = call zeroext i1 @b3OverlapCompound(ptr noundef %i.gr, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.gs, label %bb.af, label %b3IsConvex.exit

.split91:                                         ; preds = %._crit_edge.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !158
  %i.gv = call zeroext i1 @b3OverlapHeightField(ptr noundef %i.gu, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.gv, label %bb.af, label %b3IsConvex.exit

.split90:                                         ; preds = %._crit_edge.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !158
  %i.gy = call zeroext i1 @b3OverlapHull(ptr noundef %i.gx, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.gy, label %bb.af, label %b3IsConvex.exit

.split89:                                         ; preds = %._crit_edge.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.ha = call zeroext i1 @b3OverlapMesh(ptr noundef nonnull %i.gz, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.ha, label %bb.af, label %b3IsConvex.exit

.split88:                                         ; preds = %._crit_edge.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.hc = call zeroext i1 @b3OverlapSphere(ptr noundef nonnull %i.hb, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.hc, label %bb.af, label %b3IsConvex.exit

b3OverlapSensor.exit:                             ; preds = %._crit_edge.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.he = call zeroext i1 @b3OverlapCapsule(ptr noundef nonnull %i.hd, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.he, label %bb.af, label %b3IsConvex.exit

bb.af:                                            ; preds = %b3OverlapSensor.exit, %.split88, %.split89, %.split90, %.split91, %.split92
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !113 ; 5 uses
  %i.hh = icmp ne ptr %i.hg, null, !nosanitize !9
  %i.hi = ptrtoint ptr %i.hg to i64, !nosanitize !9 ; 2 uses
  %i.hj = and i64 %i.hi, 7, !nosanitize !9
  %i.hk = icmp eq i64 %i.hj, 0, !nosanitize !9
  %i.hl = and i1 %i.hh, %i.hk, !nosanitize !9
  br i1 %i.hl, label %bb.ah, label %bb.ag, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @148, i64 %i.hi) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 44
  %i.hp = call fastcc ptr @b3EmplaceHelper(ptr noundef %i.hm, ptr noundef %i.hn, ptr noundef %i.ho) ; 4 uses
  %i.hq = icmp ne ptr %i.hp, null, !nosanitize !9
  %i.hr = ptrtoint ptr %i.hp to i64, !nosanitize !9 ; 2 uses
  %i.hs = and i64 %i.hr, 3, !nosanitize !9
  %i.ht = icmp eq i64 %i.hs, 0, !nosanitize !9
  %i.hu = and i1 %i.hq, %i.ht, !nosanitize !9
  br i1 %i.hu, label %bb.aj, label %bb.ai, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @149, i64 %i.hr) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  store i32 %i.a, ptr %i.hp, align 4, !tbaa !93
  %i.hv = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hx = load i16, ptr %i.hv, align 4, !tbaa !87
  store i16 %i.hx, ptr %i.hw, align 4, !tbaa !94
  br label %b3IsConvex.exit

b3IsConvex.exit:                                  ; preds = %bb.aj, %b3OverlapSensor.exit, %b3OverlapSensor.exit.thread, %.split88, %.split89, %.split90, %.split91, %.split92, %.split, %bb.l, %bb.m, %bb.n, %b3ShouldShapesCollide.exit, %bb.y, %bb.e
  ret i1 true
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @b3CompareVisitors(ptr noundef %0, ptr noundef %1) #0 !func_sanitize !159 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @161, i64 %i.b) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %1, null, !nosanitize !9
  %i.g = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !9
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !9
  %i.j = and i1 %i.f, %i.i, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @162, i64 %i.g) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr %0, align 4, !tbaa !93
  %i.l = load i32, ptr %1, align 4, !tbaa !93
  %i.m = icmp slt i32 %i.k, %i.l
  %. = select i1 %i.m, i32 -1, i32 1
  ret i32 %.
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_function_type_mismatch_abort(ptr, i64) local_unnamed_addr #2

declare void @b3GetBodyTransform(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @b3EmplaceHelper(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #8 !func_sanitize !160 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 3, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @152, i64 %i.a) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 3, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  br i1 %i.f, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

end_hunk_0
