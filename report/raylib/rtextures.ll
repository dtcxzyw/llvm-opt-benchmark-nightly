Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@DrawTextureV:bb.a
  tail call void @DrawTexturePro(ptr noundef nonnull byval(%struct.Texture) align 8 %0, <2 x float> zeroinitializer, <2 x float> %i.a, <2 x float> %1, <2 x float> %i.a, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawTexturePro(ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, float noundef %6, i32 %7) local_unnamed_addr #34 {
bb.a:
  %.sroa.083.0.extract.trunc = trunc i32 %7 to i8
  %.sroa.284.0.extract.shift = lshr i32 %7, 8
  %.sroa.284.0.extract.trunc = trunc i32 %.sroa.284.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %7, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %7, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sitofp i32 %i.c to float                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sitofp i32 %i.f to float                 ; 2 uses
  %.sroa.19.8.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %i.h = fcmp olt float %.sroa.19.8.vec.extract, 0.000000e+00 ; 2 uses
  %i.i = fneg float %.sroa.19.8.vec.extract
  %.sroa.19.8.vec.insert = insertelement <2 x float> %2, float %i.i, i64 0
  %.sroa.19.0 = select i1 %i.h, <2 x float> %.sroa.19.8.vec.insert, <2 x float> %2 ; 4 uses
  %.sroa.19.12.vec.extract = extractelement <2 x float> %.sroa.19.0, i64 1
  %i.j = fcmp olt float %.sroa.19.12.vec.extract, 0.000000e+00
  %foldExtExtBinop = fsub <2 x float> %1, %.sroa.19.0
  %sel = select i1 %i.j, <2 x float> %foldExtExtBinop, <2 x float> %1
  %.sroa.0125.0 = shufflevector <2 x float> %1, <2 x float> %sel, <2 x i32> <i32 0, i32 3> ; 4 uses
  %.sroa.5.8.vec.extract = extractelement <2 x float> %4, i64 0 ; 2 uses
  %i.k = fcmp olt float %.sroa.5.8.vec.extract, 0.000000e+00
  %i.l = fneg float %.sroa.5.8.vec.extract
  %.sroa.5.8.vec.insert = insertelement <2 x float> %4, float %i.l, i64 0
  %.sroa.5.0 = select i1 %i.k, <2 x float> %.sroa.5.8.vec.insert, <2 x float> %4 ; 4 uses
  %.sroa.5.12.vec.extract = extractelement <2 x float> %.sroa.5.0, i64 1
  %i.m = fcmp olt float %.sroa.5.12.vec.extract, 0.000000e+00
  %i.n = fneg <2 x float> %.sroa.5.0
  %sel187 = select i1 %i.m, <2 x float> %i.n, <2 x float> %.sroa.5.0
  %.sroa.5.1 = shufflevector <2 x float> %.sroa.5.0, <2 x float> %sel187, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.o = fcmp oeq float %6, 0.000000e+00
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = fsub <2 x float> %3, %5                  ; 2 uses
  %i.q = fadd <2 x float> %i.p, %.sroa.5.1
  %i.r = shufflevector <2 x float> %i.q, <2 x float> %i.p, <8 x i32> <i32 1, i32 0, i32 1, i32 0, i32 3, i32 2, i32 3, i32 2>
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = fmul float %6, f0x3C8EFA35               ; 2 uses
  %i.t = tail call float @sinf(float noundef %i.s) #52
  %i.u = tail call float @cosf(float noundef %i.s) #52
  %.sroa.085.4.vec.extract89 = extractelement <2 x float> %5, i64 1
  %i.v = fneg float %.sroa.085.4.vec.extract89
  %i.w = fsub <2 x float> %.sroa.5.1, %5          ; 2 uses
  %i.x = shufflevector <2 x float> %5, <2 x float> %i.w, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.u, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul <2 x float> %i.x, %i.z             ; 2 uses
  %i.ab = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fadd <2 x float> %i.ab, %i.aa
  %i.ad = fsub <2 x float> %i.ab, %i.aa
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.af = insertelement <2 x float> %i.w, float %i.v, i64 0 ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fmul <2 x float> %i.af, %i.ah
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.ak = fmul <2 x float> %i.x, %i.ah            ; 2 uses
  %i.al = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.am = fadd <2 x float> %i.al, %i.ak
  %i.an = fsub <2 x float> %i.al, %i.ak
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.an, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ap = fmul <2 x float> %i.af, %i.z
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ar = fsub <4 x float> %i.ae, %i.aj
  %i.as = fadd <4 x float> %i.ao, %i.aq
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.ar, <8 x i32> <i32 0, i32 4, i32 2, i32 6, i32 1, i32 5, i32 3, i32 7>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = phi <8 x float> [ %i.r, %bb.c ], [ %i.at, %bb.d ] ; 12 uses
  tail call void @rlSetTexture(i32 noundef %i.a) #52
  tail call void @rlBegin(i32 noundef 7) #52
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.083.0.extract.trunc, i8 noundef zeroext %.sroa.284.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #52
  tail call void @rlNormal3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #52
  %.sroa.0125.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = fadd <2 x float> %.sroa.19.0, %.sroa.0125.0 ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  %i.ax = fdiv float %i.aw, %i.d                  ; 2 uses
  %i.ay = shufflevector <2 x float> %.sroa.0125.0, <2 x float> %i.av, <2 x i32> <i32 3, i32 1>
  %i.az = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x float> %i.ay, %i.ba           ; 3 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 1
  tail call void @rlTexCoord2f(float noundef %i.ax, float noundef %i.bc) #52
  %i.bd = extractelement <8 x float> %i.au, i64 6
  %i.be = extractelement <8 x float> %i.au, i64 7
  tail call void @rlVertex2f(float noundef %i.be, float noundef %i.bd) #52
  %i.bf = extractelement <2 x float> %i.bb, i64 0
  tail call void @rlTexCoord2f(float noundef %i.ax, float noundef %i.bf) #52
  %i.bg = extractelement <8 x float> %i.au, i64 2
  %i.bh = extractelement <8 x float> %i.au, i64 5
  tail call void @rlVertex2f(float noundef %i.bh, float noundef %i.bg) #52
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bi = fdiv float %.sroa.0125.0.vec.extract, %i.d ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = extractelement <8 x float> %i.au, i64 6
  %i.bm = extractelement <8 x float> %i.au, i64 7
  %i.bn = extractelement <8 x float> %i.au, i64 2
  %i.bo = extractelement <8 x float> %i.au, i64 5
  %i.bp = fadd <2 x float> %.sroa.19.0, %.sroa.0125.0 ; 2 uses
  %i.bq = shufflevector <2 x float> %.sroa.0125.0, <2 x float> %i.bp, <2 x i32> <i32 3, i32 1>
  %i.br = fdiv <2 x float> %i.bq, %i.bk           ; 3 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1
  tail call void @rlTexCoord2f(float noundef %i.bi, float noundef %i.bs) #52
  tail call void @rlVertex2f(float noundef %i.bm, float noundef %i.bl) #52
  %i.bt = extractelement <2 x float> %i.br, i64 0
  tail call void @rlTexCoord2f(float noundef %i.bi, float noundef %i.bt) #52
  tail call void @rlVertex2f(float noundef %i.bo, float noundef %i.bn) #52
  %i.bu = extractelement <2 x float> %i.bp, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink185 = phi float [ %i.bu, %bb.g ], [ %.sroa.0125.0.vec.extract, %bb.f ]
  %i.bv = phi <2 x float> [ %i.br, %bb.g ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bw = fdiv float %.sink185, %i.d              ; 2 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 0
  tail call void @rlTexCoord2f(float noundef %i.bw, float noundef %i.bx) #52
  %i.by = extractelement <8 x float> %i.au, i64 0
  %i.bz = extractelement <8 x float> %i.au, i64 1
  tail call void @rlVertex2f(float noundef %i.bz, float noundef %i.by) #52
  %i.ca = extractelement <2 x float> %i.bv, i64 1
  tail call void @rlTexCoord2f(float noundef %i.bw, float noundef %i.ca) #52
  %i.cb = extractelement <8 x float> %i.au, i64 3
  %i.cc = extractelement <8 x float> %i.au, i64 4
  tail call void @rlVertex2f(float noundef %i.cb, float noundef %i.cc) #52
  tail call void @rlEnd() #52
  tail call void @rlSetTexture(i32 noundef 0) #52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawTextureRec(ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #34 {
bb.a:
  %i.a = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  tail call void @DrawTexturePro(ptr noundef nonnull byval(%struct.Texture) align 8 %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %i.a, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %4)
  ret void
}

declare void @rlSetTexture(i32 noundef) local_unnamed_addr #10

declare void @rlBegin(i32 noundef) local_unnamed_addr #10

declare void @rlColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #10

declare void @rlNormal3f(float noundef, float noundef, float noundef) local_unnamed_addr #10

declare void @rlTexCoord2f(float noundef, float noundef) local_unnamed_addr #10

declare void @rlVertex2f(float noundef, float noundef) local_unnamed_addr #10

declare void @rlEnd() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @DrawTextureNPatch(ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %0, ptr nofree noundef byval(%struct.NPatchInfo) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, float noundef %5, i32 %6) local_unnamed_addr #34 {
bb.a:
  %.sroa.0286.0.extract.trunc = trunc i32 %6 to i8
  %.sroa.2.0.extract.shift = lshr i32 %6, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %6, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %6, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load <2 x i32>, ptr %i.b, align 4
  %i.d = shufflevector <2 x i32> %i.c, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.e = sitofp <4 x i32> %i.d to <4 x float>     ; 4 uses
  %i.f = fptosi <2 x float> %3 to <2 x i32>
  %i.g = icmp slt <2 x i32> %i.f, splat (i32 1)
  %i.h = select <2 x i1> %i.g, <2 x float> zeroinitializer, <2 x float> %3 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 8            ; 9 uses
  %i.k = fcmp olt float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.l = load float, ptr %1, align 8
  %i.m = fsub float %i.l, %i.j
  store float %i.m, ptr %1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load float, ptr %i.n, align 4            ; 10 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load float, ptr %i.q, align 4            ; 2 uses
  %i.s = fsub float %i.r, %i.o
  %i.t = select i1 %i.p, float %i.s, float %i.r   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load <3 x i32>, ptr %i.w, align 8
  %i.aa = shufflevector <3 x i32> %i.z, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.ab = sitofp <2 x i32> %i.aa to <2 x float>   ; 4 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ab)
  %i.ag = load float, ptr %1, align 8             ; 3 uses
  %i.ah = extractelement <4 x float> %i.e, i64 0
  %i.ai = fdiv float %i.ag, %i.ah                 ; 14 uses
  %i.aj = extractelement <4 x float> %i.e, i64 1
  %i.ak = fdiv float %i.t, %i.aj                  ; 14 uses
  %i.al = insertelement <2 x float> poison, float %i.j, i64 0 ; 2 uses
  %i.am = insertelement <2 x float> %i.al, float %i.t, i64 1
  %i.an = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.o, i64 1
  %i.ap = fadd <2 x float> %i.am, %i.ao           ; 2 uses
  %i.aq = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.ar = shufflevector <2 x i32> %i.aq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.as = icmp eq <2 x i32> %i.ar, <i32 1, i32 2> ; 2 uses
  %i.at = insertelement <2 x float> %i.al, float %i.o, i64 1
  %i.au = select <2 x i1> %i.as, <2 x float> %i.at, <2 x float> %i.h ; 4 uses
  %i.av = sitofp i32 %i.ae to float               ; 2 uses
  %i.aw = extractelement <2 x float> %i.au, i64 0
  %i.ax = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ay = extractelement <2 x float> %i.au, i64 1
  %i.az = sitofp i32 %i.y to float                ; 9 uses
  %i.ba = fadd float %i.az, %i.av
  %i.bb = insertelement <2 x float> %i.ax, float %i.ba, i64 1 ; 2 uses
  %i.bc = fcmp ugt <2 x float> %i.au, %i.bb
  %i.bd = or <2 x i1> %i.as, %i.bc                ; 5 uses
  %i.be = shufflevector <2 x i1> %i.bd, <2 x i1> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bf = insertelement <2 x float> %i.ab, float %i.az, i64 1
  %i.bg = fdiv <2 x float> %i.bf, %i.bb
  %i.bh = fmul <2 x float> %i.au, %i.bg           ; 2 uses
  %i.bi = fsub <2 x float> %i.h, %i.bh
  %i.bj = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bk = insertelement <4 x float> %i.bj, float %i.az, i64 1
  %i.bl = insertelement <4 x float> %i.bk, float %i.av, i64 3
  %i.bm = shufflevector <2 x float> %i.bi, <2 x float> %i.bh, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bn = select <4 x i1> %i.be, <4 x float> %i.bl, <4 x float> %i.bm ; 8 uses
  %i.bo = extractelement <4 x float> %i.bn, i64 2
  %i.bp = fsub float %i.aw, %i.bo                 ; 16 uses
  %i.bq = extractelement <4 x float> %i.bn, i64 3
  %i.br = fsub float %i.ay, %i.bq                 ; 16 uses
  %i.bs = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.t, i64 1
  %i.bu = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.bw = fadd <4 x float> %i.bv, %i.bn
  %i.bx = fsub <4 x float> %i.bv, %i.bn
  %i.by = shufflevector <4 x float> %i.bw, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bz = fdiv <4 x float> %i.by, %i.e            ; 12 uses
  %i.ca = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cb = fdiv <2 x float> %i.ap, %i.ca           ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 1 ; 14 uses
  %i.cd = extractelement <2 x float> %i.cb, i64 0 ; 14 uses
  tail call void @rlSetTexture(i32 noundef %i.a) #52
  tail call void @rlPushMatrix() #52
  %.sroa.0288.0.vec.extract = extractelement <2 x float> %2, i64 0
  %.sroa.0288.4.vec.extract = extractelement <2 x float> %2, i64 1
  tail call void @rlTranslatef(float noundef %.sroa.0288.0.vec.extract, float noundef %.sroa.0288.4.vec.extract, float noundef 0.000000e+00) #52
  tail call void @rlRotatef(float noundef %5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #52
  %i.ce = fneg <2 x float> %4                     ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0
  %i.cg = extractelement <2 x float> %i.ce, i64 1
  tail call void @rlTranslatef(float noundef %i.cf, float noundef %i.cg, float noundef 0.000000e+00) #52
  tail call void @rlBegin(i32 noundef 7) #52
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0286.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #52
  tail call void @rlNormal3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #52
  switch i32 %i.v, label %bb.s [
    i32 0, label %bb.d
    i32 1, label %bb.m
    i32 2, label %bb.p
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.ch = extractelement <4 x float> %i.bz, i64 1 ; 12 uses
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.ch) #52
  %i.ci = extractelement <4 x float> %i.bn, i64 1 ; 6 uses
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.ci) #52
  %i.cj = extractelement <4 x float> %i.bz, i64 0 ; 12 uses
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.ch) #52
  %i.ck = extractelement <4 x float> %i.bn, i64 0 ; 6 uses
  tail call void @rlVertex2f(float noundef %i.ck, float noundef %i.ci) #52
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef %i.ck, float noundef 0.000000e+00) #52
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #52
  %i.cl = extractelement <2 x i1> %i.bd, i64 0    ; 3 uses
  br i1 %i.cl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef %i.ac, float noundef %i.ci) #52
  %i.cm = extractelement <4 x float> %i.bz, i64 2 ; 2 uses
  tail call void @rlTexCoord2f(float noundef %i.cm, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.ci) #52
  tail call void @rlTexCoord2f(float noundef %i.cm, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef 0.000000e+00) #52
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef %i.ac, float noundef 0.000000e+00) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cn = extractelement <4 x float> %i.bz, i64 2 ; 10 uses
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.ci) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.ch) #52
  %i.co = extractelement <2 x float> %i.h, i64 0  ; 6 uses
  tail call void @rlVertex2f(float noundef %i.co, float noundef %i.ci) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef %i.co, float noundef 0.000000e+00) #52
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef 0.000000e+00) #52
  %i.cp = extractelement <2 x i1> %i.bd, i64 1
  br i1 %i.cp, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cq = extractelement <4 x float> %i.bz, i64 3 ; 6 uses
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.cq) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.cq) #52
  tail call void @rlVertex2f(float noundef %i.ck, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef %i.ck, float noundef %i.az) #52
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.az) #52
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.cq) #52
  tail call void @rlVertex2f(float noundef %i.ac, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.cq) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.az) #52
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef %i.ac, float noundef %i.az) #52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.cq) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.cq) #52
  tail call void @rlVertex2f(float noundef %i.co, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef %i.co, float noundef %i.az) #52
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.ch) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.az) #52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.cc) #52
  %i.cr = extractelement <2 x float> %i.h, i64 1  ; 6 uses
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.cr) #52
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.cc) #52
  tail call void @rlVertex2f(float noundef %i.ck, float noundef %i.cr) #52
  %i.cs = extractelement <4 x float> %i.bz, i64 3 ; 6 uses
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.cs) #52
  tail call void @rlVertex2f(float noundef %i.ck, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.cs) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.br) #52
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.cc) #52
  tail call void @rlVertex2f(float noundef %i.ac, float noundef %i.cr) #52
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.cc) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.cr) #52
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.cs) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.cs) #52
  tail call void @rlVertex2f(float noundef %i.ac, float noundef %i.br) #52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.cc) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.cr) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.cc) #52
  tail call void @rlVertex2f(float noundef %i.co, float noundef %i.cr) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.cs) #52
  tail call void @rlVertex2f(float noundef %i.co, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cn, float noundef %i.cs) #52
  tail call void @rlVertex2f(float noundef %i.bp, float noundef %i.br) #52
  br label %bb.s

