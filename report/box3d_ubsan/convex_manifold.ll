Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/convex_manifold?download=true
inline.NumInlined: 430
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3CollideHulls:bb.a

bb.df:                                            ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %18, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.zd = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %19, ptr %i.zd, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  store i64 0, ptr %20, align 8
  %i.ze = call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef %18, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %17, ptr noundef %20) ; 0 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !19
  %i.zh = icmp eq i32 %i.zg, 1
  br i1 %i.zh, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !20 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %18, i64 64, i1 false), !tbaa.struct !138
  store ptr %i.zj, ptr %i.zi, align 8, !tbaa !20
  %i.zk = icmp ne ptr %i.zj, null, !nosanitize !9
  %i.zl = ptrtoint ptr %i.zj to i64, !nosanitize !9 ; 2 uses
  %i.zm = and i64 %i.zl, 3, !nosanitize !9
  %i.zn = icmp eq i64 %i.zm, 0, !nosanitize !9
  %i.zo = and i1 %i.zk, %i.zn, !nosanitize !9
  br i1 %i.zo, label %bb.di, label %bb.dh, !prof !10, !nosanitize !9

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @202, i64 %i.zl) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.di:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.zj, ptr noundef nonnull align 4 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !80
  %i.zp = load i64, ptr %20, align 8
  store i64 %i.zp, ptr %5, align 4
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.dk

bb.dk:                                            ; preds = %bb.de, %bb.dj, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.dl

bb.dl:                                            ; preds = %bb.cw, %bb.cy, %bb.cx, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.critedge418

.critedge418:                                     ; preds = %bb.ct, %bb.cu, %.critedge418.critedge423, %.critedge418.critedge421, %.critedge418.critedge, %bb.cr, %bb.cs, %bb.dl, %.critedge, %.critedge409, %.critedge414, %bb.c
  ret void
}

declare i32 @b3FindHullSupportVertex(ptr noundef, <2 x float>, float) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceAContact(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, i32 %.16.val, i32 %.20.val, ptr noundef nonnull %4) unnamed_addr #0 !func_sanitize !81 {
bb.a:
  %5 = alloca [64 x %struct.b3ClipVertex], align 16 ; 5 uses
  %6 = alloca [64 x %struct.b3ClipVertex], align 16 ; 3 uses
  %7 = alloca [64 x %struct.b3LocalManifoldPoint], align 16 ; 22 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 10 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @223, i64 %i.b) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %b3GetHullFaces.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.i), !nosanitize !9 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1, !nosanitize !9
  br i1 %i.k, label %bb.e, label %bb.f, !prof !31, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @224, i64 %i.b, i64 %i.i) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !9
  %i.m = inttoptr i64 %i.l to ptr
  br label %b3GetHullFaces.exit

b3GetHullFaces.exit:                              ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.f ], [ null, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50
  %.fr383 = freeze i32 %i.o                       ; 2 uses
  %i.p = icmp eq i32 %.fr383, 0
  br i1 %i.p, label %b3GetHullEdges.exit, label %bb.g

bb.g:                                             ; preds = %b3GetHullFaces.exit
  %i.q = sext i32 %.fr383 to i64                  ; 2 uses
  %i.r = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.q), !nosanitize !9 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1, !nosanitize !9
  br i1 %i.s, label %bb.h, label %bb.i, !prof !31, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @280, i64 %i.b, i64 %i.q) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.t = extractvalue { i64, i1 } %i.r, 0, !nosanitize !9
  %i.u = inttoptr i64 %i.t to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %b3GetHullFaces.exit, %bb.i
  %.0.i140 = phi ptr [ %i.u, %bb.i ], [ null, %b3GetHullFaces.exit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %b3GetHullPlanes.exit, label %bb.j

bb.j:                                             ; preds = %b3GetHullEdges.exit
  %i.y = sext i32 %i.w to i64                     ; 2 uses
  %i.z = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.y), !nosanitize !9 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1, !nosanitize !9
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !31, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @206, i64 %i.b, i64 %i.y) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { i64, i1 } %i.z, 0, !nosanitize !9
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %b3GetHullEdges.exit, %bb.l
  %.0.i141 = phi ptr [ %i.ac, %bb.l ], [ null, %b3GetHullEdges.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30
  %.fr386 = freeze i32 %i.ae                      ; 2 uses
  %i.af = icmp eq i32 %.fr386, 0
  br i1 %i.af, label %b3GetHullPoints.exit, label %bb.m

bb.m:                                             ; preds = %b3GetHullPlanes.exit
  %i.ag = sext i32 %.fr386 to i64                 ; 2 uses
  %i.ah = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.ag), !nosanitize !9 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1, !nosanitize !9
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !31, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @205, i64 %i.b, i64 %i.ag) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.aj = extractvalue { i64, i1 } %i.ah, 0, !nosanitize !9
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullPlanes.exit, %bb.o
  %.0.i142 = phi ptr [ %i.ak, %bb.o ], [ null, %b3GetHullPlanes.exit ] ; 4 uses
  %i.al = sext i32 %.16.val to i64                ; 4 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %.0.i141, i64 %i.al ; 3 uses
  %i.an = shl nsw i64 %i.al, 4
  %i.ao = ptrtoint ptr %.0.i141 to i64, !nosanitize !9 ; 3 uses
  %i.ap = add i64 %i.an, %i.ao, !nosanitize !9    ; 3 uses
  %i.aq = icmp ne ptr %.0.i141, null, !nosanitize !9 ; 2 uses
  %i.ar = icmp eq i64 %i.ap, 0
  %i.as = xor i1 %i.aq, %i.ar
  %i.at = icmp uge i64 %i.ap, %i.ao, !nosanitize !9
  %i.au = icmp slt i32 %.16.val, 0                ; 2 uses
  %i.av = xor i1 %i.au, %i.at
  %i.aw = and i1 %i.as, %i.av, !nosanitize !9
  br i1 %i.aw, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @283, i64 %i.ao, i64 %i.ap) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %b3GetHullPoints.exit
  %i.ax = ptrtoint ptr %i.am to i64, !nosanitize !9 ; 2 uses
  %i.ay = and i64 %i.ax, 3, !nosanitize !9
  %i.az = icmp eq i64 %i.ay, 0, !nosanitize !9
  %i.ba = and i1 %i.aq, %i.az
  br i1 %i.ba, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @284, i64 %i.ax) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.am, align 4 ; 13 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.9.0.copyload = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 12 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.be = load <2 x float>, ptr %i.bd, align 4    ; 8 uses
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %.sroa.9.0.copyload, i64 0 ; 4 uses
  %i.bf = shufflevector <2 x float> %.sroa.024.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.024.0.copyload, i64 1
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.024.0.copyload, i64 0
  %i.bg = shufflevector <2 x float> %.sroa.024.0.copyload, <2 x float> %.sroa.9.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bh = fmul <2 x float> %i.bg, %i.bc
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bj = fmul <2 x float> %.sroa.024.0.copyload, %i.bi
  %i.bk = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bl = fmul <2 x float> %.sroa.024.0.copyload, %i.bk
  %i.bm = shufflevector <2 x float> %.sroa.9.0.copyload, <2 x float> %.sroa.024.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = fmul <2 x float> %i.bm, %i.bc
  %i.bo = fsub <2 x float> %i.bh, %i.bl
  %i.bp = fsub <2 x float> %i.bj, %i.bn
  %i.bq = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.br = fmul <2 x float> %i.bm, %i.bq
  %i.bs = fmul <2 x float> %i.bg, %i.bq
  %i.bt = fsub <2 x float> %i.bo, %i.br           ; 2 uses
  %i.bu = fsub <2 x float> %i.bp, %i.bs           ; 2 uses
  %i.bv = fmul <2 x float> %i.bk, %i.bt
  %i.bw = fmul <2 x float> %i.bi, %i.bu
  %i.bx = fsub <2 x float> %i.bv, %i.bw
  %foldExtExtBinop = fmul <2 x float> %i.bc, %i.bu
  %foldExtExtBinop84 = fmul <2 x float> %i.bc, %i.bt
  %shift = shufflevector <2 x float> %foldExtExtBinop84, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop86 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.by = extractelement <2 x float> %foldExtExtBinop86, i64 0
  %i.bz = fmul <2 x float> %i.bx, splat (float 2.000000e+00)
  %i.ca = fadd <2 x float> %.sroa.024.0.copyload, %i.bz
  %i.cb = fmul float %i.by, 2.000000e+00
  %i.cc = fadd float %.sroa.09.4.vec.extract13.i.i, %i.cb
  %i.cd = tail call i32 @b3FindIncidentFace(ptr noundef %2, <2 x float> %i.ca, float %i.cc, i32 noundef %.20.val) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.042.0.copyload = load <2 x float>, ptr %3, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.443.0.copyload = load float, ptr %.sroa.443.0..sroa_idx, align 8
  %i.ce = icmp ne ptr %2, null, !nosanitize !9
  %i.cf = ptrtoint ptr %2 to i64, !nosanitize !9  ; 8 uses
  %i.cg = and i64 %i.cf, 7, !nosanitize !9
  %i.ch = icmp eq i64 %i.cg, 0, !nosanitize !9
  %i.ci = and i1 %i.ce, %i.ch, !nosanitize !9
  br i1 %i.ci, label %bb.u, label %bb.t, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @223, i64 %i.cf) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !60 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %b3GetHullFaces.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = sext i32 %i.ck to i64                   ; 2 uses
  %i.cn = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cf, i64 %i.cm), !nosanitize !9 ; 2 uses
  %i.co = extractvalue { i64, i1 } %i.cn, 1, !nosanitize !9
  br i1 %i.co, label %bb.w, label %bb.x, !prof !31, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @224, i64 %i.cf, i64 %i.cm) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.cp = extractvalue { i64, i1 } %i.cn, 0, !nosanitize !9
  %i.cq = inttoptr i64 %i.cp to ptr
  br label %b3GetHullFaces.exit.i

