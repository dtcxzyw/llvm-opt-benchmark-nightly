Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/dynamic_tree?download=true
inline.NumInlined: 171
inline.NumDeleted: 36
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3DynamicTree_QueryClosest:bb.a
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @75, i64 %i.cx) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !24
  %i.da = call float %5(float noundef %.0447, i32 noundef %i.bi, i64 noundef %i.cz, ptr noundef %6) #12 ; 2 uses
  %i.db = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.4.0445, i32 1), !nosanitize !9 ; 2 uses
  %i.dc = extractvalue { i32, i1 } %i.db, 1, !nosanitize !9
  br i1 %i.dc, label %bb.ad, label %bb.ae, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  %i.dd = zext nneg i32 %.sroa.4.0445 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @76, i64 %i.dd, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.de = fcmp olt float %i.da, %.0447
  %.1 = select i1 %i.de, float %i.da, float %.0447
  %i.df = extractvalue { i32, i1 } %i.db, 0, !nosanitize !9
  br label %bb.as

bb.af:                                            ; preds = %b3IsLeaf.exit
  %.not69 = icmp eq i32 %.049446, 1024
  br i1 %.not69, label %bb.as, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !24 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24 ; 4 uses
  %i.dk = sext i32 %i.dh to i64                   ; 2 uses
  %i.dl = mul nsw i64 %i.dk, 48
  %i.dm = add i64 %i.dl, %i.bo, !nosanitize !9    ; 3 uses
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp uge i64 %i.dm, %i.bo, !nosanitize !9
  %i.dp = icmp slt i32 %i.dh, 0
  %i.dq = xor i1 %i.dp, %i.do
  %i.dr = and i1 %i.dn, %i.dq, !nosanitize !9
  br i1 %i.dr, label %bb.ai, label %bb.ah, !prof !20, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.bo, i64 %i.dm) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds [48 x i8], ptr %i.bk, i64 %i.dk ; 5 uses
  %i.dt = ptrtoint ptr %i.ds to i64, !nosanitize !9 ; 2 uses
  %i.du = and i64 %i.dt, 7, !nosanitize !9
  %i.dv = icmp eq i64 %i.du, 0, !nosanitize !9
  br i1 %i.dv, label %b3DistanceToNodeSqr.exit84, label %bb.aj, !prof !20, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @220, i64 %i.dt) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3DistanceToNodeSqr.exit84:                       ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %.sroa.015.0.copyload.i74 = load <2 x float>, ptr %i.ds, align 8 ; 2 uses
  %.sroa.216.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.216.0.copyload.i76 = load float, ptr %.sroa.216.0..sroa_idx.i75, align 8
  %.sroa.013.0.copyload.i77 = load <2 x float>, ptr %i.dw, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %.sroa.214.0.copyload.i79 = load float, ptr %.sroa.214.0..sroa_idx.i78, align 4
  %.sroa.07.0.vec.extract.i105 = extractelement <2 x float> %.sroa.015.0.copyload.i74, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i106 = extractelement <2 x float> %.sroa.013.0.copyload.i77, i64 0 ; 2 uses
  %i.dx = fcmp olt float %.sroa.09.0.vec.extract.i, %.sroa.07.0.vec.extract.i105
  %i.dy = fcmp olt float %.sroa.0.0.vec.extract.i106, %.sroa.09.0.vec.extract.i
  %i.dz = select i1 %i.dy, float %.sroa.0.0.vec.extract.i106, float %.sroa.09.0.vec.extract.i
  %i.ea = select i1 %i.dx, float %.sroa.07.0.vec.extract.i105, float %i.dz
  %i.eb = fsub float %.sroa.09.0.vec.extract.i, %i.ea ; 2 uses
  %i.ec = fmul float %i.eb, %i.eb
  %i.ed = shufflevector <2 x float> %.sroa.015.0.copyload.i74, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ee = insertelement <2 x float> %i.ed, float %.sroa.216.0.copyload.i76, i64 1 ; 2 uses
  %i.ef = fcmp olt <2 x float> %i.bc, %i.ee
  %i.eg = shufflevector <2 x float> %.sroa.013.0.copyload.i77, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eh = insertelement <2 x float> %i.eg, float %.sroa.214.0.copyload.i79, i64 1 ; 2 uses
  %i.ei = fcmp olt <2 x float> %i.eh, %i.bc
  %i.ej = select <2 x i1> %i.ei, <2 x float> %i.eh, <2 x float> %i.bc
  %i.ek = select <2 x i1> %i.ef, <2 x float> %i.ee, <2 x float> %i.ej
  %i.el = fsub <2 x float> %i.bc, %i.ek           ; 2 uses
  %i.em = fmul <2 x float> %i.el, %i.el           ; 2 uses
  %i.en = extractelement <2 x float> %i.em, i64 0
  %i.eo = fadd float %i.ec, %i.en
  %i.ep = extractelement <2 x float> %i.em, i64 1
  %i.eq = fadd float %i.ep, %i.eo                 ; 3 uses
  %i.er = sext i32 %i.dj to i64                   ; 2 uses
  %i.es = mul nsw i64 %i.er, 48
  %i.et = add i64 %i.es, %i.bo, !nosanitize !9    ; 3 uses
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = icmp uge i64 %i.et, %i.bo, !nosanitize !9
  %i.ew = icmp slt i32 %i.dj, 0
  %i.ex = xor i1 %i.ew, %i.ev
  %i.ey = and i1 %i.eu, %i.ex, !nosanitize !9
  br i1 %i.ey, label %bb.al, label %bb.ak, !prof !20, !nosanitize !9

bb.ak:                                            ; preds = %b3DistanceToNodeSqr.exit84
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.bo, i64 %i.et) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %b3DistanceToNodeSqr.exit84
  %i.ez = getelementptr inbounds [48 x i8], ptr %i.bk, i64 %i.er ; 5 uses
  %i.fa = ptrtoint ptr %i.ez to i64, !nosanitize !9 ; 2 uses
  %i.fb = and i64 %i.fa, 7, !nosanitize !9
  %i.fc = icmp eq i64 %i.fb, 0, !nosanitize !9
  br i1 %i.fc, label %b3DistanceToNodeSqr.exit, label %bb.am, !prof !20, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @220, i64 %i.fa) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3DistanceToNodeSqr.exit:                         ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %.sroa.015.0.copyload.i = load <2 x float>, ptr %i.ez, align 8 ; 2 uses
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.216.0.copyload.i = load float, ptr %.sroa.216.0..sroa_idx.i, align 8
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %i.fd, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %.sroa.214.0.copyload.i = load float, ptr %.sroa.214.0..sroa_idx.i, align 4
  %.sroa.07.4.vec.extract.i131 = extractelement <2 x float> %.sroa.015.0.copyload.i, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i132 = extractelement <2 x float> %.sroa.013.0.copyload.i, i64 1 ; 2 uses
  %i.fe = fcmp olt float %.sroa.09.4.vec.extract.i, %.sroa.07.4.vec.extract.i131
  %i.ff = fcmp olt float %.sroa.0.4.vec.extract.i132, %.sroa.09.4.vec.extract.i
  %i.fg = select i1 %i.ff, float %.sroa.0.4.vec.extract.i132, float %.sroa.09.4.vec.extract.i
  %i.fh = select i1 %i.fe, float %.sroa.07.4.vec.extract.i131, float %i.fg
  %i.fi = fsub float %.sroa.09.4.vec.extract.i, %i.fh ; 2 uses
  %i.fj = fmul float %i.fi, %i.fi
  %i.fk = shufflevector <2 x float> %.sroa.015.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fl = insertelement <2 x float> %i.fk, float %.sroa.216.0.copyload.i, i64 0 ; 2 uses
  %i.fm = fcmp olt <2 x float> %i.bb, %i.fl
  %i.fn = shufflevector <2 x float> %.sroa.013.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fo = insertelement <2 x float> %i.fn, float %.sroa.214.0.copyload.i, i64 0 ; 2 uses
  %i.fp = fcmp olt <2 x float> %i.fo, %i.bb
  %i.fq = select <2 x i1> %i.fp, <2 x float> %i.fo, <2 x float> %i.bb
  %i.fr = select <2 x i1> %i.fm, <2 x float> %i.fl, <2 x float> %i.fq
  %i.fs = fsub <2 x float> %i.bb, %i.fr           ; 2 uses
  %i.ft = fmul <2 x float> %i.fs, %i.fs           ; 2 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 1
  %i.fv = fadd float %i.fu, %i.fj
  %i.fw = extractelement <2 x float> %i.ft, i64 0
  %i.fx = fadd float %i.fw, %i.fv                 ; 3 uses
  %i.fy = fcmp olt float %i.fx, %i.eq
  %i.fz = zext nneg i32 %.049446 to i64           ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.fz ; 2 uses
  %i.gb = shl nuw nsw i64 %i.fz, 3
  %i.gc = add i64 %i.gb, %i.ax, !nosanitize !9    ; 3 uses
  %.not71 = icmp ult i64 %i.gc, %i.ax, !nosanitize !9 ; 2 uses
  br i1 %i.fy, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %b3DistanceToNodeSqr.exit
  store i32 %i.dh, ptr %i.bf, align 8
  store float %i.eq, ptr %.sroa_idx, align 4
  br i1 %.not71, label %bb.ao, label %bb.ar, !prof !10, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @79, i64 %i.ax, i64 %i.gc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ap:                                            ; preds = %b3DistanceToNodeSqr.exit
  store i32 %i.dj, ptr %i.bf, align 8
  store float %i.fx, ptr %.sroa_idx, align 4
  br i1 %.not71, label %bb.aq, label %bb.ar, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.ax, i64 %i.gc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap, %bb.an
  %.sink956 = phi i32 [ %i.dj, %bb.an ], [ %i.dh, %bb.ap ]
  %.sink = phi float [ %i.fx, %bb.an ], [ %i.eq, %bb.ap ]
  store i32 %.sink956, ptr %i.ga, align 8
  %.sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store float %.sink, ptr %.sroa_idx153, align 4
  %.150 = add nuw nsw i32 %.049446, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.af, %bb.ar, %bb.ae, %bb.w
  %.sroa.4.1 = phi i32 [ %i.df, %bb.ae ], [ %.sroa.4.0445, %bb.af ], [ %.sroa.4.0445, %bb.ar ], [ %.sroa.4.0445, %bb.w ] ; 2 uses
  %.251 = phi i32 [ %i.bd, %bb.ae ], [ 1023, %bb.af ], [ %.150, %bb.ar ], [ %i.bd, %bb.w ] ; 2 uses
  %.2 = phi float [ %.1, %bb.ae ], [ %.0447, %bb.af ], [ %.0447, %bb.ar ], [ %.0447, %bb.w ] ; 2 uses
  %.not957 = icmp eq i32 %.251, 0
  br i1 %.not957, label %bb.at, label %bb.j, !llvm.loop !76

