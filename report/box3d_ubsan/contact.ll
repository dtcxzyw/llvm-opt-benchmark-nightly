Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact?download=true
inline.NumInlined: 65
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3DestroyContact:bb.a
bb.dw:                                            ; preds = %bb.dv
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.qo, i64 %i.qp) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dx:                                            ; preds = %bb.dv
  %i.qx = ptrtoint ptr %i.qm to i64, !nosanitize !9 ; 2 uses
  %i.qy = and i64 %i.qx, 7, !nosanitize !9
  %i.qz = icmp eq i64 %i.qy, 0, !nosanitize !9
  %i.ra = and i1 %i.qq, %i.qz
  br i1 %i.ra, label %bb.dz, label %bb.dy, !prof !11, !nosanitize !9

bb.dy:                                            ; preds = %bb.dx
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @108, i64 %i.qx) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dz:                                            ; preds = %bb.dx
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i32 %i.ob, ptr %i.rb, align 8, !tbaa !110
  br label %bb.ea

bb.ea:                                            ; preds = %bb.cz, %bb.dz, %b3RemoveHelper.exit, %bb.dg
  store i32 -1, ptr %i.jg, align 8, !tbaa !98
  store i32 -1, ptr %1, align 8, !tbaa !99
  store i32 -1, ptr %i.ne, align 4, !tbaa !100
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 -1, ptr %i.rc, align 8, !tbaa !110
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 3976
  tail call void @b3FreeId(ptr noundef nonnull %i.rd, i32 noundef %i.jh) #7
  %brmerge.not = and i1 %2, %.not191
  br i1 %brmerge.not, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.re = tail call zeroext i1 @b3WakeBody(ptr noundef nonnull %0, ptr noundef nonnull %i.br) #7 ; 0 uses
  %i.rf = tail call zeroext i1 @b3WakeBody(ptr noundef nonnull %0, ptr noundef nonnull %i.cd) #7 ; 0 uses
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ea, %bb.eb
  ret void
}

declare zeroext i1 @b3RemoveKey(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @b3UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b3FreeId(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @b3WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3UpdateContact(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, <2 x float> %4, float %5, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %6, ptr noundef %7, <2 x float> %8, float %9, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %10, i1 noundef zeroext %11, ptr nofree noundef readonly byval(%struct.b3Arena) align 8 captures(none) %12) local_unnamed_addr #6 !func_sanitize !166 {
bb.a:
  %13 = alloca %struct.b3ChildShape, align 8      ; 20 uses
  %14 = alloca %struct.b3Shape, align 8           ; 17 uses
  %15 = alloca %struct.b3Transform, align 8       ; 7 uses
  %16 = alloca %struct.b3Transform, align 8       ; 7 uses
  %i.a = icmp ne ptr %3, null, !nosanitize !9
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92
  switch i32 %i.g, label %bb.at [
    i32 1, label %bb.d
    i32 4, label %bb.ak
    i32 2, label %bb.ak
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 4 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.f, label %bb.e, !prof !11, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %13, ptr noundef %i.p, i32 noundef %i.n) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %14, ptr noundef nonnull align 8 dereferenceable(232) %3, i64 232, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 76
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.s = load i32, ptr %i.q, align 4, !tbaa !116  ; 3 uses
  store i32 %i.s, ptr %i.r, align 8, !tbaa !92
  %.not176 = icmp eq i32 %i.s, 4
  br i1 %.not176, label %.thread, label %b3GetShapeMaterials.exit

b3GetShapeMaterials.exit:                         ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.w = select i1 %.not.i, ptr %i.v, ptr %i.u    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [40 x i8], ptr %i.w, i64 %i.aa ; 2 uses
  %i.ac = mul nsw i64 %i.aa, 40
  %i.ad = ptrtoint ptr %i.w to i64, !nosanitize !9 ; 3 uses
  %i.ae = add i64 %i.ac, %i.ad, !nosanitize !9    ; 3 uses
  %i.af = icmp ne i64 %i.ae, 0, !nosanitize !9
  %i.ag = icmp uge i64 %i.ae, %i.ad, !nosanitize !9
  %i.ah = icmp slt i32 %i.z, 0
  %i.ai = xor i1 %i.ah, %i.ag
  %i.aj = and i1 %i.af, %i.ai, !nosanitize !9
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !11, !nosanitize !9

bb.g:                                             ; preds = %b3GetShapeMaterials.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.ad, i64 %i.ae) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %b3GetShapeMaterials.exit
  %i.ak = ptrtoint ptr %i.ab to i64, !nosanitize !9 ; 2 uses
  %i.al = and i64 %i.ak, 7, !nosanitize !9
  %i.am = icmp eq i64 %i.al, 0, !nosanitize !9
  br i1 %i.am, label %bb.j, label %bb.i, !prof !11, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %i.ak) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !tbaa.struct !168
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 144
  store ptr null, ptr %i.an, align 8, !tbaa !125
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 100
  store i32 1, ptr %i.ao, align 4, !tbaa !169
  switch i32 %i.s, label %bb.x [
    i32 0, label %bb.k
    i32 3, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ap, ptr noundef nonnull align 8 dereferenceable(28) %13, i64 28, i1 false), !tbaa.struct !170
  %i.aq = icmp ne ptr %7, null, !nosanitize !9
  %i.ar = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !9
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !9
  %i.au = and i1 %i.aq, %i.at, !nosanitize !9
  br i1 %i.au, label %bb.m, label %bb.l, !prof !11, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @114, i64 %i.ar) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !92
  %i.ax = icmp eq i32 %i.aw, 3
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, ptr noundef nonnull %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.az = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, ptr noundef nonnull %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br label %bb.ac

