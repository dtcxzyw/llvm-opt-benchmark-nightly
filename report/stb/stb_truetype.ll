Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt_PackFontRange:bb.a
  store float %3, ptr %7, align 8, !tbaa !143
  %i.e = call i32 @stbtt_PackFontRanges(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetScaledFontVMetrics(ptr noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.stbtt_fontinfo, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %1)
  %i.b = call range(i32 0, 2) i32 @stbtt_InitFont_internal(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %i.a) ; 0 uses
  %i.c = fcmp ogt float %2, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !48
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.m, %i.p               ; 2 uses
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37
  %i.u = zext i8 %i.t to i16
  %i.v = shl nuw i16 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.v, %i.y               ; 2 uses
  %i.aa = sext i16 %i.z to i32
  %i.ab = sub nsw i32 %i.r, %i.aa
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fdiv float %2, %i.ac
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = fneg float %2
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 19
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = zext i8 %i.aq to i16
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = uitofp i16 %i.as to float
  %i.au = fdiv float %i.ae, %i.at
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 36
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !48
  %.phi.trans.insert13 = sext i32 %.pre to i64    ; 2 uses
  %.phi.trans.insert14 = getelementptr inbounds i8, ptr %i.ag, i64 %.phi.trans.insert13 ; 4 uses
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 4
  %.pre16 = load i8, ptr %.phi.trans.insert15, align 1, !tbaa !37
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 5
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1, !tbaa !37
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 6
  %.pre20 = load i8, ptr %.phi.trans.insert19, align 1, !tbaa !37
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 7
  %.pre22 = load i8, ptr %.phi.trans.insert21, align 1, !tbaa !37
  %.pre23 = zext i8 %.pre16 to i16
  %.pre25 = shl nuw i16 %.pre23, 8
  %.pre27 = zext i8 %.pre18 to i16
  %.pre29 = or disjoint i16 %.pre25, %.pre27
  %.pre31 = zext i8 %.pre20 to i16
  %.pre33 = shl nuw i16 %.pre31, 8
  %.pre35 = zext i8 %.pre22 to i16
  %.pre37 = or disjoint i16 %.pre33, %.pre35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi38 = phi i16 [ %.pre37, %bb.c ], [ %i.z, %bb.b ]
  %.pre-phi30 = phi i16 [ %.pre29, %bb.c ], [ %i.q, %bb.b ]
  %.pre-phi = phi i64 [ %.phi.trans.insert13, %bb.c ], [ %i.h, %bb.b ]
  %i.av = phi ptr [ %i.ag, %bb.c ], [ %i.e, %bb.b ]
  %i.aw = phi float [ %i.au, %bb.c ], [ %i.ad, %bb.b ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %.pre-phi ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = zext i8 %i.az to i16
  %i.bb = shl nuw i16 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = zext i8 %i.bd to i16
  %i.bf = or disjoint i16 %i.bb, %i.be
  %i.bg = sitofp i16 %.pre-phi30 to float
  %i.bh = fmul float %i.aw, %i.bg
  store float %i.bh, ptr %3, align 4, !tbaa !80
  %i.bi = sitofp i16 %.pre-phi38 to float
  %i.bj = fmul float %i.aw, %i.bi
  store float %i.bj, ptr %4, align 4, !tbaa !80
  %i.bk = sitofp i16 %i.bf to float
  %i.bl = fmul float %i.aw, %i.bk
  store float %i.bl, ptr %5, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbtt_GetPackedQuad(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [28 x i8], ptr %0, i64 %i.a ; 9 uses
  %.not = icmp eq i32 %7, 0
  %i.c = load float, ptr %4, align 4, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !230 ; 2 uses
  %i.f = fadd float %i.c, %i.e                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %5, align 4, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !231 ; 2 uses
  %i.j = fadd float %i.g, %i.i
  %i.k = insertelement <2 x float> poison, float %i.f, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = fadd <2 x float> %i.l, splat (float 5.000000e-01)
  %i.n = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.m)
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = sitofp <2 x i32> %i.o to <2 x float>     ; 2 uses
  store <2 x float> %i.p, ptr %6, align 4, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !80
  %i.t = fadd <2 x float> %i.s, %i.p              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fsub float %i.u, %i.e
  store float %i.v, ptr %i.r, align 4, !tbaa !233
  %i.w = extractelement <2 x float> %i.t, i64 1
  %i.x = fsub float %i.w, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store float %i.f, ptr %6, align 4, !tbaa !234
  %i.y = load float, ptr %5, align 4, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !231
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ab, ptr %i.ac, align 4, !tbaa !235
  %i.ad = load float, ptr %4, align 4, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !236
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.ag, ptr %i.ah, align 4, !tbaa !233
  %i.ai = load float, ptr %5, align 4, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !149
  %i.al = fadd float %i.ai, %i.ak
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ %i.al, %bb.c ], [ %i.x, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %.sink, ptr %i.am, align 4, !tbaa !237
  %i.an = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %2, i64 1
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = fdiv <2 x float> splat (float 1.000000e+00), %i.ap ; 2 uses
  %i.as = load <2 x i16>, ptr %i.b, align 4, !tbaa !70
  %i.at = uitofp <2 x i16> %i.as to <2 x float>
  %i.au = fmul <2 x float> %i.ar, %i.at
  store <2 x float> %i.au, ptr %i.aq, align 4, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ax = load <2 x i16>, ptr %i.av, align 4, !tbaa !70
  %i.ay = uitofp <2 x i16> %i.ax to <2 x float>
  %i.az = fmul <2 x float> %i.ar, %i.ay
  store <2 x float> %i.az, ptr %i.aw, align 4, !tbaa !80
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !238
  %i.bc = load float, ptr %4, align 4, !tbaa !80
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %4, align 4, !tbaa !80
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @stbtt__ray_intersect_bezier(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #25 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !80
  %i.d = fneg float %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !80 ; 2 uses
  %i.h = load <2 x float>, ptr %3, align 4, !tbaa !80 ; 2 uses
  %i.i = load <2 x float>, ptr %4, align 4, !tbaa !80
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !80
  %i.k = shufflevector <2 x float> %i.g, <2 x float> %i.h, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.l = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.m = shufflevector <4 x float> %i.k, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.n = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.o = shufflevector <4 x float> %i.m, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.p = insertelement <4 x float> poison, float %i.d, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = fmul <4 x float> %i.o, %i.q
  %i.s = shufflevector <2 x float> %i.g, <2 x float> %i.h, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.t = shufflevector <4 x float> %i.s, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.v = insertelement <4 x float> poison, float %i.a, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.w, <4 x float> %i.r) ; 5 uses
  %i.y = extractelement <4 x float> %i.x, i64 0   ; 2 uses
  %i.z = extractelement <4 x float> %i.x, i64 1   ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float -2.000000e+00, float %i.y)
  %i.ab = extractelement <4 x float> %i.x, i64 2
  %i.ac = fadd float %i.aa, %i.ab                 ; 4 uses
  %i.ad = fsub float %i.z, %i.y                   ; 6 uses
  %shift = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.x, %shift
  %i.ae = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.af = fcmp une float %i.ac, 0.000000e+00
  br i1 %i.af, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ag = fneg float %i.ae
  %i.ah = fmul float %i.ac, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ah) ; 2 uses
  %i.aj = fcmp ogt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ak = fdiv float -1.000000e+00, %i.ac         ; 2 uses
  %sqrtf = tail call float @sqrtf(float noundef %i.ai) #29 ; 3 uses
  %i.al = fadd float %i.ad, %sqrtf
  %i.am = fmul float %i.ak, %i.al                 ; 4 uses
  %i.an = fsub float %i.ad, %sqrtf
  %i.ao = fmul float %i.ak, %i.an                 ; 5 uses
  %i.ap = fcmp oge float %i.am, 0.000000e+00
  %i.aq = fcmp ole float %i.am, 1.000000e+00
  %or.cond.not.not.not = and i1 %i.ap, %i.aq      ; 3 uses
  %i.ar = fcmp ule float %sqrtf, 0.000000e+00
  %i.as = fcmp ult float %i.ao, 0.000000e+00
  %i.at = fcmp ugt float %i.ao, 1.000000e+00
  %i.au = or i1 %i.as, %i.at
  %or.cond118 = select i1 %i.ar, i1 true, i1 %i.au
  br i1 %or.cond118, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0107 = select i1 %or.cond.not.not.not, float %i.am, float %i.ao
  br label %.thread124