b3GetHullFaces.exit.i:                            ; preds = %bb.u, %bb.x
  %.0.i.i = phi ptr [ %i.cq, %bb.x ], [ null, %bb.u ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !50
  %.fr132.i = freeze i32 %i.cs                    ; 2 uses
  %i.ct = icmp eq i32 %.fr132.i, 0
  br i1 %i.ct, label %b3GetHullEdges.exit.i, label %bb.y

bb.y:                                             ; preds = %b3GetHullFaces.exit.i
  %i.cu = sext i32 %.fr132.i to i64               ; 2 uses
  %i.cv = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cf, i64 %i.cu), !nosanitize !9 ; 2 uses
  %i.cw = extractvalue { i64, i1 } %i.cv, 1, !nosanitize !9
  br i1 %i.cw, label %bb.z, label %bb.aa, !prof !31, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @280, i64 %i.cf, i64 %i.cu) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %bb.y
  %i.cx = extractvalue { i64, i1 } %i.cv, 0, !nosanitize !9
  %i.cy = inttoptr i64 %i.cx to ptr
  br label %b3GetHullEdges.exit.i

b3GetHullEdges.exit.i:                            ; preds = %b3GetHullFaces.exit.i, %bb.aa
  %.0.i49.i = phi ptr [ %i.cy, %bb.aa ], [ null, %b3GetHullFaces.exit.i ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !30 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %b3GetHullPoints.exit.i, label %bb.ab

bb.ab:                                            ; preds = %b3GetHullEdges.exit.i
  %i.dc = sext i32 %i.da to i64                   ; 2 uses
  %i.dd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cf, i64 %i.dc), !nosanitize !9 ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 1, !nosanitize !9
  br i1 %i.de, label %bb.ac, label %bb.ad, !prof !31, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @205, i64 %i.cf, i64 %i.dc) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.df = extractvalue { i64, i1 } %i.dd, 0, !nosanitize !9
  %i.dg = inttoptr i64 %i.df to ptr
  br label %b3GetHullPoints.exit.i

b3GetHullPoints.exit.i:                           ; preds = %bb.ad, %b3GetHullEdges.exit.i
  %.0.i50.i = phi ptr [ %i.dg, %bb.ad ], [ null, %b3GetHullEdges.exit.i ] ; 3 uses
  %i.dh = sext i32 %i.cd to i64                   ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.dh ; 3 uses
  %i.dj = ptrtoint ptr %.0.i.i to i64, !nosanitize !9 ; 3 uses
  %i.dk = add i64 %i.dj, %i.dh, !nosanitize !9    ; 3 uses
  %i.dl = icmp ne ptr %.0.i.i, null, !nosanitize !9 ; 2 uses
  %i.dm = icmp eq i64 %i.dk, 0
  %i.dn = xor i1 %i.dl, %i.dm
  %i.do = icmp uge i64 %i.dk, %i.dj, !nosanitize !9
  %i.dp = icmp slt i32 %i.cd, 0
  %i.dq = xor i1 %i.dp, %i.do
  %i.dr = and i1 %i.dn, %i.dq, !nosanitize !9
  br i1 %i.dr, label %bb.af, label %bb.ae, !prof !10, !nosanitize !9

bb.ae:                                            ; preds = %b3GetHullPoints.exit.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @300, i64 %i.dj, i64 %i.dk) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %b3GetHullPoints.exit.i
  br i1 %i.dl, label %bb.ah, label %bb.ag, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.ds = ptrtoint ptr %i.di to i64, !nosanitize !9
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @301, i64 %i.ds) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %i.dt = load i8, ptr %i.di, align 1, !tbaa !62  ; 3 uses
  %foldExtExtBinop88 = fmul <2 x float> %i.be, %i.be
  %foldExtExtBinop88.a = fmul <2 x float> %i.bc, %i.bc ; 2 uses
  %8 = shufflevector <2 x float> %foldExtExtBinop88.a, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <2 x float> %foldExtExtBinop88.a, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %10 = shufflevector <2 x float> %foldExtExtBinop88, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fadd <2 x float> %9, %10
  %i.du = fmul <2 x float> %11, splat (float 2.000000e+00)
  %12 = fsub <2 x float> splat (float 1.000000e+00), %i.du
  %13 = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %14 = shufflevector <4 x float> %13, <4 x float> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %15 = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %16 = insertelement <4 x float> %15, float 1.000000e+00, i64 3
  %17 = fmul <4 x float> %14, %16                 ; 4 uses
  %18 = shufflevector <2 x float> %i.bc, <2 x float> %9, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %19 = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %20 = insertelement <4 x float> %19, float 1.000000e+00, i64 3
  %21 = fmul <4 x float> %18, %20                 ; 4 uses
  %foldExtExtBinop90 = fsub <4 x float> %21, %17
  %22 = extractelement <4 x float> %foldExtExtBinop90, i64 2
  %23 = fmul float %22, 2.000000e+00
  %24 = fadd <4 x float> %21, %17                 ; 4 uses
  %25 = extractelement <4 x float> %24, i64 0
  %26 = fmul float %25, 2.000000e+00
  %foldExtExtBinop92 = fsub <4 x float> %21, %17
  %27 = shufflevector <4 x float> %foldExtExtBinop92, <4 x float> %24, <2 x i32> <i32 1, i32 5>
  %28 = fmul <2 x float> %27, splat (float 2.000000e+00)
  %foldExtExtBinop94 = fsub <4 x float> %21, %17
  %29 = shufflevector <4 x float> %24, <4 x float> %foldExtExtBinop94, <2 x i32> <i32 2, i32 4>
  %30 = fmul <2 x float> %29, splat (float 2.000000e+00)
  %i.dv = extractelement <4 x float> %24, i64 3
  %i.dw = fmul float %i.dv, 2.000000e+00
  %i.dx = fsub float 1.000000e+00, %i.dw
  %i.dy = ptrtoint ptr %.0.i49.i to i64, !nosanitize !9 ; 6 uses
  %.not133.i = icmp eq ptr %.0.i49.i, null, !nosanitize !9
  %i.dz = ptrtoint ptr %.0.i50.i to i64           ; 3 uses
  %i.ea = icmp ne ptr %.0.i50.i, null
  %.sroa.1.12.vec.extract.i.i = extractelement <2 x float> %.sroa.9.0.copyload, i64 1
  %i.eb = ptrtoint ptr %5 to i64                  ; 3 uses
  br i1 %.not133.i, label %.split.us.i, label %.split.preheader.i, !prof !31

.split.preheader.i:                               ; preds = %bb.ah
  %i.ec = zext i8 %i.dt to i32
  br label %.split.i

.split.us.i:                                      ; preds = %bb.ah
  %i.ed = zext i8 %i.dt to i64
  %i.ee = shl nuw nsw i64 %i.ed, 2
  %i.ef = icmp eq i8 %i.dt, 0
  br i1 %i.ef, label %.split129.us.i, label %.split126.us.i, !prof !10, !nosanitize !9

.split.i:                                         ; preds = %bb.ao, %.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.split.preheader.i ], [ %indvars.iv.next.i, %bb.ao ] ; 4 uses
  %.0.i143 = phi i32 [ %i.ec, %.split.preheader.i ], [ %i.el, %bb.ao ] ; 2 uses
  %i.eg = zext nneg i32 %.0.i143 to i64           ; 2 uses
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = add i64 %i.eh, %i.dy, !nosanitize !9    ; 2 uses
  %.not134.i = icmp ult i64 %i.ei, %i.dy, !nosanitize !9
  br i1 %.not134.i, label %.split126.us.i, label %bb.ai, !prof !31, !nosanitize !9

.split126.us.i:                                   ; preds = %.split.i, %.split.us.i
  %.us-phi127.i = phi i64 [ %i.ee, %.split.us.i ], [ %i.ei, %.split.i ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @302, i64 %i.dy, i64 %.us-phi127.i) #10, !nosanitize !9
  unreachable, !nosanitize !9

