Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_Z27ImTextCountUtf8BytesFromStrPKtS0_:bb.a
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.a = icmp ult ptr %0, %1
  %or.cond14 = or i1 %.not, %i.a
  br i1 %or.cond14, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.b = load i16, ptr %0, align 2, !tbaa !255    ; 2 uses
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
  %i.g = load i16, ptr %i.d, align 2, !tbaa !255  ; 2 uses
  %.not13.us = icmp eq i16 %i.g, 0
  br i1 %.not13.us, label %.critedge, label %.lr.ph22

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.b
  %.016 = phi i32 [ %.1, %bb.b ], [ 0, %.lr.ph ]  ; 2 uses
  %.0915 = phi ptr [ %i.i, %bb.b ], [ %0, %.lr.ph ] ; 2 uses
  %i.h = load i16, ptr %.0915, align 2, !tbaa !255 ; 3 uses
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
  br i1 %i.l, label %.lr.ph.split, label %.critedge, !llvm.loop !1162

.critedge:                                        ; preds = %.lr.ph.split, %bb.b, %.lr.ph22, %.lr.ph.split.us, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.split.us ], [ %.1.us, %.lr.ph22 ], [ %.016, %.lr.ph.split ], [ %.1, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr nofree noundef readnone captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ugt ptr %1, %0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp ugt ptr %i.c, %0
  br i1 %i.b, label %.lr.ph, label %._crit_edge, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.010 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]
  %i.c = getelementptr inbounds i8, ptr %.010, i64 -1 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !222
  %.not = icmp slt i8 %i.d, -64
  br i1 %.not, label %bb.b, label %._crit_edge11, !llvm.loop !7

