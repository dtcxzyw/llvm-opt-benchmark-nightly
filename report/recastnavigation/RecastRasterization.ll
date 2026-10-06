Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastRasterization?download=true
inline.NumInlined: 45
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z20rcRasterizeTrianglesP9rcContextPKfiPKtPKhiR13rcHeightfieldi:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %.not40 = icmp slt i32 %5, 1
  br i1 %.not40, label %.critedge37, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.h = load <2 x float>, ptr %i.g, align 8, !tbaa !67
  %i.i = fdiv <2 x float> splat (float 1.000000e+00), %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  %wide.trip.count = zext nneg i32 %5 to i64
  %i.l = extractelement <2 x float> %i.i, i64 0
  %i.m = extractelement <2 x float> %i.i, i64 1
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge37, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.idx44 = mul nuw nsw i64 %indvars.iv, 6
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %.idx44 ; 3 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !82
  %i.p = zext i16 %i.o to i64
  %.idx = mul nuw nsw i64 %i.p, 12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !82
  %i.t = zext i16 %i.s to i64
  %.idx34 = mul nuw nsw i64 %i.t, 12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.idx34
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !82
  %i.x = zext i16 %i.w to i64
  %.idx35 = mul nuw nsw i64 %i.x, 12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.idx35
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !70
  %i.ab = load float, ptr %i.g, align 8, !tbaa !71
  %i.ac = tail call fastcc noundef zeroext i1 @_ZL12rasterizeTriPKfS0_S0_hR13rcHeightfieldS0_S0_fffi(ptr noundef %i.q, ptr noundef %i.u, ptr noundef %i.y, i8 noundef zeroext %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.j, ptr noundef %i.k, float noundef %i.ab, float noundef %i.l, float noundef %i.m, i32 noundef %7)
  br i1 %i.ac, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.3) #7
  br label %.critedge37

.critedge37:                                      ; preds = %bb.c, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit, %bb.d
  %.not39 = phi i1 [ false, %bb.d ], [ true, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ true, %bb.c ]
  %i.ad = load i8, ptr %i.a, align 1, !tbaa !25, !range !26, !noundef !27
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %_ZN13rcScopedTimerD2Ev.exit

bb.e:                                             ; preds = %.critedge37
  %i.af = load ptr, ptr %0, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2) #7, !call_target !68, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.critedge37, %bb.e
  ret i1 %.not39
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z20rcRasterizeTrianglesP9rcContextPKfPKhiR13rcHeightfieldi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2) #7, !call_target !35, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.not35 = icmp slt i32 %3, 1
  br i1 %.not35, label %.critedge32, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.h = load <2 x float>, ptr %i.g, align 8, !tbaa !67
  %i.i = fdiv <2 x float> splat (float 1.000000e+00), %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 20
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.l = extractelement <2 x float> %i.i, i64 0
  %i.m = extractelement <2 x float> %i.i, i64 1
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge32, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 36
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.o = mul i64 %indvars.iv, 38654705664
  %sext = add i64 %i.o, 12884901888
  %i.p = ashr exact i64 %sext, 30
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = mul i64 %indvars.iv, 38654705664
  %sext39 = add i64 %i.r, 25769803776
  %i.s = ashr exact i64 %sext39, 30
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !70
  %i.w = load float, ptr %i.g, align 8, !tbaa !71
  %i.x = tail call fastcc noundef zeroext i1 @_ZL12rasterizeTriPKfS0_S0_hR13rcHeightfieldS0_S0_fffi(ptr noundef %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t, i8 noundef zeroext %i.v, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.j, ptr noundef %i.k, float noundef %i.w, float noundef %i.l, float noundef %i.m, i32 noundef %5)
  br i1 %i.x, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.3) #7
  br label %.critedge32

.critedge32:                                      ; preds = %bb.c, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit, %bb.d
  %.not34 = phi i1 [ false, %bb.d ], [ true, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ true, %bb.c ]
  %i.y = load i8, ptr %i.a, align 1, !tbaa !25, !range !26, !noundef !27
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZN13rcScopedTimerD2Ev.exit

bb.e:                                             ; preds = %.critedge32
  %i.aa = load ptr, ptr %0, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2) #7, !call_target !68, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.critedge32, %bb.e
  ret i1 %.not34
}

declare noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL10dividePolyPKfiPfPiS1_S2_f6rcAxis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5, float noundef %6, i32 noundef range(i32 0, 3) %7) unnamed_addr #4 {
bb.a:
  %i.a = alloca [12 x float], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge95

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %7 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c ; 5 uses
  %min.iters.check = icmp ult i32 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader109, label %vector.ph

