Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3SolveJointsTask:bb.a
.lr.ph.split.us.split.split.us.split.us:          ; preds = %bb.x, %b3GetBit.exit.us.us.us, %bb.q
  %indvars.iv.next325 = add nsw i64 %indvars.iv324456, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.split.us, label %.lr.ph457

.lr.ph.split.split:                               ; preds = %.lr.ph
  %i.ee = icmp sgt i32 %i.av, %.sroa.0.0.extract.trunc
  br i1 %i.ee, label %.lr.ph143.preheader, label %.split.us

.lr.ph143.preheader:                              ; preds = %.lr.ph.split.split
  %sext341 = shl i64 %0, 32
  %i.ef = ashr exact i64 %sext341, 32
  %wide.trip.count = sext i32 %i.av to i64
  br label %.lr.ph143

._crit_edge:                                      ; preds = %bb.m
  %i.eg = and i64 %0, 4294967295
  %i.eh = and i64 %.sroa.3.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @309, i64 %i.eg, i64 %i.eh) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.y, %.lr.ph.split.us.split.split.us.split.us, %.lr.ph.split.us.split.split.us.split.us.preheader, %.lr.ph.split.split, %.lr.ph.split.us.split.us
  ret void

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.y
  %indvars.iv = phi i64 [ %i.ef, %.lr.ph143.preheader ], [ %indvars.iv.next, %bb.y ] ; 4 uses
  %i.ei = mul nsw i64 %indvars.iv, 444
  %i.ej = add i64 %i.ei, %i.aw, !nosanitize !9    ; 3 uses
  %i.ek = icmp eq i64 %i.ej, 0
  %i.el = xor i1 %i.ax, %i.ek
  %i.em = icmp uge i64 %i.ej, %i.aw, !nosanitize !9
  %i.en = icmp slt i64 %indvars.iv, 0
  %i.eo = xor i1 %i.en, %i.em
  %i.ep = and i1 %i.el, %i.eo, !nosanitize !9
  br i1 %i.ep, label %bb.y, label %.split101.us, !prof !10, !nosanitize !9

.split101.us:                                     ; preds = %.lr.ph143, %.lr.ph457, %bb.n
  %.us-phi102 = phi i64 [ %i.bn, %.lr.ph457 ], [ %i.bc, %bb.n ], [ %i.ej, %.lr.ph143 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @310, i64 %i.aw, i64 %.us-phi102) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %.lr.ph143
  %i.eq = getelementptr inbounds [444 x i8], ptr %.fr222, i64 %indvars.iv
  tail call void @b3SolveJoint(ptr noundef %i.eq, ptr noundef nonnull %1, i1 noundef zeroext false) #12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.us, label %.lr.ph143

.split104.us:                                     ; preds = %bb.o, %.split104.us.split.us
  %.us-phi146 = phi i64 [ %i.bj, %.split104.us.split.us ], [ %i.bt, %bb.o ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @312, i64 %.us-phi146) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split118.us:                                     ; preds = %bb.s
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @425, i64 %i.cj, i64 %i.ck) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split122.us:                                     ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @426, i64 %i.cq) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split131.us:                                     ; preds = %bb.v
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @313, i64 %i.do, i64 %i.dp) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split135.us:                                     ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @314, i64 %i.dv) #11, !nosanitize !9
  unreachable, !nosanitize !9
}