._crit_edge11:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.b, %._crit_edge11, %bb.a
  %.07 = phi ptr [ %i.c, %._crit_edge11 ], [ %0, %bb.a ], [ %0, %bb.b ]
  ret ptr %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_Z31ImTextFindValidUtf8CodepointEndPKcS0_S0_(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #23 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %0, %2
  br i1 %i.b, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = icmp ugt ptr %2, %0
  br i1 %i.c, label %.lr.ph, label %_Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit

.preheader:                                       ; preds = %.lr.ph
  %i.d = icmp ugt ptr %i.e, %0
  br i1 %i.d, label %.lr.ph, label %_Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit, !llvm.loop !7

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.0.i22 = phi ptr [ %i.e, %.preheader ], [ %2, %.preheader.preheader ]
  %i.e = getelementptr inbounds i8, ptr %.0.i22, i64 -1 ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !222
  %.not.i = icmp slt i8 %i.f, -64
  br i1 %.not.i, label %.preheader, label %._Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit_crit_edge, !llvm.loop !7

._Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit_crit_edge: ; preds = %.lr.ph
  br label %_Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit, !llvm.loop !7

_Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit:   ; preds = %.preheader, %._Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit_crit_edge, %.preheader.preheader
  %.07.i = phi ptr [ %i.e, %._Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit_crit_edge ], [ %0, %.preheader.preheader ], [ %0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.g = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef %.07.i, ptr noundef %1)
  %i.h = load i32, ptr %i.a, align 4, !tbaa !237
  %.not = icmp eq i32 %i.h, 65533
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %.07.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %.not15 = icmp sgt i32 %i.g, %i.l
  %or.cond = or i1 %.not, %.not15
  %.0 = select i1 %or.cond, ptr %.07.i, ptr %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit
  %.1 = phi ptr [ %.0, %_Z31ImTextFindPreviousUtf8CodepointPKcS0_.exit ], [ %0, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]  ; 4 uses
  %i.d = icmp ult ptr %0, %.013
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = ptrtoint ptr %.013 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.016 = phi ptr [ %0, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %.01215 = phi i32 [ 0, %.lr.ph ], [ %i.k, %bb.d ]
  %i.f = ptrtoint ptr %.016 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call noundef ptr @memchr(ptr noundef %.016, i32 noundef 10, i64 noundef %i.g) #57 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = select i1 %.not, ptr %.013, ptr %i.i     ; 2 uses
  %i.k = add nuw nsw i32 %.01215, 1               ; 2 uses
  %i.l = icmp ult ptr %i.j, %.013
  br i1 %i.l, label %bb.d, label %._crit_edge, !llvm.loop !1163

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.012.lcssa = phi i32 [ 0, %bb.c ], [ %i.k, %bb.d ]
  ret i32 %.012.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -16777216, 0) i32 @_Z18ImAlphaBlendColorsjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
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
define { <2 x float>, <2 x float> } @_ZN5ImGui23ColorConvertU32ToFloat4Ej(i32 noundef %0) local_unnamed_addr #10 {
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
define noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #17 {
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
define void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #9 {
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
declare float @llvm.fabs.f32(float) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #25 {
bb.a:
  %i.a = fcmp oeq float %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %2, ptr %5, align 4, !tbaa !75
  store float %2, ptr %4, align 4, !tbaa !75
  store float %2, ptr %3, align 4, !tbaa !75
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = tail call float @fmodf(float noundef %0, float noundef 1.000000e+00) #41
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_Z12ImLowerBoundP16ImGuiStoragePairS0_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %.not15 = icmp eq ptr %1, %0
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.013.lcssa = phi ptr [ %0, %bb.a ], [ %.114, %.lr.ph ]
  ret ptr %.013.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.017 = phi i64 [ %.1, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.01316 = phi ptr [ %.114, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.e = lshr i64 %.017, 1                        ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.01316, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !260
  %i.h = icmp ult i32 %i.g, %2                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.neg = xor i64 %i.e, -1
  %i.j = add i64 %.017, %.neg
  %.114 = select i1 %i.h, ptr %i.i, ptr %.01316   ; 2 uses
  %.1 = select i1 %i.h, i64 %i.j, i64 %i.e        ; 2 uses
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN12ImGuiStorage14BuildSortByKeyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !261    ; 2 uses
  %i.b = icmp ugt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_Z7ImQsortPvmmPFiPKvS1_E.exit

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.c, i64 noundef 16, ptr noundef nonnull @_ZL16PairComparerByIDPKvS0_)
  br label %_Z7ImQsortPvmmPFiPKvS1_E.exit

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL16PairComparerByIDPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #17 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !260
  %i.b = load i32, ptr %1, align 8, !tbaa !260
  %i.c = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
end_hunk_0
begin_hunk_1_@_ZN5ImGui16DebugBreakButtonEPKcS1_:bb.a

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28:   ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit
  %.pre-phi = phi i64 [ %.pre42, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit ], [ %i.p, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ]
  %.0.lcssa.i.i = phi ptr [ %.0.lcssa.i.i.ph, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit ], [ inttoptr (i64 -1 to ptr), %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ] ; 2 uses
  %i.fb = sub i64 %.pre-phi, %i.p
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28
  %i.fe = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 5312
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !289
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 712
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !408
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.fi, ptr noundef nonnull readonly align 4 dereferenceable(8) %4, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.bx, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.ew, ptr noundef nonnull readonly %4)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 10264
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !368, !range !99, !noundef !236
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.y, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %4, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i)
  br label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit: ; preds = %bb.y, %bb.x, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit
  %.0 = phi i1 [ false, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit ], [ %i.ct, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28 ], [ %i.ct, %bb.x ], [ %i.ct, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit
  %.1 = phi i1 [ %.0, %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 4096)
  br i1 %i.a, label %bb.b, label %_ZN5ImGui16BeginItemTooltipEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.444, ptr noundef %1)
  tail call void @_ZN5ImGui9SeparatorEv()
  %i.c = select i1 %0, ptr @.str.445, ptr @.str.446
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.c, ptr noundef null)
  tail call void @_ZN5ImGui9SeparatorEv()
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.447, ptr noundef null)
  tail call void @_ZN5ImGui3EndEv()
  br label %_ZN5ImGui16BeginItemTooltipEv.exit

