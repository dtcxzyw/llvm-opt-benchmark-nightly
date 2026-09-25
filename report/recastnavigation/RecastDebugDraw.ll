Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDebugDraw?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z36duDebugDrawCompactHeightfieldRegionsP11duDebugDrawRK20rcCompactHeightfield:bb.a
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ar, float noundef %i.bo, float noundef %i.aq, i32 noundef %.0) #6, !call_target !74
  %i.bw = load ptr, ptr %0, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ar, float noundef %i.bo, float noundef %i.bb, i32 noundef %.0) #6, !call_target !74
  %i.bz = load ptr, ptr %0, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bc, float noundef %i.bo, float noundef %i.bb, i32 noundef %.0) #6, !call_target !74
  %i.cc = load ptr, ptr %0, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bc, float noundef %i.bo, float noundef %i.aq, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.cf, label %bb.d, label %._crit_edge.loopexit

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
  %i.ak = phi i32 [ %i.bn, %._crit_edge73.loopexit ], [ %i.ab, %.preheader ]
  %i.al = phi i32 [ %i.bn, %._crit_edge73.loopexit ], [ %i.ac, %.preheader ]
  %i.am = add nuw nsw i32 %.06674, 1              ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.aj
  br i1 %i.an, label %.preheader, label %._crit_edge75, !llvm.loop !92