bb.m:                                             ; preds = %._crit_edge
  %i.ct = extractelement <4 x float> %i.bz, i64 1 ; 4 uses
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.ct) #52
  %i.cu = extractelement <4 x float> %i.bn, i64 1 ; 4 uses
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.cu) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.ct) #52
  tail call void @rlVertex2f(float noundef %i.j, float noundef %i.cu) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef %i.j, float noundef 0.000000e+00) #52
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #52
  %i.cv = extractelement <2 x i1> %i.bd, i64 0
  br i1 %i.cv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cw = extractelement <4 x float> %i.bz, i64 3 ; 2 uses
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.cw) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.cw) #52
  tail call void @rlVertex2f(float noundef %i.j, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.ct) #52
  tail call void @rlVertex2f(float noundef %i.j, float noundef %i.cu) #52
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.ct) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.cu) #52
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.cc) #52
  %i.cx = extractelement <2 x float> %i.h, i64 1  ; 2 uses
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.cx) #52
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.cc) #52
  tail call void @rlVertex2f(float noundef %i.j, float noundef %i.cx) #52
  %i.cy = extractelement <4 x float> %i.bz, i64 3 ; 2 uses
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.cy) #52
  tail call void @rlVertex2f(float noundef %i.j, float noundef %i.br) #52
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.cy) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.br) #52
  br label %bb.s

bb.p:                                             ; preds = %._crit_edge
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.cc) #52
  tail call void @rlVertex2f(float noundef 0.000000e+00, float noundef %i.o) #52
  %i.cz = extractelement <4 x float> %i.bz, i64 0 ; 4 uses
  tail call void @rlTexCoord2f(float noundef %i.cz, float noundef %i.cc) #52
  %i.da = extractelement <4 x float> %i.bn, i64 0 ; 2 uses
  tail call void @rlVertex2f(float noundef %i.da, float noundef %i.o) #52
  tail call void @rlTexCoord2f(float noundef %i.cz, float noundef %i.ak) #52
  tail call void @rlVertex2f(float noundef %i.da, float noundef 0.000000e+00) #52
  tail call void @rlTexCoord2f(float noundef %i.ai, float noundef %i.ak) #52
end_hunk_0
