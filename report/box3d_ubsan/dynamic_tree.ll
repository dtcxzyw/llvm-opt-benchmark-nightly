Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/dynamic_tree?download=true
inline.NumInlined: 171
inline.NumDeleted: 36
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3DynamicTree_BoxCast:bb.a

bb.ac:                                            ; preds = %bb.ab
  %i.fw = zext nneg i32 %.sroa.4.0749 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @108, i64 %i.fw, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.fx = extractvalue { i32, i1 } %i.fu, 0, !nosanitize !9 ; 3 uses
  %i.fy = fcmp une float %i.ft, 0.000000e+00
  br i1 %i.fy, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.fz = fcmp ogt float %i.ft, 0.000000e+00
  %i.ga = fcmp olt float %i.ft, %.0756
  %or.cond = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond, label %bb.af, label %b3AABB_Overlaps.exit.thread

bb.af:                                            ; preds = %bb.ae
  %.sroa.060.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.261.0.copyload = load float, ptr %.sroa.2140.0..sroa_idx, align 4
  %i.gb = fmul float %i.ft, %.sroa.261.0.copyload ; 2 uses
  %i.gc = fadd float %.sroa.7.0.copyload, %i.gb   ; 2 uses
  %i.gd = fcmp olt float %.sroa.7.0.copyload, %i.gc
  %i.ge = select i1 %i.gd, float %.sroa.7.0.copyload, float %i.gc
  %i.gf = fadd float %.sroa.15.0.copyload, %i.gb  ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x float> %i.gh, %.sroa.060.0.copyload ; 2 uses
  %i.gj = fadd <2 x float> %.sroa.0332.0.copyload, %i.gi ; 2 uses
  %i.gk = fcmp olt <2 x float> %.sroa.0332.0.copyload, %i.gj
  %i.gl = select <2 x i1> %i.gk, <2 x float> %.sroa.0332.0.copyload, <2 x float> %i.gj
  %i.gm = fadd <2 x float> %.sroa.11.0.copyload, %i.gi ; 2 uses
  %i.gn = fcmp ogt <2 x float> %.sroa.11.0.copyload, %i.gm
  %i.go = select <2 x i1> %i.gn, <2 x float> %.sroa.11.0.copyload, <2 x float> %i.gm
  %i.gp = fcmp ogt float %.sroa.15.0.copyload, %i.gf
  %i.gq = select i1 %i.gp, float %.sroa.15.0.copyload, float %i.gf
  br label %b3AABB_Overlaps.exit.thread

