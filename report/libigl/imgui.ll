Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_Z15ImTextStrToUtf8PciPKtS1_:bb.a
  br label %_ZL23ImTextCharToUtf8_inlinePcij.exit.us

_ZL23ImTextCharToUtf8_inlinePcij.exit.us:         ; preds = %_ZL23ImTextCharToUtf8_inlinePcij.exit.us.sink.split, %bb.f, %bb.d
  %.0.i.us = phi i64 [ 0, %bb.f ], [ 0, %bb.d ], [ %.0.i.us.ph, %_ZL23ImTextCharToUtf8_inlinePcij.exit.us.sink.split ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.027.us, i64 %.0.i.us
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.af = trunc nuw nsw i16 %i.f to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.027.us, i64 1
  store i8 %i.af, ptr %.027.us, align 1, !tbaa !181
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZL23ImTextCharToUtf8_inlinePcij.exit.us
  %.1.us = phi ptr [ %i.ag, %bb.h ], [ %i.ae, %_ZL23ImTextCharToUtf8_inlinePcij.exit.us ] ; 3 uses
  %i.ah = icmp ult ptr %.1.us, %i.c
  br i1 %i.ah, label %.lr.ph.split.us, label %.critedge, !llvm.loop !799

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %.027 = phi ptr [ %.1, %bb.r ], [ %0, %.lr.ph ] ; 10 uses
  %.02026 = phi ptr [ %i.ak, %bb.r ], [ %2, %.lr.ph ] ; 3 uses
  %i.ai = icmp ult ptr %.02026, %3
  br i1 %i.ai, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph.split
  %i.aj = load i16, ptr %.02026, align 2, !tbaa !193 ; 8 uses
  %.not25 = icmp eq i16 %i.aj, 0
  br i1 %.not25, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.02026, i64 2
  %i.al = icmp ult i16 %i.aj, 128
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = trunc nuw nsw i16 %i.aj to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.027, i64 1
  store i8 %i.am, ptr %.027, align 1, !tbaa !181
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.ao = ptrtoint ptr %.027 to i64
  %i.ap = xor i64 %i.ao, -1
  %i.aq = add i64 %i.ap, %i.e
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = icmp ult i16 %i.aj, 2048
  br i1 %i.as, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.at = icmp slt i32 %i.ar, 2
  br i1 %i.at, label %_ZL23ImTextCharToUtf8_inlinePcij.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = lshr i16 %i.aj, 6
  %i.av = trunc nuw nsw i16 %i.au to i8
  %i.aw = or disjoint i8 %i.av, -64
  store i8 %i.aw, ptr %.027, align 1, !tbaa !181
  br label %_ZL23ImTextCharToUtf8_inlinePcij.exit.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ax = icmp slt i32 %i.ar, 3
  br i1 %i.ax, label %_ZL23ImTextCharToUtf8_inlinePcij.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = lshr i16 %i.aj, 12
  %i.az = trunc nuw nsw i16 %i.ay to i8
  %i.ba = or disjoint i8 %i.az, -32
  store i8 %i.ba, ptr %.027, align 1, !tbaa !181
  %i.bb = lshr i16 %i.aj, 6
  %i.bc = trunc i16 %i.bb to i8
  %i.bd = and i8 %i.bc, 63
  %i.be = or disjoint i8 %i.bd, -128
  %i.bf = getelementptr inbounds nuw i8, ptr %.027, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !181
  br label %_ZL23ImTextCharToUtf8_inlinePcij.exit.sink.split

_ZL23ImTextCharToUtf8_inlinePcij.exit.sink.split: ; preds = %bb.q, %bb.o
  %.sink43 = phi i64 [ 1, %bb.o ], [ 2, %bb.q ]
  %.0.i.ph = phi i64 [ 2, %bb.o ], [ 3, %bb.q ]
  %i.bg = trunc i16 %i.aj to i8
  %i.bh = and i8 %i.bg, 63
  %i.bi = or disjoint i8 %i.bh, -128
  %i.bj = getelementptr inbounds nuw i8, ptr %.027, i64 %.sink43
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !181
  br label %_ZL23ImTextCharToUtf8_inlinePcij.exit

_ZL23ImTextCharToUtf8_inlinePcij.exit:            ; preds = %_ZL23ImTextCharToUtf8_inlinePcij.exit.sink.split, %bb.n, %bb.p
  %.0.i = phi i64 [ 0, %bb.n ], [ 0, %bb.p ], [ %.0.i.ph, %_ZL23ImTextCharToUtf8_inlinePcij.exit.sink.split ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.027, i64 %.0.i
  br label %bb.r

bb.r:                                             ; preds = %_ZL23ImTextCharToUtf8_inlinePcij.exit, %bb.l
  %.1 = phi ptr [ %i.an, %bb.l ], [ %i.bk, %_ZL23ImTextCharToUtf8_inlinePcij.exit ] ; 3 uses
  %i.bl = icmp ult ptr %.1, %i.c
  br i1 %i.bl, label %.lr.ph.split, label %.critedge, !llvm.loop !799

.critedge:                                        ; preds = %bb.j, %bb.r, %.lr.ph.split, %.lr.ph.split.us, %bb.i, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1.us, %bb.i ], [ %.027.us, %.lr.ph.split.us ], [ %.027, %bb.j ], [ %.027, %.lr.ph.split ], [ %.1, %bb.r ] ; 2 uses
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !181
  %i.bm = ptrtoint ptr %.0.lcssa to i64
  %i.bn = ptrtoint ptr %0 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  ret i32 %i.bp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z27ImTextCountUtf8BytesFromStrPKtS0_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.a = icmp ult ptr %0, %1
  %or.cond14 = or i1 %.not, %i.a
  br i1 %or.cond14, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.b = load i16, ptr %0, align 2, !tbaa !193    ; 2 uses
  %.not13.us19 = icmp eq i16 %i.b, 0
  br i1 %.not13.us19, label %.critedge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph.split.us, %.lr.ph22
  %i.c = phi i16 [ %i.g, %.lr.ph22 ], [ %i.b, %.lr.ph.split.us ] ; 2 uses
  %.0915.us21 = phi ptr [ %i.d, %.lr.ph22 ], [ %0, %.lr.ph.split.us ]
  %.016.us20 = phi i32 [ %.1.us, %.lr.ph22 ], [ 0, %.lr.ph.split.us ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0915.us21, i64 2 ; 2 uses
  %i.e = icmp ult i16 %i.c, 128
  %i.f = icmp ult i16 %i.c, 2048
  %.0.i.us = select i1 %i.f, i32 2, i32 3
  %.1.v.us = select i1 %i.e, i32 1, i32 %.0.i.us
  %.1.us = add nuw nsw i32 %.1.v.us, %.016.us20   ; 2 uses
  %i.g = load i16, ptr %i.d, align 2, !tbaa !193  ; 2 uses
  %.not13.us = icmp eq i16 %i.g, 0
  br i1 %.not13.us, label %.critedge, label %.lr.ph22

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.b
  %.016 = phi i32 [ %.1, %bb.b ], [ 0, %.lr.ph ]  ; 2 uses
  %.0915 = phi ptr [ %i.i, %bb.b ], [ %0, %.lr.ph ] ; 2 uses
  %i.h = load i16, ptr %.0915, align 2, !tbaa !193 ; 3 uses
  %.not13 = icmp eq i16 %i.h, 0
  br i1 %.not13, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.i = getelementptr inbounds nuw i8, ptr %.0915, i64 2 ; 2 uses
  %i.j = icmp ult i16 %i.h, 128
  %i.k = icmp ult i16 %i.h, 2048
  %.0.i = select i1 %i.k, i32 2, i32 3
  %.1.v = select i1 %i.j, i32 1, i32 %.0.i
  %.1 = add nuw nsw i32 %.1.v, %.016              ; 2 uses
  %i.l = icmp ult ptr %i.i, %1
  br i1 %i.l, label %.lr.ph.split, label %.critedge, !llvm.loop !800

.critedge:                                        ; preds = %.lr.ph.split, %bb.b, %.lr.ph22, %.lr.ph.split.us, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.split.us ], [ %.1.us, %.lr.ph22 ], [ %.016, %.lr.ph.split ], [ %.1, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -16777216, 0) i32 @_Z18ImAlphaBlendColorsjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i32 %1, 24
  %i.b = uitofp nneg i32 %i.a to float
  %i.c = fdiv float %i.b, 2.550000e+02            ; 3 uses
  %i.d = and i32 %0, 255                          ; 2 uses
  %i.e = and i32 %1, 255
  %i.f = uitofp nneg i32 %i.d to float
  %i.g = sub nsw i32 %i.e, %i.d
  %i.h = sitofp i32 %i.g to float
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.c, float %i.f)
  %i.j = fptosi float %i.i to i32
  %i.k = lshr i32 %0, 8
  %i.l = and i32 %i.k, 255                        ; 2 uses
  %i.m = lshr i32 %1, 8
  %i.n = and i32 %i.m, 255
  %i.o = uitofp nneg i32 %i.l to float
  %i.p = sub nsw i32 %i.n, %i.l
  %i.q = sitofp i32 %i.p to float
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %i.c, float %i.o)
  %i.s = fptosi float %i.r to i32
  %i.t = lshr i32 %0, 16
  %i.u = and i32 %i.t, 255                        ; 2 uses
  %i.v = lshr i32 %1, 16
  %i.w = and i32 %i.v, 255
  %i.x = uitofp nneg i32 %i.u to float
  %i.y = sub nsw i32 %i.w, %i.u
  %i.z = sitofp i32 %i.y to float
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.c, float %i.x)
  %i.ab = fptosi float %i.aa to i32
  %i.ac = shl i32 %i.ab, 16
  %i.ad = shl i32 %i.s, 8
  %i.ae = or i32 %i.ad, %i.j
  %i.af = or i32 %i.ae, %i.ac
  %i.ag = or i32 %i.af, -16777216
  ret i32 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN5ImGui23ColorConvertU32ToFloat4Ej(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %1 = bitcast i32 %0 to <4 x i8>
  %i.a = uitofp <4 x i8> %1 to <4 x float>
  %i.b = fmul nnan <4 x float> %i.a, splat (float f0x3B808081) ; 2 uses
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.d = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.c, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.d, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 4, !tbaa !75 ; 3 uses
  %i.b = fcmp olt <4 x float> %i.a, zeroinitializer
  %i.c = fcmp ogt <4 x float> %i.a, splat (float 1.000000e+00)
  %i.d = select <4 x i1> %i.c, <4 x float> splat (float 1.000000e+00), <4 x float> %i.a
  %i.e = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.d, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.f = select <4 x i1> %i.b, <4 x float> splat (float 5.000000e-01), <4 x float> %i.e
  %i.g = fptosi <4 x float> %i.f to <4 x i32>
  %i.h = shl <4 x i32> %i.g, <i32 0, i32 8, i32 16, i32 24>
  %i.i = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.h)
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp olt float %1, %2                    ; 3 uses
  %.017 = select i1 %i.a, float %2, float %1      ; 3 uses
  %.016 = select i1 %i.a, float %1, float %2      ; 3 uses
  %.0 = select i1 %i.a, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.b = fcmp olt float %0, %.017                 ; 3 uses
  %i.c = fsub float f0xBEAAAAAB, %.0
  %.1 = select i1 %i.b, float %i.c, float %.0
  %.019 = select i1 %i.b, float %.017, float %0   ; 3 uses
  %.118 = select i1 %i.b, float %0, float %.017   ; 3 uses
  %i.d = fcmp olt float %.118, %.016
  %i.e = select i1 %i.d, float %.118, float %.016
  %i.f = insertelement <2 x float> poison, float %.019, i64 0
  %i.g = insertelement <2 x float> %i.f, float %.118, i64 1
  %i.h = insertelement <2 x float> poison, float %i.e, i64 0
  %i.i = insertelement <2 x float> %i.h, float %.016, i64 1
  %i.j = fsub <2 x float> %i.g, %i.i              ; 2 uses
  %i.k = fadd float %.019, f0x1E3CE508
  %i.l = extractelement <2 x float> %i.j, i64 0
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float 6.000000e+00, float f0x1E3CE508)
  %i.n = insertelement <2 x float> poison, float %i.k, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 1
  %i.p = fdiv <2 x float> %i.j, %i.o              ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 1
  %i.r = fadd float %.1, %i.q
  %i.s = tail call float @llvm.fabs.f32(float %i.r)
  store float %i.s, ptr %3, align 4, !tbaa !75
  %i.t = extractelement <2 x float> %i.p, i64 0
  store float %i.t, ptr %4, align 4, !tbaa !75
  store float %.019, ptr %5, align 4, !tbaa !75
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #25 {
bb.a:
  %i.a = fcmp oeq float %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %2, ptr %5, align 4, !tbaa !75
  store float %2, ptr %4, align 4, !tbaa !75
  store float %2, ptr %3, align 4, !tbaa !75
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = tail call float @fmodf(float noundef %0, float noundef 1.000000e+00) #39
  %i.c = fdiv float %i.b, f0x3E2AAAAB             ; 2 uses
  %i.d = fptosi float %i.c to i32                 ; 2 uses
  %i.e = sitofp i32 %i.d to float
  %i.f = fsub float %i.c, %i.e                    ; 2 uses
  %i.g = fsub float 1.000000e+00, %1
  %i.h = fmul float %2, %i.g                      ; 6 uses
  %i.i = fneg float %1
  %i.j = fsub float 1.000000e+00, %i.f
  %i.k = insertelement <2 x float> poison, float %i.i, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = insertelement <2 x float> poison, float %i.f, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.j, i64 1
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.n, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = fmul float %2, %i.p                      ; 3 uses
  %i.r = extractelement <2 x float> %i.o, i64 1
  %i.s = fmul float %2, %i.r                      ; 3 uses
  switch i32 %i.d, label %bb.i [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  store float %2, ptr %3, align 4, !tbaa !75
  store float %i.s, ptr %4, align 4, !tbaa !75
  store float %i.h, ptr %5, align 4, !tbaa !75
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  store float %i.q, ptr %3, align 4, !tbaa !75
  store float %2, ptr %4, align 4, !tbaa !75
  store float %i.h, ptr %5, align 4, !tbaa !75
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  store float %i.h, ptr %3, align 4, !tbaa !75
  store float %2, ptr %4, align 4, !tbaa !75
  store float %i.s, ptr %5, align 4, !tbaa !75
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  store float %i.h, ptr %3, align 4, !tbaa !75
  store float %i.q, ptr %4, align 4, !tbaa !75
  store float %2, ptr %5, align 4, !tbaa !75
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  store float %i.s, ptr %3, align 4, !tbaa !75
  store float %i.h, ptr %4, align 4, !tbaa !75
  store float %2, ptr %5, align 4, !tbaa !75
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  store float %2, ptr %3, align 4, !tbaa !75
  store float %i.h, ptr %4, align 4, !tbaa !75
  store float %i.q, ptr %5, align 4, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nofree uwtable
define dso_local void @_ZN12ImGuiStorage14BuildSortByKeyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !195    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !801
  %i.e = zext nneg i32 %i.a to i64
  tail call void @qsort(ptr noundef %i.d, i64 noundef %i.e, i64 noundef 16, ptr noundef nonnull @_ZZN12ImGuiStorage14BuildSortByKeyEvEN10StaticFunc15PairCompareByIDEPKvS2_)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZZN12ImGuiStorage14BuildSortByKeyEvEN10StaticFunc15PairCompareByIDEPKvS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !197
  %i.b = load i32, ptr %1, align 8, !tbaa !197
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !198   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !199 ; 3 uses
  %.not1.i = icmp eq i32 %.val, 0
  br i1 %.not1.i, label %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = sext i32 %.val to i64                    ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.03.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.b, %.lr.ph.preheader.i ] ; 2 uses
  %.0152.i = phi ptr [ %.116.i, %.lr.ph.i ], [ %.val8, %.lr.ph.preheader.i ] ; 2 uses
  %i.c = lshr i64 %.03.i, 1                       ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.0152.i, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !197
  %i.f = icmp ult i32 %i.e, %1                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.neg.i = xor i64 %i.c, -1
  %i.h = add i64 %.03.i, %.neg.i
  %.116.i = select i1 %i.f, ptr %i.g, ptr %.0152.i ; 2 uses
  %.1.i = select i1 %i.f, i64 %i.h, i64 %i.c      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit, label %.lr.ph.i, !llvm.loop !8
