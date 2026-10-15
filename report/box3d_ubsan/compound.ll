Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/compound?download=true
inline.NumInlined: 170
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3ComputeCompoundAABB:bb.a
  %i.cj = fsub float %i.bi, %i.bj
  %i.ck = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.cj, i64 1
  %i.cm = fmul <2 x float> %i.cl, splat (float 2.000000e+00) ; 3 uses
  %i.cn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bl)
  %i.co = fmul float %i.cn, 2.000000e+00
  %i.cp = fsub float 1.000000e+00, %i.co          ; 3 uses
  %i.cq = fcmp olt float %i.bx, 0.000000e+00
  %i.cr = fneg float %i.bx
  %i.cs = select i1 %i.cq, float %i.cr, float %i.bx
  %i.ct = fcmp olt <2 x float> %i.cb, zeroinitializer
  %i.cu = fneg <2 x float> %i.cb
  %i.cv = select <2 x i1> %i.ct, <2 x float> %i.cu, <2 x float> %i.cb
  %i.cw = fcmp olt <2 x float> %i.cf, zeroinitializer
  %i.cx = fneg <2 x float> %i.cf
  %i.cy = select <2 x i1> %i.cw, <2 x float> %i.cx, <2 x float> %i.cf
  %i.cz = fcmp olt float %i.ch, 0.000000e+00
  %i.da = fneg float %i.ch
  %i.db = select i1 %i.cz, float %i.da, float %i.ch
  %i.dc = fcmp olt <2 x float> %i.cm, zeroinitializer
  %i.dd = fneg <2 x float> %i.cm
  %i.de = select <2 x i1> %i.dc, <2 x float> %i.dd, <2 x float> %i.cm
  %i.df = fcmp olt float %i.cp, 0.000000e+00
  %i.dg = fneg float %i.cp
  %i.dh = select i1 %i.df, float %i.dg, float %i.cp
  %i.di = fsub <2 x float> %.sroa.552.0.copyload, %.sroa.050.0.copyload
  %i.dj = fmul <2 x float> %i.di, splat (float 5.000000e-01) ; 4 uses
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = extractelement <2 x float> %i.dj, i64 0
  %i.dm = fmul float %i.dl, %i.cs
  %i.dn = extractelement <2 x float> %i.dj, i64 1
  %i.do = fmul float %i.dn, %i.db
  %i.dp = fadd float %i.dm, %i.do
  %i.dq = fmul <2 x float> %i.dk, %i.cv
  %i.dr = fmul <2 x float> %i.dj, %i.cy
  %i.ds = fadd <2 x float> %i.dq, %i.dr
  %i.dt = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.dt, %i.de
  %i.dv = fadd <2 x float> %i.du, %i.ds           ; 2 uses
  %i.dw = extractelement <4 x float> %i.bs, i64 0
  %i.dx = fmul float %i.dw, %i.dh
  %i.dy = fadd float %i.dx, %i.dp                 ; 2 uses
  %i.dz = fsub <2 x float> %i.bf, %i.dv
  %i.ea = fsub float %i.bg, %i.dy
  store <2 x float> %i.dz, ptr %0, align 4, !alias.scope !208
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ea, ptr %.sroa.28.0..sroa_idx.i, align 4, !alias.scope !208
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ec = fadd <2 x float> %i.bf, %i.dv
  %i.ed = fadd float %i.bg, %i.dy
  store <2 x float> %i.ec, ptr %i.eb, align 4, !alias.scope !208
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ed, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !208
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapCompound(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #5 !func_sanitize !209 {
bb.a:
  %3 = alloca %struct.b3CompoundOverlapContext, align 8 ; 8 uses
  %4 = alloca %struct.b3AABB, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %0, ptr %3, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !34
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %i.b, align 4
  %i.c = icmp ne ptr %2, null, !nosanitize !9
  %i.d = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = and i1 %i.c, %i.f, !nosanitize !9
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @191, i64 %i.d) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !210
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.j = load ptr, ptr %2, align 8, !tbaa !211    ; 5 uses
  %i.k = icmp ne ptr %i.j, null, !nosanitize !9
  %i.l = ptrtoint ptr %i.j to i64, !nosanitize !9 ; 5 uses
  %i.m = and i64 %i.l, 3, !nosanitize !9
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !9
  %i.o = and i1 %i.k, %i.n, !nosanitize !9
  br i1 %i.o, label %.lr.ph, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @192, i64 %i.l) #12, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph:                                           ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !43
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !43
  %.promoted = load <2 x float>, ptr %4, align 8  ; 2 uses
  %.promoted89 = load <2 x float>, ptr %i.p, align 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !212  ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %.sroa.237.0..sroa_idx.promoted = load float, ptr %.sroa.237.0..sroa_idx, align 8 ; 2 uses
  %.sroa.227.0..sroa_idx.promoted = load float, ptr %.sroa.227.0..sroa_idx, align 4 ; 2 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %.lr.ph118.preheader, label %.split.us

