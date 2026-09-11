Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh?download=true
inline.NumInlined: 435
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3OverlapMesh:bb.a

bb.am:                                            ; preds = %b3GetRightChild.exit
  %i.if = zext nneg i32 %.074689 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @205, i64 %i.if, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %b3GetRightChild.exit
  %i.ig = sext i32 %.074689 to i64, !nosanitize !9 ; 3 uses
  %i.ih = icmp ult i32 %.074689, 256
  br i1 %i.ih, label %bb.ap, label %bb.ao, !prof !10, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @207, i64 %i.ig) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ap:                                            ; preds = %bb.an
  %i.ii = shl nuw nsw i64 %i.ig, 3
  %i.ij = add i64 %i.ii, %i.cc, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.ij, %i.cc, !nosanitize !9
  br i1 %.not, label %bb.aq, label %bb.ar, !prof !17, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @208, i64 %i.cc, i64 %i.ij) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ig
  store ptr %i.ib, ptr %i.ik, align 8, !tbaa !80
  %i.il = add i64 %i.cm, 32, !nosanitize !9       ; 2 uses
  %i.im = icmp ne i64 %i.il, 0, !nosanitize !9
  %i.in = icmp ult ptr %.076688, inttoptr (i64 -32 to ptr)
  %i.io = and i1 %i.in, %i.im, !nosanitize !9
  br i1 %i.io, label %b3GetLeftChild.exit, label %bb.as, !prof !10, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @708, i64 %i.cm, i64 %i.il) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3GetLeftChild.exit:                              ; preds = %bb.ar
  %i.ip = getelementptr inbounds nuw i8, ptr %.076688, i64 32
  br label %bb.ba

.loopexit:                                        ; preds = %.critedge, %bb.r, %b3LoadV.exit112
  %i.iq = icmp eq i32 %.074689, 0
  br i1 %i.iq, label %.loopexit152, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.ir = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.074689, i32 -1) ; 2 uses
  %i.is = extractvalue { i32, i1 } %i.ir, 0, !nosanitize !9 ; 3 uses
  %i.it = extractvalue { i32, i1 } %i.ir, 1, !nosanitize !9
  br i1 %i.it, label %bb.au, label %bb.av, !prof !17, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  %i.iu = zext i32 %.074689 to i64, !nosanitize !9
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @209, i64 %i.iu, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %bb.at
  %i.iv = sext i32 %i.is to i64, !nosanitize !9   ; 3 uses
  %i.iw = icmp ult i32 %i.is, 256
  br i1 %i.iw, label %bb.ax, label %bb.aw, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @210, i64 %i.iv) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.av
  %i.ix = shl nuw nsw i64 %i.iv, 3
  %i.iy = add i64 %i.ix, %i.cc, !nosanitize !9    ; 2 uses
  %.not95 = icmp ult i64 %i.iy, %i.cc, !nosanitize !9
  br i1 %.not95, label %bb.ay, label %bb.az, !prof !17, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @211, i64 %i.cc, i64 %i.iy) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.az:                                            ; preds = %bb.ax
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.iv
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !80
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %b3GetLeftChild.exit
  %.177 = phi ptr [ %i.ip, %b3GetLeftChild.exit ], [ %i.ja, %bb.az ] ; 3 uses
  %.175 = phi i32 [ %i.id, %b3GetLeftChild.exit ], [ %i.is, %bb.az ]
  %i.jb = icmp ne ptr %.177, null, !nosanitize !9
  %i.jc = ptrtoint ptr %.177 to i64, !nosanitize !9 ; 3 uses
  %i.jd = and i64 %i.jc, 3, !nosanitize !9
  %i.je = icmp eq i64 %i.jd, 0, !nosanitize !9
  %i.jf = and i1 %i.jb, %i.je, !nosanitize !9
  br i1 %i.jf, label %_mm_load_sd.exit.i105, label %._crit_edge, !prof !84, !nosanitize !9

.loopexit152:                                     ; preds = %.loopexit, %.thread144
  %.8 = phi i1 [ true, %.thread144 ], [ false, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %.8
}

