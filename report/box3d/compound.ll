Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/compound?download=true
inline.NumInlined: 186
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@b3CreateCompound:bb.a
  %i.cv = getelementptr inbounds nuw [72 x i8], ptr %i.cu, i64 %indvars.iv457 ; 3 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv457 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cw, ptr noundef nonnull align 8 dereferenceable(28) %i.cv, i64 28, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.0345390, ptr %i.e, align 4, !tbaa !20, !noalias !176
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull %2, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.e, i1 noundef zeroext false)
  %.val5.i = load ptr, ptr %i.cj, align 8, !tbaa !51, !alias.scope !176
  %.val6.i = load ptr, ptr %i.ck, align 8, !tbaa !52, !alias.scope !176
  %i.cy = icmp eq ptr %.val5.i, %.val6.i
  br i1 %i.cy, label %bb.g, label %b3MaterialMap_get_or_insert.exit, !prof !53

bb.g:                                             ; preds = %bb.f
  %i.cz = load i64, ptr %i.cl, align 8, !tbaa !54, !noalias !176 ; 2 uses
  %.not.i364 = icmp eq i64 %i.cz, 0
  %i.da = shl i64 %i.cz, 1
  %i.db = add i64 %i.da, 2
  %i.dc = select i1 %.not.i364, i64 8, i64 %i.db
  %i.dd = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.dc), !noalias !176
  br i1 %i.dd, label %bb.f, label %b3MaterialMap_get_or_insert.exit, !prof !55

b3MaterialMap_get_or_insert.exit:                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.de = load ptr, ptr %3, align 8, !tbaa !56
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !58 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !178
  %i.di = icmp eq i32 %i.dg, %.0345390
  br i1 %i.di, label %bb.h, label %bb.i

bb.h:                                             ; preds = %b3MaterialMap_get_or_insert.exit
  %i.dj = sext i32 %.0345390 to i64
  %i.dk = getelementptr inbounds [40 x i8], ptr %i.cg, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dk, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !tbaa.struct !179
  %i.dl = add nsw i32 %.0345390, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %b3MaterialMap_get_or_insert.exit
  %.1346 = phi i32 [ %i.dl, %bb.h ], [ %.0345390, %b3MaterialMap_get_or_insert.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @b3ComputeCapsuleAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %4, ptr noundef nonnull %i.cv, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity) #19
  %i.dm = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef -1, i64 noundef %indvars.iv457) #19 ; 0 uses
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.dn = load i32, ptr %i.f, align 8, !tbaa !166
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next458, %i.do
  br i1 %i.dp, label %bb.e, label %._crit_edge394.loopexit, !llvm.loop !139

bb.j:                                             ; preds = %._crit_edge394
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @b3HullMap_init(ptr noundef nonnull %5) #19
  %i.dq = call zeroext i1 @b3HullMap_reserve(ptr noundef nonnull %5, i64 noundef %i.w) #19 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dv = zext nneg i32 %.0327.lcssa to i64
  %wide.trip.count469 = zext nneg i32 %i.v to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.r
  %i.dw = trunc nuw i64 %indvars.iv.next463 to i32
  call void @b3HullMap_cleanup(ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.s

bb.l:                                             ; preds = %bb.j, %bb.r
  %indvars.iv464 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next465, %bb.r ] ; 3 uses
  %indvars.iv462 = phi i64 [ %i.dv, %bb.j ], [ %indvars.iv.next463, %bb.r ] ; 2 uses
  %.0341398 = phi i32 [ 0, %bb.j ], [ %.1342, %bb.r ] ; 5 uses
  %.2347397 = phi i32 [ %.0345.lcssa, %bb.j ], [ %.3348, %bb.r ] ; 5 uses
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !180
  %i.dy = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %indvars.iv464 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !183 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  call void @b3ComputeHullAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %6, ptr noundef %i.dz, ptr noundef nonnull byval(%struct.b3Transform) align 8 %i.ea) #19
  %i.eb = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i64 noundef %indvars.iv462) #19 ; 0 uses
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.2347397, ptr %i.d, align 4, !tbaa !20, !noalias !184
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull %2, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.d, i1 noundef zeroext false)
  %.val5.i365 = load ptr, ptr %i.ds, align 8, !tbaa !51, !alias.scope !184
  %.val6.i366 = load ptr, ptr %i.dt, align 8, !tbaa !52, !alias.scope !184
  %i.ed = icmp eq ptr %.val5.i365, %.val6.i366
  br i1 %i.ed, label %bb.n, label %b3MaterialMap_get_or_insert.exit368, !prof !53

