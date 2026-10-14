Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDebugDraw?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z18duDebugDrawTriMeshP11duDebugDrawPKfiPKiS2_iPKhf:bb.a
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bl, i32 noundef %.073, ptr noundef nonnull %i.c) #6, !call_target !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.di = trunc nuw i64 %indvars.iv.next to i32
  %i.dj = icmp sgt i32 %i.q, %i.di
  br i1 %i.dj, label %bb.c, label %._crit_edge

bb.h:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @_Z23duDebugDrawTriMeshSlopeP11duDebugDrawPKfiPKiS2_iff(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x float], align 8              ; 4 uses
  %i.c = alloca [2 x float], align 8              ; 4 uses
  %i.d = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.e = insertelement <4 x ptr> %i.d, ptr %1, i64 1
  %i.f = insertelement <4 x ptr> %i.e, ptr %3, i64 2
  %i.g = insertelement <4 x ptr> %i.f, ptr %4, i64 3
  %i.h = icmp eq <4 x ptr> %i.g, splat (ptr null)
  %i.i = bitcast <4 x i1> %i.h to i4
  %i.j = icmp eq i4 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = fdiv float %6, 1.800000e+02
  %i.l = fmul float %i.k, f0x40490FDB
  %i.m = tail call float @cosf(float noundef %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.n = load ptr, ptr %0, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #6, !call_target !20
  %i.q = load ptr, ptr %0, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2, float noundef 1.000000e+00) #6, !call_target !24
  %i.t = mul nsw i32 %5, 3
  %i.u = icmp sgt i32 %5, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.v = insertelement <2 x float> poison, float %7, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %i.x = load ptr, ptr %0, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.aa = load ptr, ptr %0, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false) #6, !call_target !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  %i.ae = load <2 x float>, ptr %i.ad, align 4, !tbaa !35 ; 3 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fadd float %i.af, 2.000000e+00
  %i.ah = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.ai = fadd float %i.ag, %i.ah
  %i.aj = fmul float %i.ai, 2.200000e+02
  %i.ak = fmul float %i.aj, 2.500000e-01
  %i.al = fptoui float %i.ak to i8                ; 2 uses
  %i.am = fcmp olt float %i.ah, %i.m
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = zext i8 %i.al to i16
  %i.ao = mul nuw i16 %i.an, 191                  ; 3 uses
  %.lhs.trunc = add nuw i16 %i.ao, 12288
  %i.ap = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.ap to i32
  %.lhs.trunc79 = add nuw i16 %i.ao, 8192
  %i.aq = udiv i16 %.lhs.trunc79, 255
  %.zext80 = zext nneg i16 %i.aq to i32
  %i.ar = udiv i16 %i.ao, 255
  %.zext82 = zext nneg i16 %i.ar to i32
  %i.as = shl nuw nsw i32 %.zext80, 8
  %i.at = shl nuw nsw i32 %.zext82, 16
  %i.au = or disjoint i32 %i.at, %.zext
  %i.av = or i32 %i.au, %i.as
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = zext i8 %i.al to i32
  %i.ax = mul nuw nsw i32 %i.aw, 65793
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.073.in = phi i32 [ %i.av, %bb.d ], [ %i.ax, %bb.e ]
  %.073 = or i32 %.073.in, -16777216              ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.ba = mul nsw i32 %i.az, 3
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !37
  %i.bf = mul nsw i32 %i.be, 3
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !37
  %i.bk = mul nsw i32 %i.bj, 3
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bl ; 3 uses
  %i.bn = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ae) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0
  %i.bp = extractelement <2 x float> %i.bn, i64 1
  %i.bq = fcmp ogt float %i.bp, %i.bo             ; 2 uses
  %spec.select = zext i1 %i.bq to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !35
  %i.bt = call float @llvm.fabs.f32(float %i.bs)
  %i.bu = zext i1 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !35
  %i.bx = call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp ogt float %i.bt, %i.bx
  %i.bz = shl nuw nsw i32 1, %spec.select
  %i.ca = select i1 %i.by, i32 0, i32 %i.bz       ; 2 uses
  %i.cb = shl nuw nsw i32 1, %i.ca
  %i.cc = and i32 %i.cb, 3
  %i.cd = zext nneg i32 %i.ca to i64              ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !35
  %i.cg = zext nneg i32 %i.cc to i64              ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !35
  %i.cj = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.ci, i64 1
  %i.cl = fmul <2 x float> %i.w, %i.ck
  store <2 x float> %i.cl, ptr %i.a, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cd
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !35
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cg
  %i.cp = load float, ptr %i.co, align 4, !tbaa !35
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cp, i64 1
  %i.cs = fmul <2 x float> %i.w, %i.cr
  store <2 x float> %i.cs, ptr %i.b, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cd
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !35
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cg
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !35
  %i.cx = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = fmul <2 x float> %i.w, %i.cy
  store <2 x float> %i.cz, ptr %i.c, align 8, !tbaa !35
  %i.da = load ptr, ptr %0, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bc, i32 noundef %.073, ptr noundef nonnull %i.a) #6, !call_target !42
  %i.dd = load ptr, ptr %0, align 8, !tbaa !14
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bh, i32 noundef %.073, ptr noundef nonnull %i.b) #6, !call_target !42
  %i.dg = load ptr, ptr %0, align 8, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bm, i32 noundef %.073, ptr noundef nonnull %i.c) #6, !call_target !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dj = trunc nuw i64 %indvars.iv.next to i32
  %i.dk = icmp sgt i32 %i.t, %i.dj
  br i1 %i.dk, label %bb.c, label %._crit_edge

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @_Z27duDebugDrawHeightfieldSolidP11duDebugDrawRK13rcHeightfield(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %2 = load <1 x float>, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load float, ptr %i.d, align 4, !tbaa !49 ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @_Z15duCalcBoxColorsPjjj(ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef -1) #6
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #6, !call_target !24
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = icmp sgt i32 %i.f, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  br i1 %i.m, label %.preheader.preheader, label %._crit_edge50.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %i.f to i64                ; 2 uses
  %wide.trip.count55 = zext nneg i32 %i.h to i64
  %i.r = shufflevector <1 x float> %2, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge48
  %indvars.iv52 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next53, %._crit_edge48 ] ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.t = uitofp nneg i32 %i.s to float
  %i.u = mul nuw nsw i64 %indvars.iv52, %i.q
  %i.v = insertelement <2 x float> poison, float %i.t, i64 1
  br label %bb.c

._crit_edge50.split:                              ; preds = %._crit_edge48, %.preheader.lr.ph, %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

._crit_edge48:                                    ; preds = %._crit_edge
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge50.split, label %.preheader

bb.c:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.u
  %.043 = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %.not4244 = icmp eq ptr %.043, null
  br i1 %.not4244, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = insertelement <2 x float> %i.v, float %i.ad, i64 0
  %3 = load <2 x float>, ptr %i.b, align 8
  %i.af = load float, ptr %i.n, align 8, !tbaa !35
  %i.ag = insertelement <2 x float> %3, float %i.af, i64 1
  %i.ah = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.r, <2 x float> %i.ag) ; 3 uses
  %i.ai = fadd <2 x float> %i.r, %i.ah            ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 0
  %i.ak = extractelement <2 x float> %i.ah, i64 1
  %i.al = extractelement <2 x float> %i.ai, i64 0
  %i.am = extractelement <2 x float> %i.ai, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.045 = phi ptr [ %.043, %.lr.ph ], [ %.0, %bb.d ] ; 2 uses
  %i.an = load float, ptr %i.p, align 4, !tbaa !35 ; 2 uses
  %i.ao = load i32, ptr %.045, align 8            ; 2 uses
  %i.ap = and i32 %i.ao, 8191
  %i.aq = uitofp nneg i32 %i.ap to float
  %i.ar = call float @llvm.fmuladd.f32(float %i.aq, float %i.e, float %i.an)
  %i.as = lshr i32 %i.ao, 13
  %i.at = and i32 %i.as, 8191
  %i.au = uitofp nneg i32 %i.at to float
  %i.av = call float @llvm.fmuladd.f32(float %i.au, float %i.e, float %i.an)
  call void @_Z11duAppendBoxP11duDebugDrawffffffPKj(ptr noundef nonnull %0, float noundef %i.aj, float noundef %i.ar, float noundef %i.ak, float noundef %i.al, float noundef %i.av, float noundef %i.am, ptr noundef nonnull %i.a) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %.0 = load ptr, ptr %i.aw, align 8, !tbaa !53   ; 2 uses
  %.not42 = icmp eq ptr %.0, null
  br i1 %.not42, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge48, label %bb.c

