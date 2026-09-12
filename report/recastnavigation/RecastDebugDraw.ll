Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDebugDraw?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z37duDebugDrawCompactHeightfieldDistanceP11duDebugDrawRK20rcCompactHeightfield:bb.a
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
  %3 = lshr i16 %i.ap, 8
  %i.as = lshr i32 %i.j, 24                       ; 2 uses
  %i.at = lshr i32 %i.j, 16                       ; 2 uses
  %i.au = lshr i32 %i.j, 8
  %i.av = trunc nuw i32 %i.at to i16
  %4 = and i16 %i.av, 255
  %i.aw = trunc nuw nsw i32 %i.as to i16
  %5 = insertelement <4 x i16> poison, i16 %3, i64 0
  %6 = insertelement <4 x i16> %5, i16 %4, i64 1
  %7 = insertelement <4 x i16> %6, i16 %i.aw, i64 2
  %8 = mul nuw <4 x i16> %7, <i16 223, i16 223, i16 223, i16 poison> ; 2 uses
  %9 = shufflevector <4 x i16> %8, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ax = extractelement <4 x i16> %8, i64 0
  %i.ay = udiv i16 %i.ax, 255
  %.zext103 = zext nneg i16 %i.ay to i32
  %i.az = shl nuw nsw i32 %.zext103, 8
  %10 = add nuw <4 x i16> %9, <i16 6144, i16 0, i16 2048, i16 8160>
  %11 = udiv <4 x i16> %10, splat (i16 255)       ; 4 uses
  %12 = extractelement <4 x i16> %11, i64 0
  %.zext95 = zext nneg i16 %12 to i32
  %13 = shl nuw nsw i32 %.zext95, 8
  %i.ba = extractelement <4 x i16> %11, i64 1
  %.zext105 = zext nneg i16 %i.ba to i32
  %i.bb = extractelement <4 x i16> %11, i64 2
  %.zext107 = zext nneg i16 %i.bb to i32
  %i.bc = shl nuw nsw i32 %.zext105, 16
  %i.bd = or i32 %i.az, %i.bc
  %i.be = or i32 %i.bd, %.zext101
  %i.bf = shl nuw i32 %.zext107, 24               ; 2 uses
  %i.bg = or i32 %i.be, %i.bf
  %i.bh = extractelement <4 x i16> %11, i64 3
  %.zext97 = zext nneg i16 %i.bh to i32
  %i.bi = shl nuw nsw i32 %.zext97, 16
  %i.bj = or i32 %13, %i.bi
  %i.bk = or i32 %i.bj, %.zext101
  %i.bl = or i32 %i.bk, %i.bf
  %i.bm = and i32 %i.at, 255
  %i.bn = and i32 %i.au, 255
  %i.bo = and i32 %i.j, 255
  %i.bp = mul nuw nsw i32 %i.bo, 223
  %i.bq = mul nuw nsw i32 %i.bn, 223
  %i.br = mul nuw nsw i32 %i.bm, 223
  %i.bs = mul nuw nsw i32 %i.as, 223
  %brmerge = select i1 %i.al, i1 true, i1 %i.an
  br i1 %brmerge, label %._crit_edge110.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bt = zext nneg i32 %i.f to i64               ; 2 uses
  %wide.trip.count116 = zext nneg i32 %i.h to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv113 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next114, %._crit_edge ] ; 3 uses
  %i.bu = mul nuw nsw i64 %indvars.iv113, %i.bt
  %i.bv = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 1
  br label %bb.j

._crit_edge110.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.by = load ptr, ptr %0, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.cb = load <2 x float>, ptr %i.a, align 8, !tbaa !35
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 4 uses
  %i.cd = load i32, ptr %i.e, align 8, !tbaa !98  ; 2 uses
  %i.ce = load i32, ptr %i.g, align 4, !tbaa !99  ; 2 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24, !inline_history !95
  %i.ci = icmp sgt i32 %i.ce, 0
  br i1 %i.ci, label %.preheader59.lr.ph.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit

.preheader59.lr.ph.i:                             ; preds = %._crit_edge110.split
  %i.cj = icmp sgt i32 %i.cd, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  br i1 %i.cj, label %.preheader59.preheader.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit

.preheader59.preheader.i:                         ; preds = %.preheader59.lr.ph.i
  %i.cm = zext nneg i32 %i.cd to i64              ; 2 uses
  %wide.trip.count69.i = zext nneg i32 %i.ce to i64
  br label %.preheader59.i

.preheader59.i:                                   ; preds = %._crit_edge.i, %.preheader59.preheader.i
  %indvars.iv66.i = phi i64 [ 0, %.preheader59.preheader.i ], [ %indvars.iv.next67.i, %._crit_edge.i ] ; 3 uses
  %i.cn = mul nuw nsw i64 %indvars.iv66.i, %i.cm
  %i.co = trunc i64 %indvars.iv66.i to i32        ; 2 uses
  %i.cp = sitofp i32 %i.co to float               ; 2 uses
  %i.cq = add i32 %i.co, 1
  %i.cr = sitofp i32 %i.cq to float               ; 2 uses
  %i.cs = insertelement <4 x float> poison, float %i.cp, i64 2 ; 2 uses
  %i.ct = insertelement <4 x float> poison, float %i.cr, i64 2 ; 2 uses
  %i.cu = insertelement <4 x float> %i.cs, float %i.cr, i64 3
  %i.cv = insertelement <4 x float> %i.ct, float %i.cp, i64 3
  br label %bb.b

._crit_edge.i:                                    ; preds = %.loopexit.i
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit, label %.preheader59.i

bb.b:                                             ; preds = %.loopexit.i, %.preheader59.i
  %indvars.iv.i = phi i64 [ 0, %.preheader59.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %i.cw = add nuw nsw i64 %indvars.iv.i, %i.cn    ; 5 uses
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !36  ; 2 uses
  %i.da = icmp eq i8 %i.cz, -1
  br i1 %i.da, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.db = zext i8 %i.cz to i32
  %i.dc = add nuw nsw i32 %i.db, 2
  %i.dd = uitofp nneg i32 %i.dc to float          ; 4 uses
  %i.de = load ptr, ptr %i.cl, align 8, !tbaa !101
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !36
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %i.di = and i32 %i.dh, 16
  %.not.i = icmp eq i32 %i.di, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.dj = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dk = sitofp i32 %i.dj to float
  %i.dl = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dn = insertelement <4 x float> %i.cu, float %i.dk, i64 0
  %i.do = insertelement <4 x float> %i.dn, float %i.dd, i64 1
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.cc, <4 x float> %i.dm) ; 4 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = extractelement <4 x float> %i.dp, i64 0 ; 2 uses
  %i.du = extractelement <4 x float> %i.dp, i64 1 ; 2 uses
  %i.dv = extractelement <4 x float> %i.dp, i64 2
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dt, float noundef %i.du, float noundef %i.dv, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.dw = load ptr, ptr %0, align 8, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = extractelement <4 x float> %i.dp, i64 3
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dt, float noundef %i.du, float noundef %i.dz, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre.i = load ptr, ptr %i.cl, align 8, !tbaa !101
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.cw
  %.pre71.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !36
  %.pre78.i = zext i8 %.pre71.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.pre-phi.i = phi i32 [ %i.dh, %.preheader.i ], [ %.pre78.i, %bb.c ] ; 2 uses
  %i.ea = and i32 %.pre-phi.i, 32
  %.not.1.i = icmp eq i32 %i.ea, 0
  br i1 %.not.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eb = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.ec = sitofp i32 %i.eb to float
  %i.ed = add i32 %i.eb, 1
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.eg = shufflevector <3 x float> %i.ef, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.eh = insertelement <4 x float> %i.ct, float %i.ec, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.dd, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.ee, i64 3
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.cc, <4 x float> %i.eg) ; 4 uses
  %i.el = load ptr, ptr %0, align 8, !tbaa !14
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = extractelement <4 x float> %i.ek, i64 0
  %i.ep = extractelement <4 x float> %i.ek, i64 1 ; 2 uses
  %i.eq = extractelement <4 x float> %i.ek, i64 2 ; 2 uses
  tail call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.eo, float noundef %i.ep, float noundef %i.eq, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.er = load ptr, ptr %0, align 8, !tbaa !14
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = extractelement <4 x float> %i.ek, i64 3
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.eu, float noundef %i.ep, float noundef %i.eq, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre72.i = load ptr, ptr %i.cl, align 8, !tbaa !101
  %.phi.trans.insert73.i = getelementptr inbounds nuw i8, ptr %.pre72.i, i64 %i.cw
  %.pre74.i = load i8, ptr %.phi.trans.insert73.i, align 1, !tbaa !36
  %.pre79.i = zext i8 %.pre74.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi80.i = phi i32 [ %.pre79.i, %bb.e ], [ %.pre-phi.i, %bb.d ] ; 2 uses
  %i.ev = and i32 %.pre-phi80.i, 64
  %.not.2.i = icmp eq i32 %i.ev, 0
  br i1 %.not.2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ew = trunc i64 %indvars.iv.i to i32
  %i.ex = add i32 %i.ew, 1
  %i.ey = sitofp i32 %i.ex to float
  %i.ez = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.fa = shufflevector <3 x float> %i.ez, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fb = insertelement <4 x float> %i.cv, float %i.ey, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.dd, i64 1
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.cc, <4 x float> %i.fa) ; 4 uses
  %i.fe = load ptr, ptr %0, align 8, !tbaa !14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = extractelement <4 x float> %i.fd, i64 0 ; 2 uses
  %i.fi = extractelement <4 x float> %i.fd, i64 1 ; 2 uses
  %i.fj = extractelement <4 x float> %i.fd, i64 2
  tail call void %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fh, float noundef %i.fi, float noundef %i.fj, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.fk = load ptr, ptr %0, align 8, !tbaa !14
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = extractelement <4 x float> %i.fd, i64 3
  tail call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fh, float noundef %i.fi, float noundef %i.fn, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre75.i = load ptr, ptr %i.cl, align 8, !tbaa !101
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %.pre75.i, i64 %i.cw
  %.pre77.i = load i8, ptr %.phi.trans.insert76.i, align 1, !tbaa !36
  %.pre81.i = zext i8 %.pre77.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi82.i = phi i32 [ %.pre81.i, %bb.g ], [ %.pre-phi80.i, %bb.f ]
  %i.fo = and i32 %.pre-phi82.i, 128
  %.not.3.i = icmp eq i32 %i.fo, 0
  br i1 %.not.3.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fp = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.fq = add i32 %i.fp, 1
  %i.fr = sitofp i32 %i.fq to float
  %i.fs = sitofp i32 %i.fp to float
  %i.ft = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.fu = shufflevector <3 x float> %i.ft, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fv = insertelement <4 x float> %i.cs, float %i.fr, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %i.dd, i64 1