end_hunk_0
begin_hunk_1_@_ZN16ImGuiListClipper4StepEv:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !261
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !263
  %i.gl = sub nsw i32 %i.j, %i.gk
  %i.gm = sitofp i32 %i.gl to float
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.go = load float, ptr %i.gn, align 4, !tbaa !262 ; 2 uses
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.go, float %i.gi)
  tail call fastcc void @_ZL32SetCursorPosYAndSetupForPrevLineff(float noundef %i.gp, float noundef %i.go)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i32 -1, ptr %i.i, align 4, !tbaa !226
  br label %_ZN16ImGuiListClipper3EndEv.exit

_ZN16ImGuiListClipper3EndEv.exit:                 ; preds = %_ZL32SetCursorPosYAndSetupForPrevLineff.exit.i31, %bb.z, %_ZL32SetCursorPosYAndSetupForPrevLineff.exit.i, %bb.h, %bb.ah, %bb.ar, %_ZL32SetCursorPosYAndSetupForPrevLineff.exit, %bb.t, %bb.r
  %.0 = phi i1 [ false, %bb.ah ], [ true, %bb.t ], [ false, %_ZL32SetCursorPosYAndSetupForPrevLineff.exit.i ], [ true, %_ZL32SetCursorPosYAndSetupForPrevLineff.exit ], [ false, %bb.ar ], [ true, %bb.r ], [ false, %bb.h ], [ false, %bb.z ], [ false, %_ZL32SetCursorPosYAndSetupForPrevLineff.exit.i31 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(1048) ptr @_ZN5ImGui8GetStyleEv() local_unnamed_addr #33 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %0, float noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5672
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.d
  %i.f = load float, ptr %i.b, align 4, !tbaa !278
  %i.g = load <4 x float>, ptr %i.e, align 4, !tbaa !75
  %i.h = fmul float %1, %i.f
  %i.i = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.h, i64 3
  %i.j = fmul <4 x float> %i.g, %i.i              ; 3 uses
  %i.k = fcmp olt <4 x float> %i.j, zeroinitializer
  %i.l = fcmp ogt <4 x float> %i.j, splat (float 1.000000e+00)
  %i.m = select <4 x i1> %i.l, <4 x float> splat (float 1.000000e+00), <4 x float> %i.j
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.o = select <4 x i1> %i.k, <4 x float> splat (float 5.000000e-01), <4 x float> %i.n
  %i.p = fptosi <4 x float> %i.o to <4 x i32>
  %i.q = shl <4 x i32> %i.p, <i32 0, i32 8, i32 16, i32 24>
  %i.r = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.q)
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.c = load float, ptr %i.b, align 4, !tbaa !278
  %i.d = load <4 x float>, ptr %0, align 4, !tbaa !75
  %i.e = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.c, i64 3
  %i.f = fmul <4 x float> %i.d, %i.e              ; 3 uses
  %i.g = fcmp olt <4 x float> %i.f, zeroinitializer
  %i.h = fcmp ogt <4 x float> %i.f, splat (float 1.000000e+00)
  %i.i = select <4 x i1> %i.h, <4 x float> splat (float 1.000000e+00), <4 x float> %i.f
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.k = select <4 x i1> %i.g, <4 x float> splat (float 5.000000e-01), <4 x float> %i.j
  %i.l = fptosi <4 x float> %i.k to <4 x i32>
  %i.m = shl <4 x i32> %i.l, <i32 0, i32 8, i32 16, i32 24>
  %i.n = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.m)
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef %0) local_unnamed_addr #33 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5672
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN5ImGui11GetColorU32Ej(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.c = load float, ptr %i.b, align 4, !tbaa !278 ; 2 uses
  %i.d = fcmp ult float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %0, 24
  %i.f = uitofp nneg i32 %i.e to float
  %i.g = fmul float %i.c, %i.f
  %i.h = fptoui float %i.g to i32
  %i.i = and i32 %0, 16777215
  %i.j = shl i32 %i.h, 24
  %i.k = or disjoint i32 %i.j, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ %0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui14PushStyleColorEij(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5672
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %.sroa.4.sroa.0.0.copyload9 = load <4 x float>, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7544 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !279  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7548 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !280
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7552
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !281
  br label %_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.f, 1
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv i32 %i.f, 2
  %i.l = add nsw i32 %i.k, %i.f
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.l, %bb.c ], [ 8, %bb.b ]
  %i.n = tail call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %i.j) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, 20
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !179
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !179
  %i.t = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !180
  %i.u = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !180
  %i.v = tail call noundef ptr %i.t(i64 noundef %i.p, ptr noundef %i.u), !inline_history !15 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7552 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !281  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.x, null
  br i1 %.not6.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.y = load i32, ptr %i.e, align 8, !tbaa !279
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr nonnull align 4 %i.x, i64 %i.aa, i1 false)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !281 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 944 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !179
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !179
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.f, %bb.e, %bb.d
  %i.ag = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !180
  %i.ah = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !180
  tail call void %i.ag(ptr noundef %i.ab, ptr noundef %i.ah), !inline_history !16
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !281
  store i32 %i.n, ptr %i.g, align 4, !tbaa !280
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !279
  br label %_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_.exit

_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i, %bb.g
  %i.ai = phi i32 [ %i.f, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.g ]
  %i.aj = phi ptr [ %.pre.i, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i ], [ %i.v, %bb.g ]
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [20 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  store i32 %0, ptr %i.al, align 4
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store <4 x float> %.sroa.4.sroa.0.0.copyload9, ptr %.sroa.4.0..sroa_idx6, align 4
  %i.am = load i32, ptr %i.e, align 8, !tbaa !279
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.e, align 8, !tbaa !279
  %i.ao = lshr i32 %1, 8
  %2 = and i32 %i.ao, 255
  %3 = and i32 %1, 255
  %4 = uitofp nneg i32 %2 to float
  %5 = uitofp nneg i32 %3 to float
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %7 = insertelement <2 x float> %6, float %4, i64 1
  %8 = fmul nnan <2 x float> %7, splat (float f0x3B808081)
  %9 = lshr i32 %1, 16
  %10 = lshr i32 %1, 24
  %11 = and i32 %9, 255
  %12 = uitofp nneg i32 %10 to float
  %13 = uitofp nneg i32 %11 to float
  %14 = insertelement <2 x float> poison, float %13, i64 0
  %15 = insertelement <2 x float> %14, float %12, i64 1
  %i.ap = fmul nnan <2 x float> %15, splat (float f0x3B808081)
  store <2 x float> %8, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> %i.ap, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5672
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.4.sroa.0.0.copyload8 = load <4 x float>, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7544 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !279  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7548 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !280
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7552
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !281
  br label %_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.f, 1
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv i32 %i.f, 2
  %i.l = add nsw i32 %i.k, %i.f
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.l, %bb.c ], [ 8, %bb.b ]
  %i.n = tail call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %i.j) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, 20
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !179
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !179
  %i.t = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !180
  %i.u = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !180
  %i.v = tail call noundef ptr %i.t(i64 noundef %i.p, ptr noundef %i.u), !inline_history !15 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7552 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !281  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.x, null
  br i1 %.not6.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.y = load i32, ptr %i.e, align 8, !tbaa !279
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr nonnull align 4 %i.x, i64 %i.aa, i1 false)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !281 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 944 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !179
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !179
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.f, %bb.e, %bb.d
  %i.ag = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !180
  %i.ah = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !180
  tail call void %i.ag(ptr noundef %i.ab, ptr noundef %i.ah), !inline_history !16
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !281
  store i32 %i.n, ptr %i.g, align 4, !tbaa !280
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !279
  br label %_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_.exit