declare void @b3SolveContacts_Convex(i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3SolveContacts_Mesh(i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3ApplyRestitution_Convex(i64, ptr noundef) local_unnamed_addr #3

declare void @b3ApplyRestitution_Mesh(i64, ptr noundef) local_unnamed_addr #3

declare void @b3StoreImpulses_Convex(i64, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @b3StoreImpulses_Mesh(i64, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @b3PrepareJoint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3WarmStartJoint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3SolveJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3GetJointReaction(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #3

declare zeroext i1 @b3IsValidVec3(<2 x float>, float) local_unnamed_addr #3

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @b3SolveContinuous(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !func_sanitize !388 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 7 uses
  %4 = alloca %struct.b3ContinuousContext, align 8 ; 39 uses
  %5 = alloca %struct.b3AABB, align 8             ; 5 uses
  %6 = alloca %struct.b3AABB, align 8             ; 9 uses
  %7 = alloca %struct.b3Transform, align 8        ; 9 uses
  %8 = alloca %struct.b3AABB, align 8             ; 9 uses
  %i.a = tail call i64 @b3GetTicks() #12
  %i.b = icmp ne ptr %0, null, !nosanitize !9
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @357, i64 %i.c) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64, !nosanitize !9 ; 2 uses
  %i.k = add i64 %i.j, 176, !nosanitize !9        ; 2 uses
  %i.l = icmp ne ptr %i.h, null, !nosanitize !9
  %i.m = icmp ne i64 %i.k, 0
  %i.n = and i1 %i.l, %i.m
  %i.o = icmp ult ptr %i.h, inttoptr (i64 -176 to ptr)
  %i.p = and i1 %i.o, %i.n, !nosanitize !9
  br i1 %i.p, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @358, i64 %i.j, i64 %i.k) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.i to i64, !nosanitize !9 ; 2 uses
  %i.r = and i64 %i.q, 7, !nosanitize !9
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !9
  br i1 %i.s, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @359, i64 %i.q) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !94   ; 3 uses
  %i.u = sext i32 %1 to i64                       ; 4 uses
  %i.v = getelementptr inbounds [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = mul nsw i64 %i.u, 216
  %i.x = ptrtoint ptr %i.t to i64, !nosanitize !9 ; 3 uses
  %i.y = add i64 %i.w, %i.x, !nosanitize !9       ; 3 uses
  %i.z = icmp ne ptr %i.t, null, !nosanitize !9   ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = xor i1 %i.z, %i.aa
  %i.ac = icmp uge i64 %i.y, %i.x, !nosanitize !9
  %i.ad = icmp slt i32 %1, 0                      ; 2 uses
  %i.ae = xor i1 %i.ad, %i.ac
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !9
  br i1 %i.af, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @360, i64 %i.x, i64 %i.y) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ag = ptrtoint ptr %i.v to i64, !nosanitize !9 ; 2 uses
  %i.ah = and i64 %i.ag, 3, !nosanitize !9
  %i.ai = icmp eq i64 %i.ah, 0, !nosanitize !9
  %i.aj = and i1 %i.z, %i.ai
  br i1 %i.aj, label %b3MakeRelativeSweep.exit, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @361, i64 %i.ag) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3MakeRelativeSweep.exit:                         ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 3 uses
  %.sroa.0205.0.copyload = load <2 x float>, ptr %i.ak, align 4, !tbaa !146 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !146 ; 8 uses
  %i.al = fsub float %.sroa.8.0.copyload, %.sroa.8.0.copyload ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 28 ; 3 uses
  %.sroa.03.0.copyload.i299 = load <2 x float>, ptr %i.am, align 4, !noalias !389
  %.sroa.24.0..sroa_idx.i300 = getelementptr inbounds nuw i8, ptr %i.v, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i301 = load float, ptr %.sroa.24.0..sroa_idx.i300, align 4, !noalias !389
  %i.an = fsub <2 x float> %.sroa.0205.0.copyload, %.sroa.0205.0.copyload ; 5 uses
  %i.ao = fsub <2 x float> %.sroa.03.0.copyload.i299, %.sroa.0205.0.copyload ; 5 uses
  %i.ap = fsub float %.sroa.24.0.copyload.i301, %.sroa.8.0.copyload ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 3 uses
  %.sroa.28.36.copyload487 = load <2 x float>, ptr %i.aq, align 4, !tbaa !146 ; 13 uses
  %.sroa.32.36..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %.sroa.32.36.copyload488 = load <2 x float>, ptr %.sroa.32.36..sroa_idx, align 4, !tbaa !146 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %.sroa.34.52.copyload491 = load <2 x float>, ptr %i.ar, align 4, !tbaa !146 ; 13 uses
  %.sroa.38.52..sroa_idx492 = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.sroa.38.52.copyload493 = load <2 x float>, ptr %.sroa.38.52..sroa_idx492, align 4, !tbaa !146 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %.sroa.0475.0.copyload478 = load <2 x float>, ptr %i.as, align 4, !tbaa !146 ; 12 uses
  %.sroa.7479.0..sroa_idx480 = getelementptr inbounds nuw i8, ptr %i.v, i64 76
  %.sroa.7479.0.copyload481 = load float, ptr %.sroa.7479.0..sroa_idx480, align 4, !tbaa !146 ; 9 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.28.36.copyload487, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.32.36.copyload488, %.sroa.0475.0.copyload478
  %.sroa.09.0.vec.extract.i.i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.at = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.7479.0.copyload481
  %i.au = fsub float %.sroa.09.0.vec.extract.i.i.a, %i.at
  %i.av = shufflevector <2 x float> %.sroa.0475.0.copyload478, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = insertelement <2 x float> %i.av, float %.sroa.7479.0.copyload481, i64 1 ; 4 uses
  %i.ax = fmul <2 x float> %.sroa.28.36.copyload487, %i.aw
  %i.ay = shufflevector <2 x float> %.sroa.28.36.copyload487, <2 x float> %.sroa.32.36.copyload488, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.az = fmul <2 x float> %i.ay, %.sroa.0475.0.copyload478
  %i.ba = fsub <2 x float> %i.ax, %i.az           ; 2 uses
  %i.bb = shufflevector <2 x float> %.sroa.32.36.copyload488, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bc = insertelement <2 x float> %i.av, float %.sroa.7479.0.copyload481, i64 0 ; 3 uses
  %i.bd = fmul <2 x float> %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.bb, %i.aw
  %i.bf = fadd <2 x float> %i.bd, %i.ba           ; 2 uses
  %i.bg = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x float> %i.bg, float %i.au, i64 0
  %i.bi = fadd <2 x float> %i.be, %i.bh           ; 2 uses
  %i.bj = fmul <2 x float> %i.ay, %i.bf
  %i.bk = shufflevector <2 x float> %.sroa.32.36.copyload488, <2 x float> %.sroa.28.36.copyload487, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bl = fmul <2 x float> %i.bk, %i.bi
  %i.bm = fsub <2 x float> %i.bj, %i.bl
  %i.bn = fmul <2 x float> %i.bm, splat (float 2.000000e+00)
  %i.bo = fadd <2 x float> %.sroa.0475.0.copyload478, %i.bn
  %i.bp = fsub <2 x float> %i.an, %i.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <2 x float> %.sroa.34.52.copyload491, ptr %i.bq, align 4, !tbaa !146
  %.sroa.38.52..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store <2 x float> %.sroa.38.52.copyload493, ptr %.sroa.38.52..sroa_idx, align 4, !tbaa !146
  %.sroa.09.0.vec.extract.i.i307 = extractelement <2 x float> %.sroa.34.52.copyload491, i64 0 ; 2 uses
  %foldExtExtBinop1358 = fmul <2 x float> %.sroa.38.52.copyload493, %.sroa.0475.0.copyload478
  %.sroa.09.0.vec.extract.i.i307.a = extractelement <2 x float> %foldExtExtBinop1358, i64 0
  %i.br = fmul float %.sroa.09.0.vec.extract.i.i307, %.sroa.7479.0.copyload481
  %i.bs = fsub float %.sroa.09.0.vec.extract.i.i307.a, %i.br
  %i.bt = fmul <2 x float> %.sroa.34.52.copyload491, %i.aw
  %i.bu = shufflevector <2 x float> %.sroa.34.52.copyload491, <2 x float> %.sroa.38.52.copyload493, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bv = fmul <2 x float> %i.bu, %.sroa.0475.0.copyload478
  %i.bw = fsub <2 x float> %i.bt, %i.bv           ; 2 uses
  %i.bx = shufflevector <2 x float> %.sroa.38.52.copyload493, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.by = fmul <2 x float> %i.bx, %i.bc
  %i.bz = fmul <2 x float> %i.bx, %i.aw
  %i.ca = fadd <2 x float> %i.by, %i.bw           ; 2 uses
  %i.cb = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cc = insertelement <2 x float> %i.cb, float %i.bs, i64 0
  %i.cd = fadd <2 x float> %i.bz, %i.cc           ; 2 uses
  %i.ce = fmul <2 x float> %i.bu, %i.ca
  %i.cf = shufflevector <2 x float> %.sroa.38.52.copyload493, <2 x float> %.sroa.34.52.copyload491, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = fsub <2 x float> %i.ce, %i.cg
  %i.ci = fmul <2 x float> %i.ch, splat (float 2.000000e+00)
  %i.cj = fadd <2 x float> %.sroa.0475.0.copyload478, %i.ci
  %i.ck = shufflevector <2 x float> %.sroa.28.36.copyload487, <2 x float> %.sroa.34.52.copyload491, <2 x i32> <i32 0, i32 2>
  %i.cl = shufflevector <2 x float> %i.bi, <2 x float> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cm = fmul <2 x float> %i.ck, %i.cl
  %i.cn = shufflevector <2 x float> %.sroa.28.36.copyload487, <2 x float> %.sroa.34.52.copyload491, <2 x i32> <i32 1, i32 3>
  %i.co = shufflevector <2 x float> %i.bf, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = fsub <2 x float> %i.cm, %i.cp
  %i.cr = fmul <2 x float> %i.cq, splat (float 2.000000e+00)
  %i.cs = insertelement <2 x float> poison, float %.sroa.7479.0.copyload481, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fadd <2 x float> %i.ct, %i.cr           ; 2 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  %i.cw = fsub float %i.al, %i.cv
  %i.cx = fsub <2 x float> %i.ao, %i.cj           ; 2 uses
  %i.cy = extractelement <2 x float> %i.cu, i64 1
  %i.cz = fsub float %i.ap, %i.cy                 ; 2 uses
  store <2 x float> %i.cx, ptr %3, align 8, !tbaa !146
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cz, ptr %.sroa.4184.0..sroa_idx, align 8, !tbaa !146
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64, !nosanitize !9 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.not = icmp ugt ptr %i.da, inttoptr (i64 -81 to ptr)
  br i1 %.not, label %bb.k, label %bb.l, !prof !97, !nosanitize !9

bb.k:                                             ; preds = %b3MakeRelativeSweep.exit
  %i.dd = add i64 %i.db, 80, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @362, i64 %i.db, i64 %i.dd) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %b3MakeRelativeSweep.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.not283 = icmp ugt ptr %i.da, inttoptr (i64 -161 to ptr)
  br i1 %.not283, label %bb.m, label %bb.n, !prof !97, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  %i.df = add i64 %i.db, 160, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @363, i64 %i.db, i64 %i.df) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.dh = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !139 ; 3 uses
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !151 ; 2 uses
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [128 x i8], ptr %i.di, i64 %i.dk ; 3 uses
  %i.dm = shl nsw i64 %i.dk, 7
  %i.dn = ptrtoint ptr %i.di to i64, !nosanitize !9 ; 3 uses
  %i.do = add i64 %i.dm, %i.dn, !nosanitize !9    ; 3 uses
  %i.dp = icmp ne ptr %i.di, null, !nosanitize !9 ; 2 uses
  %i.dq = icmp eq i64 %i.do, 0
  %i.dr = xor i1 %i.dp, %i.dq
  %i.ds = icmp uge i64 %i.do, %i.dn, !nosanitize !9
  %i.dt = icmp slt i32 %i.dj, 0
  %i.du = xor i1 %i.dt, %i.ds
  %i.dv = and i1 %i.dr, %i.du, !nosanitize !9
  br i1 %i.dv, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @364, i64 %i.dn, i64 %i.do) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.dw, i8 0, i64 232, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !176
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %.sroa.0475.0.copyload478, ptr %i.dx, align 8, !tbaa !146
  %.sroa.7479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %.sroa.7479.0.copyload481, ptr %.sroa.7479.0..sroa_idx, align 8, !tbaa !146
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60
  store <2 x float> %i.an, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !146
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %i.al, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !146
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %i.ao, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !146
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %i.ap, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !146
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 84
  store <2 x float> %.sroa.28.36.copyload487, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !146
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 92
  store <2 x float> %.sroa.32.36.copyload488, ptr %.sroa.32.0..sroa_idx, align 4, !tbaa !146
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 100
  store <2 x float> %.sroa.34.52.copyload491, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !146
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 108
  store <2 x float> %.sroa.38.52.copyload493, ptr %.sroa.38.0..sroa_idx, align 4, !tbaa !146
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 116
  store <2 x float> %.sroa.0205.0.copyload, ptr %i.dy, align 4, !tbaa !146
  %.sroa.8.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.dz, align 8, !tbaa !177
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 3 uses
  %i.eb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.8.0.copyload, i64 0
  store <2 x float> %i.eb, ptr %.sroa.8.0..sroa_idx210, align 4, !tbaa !146
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 212 ; 5 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !154
  %i.ee = and i32 %i.ed, 128
  %.not284 = icmp eq i32 %i.ee, 0
  %i.ef = ptrtoint ptr %i.dl to i64, !nosanitize !9 ; 2 uses
  %i.eg = and i64 %i.ef, 7, !nosanitize !9
  %i.eh = icmp eq i64 %i.eg, 0, !nosanitize !9
  %i.ei = and i1 %i.dp, %i.eh
  br i1 %i.ei, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @365, i64 %i.ef) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !153 ; 2 uses
  %.not285810 = icmp eq i32 %i.ek, -1
  br i1 %.not285810, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.sroa.5505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.8508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.415.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.4.0..sroa_idx.i371 = getelementptr inbounds nuw i8, ptr %6, i64 20
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.aa
  %.0259811 = phi i32 [ %i.fi, %bb.aa ], [ %i.ek, %.lr.ph ] ; 2 uses
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !136 ; 3 uses
  %i.er = sext i32 %.0259811 to i64               ; 2 uses
  %i.es = getelementptr inbounds [232 x i8], ptr %i.eq, i64 %i.er ; 12 uses
  %i.et = mul nsw i64 %i.er, 232
  %i.eu = ptrtoint ptr %i.eq to i64, !nosanitize !9 ; 3 uses
  %i.ev = add i64 %i.et, %i.eu, !nosanitize !9    ; 3 uses
  %i.ew = icmp ne ptr %i.eq, null, !nosanitize !9 ; 2 uses
  %i.ex = icmp eq i64 %i.ev, 0
  %i.ey = xor i1 %i.ew, %i.ex
  %i.ez = icmp uge i64 %i.ev, %i.eu, !nosanitize !9
  %i.fa = icmp slt i32 %.0259811, 0
  %i.fb = xor i1 %i.fa, %i.ez
  %i.fc = and i1 %i.ey, %i.fb, !nosanitize !9
  br i1 %i.fc, label %bb.t, label %bb.s, !prof !10, !nosanitize !9

