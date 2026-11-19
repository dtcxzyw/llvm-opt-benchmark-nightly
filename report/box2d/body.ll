Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/body?download=true
inline.NumInlined: 207
inline.NumDeleted: 28
begin_hunk_0_@b2Body_GetContactData:bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 26
  store i16 %i.aw, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !125
  %i.ax = tail call ptr @b2GetContactSim(ptr noundef nonnull %i.c, ptr noundef nonnull %i.t) #13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.ay, ptr noundef nonnull align 4 dereferenceable(112) %i.az, i64 112, i1 false), !tbaa.struct !217
  %i.ba = add nsw i32 %.04851, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.ba, %bb.d ], [ %.04851, %bb.c ] ; 3 uses
  %i.bb = zext nneg i32 %i.q to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.047 = load i32, ptr %i.bd, align 4, !tbaa !16 ; 2 uses
  %i.be = icmp ne i32 %.047, -1
  %i.bf = icmp slt i32 %.1, %2
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %bb.c, label %.loopexit, !llvm.loop !213

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1, %bb.e ]
  ret i32 %.0
}

declare ptr @b2GetContactSim(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b2Body_ComputeAABB(i64 %0) local_unnamed_addr #9 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorldLocked(i32 noundef %i.b) #13 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = shl i64 %0, 32
  %sext.i = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = getelementptr inbounds [104 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !147  ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !110
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [104 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !82
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.r, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !28
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [96 x i8], ptr %i.w, i64 %i.z
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !136 ; 2 uses
  %i.ad = sext i32 %i.k to i64
  %i.ae = getelementptr inbounds [296 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !148 ; 2 uses
  %.not34 = icmp eq i32 %i.ah, -1
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.ai = phi i32 [ %i.au, %.lr.ph ], [ %i.ah, %bb.d ]
  %.sroa.8.036 = phi <2 x float> [ %i.as, %.lr.ph ], [ %.sroa.8.0.copyload, %bb.d ] ; 2 uses
  %.sroa.022.035 = phi <2 x float> [ %i.aq, %.lr.ph ], [ %.sroa.022.0.copyload, %bb.d ] ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [296 x i8], ptr %i.ac, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load <2 x float>, ptr %i.al, align 8    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.ao = load <2 x float>, ptr %i.an, align 8    ; 2 uses
  %i.ap = fcmp olt <2 x float> %.sroa.022.035, %i.am
  %i.aq = select <2 x i1> %i.ap, <2 x float> %.sroa.022.035, <2 x float> %i.am ; 2 uses
  %i.ar = fcmp ogt <2 x float> %.sroa.8.036, %i.ao
  %i.as = select <2 x i1> %i.ar, <2 x float> %.sroa.8.036, <2 x float> %i.ao ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !148 ; 2 uses
  %.not = icmp eq i32 %i.au, -1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !218

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a
  %.sroa.022.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.022.0.copyload, %bb.d ], [ %i.aq, %.lr.ph ]
  %.sroa.8.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.8.0.copyload, %bb.d ], [ %i.as, %.lr.ph ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.022.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.8.2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define hidden void @b2UpdateBodyMassData(ptr noundef %0, ptr nofree noundef captures(none) initializes((52, 60)) %1) local_unnamed_addr #9 {
bb.a:
  %2 = alloca %struct.b2MassData, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !82
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [88 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [96 x i8], ptr %i.g, i64 %i.j ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !96
  %i.n = and i32 %i.m, -1025
  store i32 %i.n, ptr %i.l, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store <2 x float> zeroinitializer, ptr %i.o, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <2 x float> zeroinitializer, ptr %i.q, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store i64 0, ptr %i.s, align 4, !tbaa !15
  %i.t = tail call float @b2GetLengthUnitsPerMeter() #13
  %i.u = fmul float %i.t, 1.000000e+05
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 5 uses
  store float %i.u, ptr %i.v, align 4, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !104
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.y = load i32, ptr %i.x, align 4, !tbaa !113  ; 2 uses
  %.not = icmp eq i32 %i.y, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aa = load i64, ptr %i.k, align 4, !tbaa !15  ; 2 uses
  store i64 %i.aa, ptr %i.z, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.aa, ptr %i.ab, align 4, !tbaa !15
  %i.ac = icmp eq i32 %i.y, 1
  br i1 %i.ac, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0145 = load i32, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %.not113146 = icmp eq i32 %.0145, -1
  br i1 %.not113146, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2144
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0147 = phi i32 [ %.0145, %.lr.ph ], [ %.0, %bb.d ]
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136
  %i.ag = sext i32 %.0147 to i64
  %i.ah = getelementptr inbounds [296 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = tail call <2 x float> @b2ComputeShapeExtent(ptr noundef %i.ah, <2 x float> zeroinitializer) #13 ; 3 uses
  %i.aj = load <2 x float>, ptr %i.v, align 4, !tbaa !15 ; 3 uses
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.am = fcmp olt <2 x float> %i.ak, %i.al
  %i.an = select <2 x i1> %i.am, <2 x float> %i.aj, <2 x float> %i.ai
  store <2 x float> %i.an, ptr %i.v, align 4, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.0 = load i32, ptr %i.ao, align 4, !tbaa !16   ; 2 uses
  %.not113 = icmp eq i32 %.0, -1
  br i1 %.not113, label %.loopexit, label %bb.d, !llvm.loop !219

bb.e:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !149 ; 3 uses
  %i.ar = shl i32 %i.aq, 4
  %i.as = tail call ptr @b2StackAlloc(ptr noundef nonnull %0, i32 noundef %i.ar, ptr noundef nonnull @.str) #13 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !147 ; 2 uses
  %.not110148 = icmp eq i32 %i.au, -1
  br i1 %.not110148, label %._crit_edge, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph152, %bb.i
  %.sroa.034.0151 = phi <2 x float> [ zeroinitializer, %.lr.ph152 ], [ %.sroa.034.1, %bb.i ] ; 2 uses
  %.0104150 = phi i32 [ %i.au, %.lr.ph152 ], [ %i.ba, %bb.i ]
  %.0104150.a = phi i32 [ 0, %.lr.ph152 ], [ %.1106, %bb.i ] ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !136
  %i.ax = sext i32 %.0104150 to i64
  %i.ay = getelementptr inbounds [296 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !148 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !223
  %i.bd = fcmp oeq float %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %3 = zext nneg i32 %.0104150.a to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br label %bb.i, !llvm.loop !220

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bf = tail call { <2 x float>, <2 x float> } @b2ComputeShapeMass(ptr noundef nonnull %i.ay) #13 ; 2 uses
  %i.bg = extractvalue { <2 x float>, <2 x float> } %i.bf, 0 ; 3 uses
  store <2 x float> %i.bg, ptr %2, align 8
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bf, 1
  store <2 x float> %i.bh, ptr %.8..8..8..8..sroa_idx, align 8
  %i.bi = extractelement <2 x float> %i.bg, i64 0
  %i.bj = load float, ptr %i.o, align 4, !tbaa !150
  %i.bk = fadd float %i.bi, %i.bj
  store float %i.bk, ptr %i.o, align 4, !tbaa !150
  %.4..4..4..4. = load <2 x float>, ptr %.4..4..4..4..sroa_idx, align 4
  %i.bl = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, %.4..4..4..4.
  %i.bn = fadd <2 x float> %.sroa.034.0151, %i.bm
  %4 = zext nneg i32 %.0104150.a to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !151
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.034.1 = phi <2 x float> [ %.sroa.034.0151, %bb.g ], [ %i.bn, %bb.h ] ; 2 uses
  %.1106 = add nuw nsw i32 %.0104150.a, 1
  %.not110 = icmp eq i32 %i.ba, -1
  br i1 %.not110, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.i, %bb.e
  %.sroa.034.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.e ], [ %.sroa.034.1, %bb.i ] ; 2 uses
  %i.bp = load float, ptr %i.o, align 4, !tbaa !150 ; 2 uses
  %i.bq = fcmp ogt float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.br = fdiv float 1.000000e+00, %i.bp          ; 2 uses
  store float %i.br, ptr %i.q, align 4, !tbaa !152
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %.sroa.034.0.lcssa, %i.bt
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.sroa.034.2 = phi <2 x float> [ %i.bu, %bb.j ], [ %.sroa.034.0.lcssa, %._crit_edge ] ; 5 uses
  %i.bv = icmp sgt i32 %i.aq, 0
  br i1 %i.bv, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph155, %bb.n
  %indvars.iv163 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next164, %bb.n ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv163 ; 3 uses
  %.sroa.014.0.copyload = load float, ptr %i.bw, align 4, !tbaa !15 ; 2 uses
  %i.bx = fcmp oeq float %.sroa.014.0.copyload, 0.000000e+00
  br i1 %i.bx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %i.by = fsub <2 x float> %.sroa.034.2, %.sroa.5.0.copyload ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by
  %i.ca = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bz)
  %i.cb = fmul float %.sroa.014.0.copyload, %i.ca
  %i.cc = fadd float %.sroa.6.0.copyload, %i.cb
  %i.cd = load float, ptr %i.p, align 8, !tbaa !153
  %i.ce = fadd float %i.cd, %i.cc
  store float %i.ce, ptr %i.p, align 8, !tbaa !153
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge156, label %bb.l, !llvm.loop !221

._crit_edge156:                                   ; preds = %bb.n, %bb.k
  tail call void @b2StackFree(ptr noundef nonnull %0, ptr noundef %i.as) #13
  %i.cf = load float, ptr %i.p, align 8, !tbaa !153 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.o, label %bb.q

bb.o:                                             ; preds = %._crit_edge156
  %i.ch = load i32, ptr %i.l, align 8, !tbaa !96
  %i.ci = and i32 %i.ch, 4
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = fdiv float 1.000000e+00, %i.cf
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %._crit_edge156
  store float 0.000000e+00, ptr %i.p, align 8, !tbaa !153
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge = phi float [ 0.000000e+00, %bb.q ], [ %i.ck, %bb.p ]
  store float %storemerge, ptr %i.r, align 4, !tbaa !154
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.cl, align 4, !tbaa !15
  store <2 x float> %.sroa.034.2, ptr %i.s, align 4, !tbaa !15
  %i.cm = load <2 x float>, ptr %i.k, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.co = load <2 x float>, ptr %i.cn, align 4    ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = shufflevector <2 x float> %.sroa.034.2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = fmul <2 x float> %i.cq, %i.cr           ; 2 uses
  %i.ct = shufflevector <2 x float> %.sroa.034.2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cu = fmul <2 x float> %i.ct, %i.co           ; 2 uses
  %i.cv = fadd <2 x float> %i.cs, %i.cu
  %i.cw = fsub <2 x float> %i.cs, %i.cu
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> %i.cw, <2 x i32> <i32 0, i32 3>
  %i.cy = fadd <2 x float> %i.cp, %i.cx           ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  store <2 x float> %i.cz, ptr %i.cl, align 4, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <2 x float> %i.cz, ptr %i.da, align 4, !tbaa !15
  %i.db = load i32, ptr %i.c, align 8, !tbaa !82
  %i.dc = icmp eq i32 %i.db, 2
  br i1 %i.dc, label %b2GetBodyState.exit, label %b2GetBodyState.exit.thread

b2GetBodyState.exit:                              ; preds = %bb.r
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 192
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !95 ; 2 uses
  %.not111 = icmp eq ptr %i.df, null
  br i1 %.not111, label %b2GetBodyState.exit.thread, label %bb.s

bb.s:                                             ; preds = %b2GetBodyState.exit
  %i.dg = load i32, ptr %i.h, align 4, !tbaa !28
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [32 x i8], ptr %i.df, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !106
  %i.dl = shufflevector <2 x float> %.sroa.010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dm = load <2 x float>, ptr %i.di, align 4    ; 2 uses
  %i.dn = fsub <2 x float> %i.cy, %i.dl
  %i.do = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dn, %i.dp           ; 2 uses
  %i.dr = fsub <2 x float> %i.dm, %i.dq
  %i.ds = fadd <2 x float> %i.dm, %i.dq
  %i.dt = shufflevector <2 x float> %i.dr, <2 x float> %i.ds, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dt, ptr %i.di, align 4, !tbaa !15
  br label %b2GetBodyState.exit.thread

b2GetBodyState.exit.thread:                       ; preds = %bb.r, %bb.s, %b2GetBodyState.exit
  %.1157 = load i32, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  %.not112158 = icmp eq i32 %.1157, -1
  br i1 %.not112158, label %.loopexit, label %.lr.ph160

.lr.ph160:                                        ; preds = %b2GetBodyState.exit.thread
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2144
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph160, %bb.t
  %.1159 = phi i32 [ %.1157, %.lr.ph160 ], [ %.1, %bb.t ]
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !136
  %i.dw = sext i32 %.1159 to i64
  %i.dx = getelementptr inbounds [296 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.dy = tail call <2 x float> @b2ComputeShapeExtent(ptr noundef %i.dx, <2 x float> %.sroa.034.2) #13 ; 3 uses
  %i.dz = load <2 x float>, ptr %i.v, align 4, !tbaa !15 ; 3 uses
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> %i.dy, <2 x i32> <i32 0, i32 3>
  %i.eb = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.ec = fcmp olt <2 x float> %i.ea, %i.eb
  %i.ed = select <2 x i1> %i.ec, <2 x float> %i.dz, <2 x float> %i.dy
  store <2 x float> %i.ed, ptr %i.v, align 4, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %.1 = load i32, ptr %i.ee, align 4, !tbaa !16   ; 2 uses
  %.not112 = icmp eq i32 %.1, -1
  br i1 %.not112, label %.loopexit, label %bb.t, !llvm.loop !222

.loopexit:                                        ; preds = %bb.d, %bb.t, %bb.c, %b2GetBodyState.exit.thread, %bb.b
  ret void
}

declare <2 x float> @b2ComputeShapeExtent(ptr noundef, <2 x float>) local_unnamed_addr #6

declare ptr @b2StackAlloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare { <2 x float>, <2 x float> } @b2ComputeShapeMass(ptr noundef) local_unnamed_addr #6

declare void @b2StackFree(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define <2 x float> @b2Body_GetPosition(i64 %0) local_unnamed_addr #9 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [88 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [96 x i8], ptr %i.o, i64 %i.r
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.s, align 4, !tbaa !15
  ret <2 x float> %.sroa.0.0.copyload.i
}

declare ptr @b2GetWorld(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define <2 x float> @b2Body_GetRotation(i64 %0) local_unnamed_addr #9 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13 ; 2 uses
end_hunk_0