_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i, %bb.g
  %i.ai = phi i32 [ %i.f, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.g ]
  %i.aj = phi ptr [ %.pre.i, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i ], [ %i.v, %bb.g ]
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [20 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  store i32 %0, ptr %i.al, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store <4 x float> %.sroa.4.sroa.0.0.copyload8, ptr %.sroa.4.0..sroa_idx, align 4
  %i.am = load i32, ptr %i.e, align 8, !tbaa !279
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.e, align 8, !tbaa !279
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !282
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui13PopStyleColorEi(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7544 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 7552 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5672 ; 3 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !279 ; 2 uses
  %xtraiter = and i32 %0, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !281
  %i.g = sext i32 %.pre to i64
  %i.h = getelementptr [20 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -20
  %i.j = getelementptr i8, ptr %i.h, i64 -16
  %i.k = load i32, ptr %i.i, align 4, !tbaa !284
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !282
  %i.n = load i32, ptr %i.c, align 8, !tbaa !279
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !279
  %i.p = add nsw i32 %0, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.unr = phi i32 [ %.pre, %.lr.ph ], [ %i.o, %.prol.loopexit.unr-lcssa ]
  %.06.unr = phi i32 [ %0, %.lr.ph ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  %i.q = icmp eq i32 %0, 1
  br i1 %i.q, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.r = phi i32 [ %i.al, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %.06 = phi i32 [ %i.am, %.lr.ph.new ], [ %.06.unr, %.prol.loopexit ] ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !281
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr [20 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -20
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %i.x = load i32, ptr %i.v, align 4, !tbaa !284
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !282
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !279
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.c, align 8, !tbaa !279
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !281
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr [20 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -20
  %i.ag = getelementptr i8, ptr %i.ae, i64 -16
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !284
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !282
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !279
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.c, align 8, !tbaa !279
  %i.am = add nsw i32 %.06, -2
  %i.an = icmp sgt i32 %.06, 2
  br i1 %i.an, label %.lr.ph.new, label %._crit_edge, !llvm.loop !813

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui12PushStyleVarEif(i32 noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = shl nuw i64 1, %i.a
  %i.c = and i64 %i.b, 8206235
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds [12 x i8], ptr @_ZL13GStyleVarInfo, i64 %i.a
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5472
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !286
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 7560 ; 5 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !75
  %i.m = load i32, ptr %i.k, align 8, !tbaa !287  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 7564 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !288
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %._ZN8ImVectorI13ImGuiStyleModE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI13ImGuiStyleModE7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 7568
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %.pre.i531 = load ptr, ptr %.phi.trans.insert.i530, align 8, !tbaa !340
  br label %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit

bb.gc:                                            ; preds = %bb.gb
  %i.agt = add nsw i32 %i.agn, 1
  %.not.i.i532 = icmp eq i32 %i.agn, 0
  br i1 %.not.i.i532, label %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.agu = sdiv i32 %i.agn, 2
  %i.agv = add nsw i32 %i.agu, %i.agn
  br label %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i

_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i: ; preds = %bb.gd, %bb.gc
  %i.agw = phi i32 [ %i.agv, %bb.gd ], [ 8, %bb.gc ]
  %i.agx = call noundef i32 @llvm.smax.i32(i32 %i.agw, i32 %i.agt) ; 2 uses
  %i.agy = sext i32 %i.agx to i64
  %i.agz = shl nsw i64 %i.agy, 3
  %i.aha = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.i533 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i.i533, label %_ZN5ImGui8MemAllocEm.exit.i.i534, label %bb.ge

bb.ge:                                            ; preds = %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 944 ; 2 uses
  %i.ahc = load i32, ptr %i.ahb, align 8, !tbaa !179
  %i.ahd = add nsw i32 %i.ahc, 1
  store i32 %i.ahd, ptr %i.ahb, align 8, !tbaa !179
  br label %_ZN5ImGui8MemAllocEm.exit.i.i534

_ZN5ImGui8MemAllocEm.exit.i.i534:                 ; preds = %bb.ge, %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit.i
  %i.ahe = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !180
  %i.ahf = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !180
  %i.ahg = call noundef ptr %i.ahe(i64 noundef %i.agz, ptr noundef %i.ahf), !inline_history !48 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.jj, i64 360 ; 3 uses
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !340 ; 2 uses
  %.not6.i.i535 = icmp eq ptr %i.ahi, null
  br i1 %.not6.i.i535, label %bb.gi, label %bb.gf

bb.gf:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i534
  %i.ahj = load i32, ptr %i.agm, align 8, !tbaa !361
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = shl nsw i64 %i.ahk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ahg, ptr nonnull align 8 %i.ahi, i64 %i.ahl, i1 false)
  %i.ahm = load ptr, ptr %i.ahh, align 8, !tbaa !340 ; 2 uses
  %.not.i7.i.i536 = icmp eq ptr %i.ahm, null
  br i1 %.not.i7.i.i536, label %_ZN5ImGui7MemFreeEPv.exit.i.i538, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ahn = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 2 uses
  %.not4.i.i.i537 = icmp eq ptr %i.ahn, null
  br i1 %.not4.i.i.i537, label %_ZN5ImGui7MemFreeEPv.exit.i.i538, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 944 ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 8, !tbaa !179
  %i.ahq = add nsw i32 %i.ahp, -1
  store i32 %i.ahq, ptr %i.aho, align 8, !tbaa !179
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i538

_ZN5ImGui7MemFreeEPv.exit.i.i538:                 ; preds = %bb.gh, %bb.gg, %bb.gf
  %i.ahr = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !180
  %i.ahs = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !180
  call void %i.ahr(ptr noundef %i.ahm, ptr noundef %i.ahs), !inline_history !49
  br label %bb.gi

bb.gi:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i538, %_ZN5ImGui8MemAllocEm.exit.i.i534
  store ptr %i.ahg, ptr %i.ahh, align 8, !tbaa !340
  store i32 %i.agx, ptr %i.agq, align 4, !tbaa !360
  %.pre3.i539 = load i32, ptr %i.agm, align 8, !tbaa !361
  br label %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit

_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit: ; preds = %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i, %bb.gi
  %i.aht = phi i32 [ %i.agn, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i ], [ %.pre3.i539, %bb.gi ]
  %i.ahu = phi ptr [ %.pre.i531, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge.i ], [ %i.ahg, %bb.gi ]
  %i.ahv = sext i32 %i.aht to i64
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.ahu, i64 %i.ahv
  %i.ahx = ptrtoint ptr %.01057 to i64
  store i64 %i.ahx, ptr %i.ahw, align 8
  %i.ahy = load i32, ptr %i.agm, align 8, !tbaa !361
  %i.ahz = add nsw i32 %i.ahy, 1
  store i32 %i.ahz, ptr %i.agm, align 8, !tbaa !361
  %or.cond7 = or i1 %i.ng, %.0317.shrunk
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.ug
  br i1 %or.cond9, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit
  %i.aia = getelementptr inbounds nuw i8, ptr %i.jj, i64 216
  %i.aib = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  %i.aic = load i64, ptr %i.aia, align 8
  store i64 %i.aic, ptr %i.aib, align 8
  br label %bb.gk

bb.gk:                                            ; preds = %_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_.exit, %bb.gj, %bb.ga
  %i.aid = getelementptr inbounds nuw i8, ptr %.01057, i64 184 ; 2 uses
  %i.aie = load float, ptr %i.aid, align 8, !tbaa !1008 ; 2 uses
  %i.aif = fcmp une float %i.aie, f0x7F7FFFFF
  br i1 %i.aif, label %bb.gl, label %.critedge392

bb.gl:                                            ; preds = %bb.gk
  %i.aig = load i8, ptr %i.wt, align 1, !tbaa !637
  %i.aih = icmp eq i8 %i.aig, 0
  br i1 %i.aih, label %bb.gm, label %.critedge392

bb.gm:                                            ; preds = %bb.gl
  %i.aii = getelementptr inbounds nuw i8, ptr %.01057, i64 192
  %i.aij = getelementptr i8, ptr %.01057, i64 188 ; 2 uses
  %.val419 = load float, ptr %i.aij, align 4, !tbaa !188
  %.phi.trans.insert.i544 = getelementptr inbounds nuw i8, ptr %.01057, i64 180 ; 2 uses
  %.pre.i545 = load i32, ptr %.phi.trans.insert.i544, align 4
  %i.aik = and i32 %.pre.i545, -15
  store i32 %i.aik, ptr %.phi.trans.insert.i544, align 4
  store i32 2139095039, ptr %i.aid, align 8
  store i32 2139095039, ptr %i.aij, align 4
  %i.ail = getelementptr inbounds nuw i8, ptr %.01057, i64 16 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.01057, i64 216 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.01057, i64 248 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.01057, i64 232 ; 2 uses
  %i.aip = load <2 x float>, ptr %i.aet, align 8, !tbaa !75
  %i.aiq = load <2 x float>, ptr %i.aii, align 8, !tbaa !75
  %i.air = fmul <2 x float> %i.aip, %i.aiq
  %i.ais = insertelement <2 x float> poison, float %i.aie, i64 0
  %i.ait = insertelement <2 x float> %i.ais, float %.val419, i64 1
  %i.aiu = fsub <2 x float> %i.ait, %i.air
  %i.aiv = load <2 x float>, ptr %i.ail, align 8
  %i.aiw = fptosi <2 x float> %i.aiu to <2 x i32>
  %i.aix = sitofp <2 x i32> %i.aiw to <2 x float> ; 2 uses
  store <2 x float> %i.aix, ptr %i.ail, align 8
  %i.aiy = fsub <2 x float> %i.aix, %i.aiv        ; 3 uses
  %i.aiz = shufflevector <2 x float> %i.aiy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aja = load <2 x float>, ptr %i.aim, align 8, !tbaa !75
  %i.ajb = fadd <2 x float> %i.aiy, %i.aja
  store <2 x float> %i.ajb, ptr %i.aim, align 8, !tbaa !75
  %i.ajc = load <2 x float>, ptr %i.ain, align 8, !tbaa !75
  %i.ajd = fadd <2 x float> %i.aiy, %i.ajc
  store <2 x float> %i.ajd, ptr %i.ain, align 8, !tbaa !75
  %i.aje = load <4 x float>, ptr %i.aio, align 8, !tbaa !75
  %i.ajf = fadd <4 x float> %i.aiz, %i.aje
  store <4 x float> %i.ajf, ptr %i.aio, align 8, !tbaa !75
  br label %bb.gs

.critedge392:                                     ; preds = %bb.gk, %bb.gl
  %i.ajg = and i32 %.1, 268435456
  %.not359 = icmp eq i32 %i.ajg, 0
  br i1 %.not359, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %.critedge392
  %i.ajh = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.aji = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajh, ptr %i.aji, align 8
  br label %bb.gs

bb.go:                                            ; preds = %.critedge392
  %i.ajj = icmp eq i32 %i.nf, 0
  %or.cond11 = or i1 %i.ajj, %.0317.shrunk
  %or.cond13.not = select i1 %or.cond11, i1 true, i1 %i.wv
  br i1 %or.cond13.not, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajk = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.ajl = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajk, ptr %i.ajl, align 8
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %or.cond15 = or i1 %.not347, %.0317.shrunk
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.ug
  br i1 %or.cond17, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ajm = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.ajn = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajm, ptr %i.ajn, align 8
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gn, %bb.gq, %bb.gr, %bb.gp, %bb.gm
  %i.ajo = load ptr, ptr @GImGui, align 8, !tbaa !98
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 7680
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !396
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !398 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #39
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 12
  %i.aju = load <2 x float>, ptr %i.ajs, align 4, !tbaa !75 ; 3 uses
  %i.ajv = load <2 x float>, ptr %i.ajt, align 4, !tbaa !75
  %i.ajw = fadd <2 x float> %i.aju, %i.ajv        ; 2 uses
  store <2 x float> %i.aju, ptr %23, align 16
  %i.ajx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store <2 x float> %i.ajw, ptr %i.ajx, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajr, i64 20
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajr, i64 28
  %i.aka = getelementptr inbounds nuw i8, ptr %i.g, i64 5640
  %i.akb = getelementptr inbounds nuw i8, ptr %i.g, i64 5648
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #39
  %i.akc = load <2 x float>, ptr %i.ajy, align 4, !tbaa !75 ; 2 uses
  %i.akd = load <2 x float>, ptr %i.ajz, align 4, !tbaa !75
  %i.ake = fadd <2 x float> %i.akc, %i.akd
  %i.akf = load <2 x float>, ptr %i.aka, align 8, !tbaa !75 ; 2 uses
  %i.akg = load <2 x float>, ptr %i.akb, align 8, !tbaa !75 ; 2 uses
  %i.akh = fcmp oge <2 x float> %i.akf, %i.akg
  %i.aki = select <2 x i1> %i.akh, <2 x float> %i.akf, <2 x float> %i.akg ; 2 uses
  %i.akj = fadd <2 x float> %i.akc, %i.aki        ; 5 uses
  %i.akk = fsub <2 x float> %i.ake, %i.aki
  store <2 x float> %i.akj, ptr %24, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store <2 x float> %i.akk, ptr %i.akl, align 8
  %brmerge394 = select i1 %.0317.shrunk, i1 true, i1 %.not346.not1076
  br i1 %brmerge394, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.akm = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.akn = load i8, ptr %i.akm, align 8, !tbaa !326
  %i.ako = icmp slt i8 %i.akn, 1
  br i1 %i.ako, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.akp = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !325
  %i.akr = icmp slt i8 %i.akq, 1
  %i.aks = fcmp ogt <2 x float> %i.ajw, %i.aju    ; 2 uses
  %i.akt = extractelement <2 x i1> %i.aks, i64 0
  %or.cond1317 = select i1 %i.akr, i1 %i.akt, i1 false
  %i.aku = extractelement <2 x i1> %i.aks, i64 1
  %or.cond1318 = select i1 %or.cond1317, i1 %i.aku, i1 false
  br i1 %or.cond1318, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  call fastcc void @_ZL15ClampWindowRectP11ImGuiWindowRK6ImRect(ptr noundef nonnull %.01057, ptr noundef nonnull align 4 dereferenceable(16) %24)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gs, %bb.gv, %bb.gu, %bb.gt
  %i.akv = getelementptr inbounds nuw i8, ptr %.01057, i64 16 ; 22 uses
  %i.akw = getelementptr i8, ptr %.01057, i64 20  ; 7 uses
  %i.akx = load <2 x float>, ptr %i.akv, align 8, !tbaa !75
  %i.aky = fptosi <2 x float> %i.akx to <2 x i32>
  %i.akz = sitofp <2 x i32> %i.aky to <2 x float>
  store <2 x float> %i.akz, ptr %i.akv, align 8
  %i.ala = and i32 %.1, 201326592
  %or.cond395 = icmp eq i32 %i.ala, 67108864
  %. = select i1 %or.cond395, i64 5524, i64 5488
  %.sink1319 = select i1 %.not346, i64 %., i64 5516
  %i.alb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink1319
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !75 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.01057, i64 72 ; 4 uses
  store float %i.alc, ptr %i.ald, align 8, !tbaa !1009
  %i.ale = and i32 %.1, 4096
  %.not363 = icmp ne i32 %i.ale, 0
  %not..0308.in1064 = xor i1 %.0308.in1064, true
  %or.cond396 = select i1 %not..0308.in1064, i1 true, i1 %.not363 ; 2 uses
  %brmerge410 = or i1 %i.ng, %or.cond396
  %not.or.cond396 = xor i1 %or.cond396, true
  %i.alf = icmp eq i32 %i.uf, 0
  %spec.select1094 = select i1 %brmerge410, i1 %not.or.cond396, i1 %i.alf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.alg = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.alh = load i8, ptr %i.alg, align 4, !tbaa !519, !range !216, !noundef !217
  %i.ali = trunc nuw i8 %i.alh to i1
  %i.alj = select i1 %i.ali, i32 2, i32 1         ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.g, i64 6528 ; 4 uses
  %i.all = load float, ptr %i.alk, align 8, !tbaa !294 ; 2 uses
  %i.alm = fmul float %i.all, 1.100000e+00        ; 2 uses
  %i.aln = fadd float %i.alc, 1.000000e+00        ; 2 uses
  %i.alo = call float @llvm.fmuladd.f32(float %i.all, float 2.000000e-01, float %i.aln) ; 2 uses
  %i.alp = fcmp oge float %i.alm, %i.alo
  %i.alq = select i1 %i.alp, float %i.alm, float %i.alo
  %i.alr = fptosi float %i.alq to i32
  %i.als = sitofp i32 %i.alr to float             ; 2 uses
  %i.alt = load i8, ptr %i.ads, align 1, !tbaa !595, !range !216, !noundef !217
  %i.alu = trunc nuw i8 %i.alt to i1
  br i1 %i.alu, label %.thread1297, label %bb.gx

.thread1297:                                      ; preds = %bb.gw
  %i.alv = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 2 uses
  store i8 -1, ptr %i.alv, align 8, !tbaa !1010
  br label %bb.jm

bb.gx:                                            ; preds = %bb.gw
  %i.alw = bitcast <2 x float> %i.abw to i64
  %i.alx = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 15 uses
  %i.aly = load i32, ptr %i.aeu, align 4, !tbaa !392
  %i.alz = and i32 %i.aly, 66
  %or.cond144.i = icmp eq i32 %i.alz, 0
  br i1 %or.cond144.i, label %bb.gy, label %.thread1301

bb.gy:                                            ; preds = %bb.gx
  %i.ama = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.amb = load i8, ptr %i.ama, align 8, !tbaa !326
  %i.amc = icmp sgt i8 %i.amb, 0
  br i1 %i.amc, label %.thread1301, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.amd = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !325
  %i.amf = icmp sgt i8 %i.ame, 0
  br i1 %i.amf, label %.thread1301, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.amg = getelementptr inbounds nuw i8, ptr %.01057, i64 143
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !391, !range !216, !noundef !217
  %i.ami = icmp eq i8 %i.amh, 0
  br i1 %i.ami, label %.thread1301, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alx, i64 204
  %i.amk = load i8, ptr %i.amj, align 4, !tbaa !519, !range !216, !noundef !217 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alx, i64 6528
  %i.amm = load float, ptr %i.aml, align 8, !tbaa !294 ; 2 uses
  %i.amn = fmul float %i.amm, 1.350000e+00        ; 2 uses
  %i.amo = call float @llvm.fmuladd.f32(float %i.amm, float 2.000000e-01, float %i.aln) ; 2 uses
  %i.amp = fcmp oge float %i.amn, %i.amo
  %i.amq = select i1 %i.amp, float %i.amn, float %i.amo
  %i.amr = fptosi float %i.amq to i32
  %i.ams = sitofp i32 %i.amr to float
  %i.amt = fmul nnan float %i.ams, 7.500000e-01
  %i.amu = fptosi float %i.amt to i32
  %i.amv = sitofp i32 %i.amu to float             ; 4 uses
  %i.amw = trunc nuw i8 %i.amk to i1
  %i.amx = select i1 %i.amw, float 4.000000e+00, float 0.000000e+00
  %i.amy = getelementptr inbounds nuw i8, ptr %.01057, i64 292 ; 2 uses
  store i32 1, ptr %i.amy, align 4, !tbaa !641
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.67)
  %i.amz = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.anb = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.anc = getelementptr inbounds nuw i8, ptr %.01057, i64 208 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.alx, i64 8056 ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.alx, i64 1061
  %i.anf = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.ang = getelementptr inbounds nuw i8, ptr %i.alx, i64 296 ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.alx, i64 7296 ; 2 uses
  %i.ani = fneg float %i.amv
  %wide.trip.count.i = zext nneg i32 %i.alj to i64
  %i.anj = load <2 x float>, ptr %i.akl, align 8  ; 3 uses
  %i.ank = load float, ptr %i.anf, align 4
  %i.anl = extractelement <2 x float> %i.akj, i64 0 ; 2 uses
  %i.anm = extractelement <2 x float> %i.anj, i64 0
  %i.ann = insertelement <2 x float> poison, float %i.ani, i64 0
  %i.ano = shufflevector <2 x float> %i.ann, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anp = insertelement <2 x float> poison, float %i.amx, i64 0
  %i.anq = shufflevector <2 x float> %i.anp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anr = insertelement <2 x float> poison, float %i.amv, i64 0
  %i.ans = shufflevector <2 x float> %i.anr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hc

.preheader.i:                                     ; preds = %bb.ht
  %.not.i572 = icmp eq i8 %i.amk, 0
  br i1 %.not.i572, label %._crit_edge.i574, label %.lr.ph.i573

.lr.ph.i573:                                      ; preds = %.preheader.i
  %i.ant = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.anu = getelementptr inbounds nuw i8, ptr %i.alx, i64 7252
  %28 = extractelement <2 x float> %i.akj, i64 1
  %i.anv = insertelement <2 x float> %i.anj, float f0x7F7FFFFF, i64 0
  %i.anw = insertelement <2 x float> %i.anj, float f0x7F7FFFFF, i64 1
  %i.anx = insertelement <2 x float> <float -4.000000e+00, float poison>, float %i.amv, i64 1 ; 4 uses
  %i.any = insertelement <2 x float> <float poison, float -4.000000e+00>, float %i.amv, i64 0 ; 4 uses
  br label %bb.hu

bb.hc:                                            ; preds = %bb.ht, %bb.hb
  %indvars.iv.i = phi i64 [ 0, %bb.hb ], [ %indvars.iv.next.i, %bb.ht ] ; 7 uses
  %.013592.i = phi i1 [ false, %bb.hb ], [ %.177.i, %bb.ht ] ; 2 uses
  %.sroa.054.089.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.hb ], [ %.sroa.054.375.i, %bb.ht ] ; 3 uses
  %.sroa.051.088.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.hb ], [ %.sroa.051.173.i, %bb.ht ] ; 2 uses
  %i.anz = getelementptr inbounds nuw [24 x i8], ptr @_ZL15resize_grip_def, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 8
  %i.aob = load <2 x float>, ptr %i.akv, align 8, !tbaa !75 ; 3 uses
  %i.aoc = load <2 x float>, ptr %i.aet, align 8, !tbaa !75
  %i.aod = fadd <2 x float> %i.aob, %i.aoc
  %i.aoe = fsub <2 x float> %i.aod, %i.aob
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  %i.aof = load <2 x float>, ptr %i.anz, align 8, !tbaa !75 ; 4 uses
  %i.aog = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aoe, <2 x float> %i.aof, <2 x float> %i.aob) ; 2 uses
  %i.aoh = load <2 x float>, ptr %i.aoa, align 8, !tbaa !75 ; 3 uses
  %i.aoi = fmul <2 x float> %i.anq, %i.aoh        ; 3 uses
  %i.aoj = fsub <2 x float> %i.aog, %i.aoi        ; 3 uses
  %i.aok = fmul <2 x float> %i.aoh, %i.ans
  %i.aol = fadd <2 x float> %i.aog, %i.aok        ; 3 uses
  store <2 x float> %i.aoj, ptr %20, align 8
  store <2 x float> %i.aol, ptr %i.amz, align 8
  %i.aom = extractelement <2 x float> %i.aol, i64 0 ; 2 uses
  %i.aon = extractelement <2 x float> %i.aoj, i64 0 ; 2 uses
  %i.aoo = fcmp ogt float %i.aon, %i.aom
  br i1 %i.aoo, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store float %i.aom, ptr %20, align 8, !tbaa !75
  store float %i.aon, ptr %i.amz, align 8, !tbaa !75
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.aop = extractelement <2 x float> %i.aol, i64 1 ; 2 uses
  %i.aoq = extractelement <2 x float> %i.aoj, i64 1 ; 2 uses
  %i.aor = fcmp ogt float %i.aoq, %i.aop
  br i1 %i.aor, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  store float %i.aop, ptr %i.ana, align 4, !tbaa !75
  store float %i.aoq, ptr %i.anb, align 4, !tbaa !75
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.aos = trunc nuw nsw i64 %indvars.iv.i to i32 ; 7 uses
  %.sroa.2.0.extract.shift.i.i = lshr i32 %i.aos, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %i.aos, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %i.aos, 24
  %i.aot = load ptr, ptr %i.anc, align 8, !tbaa !318
  %i.aou = load i32, ptr %i.jk, align 8, !tbaa !316
  %i.aov = sext i32 %i.aou to i64
  %i.aow = getelementptr [4 x i8], ptr %i.aot, i64 %i.aov
  %i.aox = getelementptr i8, ptr %i.aow, i64 -4
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !93
  %i.aoz = xor i32 %i.aoy, -1                     ; 2 uses
  %i.apa = lshr i32 %i.aoz, 8
  %i.apb = xor i32 %i.aoz, %i.aos
  %i.apc = and i32 %i.apb, 255
  %i.apd = zext nneg i32 %i.apc to i64
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apd
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !93
  %i.apg = xor i32 %i.apf, %i.apa                 ; 2 uses
  %i.aph = lshr i32 %i.apg, 8
  %i.api = xor i32 %i.apg, %.sroa.2.0.extract.shift.i.i
  %i.apj = and i32 %i.api, 255
  %i.apk = zext nneg i32 %i.apj to i64
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apk
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !93
  %i.apn = xor i32 %i.aph, %i.apm                 ; 2 uses
  %i.apo = lshr i32 %i.apn, 8
  %i.app = xor i32 %i.apn, %.sroa.3.0.extract.shift.i.i
  %i.apq = and i32 %i.app, 255
  %i.apr = zext nneg i32 %i.apq to i64
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apr
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !93
  %i.apu = xor i32 %i.apo, %i.apt                 ; 2 uses
  %i.apv = lshr i32 %i.apu, 8
  %i.apw = and i32 %i.apu, 255
  %i.apx = xor i32 %i.apw, %.sroa.4.0.extract.shift.i.i
  %i.apy = zext nneg i32 %i.apx to i64
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apy
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !93
  %i.aqb = xor i32 %i.aqa, %i.apv
  %i.aqc = xor i32 %i.aqb, -1                     ; 6 uses
  %i.aqd = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 5 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 7260
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !319
  %i.aqg = icmp eq i32 %i.aqf, %i.aqc
  br i1 %i.aqg, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqd, i64 7264
  store i32 %i.aqc, ptr %i.aqh, align 8, !tbaa !320
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqd, i64 7320
  %i.aqj = load i32, ptr %i.aqi, align 8, !tbaa !321
  %i.aqk = icmp eq i32 %i.aqj, %i.aqc
  br i1 %i.aqk, label %bb.hj, label %_ZN5ImGui11KeepAliveIDEj.exit.i.i

bb.hj:                                            ; preds = %bb.hi
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqd, i64 7324
  store i8 1, ptr %i.aql, align 4, !tbaa !322
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i.i

_ZN5ImGui11KeepAliveIDEj.exit.i.i:                ; preds = %bb.hj, %bb.hi
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqd, i64 7236
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !323
  %i.aqo = icmp eq i32 %i.aqn, %i.aqc
  br i1 %i.aqo, label %bb.hk, label %_ZN11ImGuiWindow5GetIDEi.exit.i

bb.hk:                                            ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i.i
  %i.aqp = inttoptr i64 %indvars.iv.i to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.aqc, i32 noundef 4, ptr noundef %i.aqp, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit.i

_ZN11ImGuiWindow5GetIDEi.exit.i:                  ; preds = %bb.hk, %_ZN5ImGui11KeepAliveIDEj.exit.i.i
  %i.aqq = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %20, i32 noundef %i.aqc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 264192) ; 0 uses
  %i.aqr = load i8, ptr %i.a, align 1, !tbaa !219, !range !216, !noundef !217
  %i.aqs = trunc nuw i8 %i.aqr to i1
  %i.aqt = load i8, ptr %i.b, align 1, !range !216
  %i.aqu = trunc nuw i8 %i.aqt to i1              ; 2 uses
  %or.cond.i = select i1 %i.aqs, i1 true, i1 %i.aqu
  br i1 %or.cond.i, label %bb.hl, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hl:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit.i
  %.not142.i = icmp eq i64 %indvars.iv.i, 0       ; 2 uses
  %i.aqv = select i1 %.not142.i, i32 6, i32 5
  store i32 %i.aqv, ptr %i.and, align 8, !tbaa !593
  br i1 %i.aqu, label %bb.hm, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hm:                                            ; preds = %bb.hl
  %i.aqw = load i8, ptr %i.ane, align 1, !tbaa !219, !range !216, !noundef !217
  %i.aqx = trunc nuw i8 %i.aqw to i1
  %or.cond3.i = and i1 %.not142.i, %i.aqx
  br i1 %or.cond3.i, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %i.aqy = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %.01057, i64 %i.alw)
  %i.aqz = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 13 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7260 ; 2 uses
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !319
  %i.arc = icmp ne i32 %i.arb, 0                  ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7272
  %i.are = zext i1 %i.arc to i8
  store i8 %i.are, ptr %i.ard, align 8, !tbaa !364
  br i1 %i.arc, label %bb.ho, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i

bb.ho:                                            ; preds = %bb.hn
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7268
  store float 0.000000e+00, ptr %i.arf, align 4, !tbaa !365
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7275
  store i8 0, ptr %i.arg, align 1, !tbaa !366
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7276
  store i8 0, ptr %i.arh, align 4, !tbaa !367
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7316
  store i32 -1, ptr %i.ari, align 4, !tbaa !368
  store i32 0, ptr %i.ara, align 4, !tbaa !319
  br label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i: ; preds = %bb.ho, %bb.hn
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7273
  store i8 0, ptr %i.arj, align 1, !tbaa !369
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7274
  store i8 0, ptr %i.ark, align 2, !tbaa !370
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7304
  store ptr null, ptr %i.arl, align 8, !tbaa !371
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7277
  store i8 0, ptr %i.arm, align 1, !tbaa !372
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7278
  store i8 0, ptr %i.arn, align 2, !tbaa !379
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqz, i64 7280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aro, i8 0, i64 16, i1 false)
  %i.arp = load i8, ptr %i.b, align 1, !range !216
  %i.arq = trunc nuw i8 %i.arp to i1
  %i.arr = load i8, ptr %i.a, align 1, !range !216
  %i.ars = trunc nuw i8 %i.arr to i1
  br label %bb.hs