bb.ag:                                            ; preds = %b3IsLeaf.exit
  %.not207 = icmp eq i32 %.0176755, 1024
  br i1 %.not207, label %b3AABB_Overlaps.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !24 ; 3 uses
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds [48 x i8], ptr %i.bn, i64 %i.gt ; 5 uses
  %i.gv = mul nsw i64 %i.gt, 48
  %i.gw = add i64 %i.gv, %i.br, !nosanitize !9    ; 3 uses
  %i.gx = icmp ne i64 %i.gw, 0
  %i.gy = icmp uge i64 %i.gw, %i.br, !nosanitize !9
  %i.gz = icmp slt i32 %i.gs, 0
  %i.ha = xor i1 %i.gz, %i.gy
  %i.hb = and i1 %i.gx, %i.ha, !nosanitize !9
  br i1 %i.hb, label %bb.aj, label %bb.ai, !prof !20, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @109, i64 %i.br, i64 %i.gw) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  %i.hc = ptrtoint ptr %i.gu to i64, !nosanitize !9 ; 2 uses
  %i.hd = and i64 %i.hc, 7, !nosanitize !9
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !9
  br i1 %i.he, label %bb.al, label %bb.ak, !prof !20, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.hc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.aj
  %.sroa.0345.0.copyload = load <2 x float>, ptr %i.gu, align 8
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.sroa.4346.0.copyload = load float, ptr %.sroa.4346.0..sroa_idx, align 8
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %.sroa.5347.0.copyload = load <2 x float>, ptr %.sroa.5347.0..sroa_idx, align 4
  %.sroa.6348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %.sroa.6348.0.copyload = load float, ptr %.sroa.6348.0..sroa_idx, align 4
  %i.hf = fadd <2 x float> %.sroa.0345.0.copyload, %.sroa.5347.0.copyload
  %i.hg = fadd float %.sroa.4346.0.copyload, %.sroa.6348.0.copyload
  %i.hh = fmul <2 x float> %i.hf, splat (float 5.000000e-01)
  %i.hi = fmul float %i.hg, 5.000000e-01
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cj, i64 36 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !24 ; 3 uses
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [48 x i8], ptr %i.bn, i64 %i.hl ; 5 uses
  %i.hn = mul nsw i64 %i.hl, 48
  %i.ho = add i64 %i.hn, %i.br, !nosanitize !9    ; 3 uses
  %i.hp = icmp ne i64 %i.ho, 0
  %i.hq = icmp uge i64 %i.ho, %i.br, !nosanitize !9
  %i.hr = icmp slt i32 %i.hk, 0
  %i.hs = xor i1 %i.hr, %i.hq
  %i.ht = and i1 %i.hp, %i.hs, !nosanitize !9
  br i1 %i.ht, label %bb.an, label %bb.am, !prof !20, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.br, i64 %i.ho) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.al
  %i.hu = ptrtoint ptr %i.hm to i64, !nosanitize !9 ; 2 uses
  %i.hv = and i64 %i.hu, 7, !nosanitize !9
  %i.hw = icmp eq i64 %i.hv, 0, !nosanitize !9
  br i1 %i.hw, label %bb.ap, label %bb.ao, !prof !20, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @112, i64 %i.hu) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ap:                                            ; preds = %bb.an
  %.sroa.0349.0.copyload = load <2 x float>, ptr %i.hm, align 8
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %.sroa.4350.0.copyload = load float, ptr %.sroa.4350.0..sroa_idx, align 8
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %.sroa.5351.0.copyload = load <2 x float>, ptr %.sroa.5351.0..sroa_idx, align 4
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  %.sroa.6352.0.copyload = load float, ptr %.sroa.6352.0..sroa_idx, align 4
  %i.hx = fadd float %.sroa.4350.0.copyload, %.sroa.6352.0.copyload
  %i.hy = fmul float %i.hx, 5.000000e-01
  %i.hz = fsub <2 x float> %i.q, %i.hh            ; 2 uses
  %i.ia = fmul <2 x float> %i.hz, %i.hz           ; 2 uses
  %i.ib = fadd <2 x float> %.sroa.0349.0.copyload, %.sroa.5351.0.copyload
  %i.ic = fmul <2 x float> %i.ib, splat (float 5.000000e-01)
  %i.id = fsub <2 x float> %i.q, %i.ic            ; 2 uses
  %i.ie = fmul <2 x float> %i.id, %i.id           ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.hy, i64 1
  %i.ih = fsub <2 x float> %i.ca, %i.ig           ; 2 uses
  %i.ii = shufflevector <2 x float> %i.ia, <2 x float> %i.ie, <2 x i32> <i32 0, i32 2>
  %i.ij = shufflevector <2 x float> %i.ia, <2 x float> %i.ie, <2 x i32> <i32 1, i32 3>
  %i.ik = fadd <2 x float> %i.ii, %i.ij
  %i.il = fmul <2 x float> %i.ih, %i.ih
  %i.im = fadd <2 x float> %i.il, %i.ik           ; 2 uses
  %i.in = extractelement <2 x float> %i.im, i64 0
  %i.io = extractelement <2 x float> %i.im, i64 1
  %i.ip = fcmp olt float %i.in, %i.io
  %i.iq = zext nneg i32 %.0176755 to i64          ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iq
  %i.is = shl nuw nsw i64 %i.iq, 2
  %i.it = add i64 %i.is, %i.bq, !nosanitize !9    ; 3 uses
  %.not209 = icmp ult i64 %i.it, %i.bq, !nosanitize !9 ; 2 uses
  br i1 %i.ip, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.hk, ptr %i.cd, align 4, !tbaa !47
  br i1 %.not209, label %bb.ar, label %bb.au, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @113, i64 %i.bq, i64 %i.it) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.ap
  store i32 %i.gs, ptr %i.cd, align 4, !tbaa !47
  br i1 %.not209, label %bb.at, label %bb.au, !prof !10, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.bq, i64 %i.it) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.au:                                            ; preds = %bb.as, %bb.aq
  %.sink.in = phi ptr [ %i.gr, %bb.aq ], [ %i.hj, %bb.as ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !24
  store i32 %.sink, ptr %i.ir, align 4, !tbaa !47
  %.1177 = add nuw nsw i32 %.0176755, 1
  br label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.af, %bb.ae, %bb.v, %.split, %bb.u, %bb.au, %bb.ag, %b3LoadV.exit261, %bb.k
  %.sroa.4.1 = phi i32 [ %.sroa.4.0749, %bb.k ], [ %.sroa.4.0749, %bb.u ], [ %i.fx, %bb.af ], [ %.sroa.4.0749, %bb.ag ], [ %.sroa.4.0749, %bb.au ], [ %.sroa.4.0749, %b3LoadV.exit261 ], [ %.sroa.4.0749, %bb.v ], [ %.sroa.4.0749, %.split ], [ %i.fx, %bb.ae ] ; 2 uses
  %.sroa.0339.1 = phi i32 [ %.sroa.0339.0750, %bb.k ], [ %i.cv, %bb.u ], [ %i.cv, %bb.af ], [ %i.cv, %bb.ag ], [ %i.cv, %bb.au ], [ %i.cv, %b3LoadV.exit261 ], [ %i.cv, %bb.v ], [ %i.cv, %.split ], [ %i.cv, %bb.ae ] ; 2 uses
  %.sroa.13.2 = phi float [ %.sroa.13.0751, %bb.k ], [ %.sroa.13.0751, %bb.u ], [ %i.gq, %bb.af ], [ %.sroa.13.0751, %bb.ag ], [ %.sroa.13.0751, %bb.au ], [ %.sroa.13.0751, %b3LoadV.exit261 ], [ %.sroa.13.0751, %bb.v ], [ %.sroa.13.0751, %.split ], [ %.sroa.13.0751, %bb.ae ]
  %.sroa.9.2 = phi <2 x float> [ %.sroa.9.0752, %bb.k ], [ %.sroa.9.0752, %bb.u ], [ %i.go, %bb.af ], [ %.sroa.9.0752, %bb.ag ], [ %.sroa.9.0752, %bb.au ], [ %.sroa.9.0752, %b3LoadV.exit261 ], [ %.sroa.9.0752, %bb.v ], [ %.sroa.9.0752, %.split ], [ %.sroa.9.0752, %bb.ae ]
  %.sroa.6.2 = phi float [ %.sroa.6.0753, %bb.k ], [ %.sroa.6.0753, %bb.u ], [ %i.ge, %bb.af ], [ %.sroa.6.0753, %bb.ag ], [ %.sroa.6.0753, %bb.au ], [ %.sroa.6.0753, %b3LoadV.exit261 ], [ %.sroa.6.0753, %bb.v ], [ %.sroa.6.0753, %.split ], [ %.sroa.6.0753, %bb.ae ]
  %.sroa.0.2 = phi <2 x float> [ %.sroa.0.0754, %bb.k ], [ %.sroa.0.0754, %bb.u ], [ %i.gl, %bb.af ], [ %.sroa.0.0754, %bb.ag ], [ %.sroa.0.0754, %bb.au ], [ %.sroa.0.0754, %b3LoadV.exit261 ], [ %.sroa.0.0754, %bb.v ], [ %.sroa.0.0754, %.split ], [ %.sroa.0.0754, %bb.ae ]
  %.5181 = phi i32 [ %i.cb, %bb.k ], [ %i.cb, %bb.u ], [ %i.cb, %bb.af ], [ 1023, %bb.ag ], [ %.1177, %bb.au ], [ %i.cb, %b3LoadV.exit261 ], [ %i.cb, %bb.v ], [ %i.cb, %.split ], [ %i.cb, %bb.ae ] ; 2 uses
  %.6 = phi float [ %.0756, %bb.k ], [ %.0756, %bb.u ], [ %i.ft, %bb.af ], [ %.0756, %bb.ag ], [ %.0756, %bb.au ], [ %.0756, %b3LoadV.exit261 ], [ %.0756, %bb.v ], [ %.0756, %.split ], [ %.0756, %bb.ae ]
  %.not1411 = icmp eq i32 %.5181, 0
  br i1 %.not1411, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.ad, %b3AABB_Overlaps.exit.thread
  %.sroa.4.2 = phi i32 [ %.sroa.4.1, %b3AABB_Overlaps.exit.thread ], [ %i.fx, %bb.ad ]
  %.sroa.0339.2 = phi i32 [ %.sroa.0339.1, %b3AABB_Overlaps.exit.thread ], [ %i.cv, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.iu = zext i32 %.sroa.4.2 to i64
  %i.iv = shl nuw i64 %i.iu, 32
  %i.iw = zext i32 %.sroa.0339.2 to i64
  %i.ix = or disjoint i64 %i.iv, %i.iw
  br label %bb.av

bb.av:                                            ; preds = %bb.c, %.thread
  %.sroa.0339.0.insert.insert = phi i64 [ 0, %bb.c ], [ %i.ix, %.thread ]
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

bb.k:                                             ; preds = %b3IsLeaf.exit
  %i.bm = and i16 %i.bk, 2
  %i.bn = icmp ne i16 %i.bm, 0
  %brmerge = or i1 %1, %i.bn
  br i1 %brmerge, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k, %b3IsLeaf.exit
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.bp = shl nuw nsw i64 %indvars.iv, 2
  %i.bq = add i64 %i.bp, %i.bf, !nosanitize !9    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = xor i1 %i.bg, %i.br
  %i.bt = icmp uge i64 %i.bq, %i.bf, !nosanitize !9
  %i.bu = and i1 %i.bs, %i.bt, !nosanitize !9
  br i1 %i.bu, label %bb.n, label %bb.m, !prof !20, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @118, i64 %i.bf, i64 %i.bq) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.bv = ptrtoint ptr %i.bo to i64, !nosanitize !9 ; 2 uses
  %i.bw = and i64 %i.bv, 3, !nosanitize !9
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !9
  %i.by = and i1 %i.bg, %i.bx
  br i1 %i.by, label %bb.p, label %bb.o, !prof !20, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @119, i64 %i.bv) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  store i32 %.053790, ptr %i.bo, align 4, !tbaa !47
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %indvars.iv ; 3 uses
  %i.ca = mul nuw nsw i64 %indvars.iv, 12
  %i.cb = add i64 %i.ca, %i.bh, !nosanitize !9    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = xor i1 %i.bi, %i.cc
  %i.ce = icmp uge i64 %i.cb, %i.bh, !nosanitize !9
  %i.cf = and i1 %i.cd, %i.ce, !nosanitize !9
  br i1 %i.cf, label %bb.r, label %bb.q, !prof !20, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @120, i64 %i.bh, i64 %i.cb) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.cg = ptrtoint ptr %i.bz to i64, !nosanitize !9 ; 2 uses
  %i.ch = and i64 %i.cg, 3, !nosanitize !9
  %i.ci = icmp eq i64 %i.ch, 0, !nosanitize !9
  %i.cj = and i1 %i.bi, %i.ci
  br i1 %i.cj, label %bb.t, label %bb.s, !prof !20, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @121, i64 %i.cg) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %.05269.sroa.0.0.copyload = load <2 x float>, ptr %.052791, align 8
  %.05269.sroa.4.0..052.sroa_idx = getelementptr inbounds nuw i8, ptr %.052791, i64 8
  %.05269.sroa.4.0.copyload = load float, ptr %.05269.sroa.4.0..052.sroa_idx, align 8
  %.05269.sroa.5.0..052.sroa_idx = getelementptr inbounds nuw i8, ptr %.052791, i64 12
  %.05269.sroa.5.0.copyload = load <2 x float>, ptr %.05269.sroa.5.0..052.sroa_idx, align 4
  %.05269.sroa.6.0..052.sroa_idx = getelementptr inbounds nuw i8, ptr %.052791, i64 20
  %.05269.sroa.6.0.copyload = load float, ptr %.05269.sroa.6.0..052.sroa_idx, align 4
  %i.ck = fadd float %.05269.sroa.4.0.copyload, %.05269.sroa.6.0.copyload
  %i.cl = fadd <2 x float> %.05269.sroa.0.0.copyload, %.05269.sroa.5.0.copyload
  %i.cm = fmul <2 x float> %i.cl, splat (float 5.000000e-01)
  %i.cn = fmul float %i.ck, 5.000000e-01
  store <2 x float> %i.cm, ptr %i.bz, align 4, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store float %i.cn, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv, 2147483647
  br i1 %exitcond, label %bb.u, label %bb.v, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @122, i64 2147483647, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %.052791, i64 40
  store i32 -1, ptr %i.co, align 8, !tbaa !24
  %i.cp = icmp eq i32 %.054789, 0
  br i1 %i.cp, label %bb.an, label %bb.af