_ZN5ImGui16BeginItemTooltipEv.exit:               ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16DebugNodeColumnsEP15ImGuiOldColumns(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1744   ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1745
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1746
  %i.h = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.c, ptr noundef nonnull @.str.448, i32 noundef %i.a, i32 noundef %i.e, i32 noundef %i.g)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !1747 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !1748 ; 2 uses
  %i.m = fsub float %i.j, %i.l
  %i.n = fpext float %i.m to double
  %i.o = fpext float %i.l to double
  %i.p = fpext float %i.j to double
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.449, double noundef %i.n, double noundef %i.o, double noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1105 ; 2 uses
  %i.t = load i32, ptr %i.q, align 8, !tbaa !1749 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %.idx = mul nsw i64 %i.u, 28
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  %.not20 = icmp eq i32 %i.t, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.021 = phi ptr [ %i.ag, %.lr.ph ], [ %i.s, %bb.b ] ; 3 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !1105
  %i.x = ptrtoint ptr %.021 to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 28
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = load float, ptr %.021, align 4, !tbaa !1751 ; 2 uses
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call noundef float @_ZN5ImGui23GetColumnOffsetFromNormEPK15ImGuiOldColumnsf(ptr noundef nonnull %0, float noundef %i.ac)
  %i.af = fpext float %i.ae to double
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.450, i32 noundef %i.ab, double noundef %i.ad, double noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %.021, i64 28 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare noundef float @_ZN5ImGui23GetColumnOffsetFromNormEPK15ImGuiOldColumnsf(ptr noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN5ImGui12TextDisabledEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #12 {
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1103 ; 2 uses
  %i.f = and i32 %i.e, -2
  store i32 %i.f, ptr %i.d, align 8, !tbaa !1103
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1102 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !947
  %i.k = add i32 %i.j, %i.h                       ; 4 uses
  %i.l = icmp ult i32 %i.h, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  br i1 %3, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN6ImRect3AddERK6ImVec2.exit.us.2
  %.02752.us = phi i32 [ %i.bs, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.h, %.lr.ph.split.us.preheader ] ; 6 uses
  %i.s = phi <4 x float> [ %i.br, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.t = load i32, ptr %i.m, align 8, !tbaa !1098
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.us, label %.preheader.us.thread

.preheader.us.thread:                             ; preds = %.lr.ph.split.us
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.w = load i32, ptr %i.p, align 8, !tbaa !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !75
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %i.x
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us

.preheader.us:                                    ; preds = %.lr.ph.split.us
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !1099 ; 3 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !75
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %.not.us = icmp eq ptr %i.z, null
  br i1 %.not.us, label %_ZN6ImRect3AddERK6ImVec2.exit.us, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.ae = zext i32 %.02752.us to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !255
  %i.ah = zext i16 %i.ag to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us

_ZN6ImRect3AddERK6ImVec2.exit.us:                 ; preds = %.preheader.us.thread, %bb.b, %.preheader.us
  %.not.us113 = phi i1 [ false, %bb.b ], [ true, %.preheader.us ], [ true, %.preheader.us.thread ] ; 2 uses
  %i.ai = phi ptr [ %i.ad, %bb.b ], [ %i.ad, %.preheader.us ], [ %i.y, %.preheader.us.thread ] ; 3 uses
  %i.aj = phi ptr [ %i.z, %bb.b ], [ null, %.preheader.us ], [ null, %.preheader.us.thread ] ; 2 uses
  %i.ak = phi i32 [ %i.ah, %bb.b ], [ %.02752.us, %.preheader.us ], [ %.02752.us, %.preheader.us.thread ]
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
  %i.as = add nuw i32 %.02752.us, 1               ; 2 uses
  br i1 %.not.us113, label %_ZN6ImRect3AddERK6ImVec2.exit.us.1, label %bb.c

bb.c:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !255
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
  %i.bf = add i32 %.02752.us, 2                   ; 2 uses
  br i1 %.not.us113, label %_ZN6ImRect3AddERK6ImVec2.exit.us.2, label %bb.d

bb.d:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us.1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !255
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
  %i.bs = add i32 %.02752.us, 3                   ; 2 uses
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %5, i32 noundef 3, i32 noundef -16711681, float noundef 1.000000e+00, i32 noundef 512)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bt = icmp ult i32 %i.bs, %i.k
  br i1 %i.bt, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1752

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bu = load i32, ptr %i.m, align 8, !tbaa !1098
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.bx = load i32, ptr %i.p, align 8, !tbaa !1101
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.by ; 3 uses
  br label %_ZN6ImRect3AddERK6ImVec2.exit.2

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !1099 ; 4 uses
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.cc = load i32, ptr %i.p, align 8, !tbaa !1101
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [20 x i8], ptr %i.cb, i64 %i.cd ; 3 uses
  %.not.us68 = icmp eq ptr %i.ca, null            ; 3 uses
  br label %.preheader.us67.preheader

.preheader.us67.preheader:                        ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, %.lr.ph.split.split.us
  %.02752.us59 = phi i32 [ %i.h, %.lr.ph.split.split.us ], [ %i.dp, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ] ; 5 uses
  %i.cf = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.split.us ], [ %i.do, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75, label %bb.e

bb.e:                                             ; preds = %.preheader.us67.preheader
  %i.cg = zext i32 %.02752.us59 to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !255
  %i.cj = zext i16 %i.ci to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75

_ZN6ImRect3AddERK6ImVec2.exit.us75:               ; preds = %bb.e, %.preheader.us67.preheader
  %i.ck = phi i32 [ %i.cj, %bb.e ], [ %.02752.us59, %.preheader.us67.preheader ]
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [20 x i8], ptr %i.ce, i64 %i.cl
  %16 = load <2 x float>, ptr %i.cm, align 4
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cn = fcmp olt <4 x float> %i.cf, %17
  %i.co = fcmp ogt <4 x float> %i.cf, %17
  %i.cp = shufflevector <4 x i1> %i.cn, <4 x i1> %i.co, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cq = select <4 x i1> %i.cp, <4 x float> %17, <4 x float> %i.cf ; 3 uses
  %i.cr = add nuw i32 %.02752.us59, 1             ; 2 uses
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75.1, label %bb.f

bb.f:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !255
  %i.cv = zext i16 %i.cu to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75.1

_ZN6ImRect3AddERK6ImVec2.exit.us75.1:             ; preds = %bb.f, %_ZN6ImRect3AddERK6ImVec2.exit.us75
  %i.cw = phi i32 [ %i.cv, %bb.f ], [ %i.cr, %_ZN6ImRect3AddERK6ImVec2.exit.us75 ]
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [20 x i8], ptr %i.ce, i64 %i.cx
  %18 = load <2 x float>, ptr %i.cy, align 4
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cz = fcmp olt <4 x float> %i.cq, %19
  %i.da = fcmp ogt <4 x float> %i.cq, %19
  %i.db = shufflevector <4 x i1> %i.cz, <4 x i1> %i.da, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dc = select <4 x i1> %i.db, <4 x float> %19, <4 x float> %i.cq ; 3 uses
  %i.dd = add i32 %.02752.us59, 2                 ; 2 uses
  br i1 %.not.us68, label %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, label %bb.g

bb.g:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.1
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !255
  %i.dh = zext i16 %i.dg to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us75.2

_ZN6ImRect3AddERK6ImVec2.exit.us75.2:             ; preds = %bb.g, %_ZN6ImRect3AddERK6ImVec2.exit.us75.1
  %i.di = phi i32 [ %i.dh, %bb.g ], [ %i.dd, %_ZN6ImRect3AddERK6ImVec2.exit.us75.1 ]
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [20 x i8], ptr %i.ce, i64 %i.dj
  %20 = load <2 x float>, ptr %i.dk, align 4
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dl = fcmp olt <4 x float> %i.dc, %21
  %i.dm = fcmp ogt <4 x float> %i.dc, %21
  %i.dn = shufflevector <4 x i1> %i.dl, <4 x i1> %i.dm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.do = select <4 x i1> %i.dn, <4 x float> %21, <4 x float> %i.dc ; 2 uses
  %i.dp = add i32 %.02752.us59, 3                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.dq = icmp ult i32 %i.dp, %i.k
  br i1 %i.dq, label %.preheader.us67.preheader, label %._crit_edge, !llvm.loop !1752

._crit_edge.loopexit120:                          ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2
  %i.dr = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us75.2, %_ZN6ImRect3AddERK6ImVec2.exit.us.2, %._crit_edge.loopexit120, %bb.a
  %i.ds = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.a ], [ %i.br, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.dr, %._crit_edge.loopexit120 ], [ %i.do, %_ZN6ImRect3AddERK6ImVec2.exit.us75.2 ]
  br i1 %4, label %bb.h, label %bb.i