bb.hp:                                            ; preds = %bb.hm
  switch i32 %i.aos, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i [
    i32 3, label %bb.hq
    i32 0, label %bb.hq
  ]

bb.hq:                                            ; preds = %bb.hp, %bb.hp
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i

_ZL7ImClampRK6ImVec2S1_S_.exit.i:                 ; preds = %bb.hq, %bb.hp
  %i.art = phi float [ %i.anl, %bb.hq ], [ f0xFF7FFFFF, %bb.hp ]
  %i.aru = add nsw i32 %i.aos, -1
  %i.arv = and i32 %i.aos, 2147483646
  %i.arw = fmul <2 x float> %i.aoh, %i.ano
  %i.arx = icmp eq i32 %i.arv, 2                  ; 2 uses
  %i.ary = icmp ult i32 %i.aru, 2                 ; 2 uses
  %i.arz = select i1 %i.arx, float %i.ank, float f0x7F7FFFFF
  %i.asa = select i1 %i.ary, float %i.anm, float f0x7F7FFFFF
  %i.asb = load <2 x float>, ptr %i.ang, align 8, !tbaa !75
  %i.asc = load <2 x float>, ptr %i.anh, align 8, !tbaa !75
  %i.asd = fsub <2 x float> %i.asb, %i.asc
  %i.ase = fsub <2 x float> %i.arw, %i.aoi
  %i.asf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ase, <2 x float> %i.aof, <2 x float> %i.aoi)
  %i.asg = fadd <2 x float> %i.asf, %i.asd        ; 3 uses
  %i.ash = insertelement <2 x float> %i.akj, float %i.art, i64 0 ; 2 uses
  %i.asi = fcmp olt <2 x float> %i.asg, %i.ash
  %i.asj = insertelement <2 x float> poison, float %i.asa, i64 0
  %i.ask = insertelement <2 x float> %i.asj, float %i.arz, i64 1 ; 2 uses
  %i.asl = fcmp ogt <2 x float> %i.asg, %i.ask
  %i.asm = select <2 x i1> %i.asl, <2 x float> %i.ask, <2 x float> %i.asg
  %i.asn = select <2 x i1> %i.asi, <2 x float> %i.ash, <2 x float> %i.asm ; 3 uses
  %i.aso = load <2 x float>, ptr %i.akv, align 8, !tbaa !75 ; 2 uses
  %i.asp = fsub <2 x float> %i.aso, %i.asn
  %i.asq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asp, <2 x float> %i.aof, <2 x float> %i.asn) ; 5 uses
  %i.asr = load <2 x float>, ptr %i.aet, align 8, !tbaa !75
  %i.ass = fadd <2 x float> %i.aso, %i.asr        ; 2 uses
  %i.ast = fsub <2 x float> %i.asn, %i.ass
  %i.asu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ast, <2 x float> %i.aof, <2 x float> %i.ass)
  %i.asv = fsub <2 x float> %i.asu, %i.asq        ; 3 uses
  %i.asw = bitcast <2 x float> %i.asv to i64
  %i.asx = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull readonly %.01057, i64 %i.asw) ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.asx, %i.asv
  %foldExtExtBinop1323 = fsub <2 x float> %i.asq, %foldExtExtBinop
  %sel = select i1 %i.ary, <2 x float> %foldExtExtBinop1323, <2 x float> %i.asq
  %.sroa.054.1.i = shufflevector <2 x float> %sel, <2 x float> %i.asq, <2 x i32> <i32 0, i32 3> ; 2 uses
  br i1 %i.arx, label %bb.hr, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hr:                                            ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i
  %foldExtExtBinop1325 = fsub <2 x float> %i.asx, %i.asv
  %foldExtExtBinop1327 = fsub <2 x float> %i.asq, %foldExtExtBinop1325
  %.sroa.054.4.vec.insert64.i = shufflevector <2 x float> %.sroa.054.1.i, <2 x float> %foldExtExtBinop1327, <2 x i32> <i32 0, i32 3>
  br label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i: ; preds = %bb.hr, %_ZL7ImClampRK6ImVec2S1_S_.exit.i, %bb.hl, %_ZN11ImGuiWindow5GetIDEi.exit.i
  %.sroa.051.1.i = phi <2 x float> [ %i.asx, %bb.hr ], [ %i.asx, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.051.088.i, %bb.hl ], [ %.sroa.051.088.i, %_ZN11ImGuiWindow5GetIDEi.exit.i ] ; 2 uses
  %.sroa.054.3.i = phi <2 x float> [ %.sroa.054.4.vec.insert64.i, %bb.hr ], [ %.sroa.054.1.i, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.054.089.i, %bb.hl ], [ %.sroa.054.089.i, %_ZN11ImGuiWindow5GetIDEi.exit.i ] ; 2 uses
  %i.asy = icmp eq i64 %indvars.iv.i, 0
  %i.asz = load i8, ptr %i.b, align 1, !range !216
  %i.ata = trunc nuw i8 %i.asz to i1              ; 2 uses
  %or.cond5.i = select i1 %i.asy, i1 true, i1 %i.ata
  %i.atb = load i8, ptr %i.a, align 1, !range !216
  %i.atc = trunc nuw i8 %i.atb to i1              ; 2 uses
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.atc
  br i1 %or.cond7.i, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i, label %bb.ht

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i: ; preds = %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i
  %.pre.i577 = load ptr, ptr @GImGui, align 8, !tbaa !98
  br label %bb.hs