bb.p:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %13, align 8, !tbaa !114
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 200
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.0284.0.copyload = load <2 x float>, ptr %i.bc, align 8 ; 4 uses
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.4285.0.copyload = load float, ptr %.sroa.4285.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 44
  %.sroa.5286.0.copyload = load <2 x float>, ptr %.sroa.5286.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 52
  %.sroa.6287.0.copyload = load <2 x float>, ptr %.sroa.6287.0..sroa_idx, align 4 ; 4 uses
  %.sroa.5279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5279.0.copyload = load float, ptr %.sroa.5279.0..sroa_idx, align 8
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.6280.0.copyload = load <2 x float>, ptr %.sroa.6280.0..sroa_idx, align 4 ; 9 uses
  %.sroa.8282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.8282.0.copyload = load <2 x float>, ptr %.sroa.8282.0..sroa_idx, align 4 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 12
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.6280.0.copyload, i64 0
  %i.be = shufflevector <2 x float> %.sroa.6287.0.copyload, <2 x float> %.sroa.5286.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bf = shufflevector <2 x float> %.sroa.6280.0.copyload, <2 x float> %.sroa.8282.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bg = fmul <2 x float> %i.be, %i.bf
  %i.bh = shufflevector <2 x float> %.sroa.5286.0.copyload, <2 x float> %.sroa.6287.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.bi = shufflevector <2 x float> %.sroa.8282.0.copyload, <2 x float> %.sroa.6280.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = fsub <2 x float> %i.bg, %i.bj
  %i.bl = shufflevector <2 x float> %.sroa.8282.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.bm = fmul <2 x float> %.sroa.5286.0.copyload, %i.bl
  %i.bn = fadd <2 x float> %i.bm, %i.bk
  %i.bo = shufflevector <2 x float> %.sroa.6287.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bp = fmul <2 x float> %i.bo, %.sroa.6280.0.copyload
  %i.bq = fadd <2 x float> %i.bp, %i.bn
  %i.br = fmul <2 x float> %i.bo, %.sroa.8282.0.copyload ; 2 uses
  %i.bs = shufflevector <2 x float> %.sroa.5286.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = shufflevector <2 x float> %.sroa.6280.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = shufflevector <2 x float> %.sroa.5286.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fmul <2 x float> %i.bv, %.sroa.6280.0.copyload ; 2 uses
  %i.bx = fsub <2 x float> %i.bw, %i.bu
  %i.by = fadd <2 x float> %i.bw, %i.bu
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ca = shufflevector <2 x float> %.sroa.6287.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %.sroa.8282.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = fmul <2 x float> %i.ca, %i.cb
  %i.cd = fadd <2 x float> %i.bz, %i.cc           ; 2 uses
  %i.ce = fadd <2 x float> %i.br, %i.cd
  %i.cf = fsub <2 x float> %i.br, %i.cd
  %i.cg = shufflevector <2 x float> %i.ce, <2 x float> %i.cf, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bq, ptr %i.bd, align 4, !tbaa !131, !alias.scope !171
  %.sroa.4.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store <2 x float> %i.cg, ptr %.sroa.4.0..sroa_idx.i183, align 4, !tbaa !131, !alias.scope !171
  %i.ch = load <2 x float>, ptr %6, align 8
  %foldExtExtBinop = fmul <2 x float> %.sroa.0284.0.copyload, %.sroa.8282.0.copyload
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cj = fmul float %.sroa.4285.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.ck = fsub float %i.ci, %i.cj
  %i.cl = shufflevector <2 x float> %.sroa.0284.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cm = insertelement <2 x float> %i.cl, float %.sroa.4285.0.copyload, i64 1 ; 2 uses
  %i.cn = fmul <2 x float> %i.cm, %.sroa.6280.0.copyload
  %i.co = fmul <2 x float> %.sroa.0284.0.copyload, %i.bf
  %i.cp = fsub <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cq = insertelement <2 x float> %i.cl, float %.sroa.4285.0.copyload, i64 0
  %i.cr = fmul <2 x float> %i.cq, %i.bl
  %i.cs = fmul <2 x float> %i.cm, %i.bl
  %i.ct = fadd <2 x float> %i.cr, %i.cp           ; 2 uses
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cv = insertelement <2 x float> %i.cu, float %i.ck, i64 0
  %i.cw = fadd <2 x float> %i.cs, %i.cv           ; 2 uses
  %i.cx = fmul <2 x float> %i.bf, %i.ct
  %i.cy = fmul <2 x float> %i.bi, %i.cw
  %i.cz = fsub <2 x float> %i.cx, %i.cy
  %foldExtExtBinop764 = fmul <2 x float> %.sroa.6280.0.copyload, %i.cw
  %foldExtExtBinop766.a = fmul <2 x float> %.sroa.6280.0.copyload, %i.ct
  %shift = shufflevector <2 x float> %foldExtExtBinop766.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop768 = fsub <2 x float> %foldExtExtBinop764, %shift
  %i.da = extractelement <2 x float> %foldExtExtBinop768, i64 0
  %i.db = fmul <2 x float> %i.cz, splat (float 2.000000e+00)
  %i.dc = fadd <2 x float> %.sroa.0284.0.copyload, %i.db
  %i.dd = fmul float %i.da, 2.000000e+00
  %i.de = fadd float %.sroa.4285.0.copyload, %i.dd
  %i.df = fadd <2 x float> %i.ch, %i.dc
  %i.dg = fadd float %.sroa.5279.0.copyload, %i.de
  store <2 x float> %i.df, ptr %15, align 8, !tbaa !131
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.dg, ptr %.sroa.5290.0..sroa_idx, align 8, !tbaa !131
  %i.dh = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %15, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  br label %bb.ac