.lr.ph.preheader109:                              ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.d = and i64 %wide.trip.count, 3              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub nsw i64 %wide.trip.count, %i.f     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.g = mul nuw nsw i64 %index, 12
  %i.h = mul nuw i64 %index, 12
  %i.i = mul nuw i64 %index, 12
  %i.j = mul nuw i64 %index, 12
  %i.k = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.r = load float, ptr %i.k, align 4, !tbaa !67
  %i.s = load float, ptr %i.m, align 4, !tbaa !67
  %i.t = load float, ptr %i.o, align 4, !tbaa !67
  %i.u = load float, ptr %i.q, align 4, !tbaa !67
  %i.v = insertelement <4 x float> poison, float %i.r, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.s, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.t, i64 2
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 3
  %i.z = fsub <4 x float> %broadcast.splat, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.z, ptr %i.aa, align 16, !tbaa !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %.lr.ph.preheader109, label %vector.body, !llvm.loop !83

.lr.ph94.preheader:                               ; preds = %.lr.ph
  %i.ac = add nsw i32 %1, -1                      ; 2 uses
  %wide.trip.count101 = zext nneg i32 %1 to i64
  %.phi.trans.insert = zext nneg i32 %i.ac to i64
  %.phi.trans.insert103 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert103, align 4, !tbaa !67
  br label %.lr.ph94

.lr.ph:                                           ; preds = %.lr.ph.preheader109, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader109 ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx
  %i.ad = load float, ptr %gep, align 4, !tbaa !67
  %i.ae = fsub float %6, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.ae, ptr %i.af, align 4, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94.preheader, label %.lr.ph, !llvm.loop !84

._crit_edge95:                                    ; preds = %bb.i, %bb.a
  %.081.lcssa = phi i32 [ 0, %bb.a ], [ %.4, %bb.i ]
  %.080.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %bb.i ]
  store i32 %.081.lcssa, ptr %3, align 4, !tbaa !69
  store i32 %.080.lcssa, ptr %5, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %bb.i
  %8 = phi float [ %.pre, %.lr.ph94.preheader ], [ %i.ah, %bb.i ] ; 3 uses
  %indvars.iv98 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next99, %bb.i ] ; 6 uses
  %.092 = phi i32 [ %i.ac, %.lr.ph94.preheader ], [ %i.dp, %bb.i ]
  %.08090 = phi i32 [ 0, %.lr.ph94.preheader ], [ %.3, %bb.i ] ; 6 uses
  %.08189 = phi i32 [ 0, %.lr.ph94.preheader ], [ %.4, %bb.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv98
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !67 ; 6 uses
  %i.ai = fcmp oge float %i.ah, 0.000000e+00      ; 2 uses
  %i.aj = fcmp ult float %8, 0.000000e+00
  %i.ak = xor i1 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph94
  %i.al = fsub float %8, %i.ah
  %i.am = fdiv float %8, %i.al                    ; 3 uses
  %i.an = mul nsw i32 %.092, 3
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ao ; 3 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !67 ; 2 uses
  %.idx108 = mul nuw nsw i64 %indvars.iv98, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.idx108 ; 5 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !67
  %i.at = fsub float %i.as, %i.aq
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.am, float %i.aq) ; 2 uses
  %i.av = mul nsw i32 %.08189, 3
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aw ; 3 uses
  store float %i.au, ptr %i.ax, align 4, !tbaa !67
  %i.ay = getelementptr i8, ptr %i.ap, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !67 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 3 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !67
  %i.bc = fsub float %i.bb, %i.az
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.am, float %i.az)
  %i.be = getelementptr i8, ptr %i.ax, i64 4      ; 2 uses
  store float %i.bd, ptr %i.be, align 4, !tbaa !67
  %i.bf = getelementptr i8, ptr %i.ap, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !67 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !67
  %i.bj = fsub float %i.bi, %i.bg
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.am, float %i.bg)
  %i.bl = getelementptr i8, ptr %i.ax, i64 8      ; 2 uses
  store float %i.bk, ptr %i.bl, align 4, !tbaa !67
  %i.bm = mul nsw i32 %.08090, 3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bn ; 3 uses
  store float %i.au, ptr %i.bo, align 4, !tbaa !67
  %i.bp = load float, ptr %i.be, align 4, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store float %i.bp, ptr %i.bq, align 4, !tbaa !67
  %i.br = load float, ptr %i.bl, align 4, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %i.br, ptr %i.bs, align 4, !tbaa !67
  %i.bt = add nsw i32 %.08189, 1                  ; 3 uses
  %i.bu = add nsw i32 %.08090, 1                  ; 3 uses
  %i.bv = fcmp ogt float %i.ah, 0.000000e+00
  br i1 %i.bv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bw = mul nsw i32 %i.bt, 3
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bx ; 3 uses
  %i.bz = load float, ptr %i.ar, align 4, !tbaa !67
  store float %i.bz, ptr %i.by, align 4, !tbaa !67
  %i.ca = load float, ptr %i.ba, align 4, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store float %i.ca, ptr %i.cb, align 4, !tbaa !67
  %i.cc = load float, ptr %i.bh, align 4, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store float %i.cc, ptr %i.cd, align 4, !tbaa !67
  %i.ce = add nsw i32 %.08189, 2
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.cf = fcmp olt float %i.ah, 0.000000e+00
  br i1 %i.cf, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.cg = mul nsw i32 %i.bu, 3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ch ; 3 uses
  %i.cj = load float, ptr %i.ar, align 4, !tbaa !67
  store float %i.cj, ptr %i.ci, align 4, !tbaa !67
  %i.ck = load float, ptr %i.ba, align 4, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !67
  %i.cm = load float, ptr %i.bh, align 4, !tbaa !67
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store float %i.cm, ptr %i.cn, align 4, !tbaa !67
  %i.co = add nsw i32 %.08090, 2
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph94
  br i1 %i.ai, label %bb.g, label %._crit_edge104