bb.e:                                             ; preds = %bb.a, %._crit_edge50.split
  ret void
}

declare void @_Z15duCalcBoxColorsPjjj(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @_Z11duAppendBoxP11duDebugDrawffffffPKj(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @_Z30duDebugDrawHeightfieldWalkableP11duDebugDrawRK13rcHeightfield(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %2 = load <1 x float>, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load float, ptr %i.d, align 4, !tbaa !49 ; 2 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @_Z15duCalcBoxColorsPjjj(ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef -2500135) #6
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #6, !call_target !24
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge55.split

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = icmp sgt i32 %i.f, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  br i1 %i.m, label %.preheader.preheader, label %._crit_edge55.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %i.f to i64                ; 2 uses
  %wide.trip.count60 = zext nneg i32 %i.h to i64
  %i.r = shufflevector <1 x float> %2, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge53
  %indvars.iv57 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next58, %._crit_edge53 ] ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.t = uitofp nneg i32 %i.s to float
  %i.u = mul nuw nsw i64 %indvars.iv57, %i.q
  %i.v = insertelement <2 x float> poison, float %i.t, i64 1
  br label %bb.c

._crit_edge55.split:                              ; preds = %._crit_edge53, %.preheader.lr.ph, %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.h

._crit_edge53:                                    ; preds = %._crit_edge
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %._crit_edge55.split, label %.preheader

bb.c:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.u
  %.048 = load ptr, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %.not4749 = icmp eq ptr %.048, null
  br i1 %.not4749, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = insertelement <2 x float> %i.v, float %i.ad, i64 0
  %3 = load <2 x float>, ptr %i.b, align 8
  %i.af = load float, ptr %i.n, align 8, !tbaa !35
  %i.ag = insertelement <2 x float> %3, float %i.af, i64 1
  %i.ah = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.r, <2 x float> %i.ag) ; 3 uses
  %i.ai = fadd <2 x float> %i.r, %i.ah            ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 0
  %i.ak = extractelement <2 x float> %i.ah, i64 1
  %i.al = extractelement <2 x float> %i.ai, i64 0
  %i.am = extractelement <2 x float> %i.ai, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.050 = phi ptr [ %.048, %.lr.ph ], [ %.0, %bb.g ] ; 3 uses
  %i.an = load i32, ptr %.050, align 8
  %i.ao = lshr i32 %i.an, 26                      ; 2 uses
  switch i32 %i.ao, label %bb.f [
    i32 63, label %bb.g
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ao) #6, !call_target !56 ; 4 uses
  %i.at = and i32 %i.as, 255
  %i.au = lshr i32 %i.as, 8
  %i.av = and i32 %i.au, 255
  %i.aw = lshr i32 %i.as, 16
  %i.ax = and i32 %i.aw, 255
  %i.ay = and i32 %i.as, -16777216
  %i.az = mul nuw nsw i32 %i.at, 200
  %i.ba = lshr i32 %i.az, 8
  %i.bb = mul nuw nsw i32 %i.av, 200
  %i.bc = and i32 %i.bb, 65280
  %i.bd = mul nuw nsw i32 %i.ax, 51200
  %i.be = and i32 %i.bd, 16711680
  %i.bf = or disjoint i32 %i.ba, %i.ay
  %i.bg = or disjoint i32 %i.bf, %i.bc
  %i.bh = or disjoint i32 %i.bg, %i.be
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi i32 [ -12566464, %bb.e ], [ %i.bh, %bb.f ], [ -6258624, %bb.d ]
  store i32 %.sink, ptr %i.a, align 16, !tbaa !37
  %i.bi = load float, ptr %i.p, align 4, !tbaa !35 ; 2 uses
  %i.bj = load i32, ptr %.050, align 8            ; 2 uses
  %i.bk = and i32 %i.bj, 8191
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = call float @llvm.fmuladd.f32(float %i.bl, float %i.e, float %i.bi)
  %i.bn = lshr i32 %i.bj, 13
  %i.bo = and i32 %i.bn, 8191
  %i.bp = uitofp nneg i32 %i.bo to float
  %i.bq = call float @llvm.fmuladd.f32(float %i.bp, float %i.e, float %i.bi)
  call void @_Z11duAppendBoxP11duDebugDrawffffffPKj(ptr noundef nonnull %0, float noundef %i.aj, float noundef %i.bm, float noundef %i.ak, float noundef %i.al, float noundef %i.bq, float noundef %i.am, ptr noundef nonnull %i.a) #6
  %i.br = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %.0 = load ptr, ptr %i.br, align 8, !tbaa !53   ; 2 uses
  %.not47 = icmp eq ptr %.0, null
  br i1 %.not47, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge53, label %bb.c

bb.h:                                             ; preds = %bb.a, %._crit_edge55.split
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z34duDebugDrawCompactHeightfieldSolidP11duDebugDrawRK20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load float, ptr %i.a, align 4, !tbaa !63 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load float, ptr %i.c, align 8, !tbaa !64
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #6, !call_target !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge72

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i32, ptr %1, align 8, !tbaa !66     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.preheader.preheader, label %._crit_edge72

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = insertelement <2 x float> poison, float %i.b, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge70
  %i.u = phi i32 [ %i.ad, %._crit_edge70 ], [ %i.i, %.preheader.preheader ]
  %i.v = phi i32 [ %i.ae, %._crit_edge70 ], [ %i.q, %.preheader.preheader ] ; 2 uses
  %i.w = phi i32 [ %i.af, %._crit_edge70 ], [ %i.q, %.preheader.preheader ] ; 3 uses
  %.06371 = phi i32 [ %i.ag, %._crit_edge70 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %.preheader
  %i.y = uitofp nneg i32 %.06371 to float
  %i.z = insertelement <2 x float> poison, float %i.y, i64 1
  br label %bb.c

._crit_edge72:                                    ; preds = %._crit_edge70, %.preheader.lr.ph, %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  br label %bb.h

._crit_edge70.loopexit:                           ; preds = %._crit_edge
  %.pre76 = load i32, ptr %i.h, align 4, !tbaa !65
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit, %.preheader
  %i.ad = phi i32 [ %.pre76, %._crit_edge70.loopexit ], [ %i.u, %.preheader ] ; 2 uses
  %i.ae = phi i32 [ %i.bf, %._crit_edge70.loopexit ], [ %i.v, %.preheader ]
  %i.af = phi i32 [ %i.bf, %._crit_edge70.loopexit ], [ %i.w, %.preheader ]
  %i.ag = add nuw nsw i32 %.06371, 1              ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ad
  br i1 %i.ah, label %.preheader, label %._crit_edge72, !llvm.loop !88

bb.c:                                             ; preds = %.lr.ph69, %._crit_edge
  %i.ai = phi i32 [ %i.v, %.lr.ph69 ], [ %i.bf, %._crit_edge ]
  %i.aj = phi i32 [ %i.w, %.lr.ph69 ], [ %i.bf, %._crit_edge ]
  %.06268 = phi i32 [ 0, %.lr.ph69 ], [ %i.bg, %._crit_edge ] ; 3 uses
  %2 = load <2 x float>, ptr %i.k, align 4
  %i.ak = uitofp nneg i32 %.06268 to float
  %i.al = load float, ptr %i.l, align 4, !tbaa !35
  %i.am = insertelement <2 x float> %i.z, float %i.ak, i64 0
  %i.an = insertelement <2 x float> %2, float %i.al, i64 1
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.t, <2 x float> %i.an) ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1 ; 3 uses
  %i.aq = extractelement <2 x float> %i.ao, i64 0 ; 3 uses
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.as = mul nuw nsw i32 %i.aj, %.06371
  %i.at = add nsw i32 %i.as, %.06268
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4            ; 3 uses
  %i.ax = lshr i32 %i.aw, 24                      ; 2 uses
  %.not73 = icmp eq i32 %i.ax, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ay = and i32 %i.aw, 16777215
  %i.az = add nuw nsw i32 %i.ay, %i.ax
  %i.ba = fadd float %i.b, %i.ap                  ; 2 uses
  %i.bb = fadd float %i.b, %i.aq                  ; 2 uses
  %i.bc = and i32 %i.aw, 16777215
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = zext nneg i32 %i.az to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i32, ptr %1, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.bf = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ai, %bb.c ] ; 5 uses
  %i.bg = add nuw nsw i32 %.06268, 1              ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bh, label %bb.c, label %._crit_edge70.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.bm, label %bb.f [
    i8 63, label %bb.g
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bn = zext i8 %i.bm to i32
  %i.bo = load ptr, ptr %0, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bn) #6, !call_target !56
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0 = phi i32 [ %i.br, %bb.f ], [ 1073741824, %bb.e ], [ 1090502656, %bb.d ] ; 4 uses
  %i.bs = load float, ptr %i.p, align 8, !tbaa !35
  %i.bt = load i16, ptr %i.bj, align 4, !tbaa !71
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 1
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.d, float %i.bs) ; 4 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.aq, float noundef %i.bx, float noundef %i.ap, i32 noundef %.0) #6, !call_target !74
  %i.cb = load ptr, ptr %0, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.aq, float noundef %i.bx, float noundef %i.ba, i32 noundef %.0) #6, !call_target !74
  %i.ce = load ptr, ptr %0, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bb, float noundef %i.bx, float noundef %i.ba, i32 noundef %.0) #6, !call_target !74
  %i.ch = load ptr, ptr %0, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bb, float noundef %i.bx, float noundef %i.ap, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.ck, label %bb.d, label %._crit_edge.loopexit