bb.w:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %.052791, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !24 ; 3 uses
  %i.cs = icmp slt i32 %.054789, 1024
  br i1 %i.cs, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %.052791, i64 36
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !24
  %i.cv = add nuw nsw i32 %.054789, 1
  %i.cw = sext i32 %.054789 to i64, !nosanitize !9 ; 3 uses
  %i.cx = icmp ult i32 %.054789, 1024
  br i1 %i.cx, label %bb.z, label %bb.y, !prof !20, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @123, i64 %i.cw) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.cy = shl nuw nsw i64 %i.cw, 2
  %i.cz = add i64 %i.cy, %i.be, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.cz, %i.be, !nosanitize !9
  br i1 %.not, label %bb.aa, label %bb.ab, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @124, i64 %i.be, i64 %i.cz) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cw
  store i32 %i.cu, ptr %i.da, align 4, !tbaa !47
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.1 = phi i32 [ %i.cv, %bb.ab ], [ %.054789, %bb.w ]
  %i.db = sext i32 %i.cr to i64                   ; 2 uses
  %i.dc = mul nsw i64 %i.db, 48
  %i.dd = add i64 %i.dc, %i.an, !nosanitize !9    ; 3 uses
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = icmp uge i64 %i.dd, %i.an, !nosanitize !9
  %i.dg = icmp slt i32 %i.cr, 0
  %i.dh = xor i1 %i.dg, %i.df
  %i.di = and i1 %i.de, %i.dh, !nosanitize !9
  br i1 %i.di, label %bb.ae, label %bb.ad, !prof !20, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @125, i64 %i.an, i64 %i.dd) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds [48 x i8], ptr %i.aj, i64 %i.db ; 2 uses
  call fastcc void @b3FreeNode(ptr noundef nonnull %0, i32 noundef %.053790)
  %i.dk = ptrtoint ptr %i.dj to i64, !nosanitize !9 ; 2 uses
  %i.dl = and i64 %i.dk, 7, !nosanitize !9
  %i.dm = icmp eq i64 %i.dl, 0, !nosanitize !9
  br i1 %i.dm, label %b3IsLeaf.exit, label %.outer._crit_edge, !prof !42, !nosanitize !9

bb.af:                                            ; preds = %bb.v
  %i.dn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.054789, i32 -1) ; 2 uses
  %i.do = extractvalue { i32, i1 } %i.dn, 0, !nosanitize !9 ; 3 uses
  %i.dp = extractvalue { i32, i1 } %i.dn, 1, !nosanitize !9
  br i1 %i.dp, label %bb.ag, label %bb.ah, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dq = zext i32 %.054789 to i64, !nosanitize !9
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @126, i64 %i.dq, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %i.dr = sext i32 %i.do to i64, !nosanitize !9   ; 3 uses
  %i.ds = icmp ult i32 %i.do, 1024
  br i1 %i.ds, label %bb.aj, label %bb.ai, !prof !20, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @127, i64 %i.dr) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  %i.dt = shl nuw nsw i64 %i.dr, 2
  %i.du = add i64 %i.dt, %i.be, !nosanitize !9    ; 2 uses
  %.not67 = icmp ult i64 %i.du, %i.be, !nosanitize !9
  br i1 %.not67, label %bb.ak, label %bb.al, !prof !10, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @128, i64 %i.be, i64 %i.du) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.aj
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dr
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47 ; 3 uses
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = mul nsw i64 %i.dx, 48
  %i.dz = add i64 %i.dy, %i.an, !nosanitize !9    ; 3 uses
  %i.ea = icmp ne i64 %i.dz, 0
  %i.eb = icmp uge i64 %i.dz, %i.an, !nosanitize !9
  %i.ec = icmp slt i32 %i.dw, 0
  %i.ed = xor i1 %i.ec, %i.eb
  %i.ee = and i1 %i.ea, %i.ed, !nosanitize !9
  br i1 %i.ee, label %.outer, label %bb.am, !prof !20, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @129, i64 %i.an, i64 %i.dz) #11, !nosanitize !9
  unreachable, !nosanitize !9

.outer:                                           ; preds = %bb.al
  %i.ef = getelementptr inbounds [48 x i8], ptr %i.aj, i64 %i.dx ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64, !nosanitize !9 ; 2 uses
  %i.eh = and i64 %i.eg, 7, !nosanitize !9
  %i.ei = icmp eq i64 %i.eh, 0, !nosanitize !9
  br i1 %i.ei, label %.lr.ph, label %.outer._crit_edge, !prof !90, !nosanitize !9

bb.an:                                            ; preds = %bb.v
  %indvars.le = trunc i64 %indvars.iv.next to i32 ; 4 uses
  %i.ej = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 14 uses
  %i.ek = load ptr, ptr %i.aw, align 8, !tbaa !28 ; 9 uses
  %i.el = icmp eq i32 %indvars.le, 1
  br i1 %i.el, label %bb.ao, label %.split.i

bb.ao:                                            ; preds = %bb.an
  %i.em = icmp ne ptr %i.ek, null, !nosanitize !9
  %i.en = ptrtoint ptr %i.ek to i64, !nosanitize !9 ; 2 uses
  %i.eo = and i64 %i.en, 3, !nosanitize !9
  %i.ep = icmp eq i64 %i.eo, 0, !nosanitize !9
  %i.eq = and i1 %i.em, %i.ep, !nosanitize !9
  br i1 %i.eq, label %bb.aq, label %bb.ap, !prof !20, !nosanitize !9

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @222, i64 %i.en) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aq:                                            ; preds = %bb.ao
  %i.er = load i32, ptr %i.ek, align 4, !tbaa !47 ; 2 uses
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.es ; 2 uses
  %i.eu = mul nsw i64 %i.es, 48
  %i.ev = ptrtoint ptr %i.ej to i64, !nosanitize !9 ; 3 uses
  %i.ew = add i64 %i.eu, %i.ev, !nosanitize !9    ; 3 uses
  %i.ex = icmp ne ptr %i.ej, null, !nosanitize !9 ; 2 uses
  %i.ey = icmp eq i64 %i.ew, 0
  %i.ez = xor i1 %i.ex, %i.ey
  %i.fa = icmp uge i64 %i.ew, %i.ev, !nosanitize !9
  %i.fb = icmp slt i32 %i.er, 0
  %i.fc = xor i1 %i.fb, %i.fa
  %i.fd = and i1 %i.ez, %i.fc, !nosanitize !9
  br i1 %i.fd, label %bb.as, label %bb.ar, !prof !20, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @223, i64 %i.ev, i64 %i.ew) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.aq
  %i.fe = ptrtoint ptr %i.et to i64, !nosanitize !9 ; 2 uses
  %i.ff = and i64 %i.fe, 7, !nosanitize !9
  %i.fg = icmp eq i64 %i.ff, 0, !nosanitize !9
  %i.fh = and i1 %i.ex, %i.fg
  br i1 %i.fh, label %bb.au, label %bb.at, !prof !20, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @224, i64 %i.fe) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.au:                                            ; preds = %bb.as
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store i32 -1, ptr %i.fi, align 8, !tbaa !24
  %i.fj = load i32, ptr %i.ek, align 4, !tbaa !47
  br label %b3BuildTree.exit