bb.at:                                            ; preds = %bb.as
  store float %.2, ptr %7, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.gd = zext i32 %.sroa.4.1 to i64
  %i.ge = shl nuw i64 %i.gd, 32
  %i.gf = zext i32 %i.bz to i64
  %i.gg = or disjoint i64 %i.ge, %i.gf
  br label %bb.au

bb.au:                                            ; preds = %bb.c, %bb.at
  %.sroa.0167.0.insert.insert = phi i64 [ 0, %bb.c ], [ %i.gg, %bb.at ]
  ret i64 %.sroa.0167.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b3DynamicTree_RayCast(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 !func_sanitize !79 {
bb.a:
  %6 = alloca %struct.b3Vec3, align 8             ; 8 uses
  %7 = alloca %struct.b3Vec3, align 8             ; 7 uses
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %8 = alloca %struct.b3RayCastInput, align 4     ; 5 uses
  %9 = alloca %struct.b3AABB, align 16            ; 10 uses
  %i.b = icmp ne ptr %0, null, !nosanitize !9
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @81, i64 %i.c) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.ao, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.j = icmp ne ptr %1, null, !nosanitize !9
  %i.k = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !9
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !9
  %i.n = and i1 %i.j, %i.m, !nosanitize !9
  br i1 %i.n, label %_mm_load_sd.exit.i, label %bb.e, !prof !20, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.k) #11, !nosanitize !9
  unreachable, !nosanitize !9

_mm_load_sd.exit.i:                               ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !48
  %10 = ptrtoint ptr %6 to i64, !nosanitize !9    ; 2 uses
  %11 = add i64 %10, 8, !nosanitize !9            ; 2 uses
  %.not1226 = icmp eq i64 %11, 0, !nosanitize !9
  br i1 %.not1226, label %bb.f, label %b3LoadV.exit, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %_mm_load_sd.exit.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %10, i64 %11) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit:                                     ; preds = %_mm_load_sd.exit.i
  %i.p = load double, ptr %6, align 8             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = bitcast <2 x double> %i.r to <4 x float>
  %i.t = load float, ptr %i.q, align 8, !tbaa !24 ; 6 uses
  %i.u = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.t, i64 0
  %i.v = shufflevector <4 x float> %i.s, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = ptrtoint ptr %7 to i64, !nosanitize !9    ; 2 uses
  %13 = add i64 %12, 8, !nosanitize !9            ; 2 uses
  %.not1227 = icmp eq i64 %13, 0, !nosanitize !9
  br i1 %.not1227, label %bb.g, label %b3LoadV.exit158, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %b3LoadV.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %12, i64 %13) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit158:                                  ; preds = %b3LoadV.exit
  %i.w = load double, ptr %7, align 8             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.w, i64 0
  %i.z = bitcast <2 x double> %i.y to <4 x float>
  %i.aa = load float, ptr %i.x, align 8, !tbaa !24 ; 2 uses
  %i.ab = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aa, i64 0
  %i.ac = shufflevector <4 x float> %i.z, <4 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !81 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !19 ; 4 uses
  %i.ah = ptrtoint ptr %i.a to i64, !nosanitize !9 ; 7 uses
  store i32 %i.ag, ptr %i.a, align 16, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  %.fr587 = freeze ptr %i.aj                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !82
  %i.ak = ptrtoint ptr %.fr587 to i64             ; 10 uses
  %.not588 = icmp eq ptr %.fr587, null
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ao = icmp ult ptr %i.al, inttoptr (i64 -8 to ptr)
  %i.ap = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.aq = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ar = fsub <4 x float> zeroinitializer, %i.ac
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.at = getelementptr i8, ptr %4, i64 -8
  %i.au = getelementptr i8, ptr %4, i64 -4
  br i1 %.not588, label %.split558.us.preheader, label %.split558.preheader.preheader, !prof !10

.split558.preheader.preheader:                    ; preds = %b3LoadV.exit158
  %i.av = fmul float %i.aa, %i.ae
  %i.aw = fadd float %i.t, %i.av                  ; 4 uses
  %i.ax = fcmp ogt float %i.t, %i.aw
  %i.ay = select i1 %i.ax, float %i.t, float %i.aw
  %i.az = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = bitcast double %i.w to <2 x float>
  %i.bb = fmul <2 x float> %i.ba, %14
  %15 = bitcast double %i.p to <2 x float>        ; 5 uses
  %i.bc = fadd <2 x float> %i.bb, %15             ; 4 uses
  %i.bd = fcmp olt <2 x float> %i.bc, %15
  %i.be = select <2 x i1> %i.bd, <2 x float> %15, <2 x float> %i.bc
  %i.bf = fcmp ogt <2 x float> %i.bc, %15
  %i.bg = select <2 x i1> %i.bf, <2 x float> %15, <2 x float> %i.bc
  %i.bh = fcmp olt float %i.t, %i.aw
  %i.bi = select i1 %i.bh, float %i.t, float %i.aw
  br label %.split558.preheader

.split558.us.preheader:                           ; preds = %b3LoadV.exit158
  %i.bj = icmp eq i32 %i.ag, -1
  br i1 %i.bj, label %.split578.us, label %bb.h, !llvm.loop !78

bb.h:                                             ; preds = %.split558.us.preheader
  %i.bk = sext i32 %i.ag to i64
  %i.bl = mul nsw i64 %i.bk, 48                   ; 2 uses
  %i.bm = icmp eq i32 %i.ag, 0
  %i.bn = icmp uge i64 %i.bl, %i.ak, !nosanitize !9
  %i.bo = and i1 %i.bm, %i.bn
  br i1 %i.bo, label %.split575.us, label %.split568.us, !prof !20, !nosanitize !9

.split575.us:                                     ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  br label %.split575

.split558.preheader:                              ; preds = %.split558.preheader.preheader, %.backedge
  %.0557 = phi float [ %.6870, %.backedge ], [ %i.ae, %.split558.preheader.preheader ] ; 10 uses
  %.0126556 = phi i32 [ %.5131869, %.backedge ], [ 1, %.split558.preheader.preheader ] ; 4 uses
  %.sroa.0.0555 = phi <2 x float> [ %.sroa.0.3868, %.backedge ], [ %i.bg, %.split558.preheader.preheader ] ; 10 uses
  %.sroa.6.0554 = phi float [ %.sroa.6.3867, %.backedge ], [ %i.bi, %.split558.preheader.preheader ] ; 9 uses
  %.sroa.9.0553 = phi <2 x float> [ %.sroa.9.3866, %.backedge ], [ %i.be, %.split558.preheader.preheader ] ; 9 uses
  %.sroa.13.0552 = phi float [ %.sroa.13.3865, %.backedge ], [ %i.ay, %.split558.preheader.preheader ] ; 9 uses
  %.sroa.0217.0551 = phi i32 [ %.sroa.0217.1863, %.backedge ], [ 0, %.split558.preheader.preheader ] ; 3 uses
  %.sroa.4.0550 = phi i32 [ %.sroa.4.2861, %.backedge ], [ 0, %.split558.preheader.preheader ] ; 9 uses
  %i.bp = add nsw i32 %.0126556, -1               ; 8 uses
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bq ; 3 uses
  %i.bs = shl nuw nsw i64 %i.bq, 2
  %i.bt = add i64 %i.bs, %i.ah, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.bt, %i.ah, !nosanitize !9
  br i1 %.not, label %.split562.us, label %bb.i, !prof !10, !nosanitize !9

.split562.us:                                     ; preds = %.split558.preheader
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.ah, i64 %i.bt) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %.split558.preheader
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !47 ; 4 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %.backedge, label %bb.j, !llvm.loop !78