.lr.ph118.preheader:                              ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph118.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.sroa.05.4.vec.insert.i649093.us117 = phi <2 x float> [ %.promoted89, %.lr.ph118.preheader ], [ %i.ac, %bb.e ] ; 2 uses
  %.sroa.036.0.copyload8694.us116 = phi <2 x float> [ %.promoted, %.lr.ph118.preheader ], [ %i.y, %bb.e ] ; 2 uses
  %i.t = phi float [ %.sroa.237.0..sroa_idx.promoted, %.lr.ph118.preheader ], [ %i.aa, %bb.e ] ; 2 uses
  %.sroa.227.0.copyload101.us114 = phi float [ %.sroa.227.0..sroa_idx.promoted, %.lr.ph118.preheader ], [ %i.ae, %bb.e ] ; 2 uses
  %i.u = mul nuw nsw i64 %indvars.iv, 12
  %i.v = add i64 %i.u, %i.l, !nosanitize !9       ; 2 uses
  %.not.us = icmp ult i64 %i.v, %i.l, !nosanitize !9
  br i1 %.not.us, label %.split108.us, label %bb.e, !prof !20, !nosanitize !9

bb.e:                                             ; preds = %.lr.ph118
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %.sroa.034.0.copyload.us = load <2 x float>, ptr %i.w, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.235.0.copyload.us = load float, ptr %.sroa.235.0..sroa_idx.us, align 4 ; 4 uses
  %i.x = fcmp olt <2 x float> %.sroa.036.0.copyload8694.us116, %.sroa.034.0.copyload.us
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.036.0.copyload8694.us116, <2 x float> %.sroa.034.0.copyload.us ; 2 uses
  %i.z = fcmp olt float %i.t, %.sroa.235.0.copyload.us
  %i.aa = select i1 %i.z, float %i.t, float %.sroa.235.0.copyload.us ; 2 uses
  %i.ab = fcmp ogt <2 x float> %.sroa.05.4.vec.insert.i649093.us117, %.sroa.034.0.copyload.us
  %i.ac = select <2 x i1> %i.ab, <2 x float> %.sroa.05.4.vec.insert.i649093.us117, <2 x float> %.sroa.034.0.copyload.us ; 2 uses
  %i.ad = fcmp ogt float %.sroa.227.0.copyload101.us114, %.sroa.235.0.copyload.us
  %i.ae = select i1 %i.ad, float %.sroa.227.0.copyload101.us114, float %.sroa.235.0.copyload.us ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.us, label %.lr.ph118

.split108.us:                                     ; preds = %.lr.ph118
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @193, i64 %i.l, i64 %i.v) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.e, %.lr.ph
  %.sroa.25.0.copyload = phi float [ %.sroa.227.0..sroa_idx.promoted, %.lr.ph ], [ %i.ae, %bb.e ]
  %.sroa.214.0.copyload = phi float [ %.sroa.237.0..sroa_idx.promoted, %.lr.ph ], [ %i.aa, %bb.e ]
  %.sroa.04.0.copyload = phi <2 x float> [ %.promoted89, %.lr.ph ], [ %i.ac, %bb.e ]
  %.sroa.013.0.copyload = phi <2 x float> [ %.promoted, %.lr.ph ], [ %i.y, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !213 ; 3 uses
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = fsub <2 x float> %.sroa.013.0.copyload, %i.ai
  %i.ak = fsub float %.sroa.214.0.copyload, %i.ag
  store <2 x float> %i.aj, ptr %4, align 8, !tbaa !23
  store float %i.ak, ptr %.sroa.237.0..sroa_idx, align 8, !tbaa !23
  %i.al = fadd <2 x float> %i.ai, %.sroa.04.0.copyload
  %i.am = fadd float %i.ag, %.sroa.25.0.copyload
  store <2 x float> %i.al, ptr %i.p, align 4, !tbaa !23
  store float %i.am, ptr %.sroa.227.0..sroa_idx, align 4, !tbaa !23
  %i.an = icmp ne ptr %0, null, !nosanitize !9
  %i.ao = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.ap = and i64 %i.ao, 7, !nosanitize !9
  %i.aq = icmp eq i64 %i.ap, 0, !nosanitize !9
  %i.ar = and i1 %i.an, %i.aq, !nosanitize !9
  br i1 %i.ar, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %.split.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @194, i64 %i.ao) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %.split.us
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.as, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3CompoundOverlapCallback, ptr noundef nonnull %3) #13 ; 0 uses
  %i.au = load i8, ptr %i.i, align 8, !tbaa !90   ; 3 uses
  %i.av = icmp ult i8 %i.au, 2
  br i1 %i.av, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.aw = zext i8 %i.au to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @196, i64 %i.aw) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ax = trunc nuw i8 %i.au to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %i.ax
}