.split129.us.i:                                   ; preds = %.split.us.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @303, i64 0) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %.split.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0.i49.i, i64 %i.eg
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !63  ; 3 uses
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  %i.em = zext i8 %i.ek to i64                    ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 2
  %i.eo = add i64 %i.en, %i.dy, !nosanitize !9    ; 2 uses
  %.not61.i = icmp ult i64 %i.eo, %i.dy, !nosanitize !9
  br i1 %.not61.i, label %bb.aj, label %bb.ak, !prof !31, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @304, i64 %i.dy, i64 %i.eo) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0.i49.i, i64 %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !53
  %i.es = zext i8 %i.er to i64                    ; 2 uses
  %i.et = mul nuw nsw i64 %i.es, 12
  %i.eu = add i64 %i.et, %i.dz, !nosanitize !9    ; 3 uses
  %i.ev = icmp eq i64 %i.eu, 0
  %i.ew = xor i1 %i.ea, %i.ev
  %i.ex = icmp uge i64 %i.eu, %i.dz, !nosanitize !9
  %i.ey = and i1 %i.ex, %i.ew, !nosanitize !9
  br i1 %i.ey, label %bb.am, label %bb.al, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @305, i64 %i.dz, i64 %i.eu) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %.0.i50.i, i64 %i.es ; 2 uses
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.ez, align 4 ; 4 uses
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 4 ; 2 uses
  %i.fa = call i32 @b3MakeFeaturePair(i32 noundef 1, i32 noundef %.0.i143, i32 noundef 1, i32 noundef %i.el) #11
  %i.fb = mul nuw nsw i64 %indvars.iv.i, 20
  %i.fc = add i64 %i.fb, %i.eb, !nosanitize !9    ; 2 uses
  %.not62.i = icmp ult i64 %i.fc, %i.eb, !nosanitize !9
  br i1 %.not62.i, label %bb.an, label %bb.ao, !prof !31, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @306, i64 %i.eb, i64 %i.fc) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw [20 x i8], ptr %5, i64 %indvars.iv.i ; 4 uses
  %i.fe = fmul float %i.dx, %.sroa.213.0.copyload.i
  %.sroa.0.0.vec.extract.i.i144 = extractelement <2 x float> %.sroa.012.0.copyload.i, i64 0
  %i.ff = fmul float %23, %.sroa.0.0.vec.extract.i.i144
  %i.fg = extractelement <2 x float> %.sroa.012.0.copyload.i, i64 1
  %i.fh = fmul float %26, %i.fg
  %i.fi = fadd float %i.ff, %i.fh
  %i.fj = fadd float %i.fe, %i.fi
  %i.fk = fadd float %.sroa.443.0.copyload, %i.fj ; 2 uses
  %i.fl = fmul float %.sroa.09.4.vec.extract13.i.i, %i.fk
  %i.fm = insertelement <2 x float> poison, float %.sroa.213.0.copyload.i, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fmul <2 x float> %30, %i.fn
  %i.fp = shufflevector <2 x float> %.sroa.012.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = fmul <2 x float> %28, %i.fp
  %i.fr = fmul <2 x float> %12, %.sroa.012.0.copyload.i
  %i.fs = fadd <2 x float> %i.fq, %i.fr
  %i.ft = fadd <2 x float> %i.fo, %i.fs
  %i.fu = fadd <2 x float> %.sroa.042.0.copyload, %i.ft ; 3 uses
  %foldExtExtBinop93 = fmul <2 x float> %.sroa.024.0.copyload, %i.fu
  %foldExtExtBinop95 = fmul <2 x float> %.sroa.024.0.copyload, %i.fu
  %shift97 = shufflevector <2 x float> %foldExtExtBinop95, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop98 = fadd <2 x float> %foldExtExtBinop93, %shift97
  %i.fv = extractelement <2 x float> %foldExtExtBinop98, i64 0
  %i.fw = fadd float %i.fl, %i.fv
  %i.fx = fsub float %i.fw, %.sroa.1.12.vec.extract.i.i
  store <2 x float> %i.fu, ptr %i.fd, align 4
  %.sroa.4.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store float %i.fk, ptr %.sroa.4.0..sroa_idx55.i, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store float %i.fx, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i32 %i.fa, ptr %.sroa.6.0..sroa_idx.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fy = load i8, ptr %i.di, align 1, !tbaa !62
  %i.fz = icmp ne i8 %i.ek, %i.fy
  %i.ga = icmp samesign ult i64 %indvars.iv.i, 63
  %i.gb = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %i.gb, label %.split.i, label %b3BuildPolygon.exit, !llvm.loop !139

b3BuildPolygon.exit:                              ; preds = %bb.ao
  %i.gc = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.gd = getelementptr inbounds i8, ptr %.0.i, i64 %i.al ; 3 uses
  %i.ge = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 3 uses
  %i.gf = add i64 %i.ge, %i.al, !nosanitize !9    ; 3 uses
  %i.gg = icmp ne ptr %.0.i, null, !nosanitize !9 ; 2 uses
  %i.gh = icmp eq i64 %i.gf, 0
  %i.gi = xor i1 %i.gg, %i.gh
  %i.gj = icmp uge i64 %i.gf, %i.ge, !nosanitize !9
  %i.gk = xor i1 %i.au, %i.gj
  %i.gl = and i1 %i.gi, %i.gk, !nosanitize !9
  br i1 %i.gl, label %bb.aq, label %bb.ap, !prof !10, !nosanitize !9

bb.ap:                                            ; preds = %b3BuildPolygon.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @285, i64 %i.ge, i64 %i.gf) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.aq:                                            ; preds = %b3BuildPolygon.exit
  br i1 %i.gg, label %bb.as, label %bb.ar, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  %i.gm = ptrtoint ptr %i.gd to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @286, i64 %i.gm) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.aq
  %i.gn = load i8, ptr %i.gd, align 1, !tbaa !62  ; 4 uses
  %i.go = ptrtoint ptr %.0.i140 to i64, !nosanitize !9 ; 10 uses
  %.not384 = icmp eq ptr %.0.i140, null, !nosanitize !9
  %i.gp = ptrtoint ptr %.0.i142 to i64            ; 7 uses
  br i1 %.not384, label %.split.us, label %.split, !prof !31

.split.us:                                        ; preds = %bb.as
  %i.gq = zext i8 %i.gn to i64
  %i.gr = shl nuw nsw i64 %i.gq, 2
  %i.gs = icmp eq i8 %i.gn, 0
  br i1 %i.gs, label %.split337.us, label %.split334.us, !prof !10, !nosanitize !9

.split:                                           ; preds = %bb.as
  %.not387 = icmp eq ptr %.0.i142, null
  br i1 %.not387, label %.split.split.us, label %.split.split, !prof !31

.split.split.us:                                  ; preds = %.split
  %i.gt = zext i8 %i.gn to i64                    ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.0.i140, i64 %i.gt ; 2 uses
  %i.gv = shl nuw nsw i64 %i.gt, 2
  %i.gw = add i64 %i.gv, %i.go, !nosanitize !9    ; 2 uses
  %.not388 = icmp ult i64 %i.gw, %i.go, !nosanitize !9
  br i1 %.not388, label %.split334.us, label %bb.at, !prof !31, !nosanitize !9

bb.at:                                            ; preds = %.split.split.us
  %i.gx = load i8, ptr %i.gu, align 1, !tbaa !63
  %i.gy = zext i8 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 2
  %i.ha = add i64 %i.gz, %i.go, !nosanitize !9    ; 2 uses
  %.not50.us = icmp ult i64 %i.ha, %i.go, !nosanitize !9
  br i1 %.not50.us, label %.split351.us, label %bb.au, !prof !31, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !53  ; 2 uses
  %i.hd = zext i8 %i.hc to i64
  %i.he = mul nuw nsw i64 %i.hd, 12               ; 2 uses
  %i.hf = icmp eq i8 %i.hc, 0
  %i.hg = icmp uge i64 %i.he, %i.gp, !nosanitize !9
  %i.hh = and i1 %i.hg, %i.hf, !nosanitize !9
  br i1 %i.hh, label %.split362, label %.split358.us, !prof !10, !nosanitize !9

.split.split:                                     ; preds = %.split, %bb.bh
  %.047 = phi ptr [ %.0, %bb.bh ], [ %6, %.split ] ; 4 uses
  %.0 = phi ptr [ %.047, %bb.bh ], [ %5, %.split ] ; 2 uses
  %.0113.in = phi i8 [ %i.hm, %bb.bh ], [ %i.gn, %.split ] ; 2 uses
  %.0112 = phi i32 [ %i.ji, %bb.bh ], [ %i.gc, %.split ]
  %.0113 = zext i8 %.0113.in to i32
  %i.hi = zext i8 %.0113.in to i64                ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.0.i140, i64 %i.hi ; 2 uses
  %i.hk = shl nuw nsw i64 %i.hi, 2
  %i.hl = add i64 %i.hk, %i.go, !nosanitize !9    ; 2 uses
  %.not389 = icmp ult i64 %i.hl, %i.go, !nosanitize !9
  br i1 %.not389, label %.split334.us, label %bb.av, !prof !31, !nosanitize !9