bb.j:                                             ; preds = %bb.i
  %i.bw = sext i32 %i.bu to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [48 x i8], ptr %.fr587, i64 %i.bw ; 7 uses
  %i.by = mul nsw i64 %i.bw, 48
  %i.bz = add i64 %i.by, %i.ak, !nosanitize !9    ; 3 uses
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = icmp uge i64 %i.bz, %i.ak, !nosanitize !9
  %i.cc = icmp slt i32 %i.bu, 0
  %i.cd = xor i1 %i.cc, %i.cb
  %i.ce = and i1 %i.ca, %i.cd, !nosanitize !9
  br i1 %i.ce, label %bb.k, label %.split568.us, !prof !20, !nosanitize !9

.split568.us:                                     ; preds = %bb.j, %bb.h
  %.us-phi570 = phi i64 [ %i.bl, %bb.h ], [ %i.bz, %bb.j ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @85, i64 %i.ak, i64 %.us-phi570) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  %i.cf = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0217.0551, i32 1), !nosanitize !9 ; 2 uses
  %i.cg = extractvalue { i32, i1 } %i.cf, 1, !nosanitize !9
  br i1 %i.cg, label %.split572.us, label %bb.l, !prof !10, !nosanitize !9

.split572.us:                                     ; preds = %bb.k
  %i.ch = zext nneg i32 %.sroa.0217.0551 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @86, i64 %i.ch, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.ci = extractvalue { i32, i1 } %i.cf, 0, !nosanitize !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.cj = ptrtoint ptr %i.bx to i64, !nosanitize !9 ; 2 uses
  %i.ck = and i64 %i.cj, 7, !nosanitize !9
  %i.cl = icmp eq i64 %i.ck, 0, !nosanitize !9
  br i1 %i.cl, label %bb.m, label %.split575, !prof !20, !nosanitize !9

.split575:                                        ; preds = %bb.l, %.split575.us
  %.us-phi576 = phi i64 [ 0, %.split575.us ], [ %i.cj, %bb.l ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 %.us-phi576) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !38
  %i.co = and i64 %i.cn, %2                       ; 2 uses
  br i1 %3, label %.split, label %bb.n

.split:                                           ; preds = %bb.m
  %.not241 = icmp eq i64 %i.co, %2
  br i1 %.not241, label %bb.o, label %.backedge.sink.split, !llvm.loop !78

bb.n:                                             ; preds = %bb.m
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.backedge.sink.split, label %bb.o, !llvm.loop !78

bb.o:                                             ; preds = %.split, %bb.n
  %i.cq = load float, ptr %i.am, align 16
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0555, i64 1
  %i.cr = fcmp uge float %i.cq, %.sroa.0.4.vec.extract
  %i.cs = load float, ptr %i.an, align 4          ; 2 uses
  %i.ct = fcmp uge float %i.cs, %.sroa.6.0554
  %i.cu = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.cv = shufflevector <2 x float> %.sroa.9.0553, <2 x float> %.sroa.0.0555, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.cw = insertelement <4 x float> %i.cv, float %.sroa.13.0552, i64 2 ; 2 uses
  %i.cx = fcmp ule <4 x float> %i.cu, %i.cw
  %i.cy = fcmp uge <4 x float> %i.cu, %i.cw
  %i.cz = shufflevector <4 x i1> %i.cx, <4 x i1> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.da = freeze <4 x i1> %i.cz
  %i.db = bitcast <4 x i1> %i.da to i4
  %i.dc = icmp eq i4 %i.db, -1
  %.fr = freeze i1 %i.cr
  %op.rdx = and i1 %i.dc, %.fr
  %op.rdx1228 = select i1 %op.rdx, i1 %i.ct, i1 false
  br i1 %op.rdx1228, label %b3LoadV.exit172, label %.backedge.sink.split, !llvm.loop !78

b3LoadV.exit172:                                  ; preds = %bb.o
  br i1 %i.ao, label %b3LoadV.exit174, label %bb.p, !prof !20, !nosanitize !9

bb.p:                                             ; preds = %b3LoadV.exit172
  %i.dd = ptrtoint ptr %i.al to i64, !nosanitize !9 ; 2 uses
  %i.de = add i64 %i.dd, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.dd, i64 %i.de) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit174:                                  ; preds = %b3LoadV.exit172
  %i.df = load double, ptr %i.al, align 4, !tbaa !24
  %i.dg = load <2 x double>, ptr %9, align 16     ; 2 uses
  %i.dh = bitcast <2 x double> %i.dg to <4 x float>
  %bc851 = bitcast <2 x double> %i.dg to <4 x float>
  %i.di = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %bc851, <4 x i32> <i32 6, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dk = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dl = bitcast <2 x double> %i.dk to <4 x float>
  %i.dm = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cs, i64 0
  %i.dn = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.do = fadd <4 x float> %i.dj, %i.dn
  %i.dp = fmul <4 x float> %i.do, splat (float 5.000000e-01) ; 2 uses
  %i.dq = fsub <4 x float> %i.dn, %i.dp           ; 2 uses
  %i.dr = fsub <4 x float> %i.v, %i.dp            ; 2 uses
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.du = fmul <4 x float> %i.ap, %i.dt
  %i.dv = fmul <4 x float> %i.aq, %i.ds
  %i.dw = fsub <4 x float> %i.du, %i.dv           ; 2 uses
  %i.dx = fsub <4 x float> zeroinitializer, %i.dw
  %i.dy = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dx, <4 x float> %i.dw)
  %i.dz = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ar, <4 x float> %i.ac) ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.eb = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ec = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ed = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ee = fmul <4 x float> %i.ea, %i.ed
  %i.ef = fmul <4 x float> %i.eb, %i.ec
  %i.eg = fadd <4 x float> %i.ee, %i.ef
  %i.eh = fsub <4 x float> %i.dy, %i.eg
  %i.ei = fcmp ole <4 x float> %i.eh, zeroinitializer
  %i.ej = bitcast <4 x i1> %i.ei to i4
  %i.ek = and i4 %i.ej, 7
  %i.el = icmp eq i4 %i.ek, 7
  br i1 %i.el, label %b3IsLeaf.exit, label %.backedge.sink.split, !llvm.loop !78

b3IsLeaf.exit:                                    ; preds = %b3LoadV.exit174
  %i.em = getelementptr inbounds nuw i8, ptr %i.bx, i64 46
  %i.en = load i16, ptr %i.em, align 2, !tbaa !40
  %i.eo = and i16 %i.en, 4
  %.not252 = icmp eq i16 %i.eo, 0
  br i1 %.not252, label %bb.y, label %bb.q

bb.q:                                             ; preds = %b3IsLeaf.exit
  store float %.0557, ptr %i.as, align 4, !tbaa !81
  %i.ep = load i32, ptr %i.at, align 4, !nosanitize !9
  %i.eq = icmp eq i32 %i.ep, -1056584962, !nosanitize !9
  br i1 %i.eq, label %bb.r, label %bb.t, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  %i.er = load i32, ptr %i.au, align 8, !nosanitize !9
  %i.es = icmp eq i32 %i.er, 1388381788, !nosanitize !9
  br i1 %i.es, label %bb.t, label %bb.s, !prof !20, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.et = ptrtoint ptr %4 to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @90, i64 %i.et) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !24
  %i.ew = call float %4(ptr noundef nonnull %8, i32 noundef %i.bu, i64 noundef %i.ev, ptr noundef %5) #12 ; 6 uses
  %i.ex = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.4.0550, i32 1), !nosanitize !9 ; 2 uses
  %i.ey = extractvalue { i32, i1 } %i.ex, 1, !nosanitize !9
  br i1 %i.ey, label %bb.u, label %bb.v, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  %i.ez = zext nneg i32 %.sroa.4.0550 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @91, i64 %i.ez, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.fa = extractvalue { i32, i1 } %i.ex, 0, !nosanitize !9 ; 3 uses
  %i.fb = fcmp oeq float %i.ew, 0.000000e+00
  br i1 %i.fb, label %bb.an, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fc = fcmp ule float %i.ew, 0.000000e+00
  %i.fd = fcmp ugt float %i.ew, %.0557
  %or.cond = select i1 %i.fc, i1 true, i1 %i.fd
  br i1 %or.cond, label %.backedge.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.042.0.copyload = load <2 x float>, ptr %6, align 8 ; 5 uses
  %.sroa.243.0.copyload = load float, ptr %i.q, align 8 ; 5 uses
  %.sroa.040.0.copyload = load <2 x float>, ptr %7, align 8
  %.sroa.241.0.copyload = load float, ptr %i.x, align 8
  %i.fe = fmul float %i.ew, %.sroa.241.0.copyload
  %i.ff = fadd float %.sroa.243.0.copyload, %i.fe ; 4 uses
  %i.fg = fcmp olt float %.sroa.243.0.copyload, %i.ff
  %i.fh = select i1 %i.fg, float %.sroa.243.0.copyload, float %i.ff
  %16 = insertelement <2 x float> poison, float %i.ew, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x float> %17, %.sroa.040.0.copyload
  %i.fi = fadd <2 x float> %.sroa.042.0.copyload, %18 ; 4 uses
  %19 = fcmp olt <2 x float> %.sroa.042.0.copyload, %i.fi
  %i.fj = select <2 x i1> %19, <2 x float> %.sroa.042.0.copyload, <2 x float> %i.fi
  %20 = fcmp ogt <2 x float> %.sroa.042.0.copyload, %i.fi
  %i.fk = select <2 x i1> %20, <2 x float> %.sroa.042.0.copyload, <2 x float> %i.fi
  %i.fl = fcmp ogt float %.sroa.243.0.copyload, %i.ff
  %i.fm = select i1 %i.fl, float %.sroa.243.0.copyload, float %i.ff
  br label %.backedge.sink.split