declare { ptr, i64 } @b3MakeLocalProxy(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #5

declare void @b3ComputeProxyAABB(ptr dead_on_unwind writable sret(%struct.b3AABB) align 4, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef, <4 x float> noundef, <4 x float> noundef, <4 x float> noundef, <4 x float> noundef) local_unnamed_addr #5

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3ComputeMeshAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, <2 x float> %3, float %4) local_unnamed_addr #6 !func_sanitize !238 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @212, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.f, align 4
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.228.0.copyload = load float, ptr %.sroa.228.0..sroa_idx, align 4
  %i.g = fmul float %4, %.sroa.228.0.copyload     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.h, align 4
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.218.0.copyload = load float, ptr %.sroa.218.0..sroa_idx, align 4
  %i.i = fmul float %4, %.sroa.218.0.copyload     ; 4 uses
  %i.j = fcmp olt float %i.g, %i.i
  %i.k = fcmp ogt float %i.g, %i.i
  %.sroa.0108.sroa.0.0.copyload = load <2 x float>, ptr %2, align 8
  %.sroa.0108.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0108.sroa.4.0.copyload = load float, ptr %.sroa.0108.sroa.4.0..sroa_idx, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.4109.0.copyload = load <2 x float>, ptr %.sroa.4109.0..sroa_idx, align 4 ; 13 uses
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5112.0.copyload = load <2 x float>, ptr %.sroa.5112.0..sroa_idx, align 4 ; 9 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.5112.0.copyload, i64 0
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %.sroa.4109.0.copyload, i64 1 ; 2 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.4109.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.5112.0.copyload, i64 1 ; 2 uses
  %i.l = fmul <2 x float> %3, %.sroa.027.0.copyload ; 4 uses
  %i.m = fmul <2 x float> %3, %.sroa.017.0.copyload ; 4 uses
  %i.n = fcmp olt <2 x float> %i.l, %i.m
  %i.o = select <2 x i1> %i.n, <2 x float> %i.l, <2 x float> %i.m ; 2 uses
  %i.p = select i1 %i.j, float %i.g, float %i.i   ; 2 uses
  %i.q = fcmp ogt <2 x float> %i.l, %i.m
  %i.r = select <2 x i1> %i.q, <2 x float> %i.l, <2 x float> %i.m ; 2 uses
  %i.s = select i1 %i.k, float %i.g, float %i.i   ; 2 uses
  %i.t = fadd <2 x float> %i.r, %i.o              ; 2 uses
  %i.u = fadd float %i.s, %i.p
  %i.v = fmul <2 x float> %i.t, splat (float 5.000000e-01) ; 4 uses
  %i.w = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x float> %i.w, float %i.u, i64 0
  %i.y = fmul <2 x float> %i.x, splat (float 5.000000e-01) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.5112.0.copyload, %i.v
  %i.z = shufflevector <2 x float> %i.v, <2 x float> %i.y, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aa = fmul <2 x float> %.sroa.4109.0.copyload, %i.z
  %i.ab = shufflevector <2 x float> %.sroa.4109.0.copyload, <2 x float> %.sroa.5112.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %i.ab, %i.v
  %i.ad = extractelement <2 x float> %i.y, i64 0
  %foldExtExtBinop145 = fmul <2 x float> %.sroa.4109.0.copyload, %i.y
  %i.ae = fsub <2 x float> %i.aa, %i.ac           ; 2 uses
  %foldExtExtBinop147 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop145
  %i.af = shufflevector <2 x float> %.sroa.5112.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %i.y
  %i.ah = fmul <2 x float> %i.af, %i.z
  %i.ai = fadd <2 x float> %i.ag, %i.ae           ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ak = shufflevector <2 x float> %foldExtExtBinop147, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = fadd <2 x float> %i.ah, %i.ak           ; 2 uses
  %i.am = fmul <2 x float> %i.ab, %i.ai
  %i.an = shufflevector <2 x float> %.sroa.5112.0.copyload, <2 x float> %.sroa.4109.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ao = fmul <2 x float> %i.an, %i.al
  %i.ap = fsub <2 x float> %i.am, %i.ao
  %foldExtExtBinop149 = fmul <2 x float> %.sroa.4109.0.copyload, %i.al
  %foldExtExtBinop151 = fmul <2 x float> %.sroa.4109.0.copyload, %i.ai
  %shift = shufflevector <2 x float> %foldExtExtBinop151, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop153 = fsub <2 x float> %foldExtExtBinop149, %shift
  %i.aq = extractelement <2 x float> %foldExtExtBinop153, i64 0
  %i.ar = fmul <2 x float> %i.ap, splat (float 2.000000e+00)
  %i.as = fadd <2 x float> %i.v, %i.ar
  %i.at = fmul float %i.aq, 2.000000e+00
  %i.au = fadd float %i.ad, %i.at
  %i.av = fadd <2 x float> %.sroa.0108.sroa.0.0.copyload, %i.as ; 2 uses
  %i.aw = fadd float %.sroa.0108.sroa.4.0.copyload, %i.au ; 2 uses
  %i.ax = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2.12.vec.extract.i ; 2 uses
  %i.ay = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.2.12.vec.extract.i ; 2 uses
  %i.az = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.2.8.vec.extract65.i ; 2 uses
  %foldExtExtBinop155 = fmul <2 x float> %.sroa.4109.0.copyload, %.sroa.5112.0.copyload
  %i.ba = extractelement <2 x float> %foldExtExtBinop155, i64 0 ; 2 uses
  %i.bb = fmul <2 x float> %.sroa.4109.0.copyload, %.sroa.4109.0.copyload ; 2 uses
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bd = fsub float %i.ba, %i.ay
  %i.be = fmul float %i.bd, 2.000000e+00          ; 3 uses
  %i.bf = fsub float %i.s, %i.p
  %i.bg = shufflevector <2 x float> %.sroa.4109.0.copyload, <2 x float> %.sroa.5112.0.copyload, <4 x i32> <i32 poison, i32 0, i32 2, i32 2>
  %i.bh = insertelement <4 x float> %i.bg, float %i.bf, i64 0
  %i.bi = shufflevector <2 x float> %.sroa.4109.0.copyload, <2 x float> %.sroa.5112.0.copyload, <4 x i32> <i32 poison, i32 1, i32 3, i32 2>
  %i.bj = insertelement <4 x float> %i.bi, float 5.000000e-01, i64 0
  %i.bk = fmul <4 x float> %i.bh, %i.bj           ; 5 uses
  %i.bl = extractelement <4 x float> %i.bk, i64 1 ; 2 uses
  %i.bm = extractelement <4 x float> %i.bk, i64 2 ; 2 uses
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fsub float %i.bl, %i.bm
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bn, i64 1
  %i.br = fmul <2 x float> %i.bq, splat (float 2.000000e+00) ; 3 uses
  %i.bs = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.bt = fadd <2 x float> %i.bc, %i.bs
  %i.bu = fmul <2 x float> %i.bt, splat (float 2.000000e+00)
  %i.bv = fsub <2 x float> splat (float 1.000000e+00), %i.bu ; 3 uses
  %i.bw = fadd float %i.az, %i.ax
  %i.bx = fmul float %i.bw, 2.000000e+00          ; 3 uses
  %i.by = fsub float %i.az, %i.ax
  %i.bz = fadd float %i.ba, %i.ay
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.by, i64 1
  %i.cc = fmul <2 x float> %i.cb, splat (float 2.000000e+00) ; 3 uses
  %foldExtExtBinop158 = fadd <2 x float> %i.bb, %i.bc
  %5 = extractelement <2 x float> %foldExtExtBinop158, i64 0
  %i.cd = fmul float %5, 2.000000e+00
  %i.ce = fsub float 1.000000e+00, %i.cd          ; 3 uses
  %i.cf = fcmp olt float %i.be, 0.000000e+00
  %i.cg = fneg float %i.be
  %i.ch = select i1 %i.cf, float %i.cg, float %i.be
  %i.ci = fcmp olt <2 x float> %i.br, zeroinitializer
  %i.cj = fneg <2 x float> %i.br
  %i.ck = select <2 x i1> %i.ci, <2 x float> %i.cj, <2 x float> %i.br
  %i.cl = fcmp olt <2 x float> %i.bv, zeroinitializer
  %i.cm = fneg <2 x float> %i.bv
  %i.cn = select <2 x i1> %i.cl, <2 x float> %i.cm, <2 x float> %i.bv
  %i.co = fcmp olt float %i.bx, 0.000000e+00
  %i.cp = fneg float %i.bx
  %i.cq = select i1 %i.co, float %i.cp, float %i.bx
  %i.cr = fcmp olt <2 x float> %i.cc, zeroinitializer
  %i.cs = fneg <2 x float> %i.cc
  %i.ct = select <2 x i1> %i.cr, <2 x float> %i.cs, <2 x float> %i.cc
  %i.cu = fcmp olt float %i.ce, 0.000000e+00
  %i.cv = fneg float %i.ce
  %i.cw = select i1 %i.cu, float %i.cv, float %i.ce
  %i.cx = fsub <2 x float> %i.r, %i.o
  %i.cy = fmul <2 x float> %i.cx, splat (float 5.000000e-01) ; 4 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.da = extractelement <2 x float> %i.cy, i64 0
  %i.db = fmul float %i.da, %i.ch
  %i.dc = extractelement <2 x float> %i.cy, i64 1
  %i.dd = fmul float %i.dc, %i.cq
  %i.de = fadd float %i.db, %i.dd
  %i.df = fmul <2 x float> %i.cz, %i.ck
  %i.dg = fmul <2 x float> %i.cy, %i.cn
  %i.dh = fadd <2 x float> %i.df, %i.dg
  %i.di = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.di, %i.ct
  %i.dk = fadd <2 x float> %i.dj, %i.dh           ; 2 uses
  %i.dl = extractelement <4 x float> %i.bk, i64 0
  %i.dm = fmul float %i.dl, %i.cw
  %i.dn = fadd float %i.dm, %i.de                 ; 2 uses
  %i.do = fsub <2 x float> %i.av, %i.dk
  %i.dp = fsub float %i.aw, %i.dn
  store <2 x float> %i.do, ptr %0, align 4, !alias.scope !239
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.dp, ptr %.sroa.28.0..sroa_idx.i, align 4, !alias.scope !239
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dr = fadd <2 x float> %i.av, %i.dk
  %i.ds = fadd float %i.aw, %i.dn
  store <2 x float> %i.dr, ptr %i.dq, align 4, !alias.scope !239
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ds, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !239
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3RayCastMesh(ptr dead_on_unwind noalias nofree writable sret(%struct.b3CastOutput) align 4 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 !func_sanitize !241 {
bb.a:
  %3 = alloca %union.b3128, align 16              ; 4 uses
  %4 = alloca %struct.b3Vec3, align 8             ; 7 uses
  %i.a = alloca [256 x ptr], align 16             ; 6 uses
  %5 = alloca %struct.b3Vec3, align 8             ; 7 uses
  %6 = alloca %struct.b3Vec3, align 8             ; 8 uses
  %7 = alloca %struct.b3Vec3, align 8             ; 7 uses
  %i.b = icmp ne ptr %1, null, !nosanitize !9
  %i.c = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @213, i64 %i.c) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !95     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.i = icmp ne ptr %2, null, !nosanitize !9
  %i.j = ptrtoint ptr %2 to i64, !nosanitize !9   ; 4 uses
  %i.k = and i64 %i.j, 3, !nosanitize !9
  %i.l = icmp eq i64 %i.k, 0, !nosanitize !9
  %i.m = and i1 %i.i, %i.l, !nosanitize !9
  br i1 %i.m, label %_mm_load_sd.exit.i, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @215, i64 %i.j) #12, !nosanitize !9
  unreachable, !nosanitize !9