.split334.us:                                     ; preds = %.split.split, %.split.split.us, %.split.us
  %.us-phi335 = phi i64 [ %i.gr, %.split.us ], [ %i.gw, %.split.split.us ], [ %i.hl, %.split.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @287, i64 %i.go, i64 %.us-phi335) #10, !nosanitize !9
  unreachable, !nosanitize !9

.split337.us:                                     ; preds = %.split.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @288, i64 0) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %.split.split
  %i.hm = load i8, ptr %i.hj, align 1, !tbaa !63  ; 3 uses
  %i.hn = zext i8 %i.hm to i64                    ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.0.i140, i64 %i.hn
  %i.hp = shl nuw nsw i64 %i.hn, 2
  %i.hq = add i64 %i.hp, %i.go, !nosanitize !9    ; 2 uses
  %.not50 = icmp ult i64 %i.hq, %i.go, !nosanitize !9
  br i1 %.not50, label %.split351.us, label %bb.aw, !prof !31, !nosanitize !9

.split351.us:                                     ; preds = %bb.av, %bb.at
  %.us-phi352 = phi i64 [ %i.ha, %bb.at ], [ %i.hq, %bb.av ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @289, i64 %i.go, i64 %.us-phi352) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !53
  %i.ht = zext i8 %i.hs to i64                    ; 2 uses
  %i.hu = getelementptr inbounds nuw [12 x i8], ptr %.0.i142, i64 %i.ht ; 3 uses
  %i.hv = mul nuw nsw i64 %i.ht, 12
  %i.hw = add i64 %i.hv, %i.gp, !nosanitize !9    ; 2 uses
  %.not390 = icmp ult i64 %i.hw, %i.gp, !nosanitize !9
  br i1 %.not390, label %.split358.us, label %bb.ax, !prof !31, !nosanitize !9

.split358.us:                                     ; preds = %bb.aw, %bb.au
  %.us-phi360 = phi i64 [ %i.he, %bb.au ], [ %i.hw, %bb.aw ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @290, i64 %i.gp, i64 %.us-phi360) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  %i.hx = ptrtoint ptr %i.hu to i64, !nosanitize !9 ; 2 uses
  %i.hy = and i64 %i.hx, 3, !nosanitize !9
  %i.hz = icmp eq i64 %i.hy, 0, !nosanitize !9
  br i1 %i.hz, label %bb.ay, label %.split362, !prof !10, !nosanitize !9

.split362:                                        ; preds = %bb.ax, %bb.au
  %.us-phi363 = phi i64 [ 0, %bb.au ], [ %i.hx, %bb.ax ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @291, i64 %.us-phi363) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.hu, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !53
  %i.ic = zext i8 %i.ib to i64                    ; 2 uses
  %i.id = getelementptr inbounds nuw [12 x i8], ptr %.0.i142, i64 %i.ic ; 3 uses
  %i.ie = mul nuw nsw i64 %i.ic, 12
  %i.if = add i64 %i.ie, %i.gp, !nosanitize !9    ; 2 uses
  %.not51 = icmp ult i64 %i.if, %i.gp, !nosanitize !9
  br i1 %.not51, label %bb.az, label %bb.ba, !prof !31, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @292, i64 %i.gp, i64 %i.if) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ba:                                            ; preds = %bb.ay
  %i.ig = ptrtoint ptr %i.id to i64, !nosanitize !9 ; 2 uses
  %i.ih = and i64 %i.ig, 3, !nosanitize !9
  %i.ii = icmp eq i64 %i.ih, 0, !nosanitize !9
  br i1 %i.ii, label %bb.bc, label %bb.bb, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @293, i64 %i.ig) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bc:                                            ; preds = %bb.ba
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.id, align 4
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.sroa.456.0.copyload = load float, ptr %.sroa.456.0..sroa_idx, align 4, !tbaa !12
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.057.0.copyload, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.057.0.copyload, i64 1
  %i.ij = fsub <2 x float> %.sroa.055.0.copyload, %.sroa.057.0.copyload ; 3 uses
  %i.ik = fsub float %.sroa.456.0.copyload, %.sroa.5.0.copyload ; 3 uses
  %i.il = fmul <2 x float> %i.ij, %i.ij           ; 2 uses
  %shift100 = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop101 = fadd <2 x float> %i.il, %shift100
  %i.im = extractelement <2 x float> %foldExtExtBinop101, i64 0
  %i.in = fmul float %i.ik, %i.ik
  %i.io = fadd float %i.in, %i.im                 ; 2 uses
  %i.ip = fcmp ogt float %i.io, f0x057A0000
  br i1 %i.ip, label %bb.bd, label %b3Normalize.exit

bb.bd:                                            ; preds = %bb.bc
  %sqrt = call float @llvm.sqrt.f32(float %i.io)
  %i.iq = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ir = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.ij, %i.is
  %i.iu = fmul float %i.ik, %i.iq
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.bc, %bb.bd
  %.sroa.07.0.i = phi <2 x float> [ %i.it, %bb.bd ], [ zeroinitializer, %bb.bc ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.iu, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 2 uses
  %shift103 = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fmul <2 x float> %.sroa.9.0.copyload, %shift103
  %i.iv = extractelement <2 x float> %foldExtExtBinop104, i64 0
  %i.iw = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.5.0.i
  %i.ix = fsub float %i.iv, %i.iw                 ; 2 uses
  %.sroa.016.0.vec.insert.i = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.iy = fmul float %.sroa.2.12.vec.extract.i, %.sroa.5.0.i
  %foldExtExtBinop106 = fmul <2 x float> %.sroa.9.0.copyload, %.sroa.07.0.i
  %i.iz = extractelement <2 x float> %foldExtExtBinop106, i64 0
  %i.ja = fsub float %i.iy, %i.iz                 ; 2 uses
  %.sroa.016.4.vec.insert.i = insertelement <2 x float> %.sroa.016.0.vec.insert.i, float %i.ja, i64 1
  %i.jb = fmul <2 x float> %i.bf, %.sroa.07.0.i   ; 2 uses
  %shift108 = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop109 = fsub <2 x float> %i.jb, %shift108 ; 2 uses
  %i.jc = extractelement <2 x float> %foldExtExtBinop109, i64 0
  %i.jd = fmul float %.sroa.0.0.vec.extract.i, %i.ix
  %i.je = fmul float %.sroa.0.4.vec.extract.i, %i.ja
  %i.jf = fadd float %i.jd, %i.je
  %i.jg = fmul float %.sroa.5.0.copyload, %i.jc
  %i.jh = fadd float %i.jg, %i.jf
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %foldExtExtBinop109, float %i.jh, i64 1
  %i.ji = call i32 @b3ClipPolygon(ptr noundef %.047, ptr noundef %.0, i32 noundef %.0112, <2 x float> %.sroa.016.4.vec.insert.i, <2 x float> %.sroa.211.12.vec.insert.i, i32 noundef %.0113, <2 x float> %.sroa.024.0.copyload, <2 x float> %.sroa.9.0.copyload) #11 ; 5 uses
  %i.jj = icmp sgt i32 %i.ji, 2
  br i1 %i.jj, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %b3Normalize.exit
  %i.jk = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.jl = and i64 %i.jk, 3, !nosanitize !9
  %i.jm = icmp eq i64 %i.jl, 0, !nosanitize !9
  br i1 %i.jm, label %bb.bg, label %bb.bf, !prof !10, !nosanitize !9

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @294, i64 %i.jk) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bg:                                            ; preds = %bb.be
  store i64 0, ptr %4, align 4
  br label %bb.ej

bb.bh:                                            ; preds = %b3Normalize.exit
  %i.jn = load i8, ptr %i.gd, align 1, !tbaa !62
  %.not135 = icmp eq i8 %i.hm, %i.jn
  br i1 %.not135, label %bb.bi, label %.split.split, !llvm.loop !140

bb.bi:                                            ; preds = %bb.bh
  %i.jo = ptrtoint ptr %.047 to i64               ; 3 uses
  %i.jp = call i32 @llvm.umin.i32(i32 %i.ji, i32 64) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.jq = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.jr = and i64 %i.jq, 7, !nosanitize !9
  %i.js = icmp eq i64 %i.jr, 0, !nosanitize !9
  br i1 %i.js, label %.split365.split.preheader, label %bb.bj, !prof !10, !nosanitize !9

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @295, i64 %i.jq) #10, !nosanitize !9
  unreachable, !nosanitize !9

.split365.split.preheader:                        ; preds = %bb.bi
  store <2 x float> %.sroa.024.0.copyload, ptr %0, align 8
  %.sroa.9.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store float %.sroa.09.4.vec.extract13.i.i, ptr %.sroa.9.0..sroa_idx30, align 8, !tbaa !12
  %i.jt = ptrtoint ptr %7 to i64                  ; 40 uses
  %wide.trip.count = zext nneg i32 %i.jp to i64   ; 2 uses
  br label %.split365.split