bb.n:                                             ; preds = %bb.m
  %i.ee = load i64, ptr %i.du, align 8, !tbaa !54, !noalias !184 ; 2 uses
  %.not.i367 = icmp eq i64 %i.ee, 0
  %i.ef = shl i64 %i.ee, 1
  %i.eg = add i64 %i.ef, 2
  %i.eh = select i1 %.not.i367, i64 8, i64 %i.eg
  %i.ei = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.eh), !noalias !184
  br i1 %i.ei, label %bb.m, label %b3MaterialMap_get_or_insert.exit368, !prof !55

b3MaterialMap_get_or_insert.exit368:              ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ej = load ptr, ptr %7, align 8, !tbaa !56
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !58 ; 2 uses
  %i.em = getelementptr inbounds nuw [36 x i8], ptr %i.y, i64 %indvars.iv464 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i32 %i.el, ptr %i.en, align 4, !tbaa !30
  %i.eo = icmp eq i32 %i.el, %.2347397
  br i1 %i.eo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %b3MaterialMap_get_or_insert.exit368
  %i.ep = sext i32 %.2347397 to i64
  %i.eq = getelementptr inbounds [40 x i8], ptr %i.cg, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %i.ec, i64 40, i1 false), !tbaa.struct !179
  %i.er = add nsw i32 %.2347397, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %b3MaterialMap_get_or_insert.exit368
  %.3348 = phi i32 [ %i.er, %bb.o ], [ %.2347397, %b3MaterialMap_get_or_insert.exit368 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.em, ptr noundef nonnull align 8 dereferenceable(28) %i.ea, i64 28, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @b3HullMap_get_or_insert(ptr dead_on_unwind nonnull writable sret(%struct.b3HullMap_itr) align 8 %8, ptr noundef nonnull %5, ptr noundef %i.dz, i32 noundef %.0341398) #19
  %i.es = load ptr, ptr %8, align 8, !tbaa !56
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !186 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !27
  %i.ew = icmp eq i32 %i.eu, %.0341398
  br i1 %i.ew, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ex = sext i32 %.0341398 to i64
  %i.ey = getelementptr inbounds [16 x i8], ptr %i.cs, i64 %i.ex ; 2 uses
  store ptr %i.dz, ptr %i.ey, align 8, !tbaa !188
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 -1, ptr %i.ez, align 8, !tbaa !189
  %i.fa = add nsw i32 %.0341398, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1342 = phi i32 [ %i.fa, %bb.q ], [ %.0341398, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next465, %wide.trip.count469
  br i1 %exitcond470.not, label %bb.k, label %bb.l, !llvm.loop !142

bb.s:                                             ; preds = %bb.k, %._crit_edge394
  %.4349 = phi i32 [ %.3348, %bb.k ], [ %.0345.lcssa, %._crit_edge394 ] ; 2 uses
  %.2343 = phi i32 [ %.1342, %bb.k ], [ 0, %._crit_edge394 ] ; 8 uses
  %.2 = phi i32 [ %i.dw, %bb.k ], [ %.0327.lcssa, %._crit_edge394 ] ; 2 uses
  %i.fb = shl nsw i64 %i.aa, 4                    ; 2 uses
  %i.fc = call ptr @b3AllocZeroed(i64 noundef %i.fb) #19 ; 13 uses
  %i.fd = icmp sgt i32 %i.z, 0                    ; 2 uses
  br i1 %i.fd, label %.preheader.i.i369, label %bb.ag

.preheader.i.i369:                                ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.fe, align 8, !tbaa !49
  %i.ff = uitofp nneg i64 %i.aa to double
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.i.i369
  %.0.i.i370 = phi i64 [ %i.fj, %bb.t ], [ 8, %.preheader.i.i369 ] ; 4 uses
  %i.fg = uitofp i64 %.0.i.i370 to double
  %i.fh = fmul nnan double %i.fg, 9.000000e-01
  %i.fi = fcmp olt double %i.fh, %i.ff
  %i.fj = shl i64 %.0.i.i370, 1
  br i1 %i.fi, label %bb.t, label %b3MeshMap_min_bucket_count_for_size.exit.i, !llvm.loop !143

b3MeshMap_min_bucket_count_for_size.exit.i:       ; preds = %bb.t
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not.i372.not = icmp eq i64 %.0.i.i370, 0
  br i1 %.not.i372.not, label %.lr.ph411, label %bb.u

bb.u:                                             ; preds = %b3MeshMap_min_bucket_count_for_size.exit.i
  %i.fl = call fastcc zeroext i1 @b3MeshMap_rehash(ptr noundef nonnull %9, i64 noundef %.0.i.i370) ; 0 uses
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %bb.u, %b3MeshMap_min_bucket_count_for_size.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %wide.trip.count483 = zext nneg i32 %i.z to i64
  br label %bb.w

._crit_edge412:                                   ; preds = %bb.af
  %i.fs = load i64, ptr %i.fk, align 8, !tbaa !54 ; 2 uses
  %.not.i374 = icmp eq i64 %i.fs, 0
  br i1 %.not.i374, label %b3MeshMap_cleanup.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge412
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !61
  %i.fv = mul i64 %i.fs, 18
  %i.fw = add i64 %i.fv, 26
  call void @b3Free(ptr noundef %i.fu, i64 noundef %i.fw) #19
  br label %b3MeshMap_cleanup.exit

b3MeshMap_cleanup.exit:                           ; preds = %._crit_edge412, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ag

bb.w:                                             ; preds = %.lr.ph411, %bb.af
  %indvars.iv478 = phi i64 [ 0, %.lr.ph411 ], [ %indvars.iv.next479, %bb.af ] ; 6 uses
  %.3410 = phi i32 [ %.2, %.lr.ph411 ], [ %16, %bb.af ] ; 2 uses
  %.0337408 = phi i32 [ 0, %.lr.ph411 ], [ %.1338, %bb.af ] ; 5 uses
  %.5350407 = phi i32 [ %.4349, %.lr.ph411 ], [ %.6.lcssa, %bb.af ] ; 2 uses
  %i.fx = load ptr, ptr %i.fm, align 8, !tbaa !170
  %i.fy = getelementptr inbounds nuw [64 x i8], ptr %i.fx, i64 %indvars.iv478 ; 6 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !190 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 36
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.gb, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 44
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  call void @b3ComputeMeshAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %10, ptr noundef %i.fz, ptr noundef nonnull byval(%struct.b3Transform) align 8 %i.ga, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload) #19
  %15 = sext i32 %.3410 to i64
  %i.gc = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %10, i64 noundef -1, i64 noundef %15) #19 ; 0 uses
  %16 = add nsw i32 %.3410, 1                     ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !172 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph404, label %._crit_edge405