bb.hs:                                            ; preds = %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i
  %i.atd = phi ptr [ %i.aqz, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.pre.i577, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ] ; 2 uses
  %i.ate = phi i1 [ %i.ars, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %i.atc, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %i.atf = phi i1 [ %i.arq, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %i.ata, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.178.i = phi i1 [ true, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.013592.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.sroa.054.376.i = phi <2 x float> [ %.sroa.054.089.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.sroa.054.3.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.sroa.051.174.i = phi <2 x float> [ %i.aqy, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.sroa.051.1.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atd, i64 5472
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atd, i64 5672
  %i.ati = select i1 %i.ate, i64 31, i64 30
  %i.atj = select i1 %i.atf, i64 32, i64 %i.ati
  %i.atk = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %i.atj
  %i.atl = load float, ptr %i.atg, align 4, !tbaa !278
  %i.atm = load <4 x float>, ptr %i.atk, align 4, !tbaa !75
  %i.atn = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.atl, i64 3
  %i.ato = fmul <4 x float> %i.atm, %i.atn        ; 3 uses
  %i.atp = fcmp olt <4 x float> %i.ato, zeroinitializer
  %i.atq = fcmp ogt <4 x float> %i.ato, splat (float 1.000000e+00)
  %i.atr = select <4 x i1> %i.atq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ato
  %i.ats = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atr, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.att = select <4 x i1> %i.atp, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ats
  %i.atu = fptosi <4 x float> %i.att to <4 x i32>
  %i.atv = shl <4 x i32> %i.atu, <i32 0, i32 8, i32 16, i32 24>
  %i.atw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.atv)
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %i.atw, ptr %i.atx, align 4, !tbaa !93
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i
  %.177.i = phi i1 [ %.013592.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.178.i, %bb.hs ] ; 3 uses
  %.sroa.054.375.i = phi <2 x float> [ %.sroa.054.3.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.sroa.054.376.i, %bb.hs ] ; 3 uses
  %.sroa.051.173.i = phi <2 x float> [ %.sroa.051.1.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.sroa.051.174.i, %bb.hs ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.hc, !llvm.loop !984

._crit_edge.i574.loopexit:                        ; preds = %.thread117.i
  %i.aty = trunc i32 %.21060 to i8
  br label %._crit_edge.i574

._crit_edge.i574:                                 ; preds = %._crit_edge.i574.loopexit, %.preheader.i
  %.31061 = phi i8 [ -1, %.preheader.i ], [ %i.aty, %._crit_edge.i574.loopexit ]
  %.sroa.051.2.lcssa.i = phi <2 x float> [ %.sroa.051.173.i, %.preheader.i ], [ %.sroa.051.3.i, %._crit_edge.i574.loopexit ] ; 3 uses
  %.sroa.054.4.lcssa.i = phi <2 x float> [ %.sroa.054.375.i, %.preheader.i ], [ %.sroa.054.7.i, %._crit_edge.i574.loopexit ] ; 2 uses
  %i.atz = load ptr, ptr @GImGui, align 8, !tbaa !98
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 7184
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !214
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 200 ; 2 uses
  %i.aud = load i32, ptr %i.auc, align 8, !tbaa !316
  %i.aue = add nsw i32 %i.aud, -1
  store i32 %i.aue, ptr %i.auc, align 8, !tbaa !316
  store i32 0, ptr %i.amy, align 4, !tbaa !641
  %i.auf = getelementptr inbounds nuw i8, ptr %i.alx, i64 7984
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !557 ; 2 uses
  %.not141.i = icmp eq ptr %i.aug, null
  br i1 %.not141.i, label %bb.io, label %bb.ik

bb.hu:                                            ; preds = %.thread117.i, %.lr.ph.i573
  %.11059 = phi i32 [ -1, %.lr.ph.i573 ], [ %.21060, %.thread117.i ] ; 3 uses
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph.i573 ], [ %indvars.iv.next98.i, %.thread117.i ] ; 5 uses
  %.sroa.054.494.i = phi <2 x float> [ %.sroa.054.375.i, %.lr.ph.i573 ], [ %.sroa.054.7.i, %.thread117.i ] ; 3 uses
  %.sroa.051.293.i = phi <2 x float> [ %.sroa.051.173.i, %.lr.ph.i573 ], [ %.sroa.051.3.i, %.thread117.i ] ; 3 uses
  %i.auh = getelementptr inbounds nuw [28 x i8], ptr @_ZL17resize_border_def, i64 %indvars.iv97.i ; 2 uses
  %i.aui = icmp samesign ugt i64 %indvars.iv97.i, 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #39
  %i.auj = load <2 x float>, ptr %i.akv, align 8, !tbaa !75 ; 7 uses
  %i.auk = load <2 x float>, ptr %i.aet, align 8, !tbaa !75
  %i.aul = fadd <2 x float> %i.auj, %i.auk        ; 6 uses
  %i.aum = trunc nuw nsw i64 %indvars.iv97.i to i32 ; 4 uses
  switch i32 %i.aum, label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i [
    i32 0, label %bb.hv
    i32 1, label %bb.hw
    i32 2, label %bb.hx
    i32 3, label %bb.hy
  ]

bb.hv:                                            ; preds = %bb.hu
  %i.aun = fadd <2 x float> %i.auj, %i.anx
  %i.auo = shufflevector <2 x float> %i.auj, <2 x float> %i.aul, <2 x i32> <i32 0, i32 3>
  %i.aup = fsub <2 x float> %i.auo, %i.anx
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hw:                                            ; preds = %bb.hu
  %i.auq = shufflevector <2 x float> %i.aul, <2 x float> %i.auj, <2 x i32> <i32 0, i32 3>
  %i.aur = fadd <2 x float> %i.auq, %i.anx
  %i.aus = fsub <2 x float> %i.aul, %i.anx
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hx:                                            ; preds = %bb.hu
  %i.aut = fadd <2 x float> %i.auj, %i.any
  %i.auu = shufflevector <2 x float> %i.aul, <2 x float> %i.auj, <2 x i32> <i32 0, i32 3>
  %i.auv = fsub <2 x float> %i.auu, %i.any
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hy:                                            ; preds = %bb.hu
  %i.auw = shufflevector <2 x float> %i.auj, <2 x float> %i.aul, <2 x i32> <i32 0, i32 3>
  %i.aux = fadd <2 x float> %i.auw, %i.any
  %i.auy = fsub <2 x float> %i.aul, %i.any
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i: ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu
  %.sroa.045.0.i.i = phi <2 x float> [ %i.aux, %bb.hy ], [ %i.aun, %bb.hv ], [ %i.aur, %bb.hw ], [ %i.aut, %bb.hx ], [ zeroinitializer, %bb.hu ]
  %.sroa.10.0.i.i = phi <2 x float> [ %i.auy, %bb.hy ], [ %i.aup, %bb.hv ], [ %i.aus, %bb.hw ], [ %i.auv, %bb.hx ], [ zeroinitializer, %bb.hu ]
  store <2 x float> %.sroa.045.0.i.i, ptr %21, align 8
  store <2 x float> %.sroa.10.0.i.i, ptr %i.ant, align 8
  %i.auz = add nuw nsw i64 %indvars.iv97.i, 4     ; 2 uses
  %i.ava = trunc nuw nsw i64 %i.auz to i32        ; 4 uses
  %.sroa.2.0.extract.shift.i248.i = lshr i32 %i.ava, 8
  %.sroa.3.0.extract.shift.i249.i = lshr i32 %i.ava, 16
  %.sroa.4.0.extract.shift.i250.i = lshr i32 %i.ava, 24
  %i.avb = load ptr, ptr %i.anc, align 8, !tbaa !318
  %i.avc = load i32, ptr %i.jk, align 8, !tbaa !316
  %i.avd = sext i32 %i.avc to i64
  %i.ave = getelementptr [4 x i8], ptr %i.avb, i64 %i.avd
  %i.avf = getelementptr i8, ptr %i.ave, i64 -4
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !93
  %i.avh = xor i32 %i.avg, -1                     ; 2 uses
  %i.avi = lshr i32 %i.avh, 8
  %i.avj = xor i32 %i.avh, %i.ava
  %i.avk = and i32 %i.avj, 255
  %i.avl = zext nneg i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avl
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !93
  %i.avo = xor i32 %i.avn, %i.avi                 ; 2 uses
  %i.avp = lshr i32 %i.avo, 8
  %i.avq = xor i32 %i.avo, %.sroa.2.0.extract.shift.i248.i
  %i.avr = and i32 %i.avq, 255
  %i.avs = zext nneg i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avs
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !93
  %i.avv = xor i32 %i.avp, %i.avu                 ; 2 uses
  %i.avw = lshr i32 %i.avv, 8
  %i.avx = xor i32 %i.avv, %.sroa.3.0.extract.shift.i249.i
  %i.avy = and i32 %i.avx, 255
  %i.avz = zext nneg i32 %i.avy to i64
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avz
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !93
  %i.awc = xor i32 %i.avw, %i.awb                 ; 2 uses
  %i.awd = lshr i32 %i.awc, 8
  %i.awe = and i32 %i.awc, 255
  %i.awf = xor i32 %i.awe, %.sroa.4.0.extract.shift.i250.i
  %i.awg = zext nneg i32 %i.awf to i64
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.awg
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !93
  %i.awj = xor i32 %i.awi, %i.awd
  %i.awk = xor i32 %i.awj, -1                     ; 6 uses
  %i.awl = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 5 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 7260
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !319
  %i.awo = icmp eq i32 %i.awn, %i.awk
  br i1 %i.awo, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awl, i64 7264
  store i32 %i.awk, ptr %i.awp, align 8, !tbaa !320
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awl, i64 7320
  %i.awr = load i32, ptr %i.awq, align 8, !tbaa !321
  %i.aws = icmp eq i32 %i.awr, %i.awk
  br i1 %i.aws, label %bb.ib, label %_ZN5ImGui11KeepAliveIDEj.exit.i251.i

bb.ib:                                            ; preds = %bb.ia
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awl, i64 7324
  store i8 1, ptr %i.awt, align 4, !tbaa !322
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i251.i

_ZN5ImGui11KeepAliveIDEj.exit.i251.i:             ; preds = %bb.ib, %bb.ia
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awl, i64 7236
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !323
  %i.aww = icmp eq i32 %i.awv, %i.awk
  br i1 %i.aww, label %bb.ic, label %_ZN11ImGuiWindow5GetIDEi.exit252.i

bb.ic:                                            ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i251.i
  %i.awx = inttoptr i64 %i.auz to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.awk, i32 noundef 4, ptr noundef nonnull %i.awx, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit252.i

_ZN11ImGuiWindow5GetIDEi.exit252.i:               ; preds = %bb.ic, %_ZN5ImGui11KeepAliveIDEj.exit.i251.i
  %i.awy = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %21, i32 noundef %i.awk, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 2048) ; 0 uses
  %i.awz = load i8, ptr %i.c, align 1, !tbaa !219, !range !216, !noundef !217
  %i.axa = trunc nuw i8 %i.awz to i1
  br i1 %i.axa, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit252.i
  %i.axb = load float, ptr %i.anu, align 4, !tbaa !547
  %i.axc = fcmp ogt float %i.axb, 4.000000e-02
  %i.axd = load i8, ptr %i.d, align 1, !range !216
  %i.axe = trunc nuw i8 %i.axd to i1              ; 2 uses
  %or.cond9.i = select i1 %i.axc, i1 true, i1 %i.axe
  br i1 %or.cond9.i, label %bb.if, label %.thread117.i

bb.ie:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit252.i
  %.old.i = load i8, ptr %i.d, align 1, !tbaa !219, !range !216, !noundef !217
  %.old8.i = trunc nuw i8 %.old.i to i1
  br i1 %.old8.i, label %.thread.i, label %.thread117.i

.thread.i:                                        ; preds = %bb.ie
  %i.axf = select i1 %i.aui, i32 3, i32 4
  store i32 %i.axf, ptr %i.and, align 8, !tbaa !593
  br label %bb.ig

bb.if:                                            ; preds = %bb.id
  %i.axg = select i1 %i.aui, i32 3, i32 4
  store i32 %i.axg, ptr %i.and, align 8, !tbaa !593
  br i1 %i.axe, label %bb.ig, label %.thread117.i

bb.ig:                                            ; preds = %bb.if, %.thread.i
  switch i32 %i.aum, label %.thread82.thread.i [
    i32 1, label %.thread79.i
    i32 3, label %bb.ih
    i32 0, label %.thread83.i
    i32 2, label %bb.ii
  ]

.thread79.i:                                      ; preds = %bb.ig
  br label %.thread82.thread.i

bb.ih:                                            ; preds = %bb.ig
  br label %.thread82.thread.i

.thread83.i:                                      ; preds = %bb.ig
  br label %.thread82.thread.i

bb.ii:                                            ; preds = %bb.ig
  br label %.thread82.thread.i

.thread82.thread.i:                               ; preds = %bb.ii, %.thread83.i, %bb.ih, %.thread79.i, %bb.ig
  %29 = phi float [ f0xFF7FFFFF, %bb.ii ], [ f0xFF7FFFFF, %bb.ig ], [ f0xFF7FFFFF, %.thread83.i ], [ f0xFF7FFFFF, %bb.ih ], [ %i.anl, %.thread79.i ] ; 2 uses
  %30 = phi float [ f0xFF7FFFFF, %bb.ii ], [ f0xFF7FFFFF, %bb.ig ], [ f0xFF7FFFFF, %.thread83.i ], [ %28, %bb.ih ], [ f0xFF7FFFFF, %.thread79.i ] ; 2 uses
  %i.axh = phi <2 x float> [ %i.anv, %bb.ii ], [ splat (float f0x7F7FFFFF), %bb.ig ], [ %i.anw, %.thread83.i ], [ splat (float f0x7F7FFFFF), %bb.ih ], [ splat (float f0x7F7FFFFF), %.thread79.i ] ; 2 uses
  %i.axi = load <2 x float>, ptr %i.akv, align 8  ; 2 uses
  %i.axj = zext i1 %i.aui to i64                  ; 2 uses
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.ang, i64 %i.axj
  %i.axl = load float, ptr %i.axk, align 4, !tbaa !75
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %i.axj
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !75
  %i.axo = fsub float %i.axl, %i.axn
  %i.axp = fadd float %i.axo, 4.000000e+00        ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.auh, i64 8
  %i.axr = getelementptr inbounds nuw i8, ptr %i.auh, i64 16
  %31 = load float, ptr %i.akw, align 4
  %32 = load float, ptr %i.akv, align 8
  %.sroa.51056.0 = select i1 %i.aui, float %i.axp, float %31 ; 2 uses
  %.sroa.01055.0 = select i1 %i.aui, float %32, float %i.axp ; 2 uses
  %33 = fcmp olt float %.sroa.51056.0, %30
  %34 = fcmp olt float %.sroa.01055.0, %29
  %i.axs = insertelement <2 x float> poison, float %.sroa.01055.0, i64 0
  %i.axt = insertelement <2 x float> %i.axs, float %.sroa.51056.0, i64 1 ; 2 uses
  %35 = fcmp ogt <2 x float> %i.axt, %i.axh
  %i.axu = select <2 x i1> %35, <2 x float> %i.axh, <2 x float> %i.axt
  %36 = insertelement <2 x i1> poison, i1 %34, i64 0
  %37 = insertelement <2 x i1> %36, i1 %33, i64 1
  %38 = insertelement <2 x float> poison, float %29, i64 0
  %39 = insertelement <2 x float> %38, float %30, i64 1
  %i.axv = select <2 x i1> %37, <2 x float> %39, <2 x float> %i.axu ; 3 uses
  %i.axw = load <2 x float>, ptr %i.axq, align 4, !tbaa !75 ; 2 uses
  %i.axx = load <2 x float>, ptr %i.axr, align 4, !tbaa !75 ; 2 uses
  %i.axy = fcmp olt <2 x float> %i.axw, %i.axx
  %i.axz = select <2 x i1> %i.axy, <2 x float> %i.axw, <2 x float> %i.axx ; 4 uses
  %i.aya = fsub <2 x float> %i.axi, %i.axv
  %i.ayb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aya, <2 x float> %i.axz, <2 x float> %i.axv) ; 5 uses
  %i.ayc = load <2 x float>, ptr %i.aet, align 8, !tbaa !75
  %i.ayd = fadd <2 x float> %i.ayc, %i.axi        ; 2 uses
  %i.aye = fsub <2 x float> %i.axv, %i.ayd
  %i.ayf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aye, <2 x float> %i.axz, <2 x float> %i.ayd)
  %i.ayg = fsub <2 x float> %i.ayf, %i.ayb        ; 3 uses
  %i.ayh = bitcast <2 x float> %i.ayg to i64
  %i.ayi = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull readonly %.01057, i64 %i.ayh) ; 4 uses
  %i.ayj = extractelement <2 x float> %i.axz, i64 0
  %i.ayk = fcmp oeq float %i.ayj, 0.000000e+00
  %foldExtExtBinop1329 = fsub <2 x float> %i.ayi, %i.ayg
  %foldExtExtBinop1331 = fsub <2 x float> %i.ayb, %foldExtExtBinop1329
  %sel1339 = select i1 %i.ayk, <2 x float> %foldExtExtBinop1331, <2 x float> %i.ayb
  %.sroa.054.5.i = shufflevector <2 x float> %sel1339, <2 x float> %i.ayb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ayl = extractelement <2 x float> %i.axz, i64 1
  %i.aym = fcmp oeq float %i.ayl, 0.000000e+00
  br i1 %i.aym, label %bb.ij, label %.thread117.i