bb.h:                                             ; preds = %bb.a, %._crit_edge72
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z36duDebugDrawCompactHeightfieldRegionsP11duDebugDrawRK20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load float, ptr %i.a, align 4, !tbaa !63 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load float, ptr %i.c, align 8, !tbaa !64
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #6, !call_target !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge69

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %1, align 8, !tbaa !66     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.preheader, label %._crit_edge69

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.r = insertelement <2 x float> poison, float %i.b, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge67
  %i.t = phi i32 [ %i.ac, %._crit_edge67 ], [ %i.i, %.preheader.preheader ]
  %i.u = phi i32 [ %i.ad, %._crit_edge67 ], [ %i.p, %.preheader.preheader ] ; 2 uses
  %i.v = phi i32 [ %i.ae, %._crit_edge67 ], [ %i.p, %.preheader.preheader ] ; 3 uses
  %.05968 = phi i32 [ %i.af, %._crit_edge67 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %.preheader
  %i.x = uitofp nneg i32 %.05968 to float
  %i.y = insertelement <2 x float> poison, float %i.x, i64 1
  br label %bb.c

._crit_edge69:                                    ; preds = %._crit_edge67, %.preheader.lr.ph, %bb.b
  %i.z = load ptr, ptr %0, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  br label %bb.g

._crit_edge67.loopexit:                           ; preds = %._crit_edge
  %.pre73 = load i32, ptr %i.h, align 4, !tbaa !65
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit, %.preheader
  %i.ac = phi i32 [ %.pre73, %._crit_edge67.loopexit ], [ %i.t, %.preheader ] ; 2 uses
  %i.ad = phi i32 [ %i.be, %._crit_edge67.loopexit ], [ %i.u, %.preheader ]
  %i.ae = phi i32 [ %i.be, %._crit_edge67.loopexit ], [ %i.v, %.preheader ]
  %i.af = add nuw nsw i32 %.05968, 1              ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.ac
  br i1 %i.ag, label %.preheader, label %._crit_edge69, !llvm.loop !90

bb.c:                                             ; preds = %.lr.ph66, %._crit_edge
  %i.ah = phi i32 [ %i.u, %.lr.ph66 ], [ %i.be, %._crit_edge ]
  %i.ai = phi i32 [ %i.v, %.lr.ph66 ], [ %i.be, %._crit_edge ]
  %.05865 = phi i32 [ 0, %.lr.ph66 ], [ %i.bf, %._crit_edge ] ; 3 uses
  %2 = load <2 x float>, ptr %i.k, align 4
  %i.aj = uitofp nneg i32 %.05865 to float
  %i.ak = load float, ptr %i.l, align 4, !tbaa !35
  %i.al = insertelement <2 x float> %i.y, float %i.aj, i64 0
  %i.am = insertelement <2 x float> %2, float %i.ak, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.s, <2 x float> %i.am) ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 1 ; 3 uses
  %i.ap = extractelement <2 x float> %i.an, i64 0 ; 3 uses
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.ar = mul nuw nsw i32 %i.ai, %.05968
  %i.as = add nsw i32 %i.ar, %.05865
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4            ; 3 uses
  %i.aw = lshr i32 %i.av, 24                      ; 2 uses
  %.not70 = icmp eq i32 %i.aw, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ax = and i32 %i.av, 16777215
  %i.ay = add nuw nsw i32 %i.ax, %i.aw
  %i.az = fadd float %i.b, %i.ao                  ; 2 uses
  %i.ba = fadd float %i.b, %i.ap                  ; 2 uses
  %i.bb = and i32 %i.av, 16777215
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = zext nneg i32 %i.ay to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %1, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.be = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ah, %bb.c ] ; 5 uses
  %i.bf = add nuw nsw i32 %.05865, 1              ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %bb.c, label %._crit_edge67.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.bc, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bj = load float, ptr %i.o, align 8, !tbaa !35
  %i.bk = load i16, ptr %i.bi, align 4, !tbaa !71
  %i.bl = uitofp i16 %i.bk to float
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.d, float %i.bj) ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !91 ; 2 uses
  %.not63 = icmp eq i16 %i.bo, 0
  br i1 %.not63, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = zext i16 %i.bo to i32
  %i.bq = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.bp, i32 noundef 192) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ %i.bq, %bb.e ], [ 1073741824, %bb.d ] ; 4 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ap, float noundef %i.bm, float noundef %i.ao, i32 noundef %.0) #6, !call_target !74
  %i.bu = load ptr, ptr %0, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ap, float noundef %i.bm, float noundef %i.az, i32 noundef %.0) #6, !call_target !74
  %i.bx = load ptr, ptr %0, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ba, float noundef %i.bm, float noundef %i.az, i32 noundef %.0) #6, !call_target !74
  %i.ca = load ptr, ptr %0, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ba, float noundef %i.bm, float noundef %i.ao, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = icmp samesign ult i64 %indvars.iv.next, %i.bd
  br i1 %i.cd, label %bb.d, label %._crit_edge.loopexit