.lr.ph404:                                        ; preds = %bb.w
  %i.gg = call i32 @llvm.umin.i32(i32 %i.ge, i32 4)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 2 uses
  %i.gi = getelementptr inbounds nuw [60 x i8], ptr %i.ac, i64 %indvars.iv478
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  %wide.trip.count474 = zext nneg i32 %i.gg to i64
  br label %bb.z

._crit_edge405:                                   ; preds = %bb.ad, %bb.w
  %.6.lcssa = phi i32 [ %.5350407, %bb.w ], [ %.7, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.0337408, ptr %i.c, align 4, !tbaa !20, !noalias !191
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %._crit_edge405
  call fastcc void @b3MeshMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull %9, ptr noundef %i.fz, ptr noundef nonnull %i.c, i1 noundef zeroext false)
  %.val5.i375 = load ptr, ptr %i.fq, align 8, !tbaa !51, !alias.scope !191
  %.val6.i376 = load ptr, ptr %i.fr, align 8, !tbaa !52, !alias.scope !191
  %i.gk = icmp eq ptr %.val5.i375, %.val6.i376
  br i1 %i.gk, label %bb.y, label %b3MeshMap_get_or_insert.exit, !prof !53

bb.y:                                             ; preds = %bb.x
  %i.gl = load i64, ptr %i.fk, align 8, !tbaa !54, !noalias !191 ; 2 uses
  %.not.i377 = icmp eq i64 %i.gl, 0
  %i.gm = shl i64 %i.gl, 1
  %i.gn = add i64 %i.gm, 2
  %i.go = select i1 %.not.i377, i64 8, i64 %i.gn
  %i.gp = call fastcc zeroext i1 @b3MeshMap_rehash(ptr noundef nonnull %9, i64 noundef %i.go), !noalias !191
  br i1 %i.gp, label %bb.x, label %b3MeshMap_get_or_insert.exit, !prof !55