.thread:                                          ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.0268.0.copyload = load <2 x float>, ptr %i.dj, align 8 ; 4 uses
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.4269.0.copyload = load float, ptr %.sroa.4269.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 44
  %.sroa.5270.0.copyload = load <2 x float>, ptr %.sroa.5270.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 52
  %.sroa.6271.0.copyload = load <2 x float>, ptr %.sroa.6271.0..sroa_idx, align 4 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 9 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 12
  %.sroa.09.0.vec.extract.i.i199 = extractelement <2 x float> %.sroa.6.0.copyload, i64 0
  %i.dl = shufflevector <2 x float> %.sroa.6271.0.copyload, <2 x float> %.sroa.5270.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.dm = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.dn = fmul <2 x float> %i.dl, %i.dm
  %i.do = shufflevector <2 x float> %.sroa.5270.0.copyload, <2 x float> %.sroa.6271.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.dp = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dq = fmul <2 x float> %i.do, %i.dp
  %i.dr = fsub <2 x float> %i.dn, %i.dq
  %i.ds = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.dt = fmul <2 x float> %.sroa.5270.0.copyload, %i.ds
  %i.du = fadd <2 x float> %i.dt, %i.dr
  %i.dv = shufflevector <2 x float> %.sroa.6271.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dw = fmul <2 x float> %i.dv, %.sroa.6.0.copyload
  %i.dx = fadd <2 x float> %i.dw, %i.du
  %i.dy = fmul <2 x float> %i.dv, %.sroa.8.0.copyload ; 2 uses
  %i.dz = shufflevector <2 x float> %.sroa.5270.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = fmul <2 x float> %i.dz, %i.ea           ; 2 uses
  %i.ec = shufflevector <2 x float> %.sroa.5270.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ed = fmul <2 x float> %i.ec, %.sroa.6.0.copyload ; 2 uses
  %i.ee = fsub <2 x float> %i.ed, %i.eb
  %i.ef = fadd <2 x float> %i.ed, %i.eb
  %i.eg = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 0, i32 3>
  %i.eh = shufflevector <2 x float> %.sroa.6271.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  %i.ek = fadd <2 x float> %i.eg, %i.ej           ; 2 uses
  %i.el = fadd <2 x float> %i.dy, %i.ek
  %i.em = fsub <2 x float> %i.dy, %i.ek
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dx, ptr %i.dk, align 4, !tbaa !131, !alias.scope !175
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 20
  store <2 x float> %i.en, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !131, !alias.scope !175
  %i.eo = load <2 x float>, ptr %6, align 8
  %foldExtExtBinop770 = fmul <2 x float> %.sroa.0268.0.copyload, %.sroa.8.0.copyload
  %i.ep = extractelement <2 x float> %foldExtExtBinop770, i64 0
  %i.eq = fmul float %.sroa.4269.0.copyload, %.sroa.09.0.vec.extract.i.i199
  %i.er = fsub float %i.ep, %i.eq
  %i.es = shufflevector <2 x float> %.sroa.0268.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.et = insertelement <2 x float> %i.es, float %.sroa.4269.0.copyload, i64 1 ; 2 uses
  %i.eu = fmul <2 x float> %i.et, %.sroa.6.0.copyload
  %i.ev = fmul <2 x float> %.sroa.0268.0.copyload, %i.dm
  %i.ew = fsub <2 x float> %i.eu, %i.ev           ; 2 uses
  %i.ex = insertelement <2 x float> %i.es, float %.sroa.4269.0.copyload, i64 0
  %i.ey = fmul <2 x float> %i.ex, %i.ds
  %i.ez = fmul <2 x float> %i.et, %i.ds
  %i.fa = fadd <2 x float> %i.ey, %i.ew           ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fc = insertelement <2 x float> %i.fb, float %i.er, i64 0
  %i.fd = fadd <2 x float> %i.ez, %i.fc           ; 2 uses
  %i.fe = fmul <2 x float> %i.dm, %i.fa
  %i.ff = fmul <2 x float> %i.dp, %i.fd
  %i.fg = fsub <2 x float> %i.fe, %i.ff
  %foldExtExtBinop772 = fmul <2 x float> %.sroa.6.0.copyload, %i.fd
  %foldExtExtBinop774 = fmul <2 x float> %.sroa.6.0.copyload, %i.fa
  %shift776 = shufflevector <2 x float> %foldExtExtBinop774, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop777 = fsub <2 x float> %foldExtExtBinop772, %shift776
  %i.fh = extractelement <2 x float> %foldExtExtBinop777, i64 0
  %i.fi = fmul <2 x float> %i.fg, splat (float 2.000000e+00)
  %i.fj = fadd <2 x float> %.sroa.0268.0.copyload, %i.fi
  %i.fk = fmul float %i.fh, 2.000000e+00
  %i.fl = fadd float %.sroa.4269.0.copyload, %i.fk
  %i.fm = fadd <2 x float> %i.eo, %i.fj
  %i.fn = fadd float %.sroa.5.0.copyload, %i.fl
  store <2 x float> %i.fm, ptr %16, align 8, !tbaa !131
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.fn, ptr %.sroa.5274.0..sroa_idx, align 8, !tbaa !131
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.fp = call zeroext i1 @b3ComputeMeshManifolds(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull %i.fo, ptr noundef nonnull byval(%struct.b3Transform) align 8 %16, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext %11, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12) #7 ; 2 uses
  br i1 %i.fp, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.thread
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 198
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !117
  %i.fs = and i8 %i.fr, 8
  %.not178 = icmp eq i8 %i.fs, 0
  br i1 %.not178, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ft = icmp ne ptr %7, null, !nosanitize !9
  %i.fu = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.fv = and i64 %i.fu, 7, !nosanitize !9
  %i.fw = icmp eq i64 %i.fv, 0, !nosanitize !9
  %i.fx = and i1 %i.ft, %i.fw, !nosanitize !9
  br i1 %i.fx, label %bb.t, label %bb.s, !prof !11, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %i.fu) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 198
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !117
  %i.ga = and i8 %i.fz, 8
  %.not180 = icmp eq i8 %i.ga, 0
  br i1 %.not180, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !113
  %i.gd = or i32 %i.gc, 1048576
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !113
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !113
  %i.gg = and i32 %i.gf, -1048577
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !113
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  br label %bb.ac