bb.y:                                             ; preds = %b3IsLeaf.exit
  %.not154 = icmp eq i32 %.0126556, 1024
  br i1 %.not154, label %.backedge.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !24 ; 3 uses
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  %i.fq = getelementptr inbounds [48 x i8], ptr %.fr587, i64 %i.fp ; 5 uses
  %i.fr = mul nsw i64 %i.fp, 48
  %i.fs = add i64 %i.fr, %i.ak, !nosanitize !9    ; 3 uses
  %i.ft = icmp ne i64 %i.fs, 0
  %i.fu = icmp uge i64 %i.fs, %i.ak, !nosanitize !9
  %i.fv = icmp slt i32 %i.fo, 0
  %i.fw = xor i1 %i.fv, %i.fu
  %i.fx = and i1 %i.ft, %i.fw, !nosanitize !9
  br i1 %i.fx, label %bb.ab, label %bb.aa, !prof !20, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @92, i64 %i.ak, i64 %i.fs) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z
  %i.fy = ptrtoint ptr %i.fq to i64, !nosanitize !9 ; 2 uses
  %i.fz = and i64 %i.fy, 7, !nosanitize !9
  %i.ga = icmp eq i64 %i.fz, 0, !nosanitize !9
  br i1 %i.ga, label %bb.ad, label %bb.ac, !prof !20, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @93, i64 %i.fy) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %.sroa.0219.0.copyload = load <2 x float>, ptr %i.fq, align 8
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.4220.0.copyload = load float, ptr %.sroa.4220.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %.sroa.6221.0.copyload = load float, ptr %.sroa.6221.0..sroa_idx, align 4
  %i.gb = fadd <2 x float> %.sroa.0219.0.copyload, %.sroa.5.0.copyload
  %i.gc = fadd float %.sroa.4220.0.copyload, %.sroa.6221.0.copyload
  %21 = fmul <2 x float> %i.gb, splat (float 5.000000e-01)
  %22 = fmul float %i.gc, 5.000000e-01
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bx, i64 36 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !24 ; 3 uses
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds [48 x i8], ptr %.fr587, i64 %i.gf ; 5 uses
  %i.gh = mul nsw i64 %i.gf, 48
  %i.gi = add i64 %i.gh, %i.ak, !nosanitize !9    ; 3 uses
  %i.gj = icmp ne i64 %i.gi, 0
  %i.gk = icmp uge i64 %i.gi, %i.ak, !nosanitize !9
  %i.gl = icmp slt i32 %i.ge, 0
  %i.gm = xor i1 %i.gl, %i.gk
  %i.gn = and i1 %i.gj, %i.gm, !nosanitize !9
  br i1 %i.gn, label %bb.af, label %bb.ae, !prof !20, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @94, i64 %i.ak, i64 %i.gi) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ad
  %i.go = ptrtoint ptr %i.gg to i64, !nosanitize !9 ; 2 uses
  %i.gp = and i64 %i.go, 7, !nosanitize !9
  %i.gq = icmp eq i64 %i.gp, 0, !nosanitize !9
  br i1 %i.gq, label %bb.ah, label %bb.ag, !prof !20, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.go) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %.sroa.0222.0.copyload = load <2 x float>, ptr %i.gg, align 8
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.4223.0.copyload = load float, ptr %.sroa.4223.0..sroa_idx, align 8
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %.sroa.5224.0.copyload = load <2 x float>, ptr %.sroa.5224.0..sroa_idx, align 4
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 20
  %.sroa.6225.0.copyload = load float, ptr %.sroa.6225.0..sroa_idx, align 4
  %23 = fadd float %.sroa.4223.0.copyload, %.sroa.6225.0.copyload
  %24 = fmul float %23, 5.000000e-01
  %.sroa.03.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %i.q, align 8
  %i.gr = fsub <2 x float> %.sroa.03.0.copyload, %21 ; 2 uses
  %i.gs = fmul <2 x float> %i.gr, %i.gr           ; 2 uses
  %i.gt = fadd <2 x float> %.sroa.0222.0.copyload, %.sroa.5224.0.copyload
  %25 = fmul <2 x float> %i.gt, splat (float 5.000000e-01)
  %26 = fsub <2 x float> %.sroa.03.0.copyload, %25 ; 2 uses
  %i.gu = fmul <2 x float> %26, %26               ; 2 uses
  %27 = insertelement <2 x float> poison, float %.sroa.24.0.copyload, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = insertelement <2 x float> poison, float %22, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %24, i64 1
  %i.gx = fsub <2 x float> %28, %i.gw             ; 2 uses
  %29 = shufflevector <2 x float> %i.gs, <2 x float> %i.gu, <2 x i32> <i32 0, i32 2>
  %i.gy = shufflevector <2 x float> %i.gs, <2 x float> %i.gu, <2 x i32> <i32 1, i32 3>
  %i.gz = fadd <2 x float> %29, %i.gy
  %30 = fmul <2 x float> %i.gx, %i.gx
  %i.ha = fadd <2 x float> %30, %i.gz             ; 2 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0
  %i.hc = extractelement <2 x float> %i.ha, i64 1
  %i.hd = fcmp olt float %i.hb, %i.hc
  %i.he = zext nneg i32 %.0126556 to i64          ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.he
  %i.hg = shl nuw nsw i64 %i.he, 2
  %i.hh = add i64 %i.hg, %i.ah, !nosanitize !9    ; 3 uses
  %.not156 = icmp ult i64 %i.hh, %i.ah, !nosanitize !9 ; 2 uses
  br i1 %i.hd, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.ge, ptr %i.br, align 4, !tbaa !47
  br i1 %.not156, label %bb.aj, label %bb.am, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @96, i64 %i.ah, i64 %i.hh) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ah
  store i32 %i.fo, ptr %i.br, align 4, !tbaa !47
  br i1 %.not156, label %bb.al, label %bb.am, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @97, i64 %i.ah, i64 %i.hh) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %.sink.in = phi ptr [ %i.fn, %bb.ai ], [ %i.gd, %bb.ak ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !24
  store i32 %.sink, ptr %i.hf, align 4, !tbaa !47
  %.1127 = add nuw nsw i32 %.0126556, 1
  br label %.backedge.sink.split

bb.an:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %.split578.us.loopexit592

.backedge.sink.split:                             ; preds = %bb.w, %bb.x, %.split, %bb.o, %b3LoadV.exit174, %bb.am, %bb.y, %bb.n
  %.6870.ph = phi float [ %.0557, %.split ], [ %.0557, %bb.n ], [ %.0557, %bb.y ], [ %.0557, %bb.am ], [ %.0557, %b3LoadV.exit174 ], [ %.0557, %bb.o ], [ %i.ew, %bb.x ], [ %.0557, %bb.w ]
  %.5131869.ph = phi i32 [ %i.bp, %.split ], [ %i.bp, %bb.n ], [ 1023, %bb.y ], [ %.1127, %bb.am ], [ %i.bp, %b3LoadV.exit174 ], [ %i.bp, %bb.o ], [ %i.bp, %bb.x ], [ %i.bp, %bb.w ]
  %.sroa.0.3868.ph = phi <2 x float> [ %.sroa.0.0555, %.split ], [ %.sroa.0.0555, %bb.n ], [ %.sroa.0.0555, %bb.y ], [ %.sroa.0.0555, %bb.am ], [ %.sroa.0.0555, %b3LoadV.exit174 ], [ %.sroa.0.0555, %bb.o ], [ %i.fj, %bb.x ], [ %.sroa.0.0555, %bb.w ]
  %.sroa.6.3867.ph = phi float [ %.sroa.6.0554, %.split ], [ %.sroa.6.0554, %bb.n ], [ %.sroa.6.0554, %bb.y ], [ %.sroa.6.0554, %bb.am ], [ %.sroa.6.0554, %b3LoadV.exit174 ], [ %.sroa.6.0554, %bb.o ], [ %i.fh, %bb.x ], [ %.sroa.6.0554, %bb.w ]
  %.sroa.9.3866.ph = phi <2 x float> [ %.sroa.9.0553, %.split ], [ %.sroa.9.0553, %bb.n ], [ %.sroa.9.0553, %bb.y ], [ %.sroa.9.0553, %bb.am ], [ %.sroa.9.0553, %b3LoadV.exit174 ], [ %.sroa.9.0553, %bb.o ], [ %i.fk, %bb.x ], [ %.sroa.9.0553, %bb.w ]
  %.sroa.13.3865.ph = phi float [ %.sroa.13.0552, %.split ], [ %.sroa.13.0552, %bb.n ], [ %.sroa.13.0552, %bb.y ], [ %.sroa.13.0552, %bb.am ], [ %.sroa.13.0552, %b3LoadV.exit174 ], [ %.sroa.13.0552, %bb.o ], [ %i.fm, %bb.x ], [ %.sroa.13.0552, %bb.w ]
  %.sroa.4.2861.ph = phi i32 [ %.sroa.4.0550, %.split ], [ %.sroa.4.0550, %bb.n ], [ %.sroa.4.0550, %bb.y ], [ %.sroa.4.0550, %bb.am ], [ %.sroa.4.0550, %b3LoadV.exit174 ], [ %.sroa.4.0550, %bb.o ], [ %i.fa, %bb.x ], [ %i.fa, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.i
  %.6870 = phi float [ %.0557, %bb.i ], [ %.6870.ph, %.backedge.sink.split ]
  %.5131869 = phi i32 [ %i.bp, %bb.i ], [ %.5131869.ph, %.backedge.sink.split ] ; 2 uses
  %.sroa.0.3868 = phi <2 x float> [ %.sroa.0.0555, %bb.i ], [ %.sroa.0.3868.ph, %.backedge.sink.split ]
  %.sroa.6.3867 = phi float [ %.sroa.6.0554, %bb.i ], [ %.sroa.6.3867.ph, %.backedge.sink.split ]
  %.sroa.9.3866 = phi <2 x float> [ %.sroa.9.0553, %bb.i ], [ %.sroa.9.3866.ph, %.backedge.sink.split ]
  %.sroa.13.3865 = phi float [ %.sroa.13.0552, %bb.i ], [ %.sroa.13.3865.ph, %.backedge.sink.split ]
  %.sroa.0217.1863 = phi i32 [ %.sroa.0217.0551, %bb.i ], [ %i.ci, %.backedge.sink.split ] ; 2 uses
  %.sroa.4.2861 = phi i32 [ %.sroa.4.0550, %bb.i ], [ %.sroa.4.2861.ph, %.backedge.sink.split ] ; 2 uses
  %.not1121 = icmp eq i32 %.5131869, 0
  br i1 %.not1121, label %.split578.us.loopexit592, label %.split558.preheader, !llvm.loop !78

.split578.us.loopexit592:                         ; preds = %.backedge, %bb.an
  %.sroa.0217.1864 = phi i32 [ %i.ci, %bb.an ], [ %.sroa.0217.1863, %.backedge ]
  %.sroa.4.2862 = phi i32 [ %i.fa, %bb.an ], [ %.sroa.4.2861, %.backedge ]
  %i.hi = zext i32 %.sroa.4.2862 to i64
  %i.hj = shl nuw i64 %i.hi, 32
  %i.hk = zext i32 %.sroa.0217.1864 to i64
  %i.hl = or disjoint i64 %i.hj, %i.hk
  br label %.split578.us

.split578.us:                                     ; preds = %.split558.us.preheader, %.split578.us.loopexit592
  %i.hm = phi i64 [ %i.hl, %.split578.us.loopexit592 ], [ 0, %.split558.us.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.c, %.split578.us
  %.sroa.0217.0.insert.insert = phi i64 [ 0, %bb.c ], [ %i.hm, %.split578.us ]
  ret i64 %.sroa.0217.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b3DynamicTree_BoxCast(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 !func_sanitize !84 {
bb.a:
  %6 = alloca %struct.b3Vec3, align 8             ; 6 uses
  %7 = alloca %struct.b3Vec3, align 8             ; 5 uses
  %8 = alloca %struct.b3Vec3, align 8             ; 6 uses
  %9 = alloca %struct.b3BoxCastInput, align 4     ; 5 uses
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = icmp ne ptr %0, null, !nosanitize !9
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @98, i64 %i.c) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.av, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ne ptr %1, null, !nosanitize !9
  %i.k = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !9
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !9
  %i.n = and i1 %i.j, %i.m, !nosanitize !9
  br i1 %i.n, label %_mm_load_sd.exit.i, label %bb.e, !prof !20, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @100, i64 %i.k) #11, !nosanitize !9
  unreachable, !nosanitize !9

_mm_load_sd.exit.i:                               ; preds = %bb.d
  %.sroa.0332.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !32 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !32 ; 8 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.11.0.copyload = load <2 x float>, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !32 ; 8 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !32 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.o = fadd float %.sroa.7.0.copyload, %.sroa.15.0.copyload
  %i.p = fadd <2 x float> %.sroa.0332.0.copyload, %.sroa.11.0.copyload
  %i.q = fmul <2 x float> %i.p, splat (float 5.000000e-01) ; 2 uses
  %i.r = fmul float %i.o, 5.000000e-01            ; 2 uses
  store <2 x float> %i.q, ptr %6, align 8
  %.sroa.2160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.r, ptr %.sroa.2160.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.s = fsub float %.sroa.15.0.copyload, %.sroa.7.0.copyload
  %i.t = fsub <2 x float> %.sroa.11.0.copyload, %.sroa.0332.0.copyload
  %i.u = fmul <2 x float> %i.t, splat (float 5.000000e-01) ; 2 uses
  %i.v = fmul float %i.s, 5.000000e-01            ; 2 uses
  store <2 x float> %i.u, ptr %7, align 8
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.v, ptr %.sroa.2156.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.x = bitcast <2 x float> %i.u to double
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !48
  %10 = ptrtoint ptr %6 to i64, !nosanitize !9    ; 2 uses
  %11 = add i64 %10, 8, !nosanitize !9            ; 2 uses
  %.not1520 = icmp eq i64 %11, 0, !nosanitize !9
  br i1 %.not1520, label %bb.f, label %b3LoadV.exit, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %_mm_load_sd.exit.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %10, i64 %11) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit:                                     ; preds = %_mm_load_sd.exit.i
  %i.y = bitcast <2 x float> %i.q to double
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = bitcast <2 x double> %i.z to <4 x float>
  %i.ab = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.ac = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = ptrtoint ptr %8 to i64, !nosanitize !9    ; 2 uses
  %13 = add i64 %12, 8, !nosanitize !9            ; 2 uses
  %.not1521 = icmp eq i64 %13, 0, !nosanitize !9
  br i1 %.not1521, label %bb.g, label %b3LoadV.exit225, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %b3LoadV.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %12, i64 %13) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit225:                                  ; preds = %b3LoadV.exit
  %i.ad = load double, ptr %8, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ag = bitcast <2 x double> %i.af to <4 x float>
  %i.ah = load float, ptr %i.ae, align 8, !tbaa !24
  %i.ai = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ah, i64 0
  %i.aj = shufflevector <4 x float> %i.ag, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %14 = ptrtoint ptr %7 to i64, !nosanitize !9    ; 2 uses
  %15 = add i64 %14, 8, !nosanitize !9            ; 2 uses
  %.not1522 = icmp eq i64 %15, 0, !nosanitize !9
  br i1 %.not1522, label %bb.h, label %b3LoadV.exit227, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %b3LoadV.exit225
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %14, i64 %15) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit227:                                  ; preds = %b3LoadV.exit225
  %i.ak = insertelement <2 x double> poison, double %i.x, i64 0
  %i.al = bitcast <2 x double> %i.ak to <4 x float>
  %i.am = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !86 ; 3 uses
  %.sroa.0139.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.2140.0.copyload = load float, ptr %.sroa.2140.0..sroa_idx, align 4
  %i.aq = fmul float %i.ap, %.sroa.2140.0.copyload ; 2 uses
  %i.ar = fadd float %.sroa.7.0.copyload, %i.aq   ; 2 uses
  %i.as = fcmp olt float %.sroa.7.0.copyload, %i.ar
  %i.at = select i1 %i.as, float %.sroa.7.0.copyload, float %i.ar
  %i.au = fadd float %.sroa.15.0.copyload, %i.aq  ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %.sroa.0139.0.copyload ; 2 uses
  %i.ay = fadd <2 x float> %.sroa.0332.0.copyload, %i.ax ; 2 uses
  %i.az = fcmp olt <2 x float> %.sroa.0332.0.copyload, %i.ay
  %i.ba = select <2 x i1> %i.az, <2 x float> %.sroa.0332.0.copyload, <2 x float> %i.ay
  %i.bb = fadd <2 x float> %.sroa.11.0.copyload, %i.ax ; 2 uses
  %i.bc = fcmp ogt <2 x float> %.sroa.11.0.copyload, %i.bb
  %i.bd = select <2 x i1> %i.bc, <2 x float> %.sroa.11.0.copyload, <2 x float> %i.bb
  %i.be = fcmp ogt float %.sroa.15.0.copyload, %i.au
  %i.bf = select i1 %i.be, float %.sroa.15.0.copyload, float %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %9, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !87
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !19
  %i.bk = ptrtoint ptr %i.a to i64, !nosanitize !9 ; 7 uses
  store i32 %i.bj, ptr %i.a, align 16, !tbaa !47
  %i.bl = ptrtoint ptr %i.bh to i64               ; 9 uses
  %i.bm = icmp ne ptr %i.bh, null                 ; 2 uses
  %i.bn = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.bo = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.bp = fsub <4 x float> zeroinitializer, %i.aj
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.br = getelementptr i8, ptr %4, i64 -8
  %i.bs = getelementptr i8, ptr %4, i64 -4
  br label %bb.i