b3MeshMap_get_or_insert.exit:                     ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gq = load ptr, ptr %12, align 8, !tbaa !56
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !63 ; 2 uses
  %i.gt = getelementptr inbounds nuw [60 x i8], ptr %i.ac, i64 %indvars.iv478 ; 3 uses
  %i.gu = load ptr, ptr %i.fm, align 8, !tbaa !170
  %i.gv = getelementptr inbounds nuw [64 x i8], ptr %i.gu, i64 %indvars.iv478
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gt, ptr noundef nonnull align 8 dereferenceable(28) %i.gw, i64 28, i1 false), !tbaa.struct !29
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  %i.gy = load ptr, ptr %i.fm, align 8, !tbaa !170
  %i.gz = getelementptr inbounds nuw [64 x i8], ptr %i.gy, i64 %indvars.iv478
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gx, ptr noundef nonnull align 4 dereferenceable(12) %i.ha, i64 12, i1 false), !tbaa.struct !35
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  store i32 %i.gs, ptr %i.hb, align 4, !tbaa !33
  %i.hc = icmp eq i32 %i.gs, %.0337408
  br i1 %i.hc, label %bb.ae, label %bb.af

bb.z:                                             ; preds = %.lr.ph404, %bb.ad
  %indvars.iv471 = phi i64 [ 0, %.lr.ph404 ], [ %indvars.iv.next472, %bb.ad ] ; 4 uses
  %.6401 = phi i32 [ %.5350407, %.lr.ph404 ], [ %.7, %bb.ad ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.hd = load ptr, ptr %i.gh, align 8, !tbaa !192
  %i.he = getelementptr inbounds nuw [40 x i8], ptr %i.hd, i64 %indvars.iv471
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.6401, ptr %i.b, align 4, !tbaa !20, !noalias !193
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull %2, ptr noundef %i.he, ptr noundef nonnull %i.b, i1 noundef zeroext false)
  %.val5.i378 = load ptr, ptr %i.fn, align 8, !tbaa !51, !alias.scope !193
  %.val6.i379 = load ptr, ptr %i.fo, align 8, !tbaa !52, !alias.scope !193
  %i.hf = icmp eq ptr %.val5.i378, %.val6.i379
  br i1 %i.hf, label %bb.ab, label %b3MaterialMap_get_or_insert.exit381, !prof !53

bb.ab:                                            ; preds = %bb.aa
  %i.hg = load i64, ptr %i.fp, align 8, !tbaa !54, !noalias !193 ; 2 uses
  %.not.i380 = icmp eq i64 %i.hg, 0
  %i.hh = shl i64 %i.hg, 1
  %i.hi = add i64 %i.hh, 2
  %i.hj = select i1 %.not.i380, i64 8, i64 %i.hi
  %i.hk = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.hj), !noalias !193
  br i1 %i.hk, label %bb.aa, label %b3MaterialMap_get_or_insert.exit381, !prof !55