bb.g:                                             ; preds = %bb.a, %._crit_edge69
  ret void
}

declare noundef i32 @_Z10duIntToColii(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @_Z37duDebugDrawCompactHeightfieldDistanceP11duDebugDrawRK20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %.not69 = icmp eq ptr %i.b, null
  br i1 %.not69, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !63 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load float, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !94
  %i.i = uitofp i16 %i.h to float                 ; 2 uses
  %i.j = fcmp olt float %i.i, 1.000000e+00
  %spec.store.select = select i1 %i.j, float 1.000000e+00, float %i.i
  %i.k = fdiv nnan float 2.550000e+02, %spec.store.select
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #6, !call_target !24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !65   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge75

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %1, align 8, !tbaa !66     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader.preheader, label %._crit_edge75

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.y = insertelement <2 x float> poison, float %i.d, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge73
  %i.aa = phi i32 [ %i.aj, %._crit_edge73 ], [ %i.p, %.preheader.preheader ]
  %i.ab = phi i32 [ %i.ak, %._crit_edge73 ], [ %i.w, %.preheader.preheader ] ; 2 uses
  %i.ac = phi i32 [ %i.al, %._crit_edge73 ], [ %i.w, %.preheader.preheader ] ; 3 uses
  %.06674 = phi i32 [ %i.am, %._crit_edge73 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %.preheader
  %i.ae = uitofp nneg i32 %.06674 to float
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 1
  br label %bb.d

._crit_edge75:                                    ; preds = %._crit_edge73, %.preheader.lr.ph, %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  br label %bb.f

._crit_edge73.loopexit:                           ; preds = %._crit_edge
  %.pre79 = load i32, ptr %i.o, align 4, !tbaa !65
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit, %.preheader
  %i.aj = phi i32 [ %.pre79, %._crit_edge73.loopexit ], [ %i.aa, %.preheader ] ; 2 uses
  %i.ak = phi i32 [ %i.bl, %._crit_edge73.loopexit ], [ %i.ab, %.preheader ]
  %i.al = phi i32 [ %i.bl, %._crit_edge73.loopexit ], [ %i.ac, %.preheader ]
  %i.am = add nuw nsw i32 %.06674, 1              ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.aj
  br i1 %i.an, label %.preheader, label %._crit_edge75, !llvm.loop !92

bb.d:                                             ; preds = %.lr.ph72, %._crit_edge
  %i.ao = phi i32 [ %i.ab, %.lr.ph72 ], [ %i.bl, %._crit_edge ]
  %i.ap = phi i32 [ %i.ac, %.lr.ph72 ], [ %i.bl, %._crit_edge ]
  %.06571 = phi i32 [ 0, %.lr.ph72 ], [ %i.bm, %._crit_edge ] ; 3 uses
  %2 = load <2 x float>, ptr %i.r, align 4
  %i.aq = uitofp nneg i32 %.06571 to float
  %i.ar = load float, ptr %i.s, align 4, !tbaa !35
  %i.as = insertelement <2 x float> %i.af, float %i.aq, i64 0
  %i.at = insertelement <2 x float> %2, float %i.ar, i64 1
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.z, <2 x float> %i.at) ; 2 uses
  %i.av = extractelement <2 x float> %i.au, i64 1 ; 3 uses
  %i.aw = extractelement <2 x float> %i.au, i64 0 ; 3 uses
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.ay = mul nuw nsw i32 %i.ap, %.06674
  %i.az = add nsw i32 %i.ay, %.06571
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.bd = lshr i32 %i.bc, 24                      ; 2 uses
  %.not76 = icmp eq i32 %i.bd, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.be = and i32 %i.bc, 16777215
  %i.bf = add nuw nsw i32 %i.be, %i.bd
  %i.bg = fadd float %i.d, %i.av                  ; 2 uses
  %i.bh = fadd float %i.d, %i.aw                  ; 2 uses
  %i.bi = and i32 %i.bc, 16777215
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = zext nneg i32 %i.bf to i64
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %1, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.bl = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ao, %bb.d ] ; 5 uses
  %i.bm = add nuw nsw i32 %.06571, 1              ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %bb.d, label %._crit_edge73.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = load float, ptr %i.v, align 8, !tbaa !35
  %i.br = load i16, ptr %i.bp, align 4, !tbaa !71
  %i.bs = zext i16 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bs, 1
  %i.bu = uitofp nneg i32 %i.bt to float
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.f, float %i.bq) ; 4 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !75
  %i.bz = uitofp i16 %i.by to float
  %i.ca = fmul float %i.k, %i.bz
  %i.cb = fptoui float %i.ca to i8
  %i.cc = zext i8 %i.cb to i32
  %i.cd = mul nuw nsw i32 %i.cc, 65793
  %i.ce = or disjoint i32 %i.cd, -16777216        ; 4 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.aw, float noundef %i.bv, float noundef %i.av, i32 noundef %i.ce) #6, !call_target !74
  %i.ci = load ptr, ptr %0, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.aw, float noundef %i.bv, float noundef %i.bg, i32 noundef %i.ce) #6, !call_target !74
  %i.cl = load ptr, ptr %0, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bh, float noundef %i.bv, float noundef %i.bg, i32 noundef %i.ce) #6, !call_target !74
  %i.co = load ptr, ptr %0, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bh, float noundef %i.bv, float noundef %i.av, i32 noundef %i.ce) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.cr, label %bb.e, label %._crit_edge.loopexit