bb.x:                                             ; preds = %bb.j
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !176
  %i.gi = icmp ne ptr %7, null, !nosanitize !9
  %i.gj = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.gk = and i64 %i.gj, 7, !nosanitize !9
  %i.gl = icmp eq i64 %i.gk, 0, !nosanitize !9
  %i.gm = and i1 %i.gi, %i.gl, !nosanitize !9
  br i1 %i.gm, label %bb.z, label %bb.y, !prof !11, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @116, i64 %i.gj) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !92
  switch i32 %i.go, label %bb.ab [
    i32 0, label %bb.aa
    i32 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.gp = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, ptr noundef nonnull %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gq = call fastcc zeroext i1 @b3UpdateConvexContact(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, ptr noundef nonnull %7, ptr noundef nonnull byval(%struct.b3Transform) align 8 %10, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.b3Arena) align 8 %12)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.p, %bb.aa, %bb.ab, %bb.w, %bb.n, %bb.o
  %.0.in = phi i1 [ %i.ay, %bb.n ], [ %i.az, %bb.o ], [ %i.dh, %bb.p ], [ %i.fp, %bb.w ], [ %i.gp, %bb.aa ], [ %i.gq, %bb.ab ]
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !87 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.gv = load <2 x float>, ptr %i.gu, align 4    ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.gx = load <2 x float>, ptr %i.gw, align 4    ; 4 uses
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.gt, align 8 ; 4 uses
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.269.0.copyload = load float, ptr %.sroa.269.0..sroa_idx, align 8 ; 4 uses
  %.sroa.09.0.vec.extract.i.i222 = extractelement <2 x float> %i.gv, i64 0
  %foldExtExtBinop779 = fmul <2 x float> %i.gx, %.sroa.068.0.copyload
  %i.gy = extractelement <2 x float> %foldExtExtBinop779, i64 0
  %i.gz = fmul float %.sroa.09.0.vec.extract.i.i222, %.sroa.269.0.copyload
  %i.ha = fsub float %i.gy, %i.gz
  %i.hb = shufflevector <2 x float> %.sroa.068.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hc = insertelement <2 x float> %i.hb, float %.sroa.269.0.copyload, i64 1 ; 2 uses
  %i.hd = fmul <2 x float> %i.gv, %i.hc
  %i.he = shufflevector <2 x float> %i.gv, <2 x float> %i.gx, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.hf = fmul <2 x float> %i.he, %.sroa.068.0.copyload
  %i.hg = fsub <2 x float> %i.hd, %i.hf           ; 2 uses
  %i.hh = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hi = insertelement <2 x float> %i.hb, float %.sroa.269.0.copyload, i64 0
  %i.hj = fmul <2 x float> %i.hh, %i.hi
  %i.hk = fmul <2 x float> %i.hh, %i.hc
  %i.hl = fadd <2 x float> %i.hj, %i.hg           ; 2 uses
  %i.hm = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hn = insertelement <2 x float> %i.hm, float %i.ha, i64 0
  %i.ho = fadd <2 x float> %i.hk, %i.hn           ; 2 uses
  %i.hp = fmul <2 x float> %i.he, %i.hl
  %i.hq = shufflevector <2 x float> %i.gx, <2 x float> %i.gv, <2 x i32> <i32 0, i32 2>
  %i.hr = fmul <2 x float> %i.hq, %i.ho
  %i.hs = fsub <2 x float> %i.hp, %i.hr
  %foldExtExtBinop781 = fmul <2 x float> %i.gv, %i.ho
  %foldExtExtBinop783 = fmul <2 x float> %i.gv, %i.hl
  %shift785 = shufflevector <2 x float> %foldExtExtBinop783, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop786 = fsub <2 x float> %foldExtExtBinop781, %shift785
  %i.ht = extractelement <2 x float> %foldExtExtBinop786, i64 0
  %i.hu = fmul <2 x float> %i.hs, splat (float 2.000000e+00)
  %i.hv = fadd <2 x float> %.sroa.068.0.copyload, %i.hu ; 5 uses
  %i.hw = fmul float %i.ht, 2.000000e+00
  %i.hx = fadd float %.sroa.269.0.copyload, %i.hw ; 5 uses
  %i.hy = icmp sgt i32 %i.gs, 0
  br i1 %i.hy, label %.lr.ph432.split, label %.split