b3MaterialMap_get_or_insert.exit381:              ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hl = load ptr, ptr %11, align 8, !tbaa !56
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !58 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv471
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !20
  %i.hp = icmp eq i32 %i.hn, %.6401
  br i1 %i.hp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %b3MaterialMap_get_or_insert.exit381
  %i.hq = sext i32 %.6401 to i64
  %i.hr = getelementptr inbounds [40 x i8], ptr %i.cg, i64 %i.hq
  %i.hs = load ptr, ptr %i.gh, align 8, !tbaa !192
  %i.ht = getelementptr inbounds nuw [40 x i8], ptr %i.hs, i64 %indvars.iv471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hr, ptr noundef nonnull align 8 dereferenceable(40) %i.ht, i64 40, i1 false), !tbaa.struct !179
  %i.hu = add nsw i32 %.6401, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %b3MaterialMap_get_or_insert.exit381
  %.7 = phi i32 [ %i.hu, %bb.ac ], [ %.6401, %b3MaterialMap_get_or_insert.exit381 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %._crit_edge405, label %bb.z, !llvm.loop !148

bb.ae:                                            ; preds = %b3MeshMap_get_or_insert.exit
  %i.hv = sext i32 %.0337408 to i64
  %i.hw = getelementptr inbounds [16 x i8], ptr %i.fc, i64 %i.hv ; 2 uses
  store ptr %i.fz, ptr %i.hw, align 8, !tbaa !195
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 -1, ptr %i.hx, align 8, !tbaa !196
  %i.hy = add nsw i32 %.0337408, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %b3MeshMap_get_or_insert.exit
  %.1338 = phi i32 [ %i.hy, %bb.ae ], [ %.0337408, %b3MeshMap_get_or_insert.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next479, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge412, label %bb.w, !llvm.loop !149

bb.ag:                                            ; preds = %b3MeshMap_cleanup.exit, %bb.s
  %.8 = phi i32 [ %.6.lcssa, %b3MeshMap_cleanup.exit ], [ %.4349, %bb.s ] ; 2 uses
  %.2339 = phi i32 [ %.1338, %b3MeshMap_cleanup.exit ], [ 0, %bb.s ] ; 8 uses
  %.4 = phi i32 [ %16, %b3MeshMap_cleanup.exit ], [ %.2, %bb.s ]
  %i.hz = load i32, ptr %i.k, align 8, !tbaa !168
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph420, label %._crit_edge421

.lr.ph420:                                        ; preds = %bb.ag
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.ah

._crit_edge421:                                   ; preds = %bb.al, %bb.ag
  %.9.lcssa = phi i32 [ %.8, %bb.ag ], [ %.10, %bb.al ] ; 2 uses
  %i.if = call i32 @b3DynamicTree_Rebuild(ptr noundef nonnull %1, i1 noundef zeroext true) #19 ; 0 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !197
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %i.ii, 48
  %i.ik = add nsw i64 %i.ij, 144                  ; 2 uses
  %i.il = trunc i64 %i.ik to i32
  %i.im = sext i32 %.9.lcssa to i64
  %i.in = mul nsw i64 %i.im, 40                   ; 2 uses
  %i.io = add nsw i64 %i.ik, %i.in                ; 2 uses
  %i.ip = trunc i64 %i.io to i32
  %i.iq = load i32, ptr %i.f, align 8, !tbaa !166
  %i.ir = sext i32 %i.iq to i64
  %i.is = shl nsw i64 %i.ir, 5
  %i.it = add nsw i64 %i.io, %i.is                ; 3 uses
  %i.iu = trunc i64 %i.it to i32
  %i.iv = add nsw i64 %i.x, 4
  %i.iw = and i64 %i.iv, -8
  %i.ix = add nsw i64 %i.it, %i.iw                ; 3 uses
  %i.iy = icmp sgt i32 %.2343, 0                  ; 2 uses
  br i1 %i.iy, label %.lr.ph426.preheader, label %._crit_edge427

.lr.ph426.preheader:                              ; preds = %._crit_edge421
  %wide.trip.count495 = zext nneg i32 %.2343 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count495, 1
  %i.iz = icmp eq i32 %.2343, 1
  br i1 %i.iz, label %.lr.ph426.epil.preheader, label %.lr.ph426.preheader.new

.lr.ph426.preheader.new:                          ; preds = %.lr.ph426.preheader
  %unroll_iter = and i64 %wide.trip.count495, 2147483646
  br label %.lr.ph426

bb.ah:                                            ; preds = %.lr.ph420, %bb.al
  %indvars.iv487 = phi i64 [ 0, %.lr.ph420 ], [ %indvars.iv.next488, %bb.al ] ; 3 uses
  %.5418 = phi i32 [ %.4, %.lr.ph420 ], [ %18, %bb.al ] ; 2 uses
  %.9416 = phi i32 [ %.8, %.lr.ph420 ], [ %.10, %bb.al ] ; 5 uses
  %i.ja = load ptr, ptr %i.ib, align 8, !tbaa !198
  %i.jb = getelementptr inbounds nuw [56 x i8], ptr %i.ja, i64 %indvars.iv487 ; 3 uses
  %i.jc = getelementptr inbounds nuw [20 x i8], ptr %i.ag, i64 %indvars.iv487 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.9416, ptr %i.a, align 4, !tbaa !20, !noalias !199
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %13, ptr noundef nonnull %2, ptr noundef nonnull %i.jd, ptr noundef nonnull %i.a, i1 noundef zeroext false)
  %.val5.i382 = load ptr, ptr %i.ic, align 8, !tbaa !51, !alias.scope !199
  %.val6.i383 = load ptr, ptr %i.id, align 8, !tbaa !52, !alias.scope !199
  %i.je = icmp eq ptr %.val5.i382, %.val6.i383
  br i1 %i.je, label %bb.aj, label %b3MaterialMap_get_or_insert.exit385, !prof !53

bb.aj:                                            ; preds = %bb.ai
  %i.jf = load i64, ptr %i.ie, align 8, !tbaa !54, !noalias !199 ; 2 uses
  %.not.i384 = icmp eq i64 %i.jf, 0
  %i.jg = shl i64 %i.jf, 1
  %i.jh = add i64 %i.jg, 2
  %i.ji = select i1 %.not.i384, i64 8, i64 %i.jh
  %i.jj = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.ji), !noalias !199
  br i1 %i.jj, label %bb.ai, label %b3MaterialMap_get_or_insert.exit385, !prof !55