bb.f:                                             ; preds = %bb.b, %bb.a, %._crit_edge75
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !97 ; 4 uses
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !35
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !98   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !99   ; 3 uses
  %i.i = add nsw i32 %2, 1
  %i.j = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.i, i32 noundef 255) #6 ; 5 uses
  %i.k = load <4 x float>, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load float, ptr %i.q, align 8, !tbaa !35
  %i.s = load <4 x i32>, ptr %i.l, align 8, !tbaa !37
  %i.t = add nsw <4 x i32> %i.s, <i32 0, i32 1, i32 0, i32 1>
  %i.u = sitofp <4 x i32> %i.t to <4 x float>
  %i.v = insertelement <4 x float> poison, float %i.b, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = insertelement <4 x float> %i.k, float %i.p, i64 1
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.w, <4 x float> %i.y) ; 4 uses
  %i.aa = and i32 %i.j, 16777215
  %i.ab = or disjoint i32 %i.aa, -2147483648
  %i.ac = extractelement <4 x float> %i.z, i64 0
  %i.ad = extractelement <4 x float> %i.z, i64 1
  %i.ae = extractelement <4 x float> %i.z, i64 2
  %i.af = extractelement <4 x float> %i.z, i64 3
  tail call void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef %0, float noundef %i.ac, float noundef %i.n, float noundef %i.ae, float noundef %i.ad, float noundef %i.r, float noundef %i.af, i32 noundef %i.ab, float noundef 2.000000e+00) #6
  %i.ag = load ptr, ptr %0, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #6, !call_target !24
  %i.aj = icmp sgt i32 %i.h, 0
  br i1 %i.aj, label %.preheader.lr.ph, label %._crit_edge110.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ak = icmp slt i32 %i.f, 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = icmp eq i32 %i.h, 255
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = lshr i32 %i.j, 16
  %i.ap = lshr i32 %i.j, 24
  %i.aq = trunc i32 %i.j to i16                   ; 2 uses
  %i.ar = and i16 %i.aq, 255
  %.lhs.trunc100 = mul nuw i16 %i.ar, 223
  %i.as = udiv i16 %.lhs.trunc100, 255
  %.zext101 = zext nneg i16 %i.as to i32          ; 2 uses
  %i.at = lshr i16 %i.aq, 8
  %.lhs.trunc102 = mul nuw i16 %i.at, 223         ; 2 uses
  %i.au = udiv i16 %.lhs.trunc102, 255
  %.zext103 = zext nneg i16 %i.au to i32
  %i.av = trunc nuw i32 %i.ao to i16
  %i.aw = and i16 %i.av, 255
  %.lhs.trunc104 = mul nuw i16 %i.aw, 223         ; 2 uses
  %i.ax = trunc nuw nsw i32 %i.ap to i16
  %i.ay = mul nuw i16 %i.ax, 223
  %.lhs.trunc106 = add nuw i16 %i.ay, 2048
  %i.az = shl nuw nsw i32 %.zext103, 8
  %.lhs.trunc94 = add nuw i16 %.lhs.trunc102, 6144
  %.lhs.trunc96 = add nuw i16 %.lhs.trunc104, 8160
  %i.ba = insertelement <4 x i16> poison, i16 %.lhs.trunc104, i64 0
  %i.bb = insertelement <4 x i16> %i.ba, i16 %.lhs.trunc106, i64 1
  %i.bc = insertelement <4 x i16> %i.bb, i16 %.lhs.trunc94, i64 2
  %i.bd = insertelement <4 x i16> %i.bc, i16 %.lhs.trunc96, i64 3
  %i.be = udiv <4 x i16> %i.bd, splat (i16 255)   ; 4 uses
  %i.bf = extractelement <4 x i16> %i.be, i64 0
  %.zext105 = zext nneg i16 %i.bf to i32
  %i.bg = extractelement <4 x i16> %i.be, i64 1
  %.zext107 = zext nneg i16 %i.bg to i32
  %i.bh = shl nuw nsw i32 %.zext105, 16
  %i.bi = or i32 %i.az, %i.bh
  %i.bj = or i32 %i.bi, %.zext101
  %i.bk = shl nuw i32 %.zext107, 24               ; 2 uses
  %i.bl = or i32 %i.bj, %i.bk
  %i.bm = extractelement <4 x i16> %i.be, i64 2
  %.zext95 = zext nneg i16 %i.bm to i32
  %i.bn = extractelement <4 x i16> %i.be, i64 3
  %.zext97 = zext nneg i16 %i.bn to i32
  %i.bo = shl nuw nsw i32 %.zext95, 8
  %i.bp = shl nuw nsw i32 %.zext97, 16
  %i.bq = or i32 %i.bo, %i.bp
  %i.br = or i32 %i.bq, %.zext101
  %i.bs = or i32 %i.br, %i.bk
  %i.bt = bitcast i32 %i.j to <4 x i8>
  %i.bu = zext <4 x i8> %i.bt to <4 x i32>
  %i.bv = mul nuw nsw <4 x i32> %i.bu, splat (i32 223)
  %brmerge = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %brmerge, label %._crit_edge110.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bw = zext nneg i32 %i.f to i64               ; 2 uses
  %wide.trip.count116 = zext nneg i32 %i.h to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv113 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next114, %._crit_edge ] ; 3 uses
  %i.bx = mul nuw nsw i64 %indvars.iv113, %i.bw
  %i.by = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.bz = uitofp nneg i32 %i.by to float
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 1
  br label %bb.j

._crit_edge110.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.cb = load ptr, ptr %0, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.ce = load <2 x float>, ptr %i.a, align 8, !tbaa !35
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 4 uses
  %i.cg = load i32, ptr %i.e, align 8, !tbaa !98  ; 2 uses
  %i.ch = load i32, ptr %i.g, align 4, !tbaa !99  ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24, !inline_history !95
  %i.cl = icmp sgt i32 %i.ch, 0
end_hunk_0
begin_hunk_1_@_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri:bb.a
  %i.hx = load <2 x float>, ptr %i.m, align 4, !tbaa !35
  %i.hy = insertelement <2 x float> %i.ca, float %i.hw, i64 0
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.d, <2 x float> %i.hx) ; 2 uses
  %i.ia = load ptr, ptr %0, align 8, !tbaa !14
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = extractelement <2 x float> %i.hz, i64 0 ; 4 uses
  %i.ie = extractelement <2 x float> %i.hz, i64 1 ; 3 uses
  tail call void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hu, float noundef %i.id, float noundef %i.ie, i32 noundef %.0) #6, !call_target !74
  %i.if = fadd float %i.b, %i.ie                  ; 2 uses
  %i.ig = load ptr, ptr %0, align 8, !tbaa !14
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ii = load ptr, ptr %i.ih, align 8
  tail call void %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hu, float noundef %i.id, float noundef %i.if, i32 noundef %.0) #6, !call_target !74
  %i.ij = fadd float %i.b, %i.hu                  ; 2 uses
  %i.ik = load ptr, ptr %0, align 8, !tbaa !14
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.im = load ptr, ptr %i.il, align 8
  tail call void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ij, float noundef %i.id, float noundef %i.if, i32 noundef %.0) #6, !call_target !74
  %i.in = load ptr, ptr %0, align 8, !tbaa !14
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  %i.ip = load ptr, ptr %i.io, align 8
  tail call void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ij, float noundef %i.id, float noundef %i.ie, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bw
  br i1 %exitcond.not, label %._crit_edge, label %bb.j
}

declare void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @_Z28duDebugDrawHeightfieldLayersP11duDebugDrawRK21rcHeightfieldLayerSet(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i32 noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !105
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z28duDebugDrawRegionConnectionsP11duDebugDrawRK12rcContourSetf(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !35 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph95, label %bb.c

.lr.ph95:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.m = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  br label %bb.d

._crit_edge96:                                    ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.cg, ptr %i.n, align 8, !tbaa !35
  store <2 x float> %i.ci, ptr %i.a, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge96, %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.r = load ptr, ptr %0, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 7.000000e+00) #6, !call_target !24
  %i.u = load i32, ptr %i.h, align 8, !tbaa !78
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.c
  %i.w = fmul float %2, 2.550000e+02
  %i.x = fptoui float %i.w to i8
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = extractelement <2 x float> %i.d, i64 1
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph95, %._crit_edge
  %i.ad = phi i32 [ %i.i, %.lr.ph95 ], [ %i.ch, %._crit_edge ] ; 2 uses
  %indvars.iv118 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next119, %._crit_edge ] ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv118 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !82 ; 8 uses
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ah to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ak = icmp eq i32 %i.ah, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 3 uses
  %i.al = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bd, %bb.e ]
  %i.am = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.az, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i ; 2 uses
  %i.ao = load <2 x i32>, ptr %i.an, align 4, !tbaa !37
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = fadd <2 x float> %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.at = sitofp i32 %i.as to float
  %i.au = fadd float %i.al, %i.at
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !37
  %i.ay = sitofp <2 x i32> %i.ax to <2 x float>
  %i.az = fadd <2 x float> %i.aq, %i.ay           ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !37
  %i.bc = sitofp i32 %i.bb to float
  %i.bd = fadd float %i.au, %i.bc                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, label %bb.e

_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bd, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %.epil.init166 = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.az, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %lcmp.mod169 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv.i.epil.init, 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.epil ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !37
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = fadd <2 x float> %.epil.init166, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !37
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = fadd float %.epil.init, %i.bk
  br label %_ZL16getContourCenterPK9rcContourPKfffPf.exit