declare i64 @b3DynamicTree_Query(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b3CompoundOverlapCallback(i32 %0, i64 noundef %1, ptr noundef %2) #5 !func_sanitize !91 {
bb.a:
  %3 = alloca %struct.b3ChildShape, align 8       ; 12 uses
  %4 = alloca %struct.b3Transform, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @372, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %1 to i32
  %i.g = load ptr, ptr %2, align 8, !tbaa !88
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %3, ptr noundef %i.g, i32 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.i, align 8 ; 4 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.414.0.copyload = load float, ptr %.sroa.414.0..sroa_idx, align 8 ; 4 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.515.0.copyload = load <2 x float>, ptr %.sroa.515.0..sroa_idx, align 4 ; 5 uses
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.616.0.copyload = load <2 x float>, ptr %.sroa.616.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 9 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 6 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.5.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.013.0.copyload, %.sroa.6.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul float %.sroa.414.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %i.l = fsub float %i.j, %i.k
  %i.m = shufflevector <2 x float> %.sroa.013.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = insertelement <2 x float> %i.m, float %.sroa.414.0.copyload, i64 1 ; 2 uses
  %i.o = fmul <2 x float> %i.n, %.sroa.5.0.copyload
  %i.p = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.q = fmul <2 x float> %.sroa.013.0.copyload, %i.p
  %i.r = fsub <2 x float> %i.o, %i.q              ; 2 uses
  %i.s = insertelement <2 x float> %i.m, float %.sroa.414.0.copyload, i64 0
  %i.t = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.u = fmul <2 x float> %i.s, %i.t
  %i.v = fmul <2 x float> %i.n, %i.t
  %i.w = fadd <2 x float> %i.u, %i.r              ; 2 uses
  %i.x = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.y = insertelement <2 x float> %i.x, float %i.l, i64 0
  %i.z = fadd <2 x float> %i.v, %i.y              ; 2 uses
  %i.aa = fmul <2 x float> %i.p, %i.w
  %i.ab = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %i.ab, %i.z
  %i.ad = fsub <2 x float> %i.aa, %i.ac
  %foldExtExtBinop23 = fmul <2 x float> %.sroa.5.0.copyload, %i.z
  %foldExtExtBinop25 = fmul <2 x float> %.sroa.5.0.copyload, %i.w
  %shift = shufflevector <2 x float> %foldExtExtBinop25, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop27 = fsub <2 x float> %foldExtExtBinop23, %shift
  %i.ae = extractelement <2 x float> %foldExtExtBinop27, i64 0
  %i.af = fmul <2 x float> %i.ad, splat (float 2.000000e+00)
  %i.ag = fadd <2 x float> %.sroa.013.0.copyload, %i.af
  %i.ah = fmul float %i.ae, 2.000000e+00
  %i.ai = fadd float %.sroa.414.0.copyload, %i.ah
  %i.aj = fadd <2 x float> %.sroa.0.0.copyload, %i.ag
  %i.ak = fadd float %.sroa.4.0.copyload, %i.ai
  store <2 x float> %i.aj, ptr %4, align 8, !tbaa !23, !alias.scope !216
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.ak, ptr %.sroa.415.0..sroa_idx.i, align 8, !tbaa !23, !alias.scope !216
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.am = shufflevector <2 x float> %.sroa.616.0.copyload, <2 x float> %.sroa.515.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.an = fmul <2 x float> %i.am, %i.p
  %i.ao = shufflevector <2 x float> %.sroa.515.0.copyload, <2 x float> %.sroa.616.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ap = fmul <2 x float> %i.ao, %i.ab
  %i.aq = fsub <2 x float> %i.an, %i.ap
  %i.ar = fmul <2 x float> %.sroa.515.0.copyload, %i.t
  %i.as = fadd <2 x float> %i.ar, %i.aq
  %i.at = shufflevector <2 x float> %.sroa.616.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.au = fmul <2 x float> %i.at, %.sroa.5.0.copyload
  %i.av = fadd <2 x float> %i.au, %i.as
  %i.aw = fmul <2 x float> %i.at, %.sroa.6.0.copyload ; 2 uses
  %i.ax = shufflevector <2 x float> %.sroa.515.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.az = fmul <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = shufflevector <2 x float> %.sroa.515.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = fmul <2 x float> %i.ba, %.sroa.5.0.copyload ; 2 uses
  %i.bc = fsub <2 x float> %i.bb, %i.az
  %i.bd = fadd <2 x float> %i.bb, %i.az
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 0, i32 3>
  %i.bf = shufflevector <2 x float> %.sroa.616.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = fmul <2 x float> %i.bf, %i.bg
  %i.bi = fadd <2 x float> %i.be, %i.bh           ; 2 uses
  %i.bj = fadd <2 x float> %i.aw, %i.bi
  %i.bk = fsub <2 x float> %i.aw, %i.bi
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.av, ptr %i.al, align 4, !tbaa !23, !alias.scope !216
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store <2 x float> %i.bl, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !23, !alias.scope !216
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !52
  switch i32 %i.bn, label %.thread [
    i32 0, label %bb.d
    i32 3, label %.split21
    i32 4, label %.split20
    i32 5, label %.split
  ]

.split21:                                         ; preds = %bb.c
  %i.bo = load ptr, ptr %3, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bq = tail call zeroext i1 @b3OverlapHull(ptr noundef %i.bo, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bp) #13
  br i1 %i.bq, label %bb.e, label %.thread

.split20:                                         ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bs = call zeroext i1 @b3OverlapMesh(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.br) #13
  br i1 %i.bs, label %bb.e, label %.thread

.split:                                           ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bu = call zeroext i1 @b3OverlapSphere(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bt) #13
  br i1 %i.bu, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bw = call zeroext i1 @b3OverlapCapsule(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bv) #13
  br i1 %i.bw, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %.split, %.split20, %.split21
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 1, ptr %i.bx, align 8, !tbaa !90
  br label %.thread

.thread:                                          ; preds = %bb.c, %.split21, %.split20, %.split, %bb.d, %bb.e
  %.011 = phi i1 [ true, %.split21 ], [ true, %bb.d ], [ false, %bb.e ], [ true, %.split ], [ true, %.split20 ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %.011
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @b3RayCastCompound(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 initializes((0, 48)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !217 {
bb.a:
  %3 = alloca %struct.b3CompoundCastContext, align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !95
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !97
  %i.c = icmp ne ptr %1, null, !nosanitize !9
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = and i1 %i.c, %i.f, !nosanitize !9
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @197, i64 %i.d) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = call i64 @b3DynamicTree_RayCast(ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3CompoundRayCastCallback, ptr noundef nonnull %3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

declare i64 @b3DynamicTree_RayCast(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal float @b3CompoundRayCastCallback(ptr noundef %0, i32 %1, i64 noundef %2, ptr noundef %3) #5 !func_sanitize !218 {
bb.a:
  %4 = alloca %struct.b3ChildShape, align 8       ; 16 uses
  %5 = alloca %struct.b3RayCastInput, align 8     ; 11 uses
  %.sroa.24 = alloca [3 x i8], align 1            ; 7 uses
  %6 = alloca %struct.b3CastOutput, align 8       ; 10 uses
  %7 = alloca %struct.b3CastOutput, align 8       ; 10 uses
  %8 = alloca %struct.b3CastOutput, align 8       ; 11 uses
  %9 = alloca %struct.b3CastOutput, align 8       ; 10 uses
  %i.a = icmp ne ptr %3, null, !nosanitize !9
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @374, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !95
  %i.g = trunc i64 %2 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %4, ptr noundef %i.f, i32 noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.h = icmp ne ptr %0, null, !nosanitize !9
  %i.i = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 3, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @376, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %0, i64 28, i1 false), !tbaa.struct !34
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.024.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.225.0.copyload = load float, ptr %.sroa.225.0..sroa_idx, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.m, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 3 uses
  %i.r = fsub <2 x float> %.sroa.024.0.copyload, %.sroa.09.0.copyload.i ; 4 uses
  %i.s = fsub float %.sroa.225.0.copyload, %.sroa.210.0.copyload.i ; 3 uses
  %i.t = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1 ; 2 uses
  %i.v = fmul <2 x float> %i.u, %i.o
  %i.w = shufflevector <2 x float> %i.q, <2 x float> %i.o, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.x = fmul <2 x float> %i.r, %i.w
  %i.y = shufflevector <2 x float> %i.o, <2 x float> %i.q, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.z = fmul <2 x float> %i.r, %i.y
  %i.aa = insertelement <2 x float> %i.t, float %i.s, i64 0 ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.o
  %i.ac = fsub <2 x float> %i.v, %i.z
  %i.ad = fsub <2 x float> %i.x, %i.ab
  %i.ae = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.af = fmul <2 x float> %i.aa, %i.ae
  %i.ag = fmul <2 x float> %i.u, %i.ae
  %i.ah = fsub <2 x float> %i.ac, %i.af           ; 2 uses
  %i.ai = fsub <2 x float> %i.ad, %i.ag           ; 2 uses
  %i.aj = fmul <2 x float> %i.y, %i.ah
  %i.ak = fmul <2 x float> %i.w, %i.ai
  %i.al = fsub <2 x float> %i.aj, %i.ak
  %i.am = fmul <2 x float> %i.al, splat (float 2.000000e+00)
  %i.an = fadd <2 x float> %i.r, %i.am
  store <2 x float> %i.an, ptr %5, align 8, !tbaa !23
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.ap, align 4 ; 4 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.217.0.copyload = load float, ptr %.sroa.217.0..sroa_idx, align 4 ; 3 uses
  %i.aq = shufflevector <2 x float> %.sroa.016.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = insertelement <2 x float> %i.aq, float %.sroa.217.0.copyload, i64 1 ; 2 uses
  %i.as = fmul <2 x float> %i.o, %i.ar
  %i.at = fmul <2 x float> %i.w, %.sroa.016.0.copyload
  %i.au = fmul <2 x float> %i.y, %.sroa.016.0.copyload
  %i.av = insertelement <2 x float> %i.aq, float %.sroa.217.0.copyload, i64 0 ; 2 uses
  %i.aw = fmul <2 x float> %i.o, %i.av
  %i.ax = fsub <2 x float> %i.as, %i.au
  %i.ay = fsub <2 x float> %i.at, %i.aw
  %i.az = fmul <2 x float> %i.ae, %i.av
  %i.ba = fmul <2 x float> %i.ae, %i.ar
  %i.bb = fsub <2 x float> %i.ax, %i.az           ; 2 uses
  %i.bc = fsub <2 x float> %i.ay, %i.ba           ; 2 uses
  %i.bd = fmul <2 x float> %i.y, %i.bb
  %i.be = fmul <2 x float> %i.w, %i.bc
  %i.bf = fsub <2 x float> %i.bd, %i.be
  %i.bg = fmul <2 x float> %i.bf, splat (float 2.000000e+00)
  %i.bh = fadd <2 x float> %.sroa.016.0.copyload, %i.bg
  %i.bi = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.ai, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bk = fmul <2 x float> %i.bi, %i.bj
  %i.bl = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = shufflevector <2 x float> %i.ah, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = fsub <2 x float> %i.bk, %i.bn
  %i.bp = fmul <2 x float> %i.bo, splat (float 2.000000e+00)
  %i.bq = insertelement <2 x float> poison, float %i.s, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %.sroa.217.0.copyload, i64 1
  %i.bs = fadd <2 x float> %i.br, %i.bp           ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  store float %i.bt, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !23
  store <2 x float> %i.bh, ptr %i.ao, align 4, !tbaa !23
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bu = extractelement <2 x float> %i.bs, i64 1
  store float %i.bu, ptr %.sroa.419.0..sroa_idx, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24)
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !52
  switch i32 %i.bw, label %.thread152 [
    i32 0, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.m
end_hunk_0
begin_hunk_1_@b3CompoundShapeCastCallback:bb.a
  %i.gz = fmul float %i.gy, 2.000000e+00
  %i.ha = fadd float %i.gm, %i.gz
  %i.hb = fadd float %.sroa.4185.0.copyload, %i.ha
  %.sroa.0184.0.copyload = load <2 x float>, ptr %i.aa, align 8
  %i.hc = fmul <2 x float> %i.fr, %i.gx
  %i.hd = fmul <2 x float> %i.gh, %i.gu
  %i.he = fsub <2 x float> %i.hc, %i.hd
  %i.hf = fmul <2 x float> %i.he, splat (float 2.000000e+00)
  %i.hg = fadd <2 x float> %.sroa.12.0, %i.hf
  %i.hh = fadd <2 x float> %.sroa.0184.0.copyload, %i.hg
  store <2 x float> %i.gl, ptr %i.fg, align 4, !tbaa !23
  %.sroa.10.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store float %i.gf, ptr %.sroa.10.0..sroa_idx108, align 4, !tbaa !23
  %.sroa.12.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store <2 x float> %i.hh, ptr %.sroa.12.0..sroa_idx116, align 4, !tbaa !23
  %.sroa.14.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  store float %i.hb, ptr %.sroa.14.0..sroa_idx124, align 4, !tbaa !23
  %.sroa.16.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.hi = extractelement <2 x float> %i.fb, i64 1 ; 2 uses
  store float %i.hi, ptr %.sroa.16.0..sroa_idx132, align 4, !tbaa !23
  %.sroa.17.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  store i64 %.sroa.17.sroa.0.0, ptr %.sroa.17.0..sroa_idx137, align 4, !tbaa !24
  %.sroa.17138.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  store i32 %i.i, ptr %.sroa.17138.0..sroa_idx145, align 4, !tbaa !24
  %.sroa.18.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store i32 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx153, align 4, !tbaa !24
  %.sroa.23.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %i.fg, i64 44
  store i8 1, ptr %.sroa.23.0..sroa_idx161, align 4, !tbaa !98
  %.sroa.24.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.fg, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.24.0..sroa_idx166, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.24, i64 3, i1 false), !tbaa.struct !9
  br label %.thread208

.thread208:                                       ; preds = %._crit_edge, %..thread208_crit_edge, %bb.z
  %.0 = phi float [ %i.hi, %bb.z ], [ %.pre, %..thread208_crit_edge ], [ %i.v, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret float %.0
}

; Function Attrs: nounwind uwtable
define void @b3QueryCompound(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3AABB) align 8 captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !func_sanitize !230 {
bb.a:
  %4 = alloca %struct.b3CompoundQueryContext, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %0, ptr %4, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !109
  %i.c = icmp ne ptr %0, null, !nosanitize !9
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = and i1 %i.c, %i.f, !nosanitize !9
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @201, i64 %i.d) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.h, ptr noundef nonnull byval(%struct.b3AABB) align 8 %1, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @TreeQueryCallbackFcn, ptr noundef nonnull %4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @TreeQueryCallbackFcn(i32 %0, i64 noundef %1, ptr noundef %2) #0 !func_sanitize !91 {
bb.a:
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @396, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !nosanitize !9
  %i.j = icmp eq i32 %i.i, -1056584962, !nosanitize !9
  br i1 %i.j, label %bb.d, label %bb.f, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 -4
  %i.l = load i32, ptr %i.k, align 8, !nosanitize !9
  %i.m = icmp eq i32 %i.l, 449792071, !nosanitize !9
  br i1 %i.m, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.g to i64, !nosanitize !9
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @398, i64 %i.n) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %2, align 8, !tbaa !107
  %i.q = trunc i64 %1 to i32
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.s = tail call zeroext i1 %i.g(ptr noundef %i.p, i32 noundef %i.q, ptr noundef %i.r) #13
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @b3MakeCompoundChildSweep(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Sweep) align 4 captures(none) initializes((0, 68)) %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2) local_unnamed_addr #8 !func_sanitize !231 {
bb.a:
  %.sroa.010.0.copyload = load <2 x float>, ptr %2, align 8 ; 4 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.411.0.copyload = load float, ptr %.sroa.411.0..sroa_idx, align 8 ; 4 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.512.0.copyload = load <2 x float>, ptr %.sroa.512.0..sroa_idx, align 4 ; 5 uses
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.613.0.copyload = load <2 x float>, ptr %.sroa.613.0..sroa_idx, align 4 ; 4 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.58.0.copyload = load <2 x float>, ptr %.sroa.58.0..sroa_idx, align 4 ; 11 uses
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.69.0.copyload = load <2 x float>, ptr %.sroa.69.0..sroa_idx, align 4 ; 8 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.58.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.010.0.copyload, %.sroa.69.0.copyload
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.b = fmul float %.sroa.411.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %i.c = fsub float %i.a, %i.b
  %i.d = shufflevector <2 x float> %.sroa.010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.e = insertelement <2 x float> %i.d, float %.sroa.411.0.copyload, i64 1 ; 2 uses
  %i.f = fmul <2 x float> %i.e, %.sroa.58.0.copyload
  %i.g = shufflevector <2 x float> %.sroa.58.0.copyload, <2 x float> %.sroa.69.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.h = fmul <2 x float> %.sroa.010.0.copyload, %i.g
  %i.i = fsub <2 x float> %i.f, %i.h              ; 2 uses
  %i.j = insertelement <2 x float> %i.d, float %.sroa.411.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.69.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.e, %i.k
  %i.n = fadd <2 x float> %i.l, %i.i              ; 2 uses
  %i.o = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.c, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.g, %i.n
  %i.s = shufflevector <2 x float> %.sroa.69.0.copyload, <2 x float> %.sroa.58.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop15 = fmul <2 x float> %.sroa.58.0.copyload, %i.q
  %foldExtExtBinop17 = fmul <2 x float> %.sroa.58.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop17, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop19 = fsub <2 x float> %foldExtExtBinop15, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop19, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fadd <2 x float> %.sroa.010.0.copyload, %i.w
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fadd float %.sroa.411.0.copyload, %i.y
  %i.aa = fadd <2 x float> %.sroa.07.0.copyload, %i.x ; 2 uses
  %i.ab = fadd float %.sroa.4.0.copyload, %i.z    ; 2 uses
  %i.ac = shufflevector <2 x float> %.sroa.613.0.copyload, <2 x float> %.sroa.512.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x float> %.sroa.58.0.copyload, <2 x float> %.sroa.69.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = shufflevector <2 x float> %.sroa.512.0.copyload, <2 x float> %.sroa.613.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ag = shufflevector <2 x float> %.sroa.69.0.copyload, <2 x float> %.sroa.58.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = fsub <2 x float> %i.ae, %i.ah
  %i.aj = fmul <2 x float> %.sroa.512.0.copyload, %i.k
  %i.ak = fadd <2 x float> %i.aj, %i.ai
  %i.al = shufflevector <2 x float> %.sroa.613.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.am = fmul <2 x float> %i.al, %.sroa.58.0.copyload
  %i.an = fadd <2 x float> %i.am, %i.ak           ; 2 uses
  %i.ao = fmul <2 x float> %i.al, %.sroa.69.0.copyload ; 2 uses
  %i.ap = shufflevector <2 x float> %.sroa.512.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = shufflevector <2 x float> %.sroa.58.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = fmul <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = shufflevector <2 x float> %.sroa.512.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fmul <2 x float> %i.as, %.sroa.58.0.copyload ; 2 uses
  %i.au = fsub <2 x float> %i.at, %i.ar
  %i.av = fadd <2 x float> %i.at, %i.ar
  %i.aw = shufflevector <2 x float> %i.au, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ax = shufflevector <2 x float> %.sroa.613.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x float> %.sroa.69.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.az = fmul <2 x float> %i.ax, %i.ay
  %i.ba = fadd <2 x float> %i.aw, %i.az           ; 2 uses
  %i.bb = fadd <2 x float> %i.ao, %i.ba
  %i.bc = fsub <2 x float> %i.ao, %i.ba
  %i.bd = shufflevector <2 x float> %i.bb, <2 x float> %i.bc, <2 x i32> <i32 0, i32 3> ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.aa, ptr %i.be, align 4, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ab, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.aa, ptr %i.bf, align 4, !tbaa !23
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ab, ptr %.sroa.5.0..sroa_idx2, align 4, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %i.an, ptr %i.bg, align 4, !tbaa !23
  %.sroa.9.12..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <2 x float> %i.bd, ptr %.sroa.9.12..sroa_idx5, align 4, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.an, ptr %i.bh, align 4, !tbaa !23
  %.sroa.9.12..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <2 x float> %i.bd, ptr %.sroa.9.12..sroa_idx, align 4, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @b3CollideMoverAndCompound(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 !func_sanitize !232 {
bb.a:
  %4 = alloca %struct.b3CompoundMoverContext, align 8 ; 9 uses
  %5 = alloca %struct.b3AABB, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %2, ptr %4, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %1, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !115
  %i.d = icmp ne ptr %3, null, !nosanitize !9
  %i.e = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.f = and i64 %i.e, 3, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !9
  %i.h = and i1 %i.d, %i.g, !nosanitize !9
  br i1 %i.h, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @202, i64 %i.e) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.i, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !34
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4 ; 4 uses
  %i.l = fcmp ogt float %.sroa.237.0.copyload, %.sroa.235.0.copyload
  %i.m = select i1 %i.l, float %.sroa.237.0.copyload, float %.sroa.235.0.copyload
  %.sroa.036.0.copyload = load <2 x float>, ptr %3, align 4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = fcmp olt float %.sroa.237.0.copyload, %.sroa.235.0.copyload
  %i.q = select i1 %i.p, float %.sroa.237.0.copyload, float %.sroa.235.0.copyload
  %i.r = load float, ptr %i.k, align 4, !tbaa !116 ; 3 uses
  %i.s = fcmp olt <2 x float> %.sroa.036.0.copyload, %.sroa.034.0.copyload
  %i.t = select <2 x i1> %i.s, <2 x float> %.sroa.036.0.copyload, <2 x float> %.sroa.034.0.copyload
  %i.u = insertelement <2 x float> poison, float %i.r, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = fsub <2 x float> %i.t, %i.v
  %i.x = fsub float %i.q, %i.r
  store <2 x float> %i.w, ptr %5, align 8, !tbaa !23
  store float %i.x, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !23
  %i.y = fcmp ogt <2 x float> %.sroa.036.0.copyload, %.sroa.034.0.copyload
  %i.z = select <2 x i1> %i.y, <2 x float> %.sroa.036.0.copyload, <2 x float> %.sroa.034.0.copyload
  %i.aa = fadd <2 x float> %i.z, %i.v
  %i.ab = fadd float %i.m, %i.r
  store <2 x float> %i.aa, ptr %i.o, align 4, !tbaa !23
  store float %i.ab, ptr %.sroa.429.0..sroa_idx, align 4, !tbaa !23
  %i.ac = icmp ne ptr %2, null, !nosanitize !9
  %i.ad = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.ae = and i64 %i.ad, 7, !nosanitize !9
  %i.af = icmp eq i64 %i.ae, 0, !nosanitize !9
  %i.ag = and i1 %i.ac, %i.af, !nosanitize !9
  br i1 %i.ag, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @203, i64 %i.ad) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3AABB) align 8 %5, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3CompoundMoverCallback, ptr noundef nonnull %4) #13 ; 0 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.aj
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @b3CompoundMoverCallback(i32 %0, i64 noundef %1, ptr noundef %2) #5 !func_sanitize !91 {
bb.a:
  %3 = alloca %struct.b3ChildShape, align 8       ; 13 uses
  %4 = alloca %struct.b3Capsule, align 8          ; 11 uses
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.b = icmp ne ptr %2, null, !nosanitize !9
  %i.c = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @400, i64 %i.c) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !112
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %3, ptr noundef %i.g, i32 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.i, align 8
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.247.0.copyload = load float, ptr %.sroa.247.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.h, align 8 ; 2 uses
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 8 ; 2 uses
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 3 uses
  %i.n = fsub <2 x float> %.sroa.046.0.copyload, %.sroa.09.0.copyload.i ; 4 uses
  %i.o = fsub float %.sroa.247.0.copyload, %.sroa.210.0.copyload.i ; 3 uses
  %i.p = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 1 ; 2 uses
  %i.r = fmul <2 x float> %i.q, %i.k
  %i.s = shufflevector <2 x float> %i.m, <2 x float> %i.k, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.t = fmul <2 x float> %i.n, %i.s
  %i.u = shufflevector <2 x float> %i.k, <2 x float> %i.m, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.v = fmul <2 x float> %i.n, %i.u
  %i.w = insertelement <2 x float> %i.p, float %i.o, i64 0 ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.k
  %i.y = fsub <2 x float> %i.r, %i.v
  %i.z = fsub <2 x float> %i.t, %i.x
  %i.aa = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ab = fmul <2 x float> %i.w, %i.aa
  %i.ac = fmul <2 x float> %i.q, %i.aa
  %i.ad = fsub <2 x float> %i.y, %i.ab            ; 2 uses
  %i.ae = fsub <2 x float> %i.z, %i.ac            ; 2 uses
  %i.af = fmul <2 x float> %i.u, %i.ad
  %i.ag = fmul <2 x float> %i.s, %i.ae
  %i.ah = fsub <2 x float> %i.af, %i.ag
  %i.ai = fmul <2 x float> %i.ah, splat (float 2.000000e+00)
  %i.aj = fadd <2 x float> %i.n, %i.ai
  store <2 x float> %i.aj, ptr %4, align 8, !tbaa !23
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.al, align 4
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.239.0.copyload = load float, ptr %.sroa.239.0..sroa_idx, align 4
  %i.am = fsub <2 x float> %.sroa.038.0.copyload, %.sroa.09.0.copyload.i ; 4 uses
  %i.an = fsub float %.sroa.239.0.copyload, %.sroa.210.0.copyload.i ; 3 uses
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ap = insertelement <2 x float> %i.ao, float %i.an, i64 1 ; 2 uses
  %i.aq = fmul <2 x float> %i.k, %i.ap
  %i.ar = fmul <2 x float> %i.s, %i.am
  %i.as = fmul <2 x float> %i.u, %i.am
  %i.at = insertelement <2 x float> %i.ao, float %i.an, i64 0 ; 2 uses
  %i.au = fmul <2 x float> %i.k, %i.at
  %i.av = fsub <2 x float> %i.aq, %i.as
  %i.aw = fsub <2 x float> %i.ar, %i.au
  %i.ax = fmul <2 x float> %i.aa, %i.at
  %i.ay = fmul <2 x float> %i.aa, %i.ap
  %i.az = fsub <2 x float> %i.av, %i.ax           ; 2 uses
  %i.ba = fsub <2 x float> %i.aw, %i.ay           ; 2 uses
  %i.bb = fmul <2 x float> %i.u, %i.az
  %i.bc = fmul <2 x float> %i.s, %i.ba
  %i.bd = fsub <2 x float> %i.bb, %i.bc
  %i.be = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = shufflevector <2 x float> %i.ae, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.bg = fmul <2 x float> %i.be, %i.bf
  %i.bh = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = shufflevector <2 x float> %i.ad, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = fsub <2 x float> %i.bg, %i.bj           ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = fmul float %i.bl, 2.000000e+00
  %i.bn = fadd float %i.o, %i.bm
  store float %i.bn, ptr %.sroa.449.0..sroa_idx, align 8, !tbaa !23
  %i.bo = fmul <2 x float> %i.bd, splat (float 2.000000e+00)
  %i.bp = fadd <2 x float> %i.am, %i.bo
  %i.bq = extractelement <2 x float> %i.bk, i64 1
  %i.br = fmul float %i.bq, 2.000000e+00
  %i.bs = fadd float %i.an, %i.br
  store <2 x float> %i.bp, ptr %i.ak, align 4, !tbaa !23
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.bs, ptr %.sroa.441.0..sroa_idx, align 4, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bv = load float, ptr %i.bt, align 8, !tbaa !234
  store float %i.bv, ptr %i.bu, align 8, !tbaa !116
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !114 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !115 ; 4 uses
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bx, i32 %i.bz), !nosanitize !9 ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 0, !nosanitize !9
  %i.cc = extractvalue { i32, i1 } %i.ca, 1, !nosanitize !9
  br i1 %i.cc, label %bb.d, label %bb.e, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.cd = zext i32 %i.bx to i64, !nosanitize !9
  %i.ce = zext i32 %i.bz to i64, !nosanitize !9
end_hunk_1