b3MaterialMap_get_or_insert.exit385:              ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jk = load ptr, ptr %13, align 8, !tbaa !56
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !58 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !202
  %i.jo = icmp eq i32 %i.jm, %.9416
  br i1 %i.jo, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %b3MaterialMap_get_or_insert.exit385
  %i.jp = sext i32 %.9416 to i64
  %i.jq = getelementptr inbounds [40 x i8], ptr %i.cg, i64 %i.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jq, ptr noundef nonnull align 8 dereferenceable(40) %i.jd, i64 40, i1 false), !tbaa.struct !179
  %i.jr = add nsw i32 %.9416, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %b3MaterialMap_get_or_insert.exit385
  %.10 = phi i32 [ %i.jr, %bb.ak ], [ %.9416, %b3MaterialMap_get_or_insert.exit385 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @b3ComputeSphereAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %14, ptr noundef nonnull %i.jb, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity) #19
  %17 = sext i32 %.5418 to i64
  %i.js = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %14, i64 noundef -1, i64 noundef %17) #19 ; 0 uses
  %18 = add nsw i32 %.5418, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %i.jt = load i32, ptr %i.k, align 8, !tbaa !168
  %i.ju = sext i32 %i.jt to i64
  %i.jv = icmp slt i64 %indvars.iv.next488, %i.ju
  br i1 %i.jv, label %bb.ah, label %._crit_edge421, !llvm.loop !152

._crit_edge427.loopexit.unr-lcssa:                ; preds = %.lr.ph426
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge427, label %.lr.ph426.epil.preheader