bb.s:                                             ; preds = %.lr.ph.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @366, i64 %i.eu, i64 %i.ev) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %.lr.ph.split
  %i.fd = ptrtoint ptr %i.es to i64, !nosanitize !9 ; 2 uses
  %i.fe = and i64 %i.fd, 7, !nosanitize !9
  %i.ff = icmp eq i64 %i.fe, 0, !nosanitize !9
  %i.fg = and i1 %i.ew, %i.ff
  br i1 %i.fg, label %bb.v, label %bb.u, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @367, i64 %i.fd) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !155 ; 2 uses
  store ptr %i.es, ptr %i.em, align 8, !tbaa !178
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 88 ; 2 uses
  %.sroa.0139.0.copyload = load <2 x float>, ptr %i.fj, align 8 ; 4 uses
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 96 ; 2 uses
  %.sroa.2140.0.copyload = load float, ptr %.sroa.2140.0..sroa_idx, align 8 ; 4 uses
  %foldExtExtBinop1360 = fmul <2 x float> %.sroa.32.36.copyload488, %.sroa.0139.0.copyload
  %i.fk = extractelement <2 x float> %foldExtExtBinop1360, i64 0
  %i.fl = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2140.0.copyload
  %i.fm = fsub float %i.fk, %i.fl
  %i.fn = shufflevector <2 x float> %.sroa.0139.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fo = insertelement <2 x float> %i.fn, float %.sroa.2140.0.copyload, i64 1 ; 2 uses
  %i.fp = fmul <2 x float> %.sroa.28.36.copyload487, %i.fo
  %i.fq = fmul <2 x float> %i.ay, %.sroa.0139.0.copyload
  %i.fr = fsub <2 x float> %i.fp, %i.fq           ; 2 uses
  %i.fs = insertelement <2 x float> %i.fn, float %.sroa.2140.0.copyload, i64 0
  %i.ft = fmul <2 x float> %i.bb, %i.fs
  %i.fu = fmul <2 x float> %i.bb, %i.fo
  %i.fv = fadd <2 x float> %i.ft, %i.fr           ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fx = insertelement <2 x float> %i.fw, float %i.fm, i64 0
  %i.fy = fadd <2 x float> %i.fu, %i.fx           ; 2 uses
  %i.fz = fmul <2 x float> %i.ay, %i.fv
  %i.ga = fmul <2 x float> %i.bk, %i.fy
  %i.gb = fsub <2 x float> %i.fz, %i.ga
  %foldExtExtBinop1362 = fmul <2 x float> %.sroa.28.36.copyload487, %i.fy
  %foldExtExtBinop1364 = fmul <2 x float> %.sroa.28.36.copyload487, %i.fv
  %shift = shufflevector <2 x float> %foldExtExtBinop1364, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1366 = fsub <2 x float> %foldExtExtBinop1362, %shift
  %i.gc = extractelement <2 x float> %foldExtExtBinop1366, i64 0
  %i.gd = fmul <2 x float> %i.gb, splat (float 2.000000e+00)
  %i.ge = fadd <2 x float> %.sroa.0139.0.copyload, %i.gd
  %i.gf = fmul float %i.gc, 2.000000e+00
  %i.gg = fadd float %.sroa.2140.0.copyload, %i.gf
  %i.gh = fadd <2 x float> %i.bp, %i.ge
  %i.gi = fadd float %i.cw, %i.gg
  store <2 x float> %i.gh, ptr %i.en, align 8, !tbaa !146
  store float %i.gi, ptr %.sroa.4142.0..sroa_idx, align 8, !tbaa !146
  %.sroa.0131.0.copyload = load <2 x float>, ptr %i.fj, align 8 ; 4 uses
  %.sroa.2132.0.copyload = load float, ptr %.sroa.2140.0..sroa_idx, align 8 ; 4 uses
  %foldExtExtBinop1368 = fmul <2 x float> %.sroa.38.52.copyload493, %.sroa.0131.0.copyload
  %i.gj = extractelement <2 x float> %foldExtExtBinop1368, i64 0
  %i.gk = fmul float %.sroa.09.0.vec.extract.i.i307, %.sroa.2132.0.copyload
  %i.gl = fsub float %i.gj, %i.gk
  %i.gm = shufflevector <2 x float> %.sroa.0131.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gn = insertelement <2 x float> %i.gm, float %.sroa.2132.0.copyload, i64 1 ; 2 uses
  %i.go = fmul <2 x float> %.sroa.34.52.copyload491, %i.gn
  %i.gp = fmul <2 x float> %i.bu, %.sroa.0131.0.copyload
  %i.gq = fsub <2 x float> %i.go, %i.gp           ; 2 uses
  %i.gr = insertelement <2 x float> %i.gm, float %.sroa.2132.0.copyload, i64 0
  %i.gs = fmul <2 x float> %i.bx, %i.gr
  %i.gt = fmul <2 x float> %i.bx, %i.gn
  %i.gu = fadd <2 x float> %i.gs, %i.gq           ; 2 uses
  %i.gv = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.gl, i64 0
  %i.gx = fadd <2 x float> %i.gt, %i.gw           ; 2 uses
  %i.gy = fmul <2 x float> %i.bu, %i.gu
  %i.gz = fmul <2 x float> %i.cf, %i.gx
  %i.ha = fsub <2 x float> %i.gy, %i.gz
  %foldExtExtBinop1370 = fmul <2 x float> %.sroa.34.52.copyload491, %i.gx
  %foldExtExtBinop1372 = fmul <2 x float> %.sroa.34.52.copyload491, %i.gu
  %shift1374 = shufflevector <2 x float> %foldExtExtBinop1372, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1375 = fsub <2 x float> %foldExtExtBinop1370, %shift1374
  %i.hb = extractelement <2 x float> %foldExtExtBinop1375, i64 0
  %i.hc = fmul <2 x float> %i.ha, splat (float 2.000000e+00)
  %i.hd = fadd <2 x float> %.sroa.0131.0.copyload, %i.hc
  %i.he = fmul float %i.hb, 2.000000e+00
  %i.hf = fadd float %.sroa.2132.0.copyload, %i.he
  %i.hg = fadd <2 x float> %i.cx, %i.hd
  %i.hh = fadd float %i.cz, %i.hf
  store <2 x float> %i.hg, ptr %i.eo, align 4, !tbaa !146
  store float %i.hh, ptr %.sroa.4134.0..sroa_idx, align 4, !tbaa !146
  %i.hi = getelementptr inbounds nuw i8, ptr %i.es, i64 40 ; 2 uses
  %.sroa.0513.0.copyload = load <2 x float>, ptr %i.hi, align 8, !tbaa !146 ; 2 uses
  %.sroa.4514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 2 uses
  %.sroa.4514.0.copyload = load float, ptr %.sroa.4514.0..sroa_idx, align 8, !tbaa !146 ; 2 uses
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 52 ; 2 uses
  %.sroa.5515.0.copyload = load <2 x float>, ptr %.sroa.5515.0..sroa_idx, align 4, !tbaa !146 ; 2 uses
  %.sroa.6516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 60 ; 2 uses
  %.sroa.6516.0.copyload = load float, ptr %.sroa.6516.0..sroa_idx, align 4, !tbaa !146 ; 2 uses
  call void @b3ComputeShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %5, ptr noundef nonnull %i.es, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3) #12
  %.sroa.5505.0.copyload = load float, ptr %.sroa.5505.0..sroa_idx, align 8
  %.sroa.8508.0.copyload = load float, ptr %.sroa.8508.0..sroa_idx, align 4
  %i.hj = load <2 x float>, ptr %5, align 8
  %i.hk = fadd <2 x float> %.sroa.0205.0.copyload, %i.hj ; 3 uses
  %i.hl = fadd float %.sroa.8.0.copyload, %.sroa.5505.0.copyload ; 3 uses
  %i.hm = load <2 x float>, ptr %.sroa.6506.0..sroa_idx, align 4
  %i.hn = fadd <2 x float> %.sroa.0205.0.copyload, %i.hm ; 3 uses
  %i.ho = fadd float %.sroa.8.0.copyload, %.sroa.8508.0.copyload ; 3 uses
  store <2 x float> %i.hk, ptr %i.hi, align 8, !tbaa !146
  store float %i.hl, ptr %.sroa.4514.0..sroa_idx, align 8, !tbaa !146
  store <2 x float> %i.hn, ptr %.sroa.5515.0..sroa_idx, align 4, !tbaa !146
  store float %i.ho, ptr %.sroa.6516.0..sroa_idx, align 4, !tbaa !146
  %i.hp = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !390
  switch i32 %i.hq, label %bb.w [
    i32 4, label %bb.aa
    i32 2, label %bb.aa
  ], !llvm.loop !383