bb.bk:                                            ; preds = %bb.bm
  %i.ju = call float @b3GetLengthUnitsPerMeter() #11
  %i.jv = fmul float %i.ju, 5.000000e-03
  %i.jw = fmul float %i.jv, 4.000000e+00
  %i.jx = fcmp ult float %i.ku, %i.jw             ; 2 uses
  br i1 %i.jx, label %bb.bq, label %bb.bn

.split365.split:                                  ; preds = %.split365.split.preheader, %bb.bm
  %indvars.iv = phi i64 [ 0, %.split365.split.preheader ], [ %indvars.iv.next, %bb.bm ] ; 5 uses
  %.0110366 = phi float [ f0x7F7FFFFF, %.split365.split.preheader ], [ %i.ku, %bb.bm ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [20 x i8], ptr %.047, i64 %indvars.iv ; 4 uses
  %i.jz = mul nuw nsw i64 %indvars.iv, 20
  %i.ka = add i64 %i.jz, %i.jo, !nosanitize !9    ; 2 uses
  %.not392 = icmp ult i64 %i.ka, %i.jo, !nosanitize !9
  br i1 %.not392, label %.split369.us, label %bb.bl, !prof !31, !nosanitize !9

.split369.us:                                     ; preds = %.split365.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @296, i64 %i.jo, i64 %i.ka) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bl:                                            ; preds = %.split365.split
  %i.kb = mul nuw nsw i64 %indvars.iv, 24
  %i.kc = add i64 %i.kb, %i.jt, !nosanitize !9    ; 2 uses
  %.not139 = icmp ult i64 %i.kc, %i.jt, !nosanitize !9
  br i1 %.not139, label %.split372.us, label %bb.bm, !prof !31, !nosanitize !9

.split372.us:                                     ; preds = %bb.bl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @297, i64 %i.jt, i64 %i.kc) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, i8 0, i64 24, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 12 ; 3 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !49
  %i.kg = fmul float %i.kf, 5.000000e-01          ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.jy, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.kh = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x float> %.sroa.024.0.copyload, %i.ki
  %i.kk = fsub <2 x float> %.sroa.03.0.copyload, %i.kj
  %i.kl = fmul float %.sroa.09.4.vec.extract13.i.i, %i.kg
  %i.km = fsub float %.sroa.24.0.copyload, %i.kl
  store <2 x float> %i.kk, ptr %i.kd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store float %i.km, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %i.ko = load float, ptr %i.ke, align 4, !tbaa !49
  store float %i.ko, ptr %i.kn, align 4, !tbaa !23
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kr = load i32, ptr %i.kq, align 4
  store i32 %i.kr, ptr %i.kp, align 8
  %i.ks = load float, ptr %i.ke, align 4, !tbaa !49 ; 2 uses
  %i.kt = fcmp olt float %.0110366, %i.ks
  %i.ku = select i1 %i.kt, float %.0110366, float %i.ks ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bk, label %.split365.split, !llvm.loop !141

bb.bn:                                            ; preds = %bb.bk
  %i.kv = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.kw = and i64 %i.kv, 3, !nosanitize !9
  %i.kx = icmp eq i64 %i.kw, 0, !nosanitize !9
  br i1 %i.kx, label %bb.bp, label %bb.bo, !prof !10, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @298, i64 %i.kv) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bp:                                            ; preds = %bb.bn
  store i64 0, ptr %4, align 4
  br label %bb.ei

bb.bq:                                            ; preds = %bb.bk
  %i.ky = icmp ult i32 %i.ji, 5
  br i1 %i.ky, label %.lr.ph552.split.i, label %bb.cc

.lr.ph552.split.i:                                ; preds = %bb.bq
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !20 ; 3 uses
  %i.lb = icmp ne ptr %i.la, null, !nosanitize !9
  %i.lc = ptrtoint ptr %i.la to i64, !nosanitize !9 ; 2 uses
  %i.ld = and i64 %i.lc, 3, !nosanitize !9
  %i.le = icmp eq i64 %i.ld, 0, !nosanitize !9
  %i.lf = and i1 %i.lb, %i.le
  br i1 %i.lf, label %.lr.ph552.split.split.i.1, label %bb.bs, !prof !10, !nosanitize !9

bb.br:                                            ; preds = %.lr.ph552.split.split.i.3, %.lr.ph552.split.split.i.2, %.lr.ph552.split.split.i.1
  %.lcssa150 = phi i64 [ %i.mm, %.lr.ph552.split.split.i.3 ], [ %i.li, %.lr.ph552.split.split.i.1 ], [ %i.lx, %.lr.ph552.split.split.i.2 ]
  %.lcssa = phi i64 [ %i.mn, %.lr.ph552.split.split.i.3 ], [ %i.lj, %.lr.ph552.split.split.i.1 ], [ %i.ly, %.lr.ph552.split.split.i.2 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @307, i64 %.lcssa150, i64 %.lcssa) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bs:                                            ; preds = %bb.bz, %bb.bw, %bb.bu, %.lr.ph552.split.i
  %.lcssa154 = phi i64 [ %i.lc, %.lr.ph552.split.i ], [ %i.lp, %bb.bu ], [ %i.me, %bb.bw ], [ %i.mt, %bb.bz ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @308, i64 %.lcssa154) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bt:                                            ; preds = %bb.ca, %bb.bx, %bb.bv
  %.lcssa157 = phi i64 [ %i.mx, %bb.ca ], [ %i.lt, %bb.bv ], [ %i.mi, %bb.bx ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @309, i64 %i.jt, i64 %.lcssa157) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph552.split.split.i.1:                        ; preds = %.lr.ph552.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.la, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !80
  %i.lg = load ptr, ptr %i.kz, align 8, !tbaa !20 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24 ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64, !nosanitize !9 ; 2 uses
  %i.lj = add i64 %i.li, 24, !nosanitize !9       ; 2 uses
  %i.lk = icmp ne ptr %i.lg, null, !nosanitize !9 ; 2 uses
  %i.ll = icmp ne i64 %i.lj, 0
  %i.lm = icmp ult ptr %i.lg, inttoptr (i64 -24 to ptr)
  %i.ln = and i1 %i.ll, %i.lm
  %i.lo = and i1 %i.ln, %i.lk
  br i1 %i.lo, label %bb.bu, label %bb.br, !prof !10, !nosanitize !9

bb.bu:                                            ; preds = %.lr.ph552.split.split.i.1
  %i.lp = ptrtoint ptr %i.lh to i64, !nosanitize !9 ; 2 uses
  %i.lq = and i64 %i.lp, 3, !nosanitize !9
  %i.lr = icmp eq i64 %i.lq, 0, !nosanitize !9
  %i.ls = and i1 %i.lk, %i.lr
  br i1 %i.ls, label %bb.bv, label %bb.bs, !prof !10, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  %i.lt = add i64 %i.jt, 24, !nosanitize !9
  %.not461.i.1 = icmp ugt ptr %7, inttoptr (i64 -25 to ptr)
  br i1 %.not461.i.1, label %bb.bt, label %.lr.ph552.split.split.i.2, !prof !31, !nosanitize !9

.lr.ph552.split.split.i.2:                        ; preds = %bb.bv
  %i.lu = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lh, ptr noundef nonnull align 8 dereferenceable(24) %i.lu, i64 24, i1 false), !tbaa.struct !80
  %i.lv = load ptr, ptr %i.kz, align 8, !tbaa !20 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 48 ; 2 uses
  %i.lx = ptrtoint ptr %i.lv to i64, !nosanitize !9 ; 2 uses
  %i.ly = add i64 %i.lx, 48, !nosanitize !9       ; 2 uses
  %i.lz = icmp ne ptr %i.lv, null, !nosanitize !9 ; 2 uses
  %i.ma = icmp ne i64 %i.ly, 0
  %i.mb = icmp ult ptr %i.lv, inttoptr (i64 -48 to ptr)
  %i.mc = and i1 %i.ma, %i.mb
  %i.md = and i1 %i.mc, %i.lz
  br i1 %i.md, label %bb.bw, label %bb.br, !prof !10, !nosanitize !9

bb.bw:                                            ; preds = %.lr.ph552.split.split.i.2
  %i.me = ptrtoint ptr %i.lw to i64, !nosanitize !9 ; 2 uses
  %i.mf = and i64 %i.me, 3, !nosanitize !9
  %i.mg = icmp eq i64 %i.mf, 0, !nosanitize !9
  %i.mh = and i1 %i.lz, %i.mg
  br i1 %i.mh, label %bb.bx, label %bb.bs, !prof !10, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  %i.mi = add i64 %i.jt, 48, !nosanitize !9
  %.not461.i.2 = icmp ugt ptr %7, inttoptr (i64 -49 to ptr)
  br i1 %.not461.i.2, label %bb.bt, label %bb.by, !prof !31, !nosanitize !9