bb.ij:                                            ; preds = %.thread82.thread.i
  %foldExtExtBinop1333 = fsub <2 x float> %i.ayi, %i.ayg
  %foldExtExtBinop1335 = fsub <2 x float> %i.ayb, %foldExtExtBinop1333
  %.sroa.054.4.vec.insert66.i = shufflevector <2 x float> %.sroa.054.5.i, <2 x float> %foldExtExtBinop1335, <2 x i32> <i32 0, i32 3>
  br label %.thread117.i

.thread117.i:                                     ; preds = %.thread82.thread.i, %bb.ij, %bb.if, %bb.ie, %bb.id
  %.21060 = phi i32 [ %.11059, %bb.ie ], [ %.11059, %bb.if ], [ %.11059, %bb.id ], [ %i.aum, %bb.ij ], [ %i.aum, %.thread82.thread.i ] ; 2 uses
  %.sroa.051.3.i = phi <2 x float> [ %.sroa.051.293.i, %bb.ie ], [ %.sroa.051.293.i, %bb.if ], [ %.sroa.051.293.i, %bb.id ], [ %i.ayi, %bb.ij ], [ %i.ayi, %.thread82.thread.i ] ; 2 uses
  %.sroa.054.7.i = phi <2 x float> [ %.sroa.054.494.i, %bb.ie ], [ %.sroa.054.494.i, %bb.if ], [ %.sroa.054.494.i, %bb.id ], [ %.sroa.054.4.vec.insert66.i, %bb.ij ], [ %.sroa.054.5.i, %.thread82.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next98.i, 4
  br i1 %exitcond101.not.i, label %._crit_edge.i574.loopexit, label %bb.hu, !llvm.loop !985

bb.ik:                                            ; preds = %._crit_edge.i574
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aug, i64 832
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !390
  %i.ayp = icmp eq ptr %i.ayo, %.01057
  br i1 %i.ayp, label %bb.il, label %bb.io

bb.il:                                            ; preds = %bb.ik
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.alx, i64 7748
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !554
  switch i32 %i.ayr, label %.thread85.i [
    i32 2, label %bb.im
    i32 3, label %.thread85.sink.split.i
  ]

bb.im:                                            ; preds = %bb.il
  %i.ays = getelementptr inbounds nuw i8, ptr %i.alx, i64 321
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !406, !range !216, !noundef !217
  %i.ayu = trunc nuw i8 %i.ayt to i1
  br i1 %i.ayu, label %.thread85.sink.split.i, label %.thread85.i

.thread85.sink.split.i:                           ; preds = %bb.im, %bb.il
  %.sink.i576 = phi i32 [ 1, %bb.im ], [ 2, %bb.il ]
  %i.ayv = call <2 x float> @_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff(i32 noundef %.sink.i576, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00)
  br label %.thread85.i

.thread85.i:                                      ; preds = %.thread85.sink.split.i, %bb.im, %bb.il
  %.sroa.03.1.i = phi <2 x float> [ zeroinitializer, %bb.im ], [ zeroinitializer, %bb.il ], [ %i.ayv, %.thread85.sink.split.i ] ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.03.1.i, i64 0
  %i.ayw = fcmp une float %.sroa.03.0.vec.extract.i, 0.000000e+00
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.03.1.i, i64 1
  %i.ayx = fcmp une float %.sroa.03.4.vec.extract.i, 0.000000e+00
  %or.cond13.i = select i1 %i.ayw, i1 true, i1 %i.ayx
  br i1 %or.cond13.i, label %bb.in, label %bb.io

bb.in:                                            ; preds = %.thread85.i
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.alx, i64 24
  %i.ayz = load float, ptr %i.ayy, align 8, !tbaa !533
  %i.aza = fmul float %i.ayz, 6.000000e+02
  %i.azb = getelementptr inbounds nuw i8, ptr %i.alx, i64 192
  %i.azc = load float, ptr %i.azb, align 8, !tbaa !1011 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.alx, i64 196
  %i.aze = load float, ptr %i.azd, align 4, !tbaa !1012 ; 2 uses
  %i.azf = fcmp olt float %i.azc, %i.aze
  %i.azg = select i1 %i.azf, float %i.azc, float %i.aze
  %i.azh = fmul float %i.aza, %i.azg
  %i.azi = fptosi float %i.azh to i32
  %i.azj = sitofp i32 %i.azi to float
  %i.azk = getelementptr inbounds nuw i8, ptr %i.alx, i64 8016
  store i8 0, ptr %i.azk, align 8, !tbaa !564
  %i.azl = getelementptr inbounds nuw i8, ptr %i.alx, i64 7763
  store i8 1, ptr %i.azl, align 1, !tbaa !385
  %i.azm = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 32, float noundef 1.000000e+00)
  store i32 %i.azm, ptr %i.f, align 16, !tbaa !93
  %i.azn = insertelement <2 x float> poison, float %i.azj, i64 0
  %i.azo = shufflevector <2 x float> %i.azn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azp = fmul <2 x float> %.sroa.03.1.i, %i.azo ; 2 uses
  %i.azq = load <2 x float>, ptr %i.akv, align 8, !tbaa !75
  %i.azr = fsub <2 x float> %i.akj, %i.azq
  %i.azs = load <2 x float>, ptr %i.aet, align 8, !tbaa !75
  %i.azt = fsub <2 x float> %i.azr, %i.azs        ; 2 uses
  %i.azu = fcmp oge <2 x float> %i.azp, %i.azt
  %i.azv = select <2 x i1> %i.azu, <2 x float> %i.azp, <2 x float> %i.azt
  %i.azw = load <2 x float>, ptr %i.adq, align 8, !tbaa !75
  %i.azx = fadd <2 x float> %i.azv, %i.azw
  %i.azy = bitcast <2 x float> %i.azx to i64
  %i.azz = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %.01057, i64 %i.azy)
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %.thread85.i, %bb.ik, %._crit_edge.i574
  %.sroa.051.5.i = phi <2 x float> [ %.sroa.051.2.lcssa.i, %._crit_edge.i574 ], [ %.sroa.051.2.lcssa.i, %bb.ik ], [ %i.azz, %bb.in ], [ %.sroa.051.2.lcssa.i, %.thread85.i ] ; 2 uses
  %.sroa.051.0.vec.extract.i = extractelement <2 x float> %.sroa.051.5.i, i64 0
  %i.baa = fcmp une float %.sroa.051.0.vec.extract.i, f0x7F7FFFFF
  br i1 %i.baa, label %bb.ip, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