_ZL16getContourCenterPK9rcContourPKfffPf.exit:    ; preds = %.epil.preheader, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, %.preheader.i
  %i.bm = phi float [ 0.000000e+00, %.preheader.i ], [ %i.bd, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ], [ %i.bl, %.epil.preheader ]
  %i.bn = phi <2 x float> [ zeroinitializer, %.preheader.i ], [ %i.az, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ], [ %i.bh, %.epil.preheader ]
  %i.bo = sitofp i32 %i.ah to float
  %i.bp = fdiv nnan float 1.000000e+00, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.d, %i.br            ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bn
  %i.bu = extractelement <2 x float> %i.bs, i64 0
  %i.bv = fmul float %i.bu, %i.bm
  %3 = load <2 x float>, ptr %i.b, align 4
  %i.bw = load float, ptr %i.k, align 8, !tbaa !35
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.m, float 4.000000e+00, float %i.bw)
  %i.by = insertelement <2 x float> %3, float %i.bx, i64 1
  %i.bz = fadd <2 x float> %i.bt, %i.by           ; 4 uses
  %i.ca = load float, ptr %i.l, align 4, !tbaa !35
  %i.cb = fadd float %i.bv, %i.ca                 ; 3 uses
  %i.cc = icmp sgt i32 %i.ah, 0
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL16getContourCenterPK9rcContourPKfffPf.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ce = extractelement <2 x float> %i.bz, i64 0
  %i.cf = extractelement <2 x float> %i.bz, i64 1
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZL18findContourFromSetRK12rcContourSett.exit.thread
  %.pre124 = load i32, ptr %i.h, align 8, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit, %_ZL16getContourCenterPK9rcContourPKfffPf.exit
  %i.cg = phi float [ %i.cb, %._crit_edge.loopexit ], [ %i.cb, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ 0.000000e+00, %bb.d ]
  %i.ch = phi i32 [ %.pre124, %._crit_edge.loopexit ], [ %i.ad, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ci = phi <2 x float> [ %i.bz, %._crit_edge.loopexit ], [ %i.bz, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ zeroinitializer, %bb.d ]
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.cj = sext i32 %i.ch to i64
  %i.ck = icmp slt i64 %indvars.iv.next119, %i.cj
  br i1 %i.ck, label %bb.d, label %._crit_edge96

bb.f:                                             ; preds = %.lr.ph, %_ZL18findContourFromSetRK12rcContourSett.exit.thread
  %i.cl = phi i32 [ %i.ah, %.lr.ph ], [ %i.fa, %_ZL18findContourFromSetRK12rcContourSett.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL18findContourFromSetRK12rcContourSett.exit.thread ] ; 2 uses
  %i.cm = load ptr, ptr %i.af, align 8, !tbaa !83
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !37 ; 3 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = and i32 %i.cp, 65535
  %i.cs = load i16, ptr %i.cd, align 4, !tbaa !84
  %i.ct = zext i16 %i.cs to i32
  %i.cu = icmp samesign ult i32 %i.cr, %i.ct
  br i1 %i.cu, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = trunc i32 %i.cp to i16
  %.val = load ptr, ptr %1, align 8
  %.val53 = load i32, ptr %i.h, align 8           ; 2 uses
  %i.cw = icmp sgt i32 %.val53, 0
  br i1 %i.cw, label %.lr.ph.preheader.i, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i55 = zext nneg i32 %.val53 to i64
  br label %.lr.ph.i56

bb.i:                                             ; preds = %.lr.ph.i56
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %indvars.iv.next.i58, %wide.trip.count.i55
  br i1 %exitcond.not.i59, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i57 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i58, %bb.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %indvars.iv.i57 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !84
  %i.da = icmp eq i16 %i.cz, %i.cv
  br i1 %i.da, label %_ZL18findContourFromSetRK12rcContourSett.exit, label %bb.i

_ZL18findContourFromSetRK12rcContourSett.exit:    ; preds = %.lr.ph.i56
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !82 ; 6 uses
  %.not.i60 = icmp eq i32 %i.dc, 0
  br i1 %.not.i60, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit69, label %.preheader.i61

.preheader.i61:                                   ; preds = %_ZL18findContourFromSetRK12rcContourSett.exit
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i63, label %._crit_edge.i62

.lr.ph.i63:                                       ; preds = %.preheader.i61
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i64 = zext nneg i32 %i.dc to i64 ; 2 uses
  %xtraiter171 = and i64 %wide.trip.count.i64, 1
  %i.df = icmp eq i32 %i.dc, 1
  br i1 %i.df, label %.epil.preheader170, label %.lr.ph.i63.new

.lr.ph.i63.new:                                   ; preds = %.lr.ph.i63
  %unroll_iter180 = and i64 %wide.trip.count.i64, 2147483646
  br label %bb.j

._crit_edge.i62.loopexit.unr-lcssa:               ; preds = %bb.j
  %lcmp.mod176.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod176.not, label %._crit_edge.i62, label %.epil.preheader170

.epil.preheader170:                               ; preds = %._crit_edge.i62.loopexit.unr-lcssa, %.lr.ph.i63
  %indvars.iv.i65.epil.init = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i67.1, %._crit_edge.i62.loopexit.unr-lcssa ]
  %.epil.init173 = phi float [ 0.000000e+00, %.lr.ph.i63 ], [ %i.ew, %._crit_edge.i62.loopexit.unr-lcssa ]
  %.epil.init175 = phi <2 x float> [ zeroinitializer, %.lr.ph.i63 ], [ %i.es, %._crit_edge.i62.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %i.dc to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %.idx.i66.epil = shl nuw nsw i64 %indvars.iv.i65.epil.init, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx.i66.epil ; 2 uses
  %i.dh = load <2 x i32>, ptr %i.dg, align 4, !tbaa !37
  %i.di = sitofp <2 x i32> %i.dh to <2 x float>
  %i.dj = fadd <2 x float> %.epil.init175, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !37
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = fadd float %.epil.init173, %i.dm
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %.epil.preheader170, %._crit_edge.i62.loopexit.unr-lcssa, %.preheader.i61
  %i.do = phi float [ 0.000000e+00, %.preheader.i61 ], [ %i.ew, %._crit_edge.i62.loopexit.unr-lcssa ], [ %i.dn, %.epil.preheader170 ]
  %i.dp = phi <2 x float> [ zeroinitializer, %.preheader.i61 ], [ %i.es, %._crit_edge.i62.loopexit.unr-lcssa ], [ %i.dj, %.epil.preheader170 ]
  %i.dq = sitofp i32 %i.dc to float
  %i.dr = fdiv nnan float 1.000000e+00, %i.dq
  %i.ds = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.d, %i.dt            ; 2 uses
  %i.dv = fmul <2 x float> %i.du, %i.dp
  %i.dw = extractelement <2 x float> %i.du, i64 0
  %i.dx = fmul float %i.dw, %i.do
  %4 = load <2 x float>, ptr %i.b, align 4
  %i.dy = load float, ptr %i.k, align 8, !tbaa !35
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.m, float 4.000000e+00, float %i.dy)
  %i.ea = insertelement <2 x float> %4, float %i.dz, i64 1
  %i.eb = fadd <2 x float> %i.dv, %i.ea
  %i.ec = load float, ptr %i.l, align 4, !tbaa !35
  %i.ed = fadd float %i.dx, %i.ec
  br label %_ZL16getContourCenterPK9rcContourPKfffPf.exit69