_ZN6ImRect3AddERK6ImVec2.exit.2:                  ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.2, %.lr.ph.split.split.preheader
  %.02752 = phi i32 [ %i.ej, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ %i.h, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.dt = phi <4 x float> [ %i.ei, %_ZN6ImRect3AddERK6ImVec2.exit.2 ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.lr.ph.split.split.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %.pre = zext i32 %.02752 to i64
  %i.du = getelementptr inbounds nuw [20 x i8], ptr %i.bz, i64 %.pre
  %22 = load <2 x float>, ptr %i.du, align 4
  %i.dv = add nuw i32 %.02752, 1
  %.pre102.a = zext i32 %i.dv to i64
  %i.dw = getelementptr inbounds nuw [20 x i8], ptr %i.bz, i64 %.pre102.a
  %23 = load <2 x float>, ptr %i.dw, align 4
  %24 = add i32 %.02752, 2
  %.pre102 = zext i32 %24 to i64
  %25 = getelementptr inbounds nuw [20 x i8], ptr %i.bz, i64 %.pre102
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
  %i.ej = add i32 %.02752, 3                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.ek = icmp ult i32 %i.ej, %i.k
  br i1 %i.ek, label %_ZN6ImRect3AddERK6ImVec2.exit.2, label %._crit_edge.loopexit120, !llvm.loop !1753

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.el = fptosi <2 x float> %i.a to <2 x i32>
  %i.em = sitofp <2 x i32> %i.el to <2 x float>
  store <2 x float> %i.em, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.en = fptosi <2 x float> %i.c to <2 x i32>
  %i.eo = sitofp <2 x i32> %i.en to <2 x float>
  store <2 x float> %i.eo, ptr %7, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -65281, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.ep = fptosi <4 x float> %i.ds to <4 x i32>
  %i.eq = sitofp <4 x i32> %i.ep to <4 x float>   ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.er, ptr %8, align 8
  %i.es = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.es, ptr %9, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef -256, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  store i32 %i.e, ptr %i.d, align 8, !tbaa !1103
  ret void
}

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11ImFontAtlas10RemoveFontEP6ImFont(ptr noundef nonnull align 8 dereferenceable(760), ptr noundef) local_unnamed_addr #2

declare void @_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11TextWrappedEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #2

declare void @_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui29DebugNodeFontGlyphsForSrcMaskEP6ImFontP11ImFontBakedi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 7 uses
  %4 = alloca %struct.ImVec2, align 8             ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !679
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3536
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.i = load float, ptr %i.h, align 4, !tbaa !383
  %i.j = load <4 x float>, ptr %i.g, align 4, !tbaa !75 ; 2 uses
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
  %i.k = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.i, i64 3
  %i.l = fmul <4 x float> %i.j, %i.k              ; 3 uses
  %i.m = fcmp ogt <4 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <4 x i1> %i.m, <4 x float> splat (float 1.000000e+00), <4 x float> %i.l
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.p = shufflevector <4 x float> %i.j, <4 x float> %i.l, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %i.q = insertelement <4 x float> %i.p, float %.sroa.4.0.copyload.i, i64 1
  %i.r = fcmp olt <4 x float> %i.q, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x float> splat (float 5.000000e-01), <4 x float> %i.o ; 4 uses
  %i.t = extractelement <4 x float> %i.s, i64 0
  %i.u = fptosi float %i.t to i32
  %i.v = extractelement <4 x float> %i.s, i64 1
  %i.w = fptosi float %i.v to i32
  %i.x = shl i32 %i.w, 8
  %i.y = or i32 %i.x, %i.u
  %i.z = extractelement <4 x float> %i.s, i64 2
  %i.aa = fptosi float %i.z to i32
  %i.ab = shl i32 %i.aa, 16
  %i.ac = or i32 %i.y, %i.ab
  %i.ad = extractelement <4 x float> %i.s, i64 3
  %i.ae = fptosi float %i.ad to i32
  %i.af = shl i32 %i.ae, 24
  %i.ag = or i32 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !1024 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 3304
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !1757
  %i.al = fadd float %i.ai, %i.ak                 ; 2 uses
  %i.am = fmul float %i.al, 1.600000e+01
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.b:                                             ; preds = %bb.s
  ret void

bb.c:                                             ; preds = %bb.a, %bb.s
  %.06076 = phi i32 [ 0, %bb.a ], [ %i.dt, %bb.s ] ; 12 uses
  %i.at = and i32 %.06076, 8191
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.au = or disjoint i32 %.06076, 8191
  %i.av = call noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %.06076, i32 noundef %i.au)
  br i1 %i.av, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.aw = or disjoint i32 %.06076, 7936
  br label %bb.s