bb.by:                                            ; preds = %bb.bx
  %i.mj = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lw, ptr noundef nonnull align 16 dereferenceable(24) %i.mj, i64 24, i1 false), !tbaa.struct !80
  %exitcond624.not.i.2 = icmp eq i32 %i.ji, 3
  br i1 %exitcond624.not.i.2, label %._crit_edge553.i, label %.lr.ph552.split.split.i.3

.lr.ph552.split.split.i.3:                        ; preds = %bb.by
  %i.mk = load ptr, ptr %i.kz, align 8, !tbaa !20 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 72 ; 2 uses
  %i.mm = ptrtoint ptr %i.mk to i64, !nosanitize !9 ; 2 uses
  %i.mn = add i64 %i.mm, 72, !nosanitize !9       ; 2 uses
  %i.mo = icmp ne ptr %i.mk, null, !nosanitize !9 ; 2 uses
  %i.mp = icmp ne i64 %i.mn, 0
  %i.mq = icmp ult ptr %i.mk, inttoptr (i64 -72 to ptr)
  %i.mr = and i1 %i.mp, %i.mq
  %i.ms = and i1 %i.mr, %i.mo
  br i1 %i.ms, label %bb.bz, label %bb.br, !prof !10, !nosanitize !9

bb.bz:                                            ; preds = %.lr.ph552.split.split.i.3
  %i.mt = ptrtoint ptr %i.ml to i64, !nosanitize !9 ; 2 uses
  %i.mu = and i64 %i.mt, 3, !nosanitize !9
  %i.mv = icmp eq i64 %i.mu, 0, !nosanitize !9
  %i.mw = and i1 %i.mo, %i.mv
  br i1 %i.mw, label %bb.ca, label %bb.bs, !prof !10, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  %i.mx = add i64 %i.jt, 72, !nosanitize !9
  %.not461.i.3 = icmp ugt ptr %7, inttoptr (i64 -73 to ptr)
  br i1 %.not461.i.3, label %bb.bt, label %bb.cb, !prof !31, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  %i.my = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ml, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 24, i1 false), !tbaa.struct !80
  br label %._crit_edge553.i

._crit_edge553.i:                                 ; preds = %bb.cb, %bb.by
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.jp, ptr %i.mz, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

bb.cc:                                            ; preds = %bb.bq
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8 ; 10 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx30, align 8, !tbaa !12 ; 8 uses
  %i.na = call float @b3GetLengthUnitsPerMeter() #11
  %i.nb = fmul float %i.na, 5.000000e-03
  %i.nc = fmul float %i.nb, 4.000000e+00          ; 3 uses
  %i.nd = fmul float %i.nc, %i.nc                 ; 3 uses
  %i.ne = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.036.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 4 uses
  %i.nf = call float @llvm.fabs.f32(float %.sroa.036.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.nf, 5.000000e-01
  br i1 %or.cond.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ng = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  %i.nh = fmul float %i.ng, 6.700000e-01
  %i.ni = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.nj = fsub float %i.nh, %i.ni
  %.sroa.033.i.i.0.vec.insert = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.nk = fmul nnan float %.sroa.036.0.vec.extract.i.i, -6.700000e-01
  %.sroa.033.i.i.4.vec.insert = insertelement <2 x float> %.sroa.033.i.i.0.vec.insert, float %i.nk, i64 1
  %i.nl = fmul nnan float %.sroa.036.0.vec.extract.i.i, 4.200000e-01
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.nm = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %i.nn = call float @llvm.fabs.f32(float %i.nm)
  %or.cond28.i.i = fcmp ogt float %i.nn, 5.000000e-01
  br i1 %or.cond28.i.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.no = fmul nnan float %i.nm, 6.700000e-01
  %.sroa.030.i.i.0.vec.insert = insertelement <2 x float> poison, float %i.no, i64 0
  %i.np = fmul float %.sroa.036.0.vec.extract.i.i, -6.700000e-01
  %i.nq = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.nr = fsub float %i.np, %i.nq
  %.sroa.030.i.i.4.vec.insert = insertelement <2 x float> %.sroa.030.i.i.0.vec.insert, float %i.nr, i64 1
  %i.ns = fmul nnan float %i.nm, 4.200000e-01
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.nt = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.nu = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nv = fmul <2 x float> %i.nu, <float 6.700000e-01, float -4.200000e-01>
  %i.nw = fmul <2 x float> %.sroa.0244.0.copyload.i, <float 6.700000e-01, float 4.200000e-01> ; 2 uses
  %shift111 = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop112 = fsub <2 x float> %shift111, %i.nw
end_hunk_0
begin_hunk_1_@b3BuildFaceAContact:bb.a

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @326, i64 %i.vb) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph548.i:                                      ; preds = %bb.du
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.us, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !12 ; 3 uses
  %i.ve = fcmp olt float %.1314.i, 0.000000e+00
  %i.vf = select i1 %i.ve, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.ut, align 4 ; 5 uses
  %i.vg = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.vh = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vi = fsub <2 x float> %i.vg, %i.vh           ; 3 uses
  %i.vj = shufflevector <2 x float> %.sroa.0102.0.copyload.i, <2 x float> %.sroa.0193.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.vk = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vl = insertelement <2 x float> %.sroa.0193.0.copyload.i, float %.sroa.6105.0.copyload.i, i64 0
  %i.vm = insertelement <2 x float> %.sroa.0102.0.copyload.i, float %.sroa.6153.0.copyload.i, i64 0 ; 2 uses
  %i.vn = fsub <2 x float> %i.vj, %i.vk           ; 2 uses
  %i.vo = fsub <2 x float> %i.vl, %i.vm           ; 2 uses
  %i.vp = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %smax617.i = call i32 @llvm.smax.i32(i32 %i.un, i32 1)
  %wide.trip.count618.i = zext nneg i32 %smax617.i to i64
  %i.vq = insertelement <2 x float> poison, float %i.vf, i64 0
  %i.vr = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vs = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.vt = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vu = insertelement <2 x float> %i.vi, float %i.vp, i64 1
  %i.vv = shufflevector <2 x float> %i.vo, <2 x float> %i.vi, <2 x i32> <i32 0, i32 3>
  %i.vw = insertelement <2 x float> %i.vn, float %i.vp, i64 1
  br label %bb.dw

._crit_edge549.i:                                 ; preds = %bb.dy
  %.not345.i = icmp eq i32 %.8.i, -1
  br i1 %.not345.i, label %b3ReduceManifoldPoints.exit, label %bb.dz