.lr.ph432.split:                                  ; preds = %bb.ac
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !88
  %.fr509 = freeze ptr %i.ia                      ; 3 uses
  %i.ib = ptrtoint ptr %.fr509 to i64, !nosanitize !9 ; 3 uses
  %.not510 = icmp eq ptr %.fr509, null, !nosanitize !9
  br i1 %.not510, label %.split437, label %.lr.ph432.split.split.preheader, !prof !10

.lr.ph432.split.split.preheader:                  ; preds = %.lr.ph432.split
  %wide.trip.count614 = zext nneg i32 %i.gs to i64
  br label %.lr.ph432.split.split

.split:                                           ; preds = %._crit_edge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br i1 %.0.in, label %._crit_edge630, label %._crit_edge629

.lr.ph432.split.split:                            ; preds = %.lr.ph432.split.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph432.split.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [268 x i8], ptr %.fr509, i64 %indvars.iv ; 17 uses
  %i.id = mul nuw nsw i64 %indvars.iv, 268
  %i.ie = add i64 %i.id, %i.ib, !nosanitize !9    ; 2 uses
  %.not511 = icmp ult i64 %i.ie, %i.ib, !nosanitize !9
  br i1 %.not511, label %.split434.us, label %bb.ad, !prof !10, !nosanitize !9