end_hunk_0
begin_hunk_1_@_Z22duDebugDrawRawContoursP11duDebugDrawRK12rcContourSetf:bb.a
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
  %i.cr = add i32 %i.ar, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !37
  %i.cu = load <2 x float>, ptr %i.n, align 8, !tbaa !35
  %i.cv = insertelement <2 x i32> poison, i32 %i.cr, i64 0
  %i.cw = insertelement <2 x i32> %i.cv, i32 %i.ct, i64 1
  %i.cx = sitofp <2 x i32> %i.cw to <2 x float>
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.d, <2 x float> %i.cu) ; 2 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.dd = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.co, float noundef %i.dc, float noundef %i.dd, i32 noundef %i.aj) #6, !call_target !74
  %i.de = load ptr, ptr %0, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.co, float noundef %i.dc, float noundef %i.dd, i32 noundef %i.aj) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = load i32, ptr %i.ak, align 8, !tbaa !108
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !107

._crit_edge109:                                   ; preds = %._crit_edge105, %._crit_edge101
  %i.dk = load ptr, ptr %0, align 8, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph108, %._crit_edge105
  %indvars.iv118 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next119, %._crit_edge105 ] ; 3 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !79
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %indvars.iv118 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !84
  %i.dr = zext i16 %i.dq to i32
  %i.ds = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.dr, i32 noundef %i.x) #6 ; 2 uses
  %i.dt = lshr i32 %i.ds, 1
  %i.du = and i32 %i.dt, 8355711
  %i.dv = and i32 %i.ds, -16777216
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !108
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.eb = trunc nuw nsw i64 %indvars.iv118 to i32
  %i.ec = and i32 %i.eb, 1
  %i.ed = add nuw nsw i32 %i.ec, 1
  br label %bb.f