.split.i:                                         ; preds = %bb.an
  %i.fk = load ptr, ptr %i.ay, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.fl = call fastcc i32 @b3AllocateNode(ptr noundef nonnull %0)
  store i32 %i.fl, ptr %2, align 16, !tbaa !92
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %3, align 4, !tbaa !93
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.fm, align 8, !tbaa !94
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %indvars.le, ptr %i.fn, align 16, !tbaa !95
  %i.fo = call fastcc i32 @b3PartitionMid(ptr noundef %i.ek, ptr noundef %i.fk, i32 noundef %indvars.le)
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !96
  %i.fq = ptrtoint ptr %2 to i64, !nosanitize !9  ; 9 uses
  %i.fr = ptrtoint ptr %i.ej to i64               ; 27 uses
  %i.fs = icmp ne ptr %i.ej, null                 ; 10 uses
  %i.ft = ptrtoint ptr %i.ek to i64               ; 6 uses
  %i.fu = icmp ne ptr %i.ek, null                 ; 3 uses
  %i.fv = ptrtoint ptr %i.fk to i64               ; 3 uses
  %i.fw = icmp ne ptr %i.fk, null
  br label %bb.aw

bb.av:                                            ; preds = %bb.dd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @225, i64 %i.fq, i64 %.pre-phi1395.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aw:                                            ; preds = %.split.i, %bb.dd
  %i.fx = phi ptr [ %2, %.split.i ], [ %i.ng, %bb.dd ] ; 7 uses
  %.096874.i = phi i32 [ 0, %.split.i ], [ %.3.i, %bb.dd ] ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !93 ; 2 uses
  %i.ga = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.fz, i32 1), !nosanitize !9 ; 2 uses
  %i.gb = extractvalue { i32, i1 } %i.ga, 0, !nosanitize !9 ; 3 uses
  %i.gc = extractvalue { i32, i1 } %i.ga, 1, !nosanitize !9
  br i1 %i.gc, label %bb.ax, label %bb.ay, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  %i.gd = zext nneg i32 %i.fz to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @226, i64 %i.gd, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  store i32 %i.gb, ptr %i.fy, align 4, !tbaa !93
  switch i32 %i.gb, label %bb.by [
    i32 2, label %bb.az
    i32 0, label %bb.bz
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ge = icmp eq i32 %.096874.i, 0
  br i1 %i.ge, label %bb.de, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gf = add nsw i32 %.096874.i, -1              ; 2 uses
  %i.gg = zext nneg i32 %i.gf to i64              ; 3 uses
  %i.gh = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %i.gg ; 3 uses
  %i.gi = mul nuw nsw i64 %i.gg, 20
  %i.gj = add i64 %i.gi, %i.fq, !nosanitize !9    ; 3 uses
  %.not137.i = icmp ult i64 %i.gj, %i.fq, !nosanitize !9
  br i1 %.not137.i, label %bb.bb, label %bb.bc, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @227, i64 %i.fq, i64 %i.gj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bc:                                            ; preds = %bb.ba
  %i.gk = load i32, ptr %i.gh, align 4, !tbaa !92 ; 2 uses
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.gl ; 3 uses
  %i.gn = mul nsw i64 %i.gl, 48
  %i.go = add i64 %i.gn, %i.fr, !nosanitize !9    ; 3 uses
  %i.gp = icmp eq i64 %i.go, 0
  %i.gq = xor i1 %i.fs, %i.gp
  %i.gr = icmp uge i64 %i.go, %i.fr, !nosanitize !9
  %i.gs = icmp slt i32 %i.gk, 0
  %i.gt = xor i1 %i.gs, %i.gr
  %i.gu = and i1 %i.gq, %i.gt, !nosanitize !9
  br i1 %i.gu, label %bb.be, label %bb.bd, !prof !20, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @228, i64 %i.fr, i64 %i.go) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !93
  %i.gx = icmp eq i32 %i.gw, 0
  %i.gy = load i32, ptr %i.fx, align 4, !tbaa !92 ; 2 uses
  %i.gz = ptrtoint ptr %i.gm to i64, !nosanitize !9 ; 3 uses
  %i.ha = and i64 %i.gz, 7, !nosanitize !9
  %i.hb = icmp eq i64 %i.ha, 0, !nosanitize !9
  %i.hc = and i1 %i.fs, %i.hb                     ; 2 uses
  br i1 %i.gx, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  br i1 %i.hc, label %bb.bh, label %bb.bg, !prof !20, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @229, i64 %i.gz) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bh:                                            ; preds = %bb.bf
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store i32 %i.gy, ptr %i.hd, align 8, !tbaa !24
  br label %bb.bl

bb.bi:                                            ; preds = %bb.be
  br i1 %i.hc, label %bb.bk, label %bb.bj, !prof !20, !nosanitize !9

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @230, i64 %i.gz) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bk:                                            ; preds = %bb.bi
  %i.he = getelementptr inbounds nuw i8, ptr %i.gm, i64 36
  store i32 %i.gy, ptr %i.he, align 4, !tbaa !24
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %i.hf = load i32, ptr %i.fx, align 4, !tbaa !92 ; 2 uses
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.hg ; 10 uses
  %i.hi = mul nsw i64 %i.hg, 48
  %i.hj = add i64 %i.hi, %i.fr, !nosanitize !9    ; 3 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = xor i1 %i.fs, %i.hk
  %i.hm = icmp uge i64 %i.hj, %i.fr, !nosanitize !9
  %i.hn = icmp slt i32 %i.hf, 0
  %i.ho = xor i1 %i.hn, %i.hm
  %i.hp = and i1 %i.hl, %i.ho, !nosanitize !9
  br i1 %i.hp, label %bb.bn, label %bb.bm, !prof !20, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @231, i64 %i.fr, i64 %i.hj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bn:                                            ; preds = %bb.bl
  %i.hq = ptrtoint ptr %i.hh to i64, !nosanitize !9 ; 2 uses
  %i.hr = and i64 %i.hq, 7, !nosanitize !9
  %i.hs = icmp eq i64 %i.hr, 0, !nosanitize !9
  %i.ht = and i1 %i.fs, %i.hs
  br i1 %i.ht, label %bb.bp, label %bb.bo, !prof !20, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @232, i64 %i.hq) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bp:                                            ; preds = %bb.bn
  %i.hu = load i32, ptr %i.gh, align 4, !tbaa !92
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  store i32 %i.hu, ptr %i.hv, align 8, !tbaa !24
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !24 ; 2 uses
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.hy ; 7 uses
  %i.ia = mul nsw i64 %i.hy, 48
  %i.ib = add i64 %i.ia, %i.fr, !nosanitize !9    ; 3 uses
  %i.ic = icmp ne i64 %i.ib, 0
  %i.id = icmp uge i64 %i.ib, %i.fr, !nosanitize !9
  %i.ie = icmp slt i32 %i.hx, 0
  %i.if = xor i1 %i.ie, %i.id
  %i.ig = and i1 %i.ic, %i.if, !nosanitize !9
  br i1 %i.ig, label %bb.br, label %bb.bq, !prof !20, !nosanitize !9

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @233, i64 %i.fr, i64 %i.ib) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.br:                                            ; preds = %bb.bp
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hh, i64 36
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !24 ; 2 uses
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.ij ; 7 uses
  %i.il = mul nsw i64 %i.ij, 48
  %i.im = add i64 %i.il, %i.fr, !nosanitize !9    ; 3 uses
  %i.in = icmp ne i64 %i.im, 0
  %i.io = icmp uge i64 %i.im, %i.fr, !nosanitize !9
  %i.ip = icmp slt i32 %i.ii, 0
  %i.iq = xor i1 %i.ip, %i.io
  %i.ir = and i1 %i.in, %i.iq, !nosanitize !9
  br i1 %i.ir, label %bb.bt, label %bb.bs, !prof !20, !nosanitize !9