bb.ip:                                            ; preds = %bb.io
  store <2 x float> %.sroa.051.5.i, ptr %i.adq, align 8
  %i.bab = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 2 uses
  %i.bac = load i32, ptr %i.aeu, align 4, !tbaa !392
  %i.bad = and i32 %i.bac, 256
  %.not.i.i575 = icmp eq i32 %i.bad, 0
  br i1 %.not.i.i575, label %bb.iq, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

bb.iq:                                            ; preds = %bb.ip
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bab, i64 12436 ; 2 uses
  %i.baf = load float, ptr %i.bae, align 4, !tbaa !448
  %i.bag = fcmp ugt float %i.baf, 0.000000e+00
  br i1 %i.bag, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bab, i64 28
  %i.bai = load float, ptr %i.bah, align 4, !tbaa !506
  store float %i.bai, ptr %i.bae, align 4, !tbaa !448
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i: ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.io
  %.sroa.054.0.vec.extract.i = extractelement <2 x float> %.sroa.054.4.lcssa.i, i64 0
  %i.baj = fcmp une float %.sroa.054.0.vec.extract.i, f0x7F7FFFFF
  br i1 %i.baj, label %bb.is, label %bb.iv

bb.is:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i
  %i.bak = fptosi <2 x float> %.sroa.054.4.lcssa.i to <2 x i32>
  %i.bal = sitofp <2 x i32> %i.bak to <2 x float>
  store <2 x float> %i.bal, ptr %i.akv, align 8
  %i.bam = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 2 uses
  %i.ban = load i32, ptr %i.aeu, align 4, !tbaa !392
  %i.bao = and i32 %i.ban, 256
  %.not.i284.i = icmp eq i32 %i.bao, 0
  br i1 %.not.i284.i, label %bb.it, label %bb.iv

bb.it:                                            ; preds = %bb.is
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bam, i64 12436 ; 2 uses
  %i.baq = load float, ptr %i.bap, align 4, !tbaa !448
  %i.bar = fcmp ugt float %i.baq, 0.000000e+00
  br i1 %i.bar, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bam, i64 28
  %i.bat = load float, ptr %i.bas, align 4, !tbaa !506
  store float %i.bat, ptr %i.bap, align 4, !tbaa !448
  br label %bb.iv

.thread1301:                                      ; preds = %bb.gy, %bb.gz, %bb.ha, %bb.gx
  %i.bau = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 2 uses
  store i8 -1, ptr %i.bau, align 8, !tbaa !1010
  br label %bb.iw

bb.iv:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, %bb.is, %bb.it, %bb.iu
  %i.bav = load i64, ptr %i.adq, align 8
  store i64 %i.bav, ptr %i.aet, align 8
  %.pre1134.pre = load i8, ptr %i.ads, align 1, !tbaa !595, !range !216
  %i.baw = trunc nuw i8 %.pre1134.pre to i1
  %spec.select398 = or i1 %.2313, %.177.i
  %spec.select399 = or i1 %.1310, %.177.i
  %i.bax = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 3 uses
  store i8 %.31061, ptr %i.bax, align 8, !tbaa !1010
  br i1 %i.baw, label %bb.jm, label %bb.iw

bb.iw:                                            ; preds = %.thread1301, %bb.iv
  %i.bay = phi ptr [ %i.bau, %.thread1301 ], [ %i.bax, %bb.iv ]
  %spec.select3991308 = phi i1 [ %.1310, %.thread1301 ], [ %spec.select399, %bb.iv ]
  %spec.select3981307 = phi i1 [ %.2313, %.thread1301 ], [ %spec.select398, %bb.iv ]
  %i.baz = load float, ptr %i.adq, align 8, !tbaa !632
  %i.bba = getelementptr inbounds nuw i8, ptr %.01057, i64 36
  %i.bbb = load float, ptr %i.bba, align 4, !tbaa !586
  %i.bbc = fsub float %i.bbb, %i.afz
  %i.bbd = getelementptr inbounds nuw i8, ptr %.01057, i64 456
  %i.bbe = getelementptr inbounds nuw i8, ptr %.01057, i64 464
  %i.bbf = load <2 x float>, ptr %i.bbe, align 8, !tbaa !75
  %i.bbg = load <2 x float>, ptr %i.bbd, align 8, !tbaa !75
  %i.bbh = fsub <2 x float> %i.bbf, %i.bbg
  %i.bbi = getelementptr inbounds nuw i8, ptr %.01057, i64 132 ; 2 uses
  %i.bbj = getelementptr i8, ptr %.01057, i64 136
  %i.bbk = load <2 x float>, ptr %i.bbi, align 4, !tbaa !75
  %i.bbl = fadd <2 x float> %i.bbh, %i.bbk        ; 2 uses
  br i1 %i.gu, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.val = load float, ptr %i.zh, align 4, !tbaa !187
  %i.bbm = getelementptr i8, ptr %.01057, i64 68
  %.val411 = load float, ptr %i.bbm, align 4, !tbaa !188
end_hunk_2
begin_hunk_3_@_ZN5ImGui13DebugNodeFontEP6ImFont:bb.a
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.233, i32 noundef %i.lc)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.le = load float, ptr %i.ld, align 4, !tbaa !1245
  %i.lf = fpext float %i.le to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.234, double noundef %i.lf)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !308
  %i.li = fpext float %i.lh to double
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !1246
  %i.ll = fpext float %i.lk to double
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !306
  %i.lo = fpext float %i.ln to double
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !1247
  %i.lr = fpext float %i.lq to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.235, double noundef %i.li, double noundef %i.ll, double noundef %i.lo, double noundef %i.lr)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !1248
  %i.lu = fpext float %i.lt to double
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jv, i64 28
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !1249
  %i.lx = fpext float %i.lw to double
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !1250
  %i.ma = fpext float %i.lz to double
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jv, i64 36
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !1251
  %i.md = fpext float %i.mc to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.236, double noundef %i.lu, double noundef %i.lx, double noundef %i.ma, double noundef %i.md)
  call void @_ZN5ImGui3EndEv()
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.af, %bb.ah, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.me = add nuw nsw i32 %.0121, 1               ; 2 uses
  %exitcond125.not = icmp eq i32 %i.me, 256
  br i1 %exitcond125.not, label %bb.ae, label %bb.af, !llvm.loop !1230

bb.ai:                                            ; preds = %bb.ae, %bb.aa, %bb.ac, %bb.z
  %.199 = phi i32 [ %i.iv, %bb.z ], [ %.098122, %bb.ac ], [ %.098122, %bb.aa ], [ %.098122, %bb.ae ]
  %i.mf = add i32 %.199, 256                      ; 2 uses
  %i.mg = icmp ult i32 %i.mf, 65536
  br i1 %i.mg, label %bb.x, label %bb.w, !llvm.loop !1231

bb.aj:                                            ; preds = %bb.w, %._crit_edge
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.ak

bb.ak:                                            ; preds = %bb.d, %bb.aj
  ret void
}