._crit_edge105:                                   ; preds = %bb.f, %bb.e
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.ee = load i32, ptr %i.j, align 8, !tbaa !78
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next119, %i.ef
  br i1 %i.eg, label %bb.e, label %._crit_edge109

bb.f:                                             ; preds = %.lr.ph104, %bb.f
  %indvars.iv115 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next116, %bb.f ] ; 2 uses
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !109
  %.idx136 = shl nuw nsw i64 %indvars.iv115, 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx136 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !37
  %i.el = and i32 %i.ek, 65536
  %.not95 = icmp eq i32 %i.el, 0                  ; 2 uses
  %.089 = select i1 %.not95, float 0.000000e+00, float %i.ab
  %.0 = select i1 %.not95, i32 %i.dw, i32 %i.z
  %i.em = load float, ptr %i.a, align 4, !tbaa !35
  %i.en = load i32, ptr %i.ei, align 4, !tbaa !37
  %i.eo = sitofp i32 %i.en to float
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ad, float %i.em)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !37
  %i.es = add i32 %i.ed, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !37
  %i.ev = load <2 x float>, ptr %i.ac, align 8, !tbaa !35
  %i.ew = insertelement <2 x i32> poison, i32 %i.es, i64 0
  %i.ex = insertelement <2 x i32> %i.ew, i32 %i.eu, i64 1
  %i.ey = sitofp <2 x i32> %i.ex to <2 x float>
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.d, <2 x float> %i.ev) ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = fadd float %.089, %i.fa
  %i.fc = load ptr, ptr %0, align 8, !tbaa !14
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = extractelement <2 x float> %i.ez, i64 1
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ep, float noundef %i.fb, float noundef %i.ff, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.fg = load i32, ptr %i.dx, align 8, !tbaa !108
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next116, %i.fh
  br i1 %i.fi, label %bb.f, label %._crit_edge105