bb.bs:                                            ; preds = %bb.br
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @234, i64 %i.fr, i64 %i.im) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bt:                                            ; preds = %bb.br
  %i.is = ptrtoint ptr %i.hz to i64, !nosanitize !9 ; 2 uses
  %i.it = and i64 %i.is, 7, !nosanitize !9
  %i.iu = icmp eq i64 %i.it, 0, !nosanitize !9
  br i1 %i.iu, label %bb.bv, label %bb.bu, !prof !20, !nosanitize !9

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @235, i64 %i.is) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bv:                                            ; preds = %bb.bt
  %i.iv = ptrtoint ptr %i.ik to i64, !nosanitize !9 ; 2 uses
  %i.iw = and i64 %i.iv, 7, !nosanitize !9
  %i.ix = icmp eq i64 %i.iw, 0, !nosanitize !9
  br i1 %i.ix, label %bb.bx, label %bb.bw, !prof !20, !nosanitize !9

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @236, i64 %i.iv) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bx:                                            ; preds = %bb.bv
  %.sroa.0172.0.copyload.i = load <2 x float>, ptr %i.ik, align 8 ; 2 uses
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.sroa.4173.0.copyload.i = load float, ptr %.sroa.4173.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  %.sroa.5174.0.copyload.i = load <2 x float>, ptr %.sroa.5174.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 20
  %.sroa.6175.0.copyload.i = load float, ptr %.sroa.6175.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.0168.0.copyload.i = load <2 x float>, ptr %i.hz, align 8 ; 2 uses
  %.sroa.4169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.sroa.4169.0.copyload.i = load float, ptr %.sroa.4169.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %.sroa.5170.0.copyload.i = load <2 x float>, ptr %.sroa.5170.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %.sroa.6171.0.copyload.i = load float, ptr %.sroa.6171.0..sroa_idx.i, align 4 ; 2 uses
  %i.iy = fcmp olt <2 x float> %.sroa.0168.0.copyload.i, %.sroa.0172.0.copyload.i
  %i.iz = select <2 x i1> %i.iy, <2 x float> %.sroa.0168.0.copyload.i, <2 x float> %.sroa.0172.0.copyload.i
  %i.ja = fcmp olt float %.sroa.4169.0.copyload.i, %.sroa.4173.0.copyload.i
  %i.jb = select i1 %i.ja, float %.sroa.4169.0.copyload.i, float %.sroa.4173.0.copyload.i
  %i.jc = fcmp ogt <2 x float> %.sroa.5170.0.copyload.i, %.sroa.5174.0.copyload.i
  %i.jd = select <2 x i1> %i.jc, <2 x float> %.sroa.5170.0.copyload.i, <2 x float> %.sroa.5174.0.copyload.i
  %i.je = fcmp ogt float %.sroa.6171.0.copyload.i, %.sroa.6175.0.copyload.i
  %i.jf = select i1 %i.je, float %.sroa.6171.0.copyload.i, float %.sroa.6175.0.copyload.i
  store <2 x float> %i.iz, ptr %i.hh, align 8, !tbaa !32
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %i.jb, ptr %.sroa.4165.0..sroa_idx.i, align 8, !tbaa !32
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store <2 x float> %i.jd, ptr %.sroa.5166.0..sroa_idx.i, align 4, !tbaa !32
  %.sroa.6167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 20
  store float %i.jf, ptr %.sroa.6167.0..sroa_idx.i, align 4, !tbaa !32
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hz, i64 44
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ik, i64 44
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hh, i64 44
  %i.jj = load i16, ptr %i.jg, align 4, !tbaa !39
  %i.jk = load i16, ptr %i.jh, align 4, !tbaa !39
  %i.jl = call noundef i16 @llvm.umax.i16(i16 %i.jj, i16 %i.jk)
  %i.jm = add i16 %i.jl, 1
  store i16 %i.jm, ptr %i.ji, align 4, !tbaa !39
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.jq = load i64, ptr %i.jn, align 8, !tbaa !38
  %i.jr = load i64, ptr %i.jo, align 8, !tbaa !38
  %i.js = or i64 %i.jr, %i.jq
  store i64 %i.js, ptr %i.jp, align 8, !tbaa !38
  br label %bb.dd

bb.by:                                            ; preds = %bb.ay
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ay, %bb.by
  %.sink2409 = phi i64 [ 12, %bb.by ], [ 8, %bb.ay ]
  %.sink = phi i64 [ 16, %bb.by ], [ 12, %bb.ay ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sink2409
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sink
  %.095.i = load i32, ptr %i.jt, align 4, !tbaa !47 ; 9 uses
  %.0.i = load i32, ptr %i.ju, align 4, !tbaa !47 ; 3 uses
  %i.jv = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.0.i, i32 %.095.i), !nosanitize !9 ; 2 uses
  %i.jw = extractvalue { i32, i1 } %i.jv, 0, !nosanitize !9 ; 2 uses
  %i.jx = extractvalue { i32, i1 } %i.jv, 1, !nosanitize !9
  br i1 %i.jx, label %bb.ca, label %bb.cb, !prof !10, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  %i.jy = zext i32 %.0.i to i64, !nosanitize !9
  %i.jz = zext i32 %.095.i to i64, !nosanitize !9
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @237, i64 %i.jy, i64 %i.jz) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cb:                                            ; preds = %bb.bz
  %i.ka = icmp eq i32 %i.jw, 1
  br i1 %i.ka, label %bb.cc, label %bb.cu

bb.cc:                                            ; preds = %bb.cb
  %i.kb = sext i32 %.095.i to i64                 ; 2 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.kb ; 2 uses
  %i.kd = shl nsw i64 %i.kb, 2
  %i.ke = add i64 %i.kd, %i.ft, !nosanitize !9    ; 3 uses
  %i.kf = icmp eq i64 %i.ke, 0
  %i.kg = xor i1 %i.fu, %i.kf
  %i.kh = icmp uge i64 %i.ke, %i.ft, !nosanitize !9
  %i.ki = icmp slt i32 %.095.i, 0
  %i.kj = xor i1 %i.ki, %i.kh
  %i.kk = and i1 %i.kg, %i.kj, !nosanitize !9
  br i1 %i.kk, label %bb.ce, label %bb.cd, !prof !20, !nosanitize !9

bb.cd:                                            ; preds = %bb.cc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @238, i64 %i.ft, i64 %i.ke) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ce:                                            ; preds = %bb.cc
  %i.kl = ptrtoint ptr %i.kc to i64, !nosanitize !9 ; 2 uses
  %i.km = and i64 %i.kl, 3, !nosanitize !9
  %i.kn = icmp eq i64 %i.km, 0, !nosanitize !9
  %i.ko = and i1 %i.fu, %i.kn
  br i1 %i.ko, label %bb.cg, label %bb.cf, !prof !20, !nosanitize !9

bb.cf:                                            ; preds = %bb.ce
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @239, i64 %i.kl) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cg:                                            ; preds = %bb.ce
  %i.kp = load i32, ptr %i.kc, align 4, !tbaa !47 ; 4 uses
  %i.kq = load i32, ptr %i.fx, align 4, !tbaa !92 ; 2 uses
  %i.kr = sext i32 %i.kq to i64                   ; 2 uses
  %i.ks = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.kr ; 3 uses
  %i.kt = mul nsw i64 %i.kr, 48
  %i.ku = add i64 %i.kt, %i.fr, !nosanitize !9    ; 3 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %i.kw = xor i1 %i.fs, %i.kv
  %i.kx = icmp uge i64 %i.ku, %i.fr, !nosanitize !9
  %i.ky = icmp slt i32 %i.kq, 0
  %i.kz = xor i1 %i.ky, %i.kx
  %i.la = and i1 %i.kw, %i.kz, !nosanitize !9
  br i1 %i.la, label %bb.ci, label %bb.ch, !prof !20, !nosanitize !9

bb.ch:                                            ; preds = %bb.cg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %i.fr, i64 %i.ku) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ci:                                            ; preds = %bb.cg
  %i.lb = icmp eq i32 %i.gb, 0
  %i.lc = ptrtoint ptr %i.ks to i64, !nosanitize !9 ; 3 uses
  %i.ld = and i64 %i.lc, 7, !nosanitize !9
  %i.le = icmp eq i64 %i.ld, 0, !nosanitize !9
  %i.lf = and i1 %i.fs, %i.le                     ; 2 uses
  br i1 %i.lb, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.lf, label %bb.cl, label %bb.ck, !prof !20, !nosanitize !9

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @241, i64 %i.lc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cl:                                            ; preds = %bb.cj
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  store i32 %i.kp, ptr %i.lg, align 8, !tbaa !24
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ci
  br i1 %i.lf, label %bb.co, label %bb.cn, !prof !20, !nosanitize !9