bb.j:                                             ; preds = %bb.j, %.lr.ph.i63.new
  %indvars.iv.i65 = phi i64 [ 0, %.lr.ph.i63.new ], [ %indvars.iv.next.i67.1, %bb.j ] ; 3 uses
  %i.ee = phi float [ 0.000000e+00, %.lr.ph.i63.new ], [ %i.ew, %bb.j ]
  %i.ef = phi <2 x float> [ zeroinitializer, %.lr.ph.i63.new ], [ %i.es, %bb.j ]
  %niter181 = phi i64 [ 0, %.lr.ph.i63.new ], [ %niter181.next.1, %bb.j ]
  %.idx.i66 = shl nuw nsw i64 %indvars.iv.i65, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx.i66 ; 2 uses
  %i.eh = load <2 x i32>, ptr %i.eg, align 4, !tbaa !37
  %i.ei = sitofp <2 x i32> %i.eh to <2 x float>
  %i.ej = fadd <2 x float> %i.ef, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !37
  %i.em = sitofp i32 %i.el to float
  %i.en = fadd float %i.ee, %i.em
  %indvars.iv.next.i67 = shl i64 %indvars.iv.i65, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next.i67 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load <2 x i32>, ptr %i.ep, align 4, !tbaa !37
  %i.er = sitofp <2 x i32> %i.eq to <2 x float>
  %i.es = fadd <2 x float> %i.ej, %i.er           ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !37
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = fadd float %i.en, %i.ev                 ; 3 uses
  %indvars.iv.next.i67.1 = add nuw nsw i64 %indvars.iv.i65, 2 ; 2 uses
  %niter181.next.1 = add i64 %niter181, 2         ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %._crit_edge.i62.loopexit.unr-lcssa, label %bb.j

_ZL16getContourCenterPK9rcContourPKfffPf.exit69:  ; preds = %_ZL18findContourFromSetRK12rcContourSett.exit, %._crit_edge.i62
  %.sroa.10.0 = phi float [ 0.000000e+00, %_ZL18findContourFromSetRK12rcContourSett.exit ], [ %i.ed, %._crit_edge.i62 ]
  %i.ex = phi <2 x float> [ zeroinitializer, %_ZL18findContourFromSetRK12rcContourSett.exit ], [ %i.eb, %._crit_edge.i62 ] ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = extractelement <2 x float> %i.ex, i64 1
  tail call void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef nonnull %0, float noundef %i.ce, float noundef %i.cf, float noundef %i.cb, float noundef %i.ey, float noundef %i.ez, float noundef %.sroa.10.0, float noundef 2.500000e-01, float noundef 6.000000e-01, float noundef 6.000000e-01, i32 noundef -1006632960) #6
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !82
  br label %_ZL18findContourFromSetRK12rcContourSett.exit.thread

_ZL18findContourFromSetRK12rcContourSett.exit.thread: ; preds = %bb.i, %bb.h, %_ZL16getContourCenterPK9rcContourPKfffPf.exit69, %bb.f, %bb.g
  %i.fa = phi i32 [ %i.cl, %bb.g ], [ %i.cl, %bb.h ], [ %.pre, %_ZL16getContourCenterPK9rcContourPKfffPf.exit69 ], [ %i.cl, %bb.f ], [ %i.cl, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp slt i64 %indvars.iv.next, %i.fb
  br i1 %i.fc, label %bb.f, label %._crit_edge.loopexit

._crit_edge103:                                   ; preds = %_ZL16getContourCenterPK9rcContourPKfffPf.exit79, %bb.c
  %i.fd = load ptr, ptr %0, align 8, !tbaa !14
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph102, %_ZL16getContourCenterPK9rcContourPKfffPf.exit79
  %indvars.iv121 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next122, %_ZL16getContourCenterPK9rcContourPKfffPf.exit79 ] ; 2 uses
  %i.fg = load ptr, ptr %1, align 8, !tbaa !79
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.fg, i64 %indvars.iv121 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 28
  %i.fj = load i16, ptr %i.fi, align 4, !tbaa !84
  %i.fk = zext i16 %i.fj to i32
  %i.fl = call noundef i32 @_Z10duIntToColii(i32 noundef %i.fk, i32 noundef %i.y) #6 ; 2 uses
  %i.fm = lshr i32 %i.fl, 1
  %i.fn = and i32 %i.fm, 8355711
  %i.fo = and i32 %i.fl, -16777216
  %i.fp = or disjoint i32 %i.fn, %i.fo
  store <2 x float> zeroinitializer, ptr %i.a, align 8, !tbaa !35
  store float 0.000000e+00, ptr %i.z, align 8, !tbaa !35
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !82 ; 6 uses
  %.not.i70 = icmp eq i32 %i.fr, 0
  br i1 %.not.i70, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit79, label %.preheader.i71

.preheader.i71:                                   ; preds = %bb.k
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.i73, label %._crit_edge.i72

.lr.ph.i73:                                       ; preds = %.preheader.i71
  %i.ft = load ptr, ptr %i.fh, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i74 = zext nneg i32 %i.fr to i64 ; 2 uses
  %xtraiter183 = and i64 %wide.trip.count.i74, 1
  %i.fu = icmp eq i32 %i.fr, 1
  br i1 %i.fu, label %.epil.preheader182, label %.lr.ph.i73.new

.lr.ph.i73.new:                                   ; preds = %.lr.ph.i73
  %unroll_iter192 = and i64 %wide.trip.count.i74, 2147483646
  br label %bb.l

._crit_edge.i72.loopexit.unr-lcssa:               ; preds = %bb.l
  %lcmp.mod188.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod188.not, label %._crit_edge.i72, label %.epil.preheader182

.epil.preheader182:                               ; preds = %._crit_edge.i72.loopexit.unr-lcssa, %.lr.ph.i73
  %indvars.iv.i75.epil.init = phi i64 [ 0, %.lr.ph.i73 ], [ %indvars.iv.next.i77.1, %._crit_edge.i72.loopexit.unr-lcssa ]
  %.epil.init185 = phi float [ 0.000000e+00, %.lr.ph.i73 ], [ %i.hl, %._crit_edge.i72.loopexit.unr-lcssa ]
  %.epil.init187 = phi <2 x float> [ zeroinitializer, %.lr.ph.i73 ], [ %i.hh, %._crit_edge.i72.loopexit.unr-lcssa ]
  %lcmp.mod191 = trunc i32 %i.fr to i1
  call void @llvm.assume(i1 %lcmp.mod191)
  %.idx.i76.epil = shl nuw nsw i64 %indvars.iv.i75.epil.init, 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx.i76.epil ; 2 uses
  %i.fw = load <2 x i32>, ptr %i.fv, align 4, !tbaa !37
  %i.fx = sitofp <2 x i32> %i.fw to <2 x float>
  %i.fy = fadd <2 x float> %.epil.init187, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !37
  %i.gb = sitofp i32 %i.ga to float
  %i.gc = fadd float %.epil.init185, %i.gb
  br label %._crit_edge.i72

._crit_edge.i72:                                  ; preds = %.epil.preheader182, %._crit_edge.i72.loopexit.unr-lcssa, %.preheader.i71
  %i.gd = phi float [ 0.000000e+00, %.preheader.i71 ], [ %i.hl, %._crit_edge.i72.loopexit.unr-lcssa ], [ %i.gc, %.epil.preheader182 ]
  %i.ge = phi <2 x float> [ zeroinitializer, %.preheader.i71 ], [ %i.hh, %._crit_edge.i72.loopexit.unr-lcssa ], [ %i.fy, %.epil.preheader182 ]
  %i.gf = sitofp i32 %i.fr to float
  %i.gg = fdiv nnan float 1.000000e+00, %i.gf
  %i.gh = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x float> %i.d, %i.gi            ; 2 uses
  %i.gk = fmul <2 x float> %i.gj, %i.ge
  %i.gl = extractelement <2 x float> %i.gj, i64 0
  %i.gm = fmul float %i.gl, %i.gd
  %5 = load <2 x float>, ptr %i.b, align 4
  %i.gn = load float, ptr %i.aa, align 8, !tbaa !35
  %i.go = call float @llvm.fmuladd.f32(float %i.ac, float 4.000000e+00, float %i.gn)
  %i.gp = insertelement <2 x float> %5, float %i.go, i64 1
  %i.gq = fadd <2 x float> %i.gk, %i.gp
  store <2 x float> %i.gq, ptr %i.a, align 8, !tbaa !35
  %i.gr = load float, ptr %i.ab, align 4, !tbaa !35
  %i.gs = fadd float %i.gm, %i.gr
  store float %i.gs, ptr %i.z, align 8, !tbaa !35
  br label %_ZL16getContourCenterPK9rcContourPKfffPf.exit79