bb.w:                                             ; preds = %bb.v
  %i.hr = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !159
  %.not293 = icmp eq i32 %i.hs, -1
  br i1 %.not293, label %bb.x, label %bb.aa, !llvm.loop !383

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ht = fcmp olt <2 x float> %.sroa.0513.0.copyload, %i.hk
  %i.hu = select <2 x i1> %i.ht, <2 x float> %.sroa.0513.0.copyload, <2 x float> %i.hk
  %i.hv = fcmp olt float %.sroa.4514.0.copyload, %i.hl
  %i.hw = select i1 %i.hv, float %.sroa.4514.0.copyload, float %i.hl
  store <2 x float> %i.hu, ptr %6, align 8, !tbaa !146, !alias.scope !391
  store float %i.hw, ptr %.sroa.415.0..sroa_idx.i367, align 8, !tbaa !146, !alias.scope !391
  %i.hx = fcmp ogt <2 x float> %.sroa.5515.0.copyload, %i.hn
  %i.hy = select <2 x i1> %i.hx, <2 x float> %.sroa.5515.0.copyload, <2 x float> %i.hn
  %i.hz = fcmp ogt float %.sroa.6516.0.copyload, %i.ho
  %i.ia = select i1 %i.hz, float %.sroa.6516.0.copyload, float %i.ho
  store <2 x float> %i.hy, ptr %i.ep, align 4, !tbaa !146, !alias.scope !391
  store float %i.ia, ptr %.sroa.4.0..sroa_idx.i371, align 4, !tbaa !146, !alias.scope !391
  %i.ib = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.da, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #12 ; 0 uses
  br i1 %.not284, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ic = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.dc, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #12 ; 0 uses
  %i.id = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.de, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #12 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.v, %bb.v, %bb.z
  %.not285 = icmp eq i32 %i.fi, -1
  br i1 %.not285, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.aa, %bb.r
  %i.ie = call float @b3GetLengthUnitsPerMeter() #12
  %i.if = fmul float %i.ie, 5.000000e-03
  %i.ig = fmul float %i.if, 4.000000e+00
  %i.ih = load float, ptr %i.ea, align 8, !tbaa !179 ; 4 uses
  %i.ii = fcmp olt float %i.ih, 1.000000e+00
  br i1 %i.ii, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %._crit_edge
  %i.ij = shufflevector <2 x float> %.sroa.28.36.copyload487, <2 x float> %.sroa.32.36.copyload488, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ik = shufflevector <2 x float> %.sroa.34.52.copyload491, <2 x float> %.sroa.38.52.copyload493, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.il = fmul <4 x float> %i.ij, %i.ik           ; 4 uses
  %shift1377 = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1378 = fadd <4 x float> %i.il, %shift1377
  %shift1380 = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1381 = fadd <4 x float> %foldExtExtBinop1378, %shift1380
  %shift1383 = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1384 = fadd <4 x float> %shift1383, %foldExtExtBinop1381
  %i.im = extractelement <4 x float> %foldExtExtBinop1384, i64 0
  %i.in = fcmp olt float %i.im, 0.000000e+00      ; 2 uses
  %i.io = fneg <2 x float> %.sroa.28.36.copyload487
  %i.ip = fneg <2 x float> %.sroa.32.36.copyload488
  %i.iq = select i1 %i.in, <2 x float> %i.ip, <2 x float> %.sroa.32.36.copyload488
  %i.ir = select i1 %i.in, <2 x float> %i.io, <2 x float> %.sroa.28.36.copyload487
  %i.is = fsub float 1.000000e+00, %i.ih          ; 2 uses
  %i.it = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.iv = fmul <2 x float> %.sroa.34.52.copyload491, %i.iu
  %i.iw = insertelement <2 x float> poison, float %i.is, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.iy = fmul <2 x float> %i.ix, %i.ir
  %i.iz = fadd <2 x float> %i.iv, %i.iy           ; 2 uses
  %i.ja = fmul <2 x float> %.sroa.38.52.copyload493, %i.iu
  %i.jb = fmul <2 x float> %i.ix, %i.iq
  %i.jc = fadd <2 x float> %i.ja, %i.jb           ; 2 uses
  %i.jd = shufflevector <2 x float> %i.iz, <2 x float> %i.jc, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.je = fmul <4 x float> %i.jd, %i.jd           ; 4 uses
  %shift1386 = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1387 = fadd <4 x float> %i.je, %shift1386
  %shift1389 = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1390 = fadd <4 x float> %foldExtExtBinop1387, %shift1389
  %shift1392 = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1393 = fadd <4 x float> %shift1392, %foldExtExtBinop1390
  %i.jf = extractelement <4 x float> %foldExtExtBinop1393, i64 0 ; 2 uses
  %i.jg = fcmp ogt float %i.jf, f0x057A0000
  br i1 %i.jg, label %bb.ac, label %b3NLerp.exit