bb.i:                                             ; preds = %b3AABB_Overlaps.exit.thread, %b3LoadV.exit227
  %.0756 = phi float [ %i.ap, %b3LoadV.exit227 ], [ %.6, %b3AABB_Overlaps.exit.thread ] ; 10 uses
  %.0176755 = phi i32 [ 1, %b3LoadV.exit227 ], [ %.5181, %b3AABB_Overlaps.exit.thread ] ; 4 uses
  %.sroa.0.0754 = phi <2 x float> [ %i.ba, %b3LoadV.exit227 ], [ %.sroa.0.2, %b3AABB_Overlaps.exit.thread ] ; 10 uses
  %.sroa.6.0753 = phi float [ %i.at, %b3LoadV.exit227 ], [ %.sroa.6.2, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %.sroa.9.0752 = phi <2 x float> [ %i.bd, %b3LoadV.exit227 ], [ %.sroa.9.2, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %.sroa.13.0751 = phi float [ %i.bf, %b3LoadV.exit227 ], [ %.sroa.13.2, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %.sroa.0339.0750 = phi i32 [ 0, %b3LoadV.exit227 ], [ %.sroa.0339.1, %b3AABB_Overlaps.exit.thread ] ; 3 uses
  %.sroa.4.0749 = phi i32 [ 0, %b3LoadV.exit227 ], [ %.sroa.4.1, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %i.bt = add nsw i32 %.0176755, -1               ; 8 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bu ; 3 uses
  %i.bw = shl nuw nsw i64 %i.bu, 2
  %i.bx = add i64 %i.bw, %i.bk, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.bx, %i.bk, !nosanitize !9
  br i1 %.not, label %bb.j, label %bb.k, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @101, i64 %i.bk, i64 %i.bx) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !47 ; 4 uses
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %b3AABB_Overlaps.exit.thread, label %bb.l, !llvm.loop !83

bb.l:                                             ; preds = %bb.k
  %i.ca = sext i32 %i.by to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [48 x i8], ptr %i.bh, i64 %i.ca ; 13 uses
  %i.cc = mul nsw i64 %i.ca, 48
  %i.cd = add i64 %i.cc, %i.bl, !nosanitize !9    ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = xor i1 %i.bm, %i.ce
  %i.cg = icmp uge i64 %i.cd, %i.bl, !nosanitize !9
  %i.ch = icmp slt i32 %i.by, 0
  %i.ci = xor i1 %i.ch, %i.cg
  %i.cj = and i1 %i.cf, %i.ci, !nosanitize !9
  br i1 %i.cj, label %bb.n, label %bb.m, !prof !20, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @102, i64 %i.bl, i64 %i.cd) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.ck = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0339.0750, i32 1), !nosanitize !9 ; 2 uses
  %i.cl = extractvalue { i32, i1 } %i.ck, 1, !nosanitize !9
  br i1 %i.cl, label %bb.o, label %bb.p, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %i.cm = zext nneg i32 %.sroa.0339.0750 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @103, i64 %i.cm, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %i.cn = extractvalue { i32, i1 } %i.ck, 0, !nosanitize !9 ; 9 uses
  %i.co = ptrtoint ptr %i.cb to i64, !nosanitize !9 ; 5 uses
  %i.cp = and i64 %i.co, 7, !nosanitize !9
  %i.cq = icmp eq i64 %i.cp, 0, !nosanitize !9
  %i.cr = and i1 %i.bm, %i.cq                     ; 2 uses
  br i1 %3, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.cr, label %.split, label %bb.r, !prof !20, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @104, i64 %i.co) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split:                                           ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !38
  %i.cu = and i64 %i.ct, %2
  %.not379 = icmp eq i64 %i.cu, %2
  br i1 %.not379, label %bb.v, label %b3AABB_Overlaps.exit.thread, !llvm.loop !83