declare void @_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui16DebugNodeColumnsEP15ImGuiOldColumns(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1253   ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1254
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1255
  %i.h = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.c, ptr noundef nonnull @.str.204, i32 noundef %i.a, i32 noundef %i.e, i32 noundef %i.g)
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !1256 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !1257 ; 2 uses
  %i.m = fsub float %i.j, %i.l
  %i.n = fpext float %i.m to double
  %i.o = fpext float %i.l to double
  %i.p = fpext float %i.j to double
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.205, double noundef %i.n, double noundef %i.o, double noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1258
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !341
  %i.v = getelementptr inbounds nuw [28 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load float, ptr %i.v, align 4, !tbaa !1260 ; 2 uses
  %i.x = fpext float %i.w to double
  %i.y = tail call noundef float @_ZN5ImGui23GetColumnOffsetFromNormEPK15ImGuiOldColumnsf(ptr noundef nonnull %0, float noundef %i.w)
  %i.z = fpext float %i.y to double
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.206, i32 noundef %i.aa, double noundef %i.x, double noundef %i.z)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !1258
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.c, label %._crit_edge, !llvm.loop !1252

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef float @_ZN5ImGui23GetColumnOffsetFromNormEPK15ImGuiOldColumnsf(ptr noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN5ImGui12TextDisabledEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca [3 x %struct.ImVec2], align 16      ; 13 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load <2 x float>, ptr %2, align 4, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !765  ; 2 uses
  %i.f = and i32 %i.e, -2
  store i32 %i.f, ptr %i.d, align 8, !tbaa !765
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !764  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !651
  %i.k = add i32 %i.j, %i.h                       ; 4 uses
  %i.l = icmp ult i32 %i.h, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br i1 %3, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN6ImRect3AddERK6ImVec2.exit.us.2
  %.02755.us = phi i32 [ %i.bs, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.h, %.lr.ph.split.us.preheader ] ; 6 uses
  %i.s = phi <4 x float> [ %i.br, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.t = load i32, ptr %i.m, align 8, !tbaa !694
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.us, label %.preheader.us.thread

.preheader.us.thread:                             ; preds = %.lr.ph.split.us
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !762
  %i.w = load i32, ptr %i.p, align 8, !tbaa !763
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !75
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %i.x
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us

.preheader.us:                                    ; preds = %.lr.ph.split.us
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !761  ; 3 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !762
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !763
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !75
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %.not.us = icmp eq ptr %i.z, null
  br i1 %.not.us, label %_ZN6ImRect3AddERK6ImVec2.exit.us, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.ae = zext i32 %.02755.us to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !193
  %i.ah = zext i16 %i.ag to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us

_ZN6ImRect3AddERK6ImVec2.exit.us:                 ; preds = %.preheader.us.thread, %bb.b, %.preheader.us
  %.not.us116 = phi i1 [ false, %bb.b ], [ true, %.preheader.us ], [ true, %.preheader.us.thread ] ; 2 uses
  %i.ai = phi ptr [ %i.ad, %bb.b ], [ %i.ad, %.preheader.us ], [ %i.y, %.preheader.us.thread ] ; 3 uses
  %i.aj = phi ptr [ %i.z, %bb.b ], [ null, %.preheader.us ], [ null, %.preheader.us.thread ] ; 2 uses
  %i.ak = phi i32 [ %i.ah, %bb.b ], [ %.02755.us, %.preheader.us ], [ %.02755.us, %.preheader.us.thread ]
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i64, ptr %i.am, align 4            ; 2 uses
  store i64 %i.an, ptr %5, align 16
  %10 = bitcast i64 %i.an to <2 x float>
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.ao = fcmp olt <4 x float> %i.s, %11
  %i.ap = fcmp ogt <4 x float> %i.s, %11
  %i.aq = shufflevector <4 x i1> %i.ao, <4 x i1> %i.ap, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ar = select <4 x i1> %i.aq, <4 x float> %11, <4 x float> %i.s ; 3 uses
  %i.as = add nuw i32 %.02755.us, 1               ; 2 uses
  br i1 %.not.us116, label %_ZN6ImRect3AddERK6ImVec2.exit.us.1, label %bb.c

bb.c:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !193
  %i.aw = zext i16 %i.av to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us.1

_ZN6ImRect3AddERK6ImVec2.exit.us.1:               ; preds = %bb.c, %_ZN6ImRect3AddERK6ImVec2.exit.us
  %i.ax = phi i32 [ %i.aw, %bb.c ], [ %i.as, %_ZN6ImRect3AddERK6ImVec2.exit.us ]
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 4            ; 2 uses
  store i64 %i.ba, ptr %i.q, align 8
  %12 = bitcast i64 %i.ba to <2 x float>
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.bb = fcmp olt <4 x float> %i.ar, %13
  %i.bc = fcmp ogt <4 x float> %i.ar, %13
  %i.bd = shufflevector <4 x i1> %i.bb, <4 x i1> %i.bc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.be = select <4 x i1> %i.bd, <4 x float> %13, <4 x float> %i.ar ; 3 uses
  %i.bf = add i32 %.02755.us, 2                   ; 2 uses
  br i1 %.not.us116, label %_ZN6ImRect3AddERK6ImVec2.exit.us.2, label %bb.d

bb.d:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us.1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !193
  %i.bj = zext i16 %i.bi to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us.2

_ZN6ImRect3AddERK6ImVec2.exit.us.2:               ; preds = %bb.d, %_ZN6ImRect3AddERK6ImVec2.exit.us.1
  %i.bk = phi i32 [ %i.bj, %bb.d ], [ %i.bf, %_ZN6ImRect3AddERK6ImVec2.exit.us.1 ]
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 4            ; 2 uses
  store i64 %i.bn, ptr %i.r, align 16
  %14 = bitcast i64 %i.bn to <2 x float>
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.bo = fcmp olt <4 x float> %i.be, %15
  %i.bp = fcmp ogt <4 x float> %i.be, %15
  %i.bq = shufflevector <4 x i1> %i.bo, <4 x i1> %i.bp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.br = select <4 x i1> %i.bq, <4 x float> %15, <4 x float> %i.be ; 2 uses
  %i.bs = add i32 %.02755.us, 3                   ; 2 uses
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %5, i32 noundef 3, i32 noundef -16711681, i32 noundef 1, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.bt = icmp ult i32 %i.bs, %i.k
  br i1 %i.bt, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1261

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bu = load i32, ptr %i.m, align 8, !tbaa !694
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !762
  %i.bx = load i32, ptr %i.p, align 8, !tbaa !763
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.by ; 3 uses
  br label %_ZN6ImRect3AddERK6ImVec2.exit.2

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !761 ; 4 uses
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !762
  %i.cc = load i32, ptr %i.p, align 8, !tbaa !763
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [20 x i8], ptr %i.cb, i64 %i.cd ; 3 uses
  %.not.us71 = icmp eq ptr %i.ca, null            ; 3 uses
  br label %.preheader.us70.preheader

.preheader.us70.preheader:                        ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us78.2, %.lr.ph.split.split.us
  %.02755.us62 = phi i32 [ %i.h, %.lr.ph.split.split.us ], [ %i.dp, %_ZN6ImRect3AddERK6ImVec2.exit.us78.2 ] ; 5 uses
  %i.cf = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.split.us ], [ %i.do, %_ZN6ImRect3AddERK6ImVec2.exit.us78.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  br i1 %.not.us71, label %_ZN6ImRect3AddERK6ImVec2.exit.us78, label %bb.e

bb.e:                                             ; preds = %.preheader.us70.preheader
  %i.cg = zext i32 %.02755.us62 to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !193
  %i.cj = zext i16 %i.ci to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us78

_ZN6ImRect3AddERK6ImVec2.exit.us78:               ; preds = %bb.e, %.preheader.us70.preheader
  %i.ck = phi i32 [ %i.cj, %bb.e ], [ %.02755.us62, %.preheader.us70.preheader ]
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [20 x i8], ptr %i.ce, i64 %i.cl
  %16 = load <2 x float>, ptr %i.cm, align 4
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cn = fcmp olt <4 x float> %i.cf, %17
  %i.co = fcmp ogt <4 x float> %i.cf, %17
  %i.cp = shufflevector <4 x i1> %i.cn, <4 x i1> %i.co, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cq = select <4 x i1> %i.cp, <4 x float> %17, <4 x float> %i.cf ; 3 uses
  %i.cr = add nuw i32 %.02755.us62, 1             ; 2 uses
  br i1 %.not.us71, label %_ZN6ImRect3AddERK6ImVec2.exit.us78.1, label %bb.f

bb.f:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us78
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !193
  %i.cv = zext i16 %i.cu to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us78.1

_ZN6ImRect3AddERK6ImVec2.exit.us78.1:             ; preds = %bb.f, %_ZN6ImRect3AddERK6ImVec2.exit.us78
  %i.cw = phi i32 [ %i.cv, %bb.f ], [ %i.cr, %_ZN6ImRect3AddERK6ImVec2.exit.us78 ]
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [20 x i8], ptr %i.ce, i64 %i.cx
  %18 = load <2 x float>, ptr %i.cy, align 4
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cz = fcmp olt <4 x float> %i.cq, %19
  %i.da = fcmp ogt <4 x float> %i.cq, %19
  %i.db = shufflevector <4 x i1> %i.cz, <4 x i1> %i.da, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dc = select <4 x i1> %i.db, <4 x float> %19, <4 x float> %i.cq ; 3 uses
  %i.dd = add i32 %.02755.us62, 2                 ; 2 uses
  br i1 %.not.us71, label %_ZN6ImRect3AddERK6ImVec2.exit.us78.2, label %bb.g

bb.g:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us78.1
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !193
  %i.dh = zext i16 %i.dg to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us78.2

_ZN6ImRect3AddERK6ImVec2.exit.us78.2:             ; preds = %bb.g, %_ZN6ImRect3AddERK6ImVec2.exit.us78.1
  %i.di = phi i32 [ %i.dh, %bb.g ], [ %i.dd, %_ZN6ImRect3AddERK6ImVec2.exit.us78.1 ]
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [20 x i8], ptr %i.ce, i64 %i.dj
  %20 = load <2 x float>, ptr %i.dk, align 4
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dl = fcmp olt <4 x float> %i.dc, %21
  %i.dm = fcmp ogt <4 x float> %i.dc, %21
  %i.dn = shufflevector <4 x i1> %i.dl, <4 x i1> %i.dm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.do = select <4 x i1> %i.dn, <4 x float> %21, <4 x float> %i.dc ; 2 uses
  %i.dp = add i32 %.02755.us62, 3                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.dq = icmp ult i32 %i.dp, %i.k
  br i1 %i.dq, label %.preheader.us70.preheader, label %._crit_edge, !llvm.loop !1261

._crit_edge.loopexit123:                          ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2
  %i.dr = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us78.2, %_ZN6ImRect3AddERK6ImVec2.exit.us.2, %._crit_edge.loopexit123, %bb.a
  %i.ds = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.a ], [ %i.br, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.dr, %._crit_edge.loopexit123 ], [ %i.do, %_ZN6ImRect3AddERK6ImVec2.exit.us78.2 ]
  br i1 %4, label %bb.h, label %bb.i

_ZN6ImRect3AddERK6ImVec2.exit.2:                  ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2, %.lr.ph.split.split.preheader
  %.02755 = phi i32 [ %i.ej, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ %i.h, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.dt = phi <4 x float> [ %i.ei, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.lr.ph.split.split.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %.pre = zext i32 %.02755 to i64
  %i.du = getelementptr inbounds nuw [20 x i8], ptr %i.bz, i64 %.pre
  %22 = load <2 x float>, ptr %i.du, align 4
  %i.dv = add nuw i32 %.02755, 1
  %.pre105.a = zext i32 %i.dv to i64
  %i.dw = getelementptr inbounds nuw [20 x i8], ptr %i.bz, i64 %.pre105.a
  %23 = load <2 x float>, ptr %i.dw, align 4
  %24 = add i32 %.02755, 2
  %.pre105 = zext i32 %24 to i64
  %25 = getelementptr inbounds nuw [20 x i8], ptr %i.bz, i64 %.pre105
  %26 = load <2 x float>, ptr %25, align 4
  %27 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.dx = fcmp ogt <4 x float> %i.dt, %27
  %i.dy = fcmp olt <4 x float> %i.dt, %27
  %i.dz = shufflevector <4 x i1> %i.dx, <4 x i1> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ea = select <4 x i1> %i.dz, <4 x float> %27, <4 x float> %i.dt ; 3 uses
  %28 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.eb = fcmp ogt <4 x float> %i.ea, %28
  %i.ec = fcmp olt <4 x float> %i.ea, %28
  %i.ed = shufflevector <4 x i1> %i.eb, <4 x i1> %i.ec, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ee = select <4 x i1> %i.ed, <4 x float> %28, <4 x float> %i.ea ; 3 uses
  %29 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ef = fcmp ogt <4 x float> %i.ee, %29
  %i.eg = fcmp olt <4 x float> %i.ee, %29
  %i.eh = shufflevector <4 x i1> %i.ef, <4 x i1> %i.eg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ei = select <4 x i1> %i.eh, <4 x float> %29, <4 x float> %i.ee ; 2 uses
  %i.ej = add i32 %.02755, 3                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.ek = icmp ult i32 %i.ej, %i.k
  br i1 %i.ek, label %_ZN6ImRect3AddERK6ImVec2.exit.2, label %._crit_edge.loopexit123, !llvm.loop !1262

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.el = fptosi <2 x float> %i.a to <2 x i32>
  %i.em = sitofp <2 x i32> %i.el to <2 x float>
  store <2 x float> %i.em, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.en = fptosi <2 x float> %i.c to <2 x i32>
  %i.eo = sitofp <2 x i32> %i.en to <2 x float>
  store <2 x float> %i.eo, ptr %7, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -65281, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ep = fptosi <4 x float> %i.ds to <4 x i32>
  %i.eq = sitofp <4 x i32> %i.ep to <4 x float>   ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.er, ptr %8, align 8
  %i.es = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.es, ptr %9, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef -256, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  store i32 %i.e, ptr %i.d, align 8, !tbaa !765
  ret void
}

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #26

declare noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(110), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6ImFont19FindGlyphNoFallbackEt(ptr noundef nonnull align 8 dereferenceable(110), i16 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui16DebugNodeStorageEP12ImGuiStoragePKc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !195    ; 2 uses
  %i.b = shl nsw i32 %i.a, 4
  %i.c = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef %1, ptr noundef nonnull @.str.237, ptr noundef %1, i32 noundef %i.a, i32 noundef %i.b)
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !195
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !199
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !181
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.238, i32 noundef %i.i, i32 noundef %i.k)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !195
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !64

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui18TabBarQueueReorderEP11ImGuiTabBarPK12ImGuiTabItemi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui15DebugNodeWindowEP11ImGuiWindowPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 8 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.257, ptr noundef %1)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 143 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !391, !range !216, !noundef !217
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 7688
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.h = icmp eq ptr %0, %i.g
  %i.i = zext i1 %i.h to i32                      ; 2 uses
  br i1 %i.e, label %_ZN5ImGui13PopStyleColorEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 5672 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 5688
  %.sroa.4.i.sroa.0.0.copyload = load <4 x float>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 7544 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !279  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 7548 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !280
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i.i: ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7552
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !281
  br label %_ZN5ImGui13PopStyleColorEi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.m, 1
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sdiv i32 %i.m, 2
  %i.s = add nsw i32 %i.r, %i.m
  br label %_ZN5ImGui8MemAllocEm.exit.i.i.i

_ZN5ImGui8MemAllocEm.exit.i.i.i:                  ; preds = %bb.f, %bb.e
  %i.t = phi i32 [ %i.s, %bb.f ], [ 8, %bb.e ]
  %i.u = tail call noundef i32 @llvm.smax.i32(i32 %i.t, i32 %i.q) ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 944 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !179
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !179
  %i.aa = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !180
  %i.ab = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !180
  %i.ac = tail call noundef ptr %i.aa(i64 noundef %i.w, ptr noundef %i.ab), !inline_history !55 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 7552 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !281 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not6.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i.i
  %i.af = load i32, ptr %i.l, align 8, !tbaa !279
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ag, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ac, ptr nonnull align 4 %i.ae, i64 %i.ah, i1 false)
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !281 ; 2 uses
  %.not.i7.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i7.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr @GImGui, align 8, !tbaa !98 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not4.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 944 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !179
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !179
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i:                  ; preds = %bb.i, %bb.h, %bb.g
  %i.an = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !180
  %i.ao = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !180
  tail call void %i.an(ptr noundef %i.ai, ptr noundef %i.ao), !inline_history !56
  br label %bb.j

bb.j:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !281
  store i32 %i.u, ptr %i.n, align 4, !tbaa !280
  %.pre3.i.i = load i32, ptr %i.l, align 8, !tbaa !279
  br label %_ZN5ImGui13PopStyleColorEi.exit.thread

_ZN5ImGui13PopStyleColorEi.exit.thread:           ; preds = %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i.i, %bb.j
  %i.ap = phi i32 [ %i.m, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.j ]
  %i.aq = phi ptr [ %.pre.i.i, %._ZN8ImVectorI13ImGuiColorModE7reserveEi.exit_crit_edge.i.i ], [ %i.ac, %bb.j ]
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [20 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  store i32 0, ptr %i.as, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 4
end_hunk_3