bb.ac:                                            ; preds = %bb.ab
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.jf)
  %i.jh = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ji = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jk = fmul <2 x float> %i.iz, %i.jj
  %i.jl = fmul <2 x float> %i.jc, %i.jj
  br label %b3NLerp.exit

b3NLerp.exit:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.4.0.i.i = phi <2 x float> [ %i.jl, %bb.ac ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.ab ] ; 6 uses
  %.sroa.0.0.i.i = phi <2 x float> [ %i.jk, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 8 uses
  %i.jm = fmul float %i.al, %i.is
  %i.jn = fmul <2 x float> %i.an, %i.ix
  %i.jo = fmul <2 x float> %i.ao, %i.iu
  %i.jp = fmul float %i.ap, %i.ih
  %i.jq = fadd float %i.jp, %i.jm                 ; 2 uses
  %.sroa.09.0.vec.extract.i.i382 = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.jr = fadd <2 x float> %i.jo, %i.jn           ; 2 uses
  %9 = fmul float %.sroa.7479.0.copyload481, %.sroa.09.0.vec.extract.i.i382
  %i.js = insertelement <2 x float> %.sroa.0475.0.copyload478, float %.sroa.7479.0.copyload481, i64 0
  %10 = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x float> %i.js, %10             ; 2 uses
  %i.ju = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.4.0.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jv = fmul <2 x float> %.sroa.0475.0.copyload478, %i.ju
  %11 = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %12 = insertelement <2 x float> %11, float %9, i64 1
  %13 = fsub <2 x float> %12, %i.jv
  %14 = fmul <2 x float> %.sroa.0475.0.copyload478, %.sroa.4.0.i.i ; 2 uses
  %foldExtExtBinop1395 = fsub <2 x float> %14, %i.jt
  %shift1397 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1398 = fadd <2 x float> %shift1397, %foldExtExtBinop1395 ; 2 uses
  %i.jw = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jx = fmul <2 x float> %i.bc, %i.jw
  %i.jy = fadd <2 x float> %i.jx, %13             ; 3 uses
  %i.jz = fmul <2 x float> %i.ju, %i.jy
  %i.ka = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> %.sroa.0.0.i.i, <2 x i32> <i32 0, i32 2>
  %i.kb = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %15 = shufflevector <2 x float> %foldExtExtBinop1398, <2 x float> %i.kb, <2 x i32> <i32 0, i32 3>
  %i.kc = fmul <2 x float> %i.ka, %15
  %i.kd = fsub <2 x float> %i.jz, %i.kc
  %foldExtExtBinop1400 = fmul <2 x float> %.sroa.0.0.i.i, %foldExtExtBinop1398
  %foldExtExtBinop1395.a = fmul <2 x float> %.sroa.0.0.i.i, %i.jy
  %shift1404 = shufflevector <2 x float> %foldExtExtBinop1395.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1405 = fsub <2 x float> %foldExtExtBinop1400, %shift1404
  %16 = extractelement <2 x float> %foldExtExtBinop1405, i64 0
  %i.ke = fmul <2 x float> %i.kd, splat (float 2.000000e+00)
  %i.kf = fadd <2 x float> %.sroa.0475.0.copyload478, %i.ke
  %i.kg = fmul float %16, 2.000000e+00
  %i.kh = fadd float %.sroa.7479.0.copyload481, %i.kg
  %i.ki = fsub <2 x float> %i.jr, %i.kf
  %i.kj = fsub float %i.jq, %i.kh
  %i.kk = fadd <2 x float> %.sroa.0205.0.copyload, %i.ki
  %i.kl = fadd float %.sroa.8.0.copyload, %i.kj
  store <2 x float> %i.kk, ptr %7, align 8
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.kl, ptr %.sroa.283.0..sroa_idx, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %7, i64 12
  store <2 x float> %.sroa.0.0.i.i, ptr %i.km, align 4, !tbaa !146
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store <2 x float> %.sroa.4.0.i.i, ptr %.sroa.6118.0..sroa_idx, align 4, !tbaa !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.v, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !166
  %i.kn = fadd float %.sroa.8.0.copyload, %i.jq   ; 2 uses
  %i.ko = fadd <2 x float> %.sroa.0205.0.copyload, %i.jr ; 2 uses
  store <2 x float> %i.ko, ptr %i.am, align 4, !tbaa !146
  store float %i.kn, ptr %.sroa.24.0..sroa_idx.i300, align 4, !tbaa !146
  store <2 x float> %.sroa.0.0.i.i, ptr %i.aq, align 4, !tbaa !146
  store <2 x float> %.sroa.4.0.i.i, ptr %.sroa.32.36..sroa_idx, align 4, !tbaa !146
  store <2 x float> %i.ko, ptr %i.ak, align 4, !tbaa !146
  store float %i.kn, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !146
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !102 ; 3 uses
  %i.kr = getelementptr inbounds [48 x i8], ptr %i.kq, i64 %i.u ; 2 uses
  %i.ks = mul nsw i64 %i.u, 48
  %i.kt = ptrtoint ptr %i.kq to i64, !nosanitize !9 ; 3 uses
  %i.ku = add i64 %i.ks, %i.kt, !nosanitize !9    ; 3 uses
  %i.kv = icmp ne ptr %i.kq, null, !nosanitize !9 ; 2 uses
  %i.kw = icmp eq i64 %i.ku, 0
  %i.kx = xor i1 %i.kv, %i.kw
  %i.ky = icmp uge i64 %i.ku, %i.kt, !nosanitize !9
  %i.kz = xor i1 %i.ad, %i.ky
  %i.la = and i1 %i.kx, %i.kz, !nosanitize !9
  br i1 %i.la, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %b3NLerp.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @368, i64 %i.kt, i64 %i.ku) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %b3NLerp.exit
  %i.lb = ptrtoint ptr %i.kr to i64, !nosanitize !9 ; 2 uses
  %i.lc = and i64 %i.lb, 7, !nosanitize !9
  %i.ld = icmp eq i64 %i.lc, 0, !nosanitize !9
  %i.le = and i1 %i.kv, %i.ld
  br i1 %i.le, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @369, i64 %i.lb) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.lf, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  %i.lg = load i32, ptr %i.ej, align 8, !tbaa !153 ; 2 uses
  %.not288833 = icmp eq i32 %i.lg, -1
  br i1 %.not288833, label %._crit_edge837, label %.lr.ph836