_mm_load_sd.exit.i:                               ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !243 ; 3 uses
  store float %i.p, ptr %i.o, align 4, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  store i32 -1, ptr %i.q, align 4, !tbaa !103
  %i.r = insertelement <4 x float> poison, float %i.p, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = add i64 %i.j, 8, !nosanitize !9          ; 2 uses
  %i.u = icmp ne i64 %i.t, 0
  %switch.i = icmp ult ptr %2, inttoptr (i64 -8 to ptr)
  %or.cond.i = and i1 %switch.i, %i.u
  br i1 %or.cond.i, label %b3LoadV.exit, label %bb.e, !prof !86

bb.e:                                             ; preds = %_mm_load_sd.exit.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @702, i64 %i.j, i64 %i.t) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit:                                     ; preds = %_mm_load_sd.exit.i
  %i.v = load double, ptr %2, align 4, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = bitcast <2 x double> %i.x to <4 x float>
  %i.z = load float, ptr %i.w, align 4, !tbaa !24
  %i.aa = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.z, i64 0
  %i.ab = shufflevector <4 x float> %i.y, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.ad = ptrtoint ptr %i.ac to i64, !nosanitize !9 ; 2 uses
  %i.ae = add i64 %i.ad, 8, !nosanitize !9        ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  %switch.i208 = icmp ult ptr %i.ac, inttoptr (i64 -8 to ptr)
  %or.cond.i209 = and i1 %switch.i208, %i.af
  br i1 %or.cond.i209, label %b3LoadV.exit210, label %bb.f, !prof !86