.lr.ph426.epil.preheader:                         ; preds = %._crit_edge427.loopexit.unr-lcssa, %.lr.ph426.preheader
  %indvars.iv492.epil.init = phi i64 [ 0, %.lr.ph426.preheader ], [ %indvars.iv.next493.1, %._crit_edge427.loopexit.unr-lcssa ]
  %.0332423.epil.init = phi i64 [ %i.ix, %.lr.ph426.preheader ], [ %i.lg, %._crit_edge427.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod540 = trunc i32 %.2343 to i1
  call void @llvm.assume(i1 %lcmp.mod540)
  %i.jw = trunc i64 %.0332423.epil.init to i32
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %indvars.iv492.epil.init ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i32 %i.jw, ptr %i.jy, align 8, !tbaa !189
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !188
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 140
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !205
  %i.kc = sext i32 %i.kb to i64
  %i.kd = add nsw i64 %i.kc, 7
  %i.ke = and i64 %i.kd, -8
  %i.kf = add i64 %i.ke, %.0332423.epil.init
  br label %._crit_edge427

._crit_edge427:                                   ; preds = %.lr.ph426.epil.preheader, %._crit_edge427.loopexit.unr-lcssa, %._crit_edge421
  %.0332.lcssa = phi i64 [ %i.ix, %._crit_edge421 ], [ %i.lg, %._crit_edge427.loopexit.unr-lcssa ], [ %i.kf, %.lr.ph426.epil.preheader ] ; 3 uses
  %i.kg = trunc i64 %.0332.lcssa to i32
  %i.kh = add nsw i64 %i.ab, 4
  %i.ki = and i64 %i.kh, -8
  %i.kj = add i64 %.0332.lcssa, %i.ki             ; 3 uses
  %i.kk = icmp sgt i32 %.2339, 0                  ; 2 uses
  br i1 %i.kk, label %.lr.ph432.preheader, label %._crit_edge433

.lr.ph432.preheader:                              ; preds = %._crit_edge427
  %wide.trip.count500 = zext nneg i32 %.2339 to i64 ; 2 uses
  %xtraiter541 = and i64 %wide.trip.count500, 1
  %i.kl = icmp eq i32 %.2339, 1
  br i1 %i.kl, label %.lr.ph432.epil.preheader, label %.lr.ph432.preheader.new

.lr.ph432.preheader.new:                          ; preds = %.lr.ph432.preheader
  %unroll_iter545.a = and i64 %wide.trip.count500, 2147483646
  br label %.lr.ph432

.lr.ph426:                                        ; preds = %.lr.ph426, %.lr.ph426.preheader.new
  %indvars.iv492 = phi i64 [ 0, %.lr.ph426.preheader.new ], [ %indvars.iv.next493.1, %.lr.ph426 ] ; 3 uses
  %.0332423 = phi i64 [ %i.ix, %.lr.ph426.preheader.new ], [ %i.lg, %.lr.ph426 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph426.preheader.new ], [ %niter.next.1, %.lr.ph426 ]
  %i.km = trunc i64 %.0332423 to i32
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %indvars.iv492 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store i32 %i.km, ptr %i.ko, align 8, !tbaa !189
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !188
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 140
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !205
  %i.ks = sext i32 %i.kr to i64
  %i.kt = add nsw i64 %i.ks, 7
  %i.ku = and i64 %i.kt, -8
  %i.kv = add i64 %i.ku, %.0332423                ; 2 uses
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %indvars.iv492 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store i32 %i.kw, ptr %i.kz, align 8, !tbaa !189
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !188
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 140
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !205
  %i.ld = sext i32 %i.lc to i64
  %i.le = add nsw i64 %i.ld, 7
  %i.lf = and i64 %i.le, -8
  %i.lg = add i64 %i.lf, %i.kv                    ; 3 uses
  %indvars.iv.next493.1 = add nuw nsw i64 %indvars.iv492, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge427.loopexit.unr-lcssa, label %.lr.ph426, !llvm.loop !153

._crit_edge433.loopexit.unr-lcssa:                ; preds = %.lr.ph432
  %lcmp.mod542.not = icmp eq i64 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %._crit_edge433, label %.lr.ph432.epil.preheader

.lr.ph432.epil.preheader:                         ; preds = %._crit_edge433.loopexit.unr-lcssa, %.lr.ph432.preheader
  %indvars.iv497.epil.init = phi i64 [ 0, %.lr.ph432.preheader ], [ %indvars.iv.next498.1, %._crit_edge433.loopexit.unr-lcssa ]
  %.1333429.epil.init = phi i64 [ %i.kj, %.lr.ph432.preheader ], [ %i.ns, %._crit_edge433.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod544.a = trunc i32 %.2339 to i1
  call void @llvm.assume(i1 %lcmp.mod544.a)
  %i.lh = trunc i64 %.1333429.epil.init to i32
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv497.epil.init ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i32 %i.lh, ptr %i.lj, align 8, !tbaa !196
  %i.lk = load ptr, ptr %i.li, align 8, !tbaa !195
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !66
  %i.ln = sext i32 %i.lm to i64
  %i.lo = add nsw i64 %i.ln, 7
  %i.lp = and i64 %i.lo, -8
  %i.lq = add i64 %i.lp, %.1333429.epil.init
  br label %._crit_edge433

._crit_edge433:                                   ; preds = %.lr.ph432.epil.preheader, %._crit_edge433.loopexit.unr-lcssa, %._crit_edge427
  %.1333.lcssa = phi i64 [ %i.kj, %._crit_edge427 ], [ %i.ns, %._crit_edge433.loopexit.unr-lcssa ], [ %i.lq, %.lr.ph432.epil.preheader ] ; 2 uses
  %i.lr = trunc i64 %.1333.lcssa to i32
  %i.ls = load i32, ptr %i.k, align 8, !tbaa !168
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul nsw i64 %i.lt, 20
  %i.lv = add nsw i64 %i.lu, 4
  %i.lw = and i64 %i.lv, -8
  %i.lx = add i64 %i.lw, %.1333.lcssa             ; 3 uses
  %i.ly = call ptr @b3Alloc(i64 noundef %i.lx) #19 ; 22 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ly, i8 0, i64 %i.lx, i1 false)
  store i64 -4460975412889416758, ptr %i.ly, align 8, !tbaa !67
  %i.lz = trunc i64 %i.lx to i32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store i32 %i.lz, ptr %i.ma, align 8, !tbaa !68
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i32 144, ptr %i.mb, align 4, !tbaa !69
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.mc, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  store i32 0, ptr %i.md, align 8, !tbaa !206
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 56
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ly, i64 24 ; 2 uses
  store ptr null, ptr %i.mf, align 8, !tbaa !70
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.me, i8 0, i64 36, i1 false)
  store i32 %i.il, ptr %i.mg, align 8, !tbaa !16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ly, i64 100
  store i32 %.9.lcssa, ptr %i.mh, align 4, !tbaa !207
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 104 ; 2 uses
  store i32 %i.ip, ptr %i.mi, align 8, !tbaa !17
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ly, i64 108
  store i32 %i.r, ptr %i.mj, align 4, !tbaa !38
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 112
  store i32 %i.iu, ptr %i.mk, align 8, !tbaa !22
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ly, i64 116
  store i32 %i.v, ptr %i.ml, align 4, !tbaa !39
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ly, i64 124
  store i32 %i.kg, ptr %i.mm, align 4, !tbaa !31
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ly, i64 128
  store i32 %i.z, ptr %i.mn, align 8, !tbaa !43
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ly, i64 136 ; 2 uses
  store i32 %i.lr, ptr %i.mo, align 8, !tbaa !36
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ly, i64 140
  store i32 %i.ad, ptr %i.mp, align 4, !tbaa !208
  %i.mq = ptrtoint ptr %i.ly to i64               ; 12 uses
  %i.mr = add nsw i64 %i.mq, 144
  %i.ms = inttoptr i64 %i.mr to ptr               ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !209
  %i.mv = load i32, ptr %i.ig, align 8, !tbaa !197
  %i.mw = sext i32 %i.mv to i64
  %i.mx = mul nsw i64 %i.mw, 48
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ms, ptr align 8 %i.mu, i64 %i.mx, i1 false)
  store ptr %i.ms, ptr %i.mf, align 8, !tbaa !70
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %bb.an, label %bb.am