.lr.ph836:                                        ; preds = %bb.ag
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.li = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %8, i64 20
  br label %.lr.ph836.split

.lr.ph836.split:                                  ; preds = %.lr.ph836, %bb.al
  %.1834 = phi i32 [ %i.ng, %bb.al ], [ %i.lg, %.lr.ph836 ] ; 2 uses
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !136 ; 3 uses
  %i.lm = sext i32 %.1834 to i64                  ; 2 uses
  %i.ln = getelementptr inbounds [232 x i8], ptr %i.ll, i64 %i.lm ; 10 uses
  %i.lo = mul nsw i64 %i.lm, 232
  %i.lp = ptrtoint ptr %i.ll to i64, !nosanitize !9 ; 3 uses
  %i.lq = add i64 %i.lo, %i.lp, !nosanitize !9    ; 3 uses
  %i.lr = icmp ne ptr %i.ll, null, !nosanitize !9 ; 2 uses
  %i.ls = icmp eq i64 %i.lq, 0
  %i.lt = xor i1 %i.lr, %i.ls
  %i.lu = icmp uge i64 %i.lq, %i.lp, !nosanitize !9
  %i.lv = icmp slt i32 %.1834, 0
  %i.lw = xor i1 %i.lv, %i.lu
  %i.lx = and i1 %i.lt, %i.lw, !nosanitize !9
  br i1 %i.lx, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %.lr.ph836.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @370, i64 %i.lp, i64 %i.lq) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %.lr.ph836.split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @b3ComputeFatShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %8, ptr noundef %i.ln, ptr noundef nonnull byval(%struct.b3Transform) align 8 %7, float noundef %i.ig) #12
  %i.ly = ptrtoint ptr %i.ln to i64, !nosanitize !9 ; 2 uses
  %i.lz = and i64 %i.ly, 7, !nosanitize !9
  %i.ma = icmp eq i64 %i.lz, 0, !nosanitize !9
  %i.mb = and i1 %i.lr, %i.ma
  br i1 %i.mb, label %bb.ak, label %bb.aj, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @371, i64 %i.ly) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mc, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !170
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 64 ; 2 uses
  %.sroa.5525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ln, i64 72 ; 2 uses
  %.sroa.5525.0.copyload = load float, ptr %.sroa.5525.0..sroa_idx, align 8
  %.sroa.6526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ln, i64 76 ; 2 uses
  %.sroa.8528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ln, i64 84 ; 2 uses
  %.sroa.8528.0.copyload = load float, ptr %.sroa.8528.0..sroa_idx, align 4
  %i.me = load <2 x float>, ptr %i.md, align 8
  %i.mf = load <2 x float>, ptr %.sroa.6526.0..sroa_idx, align 4
  %i.mg = load <2 x float>, ptr %8, align 8
  %i.mh = load <2 x float>, ptr %i.li, align 4
  %i.mi = shufflevector <2 x float> %i.me, <2 x float> %i.mh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.mj = shufflevector <2 x float> %i.mg, <2 x float> %i.mf, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.mk = fcmp ule <4 x float> %i.mi, %i.mj
  %i.ml = load float, ptr %i.lj, align 8          ; 2 uses
  %i.mm = fcmp ule float %.sroa.5525.0.copyload, %i.ml
  %i.mn = load float, ptr %i.lk, align 4          ; 2 uses
  %i.mo = fcmp ule float %i.mn, %.sroa.8528.0.copyload
  %i.mp = freeze <4 x i1> %i.mk
  %i.mq = bitcast <4 x i1> %i.mp to i4
  %i.mr = icmp eq i4 %i.mq, -1
  %.fr1397 = freeze i1 %i.mm
  %op.rdx = and i1 %i.mr, %.fr1397
  %op.rdx1354 = select i1 %op.rdx, i1 %i.mo, i1 false
  br i1 %op.rdx1354, label %bb.al, label %b3AABB_Contains.exit.thread