bb.d:                                             ; preds = %.lr.ph72, %._crit_edge
  %i.ao = phi i32 [ %i.ab, %.lr.ph72 ], [ %i.bn, %._crit_edge ]
  %i.ap = phi i32 [ %i.ac, %.lr.ph72 ], [ %i.bn, %._crit_edge ]
  %.06571 = phi i32 [ 0, %.lr.ph72 ], [ %i.bo, %._crit_edge ] ; 3 uses
  %i.aq = load float, ptr %i.r, align 4, !tbaa !35
  %i.ar = uitofp nneg i32 %.06571 to float
  %i.as = load float, ptr %i.s, align 4, !tbaa !35
  %i.at = insertelement <2 x float> %i.af, float %i.ar, i64 0
  %i.au = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.as, i64 1
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.z, <2 x float> %i.av) ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 1 ; 3 uses
  %i.ay = extractelement <2 x float> %i.aw, i64 0 ; 3 uses
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.ba = mul nuw nsw i32 %i.ap, %.06674
  %i.bb = add nsw i32 %i.ba, %.06571
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4            ; 3 uses
  %i.bf = lshr i32 %i.be, 24                      ; 2 uses
  %.not76 = icmp eq i32 %i.bf, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.bg = and i32 %i.be, 16777215
  %i.bh = add nuw nsw i32 %i.bg, %i.bf
  %i.bi = fadd float %i.d, %i.ax                  ; 2 uses
  %i.bj = fadd float %i.d, %i.ay                  ; 2 uses
  %i.bk = and i32 %i.be, 16777215
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = zext nneg i32 %i.bh to i64
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %1, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.bn = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ao, %bb.d ] ; 5 uses
  %i.bo = add nuw nsw i32 %.06571, 1              ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.bn
  br i1 %i.bp, label %bb.d, label %._crit_edge73.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.bl, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = load float, ptr %i.v, align 8, !tbaa !35
  %i.bt = load i16, ptr %i.br, align 4, !tbaa !71
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 1
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.f, float %i.bs) ; 4 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !75
  %i.cb = uitofp i16 %i.ca to float
  %i.cc = fmul float %i.k, %i.cb
  %i.cd = fptoui float %i.cc to i8
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul nuw nsw i32 %i.ce, 65793
  %i.cg = or disjoint i32 %i.cf, -16777216        ; 4 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ay, float noundef %i.bx, float noundef %i.ax, i32 noundef %i.cg) #6, !call_target !74
  %i.ck = load ptr, ptr %0, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ay, float noundef %i.bx, float noundef %i.bi, i32 noundef %i.cg) #6, !call_target !74
  %i.cn = load ptr, ptr %0, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bj, float noundef %i.bx, float noundef %i.bi, i32 noundef %i.cg) #6, !call_target !74
  %i.cq = load ptr, ptr %0, align 8, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bj, float noundef %i.bx, float noundef %i.ax, i32 noundef %i.cg) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next, %i.bm
  br i1 %i.ct, label %bb.e, label %._crit_edge.loopexit

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
  %i.j = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.i, i32 noundef 255) #6 ; 6 uses
  %i.k = load float, ptr %1, align 8, !tbaa !35
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
  %i.x = insertelement <4 x float> poison, float %i.k, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.p, i64 1
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.w, <4 x float> %i.z) ; 4 uses
  %i.ab = and i32 %i.j, 16777215
  %i.ac = or disjoint i32 %i.ab, -2147483648
  %i.ad = extractelement <4 x float> %i.aa, i64 0
  %i.ae = extractelement <4 x float> %i.aa, i64 1
  %i.af = extractelement <4 x float> %i.aa, i64 2
  %i.ag = extractelement <4 x float> %i.aa, i64 3
  tail call void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef %0, float noundef %i.ad, float noundef %i.n, float noundef %i.af, float noundef %i.ae, float noundef %i.r, float noundef %i.ag, i32 noundef %i.ac, float noundef 2.000000e+00) #6
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #6, !call_target !24
  %i.ak = icmp sgt i32 %i.h, 0
  br i1 %i.ak, label %.preheader.lr.ph, label %._crit_edge110.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.al = icmp slt i32 %i.f, 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = icmp eq i32 %i.h, 255
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = trunc i32 %i.j to i16                   ; 2 uses
  %i.aq = and i16 %i.ap, 255
  %.lhs.trunc100 = mul nuw i16 %i.aq, 223
  %i.ar = udiv i16 %.lhs.trunc100, 255
  %.zext101 = zext nneg i16 %i.ar to i32          ; 2 uses
  %i.as = lshr i16 %i.ap, 8
  %3 = lshr i32 %i.j, 24                          ; 2 uses
  %4 = lshr i32 %i.j, 16                          ; 2 uses
  %5 = lshr i32 %i.j, 8
  %i.at = trunc nuw i32 %4 to i16
  %i.au = and i16 %i.at, 255
  %6 = trunc nuw nsw i32 %3 to i16
  %7 = insertelement <4 x i16> poison, i16 %i.as, i64 0
  %8 = insertelement <4 x i16> %7, i16 %i.au, i64 1
  %9 = insertelement <4 x i16> %8, i16 %6, i64 2
  %10 = mul nuw <4 x i16> %9, <i16 223, i16 223, i16 223, i16 poison> ; 2 uses
  %11 = shufflevector <4 x i16> %10, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %12 = extractelement <4 x i16> %10, i64 0
  %13 = udiv i16 %12, 255
  %.zext103 = zext nneg i16 %13 to i32
  %14 = shl nuw nsw i32 %.zext103, 8
  %15 = add nuw <4 x i16> %11, <i16 6144, i16 0, i16 2048, i16 8160>
  %i.av = udiv <4 x i16> %15, splat (i16 255)     ; 4 uses
  %16 = extractelement <4 x i16> %i.av, i64 0
  %.zext95 = zext nneg i16 %16 to i32
  %17 = shl nuw nsw i32 %.zext95, 8
  %i.aw = extractelement <4 x i16> %i.av, i64 1
  %.zext105 = zext nneg i16 %i.aw to i32
  %i.ax = extractelement <4 x i16> %i.av, i64 2
  %.zext107 = zext nneg i16 %i.ax to i32
  %i.ay = shl nuw nsw i32 %.zext105, 16
  %i.az = or i32 %14, %i.ay
  %i.ba = or i32 %i.az, %.zext101
  %i.bb = shl nuw i32 %.zext107, 24               ; 2 uses
  %i.bc = or i32 %i.ba, %i.bb
  %i.bd = extractelement <4 x i16> %i.av, i64 3
  %.zext97.a = zext nneg i16 %i.bd to i32
  %18 = shl nuw nsw i32 %.zext97.a, 16
  %19 = or i32 %17, %18
  %20 = or i32 %19, %.zext101
  %21 = or i32 %20, %i.bb
  %22 = and i32 %4, 255
  %23 = and i32 %5, 255
  %24 = and i32 %i.j, 255
  %25 = mul nuw nsw i32 %24, 223
  %26 = mul nuw nsw i32 %23, 223
  %27 = mul nuw nsw i32 %22, 223
  %28 = mul nuw nsw i32 %3, 223
  %brmerge = select i1 %i.al, i1 true, i1 %i.an
  br i1 %brmerge, label %._crit_edge110.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.be = zext nneg i32 %i.f to i64               ; 2 uses
  %wide.trip.count116 = zext nneg i32 %i.h to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv113 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next114, %._crit_edge ] ; 3 uses
  %i.bf = mul nuw nsw i64 %indvars.iv113, %i.be
  %i.bg = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.bh = uitofp nneg i32 %i.bg to float
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 1
  br label %bb.j