bb.cn:                                            ; preds = %bb.cm
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @242, i64 %i.lc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.co:                                            ; preds = %bb.cm
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 36
  store i32 %i.kp, ptr %i.lh, align 4, !tbaa !24
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %i.li = sext i32 %i.kp to i64                   ; 2 uses
  %i.lj = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.li ; 2 uses
  %i.lk = mul nsw i64 %i.li, 48
  %i.ll = add i64 %i.lk, %i.fr, !nosanitize !9    ; 3 uses
  %i.lm = icmp eq i64 %i.ll, 0
  %i.ln = xor i1 %i.fs, %i.lm
  %i.lo = icmp uge i64 %i.ll, %i.fr, !nosanitize !9
  %i.lp = icmp slt i32 %i.kp, 0
  %i.lq = xor i1 %i.lp, %i.lo
  %i.lr = and i1 %i.ln, %i.lq, !nosanitize !9
  br i1 %i.lr, label %bb.cr, label %bb.cq, !prof !20, !nosanitize !9

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @243, i64 %i.fr, i64 %i.ll) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cr:                                            ; preds = %bb.cp
  %i.ls = ptrtoint ptr %i.lj to i64, !nosanitize !9 ; 2 uses
  %i.lt = and i64 %i.ls, 7, !nosanitize !9
  %i.lu = icmp eq i64 %i.lt, 0, !nosanitize !9
  %i.lv = and i1 %i.fs, %i.lu
  br i1 %i.lv, label %bb.ct, label %bb.cs, !prof !20, !nosanitize !9

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @244, i64 %i.ls) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ct:                                            ; preds = %bb.cr
  %i.lw = load i32, ptr %i.fx, align 4, !tbaa !92
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  store i32 %i.lw, ptr %i.lx, align 8, !tbaa !24
  %.pre.i = zext nneg i32 %.096874.i to i64       ; 2 uses
  %.pre1392.i = mul nuw nsw i64 %.pre.i, 20
  %.pre1394.i = add i64 %.pre1392.i, %i.fq, !nosanitize !9
  br label %bb.dd

bb.cu:                                            ; preds = %bb.cb
  %i.ly = add nuw nsw i32 %.096874.i, 1           ; 2 uses
  %i.lz = zext nneg i32 %i.ly to i64              ; 3 uses
  %i.ma = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %i.lz ; 5 uses
  %i.mb = mul nuw nsw i64 %i.lz, 20
  %i.mc = add i64 %i.mb, %i.fq, !nosanitize !9    ; 3 uses
  %.not136.i = icmp ult i64 %i.mc, %i.fq, !nosanitize !9
  br i1 %.not136.i, label %bb.cv, label %bb.cw, !prof !10, !nosanitize !9

bb.cv:                                            ; preds = %bb.cu
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @245, i64 %i.fq, i64 %i.mc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cw:                                            ; preds = %bb.cu
  %i.md = call fastcc i32 @b3AllocateNode(ptr noundef nonnull %0)
  store i32 %i.md, ptr %i.ma, align 4, !tbaa !92
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  store i32 -1, ptr %i.me, align 4, !tbaa !93
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i32 %.095.i, ptr %i.mf, align 4, !tbaa !94
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store i32 %.0.i, ptr %i.mg, align 4, !tbaa !95
  %i.mh = sext i32 %.095.i to i64                 ; 4 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.mh
  %i.mj = shl nsw i64 %i.mh, 2
  %i.mk = add i64 %i.mj, %i.ft, !nosanitize !9    ; 3 uses
  %i.ml = icmp eq i64 %i.mk, 0
  %i.mm = xor i1 %i.fu, %i.ml
  %i.mn = icmp uge i64 %i.mk, %i.ft, !nosanitize !9
  %i.mo = icmp slt i32 %.095.i, 0                 ; 2 uses
  %i.mp = xor i1 %i.mo, %i.mn
  %i.mq = and i1 %i.mm, %i.mp, !nosanitize !9
  br i1 %i.mq, label %bb.cy, label %bb.cx, !prof !20, !nosanitize !9

bb.cx:                                            ; preds = %bb.cw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @246, i64 %i.ft, i64 %i.mk) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cy:                                            ; preds = %bb.cw
  %i.mr = mul nsw i64 %i.mh, 12
  %i.ms = add i64 %i.mr, %i.fv, !nosanitize !9    ; 3 uses
  %i.mt = icmp eq i64 %i.ms, 0
  %i.mu = xor i1 %i.fw, %i.mt
  %i.mv = icmp uge i64 %i.ms, %i.fv, !nosanitize !9
  %i.mw = xor i1 %i.mo, %i.mv
  %i.mx = and i1 %i.mu, %i.mw, !nosanitize !9
  br i1 %i.mx, label %bb.da, label %bb.cz, !prof !20, !nosanitize !9

bb.cz:                                            ; preds = %bb.cy
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @247, i64 %i.fv, i64 %i.ms) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.da:                                            ; preds = %bb.cy
  %i.my = getelementptr inbounds [12 x i8], ptr %i.fk, i64 %i.mh
  %i.mz = call fastcc i32 @b3PartitionMid(ptr noundef %i.mi, ptr noundef %i.my, i32 noundef %i.jw) ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ma, i64 12 ; 2 uses
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !96
  %i.nb = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.mz, i32 %.095.i), !nosanitize !9 ; 2 uses
  %i.nc = extractvalue { i32, i1 } %i.nb, 1, !nosanitize !9
  br i1 %i.nc, label %bb.db, label %bb.dc, !prof !10, !nosanitize !9

bb.db:                                            ; preds = %bb.da
  %i.nd = zext i32 %i.mz to i64, !nosanitize !9
  %i.ne = zext i32 %.095.i to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @248, i64 %i.nd, i64 %i.ne) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dc:                                            ; preds = %bb.da
  %i.nf = extractvalue { i32, i1 } %i.nb, 0, !nosanitize !9
  store i32 %i.nf, ptr %i.na, align 4, !tbaa !96
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.ct, %bb.bx
  %.pre-phi1395.i = phi i64 [ %i.gj, %bb.bx ], [ %i.mc, %bb.dc ], [ %.pre1394.i, %bb.ct ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.gg, %bb.bx ], [ %i.lz, %bb.dc ], [ %.pre.i, %bb.ct ]
  %.3.i = phi i32 [ %i.gf, %bb.bx ], [ %i.ly, %bb.dc ], [ %.096874.i, %bb.ct ]
  %i.ng = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %.pre-phi.i
  %.not.i = icmp ult i64 %.pre-phi1395.i, %i.fq, !nosanitize !9
  br i1 %.not.i, label %bb.av, label %bb.aw, !prof !97, !nosanitize !9

bb.de:                                            ; preds = %bb.az
  %i.nh = load i32, ptr %2, align 16, !tbaa !92   ; 3 uses
  %i.ni = sext i32 %i.nh to i64                   ; 2 uses
  %i.nj = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.ni ; 9 uses
  %i.nk = mul nsw i64 %i.ni, 48
  %i.nl = add i64 %i.nk, %i.fr, !nosanitize !9    ; 3 uses
  %i.nm = icmp eq i64 %i.nl, 0
  %i.nn = xor i1 %i.fs, %i.nm
  %i.no = icmp uge i64 %i.nl, %i.fr, !nosanitize !9
  %i.np = icmp slt i32 %i.nh, 0
  %i.nq = xor i1 %i.np, %i.no
  %i.nr = and i1 %i.nn, %i.nq, !nosanitize !9
  br i1 %i.nr, label %bb.dg, label %bb.df, !prof !20, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @249, i64 %i.fr, i64 %i.nl) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dg:                                            ; preds = %bb.de
  %i.ns = ptrtoint ptr %i.nj to i64, !nosanitize !9 ; 2 uses
  %i.nt = and i64 %i.ns, 7, !nosanitize !9
  %i.nu = icmp eq i64 %i.nt, 0, !nosanitize !9
  %i.nv = and i1 %i.fs, %i.nu
  br i1 %i.nv, label %bb.di, label %bb.dh, !prof !20, !nosanitize !9

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @250, i64 %i.ns) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.di:                                            ; preds = %bb.dg
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !24 ; 2 uses
  %i.ny = sext i32 %i.nx to i64                   ; 2 uses
  %i.nz = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.ny ; 7 uses
  %i.oa = mul nsw i64 %i.ny, 48
  %i.ob = add i64 %i.oa, %i.fr, !nosanitize !9    ; 3 uses
  %i.oc = icmp ne i64 %i.ob, 0
  %i.od = icmp uge i64 %i.ob, %i.fr, !nosanitize !9
  %i.oe = icmp slt i32 %i.nx, 0
  %i.of = xor i1 %i.oe, %i.od
  %i.og = and i1 %i.oc, %i.of, !nosanitize !9
  br i1 %i.og, label %bb.dk, label %bb.dj, !prof !20, !nosanitize !9