bb.e:                                             ; preds = %bb.a
  %i.av = fmul float %i.ad, -2.000000e+00
  %i.aw = fdiv float %i.ae, %i.av                 ; 3 uses
  %i.ax = fcmp ult float %i.aw, 0.000000e+00
  %i.ay = fcmp ugt float %i.aw, 1.000000e+00
  %or.cond119 = or i1 %i.ax, %i.ay
  br i1 %or.cond119, label %.thread, label %.thread124

bb.f:                                             ; preds = %bb.c
  br i1 %or.cond.not.not.not, label %.thread124, label %.thread

.thread124:                                       ; preds = %bb.d, %bb.e, %bb.f
  %.3130 = phi i1 [ false, %bb.f ], [ %or.cond.not.not.not, %bb.d ], [ false, %bb.e ]
  %.1106129 = phi float [ %i.ao, %bb.f ], [ %i.ao, %bb.d ], [ 0.000000e+00, %bb.e ] ; 5 uses
  %.3110128 = phi float [ %i.am, %bb.f ], [ %.0107, %bb.d ], [ %i.aw, %bb.e ] ; 5 uses
  %6 = load float, ptr %i.b, align 4, !tbaa !80   ; 3 uses
  %7 = load float, ptr %1, align 4, !tbaa !80     ; 3 uses
  %8 = fmul float %6, %6
  %i.az = tail call float @llvm.fmuladd.f32(float %7, float %7, float %8)
  %i.ba = fdiv float 1.000000e+00, %i.az          ; 2 uses
  %9 = fmul float %6, %i.ba                       ; 3 uses
  %10 = fmul float %7, %i.ba                      ; 3 uses
  %i.bb = load <2 x float>, ptr %2, align 4, !tbaa !80 ; 2 uses
  %i.bc = load <2 x float>, ptr %3, align 4, !tbaa !80 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %11 = insertelement <2 x float> poison, float %9, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %12
  %i.bf = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2>
  %13 = insertelement <2 x float> poison, float %10, i64 0
  %i.bg = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> %i.be) ; 2 uses
  %i.bi = load float, ptr %4, align 4, !tbaa !80
  %i.bj = load float, ptr %i.e, align 4, !tbaa !80
  %i.bk = fmul float %9, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bi, float %10, float %i.bk)
  %i.bm = load float, ptr %0, align 4, !tbaa !80
  %i.bn = load float, ptr %i.f, align 4, !tbaa !80
  %i.bo = fmul float %9, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bm, float %10, float %i.bo)
  %i.bq = extractelement <2 x float> %i.bh, i64 0
  %i.br = extractelement <2 x float> %i.bh, i64 1 ; 3 uses
  %i.bs = fsub float %i.bq, %i.br                 ; 2 uses
  %i.bt = fsub float %i.bl, %i.br
  %i.bu = fsub float %i.br, %i.bp                 ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %.3110128, float -2.000000e+00, float 2.000000e+00)
  %i.bw = fmul float %.3110128, %i.bv
  %i.bx = fmul float %.3110128, %.3110128
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bs, float %i.bu)
  %i.bz = insertelement <2 x float> poison, float %i.ac, i64 1 ; 2 uses
  %i.ca = insertelement <2 x float> %i.bz, float %i.bx, i64 0
  %i.cb = insertelement <2 x float> poison, float %i.bt, i64 0 ; 2 uses
  %i.cc = insertelement <2 x float> %i.cb, float %.3110128, i64 1
  %i.cd = insertelement <2 x float> poison, float %i.ad, i64 1 ; 2 uses
  %i.ce = insertelement <2 x float> %i.cd, float %i.by, i64 0
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cc, <2 x float> %i.ce)
  store <2 x float> %i.cf, ptr %5, align 4, !tbaa !80
  br i1 %.3130, label %bb.g, label %.thread