bb.s:                                             ; preds = %bb.p
  br i1 %i.cr, label %bb.u, label %bb.t, !prof !20, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %i.co) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !38
  %i.cx = and i64 %i.cw, %2
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %b3AABB_Overlaps.exit.thread, label %bb.v, !llvm.loop !83

bb.v:                                             ; preds = %bb.u, %.split
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 12 ; 3 uses
  %.sroa.7344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.7344.0.copyload = load float, ptr %.sroa.7344.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0754, i64 1
  %i.cz = fcmp uge float %.sroa.7344.0.copyload, %.sroa.0.4.vec.extract
  %i.da = fcmp uge float %.sroa.8.0.copyload, %.sroa.6.0753
  %i.db = load <4 x float>, ptr %i.cb, align 8    ; 3 uses
  %i.dc = shufflevector <2 x float> %.sroa.9.0752, <2 x float> %.sroa.0.0754, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.dd = insertelement <4 x float> %i.dc, float %.sroa.13.0751, i64 2 ; 2 uses
  %i.de = fcmp ule <4 x float> %i.db, %i.dd
  %i.df = fcmp uge <4 x float> %i.db, %i.dd
  %i.dg = shufflevector <4 x i1> %i.de, <4 x i1> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dh = freeze <4 x i1> %i.dg
  %i.di = bitcast <4 x i1> %i.dh to i4
  %i.dj = icmp eq i4 %i.di, -1
  %.fr = freeze i1 %i.cz
  %op.rdx = and i1 %i.dj, %.fr
  %op.rdx1523 = select i1 %op.rdx, i1 %i.da, i1 false
  br i1 %op.rdx1523, label %_mm_load_sd.exit.i258, label %b3AABB_Overlaps.exit.thread, !llvm.loop !83

_mm_load_sd.exit.i258:                            ; preds = %bb.v
  %i.dk = add i64 %i.co, 8, !nosanitize !9        ; 2 uses
  %i.dl = icmp ne i64 %i.dk, 0, !nosanitize !9
  %i.dm = icmp ult ptr %i.cb, inttoptr (i64 -8 to ptr)
  %i.dn = and i1 %i.dm, %i.dl, !nosanitize !9
  br i1 %i.dn, label %b3LoadV.exit259, label %bb.w, !prof !20, !nosanitize !9

bb.w:                                             ; preds = %_mm_load_sd.exit.i258
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.co, i64 %i.dk) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit259:                                  ; preds = %_mm_load_sd.exit.i258
  %i.do = icmp ult ptr %.sroa.6343.0..sroa_idx, inttoptr (i64 -8 to ptr)
  br i1 %i.do, label %b3LoadV.exit261, label %bb.x, !prof !20, !nosanitize !9

bb.x:                                             ; preds = %b3LoadV.exit259
  %i.dp = ptrtoint ptr %.sroa.6343.0..sroa_idx to i64, !nosanitize !9 ; 2 uses
  %i.dq = add i64 %i.dp, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @221, i64 %i.dp, i64 %i.dq) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit261:                                  ; preds = %b3LoadV.exit259
  %i.dr = load double, ptr %.sroa.6343.0..sroa_idx, align 4, !tbaa !24
  %i.ds = load double, ptr %i.cb, align 8, !tbaa !24
  %i.dt = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.du = bitcast <2 x double> %i.dt to <4 x float>
  %i.dv = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.db, <4 x i32> <i32 6, i32 1, i32 poison, i32 poison>
  %i.dw = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dx = fsub <4 x float> %i.dw, %i.an
  %i.dy = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dz = bitcast <2 x double> %i.dy to <4 x float>
  %i.ea = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.8.0.copyload, i64 0
  %i.eb = shufflevector <4 x float> %i.dz, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ec = fadd <4 x float> %i.an, %i.eb           ; 2 uses
  %i.ed = fadd <4 x float> %i.dx, %i.ec
  %i.ee = fmul <4 x float> %i.ed, splat (float 5.000000e-01) ; 2 uses
  %i.ef = fsub <4 x float> %i.ec, %i.ee           ; 2 uses
  %i.eg = fsub <4 x float> %i.ac, %i.ee           ; 2 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ei = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ej = fmul <4 x float> %i.bn, %i.ei
  %i.ek = fmul <4 x float> %i.bo, %i.eh
  %i.el = fsub <4 x float> %i.ej, %i.ek           ; 2 uses
  %i.em = fsub <4 x float> zeroinitializer, %i.el
  %i.en = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.em, <4 x float> %i.el)
  %i.eo = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bp, <4 x float> %i.aj) ; 2 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.eq = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.er = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.es = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.et = fmul <4 x float> %i.ep, %i.es
  %i.eu = fmul <4 x float> %i.eq, %i.er
  %i.ev = fadd <4 x float> %i.et, %i.eu
  %i.ew = fsub <4 x float> %i.en, %i.ev
  %i.ex = fcmp ole <4 x float> %i.ew, zeroinitializer
  %i.ey = bitcast <4 x i1> %i.ex to i4
  %i.ez = and i4 %i.ey, 7
  %i.fa = icmp eq i4 %i.ez, 7
  br i1 %i.fa, label %b3IsLeaf.exit, label %b3AABB_Overlaps.exit.thread, !llvm.loop !83