bb.dj:                                            ; preds = %bb.di
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @251, i64 %i.fr, i64 %i.ob) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dk:                                            ; preds = %bb.di
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nj, i64 36
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !24 ; 2 uses
  %i.oj = sext i32 %i.oi to i64                   ; 2 uses
  %i.ok = getelementptr inbounds [48 x i8], ptr %i.ej, i64 %i.oj ; 7 uses
  %i.ol = mul nsw i64 %i.oj, 48
  %i.om = add i64 %i.ol, %i.fr, !nosanitize !9    ; 3 uses
  %i.on = icmp ne i64 %i.om, 0
  %i.oo = icmp uge i64 %i.om, %i.fr, !nosanitize !9
  %i.op = icmp slt i32 %i.oi, 0
  %i.oq = xor i1 %i.op, %i.oo
  %i.or = and i1 %i.on, %i.oq, !nosanitize !9
  br i1 %i.or, label %bb.dm, label %bb.dl, !prof !20, !nosanitize !9

bb.dl:                                            ; preds = %bb.dk
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @252, i64 %i.fr, i64 %i.om) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dm:                                            ; preds = %bb.dk
  %i.os = ptrtoint ptr %i.nz to i64, !nosanitize !9 ; 2 uses
  %i.ot = and i64 %i.os, 7, !nosanitize !9
  %i.ou = icmp eq i64 %i.ot, 0, !nosanitize !9
  br i1 %i.ou, label %bb.do, label %bb.dn, !prof !20, !nosanitize !9

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @253, i64 %i.os) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.do:                                            ; preds = %bb.dm
  %i.ov = ptrtoint ptr %i.ok to i64, !nosanitize !9 ; 2 uses
  %i.ow = and i64 %i.ov, 7, !nosanitize !9
  %i.ox = icmp eq i64 %i.ow, 0, !nosanitize !9
  br i1 %i.ox, label %bb.dq, label %bb.dp, !prof !20, !nosanitize !9

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @254, i64 %i.ov) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dq:                                            ; preds = %bb.do
  %.sroa.0180.0.copyload.i = load <2 x float>, ptr %i.ok, align 8 ; 2 uses
  %.sroa.4181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %.sroa.4181.0.copyload.i = load float, ptr %.sroa.4181.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  %.sroa.5182.0.copyload.i = load <2 x float>, ptr %.sroa.5182.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ok, i64 20
  %.sroa.6183.0.copyload.i = load float, ptr %.sroa.6183.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.0176.0.copyload.i = load <2 x float>, ptr %i.nz, align 8 ; 2 uses
  %.sroa.4177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %.sroa.4177.0.copyload.i = load float, ptr %.sroa.4177.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %.sroa.5178.0.copyload.i = load <2 x float>, ptr %.sroa.5178.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 20
  %.sroa.6179.0.copyload.i = load float, ptr %.sroa.6179.0..sroa_idx.i, align 4 ; 2 uses
  %i.oy = fcmp olt <2 x float> %.sroa.0176.0.copyload.i, %.sroa.0180.0.copyload.i
  %i.oz = select <2 x i1> %i.oy, <2 x float> %.sroa.0176.0.copyload.i, <2 x float> %.sroa.0180.0.copyload.i
  %i.pa = fcmp olt float %.sroa.4177.0.copyload.i, %.sroa.4181.0.copyload.i
  %i.pb = select i1 %i.pa, float %.sroa.4177.0.copyload.i, float %.sroa.4181.0.copyload.i
  %i.pc = fcmp ogt <2 x float> %.sroa.5178.0.copyload.i, %.sroa.5182.0.copyload.i
  %i.pd = select <2 x i1> %i.pc, <2 x float> %.sroa.5178.0.copyload.i, <2 x float> %.sroa.5182.0.copyload.i
  %i.pe = fcmp ogt float %.sroa.6179.0.copyload.i, %.sroa.6183.0.copyload.i
  %i.pf = select i1 %i.pe, float %.sroa.6179.0.copyload.i, float %.sroa.6183.0.copyload.i
  store <2 x float> %i.oz, ptr %i.nj, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store float %i.pb, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  store <2 x float> %i.pd, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !32
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 20
  store float %i.pf, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !32
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nz, i64 44
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ok, i64 44
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  %i.pj = load i16, ptr %i.pg, align 4, !tbaa !39
  %i.pk = load i16, ptr %i.ph, align 4, !tbaa !39
  %i.pl = call noundef i16 @llvm.umax.i16(i16 %i.pj, i16 %i.pk)
  %i.pm = add i16 %i.pl, 1
  store i16 %i.pm, ptr %i.pi, align 4, !tbaa !39
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.po = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.pq = load i64, ptr %i.pn, align 8, !tbaa !38
  %i.pr = load i64, ptr %i.po, align 8, !tbaa !38
  %i.ps = or i64 %i.pr, %i.pq
  store i64 %i.ps, ptr %i.pp, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %b3BuildTree.exit

b3BuildTree.exit:                                 ; preds = %bb.au, %bb.dq
  %.098.i = phi i32 [ %i.fj, %bb.au ], [ %i.nh, %bb.dq ]
  store i32 %.098.i, ptr %i.ag, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.dr

bb.dr:                                            ; preds = %bb.c, %b3BuildTree.exit
  %.0 = phi i32 [ %indvars.le, %b3BuildTree.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @b3DynamicTree_Save(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 !func_sanitize !98 {
bb.a:
  %2 = alloca %struct.b3DynamicTree, align 8      ; 6 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.c = icmp ne ptr %0, null, !nosanitize !9
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = and i1 %i.c, %i.f, !nosanitize !9
  br i1 %i.g, label %bb.d, label %bb.c, !prof !20, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @130, i64 %i.d) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false), !tbaa.struct !103
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.i, i8 0, i64 36, i1 false)
  %i.j = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 80, i64 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %i.l to i64
  %i.q = tail call i64 @fwrite(ptr noundef nonnull %i.o, i64 noundef 48, i64 noundef %i.p, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.r = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9
end_hunk_0
begin_hunk_1_@b3PartitionMid:bb.a
bb.ax:                                            ; preds = %.critedge10
  %i.gs = ptrtoint ptr %i.gj to i64, !nosanitize !9 ; 2 uses
  %i.gt = and i64 %i.gs, 3, !nosanitize !9
  %i.gu = icmp eq i64 %i.gt, 0, !nosanitize !9
  %i.gv = and i1 %i.cs, %i.gu
  br i1 %i.gv, label %bb.az, label %bb.ay, !prof !20, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @274, i64 %i.gs) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.az:                                            ; preds = %bb.ax
  %i.gw = load i32, ptr %i.gj, align 4, !tbaa !47
  %i.gx = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next713 ; 3 uses
  %i.gy = shl nsw i64 %indvars.iv.next713, 2
  %i.gz = add i64 %i.gy, %i.cr, !nosanitize !9    ; 3 uses
  %i.ha = icmp ne i64 %i.gz, 0
  %i.hb = icmp uge i64 %i.gz, %i.cr, !nosanitize !9
  %i.hc = xor i1 %i.gc, %i.hb
  %i.hd = and i1 %i.ha, %i.hc, !nosanitize !9
  br i1 %i.hd, label %bb.bb, label %bb.ba, !prof !20, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @275, i64 %i.cr, i64 %i.gz) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.he = ptrtoint ptr %i.gx to i64, !nosanitize !9 ; 2 uses
  %i.hf = and i64 %i.he, 3, !nosanitize !9
  %i.hg = icmp eq i64 %i.hf, 0, !nosanitize !9
  br i1 %i.hg, label %bb.bd, label %bb.bc, !prof !20, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @276, i64 %i.he) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bd:                                            ; preds = %bb.bb
  %i.hh = load i32, ptr %i.gx, align 4, !tbaa !47
  store i32 %i.hh, ptr %i.gj, align 4, !tbaa !47
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !47
  %i.hi = mul nsw i64 %i.fv, 12
  %i.hj = add i64 %i.hi, %i.d, !nosanitize !9     ; 3 uses
  %i.hk = icmp ne i64 %i.hj, 0, !nosanitize !9
  %i.hl = icmp uge i64 %i.hj, %i.d, !nosanitize !9
  %i.hm = xor i1 %i.gp, %i.hl
  %i.hn = and i1 %i.hk, %i.hm, !nosanitize !9
  br i1 %i.hn, label %bb.bf, label %bb.be, !prof !20, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @277, i64 %i.d, i64 %i.hj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bf:                                            ; preds = %bb.bd
  %i.ho = getelementptr inbounds [12 x i8], ptr %1, i64 %i.fv ; 2 uses
  %.sroa.0.0.copyload = load <3 x float>, ptr %i.ho, align 4, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ho, ptr noundef nonnull align 4 dereferenceable(12) %i.gf, i64 12, i1 false), !tbaa.struct !48
  store <3 x float> %.sroa.0.0.copyload, ptr %i.gf, align 4, !tbaa !32
  %i.hp = add nsw i32 %.7185.lcssa, 1
  br label %.critedge213