bb.f:                                             ; preds = %.thread
  %i.ax = icmp slt i32 %.1, 1
  br i1 %i.ax, label %bb.s, label %bb.j

bb.g:                                             ; preds = %.preheader, %.thread
  %.05874 = phi i32 [ %i.bh, %.thread ], [ 0, %.preheader ] ; 2 uses
  %.05973 = phi i32 [ %.1, %.thread ], [ 0, %.preheader ] ; 3 uses
  %i.ay = add nuw nsw i32 %.05874, %.06076
  %i.az = trunc i32 %i.ay to i16                  ; 2 uses
  %i.ba = call noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.az)
  br i1 %i.ba, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bb = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.az) ; 2 uses
  %.not66 = icmp eq ptr %i.bb, null
  br i1 %.not66, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = lshr i32 %i.bc, 2
  %i.be = and i32 %i.bd, 15
  %i.bf = lshr i32 %2, %i.be
  %i.bg = and i32 %i.bf, 1
  %spec.select = add nsw i32 %i.bg, %.05973
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.h
  %.1 = phi i32 [ %.05973, %bb.h ], [ %spec.select, %bb.i ], [ %.05973, %bb.g ] ; 4 uses
  %i.bh = add nuw nsw i32 %.05874, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, 256
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !1754

bb.j:                                             ; preds = %bb.f
  %i.bi = zext nneg i32 %.06076 to i64
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = add nuw nsw i32 %.06076, 255
  %.not64 = icmp eq i32 %.1, 1
  %i.bl = select i1 %.not64, ptr @.str.487, ptr @.str.486
  %i.bm = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.bj, ptr noundef nonnull @.str.485, i32 noundef %.06076, i32 noundef %i.bk, i32 noundef %.1, ptr noundef nonnull %i.bl)
  br i1 %i.bm, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 5312
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !289
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 280
  %.sroa.0.0.copyload.i68 = load <2 x float>, ptr %i.bq, align 8
  br label %bb.m

bb.l:                                             ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store <2 x float> %i.ao, ptr %5, align 8, !tbaa !75
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.s

bb.m:                                             ; preds = %bb.k, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread
  %.075 = phi i32 [ 0, %bb.k ], [ %i.ds, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.br = and i32 %.075, 15
  %i.bs = lshr i32 %.075, 4
  %i.bt = uitofp nneg i32 %i.bs to float
  %i.bu = uitofp nneg i32 %i.br to float
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bt, i64 1
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.aq, <2 x float> %.sroa.0.0.copyload.i68) ; 2 uses
  store <2 x float> %i.bx, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.by = fadd <2 x float> %i.as, %i.bx
  store <2 x float> %i.by, ptr %4, align 8, !tbaa !75
  %i.bz = add nuw nsw i32 %.075, %.06076
  %i.ca = trunc i32 %i.bz to i16                  ; 3 uses
  %i.cb = call noundef zeroext i1 @_ZN11ImFontBaked13IsGlyphLoadedEt(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext %i.ca)
  br i1 %i.cb, label %bb.n, label %.thread70

end_hunk_1