bb.dw:                                            ; preds = %bb.dy, %.lr.ph548.i
  %indvars.iv614.i = phi i64 [ 0, %.lr.ph548.i ], [ %indvars.iv.next615.i, %bb.dy ] ; 4 uses
  %.7546.i = phi i32 [ -1, %.lr.ph548.i ], [ %.8.i, %bb.dy ]
  %.7309545.i = phi float [ %i.nd, %.lr.ph548.i ], [ %.8310.i, %bb.dy ] ; 2 uses
  %i.vx = mul nuw nsw i64 %indvars.iv614.i, 24
  %i.vy = add i64 %i.vx, %i.jt, !nosanitize !9    ; 2 uses
  %.not458.i = icmp ult i64 %i.vy, %i.jt, !nosanitize !9
  br i1 %.not458.i, label %bb.dx, label %bb.dy, !prof !31, !nosanitize !9

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @327, i64 %i.jt, i64 %i.vy) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dy:                                            ; preds = %bb.dw
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv614.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.vz, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i168, align 8, !tbaa !12 ; 4 uses
  %i.wa = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.wb = insertelement <2 x float> %i.wa, float %.sroa.6.0.copyload.i, i64 1
  %i.wc = fsub <2 x float> %i.wb, %i.su           ; 2 uses
  %i.wd = insertelement <2 x float> %i.wa, float %.sroa.6.0.copyload.i, i64 0
  %i.we = fsub <2 x float> %i.wd, %i.ss           ; 2 uses
  %i.wf = fmul <2 x float> %i.sv, %i.wc
  %i.wg = fmul <2 x float> %i.sw, %i.we
  %i.wh = fsub <2 x float> %i.wf, %i.wg
  %shift141 = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop142 = fmul <2 x float> %i.sw, %shift141
  %i.wi = extractelement <2 x float> %foldExtExtBinop142, i64 0
  %i.wj = extractelement <2 x float> %i.wc, i64 0
  %i.wk = fmul float %i.sx, %i.wj
  %i.wl = fsub float %i.wi, %i.wk
  %i.wm = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.wh ; 2 uses
  %shift144 = shufflevector <2 x float> %i.wm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop145 = fadd <2 x float> %i.wm, %shift144
  %i.wn = extractelement <2 x float> %foldExtExtBinop145, i64 0
  %i.wo = fmul float %.sroa.10.0.copyload.i, %i.wl
  %i.wp = fadd float %i.wo, %i.wn
  %i.wq = fmul float %i.vf, %i.wp                 ; 2 uses
  %i.wr = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = fsub <2 x float> %i.wr, %i.vh           ; 3 uses
  %i.wt = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wu = fsub <2 x float> %i.wt, %i.vk           ; 2 uses
  %i.wv = insertelement <2 x float> %.sroa.093.0.copyload.i, float %.sroa.6.0.copyload.i, i64 0
  %i.ww = fsub <2 x float> %i.wv, %i.vm           ; 2 uses
  %i.wx = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i ; 2 uses
  %i.wy = fmul <2 x float> %i.vu, %i.ww
  %i.wz = insertelement <2 x float> %i.ws, float %i.wx, i64 1
  %i.xa = fmul <2 x float> %i.vo, %i.wz
  %i.xb = fsub <2 x float> %i.wy, %i.xa
  %i.xc = insertelement <2 x float> %i.wu, float %i.wx, i64 1
  %i.xd = fmul <2 x float> %i.vv, %i.xc
  %i.xe = shufflevector <2 x float> %i.ww, <2 x float> %i.ws, <2 x i32> <i32 0, i32 3>
  %i.xf = fmul <2 x float> %i.vw, %i.xe
  %i.xg = fsub <2 x float> %i.xd, %i.xf
  %i.xh = fmul <2 x float> %i.vn, %i.ws
  %i.xi = fmul <2 x float> %i.vi, %i.wu
  %i.xj = fsub <2 x float> %i.xh, %i.xi
  %i.xk = fmul <2 x float> %i.ne, %i.xb
  %i.xl = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.xg
  %i.xm = fadd <2 x float> %i.xk, %i.xl
  %i.xn = fmul <2 x float> %i.vt, %i.xj
  %i.xo = fadd <2 x float> %i.xn, %i.xm
  %i.xp = fmul <2 x float> %i.vr, %i.xo           ; 2 uses
  %i.xq = extractelement <2 x float> %i.xp, i64 0 ; 2 uses
  %i.xr = extractelement <2 x float> %i.xp, i64 1 ; 2 uses
  %i.xs = fcmp ogt float %i.xq, %i.xr
  %i.xt = select i1 %i.xs, float %i.xq, float %i.xr ; 2 uses
  %i.xu = fcmp ogt float %i.wq, %i.xt
  %i.xv = select i1 %i.xu, float %i.wq, float %i.xt ; 2 uses
  %i.xw = fmul float %i.xv, f0x3F733333
  %i.xx = fcmp ogt float %i.xw, %.7309545.i       ; 2 uses
  %.8310.i = select i1 %i.xx, float %i.xv, float %.7309545.i
  %i.xy = trunc nuw nsw i64 %indvars.iv614.i to i32
  %.8.i = select i1 %i.xx, i32 %i.xy, i32 %.7546.i ; 4 uses
  %indvars.iv.next615.i = add nuw nsw i64 %indvars.iv614.i, 1 ; 2 uses
  %exitcond619.not.i = icmp eq i64 %indvars.iv.next615.i, %wide.trip.count618.i
  br i1 %exitcond619.not.i, label %._crit_edge549.i, label %bb.dw, !llvm.loop !145

bb.dz:                                            ; preds = %._crit_edge549.i
  %i.xz = getelementptr inbounds nuw i8, ptr %i.us, i64 72
  %.not52 = icmp ugt ptr %i.us, inttoptr (i64 -73 to ptr)
  br i1 %.not52, label %bb.ea, label %bb.eb, !prof !31, !nosanitize !9

bb.ea:                                            ; preds = %bb.dz
  %i.ya = add i64 %i.uu, 72, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @328, i64 %i.uu, i64 %i.ya) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.eb:                                            ; preds = %bb.dz
  %i.yb = sext i32 %.8.i to i64                   ; 2 uses
  %i.yc = mul nsw i64 %i.yb, 24
  %i.yd = add i64 %i.yc, %i.jt, !nosanitize !9    ; 3 uses
  %i.ye = icmp ne i64 %i.yd, 0, !nosanitize !9
  %i.yf = icmp uge i64 %i.yd, %i.jt, !nosanitize !9
  %i.yg = icmp slt i32 %.8.i, 0
  %i.yh = xor i1 %i.yg, %i.yf
  %i.yi = and i1 %i.ye, %i.yh, !nosanitize !9
  br i1 %i.yi, label %bb.ed, label %bb.ec, !prof !10, !nosanitize !9

bb.ec:                                            ; preds = %bb.eb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @329, i64 %i.jt, i64 %i.yd) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ed:                                            ; preds = %bb.eb
  %i.yj = getelementptr inbounds [24 x i8], ptr %7, i64 %i.yb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.xz, ptr noundef nonnull align 8 dereferenceable(24) %i.yj, i64 24, i1 false), !tbaa.struct !80
  %i.yk = load i32, ptr %i.po, align 8, !tbaa !19 ; 2 uses
  %i.yl = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.yk, i32 1), !nosanitize !9 ; 2 uses
  %i.ym = extractvalue { i32, i1 } %i.yl, 1, !nosanitize !9
  br i1 %i.ym, label %bb.ee, label %bb.ef, !prof !31, !nosanitize !9

bb.ee:                                            ; preds = %bb.ed
  %i.yn = zext nneg i32 %i.yk to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @330, i64 %i.yn, i64 1) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ef:                                            ; preds = %bb.ed
  %i.yo = extractvalue { i32, i1 } %i.yl, 0, !nosanitize !9
  store i32 %i.yo, ptr %i.po, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge553.i, %bb.co, %._crit_edge532.i, %._crit_edge541.i, %._crit_edge549.i, %bb.ef
  %i.yp = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.yq = and i64 %i.yp, 3, !nosanitize !9
  %i.yr = icmp eq i64 %i.yq, 0, !nosanitize !9
  br i1 %i.yr, label %bb.eh, label %bb.eg, !prof !10, !nosanitize !9

bb.eg:                                            ; preds = %b3ReduceManifoldPoints.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @299, i64 %i.yp) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.eh:                                            ; preds = %b3ReduceManifoldPoints.exit
  store float %i.ku, ptr %4, align 4, !tbaa !78
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.ys, align 4, !tbaa !76
  %i.yt = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.yu = trunc i32 %.16.val to i8
  store i8 %i.yu, ptr %i.yt, align 1, !tbaa !77
  %i.yv = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.yw = trunc i32 %.20.val to i8
  store i8 %i.yw, ptr %i.yv, align 2, !tbaa !79
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ej