bb.f:                                             ; preds = %b3LoadV.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @702, i64 %i.ad, i64 %i.ae) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit210:                                  ; preds = %b3LoadV.exit
  %i.ag = load double, ptr %i.ac, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = bitcast <2 x double> %i.ai to <4 x float>
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !24
  %i.al = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ak, i64 0
  %i.am = shufflevector <4 x float> %i.aj, <4 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.an = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.ao = add i64 %i.an, 8, !nosanitize !9        ; 2 uses
  %.not3189 = icmp eq i64 %i.ao, 0
  br i1 %.not3189, label %bb.g, label %b3LoadV.exit214, !prof !86

bb.g:                                             ; preds = %b3LoadV.exit210
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @702, i64 %i.an, i64 %i.ao) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3LoadV.exit214:                                  ; preds = %b3LoadV.exit210
  %i.ap = load double, ptr %4, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = bitcast <2 x double> %i.ar to <4 x float>
  %i.at = load float, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.au = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.as, <4 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aw = fdiv <4 x float> splat (float 1.000000e+00), %i.av ; 2 uses
  %i.ax = bitcast double %i.ap to i64             ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = bitcast i32 %i.ay to float
  %i.ba = lshr i64 %i.ax, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = bitcast i32 %i.bb to float
  %i.bd = fmul float %i.az, %i.bc
  %i.be = fmul float %i.at, %i.bd
  %i.bf = fcmp ogt float %i.be, 0.000000e+00
  %i.bg = fmul <4 x float> %i.ab, %i.aw           ; 7 uses
  %i.bh = fmul <4 x float> %i.am, %i.aw           ; 7 uses
  %i.bi = fmul <4 x float> %i.s, %i.bh
  %i.bj = fadd <4 x float> %i.bg, %i.bi           ; 2 uses
  %i.bk = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bg, <4 x float> %i.bj)
  %i.bl = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bg, <4 x float> %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bm = icmp ne ptr %i.g, null, !nosanitize !9
  %i.bn = ptrtoint ptr %i.g to i64, !nosanitize !9 ; 10 uses
  %i.bo = and i64 %i.bn, 7, !nosanitize !9
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !9
  %i.bq = and i1 %i.bm, %i.bp, !nosanitize !9
  br i1 %i.bq, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %b3LoadV.exit214
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @322, i64 %i.bn) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %b3LoadV.exit214
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !16 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %b3GetRoot.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = sext i32 %i.bs to i64                   ; 2 uses
  %i.bv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bn, i64 %i.bu), !nosanitize !9 ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 1, !nosanitize !9
  br i1 %i.bw, label %bb.k, label %bb.l, !prof !17, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @324, i64 %i.bn, i64 %i.bu) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.bx = extractvalue { i64, i1 } %i.bv, 0, !nosanitize !9
  %i.by = inttoptr i64 %i.bx to ptr
  br label %b3GetRoot.exit