bb.g:                                             ; preds = %bb.a, %._crit_edge109
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z19duDebugDrawContoursP11duDebugDrawRK12rcContourSetf(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !35 ; 5 uses
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.e = fmul float %2, 2.550000e+02
  %i.f = fptoui float %i.e to i8                  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.500000e+00) #6, !call_target !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %bb.b
  %i.m = zext i8 %i.f to i32                      ; 2 uses
  %i.n = shl nuw nsw i32 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = extractelement <2 x float> %i.c, i64 0   ; 3 uses
  %i.r = extractelement <2 x float> %i.c, i64 1
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.v = load ptr, ptr %0, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 3.000000e+00) #6, !call_target !24
  %i.y = load i32, ptr %i.j, align 8, !tbaa !78
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %._crit_edge
  %i.aa = zext i8 %i.f to i32                     ; 2 uses
  %i.ab = shl nuw i32 %i.aa, 24
  %i.ac = or disjoint i32 %i.ab, 16777215
  %i.ad = extractelement <2 x float> %i.c, i64 1
  %i.ae = fmul float %i.ad, 2.000000e+00
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = extractelement <2 x float> %i.c, i64 0
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph111, %.loopexit
  %indvars.iv121 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next122, %.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %indvars.iv121 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !82
  %.not99 = icmp eq i32 %i.ak, 0
  br i1 %.not99, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.am = load i16, ptr %i.al, align 4, !tbaa !84
  %i.an = zext i16 %i.am to i32
  %i.ao = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.an, i32 noundef %i.m) #6 ; 4 uses
  %i.ap = lshr i32 %i.ao, 16
  %3 = lshr i32 %i.ao, 24
  %4 = trunc i32 %i.ao to i16                     ; 2 uses
  %5 = and i16 %4, 255
  %6 = lshr i16 %4, 8
  %i.aq = trunc nuw i32 %i.ap to i16
  %7 = and i16 %i.aq, 255
  %8 = mul nuw nsw i32 %3, 127
  %9 = add nuw nsw i32 %8, %i.n
  %.lhs.trunc105 = trunc nuw i32 %9 to i16
  %i.ar = insertelement <4 x i16> poison, i16 %5, i64 0
  %i.as = insertelement <4 x i16> %i.ar, i16 %6, i64 1
  %i.at = insertelement <4 x i16> %i.as, i16 %7, i64 2
  %10 = insertelement <4 x i16> %i.at, i16 %.lhs.trunc105, i64 3
  %i.au = mul nuw nsw <4 x i16> %10, <i16 127, i16 127, i16 127, i16 1>
  %i.av = add nuw <4 x i16> %i.au, <i16 32640, i16 32640, i16 32640, i16 0>
  %i.aw = udiv <4 x i16> %i.av, splat (i16 255)   ; 4 uses
  %i.ax = extractelement <4 x i16> %i.aw, i64 0
  %.zext = zext nneg i16 %i.ax to i32
  %11 = extractelement <4 x i16> %i.aw, i64 1
  %.zext102 = zext nneg i16 %11 to i32
  %12 = extractelement <4 x i16> %i.aw, i64 2
  %.zext104 = zext nneg i16 %12 to i32
  %i.ay = extractelement <4 x i16> %i.aw, i64 3
  %.zext106 = zext nneg i16 %i.ay to i32
  %i.az = shl nuw nsw i32 %.zext102, 8
  %13 = or i32 %i.az, %.zext
  %14 = shl nuw nsw i32 %.zext104, 16
  %15 = shl nuw i32 %.zext106, 24
  %i.ba = or disjoint i32 %13, %15
  %i.bb = or i32 %i.ba, %14
  %i.bc = load i32, ptr %i.aj, align 8, !tbaa !82 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.be = add nsw i32 %i.bc, -1
  %i.bf = trunc nuw nsw i64 %indvars.iv121 to i32
  %i.bg = and i32 %i.bf, 1
  %i.bh = add nuw nsw i32 %i.bg, 1                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.095108 = phi i32 [ %i.be, %.lr.ph ], [ %i.df, %bb.e ]
  %i.bi = load ptr, ptr %i.ai, align 8, !tbaa !83 ; 2 uses
  %i.bj = shl nsw i32 %.095108, 2
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !37
  %i.bp = and i32 %i.bo, 131072
  %.not100 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not100, i32 %i.ao, i32 %i.bb ; 2 uses
  %i.br = load float, ptr %i.a, align 4, !tbaa !35
  %i.bs = load i32, ptr %i.bl, align 4, !tbaa !37
  %i.bt = sitofp i32 %i.bs to float
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.q, float %i.br)
  %i.bv = load float, ptr %i.o, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !37
  %i.by = add i32 %i.bh, %i.bx
  %i.bz = sitofp i32 %i.by to float
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.r, float %i.bv)
  %i.cb = load float, ptr %i.p, align 4, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.ce = sitofp i32 %i.cd to float
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.q, float %i.cb)
  %i.cg = load ptr, ptr %0, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bu, float noundef %i.ca, float noundef %i.cf, i32 noundef %i.bq) #6, !call_target !74
  %i.cj = load float, ptr %i.a, align 4, !tbaa !35
  %i.ck = load i32, ptr %i.bm, align 4, !tbaa !37
  %i.cl = sitofp i32 %i.ck to float
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.q, float %i.cj)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !37
  %i.cp = add i32 %i.bh, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !37
  %i.cs = load <2 x float>, ptr %i.o, align 8, !tbaa !35
  %i.ct = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %i.cu = insertelement <2 x i32> %i.ct, i32 %i.cr, i64 1
  %i.cv = sitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.d, <2 x float> %i.cs) ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = extractelement <2 x float> %i.cw, i64 0
  %i.db = extractelement <2 x float> %i.cw, i64 1
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cm, float noundef %i.da, float noundef %i.db, i32 noundef %i.bq) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load i32, ptr %i.aj, align 8, !tbaa !82
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next, %i.dd
  %i.df = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.de, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.dg = load i32, ptr %i.j, align 8, !tbaa !78
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next122, %i.dh
  br i1 %i.di, label %bb.c, label %._crit_edge