bb.g:                                             ; preds = %.thread124
  %i.cg = tail call float @llvm.fmuladd.f32(float %.1106129, float -2.000000e+00, float 2.000000e+00)
  %i.ch = fmul float %.1106129, %i.cg
  %i.ci = fmul float %.1106129, %.1106129
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bs, float %i.bu)
  %i.cl = insertelement <2 x float> %i.bz, float %i.ci, i64 0
  %i.cm = insertelement <2 x float> %i.cb, float %.1106129, i64 1
  %i.cn = insertelement <2 x float> %i.cd, float %i.ck, i64 0
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.cn)
  store <2 x float> %i.co, ptr %i.cj, align 4, !tbaa !80
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %bb.g, %.thread124, %bb.f
  %.1112 = phi i32 [ 0, %bb.f ], [ 2, %bb.g ], [ 1, %.thread124 ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.1112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !80
  %i.b = load float, ptr %1, align 4, !tbaa !80
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !80
  %i.h = fcmp oeq float %i.e, %i.g
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define i32 @stbtt__compute_crossings_x(float noundef %0, float noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %i.b = alloca [2 x float], align 8              ; 4 uses
  %i.c = alloca [2 x float], align 8              ; 4 uses
  %i.d = alloca [2 x float], align 8              ; 4 uses
  %i.e = alloca [2 x float], align 8              ; 4 uses
  %i.f = alloca [2 x [2 x float]], align 16       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 1065353216, ptr %i.b, align 8
  %i.g = fpext float %1 to double
  %i.h = tail call double @fmod(double noundef %i.g, double noundef 1.000000e+00) #29 ; 2 uses
  %i.i = fcmp olt double %i.h, f0x3F847AE130000000
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = fadd float %1, f0x3C23D70A
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp ogt double %i.h, f0x3FEFAE1490000000
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = fadd float %1, f0xBC23D70A
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0150 = phi float [ %i.j, %bb.b ], [ %i.l, %bb.d ], [ %1, %bb.c ] ; 9 uses
  store float %0, ptr %i.a, align 4, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %.0150, ptr %i.m, align 4, !tbaa !80
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.0172 = phi i32 [ 0, %.lr.ph ], [ %.9, %.thread ] ; 11 uses
  %i.o = getelementptr inbounds nuw [14 x i8], ptr %3, i64 %indvars.iv ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i8, ptr %i.p, align 2, !tbaa !65
  switch i8 %i.q, label %.thread [
    i8 2, label %bb.g
    i8 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.o, i64 -14
  %i.s = load <2 x i16>, ptr %i.r, align 2, !tbaa !70 ; 3 uses
  %i.t = extractelement <2 x i16> %i.s, i64 1     ; 4 uses
  %i.u = extractelement <2 x i16> %i.s, i64 0
  %i.v = sext i16 %i.u to i32                     ; 2 uses
  %i.w = sext i16 %i.t to i32
  %i.x = load i16, ptr %i.o, align 2, !tbaa !66
  %i.y = sext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !67  ; 4 uses
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i16 %i.t, %i.aa
  %i.ad = tail call i16 @llvm.smin.i16(i16 %i.t, i16 %i.aa)
  %i.ae = sitofp i16 %i.ad to float
  %i.af = fcmp ogt float %.0150, %i.ae
  br i1 %i.af, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i16 @llvm.smax.i16(i16 %i.t, i16 %i.aa)
  %i.ah = sitofp i16 %i.ag to float
  %i.ai = fcmp olt float %.0150, %i.ah
  br i1 %i.ai, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.y)
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fcmp ogt float %0, %i.ak
  br i1 %i.al, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = sitofp <2 x i16> %i.s to <2 x float>    ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  %i.ao = fsub float %.0150, %i.an
  %i.ap = sub nsw i32 %i.ab, %i.w
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fdiv float %i.ao, %i.aq
  %i.as = sub nsw i32 %i.y, %i.v
  %i.at = sitofp i32 %i.as to float
  %i.au = extractelement <2 x float> %i.am, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.at, float %i.au)
  %i.aw = fcmp olt float %i.av, %0
  %i.ax = select i1 %i.ac, i32 1, i32 -1
  %i.ay = select i1 %i.aw, i32 %i.ax, i32 0
  %.1 = add nsw i32 %i.ay, %.0172
  br label %.thread

bb.k:                                             ; preds = %bb.f
  %i.az = getelementptr i8, ptr %i.o, i64 -14
  %i.ba = load <2 x i16>, ptr %i.az, align 2, !tbaa !70 ; 3 uses
  %i.bb = extractelement <2 x i16> %i.ba, i64 1   ; 6 uses
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.be = load <2 x i16>, ptr %i.bd, align 2, !tbaa !70 ; 3 uses
  %i.bf = load <2 x i16>, ptr %i.o, align 2, !tbaa !70 ; 3 uses
  %i.bg = extractelement <2 x i16> %i.be, i64 0
  %i.bh = extractelement <2 x i16> %i.bf, i64 0   ; 2 uses
  %i.bi = tail call i16 @llvm.smin.i16(i16 %i.bg, i16 %i.bh)
  %i.bj = extractelement <2 x i16> %i.ba, i64 0   ; 2 uses
  %. = tail call i16 @llvm.smin.i16(i16 %i.bi, i16 %i.bj)
  %i.bk = extractelement <2 x i16> %i.be, i64 1   ; 2 uses
  %i.bl = extractelement <2 x i16> %i.bf, i64 1   ; 6 uses
  %i.bm = tail call i16 @llvm.smin.i16(i16 %i.bk, i16 %i.bl)
  %i.bn = tail call i16 @llvm.smin.i16(i16 %i.bb, i16 %i.bm)
  %i.bo = tail call i16 @llvm.smax.i16(i16 %i.bk, i16 %i.bl)
  %i.bp = tail call i16 @llvm.smax.i16(i16 %i.bb, i16 %i.bo)
  %i.bq = sitofp i16 %i.bn to float
  %i.br = fcmp ogt float %.0150, %i.bq
  %i.bs = sitofp i16 %i.bp to float
  %i.bt = fcmp olt float %.0150, %i.bs
  %or.cond162 = and i1 %i.br, %i.bt
  %i.bu = sitofp i16 %. to float
  %i.bv = fcmp ogt float %0, %i.bu
  %or.cond164 = select i1 %or.cond162, i1 %i.bv, i1 false
  br i1 %or.cond164, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.bw = sitofp <2 x i16> %i.ba to <2 x float>   ; 4 uses
  store <2 x float> %i.bw, ptr %i.c, align 8, !tbaa !80
  %i.bx = sitofp <2 x i16> %i.be to <2 x float>   ; 3 uses
  store <2 x float> %i.bx, ptr %i.d, align 8, !tbaa !80
  %i.by = sitofp <2 x i16> %i.bf to <2 x float>   ; 2 uses
  store <2 x float> %i.by, ptr %i.e, align 8, !tbaa !80
  %i.bz = fcmp une <2 x float> %i.bw, %i.bx
  %i.ca = bitcast <2 x i1> %i.bz to i2
end_hunk_0