b3AABB_Contains.exit.thread:                      ; preds = %bb.ak
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ln, i64 36
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !171 ; 3 uses
  %.sroa.051.0.copyload = load <2 x float>, ptr %8, align 8
  %i.mu = insertelement <2 x float> poison, float %i.mt, i64 0
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mw = fsub <2 x float> %.sroa.051.0.copyload, %i.mv
  %i.mx = fsub float %i.ml, %i.mt
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.li, align 4
  %i.my = fadd <2 x float> %i.mv, %.sroa.043.0.copyload
  %i.mz = fadd float %i.mt, %i.mn
  store <2 x float> %i.mw, ptr %i.md, align 8, !tbaa !146
  store float %i.mx, ptr %.sroa.5525.0..sroa_idx, align 8, !tbaa !146
  store <2 x float> %i.my, ptr %.sroa.6526.0..sroa_idx, align 4, !tbaa !146
  store float %i.mz, ptr %.sroa.8528.0..sroa_idx, align 4, !tbaa !146
  %i.na = getelementptr inbounds nuw i8, ptr %i.ln, i64 198 ; 2 uses
  %i.nb = load i8, ptr %i.na, align 2, !tbaa !156
  %i.nc = or i8 %i.nb, 32
  store i8 %i.nc, ptr %i.na, align 2, !tbaa !156
  %i.nd = load i32, ptr %i.ec, align 4, !tbaa !154
  %i.ne = or i32 %i.nd, 2048
  store i32 %i.ne, ptr %i.ec, align 4, !tbaa !154
  br label %bb.al