end_hunk_0
begin_hunk_1_@b3EdgeMap_find_first_empty:bb.a
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  store i16 1, ptr %3, align 2, !tbaa !83
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = add i64 %1, 1
  br i1 %i.f, label %.lr.ph, label %bb.g, !prof !96, !nosanitize !9

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.j = and i64 %i.i, 7
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.split.split.split.us, label %bb.h, !prof !10, !nosanitize !9

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  %.fr67 = freeze ptr %i.m                        ; 3 uses
  %i.n = ptrtoint ptr %.fr67 to i64, !nosanitize !9 ; 5 uses
  %.not = icmp eq ptr %.fr67, null, !nosanitize !9
  %i.o = load i64, ptr %i.h, align 8, !tbaa !74
  %i.p = and i64 %i.o, %i.g                       ; 4 uses
  store i64 %i.p, ptr %2, align 8, !tbaa !108
  %i.q = add i64 %i.p, 4611686018427387904
  %i.r = icmp sgt i64 %i.q, -1                    ; 2 uses
  %i.s = shl i64 %i.p, 1                          ; 3 uses
  br i1 %.not, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split.split.us, !prof !17

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i1 %i.r, %i.t, !nosanitize !9
  br i1 %i.u, label %.split49.us, label %.split.us, !prof !10, !nosanitize !9

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us
  %i.v = add i64 %i.s, %i.n, !nosanitize !9       ; 2 uses
  %i.w = icmp uge i64 %i.v, %i.n, !nosanitize !9
  %i.x = and i1 %i.r, %i.w, !nosanitize !9
  br i1 %i.x, label %.lr.ph65, label %.split.us, !prof !96, !nosanitize !9

bb.d:                                             ; preds = %bb.f
  %i.y = zext i16 %i.aq to i64
  %i.z = add i64 %.045.us.us5664, %i.y            ; 2 uses
  %i.aa = add i64 %i.z, %1
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !74
  %i.ac = and i64 %i.ab, %i.aa                    ; 4 uses
  store i64 %i.ac, ptr %2, align 8, !tbaa !108
  %i.ad = add i64 %i.ac, 4611686018427387904
  %i.ae = icmp sgt i64 %i.ad, -1
  %i.af = shl i64 %i.ac, 1
  %i.ag = add i64 %i.af, %i.n, !nosanitize !9     ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %i.n, !nosanitize !9
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !9
  br i1 %i.ai, label %.lr.ph65, label %.split.us, !prof !84, !nosanitize !9