.critedge213:                                     ; preds = %bb.at, %.critedge8, %bb.bf
  %.8186 = phi i32 [ %i.hp, %bb.bf ], [ %.7185.lcssa, %.critedge8 ], [ %.7185.lcssa, %bb.at ] ; 3 uses
  %.8.in = phi i64 [ %indvars.iv.next713, %bb.bf ], [ %i.fg, %.critedge8 ], [ %indvars.iv.next713, %bb.at ]
  %.8 = trunc i64 %.8.in to i32                   ; 2 uses
  %i.hq = icmp slt i32 %.8186, %.8
  br i1 %i.hq, label %.preheader, label %.loopexit, !llvm.loop !115

.loopexit:                                        ; preds = %.critedge211, %.critedge212, %.critedge213
  %.9 = phi i32 [ %.5183, %.critedge212 ], [ %.8186, %.critedge213 ], [ %.2180, %.critedge211 ] ; 3 uses
  %i.hr = icmp sgt i32 %.9, 0
  %i.hs = icmp slt i32 %.9, %2
  %or.cond214 = and i1 %i.hr, %i.hs
  %i.ht = lshr i32 %2, 1
  %.0187 = select i1 %or.cond214, i32 %.9, i32 %i.ht
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit, %bb.b
  %.1188 = phi i32 [ %i.b, %bb.b ], [ %.0187, %.loopexit ]
  ret i32 %.1188
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"long", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS10b3TreeNode", !12, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = !{!"p1 _ZTS6b3AABB", !12, i64 0}
!16 = !{!"p1 _ZTS6b3Vec3", !12, i64 0}
!17 = !{!"b3DynamicTree", !11, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !14, i64 40, !15, i64 48, !16, i64 56, !14, i64 64, !6, i64 72}
!18 = !{!17, !11, i64 0}
!19 = !{!17, !6, i64 16}
!20 = !{!"branch_weights", i32 1048575, i32 1}
!21 = !{!17, !6, i64 24}
!22 = !{!17, !6, i64 20}
!23 = !{!17, !13, i64 8}
!24 = !{!5, !5, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!17, !6, i64 32}
!27 = !{!17, !6, i64 28}
!28 = !{!17, !14, i64 40}
!29 = !{!17, !6, i64 72}
!30 = !{!17, !16, i64 56}
!31 = !{!"float", !5, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32}
!34 = !{!"b3Vec3", !31, i64 0, !31, i64 4, !31, i64 8}
!35 = !{!"b3AABB", !34, i64 0, !34, i64 12}
!36 = !{!"short", !5, i64 0}
!37 = !{!"b3TreeNode", !35, i64 0, !11, i64 24, !5, i64 32, !5, i64 40, !36, i64 44, !36, i64 46}
!38 = !{!37, !11, i64 24}
!39 = !{!37, !36, i64 44}
!40 = !{!37, !36, i64 46}
!41 = !{!11, !11, i64 0}
!42 = !{!"branch_weights", i32 134217473, i32 127}
!43 = !{i32 -1056584962, i32 -1562881747}
!44 = !{i32 -1056584962, i32 -1261591426}
!45 = !{i32 -1056584962, i32 530935627}
!46 = !{i32 -1056584962, i32 1778690163}
!47 = !{!6, !6, i64 0}
!48 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32}
!49 = distinct !{!49, !25}
!50 = !{i32 -1056584962, i32 53345084}
!51 = !{i32 -1056584962, i32 -811056004}
!52 = !{!17, !15, i64 48}
!53 = !{!17, !14, i64 64}
!54 = !{i32 -1056584962, i32 342401165}
!55 = distinct !{!55, !25}
!56 = !{i32 -1056584962, i32 -138258594}
!57 = !{!"branch_weights", i32 1, i32 127}
!58 = !{!"branch_weights", i32 127, i32 134217473}
!59 = !{!36, !36, i64 0}
!60 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 8, !41, i64 32, i64 8, !24, i64 40, i64 4, !24, i64 44, i64 2, !59, i64 46, i64 2, !59}
!61 = !{i32 -1056584962, i32 1585306691}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = !{!35, !31, i64 0}
!65 = !{!35, !31, i64 4}
!66 = !{!35, !31, i64 8}
!67 = !{!35, !31, i64 12}
!68 = !{!35, !31, i64 16}
!69 = !{!35, !31, i64 20}
!70 = !{i32 -1056584962, i32 -176013449}
!71 = !{i32 -1056584962, i32 -1709195435}
!72 = !{i32 -1056584962, i32 -1048341827}
!73 = !{i32 -1056584962, i32 -733631553}
!74 = distinct !{!74, !25}
!75 = !{i32 -1056584962, i32 411851596}
!76 = distinct !{!76, !25}
!77 = !{i32 -1056584962, i32 -1352707968}
!78 = distinct !{!78, !25}
!79 = !{i32 -1056584962, i32 1716883143}
!80 = !{!"b3RayCastInput", !34, i64 0, !34, i64 12, !31, i64 24}
!81 = !{!80, !31, i64 24}
!82 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 4, !32}
!83 = distinct !{!83, !25}
!84 = !{i32 -1056584962, i32 1185008263}
!85 = !{!"b3BoxCastInput", !35, i64 0, !34, i64 24, !31, i64 36}
!86 = !{!85, !31, i64 36}
!87 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 4, !32, i64 28, i64 4, !32, i64 32, i64 4, !32, i64 36, i64 4, !32}
!88 = !{i32 -1056584962, i32 1697064285}
!89 = !{!"branch_weights", i32 127, i32 1}
!90 = !{!"branch_weights", i32 16129, i32 127}
!91 = !{!"b3RebuildItem", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!92 = !{!91, !6, i64 0}
!93 = !{!91, !6, i64 4}
!94 = !{!91, !6, i64 8}
!95 = !{!91, !6, i64 16}
!96 = !{!91, !6, i64 12}
!97 = !{!"branch_weights", i32 1, i32 1048574}
!98 = !{i32 -1056584962, i32 10718739}
!99 = !{!13, !13, i64 0}
!100 = !{!14, !14, i64 0}
!101 = !{!15, !15, i64 0}
!102 = !{!16, !16, i64 0}
!103 = !{i64 0, i64 8, !41, i64 8, i64 8, !99, i64 16, i64 4, !47, i64 20, i64 4, !47, i64 24, i64 4, !47, i64 28, i64 4, !47, i64 32, i64 4, !47, i64 40, i64 8, !100, i64 48, i64 8, !101, i64 56, i64 8, !102, i64 64, i64 8, !100, i64 72, i64 4, !47}
!104 = distinct !{!104, !25}
!105 = !{i32 -1056584962, i32 787452795}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = !{i32 -1056584962, i32 731112195}
!117 = !{!34, !31, i64 0}
!118 = !{!34, !31, i64 4}
!119 = !{!34, !31, i64 8}
end_hunk_1