._crit_edge110.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.bj = load ptr, ptr %0, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.bm = load <2 x float>, ptr %i.a, align 8, !tbaa !35
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 4 uses
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !98  ; 2 uses
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !99  ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24, !inline_history !95
  %i.bt = icmp sgt i32 %i.bp, 0
  br i1 %i.bt, label %.preheader59.lr.ph.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit

.preheader59.lr.ph.i:                             ; preds = %._crit_edge110.split
  %i.bu = icmp sgt i32 %i.bo, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  br i1 %i.bu, label %.preheader59.preheader.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit

.preheader59.preheader.i:                         ; preds = %.preheader59.lr.ph.i
  %i.bx = zext nneg i32 %i.bo to i64              ; 2 uses
  %wide.trip.count69.i = zext nneg i32 %i.bp to i64
  br label %.preheader59.i

.preheader59.i:                                   ; preds = %._crit_edge.i, %.preheader59.preheader.i
  %indvars.iv66.i = phi i64 [ 0, %.preheader59.preheader.i ], [ %indvars.iv.next67.i, %._crit_edge.i ] ; 3 uses
  %i.by = mul nuw nsw i64 %indvars.iv66.i, %i.bx
  %i.bz = trunc i64 %indvars.iv66.i to i32        ; 2 uses
  %i.ca = sitofp i32 %i.bz to float               ; 2 uses
  %i.cb = add i32 %i.bz, 1
  %i.cc = sitofp i32 %i.cb to float               ; 2 uses
  %i.cd = insertelement <4 x float> poison, float %i.ca, i64 2 ; 2 uses
  %i.ce = insertelement <4 x float> poison, float %i.cc, i64 2 ; 2 uses
  %i.cf = insertelement <4 x float> %i.cd, float %i.cc, i64 3
  %i.cg = insertelement <4 x float> %i.ce, float %i.ca, i64 3
  br label %bb.b

._crit_edge.i:                                    ; preds = %.loopexit.i
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit, label %.preheader59.i