bb.al:                                            ; preds = %b3AABB_Contains.exit.thread, %bb.ak
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !155 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %.not288 = icmp eq i32 %i.ng, -1
  br i1 %.not288, label %._crit_edge837, label %.lr.ph836.split, !llvm.loop !386

._crit_edge837:                                   ; preds = %bb.al, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %.loopexit

bb.am:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.am, i64 12, i1 false), !tbaa.struct !169
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %.2.us1348 = load i32, ptr %i.ej, align 8, !tbaa !103 ; 2 uses
  %.not286.us1349 = icmp eq i32 %.2.us1348, -1
  br i1 %.not286.us1349, label %.loopexit, label %.lr.ph1352.preheader

.lr.ph1352.preheader:                             ; preds = %bb.am
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !136 ; 3 uses
  %i.nj = ptrtoint ptr %i.ni to i64, !nosanitize !9 ; 3 uses
  %i.nk = icmp ne ptr %i.ni, null, !nosanitize !9 ; 2 uses
  br label %.lr.ph1352

.lr.ph1352:                                       ; preds = %.lr.ph1352.preheader, %.split.us
  %.2.us1350 = phi i32 [ %.2.us, %.split.us ], [ %.2.us1348, %.lr.ph1352.preheader ] ; 2 uses
  %i.nl = sext i32 %.2.us1350 to i64              ; 2 uses
  %i.nm = getelementptr inbounds [232 x i8], ptr %i.ni, i64 %i.nl ; 12 uses
  %i.nn = mul nsw i64 %i.nl, 232
  %i.no = add i64 %i.nn, %i.nj, !nosanitize !9    ; 3 uses
  %i.np = icmp eq i64 %i.no, 0
  %i.nq = xor i1 %i.nk, %i.np
  %i.nr = icmp uge i64 %i.no, %i.nj, !nosanitize !9
  %i.ns = icmp slt i32 %.2.us1350, 0
  %i.nt = xor i1 %i.ns, %i.nr
  %i.nu = and i1 %i.nq, %i.nt, !nosanitize !9
  br i1 %i.nu, label %bb.an, label %.split813.us, !prof !10, !nosanitize !9

bb.an:                                            ; preds = %.lr.ph1352
  %i.nv = ptrtoint ptr %i.nm to i64, !nosanitize !9 ; 2 uses
  %i.nw = and i64 %i.nv, 7, !nosanitize !9
  %i.nx = icmp eq i64 %i.nw, 0, !nosanitize !9
  %i.ny = and i1 %i.nk, %i.nx
  br i1 %i.ny, label %bb.ao, label %.split816.us, !prof !10, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nm, i64 64 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nm, i64 40 ; 2 uses
  %.sroa.5537.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
end_hunk_0