.split434.us:                                     ; preds = %.lr.ph432.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @117, i64 %i.ib, i64 %i.ie) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %.lr.ph432.split.split
  %i.if = ptrtoint ptr %i.ic to i64, !nosanitize !9 ; 4 uses
  %i.ig = and i64 %i.if, 3, !nosanitize !9
  %i.ih = icmp eq i64 %i.ig, 0, !nosanitize !9
  br i1 %i.ih, label %bb.ae, label %.split437, !prof !11, !nosanitize !9

.split437:                                        ; preds = %bb.ad, %.lr.ph432.split
  %.us-phi438 = phi i64 [ 0, %.lr.ph432.split ], [ %i.if, %bb.ad ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @118, i64 %.us-phi438) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 264
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !133 ; 6 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph.preheader, label %._crit_edge

bb.af:                                            ; preds = %bb.aj
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @120, i64 5) #8, !nosanitize !9
  unreachable, !nosanitize !9

split:                                            ; preds = %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4
  %.sink = phi i64 [ 112, %.lr.ph.2 ], [ 168, %.lr.ph.3 ], [ 224, %.lr.ph.4 ], [ 56, %.lr.ph.1 ]
  %i.il = add i64 %.sink, %i.if, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @121, i64 %i.if, i64 %i.il) #8, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph.preheader:                                 ; preds = %bb.ae
  %.sroa.049.0.copyload = load <2 x float>, ptr %i.ic, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %i.im = fadd <2 x float> %i.hv, %.sroa.049.0.copyload
  %i.in = fadd float %i.hx, %.sroa.250.0.copyload
  store <2 x float> %i.im, ptr %i.ic, align 4, !tbaa !131
  store float %i.in, ptr %.sroa.250.0..sroa_idx, align 4, !tbaa !131
  %exitcond612.not = icmp eq i32 %i.ij, 1
end_hunk_0