bb.b:                                             ; preds = %.loopexit.i, %.preheader59.i
  %indvars.iv.i = phi i64 [ 0, %.preheader59.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %i.ch = add nuw nsw i64 %indvars.iv.i, %i.by    ; 5 uses
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !100
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !36  ; 2 uses
  %i.cl = icmp eq i8 %i.ck, -1
  br i1 %i.cl, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.cm = zext i8 %i.ck to i32
  %i.cn = add nuw nsw i32 %i.cm, 2
  %i.co = uitofp nneg i32 %i.cn to float          ; 4 uses
  %i.cp = load ptr, ptr %i.bw, align 8, !tbaa !101
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !36
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = and i32 %i.cs, 16
  %.not.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.cu = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cv = sitofp i32 %i.cu to float
  %i.cw = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.cx = shufflevector <3 x float> %i.cw, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cy = insertelement <4 x float> %i.cf, float %i.cv, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.co, i64 1
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.bn, <4 x float> %i.cx) ; 4 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = extractelement <4 x float> %i.da, i64 0 ; 2 uses
  %i.df = extractelement <4 x float> %i.da, i64 1 ; 2 uses
  %i.dg = extractelement <4 x float> %i.da, i64 2
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.de, float noundef %i.df, float noundef %i.dg, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.dh = load ptr, ptr %0, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = extractelement <4 x float> %i.da, i64 3
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.de, float noundef %i.df, float noundef %i.dk, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre.i = load ptr, ptr %i.bw, align 8, !tbaa !101
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ch
  %.pre71.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !36
  %.pre78.i = zext i8 %.pre71.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.pre-phi.i = phi i32 [ %i.cs, %.preheader.i ], [ %.pre78.i, %bb.c ] ; 2 uses
  %i.dl = and i32 %.pre-phi.i, 32
  %.not.1.i = icmp eq i32 %i.dl, 0
  br i1 %.not.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dm = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.dn = sitofp i32 %i.dm to float
  %i.do = add i32 %i.dm, 1
  %i.dp = sitofp i32 %i.do to float
  %i.dq = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.dr = shufflevector <3 x float> %i.dq, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ds = insertelement <4 x float> %i.ce, float %i.dn, i64 0
  %i.dt = insertelement <4 x float> %i.ds, float %i.co, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.dp, i64 3
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.bn, <4 x float> %i.dr) ; 4 uses
  %i.dw = load ptr, ptr %0, align 8, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = extractelement <4 x float> %i.dv, i64 0
  %i.ea = extractelement <4 x float> %i.dv, i64 1 ; 2 uses
  %i.eb = extractelement <4 x float> %i.dv, i64 2 ; 2 uses
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dz, float noundef %i.ea, float noundef %i.eb, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.ec = load ptr, ptr %0, align 8, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = extractelement <4 x float> %i.dv, i64 3
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ef, float noundef %i.ea, float noundef %i.eb, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre72.i = load ptr, ptr %i.bw, align 8, !tbaa !101
  %.phi.trans.insert73.i = getelementptr inbounds nuw i8, ptr %.pre72.i, i64 %i.ch
  %.pre74.i = load i8, ptr %.phi.trans.insert73.i, align 1, !tbaa !36
  %.pre79.i = zext i8 %.pre74.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi80.i = phi i32 [ %.pre79.i, %bb.e ], [ %.pre-phi.i, %bb.d ] ; 2 uses
  %i.eg = and i32 %.pre-phi80.i, 64
  %.not.2.i = icmp eq i32 %i.eg, 0
  br i1 %.not.2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eh = trunc i64 %indvars.iv.i to i32
  %i.ei = add i32 %i.eh, 1
  %i.ej = sitofp i32 %i.ei to float
  %i.ek = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.el = shufflevector <3 x float> %i.ek, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.em = insertelement <4 x float> %i.cg, float %i.ej, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.co, i64 1
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.bn, <4 x float> %i.el) ; 4 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = extractelement <4 x float> %i.eo, i64 0 ; 2 uses
  %i.et = extractelement <4 x float> %i.eo, i64 1 ; 2 uses
  %i.eu = extractelement <4 x float> %i.eo, i64 2
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.es, float noundef %i.et, float noundef %i.eu, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.ev = load ptr, ptr %0, align 8, !tbaa !14
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = extractelement <4 x float> %i.eo, i64 3
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.es, float noundef %i.et, float noundef %i.ey, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre75.i = load ptr, ptr %i.bw, align 8, !tbaa !101
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %.pre75.i, i64 %i.ch
  %.pre77.i = load i8, ptr %.phi.trans.insert76.i, align 1, !tbaa !36
  %.pre81.i = zext i8 %.pre77.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi82.i = phi i32 [ %.pre81.i, %bb.g ], [ %.pre-phi80.i, %bb.f ]
  %i.ez = and i32 %.pre-phi82.i, 128
  %.not.3.i = icmp eq i32 %i.ez, 0
  br i1 %.not.3.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fa = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.fb = add i32 %i.fa, 1
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = sitofp i32 %i.fa to float
  %i.fe = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.ff = shufflevector <3 x float> %i.fe, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fg = insertelement <4 x float> %i.cd, float %i.fc, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.co, i64 1
  %i.fi = insertelement <4 x float> %i.fh, float %i.fd, i64 3
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.bn, <4 x float> %i.ff) ; 4 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !14
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = extractelement <4 x float> %i.fj, i64 0
  %i.fo = extractelement <4 x float> %i.fj, i64 1 ; 2 uses
  %i.fp = extractelement <4 x float> %i.fj, i64 2 ; 2 uses
  tail call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fn, float noundef %i.fo, float noundef %i.fp, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.fq = load ptr, ptr %0, align 8, !tbaa !14
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = extractelement <4 x float> %i.fj, i64 3
  tail call void %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ft, float noundef %i.fo, float noundef %i.fp, i32 noundef -1) #6, !call_target !74, !inline_history !95
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bx
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit: ; preds = %._crit_edge.i, %._crit_edge110.split, %.preheader59.lr.ph.i
  %i.fu = load ptr, ptr %0, align 8, !tbaa !14
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33, !inline_history !95
  ret void

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge110.split, label %.preheader

