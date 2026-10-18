Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/prismatic_joint?download=true
inline.NumInlined: 265
inline.NumDeleted: 34
begin_hunk_0_@b3PreparePrismaticJoint:bb.a
  %i.ph = fmul float %i.pd, %i.pf
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.ph, i64 1
  br label %b3MakeSoft.exit

b3MakeSoft.exit:                                  ; preds = %b3InvertMatrix.exit, %bb.ag
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.ag ], [ zeroinitializer, %b3InvertMatrix.exit ]
  %.sroa.5.0.i = phi float [ %i.pf, %bb.ag ], [ 0.000000e+00, %b3InvertMatrix.exit ]
  store <2 x float> %.sroa.014.0.i, ptr %i.or, align 4, !tbaa !90
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !90
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.pj = load i8, ptr %i.pi, align 4, !tbaa !146 ; 3 uses
  %i.pk = icmp ult i8 %i.pj, 2
  br i1 %i.pk, label %bb.ai, label %bb.ah, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %b3MakeSoft.exit
  %i.pl = zext i8 %i.pj to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @74, i64 %i.pl) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ai:                                            ; preds = %b3MakeSoft.exit
  %i.pm = icmp eq i8 %i.pj, 0
  br i1 %i.pm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fk, align 4, !tbaa !90
  %.sroa_idx189 = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %.sroa_idx189, align 4, !tbaa !90
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> zeroinitializer, ptr %i.pn, align 4, !tbaa !90
  store <2 x float> zeroinitializer, ptr %i.po, align 4, !tbaa !90
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float 0.000000e+00, ptr %i.pp, align 4, !tbaa !95
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartPrismaticJoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !98 {
bb.a:
  %2 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load float, ptr %i.f, align 4, !tbaa !112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load float, ptr %i.h, align 4, !tbaa !113 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5571.0.copyload = load float, ptr %.sroa.5571.0..sroa_idx, align 4, !tbaa !90
  %.sroa.6572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.8574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.8574.0.copyload = load float, ptr %.sroa.8574.0..sroa_idx, align 4, !tbaa !90
  %.sroa.9575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !90
  %i.l = load <2 x float>, ptr %.sroa.6572.0..sroa_idx, align 4, !tbaa !90
  %i.m = load <2 x float>, ptr %.sroa.9575.0..sroa_idx, align 4, !tbaa !90
  %.sroa.11577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.11577.0.copyload = load float, ptr %.sroa.11577.0..sroa_idx, align 4, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.0566.0.copyload = load float, ptr %i.n, align 4, !tbaa !90
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !90
  %.sroa.5567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.5567.0.copyload = load float, ptr %.sroa.5567.0..sroa_idx, align 4, !tbaa !90
  %.sroa.6568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.6568.0.copyload = load float, ptr %.sroa.6568.0..sroa_idx, align 4, !tbaa !90
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !90
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !90
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !90
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !90
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = load i32, ptr %i.q, align 4, !tbaa !115  ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ne ptr %1, null, !nosanitize !10
  %i.u = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.v = and i64 %i.u, 7, !nosanitize !10
  %i.w = icmp eq i64 %i.v, 0, !nosanitize !10
  %i.x = and i1 %i.t, %i.w, !nosanitize !10
  br i1 %i.x, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @76, i64 %i.u) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118  ; 3 uses
  %i.aa = sext i32 %i.r to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.aa
  %i.ac = mul nsw i64 %i.aa, 56
  %i.ad = ptrtoint ptr %i.z to i64, !nosanitize !10 ; 3 uses
  %i.ae = add i64 %i.ac, %i.ad, !nosanitize !10   ; 3 uses
  %i.af = icmp ne ptr %i.z, null, !nosanitize !10
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = xor i1 %i.af, %i.ag
  %i.ai = icmp uge i64 %i.ae, %i.ad, !nosanitize !10
  %i.aj = icmp slt i32 %i.r, 0
  %i.ak = xor i1 %i.aj, %i.ai
  %i.al = and i1 %i.ah, %i.ak, !nosanitize !10
  br i1 %i.al, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.ad, i64 %i.ae) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.am = phi ptr [ %2, %bb.c ], [ %i.ab, %bb.f ] ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !116 ; 3 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ne ptr %1, null, !nosanitize !10
  %i.ar = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !10
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !10
  %i.au = and i1 %i.aq, %i.at, !nosanitize !10
  br i1 %i.au, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @78, i64 %i.ar) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !118 ; 3 uses
  %i.ax = sext i32 %i.ao to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [56 x i8], ptr %i.aw, i64 %i.ax
  %i.az = mul nsw i64 %i.ax, 56
  %i.ba = ptrtoint ptr %i.aw to i64, !nosanitize !10 ; 3 uses
  %i.bb = add i64 %i.az, %i.ba, !nosanitize !10   ; 3 uses
  %i.bc = icmp ne ptr %i.aw, null, !nosanitize !10
  %i.bd = icmp eq i64 %i.bb, 0
  %i.be = xor i1 %i.bc, %i.bd
  %i.bf = icmp uge i64 %i.bb, %i.ba, !nosanitize !10
  %i.bg = icmp slt i32 %i.ao, 0
  %i.bh = xor i1 %i.bg, %i.bf
  %i.bi = and i1 %i.be, %i.bh, !nosanitize !10
  br i1 %i.bi, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @79, i64 %i.ba, i64 %i.bb) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.bj = phi ptr [ %2, %bb.h ], [ %i.ay, %bb.k ] ; 12 uses
  %i.bk = icmp ne ptr %i.am, null, !nosanitize !10
  %i.bl = ptrtoint ptr %i.am to i64, !nosanitize !10 ; 2 uses
  %i.bm = and i64 %i.bl, 3, !nosanitize !10
  %i.bn = icmp eq i64 %i.bm, 0, !nosanitize !10
  %i.bo = and i1 %i.bk, %i.bn, !nosanitize !10
  br i1 %i.bo, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @80, i64 %i.bl) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bp = icmp ne ptr %i.bj, null, !nosanitize !10
  %i.bq = ptrtoint ptr %i.bj to i64, !nosanitize !10 ; 2 uses
  %i.br = and i64 %i.bq, 3, !nosanitize !10
  %i.bs = icmp eq i64 %i.br, 0, !nosanitize !10
  %i.bt = and i1 %i.bp, %i.bs, !nosanitize !10
  br i1 %i.bt, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @81, i64 %i.bq) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.bv = load <2 x float>, ptr %i.bu, align 4    ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.bx = load <2 x float>, ptr %i.bw, align 4    ; 13 uses
  %3 = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %4 = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.ca = load <2 x float>, ptr %i.bz, align 4    ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %i.cc = load <2 x float>, ptr %i.cb, align 4    ; 6 uses
  %.sroa.0281.0.copyload = load <2 x float>, ptr %i.by, align 4 ; 6 uses
  %.sroa.2282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.sroa.2282.0.copyload = load float, ptr %.sroa.2282.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.4.vec.extract13.i.i351 = extractelement <2 x float> %i.ca, i64 1
  %i.cd = fmul float %.sroa.09.4.vec.extract13.i.i351, %.sroa.2282.0.copyload
  %shift = shufflevector <2 x float> %.sroa.0281.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop584 = fmul <2 x float> %i.cc, %shift
  %i.ce = extractelement <2 x float> %foldExtExtBinop584, i64 0
  %i.cf = fsub float %i.cd, %i.ce
  %i.cg = shufflevector <2 x float> %i.cc, <2 x float> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.ch = fmul <2 x float> %i.cg, %.sroa.0281.0.copyload
  %i.ci = shufflevector <2 x float> %.sroa.0281.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %.sroa.2282.0.copyload, i64 0
  %i.ck = fmul <2 x float> %i.ca, %i.cj
  %i.cl = fsub <2 x float> %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.0229.0.copyload = load <2 x float>, ptr %i.cm, align 4 ; 5 uses
  %.sroa.2230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.2230.0.copyload = load float, ptr %.sroa.2230.0..sroa_idx, align 4 ; 3 uses
  %i.cn = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.2230.0.copyload
  %shift586 = shufflevector <2 x float> %.sroa.0229.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop587 = fmul <2 x float> %i.bx, %shift586
  %i.co = extractelement <2 x float> %foldExtExtBinop587, i64 0
  %i.cp = fsub float %i.cn, %i.co
  %i.cq = shufflevector <2 x float> %.sroa.0229.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cr = insertelement <2 x float> %i.cq, float %.sroa.2230.0.copyload, i64 0 ; 2 uses
  %i.cs = fmul <2 x float> %3, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 324
  %.sroa.0189.0.copyload = load <2 x float>, ptr %i.ct, align 4 ; 5 uses
  %.sroa.2190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 332
  %.sroa.2190.0.copyload = load float, ptr %.sroa.2190.0..sroa_idx, align 4 ; 3 uses
  %i.cu = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.2190.0.copyload
  %shift589 = shufflevector <2 x float> %.sroa.0189.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop590.a = fmul <2 x float> %i.bx, %shift589
  %i.cv = extractelement <2 x float> %foldExtExtBinop590.a, i64 0
  %i.cw = fsub float %i.cu, %i.cv
  %i.cx = shufflevector <2 x float> %.sroa.0189.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cy = insertelement <2 x float> %i.cx, float %.sroa.2190.0.copyload, i64 0 ; 2 uses
  %i.cz = fmul <2 x float> %3, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.0183.0.copyload = load <2 x float>, ptr %i.da, align 4 ; 5 uses
  %i.db = shufflevector <2 x float> %.sroa.0183.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.2184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.2184.0.copyload = load float, ptr %.sroa.2184.0..sroa_idx, align 4 ; 4 uses
  %i.dc = shufflevector <2 x float> %i.cc, <2 x float> %i.bx, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.dd = shufflevector <2 x float> %.sroa.0229.0.copyload, <2 x float> %.sroa.0189.0.copyload, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.de = insertelement <4 x float> %i.dd, float %.sroa.2282.0.copyload, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dg = fmul <4 x float> %i.dc, %i.df           ; 3 uses
  %i.dh = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2184.0.copyload
  %i.di = shufflevector <2 x float> %.sroa.0183.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dj = insertelement <2 x float> %i.di, float %.sroa.2184.0.copyload, i64 1
  %5 = fmul <2 x float> %i.bv, %i.dj
  %i.dk = fmul <2 x float> %4, %.sroa.0183.0.copyload
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dp = load float, ptr %i.dl, align 4, !tbaa !94
  %i.dq = load float, ptr %i.dm, align 4, !tbaa !97
  %i.dr = fadd float %i.dp, %i.dq
  %i.ds = load float, ptr %i.dn, align 4, !tbaa !96
  %i.dt = fadd float %i.dr, %i.ds
  %i.du = load float, ptr %i.do, align 4, !tbaa !95
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.095.0.copyload = load <2 x float>, ptr %i.dv, align 4 ; 2 uses
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.296.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 4 ; 2 uses
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 2 uses
  %.sroa.658.0.copyload = load float, ptr %.sroa.658.0..sroa_idx, align 4, !tbaa !90
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.bj, align 4, !tbaa !90
  %.sroa.052.0.copyload = load <2 x float>, ptr %i.dw, align 4, !tbaa !90 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 20 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !90
  %i.dx = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dg, <4 x i32> <i32 5, i32 poison, i32 4, i32 3> ; 2 uses
  %i.dy = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.dz = shufflevector <2 x float> %.sroa.0281.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ea = fmul <4 x float> %i.dy, %i.dz
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> %i.dx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ec = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cf, i64 0
  %i.ed = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ec, <4 x float> %i.ed, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ef = fadd <4 x float> %i.eb, %i.ee           ; 2 uses
  %i.eg = shufflevector <2 x float> %i.cc, <2 x float> %i.ca, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.eh = insertelement <4 x float> %i.eg, float 1.000000e+00, i64 3
  %i.ei = fmul <4 x float> %i.eh, %i.ef
  %i.ej = shufflevector <2 x float> %i.ca, <2 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ek = insertelement <4 x float> %i.ej, float 0.000000e+00, i64 3
  %i.el = shufflevector <4 x float> %i.ef, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.em = fmul <4 x float> %i.ek, %i.el
  %i.en = fsub <4 x float> %i.ei, %i.em
  %i.eo = fmul <4 x float> %i.en, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00> ; 2 uses
  %i.ep = shufflevector <2 x float> %.sroa.0281.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.eq = insertelement <4 x float> %i.ep, float 1.000000e+00, i64 3
  %i.er = insertelement <4 x float> %i.eq, float %.sroa.2282.0.copyload, i64 1
  %i.es = fadd <4 x float> %i.er, %i.eo           ; 5 uses
  %i.et = shufflevector <2 x float> %.sroa.0281.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.eu = insertelement <4 x float> %i.et, float 0.000000e+00, i64 3
  %i.ev = insertelement <4 x float> %i.eu, float %.sroa.2282.0.copyload, i64 0
  %i.ew = shufflevector <4 x float> %i.eo, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ex = fadd <4 x float> %i.ev, %i.ew
  %i.ey = shufflevector <2 x float> %i.bx, <2 x float> %i.bv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ez = fmul <2 x float> %i.ey, %.sroa.0229.0.copyload
  %i.fa = fmul <2 x float> %i.bv, %i.cr
  %i.fb = fsub <2 x float> %i.ez, %i.fa
  %i.fc = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <4 x float> %i.dx, <4 x float> %i.fc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fe = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cp, i64 2
  %i.ff = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fh = fadd <4 x float> %i.fd, %i.fg           ; 2 uses
  %i.fi = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float 1.000000e+00, i64 3 ; 3 uses
  %i.fk = fmul <4 x float> %i.fj, %i.fh
  %i.fl = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.fm = insertelement <4 x float> %i.fl, float 0.000000e+00, i64 3 ; 3 uses
  %i.fn = shufflevector <4 x float> %i.fh, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fo = fmul <4 x float> %i.fm, %i.fn
  %i.fp = fsub <4 x float> %i.fk, %i.fo
  %i.fq = fmul <4 x float> %i.fp, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.fr = shufflevector <2 x float> %.sroa.0229.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fs = insertelement <4 x float> %i.fr, float 1.000000e+00, i64 3
  %i.ft = insertelement <4 x float> %i.fs, float %.sroa.2230.0.copyload, i64 0
  %i.fu = fadd <4 x float> %i.ft, %i.fq           ; 6 uses
  %i.fv = fmul <4 x float> %i.es, %i.fu
  %i.fw = shufflevector <4 x float> %i.fu, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fx = fmul <4 x float> %i.ex, %i.fw
  %i.fy = fsub <4 x float> %i.fv, %i.fx
  %i.fz = fmul <2 x float> %i.ey, %.sroa.0189.0.copyload
  %i.ga = fmul <2 x float> %i.bv, %i.cy
  %i.gb = fsub <2 x float> %i.fz, %i.ga
  %i.gc = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dg, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.gd = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gf = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cw, i64 2
  %i.gg = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gi = fadd <4 x float> %i.ge, %i.gh           ; 2 uses
  %i.gj = fmul <4 x float> %i.fj, %i.gi
  %i.gk = shufflevector <4 x float> %i.gi, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.gl = fmul <4 x float> %i.fm, %i.gk
  %i.gm = fsub <4 x float> %i.gj, %i.gl
  %i.gn = fmul <4 x float> %i.gm, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.go = shufflevector <2 x float> %.sroa.0189.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float 1.000000e+00, i64 3
  %i.gq = insertelement <4 x float> %i.gp, float %.sroa.2190.0.copyload, i64 0
  %i.gr = fadd <4 x float> %i.gq, %i.gn           ; 6 uses
  %i.gs = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.dg, <4 x i32> <i32 7, i32 poison, i32 poison, i32 3>
  %i.gt = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gu = shufflevector <4 x float> %i.gs, <4 x float> %i.gt, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dh, i64 0
  %i.gw = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x float> %i.gv, <4 x float> %i.gw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gy = fsub <4 x float> %i.gu, %i.gx
  %i.gz = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ha = insertelement <4 x float> %i.gz, float 1.000000e+00, i64 3
  %i.hb = shufflevector <2 x float> %.sroa.0183.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.hc = insertelement <4 x float> %i.hb, float 1.000000e+00, i64 3
  %i.hd = insertelement <4 x float> %i.hc, float %.sroa.2184.0.copyload, i64 1
  %i.he = fmul <4 x float> %i.ha, %i.hd
  %i.hf = fadd <4 x float> %i.he, %i.gy           ; 2 uses
  %i.hg = fmul <4 x float> %i.fj, %i.hf
  %i.hh = shufflevector <4 x float> %i.hf, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.hi = fmul <4 x float> %i.fm, %i.hh
  %i.hj = fsub <4 x float> %i.hg, %i.hi
  %i.hk = fmul <4 x float> %i.hj, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.hl = shufflevector <2 x float> %.sroa.0183.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.hm = insertelement <4 x float> %i.hl, float 1.000000e+00, i64 3
  %i.hn = insertelement <4 x float> %i.hm, float %.sroa.2184.0.copyload, i64 0
  %i.ho = fadd <4 x float> %i.hn, %i.hk           ; 6 uses
  %i.hp = extractelement <4 x float> %i.gr, i64 0
  %i.hq = fmul <4 x float> %i.es, %i.gr
  %i.hr = shufflevector <4 x float> %i.es, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 2 uses
  %i.hs = shufflevector <4 x float> %i.gr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ht = fmul <4 x float> %i.hr, %i.hs
  %i.hu = fsub <4 x float> %i.hq, %i.ht
  %i.hv = extractelement <4 x float> %i.ho, i64 0
  %i.hw = fmul <4 x float> %i.es, %i.ho
  %i.hx = shufflevector <4 x float> %i.ho, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.hy = fmul <4 x float> %i.hr, %i.hx
  %i.hz = fsub <4 x float> %i.hw, %i.hy
  %.scalar = fsub float %i.dt, %i.du
  %i.ia = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ic = load <2 x float>, ptr %i.p, align 4     ; 5 uses
  %i.id = load float, ptr %.sroa_idx, align 4     ; 3 uses
  %foldExtExtBinop592 = fmul <4 x float> %i.fu, %i.ib
  %i.ie = extractelement <4 x float> %foldExtExtBinop592, i64 0
  %i.if = extractelement <2 x float> %i.ic, i64 0
  %i.ig = fmul float %i.hp, %i.if
  %i.ih = fadd float %i.ie, %i.ig
  %i.ii = fmul float %i.hv, %i.id
  %i.ij = fadd float %i.ih, %i.ii                 ; 2 uses
  %i.ik = fmul <4 x float> %i.fy, %i.ib
  %i.il = shufflevector <2 x float> %i.ic, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.im = fmul <4 x float> %i.il, %i.hu
  %i.in = fadd <4 x float> %i.ik, %i.im
  %i.io = shufflevector <2 x float> %i.ic, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ip = fmul <4 x float> %i.io, %i.hz
  %i.iq = fadd <4 x float> %i.in, %i.ip
  %i.ir = shufflevector <2 x float> %.sroa.095.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.is = insertelement <4 x float> %i.ir, float -0.000000e+00, i64 3
  %i.it = insertelement <4 x float> %i.is, float %.sroa.296.0.copyload, i64 2
  %i.iu = fadd <4 x float> %i.iq, %i.it           ; 4 uses
  %i.iv = shufflevector <4 x float> %i.fu, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.iw = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = fmul <2 x float> %i.iv, %i.iw
  %i.iy = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.iz = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x float> %i.iy, %i.iz
  %i.jb = fadd <2 x float> %i.ix, %i.ja
  %i.jc = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.jd = insertelement <2 x float> poison, float %i.id, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul <2 x float> %i.jc, %i.je
  %i.jg = fadd <2 x float> %i.jb, %i.jf           ; 2 uses
  %i.jh = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x float> %i.ji, %i.jg
  %i.jk = fadd <2 x float> %i.jj, %.sroa.056.0.copyload
  %i.jl = fmul float %i.i, %i.ij
  %i.jm = fadd float %i.jl, %.sroa.658.0.copyload
  %i.jn = extractelement <4 x float> %i.iu, i64 0 ; 2 uses
  %i.jo = fmul float %.sroa.5567.0.copyload, %i.jn
  %i.jp = extractelement <4 x float> %i.iu, i64 1 ; 2 uses
  %i.jq = fmul float %.sroa.8.0.copyload, %i.jp
  %i.jr = fadd float %i.jo, %i.jq
  %i.js = fmul float %.sroa.0566.0.copyload, %i.jn
  %i.jt = fmul float %.sroa.6568.0.copyload, %i.jp
  %i.ju = extractelement <4 x float> %i.iu, i64 2 ; 2 uses
  %i.jv = fmul float %.sroa.9.0.copyload, %i.ju
  %i.jw = shufflevector <2 x float> %.sroa.052.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.jx = insertelement <4 x float> %i.jw, float %.sroa.4.0.copyload, i64 0
  %i.jy = insertelement <4 x float> %i.jx, float %.sroa.7.0.copyload, i64 1
  %i.jz = insertelement <4 x float> %i.jy, float %.sroa.10.0.copyload, i64 2
  %i.ka = fmul <4 x float> %i.jz, %i.iu           ; 3 uses
  %i.kb = fmul float %.sroa.11.0.copyload, %i.ju
  %i.kc = fadd float %i.kb, %i.jr
  %i.kd = shufflevector <4 x float> %i.ka, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ke = insertelement <2 x float> %i.kd, float %i.js, i64 0
  %i.kf = shufflevector <4 x float> %i.ka, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.kg = insertelement <2 x float> %i.kf, float %i.jt, i64 0
  %i.kh = fadd <2 x float> %i.ke, %i.kg
  %i.ki = shufflevector <4 x float> %i.ka, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.kj = insertelement <2 x float> %i.ki, float %i.jv, i64 0
  %i.kk = fadd <2 x float> %i.kj, %i.kh
  %i.kl = fadd <2 x float> %i.kk, %.sroa.052.0.copyload
  %i.km = fadd float %i.kc, %.sroa.6.0.copyload
  %i.kn = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !120
  %i.kp = and i32 %i.ko, 4096
  %.not = icmp eq i32 %i.kp, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.066.0.copyload = load <2 x float>, ptr %i.am, align 4, !tbaa !90
  %i.kq = insertelement <2 x float> poison, float %i.g, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x float> %i.kr, %i.jg
  %i.kt = fsub <2 x float> %.sroa.066.0.copyload, %i.ks
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 20 ; 2 uses
  %.sroa.663.0.copyload = load float, ptr %.sroa.663.0..sroa_idx, align 4, !tbaa !90
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.0291.0.copyload = load <2 x float>, ptr %i.ku, align 4 ; 5 uses
  %i.kv = shufflevector <2 x float> %.sroa.0291.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.2292.0.copyload = load float, ptr %.sroa.2292.0..sroa_idx, align 4 ; 4 uses
  %i.kw = insertelement <3 x float> %i.kv, float %.sroa.2292.0.copyload, i64 2
  %i.kx = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <3 x i32> <i32 1, i32 2, i32 0>
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %i.bx, i64 1
  %6 = fmul float %.sroa.2.12.vec.extract.i, %.sroa.2292.0.copyload
  %i.ky = insertelement <3 x float> poison, float %6, i64 0
  %7 = fmul <2 x float> %3, %.sroa.0291.0.copyload
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %9 = shufflevector <3 x float> %i.ky, <3 x float> %8, <3 x i32> <i32 0, i32 3, i32 4>
  %10 = shufflevector <2 x float> %.sroa.0291.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x float> %10, float %.sroa.2292.0.copyload, i64 1
  %12 = fmul <2 x float> %i.bv, %11
  %13 = fmul <2 x float> %4, %.sroa.0291.0.copyload
  %14 = fsub <2 x float> %12, %13
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.bx, %.sroa.0291.0.copyload
  %16 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %17 = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2292.0.copyload
  %18 = fsub float %16, %17
  %19 = insertelement <3 x float> %15, float %18, i64 2
  %i.kz = fadd <3 x float> %9, %19                ; 2 uses
  %i.la = fmul <3 x float> %i.kx, %i.kz
  %20 = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <3 x i32> <i32 2, i32 0, i32 1>
  %i.lb = shufflevector <3 x float> %i.kz, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %21 = fmul <3 x float> %20, %i.lb
  %i.lc = fsub <3 x float> %i.la, %21
  %i.ld = fmul <3 x float> %i.lc, splat (float 2.000000e+00)
  %i.le = fadd <3 x float> %i.kw, %i.ld           ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0267.0.copyload = load <2 x float>, ptr %i.lf, align 4
  %i.lg = shufflevector <2 x float> %.sroa.0267.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.2268.0.copyload = load float, ptr %.sroa.2268.0..sroa_idx, align 4
  %i.lh = insertelement <3 x float> %i.lg, float %.sroa.2268.0.copyload, i64 2
  %i.li = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.0265.0.copyload = load <2 x float>, ptr %i.li, align 4
  %i.lj = shufflevector <2 x float> %.sroa.0265.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.2266.0.copyload = load float, ptr %.sroa.2266.0..sroa_idx, align 4
  %i.lk = insertelement <3 x float> %i.lj, float %.sroa.2266.0.copyload, i64 2
  %i.ll = fsub <3 x float> %i.lh, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.sroa.0257.0.copyload = load <2 x float>, ptr %i.lm, align 4
  %i.ln = shufflevector <2 x float> %.sroa.0257.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.sroa.2258.0.copyload = load float, ptr %.sroa.2258.0..sroa_idx, align 4
  %i.lo = insertelement <3 x float> %i.ln, float %.sroa.2258.0.copyload, i64 2
  %i.lp = fadd <3 x float> %i.ll, %i.lo
  %i.lq = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.lr = fsub <3 x float> %i.lq, %i.le
  %i.ls = fadd <3 x float> %i.lp, %i.lr
  %i.lt = fadd <3 x float> %i.le, %i.ls           ; 6 uses
  %i.lu = shufflevector <4 x float> %i.fu, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.lv = fmul <3 x float> %i.lt, %i.lu
  %i.lw = shufflevector <4 x float> %i.fu, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.lx = fmul <3 x float> %i.lt, %i.lw
  %i.ly = shufflevector <3 x float> %i.lx, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.lz = fsub <3 x float> %i.lv, %i.ly
  %i.ma = shufflevector <2 x float> %i.ia, <2 x float> poison, <3 x i32> zeroinitializer
  %i.mb = fmul <3 x float> %i.lz, %i.ma
  %i.mc = shufflevector <4 x float> %i.gr, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.md = fmul <3 x float> %i.lt, %i.mc
  %i.me = shufflevector <4 x float> %i.gr, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.mf = fmul <3 x float> %i.lt, %i.me
  %i.mg = shufflevector <3 x float> %i.mf, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.mh = fsub <3 x float> %i.md, %i.mg
  %i.mi = shufflevector <2 x float> %i.ic, <2 x float> poison, <3 x i32> zeroinitializer
  %i.mj = fmul <3 x float> %i.mh, %i.mi
  %i.mk = fadd <3 x float> %i.mb, %i.mj
  %i.ml = shufflevector <3 x float> %i.lt, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mm = shufflevector <4 x float> %i.ho, <4 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.mn = fmul <3 x float> %i.ml, %i.mm
  %i.mo = shufflevector <4 x float> %i.ho, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.mp = fmul <3 x float> %i.lt, %i.mo
  %i.mq = fsub <3 x float> %i.mn, %i.mp
  %i.mr = shufflevector <3 x float> %i.mq, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ms = insertelement <3 x float> poison, float %i.id, i64 0
  %i.mt = shufflevector <3 x float> %i.ms, <3 x float> poison, <3 x i32> zeroinitializer
  %i.mu = fmul <3 x float> %i.mr, %i.mt
  %i.mv = fadd <3 x float> %i.mk, %i.mu
  %i.mw = shufflevector <2 x float> %.sroa.095.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.mx = insertelement <3 x float> %i.mw, float %.sroa.296.0.copyload, i64 0
  %i.my = fadd <3 x float> %i.mv, %i.mx           ; 6 uses
  %i.mz = extractelement <3 x float> %i.my, i64 0
  %i.na = fmul float %.sroa.11577.0.copyload, %i.mz
  %i.nb = extractelement <3 x float> %i.my, i64 1
  %i.nc = fmul float %.sroa.5571.0.copyload, %i.nb
  %i.nd = extractelement <3 x float> %i.my, i64 2
  %i.ne = fmul float %.sroa.8574.0.copyload, %i.nd
  %i.nf = fadd float %i.nc, %i.ne
  %i.ng = fadd float %i.na, %i.nf
  %i.nh = fsub float %.sroa.663.0.copyload, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %.sroa.061.0.copyload = load <2 x float>, ptr %i.ni, align 4, !tbaa !90
  %i.nj = shufflevector <3 x float> %i.my, <3 x float> poison, <2 x i32> zeroinitializer
  %i.nk = fmul <2 x float> %i.m, %i.nj
  %i.nl = shufflevector <3 x float> %i.my, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nm = fmul <2 x float> %i.k, %i.nl
  %i.nn = shufflevector <3 x float> %i.my, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.no = fmul <2 x float> %i.l, %i.nn
  %i.np = fadd <2 x float> %i.nm, %i.no
  %i.nq = fadd <2 x float> %i.nk, %i.np
  %i.nr = fsub <2 x float> %.sroa.061.0.copyload, %i.nq
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.668.0.copyload = load float, ptr %.sroa.668.0..sroa_idx, align 4, !tbaa !90
  %i.ns = fmul float %i.g, %i.ij
  %i.nt = fsub float %.sroa.668.0.copyload, %i.ns
  store <2 x float> %i.kt, ptr %i.am, align 4, !tbaa !90
  store float %i.nt, ptr %.sroa.668.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.nr, ptr %i.ni, align 4, !tbaa !90
  store float %i.nh, ptr %.sroa.663.0..sroa_idx, align 4, !tbaa !90
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !120
  %i.nw = and i32 %i.nv, 4096
  %.not349 = icmp eq i32 %i.nw, 0
  br i1 %.not349, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store <2 x float> %i.jk, ptr %i.bj, align 4, !tbaa !90
  store float %i.jm, ptr %.sroa.658.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.kl, ptr %i.dw, align 4, !tbaa !90
  store float %i.km, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !90
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3SolvePrismaticJoint(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 !func_sanitize !147 {
bb.a:
  %3 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !90 ; 10 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !113 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.132557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.sroa.232567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.332577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.532597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.632607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.l = load <16 x float>, ptr %i.j, align 4, !tbaa !90 ; 35 uses
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !90 ; 9 uses
  %i.n = load <2 x float>, ptr %.sroa.632607.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %.sroa.532597.0.copyload = load float, ptr %.sroa.532597.0..sroa_idx, align 4, !tbaa !90 ; 7 uses
  %.sroa.332577.0.copyload = load float, ptr %.sroa.332577.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %i.o = load <2 x float>, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %i.p = load <2 x float>, ptr %.sroa.53.0..sroa_idx, align 4, !tbaa !90 ; 11 uses
  %i.q = load <2 x float>, ptr %.sroa.132557.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %.sroa.232567.0.copyload = load float, ptr %.sroa.232567.0..sroa_idx, align 4, !tbaa !90 ; 4 uses
  %i.r = load <2 x float>, ptr %.sroa.73.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %.sroa.83.0.copyload = load float, ptr %.sroa.83.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float 1.000000e+00, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load i32, ptr %i.u, align 4, !tbaa !115  ; 3 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp ne ptr %1, null, !nosanitize !10
  %i.y = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.z = and i64 %i.y, 7, !nosanitize !10
  %i.aa = icmp eq i64 %i.z, 0, !nosanitize !10
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !10
  br i1 %i.ab, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.y) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118 ; 3 uses
  %i.ae = sext i32 %i.v to i64                    ; 2 uses
  %i.af = getelementptr inbounds [56 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = mul nsw i64 %i.ae, 56
  %i.ah = ptrtoint ptr %i.ad to i64, !nosanitize !10 ; 3 uses
  %i.ai = add i64 %i.ag, %i.ah, !nosanitize !10   ; 3 uses
  %i.aj = icmp ne ptr %i.ad, null, !nosanitize !10
  %i.ak = icmp eq i64 %i.ai, 0
  %i.al = xor i1 %i.aj, %i.ak
  %i.am = icmp uge i64 %i.ai, %i.ah, !nosanitize !10
  %i.an = icmp slt i32 %i.v, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !10
  br i1 %i.ap, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.ah, i64 %i.ai) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.aq = phi ptr [ %3, %bb.c ], [ %i.af, %bb.f ] ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !116 ; 3 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.m, label %bb.i

end_hunk_0