bb.ej:                                            ; preds = %bb.bg, %bb.ei
  %.3 = phi i1 [ %i.jx, %bb.ei ], [ false, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceBContact(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr noundef nonnull %5) unnamed_addr #0 !func_sanitize !81 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.0109.0.copyload = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4110.0.copyload = load float, ptr %.sroa.4110.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5111.0.copyload = load <2 x float>, ptr %.sroa.5111.0..sroa_idx, align 4 ; 11 uses
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6112.0.copyload = load <2 x float>, ptr %.sroa.6112.0..sroa_idx, align 4 ; 10 uses
  %.sroa.2.8.vec.extract65.i.i = extractelement <2 x float> %.sroa.6112.0.copyload, i64 0 ; 3 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.5111.0.copyload, i64 0 ; 3 uses
  %i.a = fmul float %.sroa.4110.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.0109.0.copyload, %.sroa.6112.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = shufflevector <2 x float> %.sroa.5111.0.copyload, <2 x float> %.sroa.6112.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.d = fmul <2 x float> %.sroa.0109.0.copyload, %i.c
  %i.e = shufflevector <2 x float> %.sroa.0109.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %.sroa.4110.0.copyload, i64 1 ; 2 uses
  %i.g = fmul <2 x float> %i.f, %.sroa.5111.0.copyload
  %i.h = fsub <2 x float> %i.d, %i.g              ; 2 uses
  %i.i = fsub float %i.a, %i.b
  %i.j = insertelement <2 x float> %i.e, float %.sroa.4110.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.6112.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.f, %i.k
  %i.n = fadd <2 x float> %i.h, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.i, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.c, %i.n
  %i.s = shufflevector <2 x float> %.sroa.6112.0.copyload, <2 x float> %.sroa.5111.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.5111.0.copyload, %i.q
  %foldExtExtBinop10 = fmul <2 x float> %.sroa.5111.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fsub <2 x float> %foldExtExtBinop8, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fsub <2 x float> %i.w, %.sroa.0109.0.copyload
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fsub float %i.y, %.sroa.4110.0.copyload
  store <2 x float> %i.x, ptr %6, align 8, !alias.scope !148
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.z, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !148
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = fneg float %.sroa.2.8.vec.extract65.i.i
  %i.ac = fneg <2 x float> %.sroa.5111.0.copyload
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.6112.0.copyload, float %i.ab, i64 0
  store <2 x float> %i.ac, ptr %i.aa, align 4, !alias.scope !148
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !148
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !58 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %i.ah = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 %i.ae, i32 %i.ag, ptr noundef %5) ; 2 uses
  br i1 %i.ah, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.aj = and i64 %i.ai, 3, !nosanitize !9
  %i.ak = icmp eq i64 %i.aj, 0, !nosanitize !9
  br i1 %i.ak, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @331, i64 %i.ai) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %5, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.sroa.2.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6112.0.copyload, i64 1 ; 3 uses
  %.sroa.09.4.vec.extract13.i.i.i = extractelement <2 x float> %.sroa.5111.0.copyload, i64 1 ; 3 uses
  %i.al = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %i.am = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.2.8.vec.extract65.i.i ; 2 uses
  %i.an = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %foldExtExtBinop14 = fmul <2 x float> %.sroa.5111.0.copyload, %.sroa.6112.0.copyload
  %i.ao = extractelement <2 x float> %foldExtExtBinop14, i64 0 ; 2 uses
  %7 = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.09.4.vec.extract13.i.i.i ; 2 uses
  %foldExtExtBinop16 = fmul <2 x float> %.sroa.6112.0.copyload, %.sroa.6112.0.copyload
  %i.ap = fmul <2 x float> %.sroa.5111.0.copyload, %.sroa.5111.0.copyload ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %8 = fmul float %.sroa.2.8.vec.extract65.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %i.ar = fsub float %i.ao, %i.al
  %i.as = fmul float %i.ar, 2.000000e+00          ; 2 uses
  %i.at = fadd float %i.am, %i.an
  %i.au = fmul float %i.at, 2.000000e+00          ; 2 uses
  %9 = shufflevector <2 x float> %foldExtExtBinop16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fadd <2 x float> %i.aq, %9
  %i.aw = fmul <2 x float> %i.av, splat (float 2.000000e+00)
  %i.ax = fadd float %7, %8
  %i.ay = fsub float %7, %8
  %i.az = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ax, i64 1
  %i.bb = fmul <2 x float> %i.ba, splat (float 2.000000e+00) ; 2 uses
  %i.bc = fsub <2 x float> splat (float 1.000000e+00), %i.aw ; 2 uses
  %i.bd = fsub float %i.am, %i.an
  %i.be = fadd float %i.ao, %i.al
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bd, i64 1
  %i.bh = fmul <2 x float> %i.bg, splat (float 2.000000e+00) ; 2 uses
  %foldExtExtBinop17 = fadd <2 x float> %i.ap, %i.aq
  %i.bi = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.bj = fmul float %i.bi, 2.000000e+00
  %i.bk = fsub float 1.000000e+00, %i.bj          ; 2 uses
  %i.bl = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.bm = and i64 %i.bl, 7, !nosanitize !9
  %i.bn = icmp eq i64 %i.bm, 0, !nosanitize !9
  br i1 %i.bn, label %.lr.ph, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @332, i64 %i.bl) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph:                                           ; preds = %bb.e
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 8 ; 4 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 8 ; 2 uses
  %i.bo = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i64 = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %i.bp = fmul float %i.as, %.sroa.0.0.vec.extract.i64
  %i.bq = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.br = fmul float %i.au, %i.bq
  %i.bs = fadd float %i.bp, %i.br
  %i.bt = fmul float %i.bk, %.sroa.231.0.copyload
  %i.bu = fadd float %i.bt, %i.bs
  %i.bv = fmul <2 x float> %i.bb, %i.bo
  %i.bw = fmul <2 x float> %i.bc, %.sroa.030.0.copyload
  %i.bx = fadd <2 x float> %i.bv, %i.bw
  %i.by = insertelement <2 x float> poison, float %.sroa.231.0.copyload, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.bh, %i.bz
  %i.cb = fadd <2 x float> %i.ca, %i.bx
  %i.cc = fneg <2 x float> %i.cb
  %i.cd = fneg float %i.bu
  store <2 x float> %i.cc, ptr %0, align 8
  store float %i.cd, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load i32, ptr %i.ce, align 8, !tbaa !19
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph6, label %.split.us

.lr.ph6:                                          ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv5 = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !20 ; 3 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %indvars.iv5 ; 5 uses
  %i.ck = mul nuw nsw i64 %indvars.iv5, 24
  %i.cl = ptrtoint ptr %i.ci to i64, !nosanitize !9 ; 3 uses
  %i.cm = add i64 %i.ck, %i.cl, !nosanitize !9    ; 3 uses
  %i.cn = icmp ne ptr %i.ci, null, !nosanitize !9 ; 2 uses
  %i.co = icmp eq i64 %i.cm, 0
  %i.cp = xor i1 %i.cn, %i.co
  %i.cq = icmp uge i64 %i.cm, %i.cl, !nosanitize !9
  %i.cr = and i1 %i.cq, %i.cp, !nosanitize !9
  br i1 %i.cr, label %bb.g, label %.split133.us, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %.lr.ph6
  %i.cs = ptrtoint ptr %i.cj to i64, !nosanitize !9 ; 2 uses
  %i.ct = and i64 %i.cs, 3, !nosanitize !9
  %i.cu = icmp eq i64 %i.ct, 0, !nosanitize !9
  %i.cv = and i1 %i.cn, %i.cu
  br i1 %i.cv, label %.lr.ph.split.us, label %.split136.us, !prof !10, !nosanitize !9

.lr.ph.split.us:                                  ; preds = %bb.g
  %.sroa.010.0.copyload.us = load <2 x float>, ptr %i.cj, align 4 ; 4 uses
  %.sroa.211.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.sroa.211.0.copyload.us = load float, ptr %.sroa.211.0..sroa_idx.us, align 4 ; 2 uses
  %i.cw = shufflevector <2 x float> %.sroa.010.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i76.us = extractelement <2 x float> %.sroa.010.0.copyload.us, i64 0
  %i.cx = fmul float %i.as, %.sroa.0.0.vec.extract.i76.us
  %i.cy = extractelement <2 x float> %.sroa.010.0.copyload.us, i64 1
  %i.cz = fmul float %i.au, %i.cy
  %i.da = fadd float %i.cx, %i.cz
  %i.db = fmul float %i.bk, %.sroa.211.0.copyload.us
  %i.dc = fadd float %i.db, %i.da
  %i.dd = fmul <2 x float> %i.bb, %i.cw
  %i.de = fmul <2 x float> %i.bc, %.sroa.010.0.copyload.us
  %i.df = fadd <2 x float> %i.dd, %i.de
  %i.dg = insertelement <2 x float> poison, float %.sroa.211.0.copyload.us, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.bh, %i.dh
  %i.dj = fadd <2 x float> %i.di, %i.df
  %i.dk = fadd <2 x float> %.sroa.0109.0.copyload, %i.dj
  %i.dl = fadd float %.sroa.4110.0.copyload, %i.dc
  store <2 x float> %i.dk, ptr %i.cj, align 4
  store float %i.dl, ptr %.sroa.211.0..sroa_idx.us, align 4, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = tail call i32 @b3FlipPair(i32 %i.dn) #11
  store i32 %i.do, ptr %i.dm, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1 ; 2 uses
  %i.dp = load i32, ptr %i.ce, align 8, !tbaa !19
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %.lr.ph6, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph
  %i.ds = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.dt = and i64 %i.ds, 3, !nosanitize !9
  %i.du = icmp eq i64 %i.dt, 0, !nosanitize !9
  br i1 %i.du, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

.split133.us:                                     ; preds = %.lr.ph6
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @333, i64 %i.cl, i64 %i.cm) #10, !nosanitize !9
  unreachable, !nosanitize !9

.split136.us:                                     ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @334, i64 %i.cs) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.split.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @335, i64 %i.ds) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %.split.us
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 3, ptr %i.dv, align 4, !tbaa !76
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.dx = trunc i32 %i.ag to i8
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !77
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.dz = trunc i32 %i.ae to i8
  store i8 %i.dz, ptr %i.dy, align 2, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i1 %i.ah
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildEdgeContact(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr noundef nonnull %5) unnamed_addr #0 !func_sanitize !149 {
bb.a:
  %6 = alloca %struct.b3SegmentDistanceResult, align 8 ; 9 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 6 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @279, i64 %i.b) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %b3GetHullEdges.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.i), !nosanitize !9 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1, !nosanitize !9
  br i1 %i.k, label %bb.e, label %bb.f, !prof !31, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @280, i64 %i.b, i64 %i.i) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !9
  %i.m = inttoptr i64 %i.l to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.f ], [ null, %bb.c ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %b3GetHullPoints.exit, label %bb.g

bb.g:                                             ; preds = %b3GetHullEdges.exit
  %i.q = sext i32 %i.o to i64                     ; 2 uses
  %i.r = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.q), !nosanitize !9 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1, !nosanitize !9
  br i1 %i.s, label %bb.h, label %bb.i, !prof !31, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @205, i64 %i.b, i64 %i.q) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.t = extractvalue { i64, i1 } %i.r, 0, !nosanitize !9
  %i.u = inttoptr i64 %i.t to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullEdges.exit, %bb.i
  %.0.i142 = phi ptr [ %i.u, %bb.i ], [ null, %b3GetHullEdges.exit ] ; 4 uses
  %i.v = icmp ne ptr %2, null, !nosanitize !9
end_hunk_1