b3IsLeaf.exit:                                    ; preds = %b3LoadV.exit261
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cb, i64 46
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !40
  %i.fd = and i16 %i.fc, 4
  %.not389 = icmp eq i16 %i.fd, 0
  br i1 %.not389, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %b3IsLeaf.exit
  store float %.0756, ptr %i.bq, align 4, !tbaa !86
  %i.fe = load i32, ptr %i.br, align 4, !nosanitize !9
  %i.ff = icmp eq i32 %i.fe, -1056584962, !nosanitize !9
  br i1 %i.ff, label %bb.z, label %bb.ab, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  %i.fg = load i32, ptr %i.bs, align 8, !nosanitize !9
  %i.fh = icmp eq i32 %i.fg, -1733199055, !nosanitize !9
  br i1 %i.fh, label %bb.ab, label %bb.aa, !prof !20, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  %i.fi = ptrtoint ptr %4 to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @107, i64 %i.fi) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !24
  %i.fl = call float %4(ptr noundef nonnull %9, i32 noundef %i.by, i64 noundef %i.fk, ptr noundef %5) #12 ; 6 uses
  %i.fm = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.4.0749, i32 1), !nosanitize !9 ; 2 uses
  %i.fn = extractvalue { i32, i1 } %i.fm, 1, !nosanitize !9
  br i1 %i.fn, label %bb.ac, label %bb.ad, !prof !10, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  %i.fo = zext nneg i32 %.sroa.4.0749 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @108, i64 %i.fo, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.fp = extractvalue { i32, i1 } %i.fm, 0, !nosanitize !9 ; 3 uses
  %i.fq = fcmp une float %i.fl, 0.000000e+00
  br i1 %i.fq, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.fr = fcmp ogt float %i.fl, 0.000000e+00
  %i.fs = fcmp olt float %i.fl, %.0756
  %or.cond = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond, label %bb.af, label %b3AABB_Overlaps.exit.thread

bb.af:                                            ; preds = %bb.ae
  %.sroa.060.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.261.0.copyload = load float, ptr %.sroa.2140.0..sroa_idx, align 4
  %i.ft = fmul float %i.fl, %.sroa.261.0.copyload ; 2 uses
  %i.fu = fadd float %.sroa.7.0.copyload, %i.ft   ; 2 uses
  %i.fv = fcmp olt float %.sroa.7.0.copyload, %i.fu
  %i.fw = select i1 %i.fv, float %.sroa.7.0.copyload, float %i.fu
  %i.fx = fadd float %.sroa.15.0.copyload, %i.ft  ; 2 uses
  %i.fy = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x float> %i.fz, %.sroa.060.0.copyload ; 2 uses
  %i.gb = fadd <2 x float> %.sroa.0332.0.copyload, %i.ga ; 2 uses
  %i.gc = fcmp olt <2 x float> %.sroa.0332.0.copyload, %i.gb
  %i.gd = select <2 x i1> %i.gc, <2 x float> %.sroa.0332.0.copyload, <2 x float> %i.gb
  %i.ge = fadd <2 x float> %.sroa.11.0.copyload, %i.ga ; 2 uses
  %i.gf = fcmp ogt <2 x float> %.sroa.11.0.copyload, %i.ge
  %i.gg = select <2 x i1> %i.gf, <2 x float> %.sroa.11.0.copyload, <2 x float> %i.ge
  %i.gh = fcmp ogt float %.sroa.15.0.copyload, %i.fx
  %i.gi = select i1 %i.gh, float %.sroa.15.0.copyload, float %i.fx
  br label %b3AABB_Overlaps.exit.thread