.lr.ph432:                                        ; preds = %.lr.ph432, %.lr.ph432.preheader.new
  %indvars.iv497 = phi i64 [ 0, %.lr.ph432.preheader.new ], [ %indvars.iv.next498.1, %.lr.ph432 ] ; 3 uses
  %.1333429 = phi i64 [ %i.kj, %.lr.ph432.preheader.new ], [ %i.ns, %.lr.ph432 ] ; 2 uses
  %niter546.a = phi i64 [ 0, %.lr.ph432.preheader.new ], [ %niter546.next.1, %.lr.ph432 ]
  %i.my = trunc i64 %.1333429 to i32
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv497 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i32 %i.my, ptr %i.na, align 8, !tbaa !196
  %i.nb = load ptr, ptr %i.mz, align 8, !tbaa !195
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !66
  %i.ne = sext i32 %i.nd to i64
  %i.nf = add nsw i64 %i.ne, 7
  %i.ng = and i64 %i.nf, -8
  %i.nh = add i64 %i.ng, %.1333429                ; 2 uses
  %i.ni = trunc i64 %i.nh to i32
  %i.nj = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv497 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  store i32 %i.ni, ptr %i.nl, align 8, !tbaa !196
  %i.nm = load ptr, ptr %i.nk, align 8, !tbaa !195
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !66
  %i.np = sext i32 %i.no to i64
  %i.nq = add nsw i64 %i.np, 7
  %i.nr = and i64 %i.nq, -8
  %i.ns = add i64 %i.nr, %i.nh                    ; 3 uses
  %indvars.iv.next498.1 = add nuw nsw i64 %indvars.iv497, 2 ; 2 uses
  %niter546.next.1 = add i64 %niter546.a, 2       ; 2 uses
  %niter546.ncmp.1 = icmp eq i64 %niter546.next.1, %unroll_iter545.a
  br i1 %niter546.ncmp.1, label %._crit_edge433.loopexit.unr-lcssa, label %.lr.ph432, !llvm.loop !154

bb.am:                                            ; preds = %._crit_edge433
  %i.nt = load i32, ptr %i.mg, align 8, !tbaa !16
  %i.nu = sext i32 %i.nt to i64
  %i.nv = add nsw i64 %i.nu, %i.mq
  %i.nw = inttoptr i64 %i.nv to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.nw, ptr nonnull align 8 %i.cg, i64 %i.in, i1 false)
  br label %bb.an
end_hunk_0