._crit_edge119:                                   ; preds = %._crit_edge115, %._crit_edge
  %i.dj = load ptr, ptr %0, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph118, %._crit_edge115
  %indvars.iv127 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next128, %._crit_edge115 ] ; 3 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !79
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %indvars.iv127 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !84
  %i.dq = zext i16 %i.dp to i32
  %i.dr = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.dq, i32 noundef %i.aa) #6 ; 2 uses
  %i.ds = lshr i32 %i.dr, 1
  %i.dt = and i32 %i.ds, 8355711
  %i.du = and i32 %i.dr, -16777216
  %i.dv = or disjoint i32 %i.dt, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !82
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.f
  %i.dz = trunc nuw nsw i64 %indvars.iv127 to i32
  %i.ea = and i32 %i.dz, 1
  %i.eb = add nuw nsw i32 %i.ea, 1
  br label %bb.g

._crit_edge115:                                   ; preds = %bb.g, %bb.f
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.ec = load i32, ptr %i.j, align 8, !tbaa !78
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next128, %i.ed
  br i1 %i.ee, label %bb.f, label %._crit_edge119

bb.g:                                             ; preds = %.lr.ph114, %bb.g
  %indvars.iv124 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next125, %bb.g ] ; 2 uses
  %i.ef = load ptr, ptr %i.dn, align 8, !tbaa !83
  %.idx132 = shl nuw nsw i64 %indvars.iv124, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx132 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !37
  %i.ej = and i32 %i.ei, 65536
  %.not98 = icmp eq i32 %i.ej, 0                  ; 2 uses
  %.091 = select i1 %.not98, float 0.000000e+00, float %i.ae
  %.0 = select i1 %.not98, i32 %i.dv, i32 %i.ac
  %i.ek = load float, ptr %i.a, align 4, !tbaa !35
  %i.el = load i32, ptr %i.eg, align 4, !tbaa !37
  %i.em = sitofp i32 %i.el to float
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float %i.ag, float %i.ek)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !37
  %i.eq = add i32 %i.eb, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !37
  %i.et = load <2 x float>, ptr %i.af, align 8, !tbaa !35
  %i.eu = insertelement <2 x i32> poison, i32 %i.eq, i64 0
  %i.ev = insertelement <2 x i32> %i.eu, i32 %i.es, i64 1
  %i.ew = sitofp <2 x i32> %i.ev to <2 x float>
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.d, <2 x float> %i.et) ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = fadd float %.091, %i.ey
  %i.fa = load ptr, ptr %0, align 8, !tbaa !14
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = extractelement <2 x float> %i.ex, i64 1
  tail call void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.en, float noundef %i.ez, float noundef %i.fd, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.fe = load i32, ptr %i.dw, align 8, !tbaa !82
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next125, %i.ff
  br i1 %i.fg, label %bb.g, label %._crit_edge115

bb.h:                                             ; preds = %bb.a, %._crit_edge119
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z19duDebugDrawPolyMeshP11duDebugDrawRK10rcPolyMesh(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112
  %.fr207 = freeze i32 %i.b                       ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !35 ; 3 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.f = extractelement <2 x float> %i.d, i64 1   ; 5 uses
  %i.g = extractelement <2 x float> %i.d, i64 0   ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 8 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2, float noundef 1.000000e+00) #6, !call_target !24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !113  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = shl i32 %.fr207, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = icmp sgt i32 %.fr207, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br i1 %i.r, label %.lr.ph184.split.us.preheader, label %.lr.ph184.split

.lr.ph184.split.us.preheader:                     ; preds = %.lr.ph184
  %wide.trip.count = zext nneg i32 %.fr207 to i64
  br label %.lr.ph184.split.us

.lr.ph184.split.us:                               ; preds = %.lr.ph184.split.us.preheader, %._crit_edge.us
  %indvars.iv216 = phi i64 [ 0, %.lr.ph184.split.us.preheader ], [ %indvars.iv.next217, %._crit_edge.us ] ; 3 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.v = trunc nuw nsw i64 %indvars.iv216 to i32
  %i.w = mul i32 %i.p, %i.v
end_hunk_1