bb.j:                                             ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.fx = add nuw nsw i64 %indvars.iv, %i.bf      ; 2 uses
  %i.fy = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !36
  %i.gb = zext i8 %i.ga to i32
  %i.gc = load ptr, ptr %i.ao, align 8, !tbaa !102
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fx
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.ge, label %bb.l [
    i8 63, label %bb.m
    i8 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.gf = zext i8 %i.ge to i32
  %i.gg = load ptr, ptr %0, align 8, !tbaa !14
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 80
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = tail call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gf) #6, !call_target !56 ; 4 uses
  %i.gk = lshr i32 %i.gj, 19
  %i.gl = lshr i32 %i.gj, 11
  %i.gm = lshr i32 %i.gj, 3
  %i.gn = shl i32 %i.gj, 5
  %29 = and i32 %i.gk, 8160
  %30 = and i32 %i.gl, 8160
  %31 = and i32 %i.gm, 8160
  %32 = and i32 %i.gn, 8160
  %33 = add nuw nsw i32 %29, %28
  %34 = add nuw nsw i32 %30, %27
  %35 = add nuw nsw i32 %31, %26
  %36 = add nuw nsw i32 %32, %25
  %.lhs.trunc90 = trunc i32 %33 to i16
  %.lhs.trunc88 = trunc i32 %34 to i16
  %.lhs.trunc86 = trunc i32 %35 to i16
  %.lhs.trunc = trunc i32 %36 to i16
  %37 = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %38 = insertelement <4 x i16> %37, i16 %.lhs.trunc86, i64 1
  %39 = insertelement <4 x i16> %38, i16 %.lhs.trunc88, i64 2
  %40 = insertelement <4 x i16> %39, i16 %.lhs.trunc90, i64 3
  %i.go = udiv <4 x i16> %40, splat (i16 255)
  %i.gp = zext nneg <4 x i16> %i.go to <4 x i32>
  %i.gq = shl nuw <4 x i32> %i.gp, <i32 0, i32 8, i32 16, i32 24>
  %i.gr = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gq)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.0 = phi i32 [ %i.gr, %bb.l ], [ %i.bc, %bb.k ], [ %21, %bb.j ] ; 4 uses
  %i.gs = load float, ptr %1, align 8, !tbaa !35
  %i.gt = trunc nuw nsw i64 %indvars.iv to i32
  %i.gu = uitofp nneg i32 %i.gt to float
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.b, float %i.gs) ; 3 uses
  %i.gw = add nuw nsw i32 %i.gb, 1
  %i.gx = uitofp nneg i32 %i.gw to float
  %i.gy = load <2 x float>, ptr %i.m, align 4, !tbaa !35
  %i.gz = insertelement <2 x float> %i.bi, float %i.gx, i64 0
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.d, <2 x float> %i.gy) ; 2 uses
  %i.hb = load ptr, ptr %0, align 8, !tbaa !14
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = extractelement <2 x float> %i.ha, i64 0 ; 4 uses
  %i.hf = extractelement <2 x float> %i.ha, i64 1 ; 3 uses
  tail call void %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gv, float noundef %i.he, float noundef %i.hf, i32 noundef %.0) #6, !call_target !74
  %i.hg = fadd float %i.b, %i.hf                  ; 2 uses
  %i.hh = load ptr, ptr %0, align 8, !tbaa !14
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8
  tail call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gv, float noundef %i.he, float noundef %i.hg, i32 noundef %.0) #6, !call_target !74
  %i.hk = fadd float %i.b, %i.gv                  ; 2 uses
  %i.hl = load ptr, ptr %0, align 8, !tbaa !14
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hk, float noundef %i.he, float noundef %i.hg, i32 noundef %.0) #6, !call_target !74
  %i.ho = load ptr, ptr %0, align 8, !tbaa !14
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hk, float noundef %i.he, float noundef %i.hf, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.be
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
  store <2 x float> %i.ck, ptr %i.a, align 8, !tbaa !35
  store float %i.ci, ptr %i.n, align 8, !tbaa !35
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
  %i.ad = phi i32 [ %i.i, %.lr.ph95 ], [ %i.cj, %._crit_edge ] ; 2 uses
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
end_hunk_0