bb.ag:                                            ; preds = %b3IsLeaf.exit
  %.not207 = icmp eq i32 %.0176755, 1024
  br i1 %.not207, label %b3AABB_Overlaps.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !24 ; 3 uses
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [48 x i8], ptr %i.bh, i64 %i.gl ; 5 uses
  %i.gn = mul nsw i64 %i.gl, 48
  %i.go = add i64 %i.gn, %i.bl, !nosanitize !9    ; 3 uses
  %i.gp = icmp ne i64 %i.go, 0
  %i.gq = icmp uge i64 %i.go, %i.bl, !nosanitize !9
  %i.gr = icmp slt i32 %i.gk, 0
  %i.gs = xor i1 %i.gr, %i.gq
  %i.gt = and i1 %i.gp, %i.gs, !nosanitize !9
  br i1 %i.gt, label %bb.aj, label %bb.ai, !prof !20, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @109, i64 %i.bl, i64 %i.go) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  %i.gu = ptrtoint ptr %i.gm to i64, !nosanitize !9 ; 2 uses
  %i.gv = and i64 %i.gu, 7, !nosanitize !9
  %i.gw = icmp eq i64 %i.gv, 0, !nosanitize !9
  br i1 %i.gw, label %bb.al, label %bb.ak, !prof !20, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.gu) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.aj
  %.sroa.0345.0.copyload = load <2 x float>, ptr %i.gm, align 8
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.sroa.4346.0.copyload = load float, ptr %.sroa.4346.0..sroa_idx, align 8
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %.sroa.5347.0.copyload = load <2 x float>, ptr %.sroa.5347.0..sroa_idx, align 4
  %.sroa.6348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  %.sroa.6348.0.copyload = load float, ptr %.sroa.6348.0..sroa_idx, align 4
  %i.gx = fadd <2 x float> %.sroa.0345.0.copyload, %.sroa.5347.0.copyload
  %i.gy = fadd float %.sroa.4346.0.copyload, %.sroa.6348.0.copyload
  %i.gz = fmul <2 x float> %i.gx, splat (float 5.000000e-01)
  %i.ha = fmul float %i.gy, 5.000000e-01
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cb, i64 36 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !24 ; 3 uses
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds [48 x i8], ptr %i.bh, i64 %i.hd ; 5 uses
  %i.hf = mul nsw i64 %i.hd, 48
  %i.hg = add i64 %i.hf, %i.bl, !nosanitize !9    ; 3 uses
  %i.hh = icmp ne i64 %i.hg, 0
  %i.hi = icmp uge i64 %i.hg, %i.bl, !nosanitize !9
  %i.hj = icmp slt i32 %i.hc, 0
  %i.hk = xor i1 %i.hj, %i.hi
  %i.hl = and i1 %i.hh, %i.hk, !nosanitize !9
  br i1 %i.hl, label %bb.an, label %bb.am, !prof !20, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.bl, i64 %i.hg) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.al
  %i.hm = ptrtoint ptr %i.he to i64, !nosanitize !9 ; 2 uses
  %i.hn = and i64 %i.hm, 7, !nosanitize !9
  %i.ho = icmp eq i64 %i.hn, 0, !nosanitize !9
  br i1 %i.ho, label %bb.ap, label %bb.ao, !prof !20, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @112, i64 %i.hm) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ap:                                            ; preds = %bb.an
  %.sroa.0349.0.copyload = load <2 x float>, ptr %i.he, align 8
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.4350.0.copyload = load float, ptr %.sroa.4350.0..sroa_idx, align 8
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %.sroa.5351.0.copyload = load <2 x float>, ptr %.sroa.5351.0..sroa_idx, align 4
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  %.sroa.6352.0.copyload = load float, ptr %.sroa.6352.0..sroa_idx, align 4
  %i.hp = fadd float %.sroa.4350.0.copyload, %.sroa.6352.0.copyload
  %i.hq = fmul float %i.hp, 5.000000e-01
  %.sroa.03.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.2160.0..sroa_idx, align 8
  %i.hr = fsub <2 x float> %.sroa.03.0.copyload, %i.gz ; 2 uses
  %i.hs = fmul <2 x float> %i.hr, %i.hr           ; 2 uses
  %i.ht = fadd <2 x float> %.sroa.0349.0.copyload, %.sroa.5351.0.copyload
  %i.hu = fmul <2 x float> %i.ht, splat (float 5.000000e-01)
  %i.hv = fsub <2 x float> %.sroa.03.0.copyload, %i.hu ; 2 uses
  %i.hw = fmul <2 x float> %i.hv, %i.hv           ; 2 uses
  %16 = insertelement <2 x float> poison, float %.sroa.24.0.copyload, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %i.hq, i64 1
  %i.hz = fsub <2 x float> %17, %i.hy             ; 2 uses
  %i.ia = shufflevector <2 x float> %i.hs, <2 x float> %i.hw, <2 x i32> <i32 0, i32 2>
  %i.ib = shufflevector <2 x float> %i.hs, <2 x float> %i.hw, <2 x i32> <i32 1, i32 3>
  %i.ic = fadd <2 x float> %i.ia, %i.ib
  %i.id = fmul <2 x float> %i.hz, %i.hz
  %i.ie = fadd <2 x float> %i.id, %i.ic           ; 2 uses
  %i.if = extractelement <2 x float> %i.ie, i64 0
  %i.ig = extractelement <2 x float> %i.ie, i64 1
  %i.ih = fcmp olt float %i.if, %i.ig
  %i.ii = zext nneg i32 %.0176755 to i64          ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ii
  %i.ik = shl nuw nsw i64 %i.ii, 2
  %i.il = add i64 %i.ik, %i.bk, !nosanitize !9    ; 3 uses
  %.not209 = icmp ult i64 %i.il, %i.bk, !nosanitize !9 ; 2 uses
  br i1 %i.ih, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.hc, ptr %i.bv, align 4, !tbaa !47
  br i1 %.not209, label %bb.ar, label %bb.au, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @113, i64 %i.bk, i64 %i.il) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.ap
  store i32 %i.gk, ptr %i.bv, align 4, !tbaa !47
  br i1 %.not209, label %bb.at, label %bb.au, !prof !10, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.bk, i64 %i.il) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.au:                                            ; preds = %bb.as, %bb.aq
  %.sink.in = phi ptr [ %i.gj, %bb.aq ], [ %i.hb, %bb.as ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !24
  store i32 %.sink, ptr %i.ij, align 4, !tbaa !47
  %.1177 = add nuw nsw i32 %.0176755, 1
  br label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.af, %bb.ae, %bb.v, %.split, %bb.u, %bb.au, %bb.ag, %b3LoadV.exit261, %bb.k
  %.sroa.4.1 = phi i32 [ %.sroa.4.0749, %bb.k ], [ %.sroa.4.0749, %bb.u ], [ %i.fp, %bb.af ], [ %.sroa.4.0749, %bb.ag ], [ %.sroa.4.0749, %bb.au ], [ %.sroa.4.0749, %b3LoadV.exit261 ], [ %.sroa.4.0749, %bb.v ], [ %.sroa.4.0749, %.split ], [ %i.fp, %bb.ae ] ; 2 uses
  %.sroa.0339.1 = phi i32 [ %.sroa.0339.0750, %bb.k ], [ %i.cn, %bb.u ], [ %i.cn, %bb.af ], [ %i.cn, %bb.ag ], [ %i.cn, %bb.au ], [ %i.cn, %b3LoadV.exit261 ], [ %i.cn, %bb.v ], [ %i.cn, %.split ], [ %i.cn, %bb.ae ] ; 2 uses
  %.sroa.13.2 = phi float [ %.sroa.13.0751, %bb.k ], [ %.sroa.13.0751, %bb.u ], [ %i.gi, %bb.af ], [ %.sroa.13.0751, %bb.ag ], [ %.sroa.13.0751, %bb.au ], [ %.sroa.13.0751, %b3LoadV.exit261 ], [ %.sroa.13.0751, %bb.v ], [ %.sroa.13.0751, %.split ], [ %.sroa.13.0751, %bb.ae ]
  %.sroa.9.2 = phi <2 x float> [ %.sroa.9.0752, %bb.k ], [ %.sroa.9.0752, %bb.u ], [ %i.gg, %bb.af ], [ %.sroa.9.0752, %bb.ag ], [ %.sroa.9.0752, %bb.au ], [ %.sroa.9.0752, %b3LoadV.exit261 ], [ %.sroa.9.0752, %bb.v ], [ %.sroa.9.0752, %.split ], [ %.sroa.9.0752, %bb.ae ]
  %.sroa.6.2 = phi float [ %.sroa.6.0753, %bb.k ], [ %.sroa.6.0753, %bb.u ], [ %i.fw, %bb.af ], [ %.sroa.6.0753, %bb.ag ], [ %.sroa.6.0753, %bb.au ], [ %.sroa.6.0753, %b3LoadV.exit261 ], [ %.sroa.6.0753, %bb.v ], [ %.sroa.6.0753, %.split ], [ %.sroa.6.0753, %bb.ae ]
  %.sroa.0.2 = phi <2 x float> [ %.sroa.0.0754, %bb.k ], [ %.sroa.0.0754, %bb.u ], [ %i.gd, %bb.af ], [ %.sroa.0.0754, %bb.ag ], [ %.sroa.0.0754, %bb.au ], [ %.sroa.0.0754, %b3LoadV.exit261 ], [ %.sroa.0.0754, %bb.v ], [ %.sroa.0.0754, %.split ], [ %.sroa.0.0754, %bb.ae ]
  %.5181 = phi i32 [ %i.bt, %bb.k ], [ %i.bt, %bb.u ], [ %i.bt, %bb.af ], [ 1023, %bb.ag ], [ %.1177, %bb.au ], [ %i.bt, %b3LoadV.exit261 ], [ %i.bt, %bb.v ], [ %i.bt, %.split ], [ %i.bt, %bb.ae ] ; 2 uses
  %.6 = phi float [ %.0756, %bb.k ], [ %.0756, %bb.u ], [ %i.fl, %bb.af ], [ %.0756, %bb.ag ], [ %.0756, %bb.au ], [ %.0756, %b3LoadV.exit261 ], [ %.0756, %bb.v ], [ %.0756, %.split ], [ %.0756, %bb.ae ]
  %.not1409 = icmp eq i32 %.5181, 0
  br i1 %.not1409, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.ad, %b3AABB_Overlaps.exit.thread
  %.sroa.4.2 = phi i32 [ %.sroa.4.1, %b3AABB_Overlaps.exit.thread ], [ %i.fp, %bb.ad ]
  %.sroa.0339.2 = phi i32 [ %.sroa.0339.1, %b3AABB_Overlaps.exit.thread ], [ %i.cn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.im = zext i32 %.sroa.4.2 to i64
  %i.in = shl nuw i64 %i.im, 32
  %i.io = zext i32 %.sroa.0339.2 to i64
  %i.ip = or disjoint i64 %i.in, %i.io
  br label %bb.av

bb.av:                                            ; preds = %bb.c, %.thread
  %.sroa.0339.0.insert.insert = phi i64 [ 0, %bb.c ], [ %i.ip, %.thread ]
  ret i64 %.sroa.0339.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i32 @b3DynamicTree_Rebuild(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #6 !func_sanitize !88 {
bb.a:
  %2 = alloca [1024 x %struct.b3RebuildItem], align 16 ; 13 uses
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %i.b = icmp ne ptr %0, null, !nosanitize !9
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %i.c) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27   ; 5 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.dr, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = icmp sgt i32 %i.h, %i.k
  br i1 %i.l, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = sdiv i32 %i.h, 2                         ; 2 uses
  %i.n = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.h, i32 %i.m), !nosanitize !9 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1, !nosanitize !9
  br i1 %i.o, label %bb.f, label %bb.g, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.p = zext i32 %i.h to i64, !nosanitize !9
  %i.q = zext i32 %i.m to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @116, i64 %i.p, i64 %i.q) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.r = extractvalue { i32, i1 } %i.n, 0, !nosanitize !9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = sext i32 %i.k to i64
  %i.v = shl nsw i64 %i.u, 2
  tail call void @b3Free(ptr noundef %i.t, i64 noundef %i.v) #12
  %i.w = sext i32 %i.r to i64                     ; 2 uses
  %i.x = shl nsw i64 %i.w, 2
  %i.y = tail call ptr @b3Alloc(i64 noundef %i.x) #12
  store ptr %i.y, ptr %i.s, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !29
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, 12
  tail call void @b3Free(ptr noundef %i.aa, i64 noundef %i.ad) #12
  %i.ae = mul nsw i64 %i.w, 12
  %i.af = tail call ptr @b3Alloc(i64 noundef %i.ae) #12
  store ptr %i.af, ptr %i.z, align 8, !tbaa !30
  store i32 %i.r, ptr %i.j, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !19 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 5 uses
  %i.ak = sext i32 %i.ah to i64                   ; 2 uses
  %i.al = getelementptr inbounds [48 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = mul nsw i64 %i.ak, 48
  %i.an = ptrtoint ptr %i.aj to i64, !nosanitize !9 ; 9 uses
  %i.ao = add i64 %i.am, %i.an, !nosanitize !9    ; 3 uses
  %i.ap = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = xor i1 %i.ap, %i.aq
  %i.as = icmp uge i64 %i.ao, %i.an, !nosanitize !9
  %i.at = icmp slt i32 %i.ah, 0
  %i.au = xor i1 %i.at, %i.as
  %i.av = and i1 %i.ar, %i.au, !nosanitize !9
  br i1 %i.av, label %bb.j, label %bb.i, !prof !20, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @117, i64 %i.an, i64 %i.ao) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !30 ; 3 uses
  %i.ba = ptrtoint ptr %i.al to i64, !nosanitize !9 ; 2 uses
  %i.bb = and i64 %i.ba, 7, !nosanitize !9
  %i.bc = icmp eq i64 %i.bb, 0, !nosanitize !9
  %i.bd = and i1 %i.bc, %i.ap
  br i1 %i.bd, label %.lr.ph.lr.ph, label %.outer._crit_edge, !prof !89, !nosanitize !9

.lr.ph.lr.ph:                                     ; preds = %bb.j
  %i.be = ptrtoint ptr %i.a to i64                ; 6 uses
  %i.bf = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.bg = icmp ne ptr %i.ax, null                 ; 2 uses
  %i.bh = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bi = icmp ne ptr %i.az, null                 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %indvars.iv = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv.next, %.outer ] ; 6 uses
  %.052.ph796 = phi ptr [ %i.al, %.lr.ph.lr.ph ], [ %i.ef, %.outer ]
  %.053.ph795 = phi i32 [ %i.ah, %.lr.ph.lr.ph ], [ %i.dw, %.outer ]
  %.054.ph794 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.do, %.outer ]
  br label %b3IsLeaf.exit

.outer._crit_edge:                                ; preds = %.outer, %bb.ae, %bb.j
  %.lcssa618 = phi i64 [ %i.dk, %bb.ae ], [ %i.ba, %bb.j ], [ %i.eg, %.outer ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @219, i64 %.lcssa618) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3IsLeaf.exit:                                    ; preds = %bb.ae, %.lr.ph
  %.052791 = phi ptr [ %.052.ph796, %.lr.ph ], [ %i.dj, %bb.ae ] ; 8 uses
  %.053790 = phi i32 [ %.053.ph795, %.lr.ph ], [ %i.cr, %bb.ae ] ; 2 uses
  %.054789 = phi i32 [ %.054.ph794, %.lr.ph ], [ %.1, %bb.ae ] ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.052791, i64 46
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !40 ; 2 uses
  %i.bl = and i16 %i.bk, 4
  %.not70 = icmp eq i16 %i.bl, 0
  br i1 %.not70, label %bb.k, label %bb.l

end_hunk_0