.lr.ph65:                                         ; preds = %.lr.ph.split.split.split.us.split.split.us, %bb.d
  %i.aj = phi i16 [ %i.aq, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %.pn = phi i64 [ %i.ac, %bb.d ], [ %i.p, %.lr.ph.split.split.split.us.split.split.us ]
  %.045.us.us5664 = phi i64 [ %i.z, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.fr67, i64 %.pn ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64, !nosanitize !9 ; 2 uses
  %i.am = and i64 %i.al, 1, !nosanitize !9
  %i.an = icmp eq i64 %i.am, 0, !nosanitize !9
  br i1 %i.an, label %bb.e, label %.split49.us, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %.lr.ph65
  %i.ao = load i16, ptr %i.ak, align 2, !tbaa !83
  %i.ap = icmp eq i16 %i.ao, 0                    ; 2 uses
  br i1 %i.ap, label %.split52.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i16 %i.aj, 1                        ; 4 uses
  store i16 %i.aq, ptr %3, align 2, !tbaa !83
  %i.ar = icmp eq i16 %i.aq, 2047
  br i1 %i.ar, label %.split52.us, label %bb.d, !prof !73

bb.g:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @683, i64 %i.d) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @684, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.d, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.split.us
  %.us-phi54 = phi i64 [ %i.s, %.lr.ph.split.split.split.us.split.us ], [ %i.v, %.lr.ph.split.split.split.us.split.split.us ], [ %i.ag, %bb.d ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @685, i64 %i.n, i64 %.us-phi54) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split49.us:                                      ; preds = %.lr.ph65, %.lr.ph.split.split.split.us.split.us
  %.us-phi55 = phi i64 [ 0, %.lr.ph.split.split.split.us.split.us ], [ %i.al, %.lr.ph65 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @686, i64 %.us-phi55) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split52.us:                                      ; preds = %bb.f, %bb.e
  ret i1 %i.ap
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @b3EdgeMap_find_insert_location_in_chain(ptr noundef nonnull %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #9 !func_sanitize !306 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %.lr.ph, label %bb.d, !prof !96, !nosanitize !9

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %.fr69 = freeze ptr %i.f                        ; 3 uses
  %i.g = ptrtoint ptr %.fr69 to i64, !nosanitize !9 ; 5 uses
  %.not70 = icmp eq ptr %.fr69, null, !nosanitize !9
  %i.h = add i64 %1, 4611686018427387904
  %i.i = icmp sgt i64 %i.h, -1                    ; 2 uses
  %i.j = shl i64 %1, 1                            ; 3 uses
  br i1 %.not70, label %.lr.ph.split.split.us, label %.lr.ph.split.split.split.us.split.us, !prof !17

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i1 %i.i, %i.k, !nosanitize !9
  br i1 %i.l, label %.split48, label %.split.us, !prof !10, !nosanitize !9

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph
  %i.m = add i64 %i.j, %i.g, !nosanitize !9       ; 2 uses
  %i.n = icmp uge i64 %i.m, %i.g, !nosanitize !9
  %i.o = and i1 %i.i, %i.n, !nosanitize !9
  br i1 %i.o, label %.lr.ph67, label %.split.us, !prof !96, !nosanitize !9

.lr.ph67:                                         ; preds = %.lr.ph.split.split.split.us.split.us, %bb.c
  %.01045.us50.us66 = phi i64 [ %i.ab, %bb.c ], [ %1, %.lr.ph.split.split.split.us.split.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.fr69, i64 %.01045.us50.us66 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 2 uses
  %i.r = and i64 %i.q, 1, !nosanitize !9
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !9
  br i1 %i.s, label %bb.b, label %.split48, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %.lr.ph67
  %i.t = load i16, ptr %i.p, align 2, !tbaa !83
  %i.u = and i16 %i.t, 2047                       ; 2 uses
  %.not.us.us = icmp ugt i16 %i.u, %2
  br i1 %.not.us.us, label %.split58.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i16 %i.u to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul nuw nsw i64 %i.w, %i.v
  %i.y = lshr i64 %i.x, 1
  %i.z = add i64 %i.y, %1
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !74
  %i.ab = and i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = add i64 %i.ab, 4611686018427387904
  %i.ad = icmp sgt i64 %i.ac, -1
  %i.ae = shl i64 %i.ab, 1
  %i.af = add i64 %i.ae, %i.g, !nosanitize !9     ; 2 uses
  %i.ag = icmp uge i64 %i.af, %i.g, !nosanitize !9
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !9
  br i1 %i.ah, label %.lr.ph67, label %.split.us, !prof !84, !nosanitize !9

bb.d:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @687, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.c, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.us
  %.us-phi46 = phi i64 [ %i.j, %.lr.ph.split.split.us ], [ %i.m, %.lr.ph.split.split.split.us.split.us ], [ %i.af, %bb.c ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @688, i64 %i.g, i64 %.us-phi46) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split48:                                         ; preds = %.lr.ph67, %.lr.ph.split.split.us
  %.us-phi49 = phi i64 [ 0, %.lr.ph.split.split.us ], [ %i.q, %.lr.ph67 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @689, i64 %.us-phi49) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split58.us:                                      ; preds = %bb.b
  ret i64 %.01045.us50.us66
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

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
!10 = !{!"branch_weights", i32 1048575, i32 1}
!11 = !{!"long", !5, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!"b3Vec3", !12, i64 0, !12, i64 4, !12, i64 8}
!14 = !{!"b3AABB", !13, i64 0, !13, i64 12}
!15 = !{!"b3MeshData", !11, i64 0, !11, i64 8, !6, i64 16, !14, i64 20, !12, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!16 = !{!15, !6, i64 56}
!17 = !{!"branch_weights", i32 1, i32 1048575}
!18 = !{!15, !11, i64 0}
!19 = !{!15, !6, i64 16}
!20 = !{!"branch_weights", i32 1, i32 1048574}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!12, !12, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!"any pointer", !5, i64 0}
!26 = !{!"p1 _ZTS6b3Vec3", !25, i64 0}
!27 = !{!"p1 int", !25, i64 0}
!28 = !{!"p1 omnipotent char", !25, i64 0}
!29 = !{!"_Bool", !5, i64 0}
!30 = !{!"b3MeshDef", !26, i64 0, !11, i64 8, !27, i64 16, !28, i64 24, !12, i64 32, !6, i64 36, !6, i64 40, !29, i64 44, !29, i64 45, !29, i64 46, !29, i64 47}
!31 = !{!30, !6, i64 36}
!32 = !{!30, !26, i64 0}
!33 = !{!30, !6, i64 40}
!34 = !{!30, !27, i64 16}
!35 = !{!30, !28, i64 24}
!36 = !{!30, !29, i64 45}
!37 = !{!30, !29, i64 46}
!38 = !{!"b3WeldData", !26, i64 0, !27, i64 8, !26, i64 16, !27, i64 24, !6, i64 32, !6, i64 36, !11, i64 40}
!39 = !{!38, !26, i64 0}
!40 = !{!38, !27, i64 8}
!41 = !{!38, !26, i64 16}
!42 = !{!38, !27, i64 24}
!43 = !{!38, !6, i64 32}
!44 = !{!38, !6, i64 36}
!45 = !{!38, !11, i64 40}
!46 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22}
!47 = !{!"p1 _ZTS10b3MeshNode", !25, i64 0}
!48 = !{!"b3DynamicArray_b3MeshNode", !47, i64 0, !6, i64 8, !6, i64 12}
!49 = !{!48, !47, i64 0}
!50 = !{!48, !6, i64 8}
!51 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22}
!52 = !{!15, !6, i64 76}
!53 = !{!15, !6, i64 64}
!54 = !{!15, !6, i64 72}
!55 = !{!15, !6, i64 80}
!56 = !{!15, !6, i64 88}
!57 = !{!"b3MeshTriangle", !6, i64 0, !6, i64 4, !6, i64 8}
!58 = !{!57, !6, i64 0}
!59 = !{!57, !6, i64 4}
!60 = !{!57, !6, i64 8}
!61 = !{!13, !12, i64 0}
!62 = !{!13, !12, i64 4}
!63 = !{!13, !12, i64 8}
!64 = !{!"p1 short", !25, i64 0}
!65 = !{!"", !11, i64 0, !11, i64 8, !25, i64 16, !64, i64 24}
!66 = !{!65, !64, i64 24}
!67 = !{!"", !25, i64 0, !64, i64 8, !64, i64 16, !11, i64 24}
!68 = !{!67, !64, i64 8}
!69 = !{!67, !64, i64 16}
!70 = !{!67, !25, i64 0}
!71 = !{!"", !11, i64 0, !6, i64 8}
!72 = !{!71, !6, i64 8}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!65, !11, i64 8}
!75 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!76 = !{!65, !25, i64 16}
!77 = !{!"b3MeshNode", !13, i64 0, !5, i64 12, !13, i64 16, !6, i64 28}
!78 = !{!77, !6, i64 28}
!79 = !{i32 -1056584962, i32 1730089748}
!80 = !{!47, !47, i64 0}
!81 = !{i32 -1056584962, i32 -1481484243}
!82 = !{!"short", !5, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"branch_weights", i32 134217473, i32 127}
!85 = !{!71, !11, i64 0}
!86 = !{!"branch_weights", i32 1048575, i32 1048575}
!87 = !{!26, !26, i64 0}
!88 = !{i64 0, i64 8, !87, i64 8, i64 4, !23, i64 12, i64 4, !22}
!89 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22}
!90 = !{!"b3ShapeProxy", !26, i64 0, !6, i64 8, !12, i64 12}
!91 = !{!"b3Quat", !13, i64 0, !12, i64 12}
!92 = !{!"b3Transform", !13, i64 0, !91, i64 12}
!93 = !{!"p1 _ZTS10b3MeshData", !25, i64 0}
!94 = !{!"b3Mesh", !93, i64 0, !13, i64 8}
!95 = !{!94, !93, i64 0}
!96 = !{!"branch_weights", i32 127, i32 1}
!97 = !{!"b3SimplexCache", !12, i64 0, !82, i64 4, !5, i64 6, !5, i64 10}
!98 = !{!97, !82, i64 4}
!99 = !{!"b3DistanceOutput", !13, i64 0, !13, i64 12, !13, i64 24, !12, i64 36, !6, i64 40, !6, i64 44}
!100 = !{!99, !12, i64 36}
!101 = !{!"b3CastOutput", !13, i64 0, !13, i64 12, !12, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !29, i64 44}
!102 = !{!101, !12, i64 24}
!103 = !{!101, !6, i64 32}
!104 = !{!101, !29, i64 44}
!105 = !{!"branch_weights", i32 1, i32 127}
!106 = !{!65, !11, i64 0}
!107 = !{!"branch_weights", i32 127, i32 255873}
!108 = !{!11, !11, i64 0}
!109 = !{!25, !25, i64 0}
!110 = !{!64, !64, i64 0}
!111 = !{i64 0, i64 8, !108, i64 8, i64 8, !108, i64 16, i64 8, !109, i64 24, i64 8, !110}
!112 = !{i64 0, i64 8, !108, i64 8, i64 4, !23}
!113 = !{!67, !11, i64 24}
!114 = !{!"branch_weights", i32 4096, i32 2147479552}
!115 = !{i32 -1056584962, i32 881819455}
!116 = !{i32 -1056584962, i32 248578765}
!117 = !{i32 -1056584962, i32 1451878268}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = !{i32 -1056584962, i32 431239926}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = distinct !{!125, !21}
!126 = !{i32 -1056584962, i32 1164998471}
!127 = !{!30, !11, i64 8}
!128 = !{!30, !29, i64 44}
!129 = !{!30, !12, i64 32}
!130 = !{!30, !29, i64 47}
!131 = !{!48, !6, i64 12}
!132 = !{!15, !12, i64 44}
!133 = !{!15, !6, i64 60}
!134 = !{!15, !6, i64 48}
!135 = !{!15, !6, i64 68}
!136 = !{!15, !6, i64 52}
!137 = !{!15, !6, i64 84}
!138 = !{!15, !11, i64 8}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21}
!142 = distinct !{!142, !21}
!143 = !{i32 -1056584962, i32 -430936143}
!144 = distinct !{!144, !21}
!145 = distinct !{!145, !21}
!146 = distinct !{!146, !21}
!147 = distinct !{!147, !21}
!148 = !{i32 -1056584962, i32 1296741859}
!149 = !{i32 -1056584962, i32 -477081583}
!150 = !{i32 -1056584962, i32 703037681}
!151 = !{i32 -1056584962, i32 -776493649}
!152 = distinct !{!152, !21}
!153 = distinct !{!153, !21}
!154 = distinct !{!154, !21}
!155 = distinct !{!155, !21}
!156 = distinct !{!156, !"b3VertexMap_insert"}
!157 = distinct !{!157, !156, !"b3VertexMap_insert: argument 0"}
!158 = distinct !{!158, !21}
!159 = distinct !{!159, !21}
!160 = !{i32 -1056584962, i32 1755313631}
!161 = !{!"p1 _ZTS12b3VertexNode", !25, i64 0}
!162 = !{!"b3DynamicArray_b3VertexNode", !161, i64 0, !6, i64 8, !6, i64 12}
!163 = !{!"b3SpatialHash", !162, i64 0, !26, i64 16, !6, i64 24, !11, i64 32, !65, i64 40, !12, i64 72, !12, i64 76}
!164 = !{!163, !26, i64 16}
!165 = !{!163, !6, i64 24}
!166 = !{!163, !11, i64 32}
!167 = !{!163, !12, i64 76}
!168 = !{!163, !12, i64 72}
!169 = !{!163, !161, i64 0}
!170 = !{!163, !6, i64 8}
!171 = !{!163, !6, i64 12}
!172 = !{!157}
!173 = distinct !{!173, !"b3SplitMedian"}
!174 = distinct !{!174, !173, !"b3SplitMedian: argument 0"}
!175 = distinct !{!175, !21}
!176 = distinct !{!176, !21}
!177 = distinct !{!177, !21}
!178 = distinct !{!178, !21}
!179 = distinct !{!179, !21}
!180 = distinct !{!180, !21}
end_hunk_1