._crit_edge104:                                   ; preds = %bb.f
  %.pre105 = mul nuw nsw i64 %indvars.iv98, 3
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cp = mul nsw i32 %.08189, 3
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cq ; 3 uses
  %i.cs = mul nuw nsw i64 %indvars.iv98, 3        ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs ; 3 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !67
  store float %i.cu, ptr %i.cr, align 4, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store float %i.cw, ptr %i.cx, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !67
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store float %i.cz, ptr %i.da, align 4, !tbaa !67
  %i.db = add nsw i32 %.08189, 1                  ; 2 uses
  %i.dc = fcmp une float %i.ah, 0.000000e+00
  br i1 %i.dc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge104, %bb.g
  %.pre-phi = phi i64 [ %.pre105, %._crit_edge104 ], [ %i.cs, %bb.g ]
  %.283 = phi i32 [ %.08189, %._crit_edge104 ], [ %i.db, %bb.g ]
  %i.dd = mul nsw i32 %.08090, 3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %4, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre-phi ; 3 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !67
  store float %i.dh, ptr %i.df, align 4, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store float %i.dj, ptr %i.dk, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %i.dm, ptr %i.dn, align 4, !tbaa !67
  %i.do = add nsw i32 %.08090, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d, %bb.e, %bb.c, %bb.g
  %.4 = phi i32 [ %i.db, %bb.g ], [ %.283, %bb.h ], [ %i.ce, %bb.c ], [ %i.bt, %bb.e ], [ %i.bt, %bb.d ] ; 2 uses
  %.3 = phi i32 [ %.08090, %bb.g ], [ %i.do, %bb.h ], [ %i.bu, %bb.c ], [ %i.co, %bb.e ], [ %i.bu, %bb.d ] ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv98 to i32
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge95, label %.lr.ph94
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !30, line: 39, baseType: !36, size: 32, elements: !66, identifier: "_ZTS12rcTimerLabel")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !30, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"float", !11, i64 0}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!"any p2 pointer", !16, i64 0}
!18 = !{!"p2 _ZTS6rcSpan", !17, i64 0}
!19 = !{!"p1 _ZTS10rcSpanPool", !16, i64 0}
!20 = !{!"p1 _ZTS6rcSpan", !16, i64 0}
!21 = !{!"_ZTS13rcHeightfield", !12, i64 0, !12, i64 4, !11, i64 8, !11, i64 20, !15, i64 32, !15, i64 36, !18, i64 40, !19, i64 48, !20, i64 56}
!22 = !{!21, !12, i64 0}
!23 = !{!"bool", !11, i64 0}
!24 = !{!"_ZTS9rcContext", !23, i64 8, !23, i64 9}
!25 = !{!24, !23, i64 9}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!"vtable pointer", !10, i64 0}
end_hunk_0