bb.l:                                             ; preds = %bb.l, %.lr.ph.i73.new
  %indvars.iv.i75 = phi i64 [ 0, %.lr.ph.i73.new ], [ %indvars.iv.next.i77.1, %bb.l ] ; 3 uses
  %i.gt = phi float [ 0.000000e+00, %.lr.ph.i73.new ], [ %i.hl, %bb.l ]
  %i.gu = phi <2 x float> [ zeroinitializer, %.lr.ph.i73.new ], [ %i.hh, %bb.l ]
  %niter193 = phi i64 [ 0, %.lr.ph.i73.new ], [ %niter193.next.1, %bb.l ]
  %.idx.i76 = shl nuw nsw i64 %indvars.iv.i75, 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx.i76 ; 2 uses
  %i.gw = load <2 x i32>, ptr %i.gv, align 4, !tbaa !37
  %i.gx = sitofp <2 x i32> %i.gw to <2 x float>
  %i.gy = fadd <2 x float> %i.gu, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !37
  %i.hb = sitofp i32 %i.ha to float
  %i.hc = fadd float %i.gt, %i.hb
  %indvars.iv.next.i77 = shl i64 %indvars.iv.i75, 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvars.iv.next.i77 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load <2 x i32>, ptr %i.he, align 4, !tbaa !37
  %i.hg = sitofp <2 x i32> %i.hf to <2 x float>
  %i.hh = fadd <2 x float> %i.gy, %i.hg           ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !37
  %i.hk = sitofp i32 %i.hj to float
  %i.hl = fadd float %i.hc, %i.hk                 ; 3 uses
  %indvars.iv.next.i77.1 = add nuw nsw i64 %indvars.iv.i75, 2 ; 2 uses
  %niter193.next.1 = add i64 %niter193, 2         ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %._crit_edge.i72.loopexit.unr-lcssa, label %bb.l

_ZL16getContourCenterPK9rcContourPKfffPf.exit79:  ; preds = %bb.k, %._crit_edge.i72
  %i.hm = load ptr, ptr %0, align 8, !tbaa !14
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i32 noundef %i.fp) #6, !call_target !87
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.hp = load i32, ptr %i.h, align 8, !tbaa !78
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next122, %i.hq
  br i1 %i.hr, label %bb.k, label %._crit_edge103

bb.m:                                             ; preds = %bb.a, %._crit_edge103
  ret void
}

declare void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @_Z22duDebugDrawRawContoursP11duDebugDrawRK12rcContourSetf(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !35 ; 4 uses
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.e = fmul float %2, 2.550000e+02
  %i.f = fptoui float %i.e to i8                  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %bb.b
  %i.m = zext i8 %i.f to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = extractelement <2 x float> %i.c, i64 0   ; 3 uses
  br label %bb.c

._crit_edge101:                                   ; preds = %._crit_edge, %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.s = load ptr, ptr %0, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 2.000000e+00) #6, !call_target !24
  %i.v = load i32, ptr %i.j, align 8, !tbaa !78
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %._crit_edge101
  %i.x = zext i8 %i.f to i32                      ; 2 uses
  %i.y = shl nuw i32 %i.x, 24
  %i.z = or disjoint i32 %i.y, 16777215
  %i.aa = extractelement <2 x float> %i.c, i64 1
  %i.ab = fmul float %i.aa, 2.000000e+00
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = extractelement <2 x float> %i.c, i64 0
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph100, %._crit_edge
  %indvars.iv112 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next113, %._crit_edge ] ; 4 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv112 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !84
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.ai, i32 noundef %i.m) #6 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !108
  %i.am = icmp sgt i32 %i.al, 0
  %.pre123 = load float, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  %i.an = load <2 x float>, ptr %i.n, align 8, !tbaa !35 ; 2 uses
  %.pre129 = load ptr, ptr %0, align 8, !tbaa !14 ; 2 uses
  br i1 %i.am, label %bb.d, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.c
  %.pre130 = trunc nuw nsw i64 %indvars.iv112 to i32
  %.pre131 = and i32 %.pre130, 1
  %.pre133 = add nuw nsw i32 %.pre131, 1
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv112 to i32
  %i.aq = and i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 3 uses
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !109 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !37
  %i.au = sitofp i32 %i.at to float
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.o, float %.pre123)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37
  %i.ay = add i32 %i.ar, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !37
  %i.bb = insertelement <2 x i32> poison, i32 %i.ay, i64 0
  %i.bc = insertelement <2 x i32> %i.bb, i32 %i.ba, i64 1
  %i.bd = sitofp <2 x i32> %i.bc to <2 x float>
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.d, <2 x float> %i.an) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre129, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = extractelement <2 x float> %i.be, i64 0
  %i.bi = extractelement <2 x float> %i.be, i64 1
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.av, float noundef %i.bh, float noundef %i.bi, i32 noundef %i.aj) #6, !call_target !74
  %.pre = load i32, ptr %i.ak, align 8, !tbaa !108
  %i.bj = icmp sgt i32 %.pre, 1
  br i1 %i.bj, label %.peel.next, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.peel.next, %bb.d
  %.pre122 = load float, ptr %i.a, align 4, !tbaa !35
  %i.bk = load <2 x float>, ptr %i.n, align 8, !tbaa !35
  %.pre128 = load ptr, ptr %0, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi134 = phi i32 [ %.pre133, %.._crit_edge_crit_edge ], [ %i.ar, %._crit_edge.loopexit ]
  %i.bl = phi ptr [ %.pre129, %.._crit_edge_crit_edge ], [ %.pre128, %._crit_edge.loopexit ]
  %i.bm = phi float [ %.pre123, %.._crit_edge_crit_edge ], [ %.pre122, %._crit_edge.loopexit ]
  %i.bn = phi <2 x float> [ %i.an, %.._crit_edge_crit_edge ], [ %i.bk, %._crit_edge.loopexit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !109 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !37
  %i.br = sitofp i32 %i.bq to float
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.o, float %i.bm)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !37
  %i.bv = add i32 %.pre-phi134, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !37
  %i.by = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %i.bz = insertelement <2 x i32> %i.by, i32 %i.bx, i64 1
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.d, <2 x float> %i.bn) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = extractelement <2 x float> %i.cb, i64 0
  %i.cf = extractelement <2 x float> %i.cb, i64 1
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bs, float noundef %i.ce, float noundef %i.cf, i32 noundef %i.aj) #6, !call_target !74
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.cg = load i32, ptr %i.j, align 8, !tbaa !78
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next113, %i.ch
  br i1 %i.ci, label %bb.c, label %._crit_edge101

.peel.next:                                       ; preds = %bb.d, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.d ] ; 2 uses
  %i.cj = load ptr, ptr %i.ao, align 8, !tbaa !109
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx ; 3 uses
  %i.cl = load float, ptr %i.a, align 4, !tbaa !35
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !37
  %i.cn = sitofp i32 %i.cm to float
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.o, float %i.cl) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !37
end_hunk_1
