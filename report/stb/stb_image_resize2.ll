Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__encode_uint8_linear:bb.a
  br i1 %i.d, label %bb.b, label %.preheader75

.preheader75:                                     ; preds = %bb.a
  %.not77 = icmp slt i32 %1, 4
  br i1 %.not77, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader75
  %.26476 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.062 = phi ptr [ %0, %bb.b ], [ %.163, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !294
  %i.h = load <4 x float>, ptr %.0, align 1, !tbaa !24
  %i.i = fadd <4 x float> %i.h, splat (float 5.000000e-01)
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.k = load <4 x float>, ptr %i.j, align 1, !tbaa !24
  %i.l = fadd <4 x float> %i.k, splat (float 5.000000e-01)
  %i.m = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.i, <4 x float> splat (float 2.550000e+02))
  %i.n = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.l, <4 x float> splat (float 2.550000e+02))
  %i.o = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> zeroinitializer)
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> zeroinitializer)
  %i.q = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.o)
  %i.r = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.p)
  %i.s = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.q, <4 x i32> %i.r)
  %i.t = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.s, <8 x i16> poison)
  %i.u = bitcast <16 x i8> %i.t to <2 x i64>
  %i.v = extractelement <2 x i64> %i.u, i64 0
  store i64 %i.v, ptr %.062, align 1, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.062, i64 8 ; 3 uses
  %.not71 = icmp ugt ptr %i.x, %i.g
  %i.y = icmp ne ptr %i.x, %i.c                   ; 2 uses
  %i.z = and i1 %.not71, %i.y                     ; 2 uses
  %.163 = select i1 %i.z, ptr %i.g, ptr %i.x
  %.1 = select i1 %i.z, ptr %i.f, ptr %i.w
  br i1 %i.y, label %bb.c, label %.loopexit

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = ptrtoaddr ptr %.26480 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader75
  %.pn.lcssa86.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.a, %.preheader75 ]
  %.pn.lcssa = phi ptr [ %.26480, %.preheader.loopexit ], [ %0, %.preheader75 ] ; 3 uses
  %.2.lcssa = phi ptr [ %i.am, %.preheader.loopexit ], [ %2, %.preheader75 ]
  %i.aa = icmp ult ptr %.pn.lcssa, %i.c
  br i1 %i.aa, label %.lr.ph84.preheader, label %.loopexit

.lr.ph84.preheader:                               ; preds = %.preheader
  %i.ab = add i64 %i.a, %i.b
  %i.ac = sub i64 %i.ab, %.pn.lcssa86.pre-phi
  %scevgep = getelementptr i8, ptr %.pn.lcssa, i64 %i.ac
  br label %.lr.ph84

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.26480 = phi ptr [ %.264, %.lr.ph ], [ %.26476, %.lr.ph.preheader ] ; 4 uses
  %.279 = phi ptr [ %i.am, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.pn78 = phi ptr [ %.26480, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.279) #24, !srcloc !295
  %i.ad = load <4 x float>, ptr %.279, align 1, !tbaa !24
  %i.ae = fadd <4 x float> %i.ad, splat (float 5.000000e-01)
  %i.af = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> splat (float 2.550000e+02))
  %i.ag = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.af, <4 x float> zeroinitializer)
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ag)
  %i.ai = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ah, <4 x i32> poison)
  %i.aj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ai, <8 x i16> poison)
  %i.ak = bitcast <16 x i8> %i.aj to <4 x i32>
  %i.al = extractelement <4 x i32> %i.ak, i64 0
  store i32 %i.al, ptr %.pn78, align 4, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %.279, i64 16 ; 2 uses
  %.264 = getelementptr inbounds nuw i8, ptr %.26480, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.264, %i.c
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !292

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.383 = phi ptr [ %i.at, %.lr.ph84 ], [ %.2.lcssa, %.lr.ph84.preheader ] ; 3 uses
  %.36582 = phi ptr [ %i.as, %.lr.ph84 ], [ %.pn.lcssa, %.lr.ph84.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.383) #24, !srcloc !296
  %i.an = load float, ptr %.383, align 4, !tbaa !58
  %i.ao = fadd float %i.an, 5.000000e-01          ; 2 uses
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  %spec.store.select1 = select i1 %i.ap, float 0.000000e+00, float %i.ao ; 2 uses
  %i.aq = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.aq, float 2.550000e+02, float %spec.store.select1
  %i.ar = fptoui float %spec.store.select to i8
  store i8 %i.ar, ptr %.36582, align 1, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %.36582, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.383, i64 4
  %exitcond.not = icmp eq ptr %i.as, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph84, !llvm.loop !293

.loopexit:                                        ; preds = %.lr.ph84, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint8_srgb(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 4 uses
  %.not29 = icmp slt i32 %1, 4
  br i1 %.not29, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.02528 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.pn.lcssa = phi ptr [ %0, %bb.a ], [ %.02532, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %.lr.ph ]
  %i.c = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.c, label %.lr.ph36, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02532 = phi ptr [ %.025, %.lr.ph ], [ %.02528, %.lr.ph.preheader ] ; 3 uses
  %.031 = phi ptr [ %i.z, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn30 = phi ptr [ %.02532, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.d = load i8, ptr %.031, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  store float %i.g, ptr %.pn30, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.pn30, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.pn30, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %.pn30, i64 12
  store float %i.x, ptr %i.y, align 4, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %.025 = getelementptr inbounds nuw i8, ptr %.02532, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.025, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !297

.lr.ph36:                                         ; preds = %.preheader, %.lr.ph36
  %.135 = phi ptr [ %i.af, %.lr.ph36 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12634 = phi ptr [ %i.ae, %.lr.ph36 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.12634) #24, !srcloc !299
  %i.aa = load i8, ptr %.135, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !58
  store float %i.ad, ptr %.12634, align 4, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %.12634, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.135, i64 1
  %i.ag = icmp ult ptr %i.ae, %i.b
  br i1 %i.ag, label %.lr.ph36, label %._crit_edge, !llvm.loop !298

._crit_edge:                                      ; preds = %.lr.ph36, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = icmp sgt i32 %1, 15
  br i1 %i.d, label %bb.b, label %.preheader162

.preheader162:                                    ; preds = %bb.a
  %.not164 = icmp slt i32 %1, 4
  br i1 %.not164, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader162
  %.2144163 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0142 = phi ptr [ %0, %bb.b ], [ %.1143, %bb.c ] ; 2 uses
  %.0141 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0141) #24, !srcloc !302
  %3 = load <4 x float>, ptr %.0141, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0141, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0141, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0141, i64 48
  %8 = load <4 x float>, ptr %i.h, align 1, !tbaa !24 ; 2 uses
  %i.i = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.k = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.i, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.p = shufflevector <4 x float> %i.l, <4 x float> %i.k, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.q = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.r = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.q, <4 x float> splat (float f0x3F7FFFFF))
  %i.s = bitcast <4 x float> %i.r to <4 x i32>    ; 2 uses
  %i.t = lshr <4 x i32> %i.s, splat (i32 20)      ; 4 uses
  %i.u = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.v = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.u, <4 x float> splat (float f0x3F7FFFFF))
  %i.w = bitcast <4 x float> %i.v to <4 x i32>    ; 2 uses
  %i.x = lshr <4 x i32> %i.w, splat (i32 20)      ; 4 uses
  %i.y = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.z = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> splat (float f0x3F7FFFFF))
  %i.aa = bitcast <4 x float> %i.z to <4 x i32>   ; 2 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 20)    ; 4 uses
  %i.ac = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> splat (float f0x39000000))
  %i.ad = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ac, <4 x float> splat (float f0x3F7FFFFF))
  %i.ae = bitcast <4 x float> %i.ad to <4 x i32>  ; 2 uses
  %i.af = lshr <4 x i32> %i.ae, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.t, i64 0
  %i.ag = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.t, i64 1
  %i.aj = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.al, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.t, i64 2
  %i.am = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.t, i64 3
  %i.ap = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.x, i64 0
  %i.as = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.x, i64 1
  %i.av = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.x, i64 2
  %i.ay = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.x, i64 3
  %i.bb = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.ab, i64 0
  %i.be = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.ab, i64 1
  %i.bh = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.ab, i64 2
  %i.bk = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.ab, i64 3
  %i.bn = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bp, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.af, i64 0
  %i.bq = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.af, i64 1
  %i.bt = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bv, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.af, i64 2
  %i.bw = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.by, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.af, i64 3
  %i.bz = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.cb, i64 3
  %i.cc = lshr <4 x i32> %i.s, splat (i32 12)
  %i.cd = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.ce = bitcast <4 x i32> %i.cc to <8 x i16>
  %i.cf = and <8 x i16> %i.ce, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cg = or disjoint <8 x i16> %i.cf, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.ch = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cd, <8 x i16> %i.cg)
  %i.ci = lshr <4 x i32> %i.ch, splat (i32 16)
  %i.cj = lshr <4 x i32> %i.w, splat (i32 12)
  %i.ck = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.cl = bitcast <4 x i32> %i.cj to <8 x i16>
  %i.cm = and <8 x i16> %i.cl, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cn = or disjoint <8 x i16> %i.cm, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ck, <8 x i16> %i.cn)
  %i.cp = lshr <4 x i32> %i.co, splat (i32 16)
  %i.cq = lshr <4 x i32> %i.aa, splat (i32 12)
  %i.cr = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cs = bitcast <4 x i32> %i.cq to <8 x i16>
  %i.ct = and <8 x i16> %i.cs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cu = or disjoint <8 x i16> %i.ct, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cr, <8 x i16> %i.cu)
  %i.cw = lshr <4 x i32> %i.cv, splat (i32 16)
  %i.cx = lshr <4 x i32> %i.ae, splat (i32 12)
  %i.cy = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cz = bitcast <4 x i32> %i.cx to <8 x i16>
  %i.da = and <8 x i16> %i.cz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.db = or disjoint <8 x i16> %i.da, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> %i.db)
  %i.dd = lshr <4 x i32> %i.dc, splat (i32 16)
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ci, <4 x i32> %i.cp) ; 2 uses
  %i.df = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cw, <4 x i32> %i.dd) ; 2 uses
  %i.dg = shufflevector <8 x i16> %i.de, <8 x i16> %i.df, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dh = shufflevector <8 x i16> %i.de, <8 x i16> %i.df, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dg, <8 x i16> %i.dh)
  store <16 x i8> %i.di, ptr %.0142, align 1, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %.0141, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0142, i64 16 ; 3 uses
  %.not150 = icmp ugt ptr %i.dk, %i.g
  %i.dl = icmp ne ptr %i.dk, %i.c                 ; 2 uses
  %i.dm = and i1 %.not150, %i.dl                  ; 2 uses
  %.1143 = select i1 %i.dm, ptr %i.g, ptr %i.dk
  %.1 = select i1 %i.dm, ptr %i.f, ptr %i.dj
  br i1 %i.dl, label %bb.c, label %.loopexit

.preheader.loopexit:                              ; preds = %stbir__linear_to_srgb_uchar.exit158
  %.pre = ptrtoaddr ptr %.2144167 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader162
  %.pn.lcssa173.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.a, %.preheader162 ]
  %.pn.lcssa = phi ptr [ %.2144167, %.preheader.loopexit ], [ %0, %.preheader162 ] ; 3 uses
  %.2.lcssa = phi ptr [ %i.gq, %.preheader.loopexit ], [ %2, %.preheader162 ]
  %i.dn = icmp ult ptr %.pn.lcssa, %i.c
  br i1 %i.dn, label %.lr.ph171.preheader, label %.loopexit

.lr.ph171.preheader:                              ; preds = %.preheader
  %i.do = add i64 %i.a, %i.b
  %i.dp = sub i64 %i.do, %.pn.lcssa173.pre-phi
  %scevgep = getelementptr i8, ptr %.pn.lcssa, i64 %i.dp
  br label %.lr.ph171

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit158
  %.2144167 = phi ptr [ %.2144, %stbir__linear_to_srgb_uchar.exit158 ], [ %.2144163, %.lr.ph.preheader ] ; 4 uses
  %.2166 = phi ptr [ %i.gq, %stbir__linear_to_srgb_uchar.exit158 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn165 = phi ptr [ %.2144167, %stbir__linear_to_srgb_uchar.exit158 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2166) #24, !srcloc !303
  %i.dq = load float, ptr %.2166, align 4, !tbaa !58 ; 3 uses
  %i.dr = fcmp ogt float %i.dq, f0x39000000
  br i1 %i.dr, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ds = fcmp ogt float %i.dq, f0x3F7FFFFF
  br i1 %i.ds, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dt = bitcast float %i.dq to i32              ; 2 uses
  %i.du = add nsw i32 %i.dt, -956301312
  %i.dv = lshr i32 %i.du, 20
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !32 ; 2 uses
  %i.dz = lshr i32 %i.dy, 7
  %i.ea = and i32 %i.dz, 16776704
  %i.eb = and i32 %i.dy, 65535
  %i.ec = lshr i32 %i.dt, 12
  %i.ed = and i32 %i.ec, 255
  %i.ee = mul nuw nsw i32 %i.eb, %i.ed
  %i.ef = add nuw nsw i32 %i.ea, %i.ee
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc i32 %i.eg to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.eh, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn165, align 1, !tbaa !24
  %i.ei = getelementptr inbounds nuw i8, ptr %.2166, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !58 ; 3 uses
  %i.ek = fcmp ogt float %i.ej, f0x39000000
  br i1 %i.ek, label %bb.f, label %stbir__linear_to_srgb_uchar.exit154

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.el = fcmp ogt float %i.ej, f0x3F7FFFFF
  br i1 %i.el, label %stbir__linear_to_srgb_uchar.exit154, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = bitcast float %i.ej to i32              ; 2 uses
  %i.en = add nsw i32 %i.em, -956301312
  %i.eo = lshr i32 %i.en, 20
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !32 ; 2 uses
  %i.es = lshr i32 %i.er, 7
  %i.et = and i32 %i.es, 16776704
  %i.eu = and i32 %i.er, 65535
  %i.ev = lshr i32 %i.em, 12
  %i.ew = and i32 %i.ev, 255
  %i.ex = mul nuw nsw i32 %i.eu, %i.ew
  %i.ey = add nuw nsw i32 %i.et, %i.ex
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc i32 %i.ez to i8
  br label %stbir__linear_to_srgb_uchar.exit154

stbir__linear_to_srgb_uchar.exit154:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i153 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.fa, %bb.g ], [ -1, %bb.f ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn165, i64 1
  store i8 %.0.i153, ptr %i.fb, align 1, !tbaa !24
  %i.fc = getelementptr inbounds nuw i8, ptr %.2166, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !58 ; 3 uses
  %i.fe = fcmp ogt float %i.fd, f0x39000000
  br i1 %i.fe, label %bb.h, label %stbir__linear_to_srgb_uchar.exit156

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit154
  %i.ff = fcmp ogt float %i.fd, f0x3F7FFFFF
  br i1 %i.ff, label %stbir__linear_to_srgb_uchar.exit156, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fg = bitcast float %i.fd to i32              ; 2 uses
  %i.fh = add nsw i32 %i.fg, -956301312
  %i.fi = lshr i32 %i.fh, 20
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !32 ; 2 uses
  %i.fm = lshr i32 %i.fl, 7
  %i.fn = and i32 %i.fm, 16776704
  %i.fo = and i32 %i.fl, 65535
  %i.fp = lshr i32 %i.fg, 12
  %i.fq = and i32 %i.fp, 255
  %i.fr = mul nuw nsw i32 %i.fo, %i.fq
  %i.fs = add nuw nsw i32 %i.fn, %i.fr
  %i.ft = lshr i32 %i.fs, 16
  %i.fu = trunc i32 %i.ft to i8
  br label %stbir__linear_to_srgb_uchar.exit156

stbir__linear_to_srgb_uchar.exit156:              ; preds = %stbir__linear_to_srgb_uchar.exit154, %bb.h, %bb.i
  %.0.i155 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit154 ], [ %i.fu, %bb.i ], [ -1, %bb.h ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.pn165, i64 2
  store i8 %.0.i155, ptr %i.fv, align 1, !tbaa !24
  %i.fw = getelementptr inbounds nuw i8, ptr %.2166, i64 12
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !58 ; 3 uses
  %i.fy = fcmp ogt float %i.fx, f0x39000000
  br i1 %i.fy, label %bb.j, label %stbir__linear_to_srgb_uchar.exit158

bb.j:                                             ; preds = %stbir__linear_to_srgb_uchar.exit156
  %i.fz = fcmp ogt float %i.fx, f0x3F7FFFFF
  br i1 %i.fz, label %stbir__linear_to_srgb_uchar.exit158, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ga = bitcast float %i.fx to i32              ; 2 uses
  %i.gb = add nsw i32 %i.ga, -956301312
  %i.gc = lshr i32 %i.gb, 20
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !32 ; 2 uses
  %i.gg = lshr i32 %i.gf, 7
  %i.gh = and i32 %i.gg, 16776704
  %i.gi = and i32 %i.gf, 65535
  %i.gj = lshr i32 %i.ga, 12
  %i.gk = and i32 %i.gj, 255
  %i.gl = mul nuw nsw i32 %i.gi, %i.gk
  %i.gm = add nuw nsw i32 %i.gh, %i.gl
  %i.gn = lshr i32 %i.gm, 16
  %i.go = trunc i32 %i.gn to i8
  br label %stbir__linear_to_srgb_uchar.exit158

stbir__linear_to_srgb_uchar.exit158:              ; preds = %stbir__linear_to_srgb_uchar.exit156, %bb.j, %bb.k
  %.0.i157 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit156 ], [ %i.go, %bb.k ], [ -1, %bb.j ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.pn165, i64 3
  store i8 %.0.i157, ptr %i.gp, align 1, !tbaa !24
  %i.gq = getelementptr inbounds nuw i8, ptr %.2166, i64 16 ; 2 uses
  %.2144 = getelementptr inbounds nuw i8, ptr %.2144167, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.2144, %i.c
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !300

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %stbir__linear_to_srgb_uchar.exit160
  %.3170 = phi ptr [ %i.hk, %stbir__linear_to_srgb_uchar.exit160 ], [ %.2.lcssa, %.lr.ph171.preheader ] ; 3 uses
  %.3145169 = phi ptr [ %i.hj, %stbir__linear_to_srgb_uchar.exit160 ], [ %.pn.lcssa, %.lr.ph171.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3170) #24, !srcloc !304
  %i.gr = load float, ptr %.3170, align 4, !tbaa !58 ; 3 uses
  %i.gs = fcmp ogt float %i.gr, f0x39000000
  br i1 %i.gs, label %bb.l, label %stbir__linear_to_srgb_uchar.exit160

bb.l:                                             ; preds = %.lr.ph171
  %i.gt = fcmp ogt float %i.gr, f0x3F7FFFFF
  br i1 %i.gt, label %stbir__linear_to_srgb_uchar.exit160, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gu = bitcast float %i.gr to i32              ; 2 uses
  %i.gv = add nsw i32 %i.gu, -956301312
  %i.gw = lshr i32 %i.gv, 20
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !32 ; 2 uses
  %i.ha = lshr i32 %i.gz, 7
  %i.hb = and i32 %i.ha, 16776704
  %i.hc = and i32 %i.gz, 65535
  %i.hd = lshr i32 %i.gu, 12
  %i.he = and i32 %i.hd, 255
  %i.hf = mul nuw nsw i32 %i.hc, %i.he
  %i.hg = add nuw nsw i32 %i.hb, %i.hf
  %i.hh = lshr i32 %i.hg, 16
  %i.hi = trunc i32 %i.hh to i8
  br label %stbir__linear_to_srgb_uchar.exit160

stbir__linear_to_srgb_uchar.exit160:              ; preds = %.lr.ph171, %bb.l, %bb.m
  %.0.i159 = phi i8 [ 0, %.lr.ph171 ], [ %i.hi, %bb.m ], [ -1, %bb.l ]
  store i8 %.0.i159, ptr %.3145169, align 1, !tbaa !24
  %i.hj = getelementptr inbounds nuw i8, ptr %.3145169, i64 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.3170, i64 4
  %exitcond.not = icmp eq ptr %i.hj, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph171, !llvm.loop !301

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit160, %bb.c, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb4_linearalpha(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.016 = phi ptr [ %0, %bb.a ], [ %i.y, %bb.b ]  ; 5 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %i.x, %bb.b ]    ; 5 uses
  %i.c = load i8, ptr %.0, align 1, !tbaa !24
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !58
  store float %i.f, ptr %.016, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 4
  store float %i.k, ptr %i.l, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = uitofp i8 %i.t to float
  %i.v = fmul nnan float %i.u, f0x3B808081
  %i.w = getelementptr inbounds nuw i8, ptr %.016, i64 12
  store float %i.v, ptr %i.w, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.b
  br i1 %i.z, label %bb.b, label %bb.c, !llvm.loop !305

bb.c:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb4_linearalpha(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %0, %bb.b ], [ %.1125, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !307
  %3 = load <4 x float>, ptr %.0, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ag = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.aj = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.al, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.am = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ap = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.as = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.av = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ay = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.bb = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.be = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bh = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bk = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bn = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.bp, i64 3
  %i.bq = lshr <4 x i32> %i.r, splat (i32 12)
  %i.br = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bs = bitcast <4 x i32> %i.bq to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bu = or disjoint <8 x i16> %i.bt, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> %i.bu)
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.v, splat (i32 12)
  %i.by = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.bz = bitcast <4 x i32> %i.bx to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cb = or disjoint <8 x i16> %i.ca, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %i.cb)
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.ce = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.cd) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ck, <4 x i32> %i.af) ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.co)
  store <16 x i8> %i.cp, ptr %.0124, align 1, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.cq, %i.f
  %i.cs = icmp ne ptr %i.cq, %i.b                 ; 2 uses
  %i.ct = and i1 %.not, %i.cs                     ; 2 uses
  %.1125 = select i1 %i.ct, ptr %i.f, ptr %i.cq
  %.1 = select i1 %i.ct, ptr %i.e, ptr %i.cr
  br i1 %i.cs, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit135
  %.2126 = phi ptr [ %i.fi, %stbir__linear_to_srgb_uchar.exit135 ], [ %0, %bb.a ] ; 5 uses
  %.2 = phi ptr [ %i.fj, %stbir__linear_to_srgb_uchar.exit135 ], [ %2, %bb.a ] ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #24, !srcloc !308
  %i.cu = load float, ptr %.2, align 4, !tbaa !58 ; 3 uses
  %i.cv = fcmp ogt float %i.cu, f0x39000000
  br i1 %i.cv, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.cw = fcmp ogt float %i.cu, f0x3F7FFFFF
  br i1 %i.cw, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = bitcast float %i.cu to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, -956301312
  %i.cz = lshr i32 %i.cy, 20
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32 ; 2 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 16776704
  %i.df = and i32 %i.dc, 65535
  %i.dg = lshr i32 %i.cx, 12
  %i.dh = and i32 %i.dg, 255
  %i.di = mul nuw nsw i32 %i.df, %i.dh
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc i32 %i.dk to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.dl, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.2126, align 1, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !58 ; 3 uses
  %i.do = fcmp ogt float %i.dn, f0x39000000
  br i1 %i.do, label %bb.f, label %stbir__linear_to_srgb_uchar.exit133

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.dp = fcmp ogt float %i.dn, f0x3F7FFFFF
  br i1 %i.dp, label %stbir__linear_to_srgb_uchar.exit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dq = bitcast float %i.dn to i32              ; 2 uses
  %i.dr = add nsw i32 %i.dq, -956301312
  %i.ds = lshr i32 %i.dr, 20
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32 ; 2 uses
  %i.dw = lshr i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 16776704
  %i.dy = and i32 %i.dv, 65535
  %i.dz = lshr i32 %i.dq, 12
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.dy, %i.ea
  %i.ec = add nuw nsw i32 %i.dx, %i.eb
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  br label %stbir__linear_to_srgb_uchar.exit133

stbir__linear_to_srgb_uchar.exit133:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i132 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ee, %bb.g ], [ -1, %bb.f ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.2126, i64 1
  store i8 %.0.i132, ptr %i.ef, align 1, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !58 ; 3 uses
  %i.ei = fcmp ogt float %i.eh, f0x39000000
  br i1 %i.ei, label %bb.h, label %stbir__linear_to_srgb_uchar.exit135

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit133
  %i.ej = fcmp ogt float %i.eh, f0x3F7FFFFF
  br i1 %i.ej, label %stbir__linear_to_srgb_uchar.exit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ek = bitcast float %i.eh to i32              ; 2 uses
  %i.el = add nsw i32 %i.ek, -956301312
  %i.em = lshr i32 %i.el, 20
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !32 ; 2 uses
  %i.eq = lshr i32 %i.ep, 7
  %i.er = and i32 %i.eq, 16776704
  %i.es = and i32 %i.ep, 65535
  %i.et = lshr i32 %i.ek, 12
  %i.eu = and i32 %i.et, 255
  %i.ev = mul nuw nsw i32 %i.es, %i.eu
  %i.ew = add nuw nsw i32 %i.er, %i.ev
  %i.ex = lshr i32 %i.ew, 16
  %i.ey = trunc i32 %i.ex to i8
  br label %stbir__linear_to_srgb_uchar.exit135

stbir__linear_to_srgb_uchar.exit135:              ; preds = %stbir__linear_to_srgb_uchar.exit133, %bb.h, %bb.i
  %.0.i134 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit133 ], [ %i.ey, %bb.i ], [ -1, %bb.h ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.2126, i64 2
  store i8 %.0.i134, ptr %i.ez, align 1, !tbaa !24
  %i.fa = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !58
  %i.fc = fmul float %i.fb, 2.550000e+02
  %i.fd = fadd float %i.fc, 5.000000e-01          ; 2 uses
  %i.fe = fcmp olt float %i.fd, 0.000000e+00
  %spec.store.select1 = select i1 %i.fe, float 0.000000e+00, float %i.fd ; 2 uses
  %i.ff = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.ff, float 2.550000e+02, float %spec.store.select1
  %i.fg = fptoui float %spec.store.select to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.2126, i64 3
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !24
  %i.fi = getelementptr inbounds nuw i8, ptr %.2126, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.fk = icmp ult ptr %i.fi, %i.b
  br i1 %i.fk, label %.preheader, label %.loopexit, !llvm.loop !306

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit135, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb2_linearalpha(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.not28 = icmp slt i32 %1, 4
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.02427 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02431 = phi ptr [ %.024, %.lr.ph ], [ %.02427, %.lr.ph.preheader ] ; 3 uses
  %.030 = phi ptr [ %i.w, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn29 = phi ptr [ %.02431, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.c = load i8, ptr %.030, align 1, !tbaa !24
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !58
  store float %i.f, ptr %.pn29, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %i.i = uitofp i8 %i.h to float
  %i.j = fmul nnan float %i.i, f0x3B808081
  %i.k = getelementptr inbounds nuw i8, ptr %.pn29, i64 4
  store float %i.j, ptr %i.k, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %.pn29, i64 8
  store float %i.p, ptr %i.q, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %.030, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %i.t = uitofp i8 %i.s to float
  %i.u = fmul nnan float %i.t, f0x3B808081
  %i.v = getelementptr inbounds nuw i8, ptr %.pn29, i64 12
  store float %i.u, ptr %i.v, align 4, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %.030, i64 4 ; 2 uses
  %.024 = getelementptr inbounds nuw i8, ptr %.02431, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.024, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !309

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.pn.lcssa = phi ptr [ %0, %bb.a ], [ %.02431, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.x = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.y = load i8, ptr %.0.lcssa, align 1, !tbaa !24
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !58
  store float %i.ab, ptr %.pn.lcssa, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !24
  %i.ae = uitofp i8 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x3B808081
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 4
  store float %i.af, ptr %i.ag, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb2_linearalpha(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0107 = phi ptr [ %0, %bb.b ], [ %.1108, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !311
  %3 = load <4 x float>, ptr %.0, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = fmul <4 x float> %i.m, splat (float 2.550000e+02)
  %i.u = fadd <4 x float> %i.t, splat (float 5.000000e-01)
  %i.v = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.u, <4 x float> zeroinitializer)
  %i.w = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.v, <4 x float> splat (float 2.550000e+02))
  %i.x = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.w)
  %i.y = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.z = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> splat (float f0x3F7FFFFF))
  %i.aa = bitcast <4 x float> %i.z to <4 x i32>   ; 2 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 20)    ; 4 uses
  %i.ac = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ad = fadd <4 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> zeroinitializer)
  %i.af = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> splat (float 2.550000e+02))
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.af)
  %.sroa.016.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ah = zext nneg i32 %.sroa.016.0.vec.extract to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %.sroa.016.0.vec.insert = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %.sroa.016.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ak = zext nneg i32 %.sroa.016.4.vec.extract to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32
  %.sroa.016.4.vec.insert = insertelement <4 x i32> %.sroa.016.0.vec.insert, i32 %i.am, i64 1
  %.sroa.016.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.an = zext nneg i32 %.sroa.016.8.vec.extract to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %.sroa.016.8.vec.insert = insertelement <4 x i32> %.sroa.016.4.vec.insert, i32 %i.ap, i64 2
  %.sroa.016.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.aq = zext nneg i32 %.sroa.016.12.vec.extract to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32
  %.sroa.016.12.vec.insert = insertelement <4 x i32> %.sroa.016.8.vec.insert, i32 %i.as, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ab, i64 0
  %i.at = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ab, i64 1
  %i.aw = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.ay, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ab, i64 2
  %i.az = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bb, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ab, i64 3
  %i.bc = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.be, i64 3
  %i.bf = lshr <4 x i32> %i.r, splat (i32 12)
  %i.bg = bitcast <4 x i32> %.sroa.016.12.vec.insert to <8 x i16>
  %i.bh = bitcast <4 x i32> %i.bf to <8 x i16>
  %i.bi = and <8 x i16> %i.bh, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bj = or disjoint <8 x i16> %i.bi, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bg, <8 x i16> %i.bj)
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bm = lshr <4 x i32> %i.aa, splat (i32 12)
  %i.bn = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.bo = bitcast <4 x i32> %i.bm to <8 x i16>
  %i.bp = and <8 x i16> %i.bo, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bq = or disjoint <8 x i16> %i.bp, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.br = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bn, <8 x i16> %i.bq)
  %i.bs = lshr <4 x i32> %i.br, splat (i32 16)
  %i.bt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bl, <4 x i32> %i.x) ; 2 uses
  %i.bu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.ag) ; 2 uses
  %i.bv = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bw = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> %i.bw)
  store <16 x i8> %i.bx, ptr %.0107, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.by, %i.f
  %i.ca = icmp ne ptr %i.by, %i.b                 ; 2 uses
  %i.cb = and i1 %.not, %i.ca                     ; 2 uses
  %.1108 = select i1 %i.cb, ptr %i.f, ptr %i.by
  %.1 = select i1 %i.cb, ptr %i.e, ptr %i.bz
  br i1 %i.ca, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit
  %.2109 = phi ptr [ %i.dc, %stbir__linear_to_srgb_uchar.exit ], [ %0, %bb.a ] ; 3 uses
  %.2 = phi ptr [ %i.dd, %stbir__linear_to_srgb_uchar.exit ], [ %2, %bb.a ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #24, !srcloc !312
  %i.cc = load float, ptr %.2, align 4, !tbaa !58 ; 3 uses
  %i.cd = fcmp ogt float %i.cc, f0x39000000
  br i1 %i.cd, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.ce = fcmp ogt float %i.cc, f0x3F7FFFFF
  br i1 %i.ce, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = bitcast float %i.cc to i32              ; 2 uses
  %i.cg = add nsw i32 %i.cf, -956301312
  %i.ch = lshr i32 %i.cg, 20
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !32 ; 2 uses
  %i.cl = lshr i32 %i.ck, 7
  %i.cm = and i32 %i.cl, 16776704
  %i.cn = and i32 %i.ck, 65535
  %i.co = lshr i32 %i.cf, 12
  %i.cp = and i32 %i.co, 255
  %i.cq = mul nuw nsw i32 %i.cn, %i.cp
  %i.cr = add nuw nsw i32 %i.cm, %i.cq
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = trunc i32 %i.cs to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.ct, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.2109, align 1, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !58
  %i.cw = fmul float %i.cv, 2.550000e+02
  %i.cx = fadd float %i.cw, 5.000000e-01          ; 2 uses
  %i.cy = fcmp olt float %i.cx, 0.000000e+00
  %spec.store.select1 = select i1 %i.cy, float 0.000000e+00, float %i.cx ; 2 uses
  %i.cz = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.cz, float 2.550000e+02, float %spec.store.select1
  %i.da = fptoui float %spec.store.select to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.2109, i64 1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %.2109, i64 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.de = icmp ult ptr %i.dc, %i.b
  br i1 %i.de, label %.preheader, label %.loopexit, !llvm.loop !310

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint16_linear_scaled(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 7
  br i1 %i.e, label %bb.b, label %.preheader69

.preheader69:                                     ; preds = %bb.a
  %.not71 = icmp slt i32 %1, 4
  br i1 %.not71, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader69
  %.25970 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.057 = phi ptr [ %0, %bb.b ], [ %.158, %bb.c ] ; 4 uses
  %.056 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.057) #24, !srcloc !315
  %i.g = load <8 x i16>, ptr %.056, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <8 x i16> %i.g, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.i = shufflevector <8 x i16> %i.g, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.j = bitcast <8 x i16> %i.h to <4 x i32>
  %i.k = uitofp nneg <4 x i32> %i.j to <4 x float>
  %i.l = bitcast <8 x i16> %i.i to <4 x i32>
  %i.m = uitofp nneg <4 x i32> %i.l to <4 x float>
  %i.n = fmul nnan <4 x float> %i.k, splat (float f0x37800080)
  %i.o = fmul nnan <4 x float> %i.m, splat (float f0x37800080)
  store <4 x float> %i.n, ptr %.057, align 1, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %.057, i64 16
  store <4 x float> %i.o, ptr %i.p, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %.057, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.056, i64 16
  %.not65 = icmp ugt ptr %i.q, %i.f
  %i.s = icmp ne ptr %i.q, %i.b                   ; 2 uses
  %i.t = and i1 %.not65, %i.s                     ; 2 uses
  %.158 = select i1 %i.t, ptr %i.f, ptr %i.q
  %.1 = select i1 %i.t, ptr %i.d, ptr %i.r
  br i1 %i.s, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader69
  %.pn.lcssa = phi ptr [ %0, %.preheader69 ], [ %.25974, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader69 ], [ %i.y, %.lr.ph ]
  %i.u = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.u, label %.lr.ph78, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.25974 = phi ptr [ %.259, %.lr.ph ], [ %.25970, %.lr.ph.preheader ] ; 4 uses
end_hunk_0
begin_hunk_1_@stbir__decode_uint8_linear_BGRA:bb.a
  store <4 x float> %i.w, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.066, i64 32
  store <4 x float> %i.y, ptr %i.ac, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.066, i64 48
  store <4 x float> %i.aa, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.066, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.065, i64 16
  %.not73 = icmp ugt ptr %i.ae, %i.f
  %i.ag = icmp ne ptr %i.ae, %i.b                 ; 2 uses
  %i.ah = and i1 %.not73, %i.ag                   ; 2 uses
  %.167 = select i1 %i.ah, ptr %i.f, ptr %i.ae
  %.1 = select i1 %i.ah, ptr %i.d, ptr %i.af
  br i1 %i.ag, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.26881 = phi ptr [ %.268, %.lr.ph ], [ %.26877, %.lr.ph.preheader ] ; 3 uses
  %.280 = phi ptr [ %i.aw, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn79 = phi ptr [ %.26881, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26881) #24, !srcloc !353
  %i.ai = getelementptr inbounds nuw i8, ptr %.280, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = uitofp i8 %i.aj to float
  store float %i.ak, ptr %.pn79, align 4, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %.280, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = uitofp i8 %i.am to float
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn79, i64 4
  store float %i.an, ptr %i.ao, align 4, !tbaa !58
  %i.ap = load i8, ptr %.280, align 1, !tbaa !24
  %i.aq = uitofp i8 %i.ap to float
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn79, i64 8
  store float %i.aq, ptr %i.ar, align 4, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %.280, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %i.au = uitofp i8 %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %.pn79, i64 12
  store float %i.au, ptr %i.av, align 4, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %.280, i64 4
  %.268 = getelementptr inbounds nuw i8, ptr %.26881, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.268, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !351

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_linear_BGRA(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 7
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not66 = icmp slt i32 %1, 4
  br i1 %.not66, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.25665 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.054 = phi ptr [ %0, %bb.b ], [ %.155, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !355
  %i.g = load <4 x float>, ptr %.0, align 1, !tbaa !24
  %i.h = fadd <4 x float> %i.g, splat (float 5.000000e-01)
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.j = load <4 x float>, ptr %i.i, align 1, !tbaa !24
  %i.k = fadd <4 x float> %i.j, splat (float 5.000000e-01)
  %i.l = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.m = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.n = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.l, <4 x float> splat (float 2.550000e+02))
  %i.o = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.m, <4 x float> splat (float 2.550000e+02))
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> zeroinitializer)
  %i.q = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> zeroinitializer)
  %i.r = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.p)
  %i.s = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.q)
  %i.t = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.r, <4 x i32> %i.s)
  %i.u = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.t, <8 x i16> poison)
  %i.v = bitcast <16 x i8> %i.u to <2 x i64>
  %i.w = extractelement <2 x i64> %i.v, i64 0
  store i64 %i.w, ptr %.054, align 1, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.054, i64 8 ; 3 uses
  %.not61 = icmp ugt ptr %i.y, %i.f
  %i.z = icmp ne ptr %i.y, %i.b                   ; 2 uses
  %i.aa = and i1 %.not61, %i.z                    ; 2 uses
  %.155 = select i1 %i.aa, ptr %i.f, ptr %i.y
  %.1 = select i1 %i.aa, ptr %i.e, ptr %i.x
  br i1 %i.z, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.25669 = phi ptr [ %.256, %.lr.ph ], [ %.25665, %.lr.ph.preheader ] ; 2 uses
  %.268 = phi ptr [ %i.al, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.pn67 = phi ptr [ %.25669, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.268) #24, !srcloc !356
  %i.ab = load <4 x float>, ptr %.268, align 1, !tbaa !24
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ae, <4 x float> zeroinitializer)
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.af)
  %i.ah = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> poison)
  %i.ai = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ah, <8 x i16> poison)
  %i.aj = bitcast <16 x i8> %i.ai to <4 x i32>
  %i.ak = extractelement <4 x i32> %i.aj, i64 0
  store i32 %i.ak, ptr %.pn67, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.268, i64 16
  %.256 = getelementptr inbounds nuw i8, ptr %.25669, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.256, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !354

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb_BGRA(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %.not21 = icmp slt i32 %1, 4
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.01820 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01824 = phi ptr [ %.018, %.lr.ph ], [ %.01820, %.lr.ph.preheader ] ; 2 uses
  %.023 = phi ptr [ %i.y, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn22 = phi ptr [ %.01824, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.023, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  store float %i.g, ptr %.pn22, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.pn22, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !58
  %i.n = load i8, ptr %.023, align 1, !tbaa !24
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %.pn22, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.023, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.pn22, i64 12
  store float %i.w, ptr %i.x, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %.023, i64 4
  %.018 = getelementptr inbounds nuw i8, ptr %.01824, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.018, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !357

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb_BGRA(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not152 = icmp slt i32 %1, 4
  br i1 %.not152, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.2137151 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0135 = phi ptr [ %0, %bb.b ], [ %.1136, %bb.c ] ; 2 uses
  %.0134 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0134) #24, !srcloc !359
  %3 = load <4 x float>, ptr %.0134, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0134, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0134, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0134, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.ac = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> splat (float f0x3F7FFFFF))
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>  ; 2 uses
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.af = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ai = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.ak, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.al = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.an, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ao = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.aq, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.ar = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.au = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.aw, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ax = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.az, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.ba = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bc, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.bd = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bg = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bi, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bj = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bl, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bm = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bo, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ae, i64 0
  %i.bp = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ae, i64 1
  %i.bs = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ae, i64 2
  %i.bv = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bx, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ae, i64 3
  %i.by = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ca, i64 3
  %i.cb = lshr <4 x i32> %i.r, splat (i32 12)
  %i.cc = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cf = or disjoint <8 x i16> %i.ce, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> %i.cf)
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = lshr <4 x i32> %i.v, splat (i32 12)
  %i.cj = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.ck = bitcast <4 x i32> %i.ci to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cm = or disjoint <8 x i16> %i.cl, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cm)
  %i.co = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cp = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cq = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cr = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ct = or disjoint <8 x i16> %i.cs, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ct)
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.cx = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cy = bitcast <4 x i32> %i.cw to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.da = or disjoint <8 x i16> %i.cz, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %i.da)
  %i.dc = lshr <4 x i32> %i.db, splat (i32 16)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cv, <4 x i32> %i.co) ; 2 uses
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ch, <4 x i32> %i.dc) ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dg = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> %i.dg)
  store <16 x i8> %i.dh, ptr %.0135, align 1, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %.0134, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0135, i64 16 ; 3 uses
  %.not141 = icmp ugt ptr %i.dj, %i.f
  %i.dk = icmp ne ptr %i.dj, %i.b                 ; 2 uses
  %i.dl = and i1 %.not141, %i.dk                  ; 2 uses
  %.1136 = select i1 %i.dl, ptr %i.f, ptr %i.dj
  %.1 = select i1 %i.dl, ptr %i.e, ptr %i.di
  br i1 %i.dk, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit149
  %.2137155 = phi ptr [ %.2137, %stbir__linear_to_srgb_uchar.exit149 ], [ %.2137151, %.lr.ph.preheader ] ; 2 uses
  %.2154 = phi ptr [ %i.gm, %stbir__linear_to_srgb_uchar.exit149 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn153 = phi ptr [ %.2137155, %stbir__linear_to_srgb_uchar.exit149 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2154) #24, !srcloc !360
  %i.dm = getelementptr inbounds nuw i8, ptr %.2154, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !58 ; 3 uses
  %i.do = fcmp ogt float %i.dn, f0x39000000
  br i1 %i.do, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.dp = fcmp ogt float %i.dn, f0x3F7FFFFF
  br i1 %i.dp, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = bitcast float %i.dn to i32              ; 2 uses
  %i.dr = add nsw i32 %i.dq, -956301312
  %i.ds = lshr i32 %i.dr, 20
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32 ; 2 uses
  %i.dw = lshr i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 16776704
  %i.dy = and i32 %i.dv, 65535
  %i.dz = lshr i32 %i.dq, 12
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.dy, %i.ea
  %i.ec = add nuw nsw i32 %i.dx, %i.eb
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ee, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn153, align 1, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %.2154, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !58 ; 3 uses
  %i.eh = fcmp ogt float %i.eg, f0x39000000
  br i1 %i.eh, label %bb.f, label %stbir__linear_to_srgb_uchar.exit145

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.ei = fcmp ogt float %i.eg, f0x3F7FFFFF
  br i1 %i.ei, label %stbir__linear_to_srgb_uchar.exit145, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ej = bitcast float %i.eg to i32              ; 2 uses
  %i.ek = add nsw i32 %i.ej, -956301312
  %i.el = lshr i32 %i.ek, 20
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !32 ; 2 uses
  %i.ep = lshr i32 %i.eo, 7
  %i.eq = and i32 %i.ep, 16776704
  %i.er = and i32 %i.eo, 65535
  %i.es = lshr i32 %i.ej, 12
  %i.et = and i32 %i.es, 255
  %i.eu = mul nuw nsw i32 %i.er, %i.et
  %i.ev = add nuw nsw i32 %i.eq, %i.eu
  %i.ew = lshr i32 %i.ev, 16
  %i.ex = trunc i32 %i.ew to i8
  br label %stbir__linear_to_srgb_uchar.exit145

stbir__linear_to_srgb_uchar.exit145:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i144 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ex, %bb.g ], [ -1, %bb.f ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn153, i64 1
  store i8 %.0.i144, ptr %i.ey, align 1, !tbaa !24
  %i.ez = load float, ptr %.2154, align 4, !tbaa !58 ; 3 uses
  %i.fa = fcmp ogt float %i.ez, f0x39000000
  br i1 %i.fa, label %bb.h, label %stbir__linear_to_srgb_uchar.exit147

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit145
  %i.fb = fcmp ogt float %i.ez, f0x3F7FFFFF
  br i1 %i.fb, label %stbir__linear_to_srgb_uchar.exit147, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fc = bitcast float %i.ez to i32              ; 2 uses
  %i.fd = add nsw i32 %i.fc, -956301312
  %i.fe = lshr i32 %i.fd, 20
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !32 ; 2 uses
  %i.fi = lshr i32 %i.fh, 7
  %i.fj = and i32 %i.fi, 16776704
  %i.fk = and i32 %i.fh, 65535
  %i.fl = lshr i32 %i.fc, 12
  %i.fm = and i32 %i.fl, 255
  %i.fn = mul nuw nsw i32 %i.fk, %i.fm
  %i.fo = add nuw nsw i32 %i.fj, %i.fn
  %i.fp = lshr i32 %i.fo, 16
  %i.fq = trunc i32 %i.fp to i8
  br label %stbir__linear_to_srgb_uchar.exit147

stbir__linear_to_srgb_uchar.exit147:              ; preds = %stbir__linear_to_srgb_uchar.exit145, %bb.h, %bb.i
  %.0.i146 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit145 ], [ %i.fq, %bb.i ], [ -1, %bb.h ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.pn153, i64 2
  store i8 %.0.i146, ptr %i.fr, align 1, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %.2154, i64 12
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !58 ; 3 uses
  %i.fu = fcmp ogt float %i.ft, f0x39000000
  br i1 %i.fu, label %bb.j, label %stbir__linear_to_srgb_uchar.exit149

bb.j:                                             ; preds = %stbir__linear_to_srgb_uchar.exit147
  %i.fv = fcmp ogt float %i.ft, f0x3F7FFFFF
  br i1 %i.fv, label %stbir__linear_to_srgb_uchar.exit149, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = bitcast float %i.ft to i32              ; 2 uses
  %i.fx = add nsw i32 %i.fw, -956301312
  %i.fy = lshr i32 %i.fx, 20
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !32 ; 2 uses
  %i.gc = lshr i32 %i.gb, 7
  %i.gd = and i32 %i.gc, 16776704
  %i.ge = and i32 %i.gb, 65535
  %i.gf = lshr i32 %i.fw, 12
  %i.gg = and i32 %i.gf, 255
  %i.gh = mul nuw nsw i32 %i.ge, %i.gg
  %i.gi = add nuw nsw i32 %i.gd, %i.gh
  %i.gj = lshr i32 %i.gi, 16
  %i.gk = trunc i32 %i.gj to i8
  br label %stbir__linear_to_srgb_uchar.exit149

stbir__linear_to_srgb_uchar.exit149:              ; preds = %stbir__linear_to_srgb_uchar.exit147, %bb.j, %bb.k
  %.0.i148 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit147 ], [ %i.gk, %bb.k ], [ -1, %bb.j ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.pn153, i64 3
  store i8 %.0.i148, ptr %i.gl, align 1, !tbaa !24
  %i.gm = getelementptr inbounds nuw i8, ptr %.2154, i64 16
  %.2137 = getelementptr inbounds nuw i8, ptr %.2137155, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.2137, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !358

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit149, %bb.c, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb4_linearalpha_BGRA(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.016 = phi ptr [ %0, %bb.a ], [ %i.y, %bb.b ]  ; 5 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %i.x, %bb.b ]    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  store float %i.g, ptr %.016, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !58
  %i.n = load i8, ptr %.0, align 1, !tbaa !24
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = uitofp i8 %i.t to float
  %i.v = fmul nnan float %i.u, f0x3B808081
  %i.w = getelementptr inbounds nuw i8, ptr %.016, i64 12
  store float %i.v, ptr %i.w, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.b
  br i1 %i.z, label %bb.b, label %bb.c, !llvm.loop !361

bb.c:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb4_linearalpha_BGRA(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %0, %bb.b ], [ %.1125, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !363
  %3 = load <4 x float>, ptr %.0, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ag = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.aj = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.al, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.am = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ap = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.as = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.av = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ay = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.bb = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.be = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bh = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bk = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bn = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.bp, i64 3
  %i.bq = lshr <4 x i32> %i.r, splat (i32 12)
  %i.br = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bs = bitcast <4 x i32> %i.bq to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bu = or disjoint <8 x i16> %i.bt, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> %i.bu)
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.v, splat (i32 12)
  %i.by = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.bz = bitcast <4 x i32> %i.bx to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cb = or disjoint <8 x i16> %i.ca, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %i.cb)
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.ce = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ck, <4 x i32> %i.cd) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.af) ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.co)
  store <16 x i8> %i.cp, ptr %.0124, align 1, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.cq, %i.f
  %i.cs = icmp ne ptr %i.cq, %i.b                 ; 2 uses
  %i.ct = and i1 %.not, %i.cs                     ; 2 uses
  %.1125 = select i1 %i.ct, ptr %i.f, ptr %i.cq
  %.1 = select i1 %i.ct, ptr %i.e, ptr %i.cr
  br i1 %i.cs, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit135
  %.2126 = phi ptr [ %i.fi, %stbir__linear_to_srgb_uchar.exit135 ], [ %0, %bb.a ] ; 5 uses
  %.2 = phi ptr [ %i.fj, %stbir__linear_to_srgb_uchar.exit135 ], [ %2, %bb.a ] ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #24, !srcloc !364
  %i.cu = load float, ptr %.2, align 4, !tbaa !58 ; 3 uses
  %i.cv = fcmp ogt float %i.cu, f0x39000000
  br i1 %i.cv, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.cw = fcmp ogt float %i.cu, f0x3F7FFFFF
  br i1 %i.cw, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = bitcast float %i.cu to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, -956301312
  %i.cz = lshr i32 %i.cy, 20
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32 ; 2 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 16776704
  %i.df = and i32 %i.dc, 65535
  %i.dg = lshr i32 %i.cx, 12
  %i.dh = and i32 %i.dg, 255
  %i.di = mul nuw nsw i32 %i.df, %i.dh
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc i32 %i.dk to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.dl, %bb.e ], [ -1, %bb.d ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2126, i64 2
  store i8 %.0.i, ptr %i.dm, align 1, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !58 ; 3 uses
  %i.dp = fcmp ogt float %i.do, f0x39000000
  br i1 %i.dp, label %bb.f, label %stbir__linear_to_srgb_uchar.exit133

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.dq = fcmp ogt float %i.do, f0x3F7FFFFF
  br i1 %i.dq, label %stbir__linear_to_srgb_uchar.exit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = bitcast float %i.do to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, -956301312
  %i.dt = lshr i32 %i.ds, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !32 ; 2 uses
  %i.dx = lshr i32 %i.dw, 7
  %i.dy = and i32 %i.dx, 16776704
  %i.dz = and i32 %i.dw, 65535
  %i.ea = lshr i32 %i.dr, 12
  %i.eb = and i32 %i.ea, 255
  %i.ec = mul nuw nsw i32 %i.dz, %i.eb
  %i.ed = add nuw nsw i32 %i.dy, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc i32 %i.ee to i8
  br label %stbir__linear_to_srgb_uchar.exit133

stbir__linear_to_srgb_uchar.exit133:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i132 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ef, %bb.g ], [ -1, %bb.f ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.2126, i64 1
  store i8 %.0.i132, ptr %i.eg, align 1, !tbaa !24
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !58 ; 3 uses
  %i.ej = fcmp ogt float %i.ei, f0x39000000
  br i1 %i.ej, label %bb.h, label %stbir__linear_to_srgb_uchar.exit135

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit133
  %i.ek = fcmp ogt float %i.ei, f0x3F7FFFFF
  br i1 %i.ek, label %stbir__linear_to_srgb_uchar.exit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = bitcast float %i.ei to i32              ; 2 uses
  %i.em = add nsw i32 %i.el, -956301312
  %i.en = lshr i32 %i.em, 20
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !32 ; 2 uses
  %i.er = lshr i32 %i.eq, 7
  %i.es = and i32 %i.er, 16776704
end_hunk_1
begin_hunk_2_@stbir__decode_uint8_linear_ARGB:bb.a
  store <4 x float> %i.w, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.066, i64 32
  store <4 x float> %i.y, ptr %i.ac, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.066, i64 48
  store <4 x float> %i.aa, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.066, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.065, i64 16
  %.not73 = icmp ugt ptr %i.ae, %i.f
  %i.ag = icmp ne ptr %i.ae, %i.b                 ; 2 uses
  %i.ah = and i1 %.not73, %i.ag                   ; 2 uses
  %.167 = select i1 %i.ah, ptr %i.f, ptr %i.ae
  %.1 = select i1 %i.ah, ptr %i.d, ptr %i.af
  br i1 %i.ag, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.26881 = phi ptr [ %.268, %.lr.ph ], [ %.26877, %.lr.ph.preheader ] ; 3 uses
  %.280 = phi ptr [ %i.aw, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn79 = phi ptr [ %.26881, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26881) #24, !srcloc !400
  %i.ai = getelementptr inbounds nuw i8, ptr %.280, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = uitofp i8 %i.aj to float
  store float %i.ak, ptr %.pn79, align 4, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %.280, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = uitofp i8 %i.am to float
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn79, i64 4
  store float %i.an, ptr %i.ao, align 4, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %.280, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %i.ar = uitofp i8 %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %.pn79, i64 8
  store float %i.ar, ptr %i.as, align 4, !tbaa !58
  %i.at = load i8, ptr %.280, align 1, !tbaa !24
  %i.au = uitofp i8 %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %.pn79, i64 12
  store float %i.au, ptr %i.av, align 4, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %.280, i64 4
  %.268 = getelementptr inbounds nuw i8, ptr %.26881, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.268, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !398

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_linear_ARGB(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 7
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not66 = icmp slt i32 %1, 4
  br i1 %.not66, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.25665 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.054 = phi ptr [ %0, %bb.b ], [ %.155, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !402
  %i.g = load <4 x float>, ptr %.0, align 1, !tbaa !24
  %i.h = fadd <4 x float> %i.g, splat (float 5.000000e-01)
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.j = load <4 x float>, ptr %i.i, align 1, !tbaa !24
  %i.k = fadd <4 x float> %i.j, splat (float 5.000000e-01)
  %i.l = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.m = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.n = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.l, <4 x float> splat (float 2.550000e+02))
  %i.o = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.m, <4 x float> splat (float 2.550000e+02))
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> zeroinitializer)
  %i.q = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> zeroinitializer)
  %i.r = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.p)
  %i.s = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.q)
  %i.t = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.r, <4 x i32> %i.s)
  %i.u = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.t, <8 x i16> poison)
  %i.v = bitcast <16 x i8> %i.u to <2 x i64>
  %i.w = extractelement <2 x i64> %i.v, i64 0
  store i64 %i.w, ptr %.054, align 1, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.054, i64 8 ; 3 uses
  %.not61 = icmp ugt ptr %i.y, %i.f
  %i.z = icmp ne ptr %i.y, %i.b                   ; 2 uses
  %i.aa = and i1 %.not61, %i.z                    ; 2 uses
  %.155 = select i1 %i.aa, ptr %i.f, ptr %i.y
  %.1 = select i1 %i.aa, ptr %i.e, ptr %i.x
  br i1 %i.z, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.25669 = phi ptr [ %.256, %.lr.ph ], [ %.25665, %.lr.ph.preheader ] ; 2 uses
  %.268 = phi ptr [ %i.al, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.pn67 = phi ptr [ %.25669, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.268) #24, !srcloc !403
  %i.ab = load <4 x float>, ptr %.268, align 1, !tbaa !24
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ae, <4 x float> zeroinitializer)
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.af)
  %i.ah = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> poison)
  %i.ai = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ah, <8 x i16> poison)
  %i.aj = bitcast <16 x i8> %i.ai to <4 x i32>
  %i.ak = extractelement <4 x i32> %i.aj, i64 0
  store i32 %i.ak, ptr %.pn67, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.268, i64 16
  %.256 = getelementptr inbounds nuw i8, ptr %.25669, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.256, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !401

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb_ARGB(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %.not21 = icmp slt i32 %1, 4
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.01820 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01824 = phi ptr [ %.018, %.lr.ph ], [ %.01820, %.lr.ph.preheader ] ; 2 uses
  %.023 = phi ptr [ %i.y, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn22 = phi ptr [ %.01824, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  store float %i.g, ptr %.pn22, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %.023, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.pn22, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %.023, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.pn22, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !58
  %i.t = load i8, ptr %.023, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.pn22, i64 12
  store float %i.w, ptr %i.x, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %.023, i64 4
  %.018 = getelementptr inbounds nuw i8, ptr %.01824, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.018, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !404

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb_ARGB(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not152 = icmp slt i32 %1, 4
  br i1 %.not152, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.2137151 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0135 = phi ptr [ %0, %bb.b ], [ %.1136, %bb.c ] ; 2 uses
  %.0134 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0134) #24, !srcloc !406
  %3 = load <4 x float>, ptr %.0134, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0134, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0134, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0134, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.ac = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> splat (float f0x3F7FFFFF))
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>  ; 2 uses
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.af = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ai = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.ak, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.al = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.an, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ao = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.aq, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.ar = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.au = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.aw, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ax = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.az, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.ba = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bc, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.bd = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bg = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bi, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bj = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bl, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bm = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bo, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ae, i64 0
  %i.bp = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ae, i64 1
  %i.bs = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ae, i64 2
  %i.bv = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bx, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ae, i64 3
  %i.by = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ca, i64 3
  %i.cb = lshr <4 x i32> %i.r, splat (i32 12)
  %i.cc = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cf = or disjoint <8 x i16> %i.ce, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> %i.cf)
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = lshr <4 x i32> %i.v, splat (i32 12)
  %i.cj = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.ck = bitcast <4 x i32> %i.ci to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cm = or disjoint <8 x i16> %i.cl, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cm)
  %i.co = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cp = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cq = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cr = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ct = or disjoint <8 x i16> %i.cs, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ct)
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.cx = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cy = bitcast <4 x i32> %i.cw to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.da = or disjoint <8 x i16> %i.cz, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %i.da)
  %i.dc = lshr <4 x i32> %i.db, splat (i32 16)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dc, <4 x i32> %i.ch) ; 2 uses
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> %i.cv) ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dg = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> %i.dg)
  store <16 x i8> %i.dh, ptr %.0135, align 1, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %.0134, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0135, i64 16 ; 3 uses
  %.not141 = icmp ugt ptr %i.dj, %i.f
  %i.dk = icmp ne ptr %i.dj, %i.b                 ; 2 uses
  %i.dl = and i1 %.not141, %i.dk                  ; 2 uses
  %.1136 = select i1 %i.dl, ptr %i.f, ptr %i.dj
  %.1 = select i1 %i.dl, ptr %i.e, ptr %i.di
  br i1 %i.dk, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit149
  %.2137155 = phi ptr [ %.2137, %stbir__linear_to_srgb_uchar.exit149 ], [ %.2137151, %.lr.ph.preheader ] ; 2 uses
  %.2154 = phi ptr [ %i.gm, %stbir__linear_to_srgb_uchar.exit149 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn153 = phi ptr [ %.2137155, %stbir__linear_to_srgb_uchar.exit149 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2154) #24, !srcloc !407
  %i.dm = getelementptr inbounds nuw i8, ptr %.2154, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !58 ; 3 uses
  %i.do = fcmp ogt float %i.dn, f0x39000000
  br i1 %i.do, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.dp = fcmp ogt float %i.dn, f0x3F7FFFFF
  br i1 %i.dp, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = bitcast float %i.dn to i32              ; 2 uses
  %i.dr = add nsw i32 %i.dq, -956301312
  %i.ds = lshr i32 %i.dr, 20
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32 ; 2 uses
  %i.dw = lshr i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 16776704
  %i.dy = and i32 %i.dv, 65535
  %i.dz = lshr i32 %i.dq, 12
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.dy, %i.ea
  %i.ec = add nuw nsw i32 %i.dx, %i.eb
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ee, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn153, align 1, !tbaa !24
  %i.ef = load float, ptr %.2154, align 4, !tbaa !58 ; 3 uses
  %i.eg = fcmp ogt float %i.ef, f0x39000000
  br i1 %i.eg, label %bb.f, label %stbir__linear_to_srgb_uchar.exit145

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.eh = fcmp ogt float %i.ef, f0x3F7FFFFF
  br i1 %i.eh, label %stbir__linear_to_srgb_uchar.exit145, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ei = bitcast float %i.ef to i32              ; 2 uses
  %i.ej = add nsw i32 %i.ei, -956301312
  %i.ek = lshr i32 %i.ej, 20
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !32 ; 2 uses
  %i.eo = lshr i32 %i.en, 7
  %i.ep = and i32 %i.eo, 16776704
  %i.eq = and i32 %i.en, 65535
  %i.er = lshr i32 %i.ei, 12
  %i.es = and i32 %i.er, 255
  %i.et = mul nuw nsw i32 %i.eq, %i.es
  %i.eu = add nuw nsw i32 %i.ep, %i.et
  %i.ev = lshr i32 %i.eu, 16
  %i.ew = trunc i32 %i.ev to i8
  br label %stbir__linear_to_srgb_uchar.exit145

stbir__linear_to_srgb_uchar.exit145:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i144 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ew, %bb.g ], [ -1, %bb.f ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn153, i64 1
  store i8 %.0.i144, ptr %i.ex, align 1, !tbaa !24
  %i.ey = getelementptr inbounds nuw i8, ptr %.2154, i64 4
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !58 ; 3 uses
  %i.fa = fcmp ogt float %i.ez, f0x39000000
  br i1 %i.fa, label %bb.h, label %stbir__linear_to_srgb_uchar.exit147

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit145
  %i.fb = fcmp ogt float %i.ez, f0x3F7FFFFF
  br i1 %i.fb, label %stbir__linear_to_srgb_uchar.exit147, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fc = bitcast float %i.ez to i32              ; 2 uses
  %i.fd = add nsw i32 %i.fc, -956301312
  %i.fe = lshr i32 %i.fd, 20
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !32 ; 2 uses
  %i.fi = lshr i32 %i.fh, 7
  %i.fj = and i32 %i.fi, 16776704
  %i.fk = and i32 %i.fh, 65535
  %i.fl = lshr i32 %i.fc, 12
  %i.fm = and i32 %i.fl, 255
  %i.fn = mul nuw nsw i32 %i.fk, %i.fm
  %i.fo = add nuw nsw i32 %i.fj, %i.fn
  %i.fp = lshr i32 %i.fo, 16
  %i.fq = trunc i32 %i.fp to i8
  br label %stbir__linear_to_srgb_uchar.exit147

stbir__linear_to_srgb_uchar.exit147:              ; preds = %stbir__linear_to_srgb_uchar.exit145, %bb.h, %bb.i
  %.0.i146 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit145 ], [ %i.fq, %bb.i ], [ -1, %bb.h ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.pn153, i64 2
  store i8 %.0.i146, ptr %i.fr, align 1, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %.2154, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !58 ; 3 uses
  %i.fu = fcmp ogt float %i.ft, f0x39000000
  br i1 %i.fu, label %bb.j, label %stbir__linear_to_srgb_uchar.exit149

bb.j:                                             ; preds = %stbir__linear_to_srgb_uchar.exit147
  %i.fv = fcmp ogt float %i.ft, f0x3F7FFFFF
  br i1 %i.fv, label %stbir__linear_to_srgb_uchar.exit149, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = bitcast float %i.ft to i32              ; 2 uses
  %i.fx = add nsw i32 %i.fw, -956301312
  %i.fy = lshr i32 %i.fx, 20
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !32 ; 2 uses
  %i.gc = lshr i32 %i.gb, 7
  %i.gd = and i32 %i.gc, 16776704
  %i.ge = and i32 %i.gb, 65535
  %i.gf = lshr i32 %i.fw, 12
  %i.gg = and i32 %i.gf, 255
  %i.gh = mul nuw nsw i32 %i.ge, %i.gg
  %i.gi = add nuw nsw i32 %i.gd, %i.gh
  %i.gj = lshr i32 %i.gi, 16
  %i.gk = trunc i32 %i.gj to i8
  br label %stbir__linear_to_srgb_uchar.exit149

stbir__linear_to_srgb_uchar.exit149:              ; preds = %stbir__linear_to_srgb_uchar.exit147, %bb.j, %bb.k
  %.0.i148 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit147 ], [ %i.gk, %bb.k ], [ -1, %bb.j ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.pn153, i64 3
  store i8 %.0.i148, ptr %i.gl, align 1, !tbaa !24
  %i.gm = getelementptr inbounds nuw i8, ptr %.2154, i64 16
  %.2137 = getelementptr inbounds nuw i8, ptr %.2137155, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.2137, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !405

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit149, %bb.c, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb4_linearalpha_ARGB(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.016 = phi ptr [ %0, %bb.a ], [ %i.y, %bb.b ]  ; 5 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %i.x, %bb.b ]    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  store float %i.g, ptr %.016, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !58
  %i.t = load i8, ptr %.0, align 1, !tbaa !24
  %i.u = uitofp i8 %i.t to float
  %i.v = fmul nnan float %i.u, f0x3B808081
  %i.w = getelementptr inbounds nuw i8, ptr %.016, i64 12
  store float %i.v, ptr %i.w, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.b
  br i1 %i.z, label %bb.b, label %bb.c, !llvm.loop !408

bb.c:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb4_linearalpha_ARGB(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %0, %bb.b ], [ %.1125, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !410
  %3 = load <4 x float>, ptr %.0, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ag = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.aj = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.al, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.am = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ap = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.as = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.av = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ay = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.bb = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.be = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bh = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bk = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bn = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.bp, i64 3
  %i.bq = lshr <4 x i32> %i.r, splat (i32 12)
  %i.br = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bs = bitcast <4 x i32> %i.bq to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bu = or disjoint <8 x i16> %i.bt, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> %i.bu)
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.v, splat (i32 12)
  %i.by = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.bz = bitcast <4 x i32> %i.bx to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cb = or disjoint <8 x i16> %i.ca, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %i.cb)
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.ce = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.af, <4 x i32> %i.bw) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cd, <4 x i32> %i.ck) ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.co)
  store <16 x i8> %i.cp, ptr %.0124, align 1, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.cq, %i.f
  %i.cs = icmp ne ptr %i.cq, %i.b                 ; 2 uses
  %i.ct = and i1 %.not, %i.cs                     ; 2 uses
  %.1125 = select i1 %i.ct, ptr %i.f, ptr %i.cq
  %.1 = select i1 %i.ct, ptr %i.e, ptr %i.cr
  br i1 %i.cs, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit135
  %.2126 = phi ptr [ %i.fi, %stbir__linear_to_srgb_uchar.exit135 ], [ %0, %bb.a ] ; 5 uses
  %.2 = phi ptr [ %i.fj, %stbir__linear_to_srgb_uchar.exit135 ], [ %2, %bb.a ] ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #24, !srcloc !411
  %i.cu = load float, ptr %.2, align 4, !tbaa !58 ; 3 uses
  %i.cv = fcmp ogt float %i.cu, f0x39000000
  br i1 %i.cv, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.cw = fcmp ogt float %i.cu, f0x3F7FFFFF
  br i1 %i.cw, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = bitcast float %i.cu to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, -956301312
  %i.cz = lshr i32 %i.cy, 20
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32 ; 2 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 16776704
  %i.df = and i32 %i.dc, 65535
  %i.dg = lshr i32 %i.cx, 12
  %i.dh = and i32 %i.dg, 255
  %i.di = mul nuw nsw i32 %i.df, %i.dh
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc i32 %i.dk to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.dl, %bb.e ], [ -1, %bb.d ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2126, i64 1
  store i8 %.0.i, ptr %i.dm, align 1, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !58 ; 3 uses
  %i.dp = fcmp ogt float %i.do, f0x39000000
  br i1 %i.dp, label %bb.f, label %stbir__linear_to_srgb_uchar.exit133

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.dq = fcmp ogt float %i.do, f0x3F7FFFFF
  br i1 %i.dq, label %stbir__linear_to_srgb_uchar.exit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = bitcast float %i.do to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, -956301312
  %i.dt = lshr i32 %i.ds, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !32 ; 2 uses
  %i.dx = lshr i32 %i.dw, 7
  %i.dy = and i32 %i.dx, 16776704
  %i.dz = and i32 %i.dw, 65535
  %i.ea = lshr i32 %i.dr, 12
  %i.eb = and i32 %i.ea, 255
  %i.ec = mul nuw nsw i32 %i.dz, %i.eb
  %i.ed = add nuw nsw i32 %i.dy, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc i32 %i.ee to i8
  br label %stbir__linear_to_srgb_uchar.exit133

stbir__linear_to_srgb_uchar.exit133:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i132 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ef, %bb.g ], [ -1, %bb.f ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.2126, i64 2
  store i8 %.0.i132, ptr %i.eg, align 1, !tbaa !24
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !58 ; 3 uses
  %i.ej = fcmp ogt float %i.ei, f0x39000000
  br i1 %i.ej, label %bb.h, label %stbir__linear_to_srgb_uchar.exit135

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit133
  %i.ek = fcmp ogt float %i.ei, f0x3F7FFFFF
  br i1 %i.ek, label %stbir__linear_to_srgb_uchar.exit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = bitcast float %i.ei to i32              ; 2 uses
  %i.em = add nsw i32 %i.el, -956301312
  %i.en = lshr i32 %i.em, 20
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !32 ; 2 uses
  %i.er = lshr i32 %i.eq, 7
  %i.es = and i32 %i.er, 16776704
end_hunk_2
begin_hunk_3_@stbir__decode_uint8_linear_ABGR:bb.a
  store <4 x float> %i.w, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.066, i64 32
  store <4 x float> %i.y, ptr %i.ac, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.066, i64 48
  store <4 x float> %i.aa, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.066, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.065, i64 16
  %.not73 = icmp ugt ptr %i.ae, %i.f
  %i.ag = icmp ne ptr %i.ae, %i.b                 ; 2 uses
  %i.ah = and i1 %.not73, %i.ag                   ; 2 uses
  %.167 = select i1 %i.ah, ptr %i.f, ptr %i.ae
  %.1 = select i1 %i.ah, ptr %i.d, ptr %i.af
  br i1 %i.ag, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.26881 = phi ptr [ %.268, %.lr.ph ], [ %.26877, %.lr.ph.preheader ] ; 3 uses
  %.280 = phi ptr [ %i.aw, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn79 = phi ptr [ %.26881, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26881) #24, !srcloc !447
  %i.ai = getelementptr inbounds nuw i8, ptr %.280, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = uitofp i8 %i.aj to float
  store float %i.ak, ptr %.pn79, align 4, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %.280, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = uitofp i8 %i.am to float
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn79, i64 4
  store float %i.an, ptr %i.ao, align 4, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %.280, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %i.ar = uitofp i8 %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %.pn79, i64 8
  store float %i.ar, ptr %i.as, align 4, !tbaa !58
  %i.at = load i8, ptr %.280, align 1, !tbaa !24
  %i.au = uitofp i8 %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %.pn79, i64 12
  store float %i.au, ptr %i.av, align 4, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %.280, i64 4
  %.268 = getelementptr inbounds nuw i8, ptr %.26881, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.268, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !445

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_linear_ABGR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 7
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not66 = icmp slt i32 %1, 4
  br i1 %.not66, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.25665 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.054 = phi ptr [ %0, %bb.b ], [ %.155, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !449
  %i.g = load <4 x float>, ptr %.0, align 1, !tbaa !24
  %i.h = fadd <4 x float> %i.g, splat (float 5.000000e-01)
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.j = load <4 x float>, ptr %i.i, align 1, !tbaa !24
  %i.k = fadd <4 x float> %i.j, splat (float 5.000000e-01)
  %i.l = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.m = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.n = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.l, <4 x float> splat (float 2.550000e+02))
  %i.o = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.m, <4 x float> splat (float 2.550000e+02))
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> zeroinitializer)
  %i.q = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> zeroinitializer)
  %i.r = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.p)
  %i.s = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.q)
  %i.t = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.r, <4 x i32> %i.s)
  %i.u = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.t, <8 x i16> poison)
  %i.v = bitcast <16 x i8> %i.u to <2 x i64>
  %i.w = extractelement <2 x i64> %i.v, i64 0
  store i64 %i.w, ptr %.054, align 1, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.054, i64 8 ; 3 uses
  %.not61 = icmp ugt ptr %i.y, %i.f
  %i.z = icmp ne ptr %i.y, %i.b                   ; 2 uses
  %i.aa = and i1 %.not61, %i.z                    ; 2 uses
  %.155 = select i1 %i.aa, ptr %i.f, ptr %i.y
  %.1 = select i1 %i.aa, ptr %i.e, ptr %i.x
  br i1 %i.z, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.25669 = phi ptr [ %.256, %.lr.ph ], [ %.25665, %.lr.ph.preheader ] ; 2 uses
  %.268 = phi ptr [ %i.al, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.pn67 = phi ptr [ %.25669, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.268) #24, !srcloc !450
  %i.ab = load <4 x float>, ptr %.268, align 1, !tbaa !24
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ae, <4 x float> zeroinitializer)
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.af)
  %i.ah = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> poison)
  %i.ai = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ah, <8 x i16> poison)
  %i.aj = bitcast <16 x i8> %i.ai to <4 x i32>
  %i.ak = extractelement <4 x i32> %i.aj, i64 0
  store i32 %i.ak, ptr %.pn67, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.268, i64 16
  %.256 = getelementptr inbounds nuw i8, ptr %.25669, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.256, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !448

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb_ABGR(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %.not21 = icmp slt i32 %1, 4
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.01820 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01824 = phi ptr [ %.018, %.lr.ph ], [ %.01820, %.lr.ph.preheader ] ; 2 uses
  %.023 = phi ptr [ %i.y, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn22 = phi ptr [ %.01824, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.023, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  store float %i.g, ptr %.pn22, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %.023, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.pn22, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.pn22, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !58
  %i.t = load i8, ptr %.023, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.pn22, i64 12
  store float %i.w, ptr %i.x, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %.023, i64 4
  %.018 = getelementptr inbounds nuw i8, ptr %.01824, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.018, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !451

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb_ABGR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not152 = icmp slt i32 %1, 4
  br i1 %.not152, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.2137151 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0135 = phi ptr [ %0, %bb.b ], [ %.1136, %bb.c ] ; 2 uses
  %.0134 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0134) #24, !srcloc !453
  %3 = load <4 x float>, ptr %.0134, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0134, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0134, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0134, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.ac = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> splat (float f0x3F7FFFFF))
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>  ; 2 uses
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.af = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ai = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.ak, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.al = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.an, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ao = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.aq, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.ar = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.au = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.aw, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ax = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.az, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.ba = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bc, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.bd = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bg = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bi, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bj = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bl, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bm = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bo, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ae, i64 0
  %i.bp = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ae, i64 1
  %i.bs = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ae, i64 2
  %i.bv = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bx, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ae, i64 3
  %i.by = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ca, i64 3
  %i.cb = lshr <4 x i32> %i.r, splat (i32 12)
  %i.cc = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cf = or disjoint <8 x i16> %i.ce, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> %i.cf)
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = lshr <4 x i32> %i.v, splat (i32 12)
  %i.cj = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.ck = bitcast <4 x i32> %i.ci to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cm = or disjoint <8 x i16> %i.cl, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cm)
  %i.co = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cp = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cq = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cr = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ct = or disjoint <8 x i16> %i.cs, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ct)
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.cx = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cy = bitcast <4 x i32> %i.cw to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.da = or disjoint <8 x i16> %i.cz, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %i.da)
  %i.dc = lshr <4 x i32> %i.db, splat (i32 16)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dc, <4 x i32> %i.cv) ; 2 uses
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> %i.ch) ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dg = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> %i.dg)
  store <16 x i8> %i.dh, ptr %.0135, align 1, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %.0134, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0135, i64 16 ; 3 uses
  %.not141 = icmp ugt ptr %i.dj, %i.f
  %i.dk = icmp ne ptr %i.dj, %i.b                 ; 2 uses
  %i.dl = and i1 %.not141, %i.dk                  ; 2 uses
  %.1136 = select i1 %i.dl, ptr %i.f, ptr %i.dj
  %.1 = select i1 %i.dl, ptr %i.e, ptr %i.di
  br i1 %i.dk, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit149
  %.2137155 = phi ptr [ %.2137, %stbir__linear_to_srgb_uchar.exit149 ], [ %.2137151, %.lr.ph.preheader ] ; 2 uses
  %.2154 = phi ptr [ %i.gm, %stbir__linear_to_srgb_uchar.exit149 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn153 = phi ptr [ %.2137155, %stbir__linear_to_srgb_uchar.exit149 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2154) #24, !srcloc !454
  %i.dm = getelementptr inbounds nuw i8, ptr %.2154, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !58 ; 3 uses
  %i.do = fcmp ogt float %i.dn, f0x39000000
  br i1 %i.do, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.dp = fcmp ogt float %i.dn, f0x3F7FFFFF
  br i1 %i.dp, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = bitcast float %i.dn to i32              ; 2 uses
  %i.dr = add nsw i32 %i.dq, -956301312
  %i.ds = lshr i32 %i.dr, 20
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32 ; 2 uses
  %i.dw = lshr i32 %i.dv, 7
  %i.dx = and i32 %i.dw, 16776704
  %i.dy = and i32 %i.dv, 65535
  %i.dz = lshr i32 %i.dq, 12
  %i.ea = and i32 %i.dz, 255
  %i.eb = mul nuw nsw i32 %i.dy, %i.ea
  %i.ec = add nuw nsw i32 %i.dx, %i.eb
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc i32 %i.ed to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ee, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn153, align 1, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %.2154, i64 8
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !58 ; 3 uses
  %i.eh = fcmp ogt float %i.eg, f0x39000000
  br i1 %i.eh, label %bb.f, label %stbir__linear_to_srgb_uchar.exit145

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.ei = fcmp ogt float %i.eg, f0x3F7FFFFF
  br i1 %i.ei, label %stbir__linear_to_srgb_uchar.exit145, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ej = bitcast float %i.eg to i32              ; 2 uses
  %i.ek = add nsw i32 %i.ej, -956301312
  %i.el = lshr i32 %i.ek, 20
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !32 ; 2 uses
  %i.ep = lshr i32 %i.eo, 7
  %i.eq = and i32 %i.ep, 16776704
  %i.er = and i32 %i.eo, 65535
  %i.es = lshr i32 %i.ej, 12
  %i.et = and i32 %i.es, 255
  %i.eu = mul nuw nsw i32 %i.er, %i.et
  %i.ev = add nuw nsw i32 %i.eq, %i.eu
  %i.ew = lshr i32 %i.ev, 16
  %i.ex = trunc i32 %i.ew to i8
  br label %stbir__linear_to_srgb_uchar.exit145

stbir__linear_to_srgb_uchar.exit145:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i144 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ex, %bb.g ], [ -1, %bb.f ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn153, i64 1
  store i8 %.0.i144, ptr %i.ey, align 1, !tbaa !24
  %i.ez = getelementptr inbounds nuw i8, ptr %.2154, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !58 ; 3 uses
  %i.fb = fcmp ogt float %i.fa, f0x39000000
  br i1 %i.fb, label %bb.h, label %stbir__linear_to_srgb_uchar.exit147

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit145
  %i.fc = fcmp ogt float %i.fa, f0x3F7FFFFF
  br i1 %i.fc, label %stbir__linear_to_srgb_uchar.exit147, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fd = bitcast float %i.fa to i32              ; 2 uses
  %i.fe = add nsw i32 %i.fd, -956301312
  %i.ff = lshr i32 %i.fe, 20
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !32 ; 2 uses
  %i.fj = lshr i32 %i.fi, 7
  %i.fk = and i32 %i.fj, 16776704
  %i.fl = and i32 %i.fi, 65535
  %i.fm = lshr i32 %i.fd, 12
  %i.fn = and i32 %i.fm, 255
  %i.fo = mul nuw nsw i32 %i.fl, %i.fn
  %i.fp = add nuw nsw i32 %i.fk, %i.fo
  %i.fq = lshr i32 %i.fp, 16
  %i.fr = trunc i32 %i.fq to i8
  br label %stbir__linear_to_srgb_uchar.exit147

stbir__linear_to_srgb_uchar.exit147:              ; preds = %stbir__linear_to_srgb_uchar.exit145, %bb.h, %bb.i
  %.0.i146 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit145 ], [ %i.fr, %bb.i ], [ -1, %bb.h ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn153, i64 2
  store i8 %.0.i146, ptr %i.fs, align 1, !tbaa !24
  %i.ft = load float, ptr %.2154, align 4, !tbaa !58 ; 3 uses
  %i.fu = fcmp ogt float %i.ft, f0x39000000
  br i1 %i.fu, label %bb.j, label %stbir__linear_to_srgb_uchar.exit149

bb.j:                                             ; preds = %stbir__linear_to_srgb_uchar.exit147
  %i.fv = fcmp ogt float %i.ft, f0x3F7FFFFF
  br i1 %i.fv, label %stbir__linear_to_srgb_uchar.exit149, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = bitcast float %i.ft to i32              ; 2 uses
  %i.fx = add nsw i32 %i.fw, -956301312
  %i.fy = lshr i32 %i.fx, 20
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !32 ; 2 uses
  %i.gc = lshr i32 %i.gb, 7
  %i.gd = and i32 %i.gc, 16776704
  %i.ge = and i32 %i.gb, 65535
  %i.gf = lshr i32 %i.fw, 12
  %i.gg = and i32 %i.gf, 255
  %i.gh = mul nuw nsw i32 %i.ge, %i.gg
  %i.gi = add nuw nsw i32 %i.gd, %i.gh
  %i.gj = lshr i32 %i.gi, 16
  %i.gk = trunc i32 %i.gj to i8
  br label %stbir__linear_to_srgb_uchar.exit149

stbir__linear_to_srgb_uchar.exit149:              ; preds = %stbir__linear_to_srgb_uchar.exit147, %bb.j, %bb.k
  %.0.i148 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit147 ], [ %i.gk, %bb.k ], [ -1, %bb.j ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.pn153, i64 3
  store i8 %.0.i148, ptr %i.gl, align 1, !tbaa !24
  %i.gm = getelementptr inbounds nuw i8, ptr %.2154, i64 16
  %.2137 = getelementptr inbounds nuw i8, ptr %.2137155, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.2137, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !452

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit149, %bb.c, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb4_linearalpha_ABGR(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.016 = phi ptr [ %0, %bb.a ], [ %i.y, %bb.b ]  ; 5 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %i.x, %bb.b ]    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  store float %i.g, ptr %.016, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !58
  %i.t = load i8, ptr %.0, align 1, !tbaa !24
  %i.u = uitofp i8 %i.t to float
  %i.v = fmul nnan float %i.u, f0x3B808081
  %i.w = getelementptr inbounds nuw i8, ptr %.016, i64 12
  store float %i.v, ptr %i.w, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.b
  br i1 %i.z, label %bb.b, label %bb.c, !llvm.loop !455

bb.c:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb4_linearalpha_ABGR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %0, %bb.b ], [ %.1125, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !457
  %3 = load <4 x float>, ptr %.0, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer)
  %i.ae = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> splat (float 2.550000e+02))
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ag = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.aj = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.al, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.am = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.ao, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ap = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.ar, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.as = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.av = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.ax, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ay = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.ba, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.bb = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bd, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.be = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bh = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bj, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bk = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bm, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bn = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.bp, i64 3
  %i.bq = lshr <4 x i32> %i.r, splat (i32 12)
  %i.br = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bs = bitcast <4 x i32> %i.bq to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bu = or disjoint <8 x i16> %i.bt, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> %i.bu)
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.v, splat (i32 12)
  %i.by = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.bz = bitcast <4 x i32> %i.bx to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cb = or disjoint <8 x i16> %i.ca, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> %i.cb)
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 16)
  %i.ce = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.af, <4 x i32> %i.ck) ; 2 uses
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cd, <4 x i32> %i.bw) ; 2 uses
  %i.cn = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.co = shufflevector <8 x i16> %i.cl, <8 x i16> %i.cm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.co)
  store <16 x i8> %i.cp, ptr %.0124, align 1, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.cq, %i.f
  %i.cs = icmp ne ptr %i.cq, %i.b                 ; 2 uses
  %i.ct = and i1 %.not, %i.cs                     ; 2 uses
  %.1125 = select i1 %i.ct, ptr %i.f, ptr %i.cq
  %.1 = select i1 %i.ct, ptr %i.e, ptr %i.cr
  br i1 %i.cs, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit135
  %.2126 = phi ptr [ %i.fi, %stbir__linear_to_srgb_uchar.exit135 ], [ %0, %bb.a ] ; 5 uses
  %.2 = phi ptr [ %i.fj, %stbir__linear_to_srgb_uchar.exit135 ], [ %2, %bb.a ] ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #24, !srcloc !458
  %i.cu = load float, ptr %.2, align 4, !tbaa !58 ; 3 uses
  %i.cv = fcmp ogt float %i.cu, f0x39000000
  br i1 %i.cv, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.cw = fcmp ogt float %i.cu, f0x3F7FFFFF
  br i1 %i.cw, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = bitcast float %i.cu to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, -956301312
  %i.cz = lshr i32 %i.cy, 20
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32 ; 2 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 16776704
  %i.df = and i32 %i.dc, 65535
  %i.dg = lshr i32 %i.cx, 12
  %i.dh = and i32 %i.dg, 255
  %i.di = mul nuw nsw i32 %i.df, %i.dh
  %i.dj = add nuw nsw i32 %i.de, %i.di
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc i32 %i.dk to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.dl, %bb.e ], [ -1, %bb.d ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.2126, i64 3
  store i8 %.0.i, ptr %i.dm, align 1, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !58 ; 3 uses
  %i.dp = fcmp ogt float %i.do, f0x39000000
  br i1 %i.dp, label %bb.f, label %stbir__linear_to_srgb_uchar.exit133

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.dq = fcmp ogt float %i.do, f0x3F7FFFFF
  br i1 %i.dq, label %stbir__linear_to_srgb_uchar.exit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = bitcast float %i.do to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, -956301312
  %i.dt = lshr i32 %i.ds, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !32 ; 2 uses
  %i.dx = lshr i32 %i.dw, 7
  %i.dy = and i32 %i.dx, 16776704
  %i.dz = and i32 %i.dw, 65535
  %i.ea = lshr i32 %i.dr, 12
  %i.eb = and i32 %i.ea, 255
  %i.ec = mul nuw nsw i32 %i.dz, %i.eb
  %i.ed = add nuw nsw i32 %i.dy, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc i32 %i.ee to i8
  br label %stbir__linear_to_srgb_uchar.exit133

stbir__linear_to_srgb_uchar.exit133:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i132 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.ef, %bb.g ], [ -1, %bb.f ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.2126, i64 2
  store i8 %.0.i132, ptr %i.eg, align 1, !tbaa !24
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !58 ; 3 uses
  %i.ej = fcmp ogt float %i.ei, f0x39000000
  br i1 %i.ej, label %bb.h, label %stbir__linear_to_srgb_uchar.exit135

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit133
  %i.ek = fcmp ogt float %i.ei, f0x3F7FFFFF
  br i1 %i.ek, label %stbir__linear_to_srgb_uchar.exit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = bitcast float %i.ei to i32              ; 2 uses
  %i.em = add nsw i32 %i.el, -956301312
  %i.en = lshr i32 %i.em, 20
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !32 ; 2 uses
  %i.er = lshr i32 %i.eq, 7
  %i.es = and i32 %i.er, 16776704
end_hunk_3
begin_hunk_4_@stbir__encode_uint8_linear_AR:bb.a
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.072 = phi ptr [ %0, %bb.b ], [ %.173, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !503
  %i.g = load <4 x float>, ptr %.0, align 1, !tbaa !24
  %i.h = fadd <4 x float> %i.g, splat (float 5.000000e-01)
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.j = load <4 x float>, ptr %i.i, align 1, !tbaa !24
  %i.k = fadd <4 x float> %i.j, splat (float 5.000000e-01)
  %i.l = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.m = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.n = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.l, <4 x float> splat (float 2.550000e+02))
  %i.o = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.m, <4 x float> splat (float 2.550000e+02))
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> zeroinitializer)
  %i.q = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> zeroinitializer)
  %i.r = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.p)
  %i.s = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.q)
  %i.t = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.r, <4 x i32> %i.s)
  %i.u = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.t, <8 x i16> poison)
  %i.v = bitcast <16 x i8> %i.u to <2 x i64>
  %i.w = extractelement <2 x i64> %i.v, i64 0
  store i64 %i.w, ptr %.072, align 1, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.072, i64 8 ; 3 uses
  %.not81 = icmp ugt ptr %i.y, %i.f
  %i.z = icmp ne ptr %i.y, %i.b                   ; 2 uses
  %i.aa = and i1 %.not81, %i.z                    ; 2 uses
  %.173 = select i1 %i.aa, ptr %i.f, ptr %i.y
  %.1 = select i1 %i.aa, ptr %i.e, ptr %i.x
  br i1 %i.z, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader85
  %.pn.lcssa = phi ptr [ %0, %.preheader85 ], [ %.27490, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader85 ], [ %i.am, %.lr.ph ]
  %i.ab = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.ab, label %.lr.ph94, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.27490 = phi ptr [ %.274, %.lr.ph ], [ %.27486, %.lr.ph.preheader ] ; 3 uses
  %.289 = phi ptr [ %i.am, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.pn88 = phi ptr [ %.27490, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.289) #24, !srcloc !504
  %i.ac = load <4 x float>, ptr %.289, align 1, !tbaa !24
  %i.ad = fadd <4 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.af = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> splat (float 2.550000e+02))
  %i.ag = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.af, <4 x float> zeroinitializer)
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ag)
  %i.ai = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ah, <4 x i32> poison)
  %i.aj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ai, <8 x i16> poison)
  %i.ak = bitcast <16 x i8> %i.aj to <4 x i32>
  %i.al = extractelement <4 x i32> %i.ak, i64 0
  store i32 %i.al, ptr %.pn88, align 4, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %.289, i64 16 ; 2 uses
  %.274 = getelementptr inbounds nuw i8, ptr %.27490, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.274, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !501

.lr.ph94:                                         ; preds = %.preheader, %.lr.ph94
  %.393 = phi ptr [ %i.ba, %.lr.ph94 ], [ %.2.lcssa, %.preheader ] ; 4 uses
  %.37592 = phi ptr [ %i.az, %.lr.ph94 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.393) #24, !srcloc !505
  %i.an = getelementptr inbounds nuw i8, ptr %.393, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !58
  %i.ap = fadd float %i.ao, 5.000000e-01          ; 2 uses
  %i.aq = fcmp olt float %i.ap, 0.000000e+00
  %spec.store.select2 = select i1 %i.aq, float 0.000000e+00, float %i.ap ; 2 uses
  %i.ar = fcmp ogt float %spec.store.select2, 2.550000e+02
  %spec.store.select = select i1 %i.ar, float 2.550000e+02, float %spec.store.select2
  %i.as = fptoui float %spec.store.select to i8
  store i8 %i.as, ptr %.37592, align 1, !tbaa !24
  %i.at = load float, ptr %.393, align 4, !tbaa !58
  %i.au = fadd float %i.at, 5.000000e-01          ; 2 uses
  %i.av = fcmp olt float %i.au, 0.000000e+00
  %spec.store.select3 = select i1 %i.av, float 0.000000e+00, float %i.au ; 2 uses
  %i.aw = fcmp ogt float %spec.store.select3, 2.550000e+02
  %spec.store.select1 = select i1 %i.aw, float 2.550000e+02, float %spec.store.select3
  %i.ax = fptoui float %spec.store.select1 to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.37592, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.37592, i64 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.393, i64 8
  %i.bb = icmp ult ptr %i.az, %i.b
  br i1 %i.bb, label %.lr.ph94, label %.loopexit, !llvm.loop !502

.loopexit:                                        ; preds = %.lr.ph94, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint8_srgb_AR(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 4 uses
  %.not31 = icmp slt i32 %1, 4
  br i1 %.not31, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.02730 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.pn.lcssa = phi ptr [ %0, %bb.a ], [ %.02734, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %.lr.ph ]
  %i.c = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.c, label %.lr.ph38, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02734 = phi ptr [ %.027, %.lr.ph ], [ %.02730, %.lr.ph.preheader ] ; 3 uses
  %.033 = phi ptr [ %i.z, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn32 = phi ptr [ %.02734, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !58
  store float %i.h, ptr %.pn32, align 4, !tbaa !58
  %i.i = load i8, ptr %.033, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.pn32, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %.033, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %.pn32, i64 8
  store float %i.r, ptr %i.s, align 4, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %.033, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %.pn32, i64 12
  store float %i.x, ptr %i.y, align 4, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %.033, i64 4 ; 2 uses
  %.027 = getelementptr inbounds nuw i8, ptr %.02734, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.027, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !506

.lr.ph38:                                         ; preds = %.preheader, %.lr.ph38
  %.137 = phi ptr [ %i.al, %.lr.ph38 ], [ %.0.lcssa, %.preheader ] ; 3 uses
  %.12836 = phi ptr [ %i.ak, %.lr.ph38 ], [ %.pn.lcssa, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.12836) #24, !srcloc !508
  %i.aa = getelementptr inbounds nuw i8, ptr %.137, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !58
  store float %i.ae, ptr %.12836, align 4, !tbaa !58
  %i.af = load i8, ptr %.137, align 1, !tbaa !24
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %.12836, i64 4
  store float %i.ai, ptr %i.aj, align 4, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.12836, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.137, i64 2
  %i.am = icmp ult ptr %i.ak, %i.b
  br i1 %i.am, label %.lr.ph38, label %._crit_edge, !llvm.loop !507

._crit_edge:                                      ; preds = %.lr.ph38, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb_AR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 5 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader166

.preheader166:                                    ; preds = %bb.a
  %.not168 = icmp slt i32 %1, 4
  br i1 %.not168, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader166
  %.2146167 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0144 = phi ptr [ %0, %bb.b ], [ %.1145, %bb.c ] ; 2 uses
  %.0143 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0143) #24, !srcloc !511
  %3 = load <4 x float>, ptr %.0143, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0143, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0143, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0143, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.m, <4 x float> splat (float f0x39000000))
  %i.u = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> splat (float f0x3F7FFFFF))
  %i.v = bitcast <4 x float> %i.u to <4 x i32>    ; 2 uses
  %i.w = lshr <4 x i32> %i.v, splat (i32 20)      ; 4 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.y = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> splat (float f0x3F7FFFFF))
  %i.z = bitcast <4 x float> %i.y to <4 x i32>    ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 20)     ; 4 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.ac = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> splat (float f0x3F7FFFFF))
  %i.ad = bitcast <4 x float> %i.ac to <4 x i32>  ; 2 uses
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.af = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ai = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.ak, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.al = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.an, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.ao = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.aq, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.w, i64 0
  %i.ar = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.w, i64 1
  %i.au = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.aw, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.w, i64 2
  %i.ax = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.az, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.w, i64 3
  %i.ba = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bc, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.aa, i64 0
  %i.bd = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.aa, i64 1
  %i.bg = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bi, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.aa, i64 2
  %i.bj = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bl, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.aa, i64 3
  %i.bm = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bo, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ae, i64 0
  %i.bp = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ae, i64 1
  %i.bs = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ae, i64 2
  %i.bv = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bx, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ae, i64 3
  %i.by = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ca, i64 3
  %i.cb = lshr <4 x i32> %i.r, splat (i32 12)
  %i.cc = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cd = bitcast <4 x i32> %i.cb to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cf = or disjoint <8 x i16> %i.ce, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cc, <8 x i16> %i.cf)
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 16)
  %i.ci = lshr <4 x i32> %i.v, splat (i32 12)
  %i.cj = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.ck = bitcast <4 x i32> %i.ci to <8 x i16>
  %i.cl = and <8 x i16> %i.ck, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cm = or disjoint <8 x i16> %i.cl, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> %i.cm)
  %i.co = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cp = lshr <4 x i32> %i.z, splat (i32 12)
  %i.cq = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cr = bitcast <4 x i32> %i.cp to <8 x i16>
  %i.cs = and <8 x i16> %i.cr, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ct = or disjoint <8 x i16> %i.cs, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cq, <8 x i16> %i.ct)
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.cx = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.cy = bitcast <4 x i32> %i.cw to <8 x i16>
  %i.cz = and <8 x i16> %i.cy, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.da = or disjoint <8 x i16> %i.cz, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cx, <8 x i16> %i.da)
  %i.dc = lshr <4 x i32> %i.db, splat (i32 16)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> %i.ch) ; 2 uses
  %i.de = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dc, <4 x i32> %i.cv) ; 2 uses
  %i.df = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dg = shufflevector <8 x i16> %i.dd, <8 x i16> %i.de, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> %i.dg)
  store <16 x i8> %i.dh, ptr %.0144, align 1, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %.0143, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0144, i64 16 ; 3 uses
  %.not152 = icmp ugt ptr %i.dj, %i.f
  %i.dk = icmp ne ptr %i.dj, %i.b                 ; 2 uses
  %i.dl = and i1 %.not152, %i.dk                  ; 2 uses
  %.1145 = select i1 %i.dl, ptr %i.f, ptr %i.dj
  %.1 = select i1 %i.dl, ptr %i.e, ptr %i.di
  br i1 %i.dk, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %stbir__linear_to_srgb_uchar.exit160, %.preheader166
  %.pn.lcssa = phi ptr [ %0, %.preheader166 ], [ %.2146171, %stbir__linear_to_srgb_uchar.exit160 ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader166 ], [ %i.gn, %stbir__linear_to_srgb_uchar.exit160 ]
  %i.dm = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.dm, label %.lr.ph175, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit160
  %.2146171 = phi ptr [ %.2146, %stbir__linear_to_srgb_uchar.exit160 ], [ %.2146167, %.lr.ph.preheader ] ; 3 uses
  %.2170 = phi ptr [ %i.gn, %stbir__linear_to_srgb_uchar.exit160 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn169 = phi ptr [ %.2146171, %stbir__linear_to_srgb_uchar.exit160 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2170) #24, !srcloc !512
  %i.dn = getelementptr inbounds nuw i8, ptr %.2170, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !58 ; 3 uses
  %i.dp = fcmp ogt float %i.do, f0x39000000
  br i1 %i.dp, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.dq = fcmp ogt float %i.do, f0x3F7FFFFF
  br i1 %i.dq, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dr = bitcast float %i.do to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, -956301312
  %i.dt = lshr i32 %i.ds, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !32 ; 2 uses
  %i.dx = lshr i32 %i.dw, 7
  %i.dy = and i32 %i.dx, 16776704
  %i.dz = and i32 %i.dw, 65535
  %i.ea = lshr i32 %i.dr, 12
  %i.eb = and i32 %i.ea, 255
  %i.ec = mul nuw nsw i32 %i.dz, %i.eb
  %i.ed = add nuw nsw i32 %i.dy, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc i32 %i.ee to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ef, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn169, align 1, !tbaa !24
  %i.eg = load float, ptr %.2170, align 4, !tbaa !58 ; 3 uses
  %i.eh = fcmp ogt float %i.eg, f0x39000000
  br i1 %i.eh, label %bb.f, label %stbir__linear_to_srgb_uchar.exit156

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.ei = fcmp ogt float %i.eg, f0x3F7FFFFF
  br i1 %i.ei, label %stbir__linear_to_srgb_uchar.exit156, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ej = bitcast float %i.eg to i32              ; 2 uses
  %i.ek = add nsw i32 %i.ej, -956301312
  %i.el = lshr i32 %i.ek, 20
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !32 ; 2 uses
  %i.ep = lshr i32 %i.eo, 7
end_hunk_4
begin_hunk_5_@stbir__encode_uint8_srgb_AR:bb.a

stbir__linear_to_srgb_uchar.exit158:              ; preds = %stbir__linear_to_srgb_uchar.exit156, %bb.h, %bb.i
  %.0.i157 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit156 ], [ %i.fr, %bb.i ], [ -1, %bb.h ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn169, i64 2
  store i8 %.0.i157, ptr %i.fs, align 1, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %.2170, i64 8
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !58 ; 3 uses
  %i.fv = fcmp ogt float %i.fu, f0x39000000
  br i1 %i.fv, label %bb.j, label %stbir__linear_to_srgb_uchar.exit160

bb.j:                                             ; preds = %stbir__linear_to_srgb_uchar.exit158
  %i.fw = fcmp ogt float %i.fu, f0x3F7FFFFF
  br i1 %i.fw, label %stbir__linear_to_srgb_uchar.exit160, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fx = bitcast float %i.fu to i32              ; 2 uses
  %i.fy = add nsw i32 %i.fx, -956301312
  %i.fz = lshr i32 %i.fy, 20
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !32 ; 2 uses
  %i.gd = lshr i32 %i.gc, 7
  %i.ge = and i32 %i.gd, 16776704
  %i.gf = and i32 %i.gc, 65535
  %i.gg = lshr i32 %i.fx, 12
  %i.gh = and i32 %i.gg, 255
  %i.gi = mul nuw nsw i32 %i.gf, %i.gh
  %i.gj = add nuw nsw i32 %i.ge, %i.gi
  %i.gk = lshr i32 %i.gj, 16
  %i.gl = trunc i32 %i.gk to i8
  br label %stbir__linear_to_srgb_uchar.exit160

stbir__linear_to_srgb_uchar.exit160:              ; preds = %stbir__linear_to_srgb_uchar.exit158, %bb.j, %bb.k
  %.0.i159 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit158 ], [ %i.gl, %bb.k ], [ -1, %bb.j ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.pn169, i64 3
  store i8 %.0.i159, ptr %i.gm, align 1, !tbaa !24
  %i.gn = getelementptr inbounds nuw i8, ptr %.2170, i64 16 ; 2 uses
  %.2146 = getelementptr inbounds nuw i8, ptr %.2146171, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.2146, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !509

.lr.ph175:                                        ; preds = %.preheader, %stbir__linear_to_srgb_uchar.exit164
  %.3174 = phi ptr [ %i.ib, %stbir__linear_to_srgb_uchar.exit164 ], [ %.2.lcssa, %.preheader ] ; 4 uses
  %.3147173 = phi ptr [ %i.ia, %stbir__linear_to_srgb_uchar.exit164 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3174) #24, !srcloc !513
  %i.go = getelementptr inbounds nuw i8, ptr %.3174, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !58 ; 3 uses
  %i.gq = fcmp ogt float %i.gp, f0x39000000
  br i1 %i.gq, label %bb.l, label %stbir__linear_to_srgb_uchar.exit162

bb.l:                                             ; preds = %.lr.ph175
  %i.gr = fcmp ogt float %i.gp, f0x3F7FFFFF
  br i1 %i.gr, label %stbir__linear_to_srgb_uchar.exit162, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gs = bitcast float %i.gp to i32              ; 2 uses
  %i.gt = add nsw i32 %i.gs, -956301312
  %i.gu = lshr i32 %i.gt, 20
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !32 ; 2 uses
  %i.gy = lshr i32 %i.gx, 7
  %i.gz = and i32 %i.gy, 16776704
  %i.ha = and i32 %i.gx, 65535
  %i.hb = lshr i32 %i.gs, 12
  %i.hc = and i32 %i.hb, 255
  %i.hd = mul nuw nsw i32 %i.ha, %i.hc
  %i.he = add nuw nsw i32 %i.gz, %i.hd
  %i.hf = lshr i32 %i.he, 16
  %i.hg = trunc i32 %i.hf to i8
  br label %stbir__linear_to_srgb_uchar.exit162

stbir__linear_to_srgb_uchar.exit162:              ; preds = %.lr.ph175, %bb.l, %bb.m
  %.0.i161 = phi i8 [ 0, %.lr.ph175 ], [ %i.hg, %bb.m ], [ -1, %bb.l ]
  store i8 %.0.i161, ptr %.3147173, align 1, !tbaa !24
  %i.hh = load float, ptr %.3174, align 4, !tbaa !58 ; 3 uses
  %i.hi = fcmp ogt float %i.hh, f0x39000000
  br i1 %i.hi, label %bb.n, label %stbir__linear_to_srgb_uchar.exit164

bb.n:                                             ; preds = %stbir__linear_to_srgb_uchar.exit162
  %i.hj = fcmp ogt float %i.hh, f0x3F7FFFFF
  br i1 %i.hj, label %stbir__linear_to_srgb_uchar.exit164, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hk = bitcast float %i.hh to i32              ; 2 uses
  %i.hl = add nsw i32 %i.hk, -956301312
  %i.hm = lshr i32 %i.hl, 20
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !32 ; 2 uses
  %i.hq = lshr i32 %i.hp, 7
  %i.hr = and i32 %i.hq, 16776704
  %i.hs = and i32 %i.hp, 65535
  %i.ht = lshr i32 %i.hk, 12
  %i.hu = and i32 %i.ht, 255
  %i.hv = mul nuw nsw i32 %i.hs, %i.hu
  %i.hw = add nuw nsw i32 %i.hr, %i.hv
  %i.hx = lshr i32 %i.hw, 16
  %i.hy = trunc i32 %i.hx to i8
  br label %stbir__linear_to_srgb_uchar.exit164

stbir__linear_to_srgb_uchar.exit164:              ; preds = %stbir__linear_to_srgb_uchar.exit162, %bb.n, %bb.o
  %.0.i163 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit162 ], [ %i.hy, %bb.o ], [ -1, %bb.n ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.3147173, i64 1
  store i8 %.0.i163, ptr %i.hz, align 1, !tbaa !24
  %i.ia = getelementptr inbounds nuw i8, ptr %.3147173, i64 2 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.3174, i64 8
  %i.ic = icmp ult ptr %i.ia, %i.b
  br i1 %i.ic, label %.lr.ph175, label %.loopexit, !llvm.loop !510

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit164, %bb.c, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbir__decode_uint8_srgb2_linearalpha_AR(ptr nofree noundef writeonly captures(address, ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.not28 = icmp slt i32 %1, 4
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.02427 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02431 = phi ptr [ %.024, %.lr.ph ], [ %.02427, %.lr.ph.preheader ] ; 3 uses
  %.030 = phi ptr [ %i.w, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn29 = phi ptr [ %.02431, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  store float %i.g, ptr %.pn29, align 4, !tbaa !58
  %i.h = load i8, ptr %.030, align 1, !tbaa !24
  %i.i = uitofp i8 %i.h to float
  %i.j = fmul nnan float %i.i, f0x3B808081
  %i.k = getelementptr inbounds nuw i8, ptr %.pn29, i64 4
  store float %i.j, ptr %i.k, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %.030, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %.pn29, i64 8
  store float %i.p, ptr %i.q, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %i.t = uitofp i8 %i.s to float
  %i.u = fmul nnan float %i.t, f0x3B808081
  %i.v = getelementptr inbounds nuw i8, ptr %.pn29, i64 12
  store float %i.u, ptr %i.v, align 4, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %.030, i64 4 ; 2 uses
  %.024 = getelementptr inbounds nuw i8, ptr %.02431, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.024, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !514

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.pn.lcssa = phi ptr [ %0, %bb.a ], [ %.02431, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.x = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !58
  store float %i.ac, ptr %.pn.lcssa, align 4, !tbaa !58
  %i.ad = load i8, ptr %.0.lcssa, align 1, !tbaa !24
  %i.ae = uitofp i8 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x3B808081
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 4
  store float %i.af, ptr %i.ag, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_srgb2_linearalpha_AR(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = icmp sgt i32 %1, 15
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0107 = phi ptr [ %0, %bb.b ], [ %.1108, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !516
  %3 = load <4 x float>, ptr %.0, align 1, !tbaa !24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %5 = load <4 x float>, ptr %4, align 1, !tbaa !24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %7 = load <4 x float>, ptr %6, align 1, !tbaa !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %8 = load <4 x float>, ptr %i.g, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.m = shufflevector <4 x float> %i.i, <4 x float> %i.h, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> splat (float f0x39000000))
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.p, <4 x float> splat (float f0x3F7FFFFF))
  %i.r = bitcast <4 x float> %i.q to <4 x i32>    ; 2 uses
  %i.s = lshr <4 x i32> %i.r, splat (i32 20)      ; 4 uses
  %i.t = fmul <4 x float> %i.m, splat (float 2.550000e+02)
  %i.u = fadd <4 x float> %i.t, splat (float 5.000000e-01)
  %i.v = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.u, <4 x float> zeroinitializer)
  %i.w = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.v, <4 x float> splat (float 2.550000e+02))
  %i.x = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.w)
  %i.y = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.z = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> splat (float f0x3F7FFFFF))
  %i.aa = bitcast <4 x float> %i.z to <4 x i32>   ; 2 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 20)    ; 4 uses
  %i.ac = fmul <4 x float> %i.o, splat (float 2.550000e+02)
  %i.ad = fadd <4 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> zeroinitializer)
  %i.af = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> splat (float 2.550000e+02))
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.af)
  %.sroa.016.0.vec.extract = extractelement <4 x i32> %i.s, i64 0
  %i.ah = zext nneg i32 %.sroa.016.0.vec.extract to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %.sroa.016.0.vec.insert = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %.sroa.016.4.vec.extract = extractelement <4 x i32> %i.s, i64 1
  %i.ak = zext nneg i32 %.sroa.016.4.vec.extract to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32
  %.sroa.016.4.vec.insert = insertelement <4 x i32> %.sroa.016.0.vec.insert, i32 %i.am, i64 1
  %.sroa.016.8.vec.extract = extractelement <4 x i32> %i.s, i64 2
  %i.an = zext nneg i32 %.sroa.016.8.vec.extract to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %.sroa.016.8.vec.insert = insertelement <4 x i32> %.sroa.016.4.vec.insert, i32 %i.ap, i64 2
  %.sroa.016.12.vec.extract = extractelement <4 x i32> %i.s, i64 3
  %i.aq = zext nneg i32 %.sroa.016.12.vec.extract to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32
  %.sroa.016.12.vec.insert = insertelement <4 x i32> %.sroa.016.8.vec.insert, i32 %i.as, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ab, i64 0
  %i.at = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ab, i64 1
  %i.aw = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.ay, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ab, i64 2
  %i.az = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bb, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ab, i64 3
  %i.bc = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.be, i64 3
  %i.bf = lshr <4 x i32> %i.r, splat (i32 12)
  %i.bg = bitcast <4 x i32> %.sroa.016.12.vec.insert to <8 x i16>
  %i.bh = bitcast <4 x i32> %i.bf to <8 x i16>
  %i.bi = and <8 x i16> %i.bh, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bj = or disjoint <8 x i16> %i.bi, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bg, <8 x i16> %i.bj)
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bm = lshr <4 x i32> %i.aa, splat (i32 12)
  %i.bn = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.bo = bitcast <4 x i32> %i.bm to <8 x i16>
  %i.bp = and <8 x i16> %i.bo, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bq = or disjoint <8 x i16> %i.bp, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.br = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bn, <8 x i16> %i.bq)
  %i.bs = lshr <4 x i32> %i.br, splat (i32 16)
  %i.bt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.x, <4 x i32> %i.bl) ; 2 uses
  %i.bu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> %i.bs) ; 2 uses
  %i.bv = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bw = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> %i.bw)
  store <16 x i8> %i.bx, ptr %.0107, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %.not = icmp ugt ptr %i.by, %i.f
  %i.ca = icmp ne ptr %i.by, %i.b                 ; 2 uses
  %i.cb = and i1 %.not, %i.ca                     ; 2 uses
  %.1108 = select i1 %i.cb, ptr %i.f, ptr %i.by
  %.1 = select i1 %i.cb, ptr %i.e, ptr %i.bz
  br i1 %i.ca, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %bb.a, %stbir__linear_to_srgb_uchar.exit
  %.2109 = phi ptr [ %i.dc, %stbir__linear_to_srgb_uchar.exit ], [ %0, %bb.a ] ; 3 uses
  %.2 = phi ptr [ %i.dd, %stbir__linear_to_srgb_uchar.exit ], [ %2, %bb.a ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #24, !srcloc !517
  %i.cc = load float, ptr %.2, align 4, !tbaa !58 ; 3 uses
  %i.cd = fcmp ogt float %i.cc, f0x39000000
  br i1 %i.cd, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.preheader
  %i.ce = fcmp ogt float %i.cc, f0x3F7FFFFF
  br i1 %i.ce, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = bitcast float %i.cc to i32              ; 2 uses
  %i.cg = add nsw i32 %i.cf, -956301312
  %i.ch = lshr i32 %i.cg, 20
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !32 ; 2 uses
  %i.cl = lshr i32 %i.ck, 7
  %i.cm = and i32 %i.cl, 16776704
  %i.cn = and i32 %i.ck, 65535
  %i.co = lshr i32 %i.cf, 12
  %i.cp = and i32 %i.co, 255
  %i.cq = mul nuw nsw i32 %i.cn, %i.cp
  %i.cr = add nuw nsw i32 %i.cm, %i.cq
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = trunc i32 %i.cs to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.preheader, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.preheader ], [ %i.ct, %bb.e ], [ -1, %bb.d ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.2109, i64 1
  store i8 %.0.i, ptr %i.cu, align 1, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !58
  %i.cx = fmul float %i.cw, 2.550000e+02
  %i.cy = fadd float %i.cx, 5.000000e-01          ; 2 uses
  %i.cz = fcmp olt float %i.cy, 0.000000e+00
  %spec.store.select1 = select i1 %i.cz, float 0.000000e+00, float %i.cy ; 2 uses
  %i.da = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.da, float 2.550000e+02, float %spec.store.select1
  %i.db = fptoui float %spec.store.select to i8
  store i8 %i.db, ptr %.2109, align 1, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %.2109, i64 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.de = icmp ult ptr %i.dc, %i.b
  br i1 %i.de, label %.preheader, label %.loopexit, !llvm.loop !515

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint16_linear_scaled_AR(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 7
  br i1 %i.e, label %bb.b, label %.preheader73

.preheader73:                                     ; preds = %bb.a
  %.not75 = icmp slt i32 %1, 4
  br i1 %.not75, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader73
  %.26374 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.061 = phi ptr [ %0, %bb.b ], [ %.162, %bb.c ] ; 4 uses
  %.060 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.061) #24, !srcloc !520
  %i.g = load <8 x i16>, ptr %.060, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <8 x i16> %i.g, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.i = shufflevector <8 x i16> %i.g, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.j = bitcast <8 x i16> %i.h to <4 x i32>
  %i.k = uitofp nneg <4 x i32> %i.j to <4 x float>
  %i.l = bitcast <8 x i16> %i.i to <4 x i32>
  %i.m = uitofp nneg <4 x i32> %i.l to <4 x float>
  %i.n = fmul nnan <4 x float> %i.k, splat (float f0x37800080)
  %i.o = fmul nnan <4 x float> %i.m, splat (float f0x37800080)
  %i.p = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.q = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.p, ptr %.061, align 1, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %.061, i64 16
  store <4 x float> %i.q, ptr %i.r, align 1, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %.061, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.060, i64 16
  %.not69 = icmp ugt ptr %i.s, %i.f
  %i.u = icmp ne ptr %i.s, %i.b                   ; 2 uses
  %i.v = and i1 %.not69, %i.u                     ; 2 uses
  %.162 = select i1 %i.v, ptr %i.f, ptr %i.s
  %.1 = select i1 %i.v, ptr %i.d, ptr %i.t
  br i1 %i.u, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader73
  %.pn.lcssa = phi ptr [ %0, %.preheader73 ], [ %.26378, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader73 ], [ %i.ab, %.lr.ph ]
  %i.w = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.w, label %.lr.ph82, label %.loopexit

end_hunk_5
begin_hunk_6_@stbir__vertical_gather_loop:bb.a
  %i.ci = sext i32 %i.bw to i64
  %i.cj = mul i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cj ; 5 uses
  %i.cl = ptrtoint ptr %i.bu to i64
  %i.cm = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 5 uses
  %i.co = icmp ult i64 %i.cj, 64
  br i1 %i.co, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.cp = icmp samesign ult i64 %i.cj, 16
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i, label %stbir__resample_horizontal_gather.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.cs, %.preheader.i.i ], [ %i.bt, %bb.j ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0.i.i) #24, !srcloc !23
  %i.cq = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.cn
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !24
  store i8 %i.cr, ptr %.0.i.i, align 1, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.ck
  br i1 %i.ct, label %.preheader.i.i, label %stbir__resample_horizontal_gather.exit, !llvm.loop !0

bb.k:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds i8, ptr %i.bt, i64 %i.cn
  %i.cv = load <4 x float>, ptr %i.cu, align 1, !tbaa !24
  store <4 x float> %i.cv, ptr %i.bt, align 1, !tbaa !24
  %i.cw = and i64 %i.cm, -16
  %i.cx = add i64 %i.cw, 16
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds i8, ptr %i.ck, i64 -16 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.1.i.i = phi ptr [ %i.cy, %bb.k ], [ %i.de, %bb.n ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1.i.i) #24, !srcloc !28
  %i.da = icmp ugt ptr %.1.i.i, %i.cz
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = icmp eq ptr %.1.i.i, %i.ck
  br i1 %i.db, label %stbir__resample_horizontal_gather.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.i.i = phi ptr [ %.1.i.i, %bb.l ], [ %i.cz, %bb.m ] ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.2.i.i, i64 %i.cn
  %i.dd = load <4 x float>, ptr %i.dc, align 1, !tbaa !24
  store <4 x float> %i.dd, ptr %.2.i.i, align 1, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 16
  br label %bb.l, !llvm.loop !1

bb.o:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds i8, ptr %i.bt, i64 %i.cn ; 4 uses
  %i.dg = load <4 x float>, ptr %i.df, align 1, !tbaa !24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.di = load <4 x float>, ptr %i.dh, align 1, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dk = load <4 x float>, ptr %i.dj, align 1, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dm = load <4 x float>, ptr %i.dl, align 1, !tbaa !24
  store <4 x float> %i.dg, ptr %i.bt, align 1, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x float> %i.di, ptr %i.dn, align 1, !tbaa !24
  %i.do = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store <4 x float> %i.dk, ptr %i.do, align 1, !tbaa !24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store <4 x float> %i.dm, ptr %i.dp, align 1, !tbaa !24
  %i.dq = and i64 %i.cm, -64
  %i.dr = add i64 %i.dq, 64
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds i8, ptr %i.ck, i64 -64 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.3.i.i = phi ptr [ %i.ds, %bb.o ], [ %i.eh, %bb.r ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i.i) #24, !srcloc !29
  %i.du = icmp ugt ptr %.3.i.i, %i.dt
  br i1 %i.du, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dv = icmp eq ptr %.3.i.i, %i.ck
  br i1 %i.dv, label %stbir__resample_horizontal_gather.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4.i.i = phi ptr [ %.3.i.i, %bb.p ], [ %i.dt, %bb.q ] ; 6 uses
  %i.dw = getelementptr inbounds i8, ptr %.4.i.i, i64 %i.cn ; 4 uses
  %i.dx = load <4 x float>, ptr %i.dw, align 1, !tbaa !24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dz = load <4 x float>, ptr %i.dy, align 1, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.eb = load <4 x float>, ptr %i.ea, align 1, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.ed = load <4 x float>, ptr %i.ec, align 1, !tbaa !24
  store <4 x float> %i.dx, ptr %.4.i.i, align 1, !tbaa !24
  %i.ee = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 16
  store <4 x float> %i.dz, ptr %i.ee, align 1, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 32
  store <4 x float> %i.eb, ptr %i.ef, align 1, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 48
  store <4 x float> %i.ed, ptr %i.eg, align 1, !tbaa !24
  %i.eh = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 64
  br label %bb.p, !llvm.loop !2

bb.s:                                             ; preds = %bb.g, %bb.f
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !105
  %i.ej = load i32, ptr %i.ag, align 4, !tbaa !93
  %i.ek = load ptr, ptr %0, align 8, !tbaa !106
  %i.el = load ptr, ptr %i.ah, align 8, !tbaa !107
  %i.em = load i32, ptr %i.ai, align 4, !tbaa !108
  tail call void %i.ei(ptr noundef %i.bt, i32 noundef %i.ej, ptr noundef %i.ca, ptr noundef %i.ek, ptr noundef %i.el, i32 noundef %i.em) #24, !inline_history !1026
  br label %stbir__resample_horizontal_gather.exit

stbir__resample_horizontal_gather.exit:           ; preds = %bb.q, %bb.m, %.preheader.i.i, %bb.s, %bb.j, %bb.e
  %i.en = load i32, ptr %i.s, align 4, !tbaa !116 ; 2 uses
  %i.eo = icmp sgt i32 %i.al, %i.en
  br i1 %i.eo, label %.lr.ph, label %._crit_edge, !llvm.loop !1024

._crit_edge:                                      ; preds = %stbir__resample_horizontal_gather.exit, %bb.b
  tail call void @stbir__resample_vertical_gather(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %.056, i32 noundef %i.aj, i32 noundef %i.al, ptr noundef %.04655)
  %i.ep = getelementptr inbounds nuw i8, ptr %.04754, i64 8
  %i.eq = load i32, ptr %i.m, align 4, !tbaa !121
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %.04655, i64 %i.er
  %i.et = add i32 %.056, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.et, %i.j
  br i1 %exitcond.not, label %._crit_edge59, label %bb.b, !llvm.loop !1025

._crit_edge59:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_first_scanline_from_scatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99
  %i.g = mul nsw i32 %i.f, %i.b
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101  ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.p = load i32, ptr %i.o, align 4, !tbaa !114
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !93   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.w = load i32, ptr %i.v, align 8, !tbaa !80
  %i.x = mul nsw i32 %i.w, %i.u                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.z(ptr noundef %i.i, i32 noundef %i.x) #24, !inline_history !115
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95
  %.not22.i = icmp eq ptr %i.ab, null
  %spec.select.i = select i1 %.not22.i, ptr %i.s, ptr %i.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !96
  tail call void %i.ad(ptr noundef %spec.select.i, i32 noundef %i.x, ptr noundef %i.i) #24, !inline_history !115
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %.not23.i = icmp eq ptr %i.ae, null
  br i1 %.not23.i, label %stbir__encode_scanline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88
  tail call void %i.ae(ptr noundef %spec.select.i, i32 noundef %i.u, i32 noundef %i.m, ptr noundef %i.ag) #24, !inline_history !115
  br label %stbir__encode_scanline.exit

stbir__encode_scanline.exit:                      ; preds = %bb.c, %bb.d
  store float 3.000000e+38, ptr %i.i, align 4, !tbaa !58
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !101
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.l, align 8, !tbaa !101
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !100
  %i.ak = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.am = load i32, ptr %i.al, align 4, !tbaa !102
  %i.an = icmp eq i32 %i.ak, %i.am
  %spec.store.select = select i1 %i.an, i32 0, i32 %i.ak
  store i32 %spec.store.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_resample_and_encode_first_scanline_from_scatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99
  %i.g = mul nsw i32 %i.f, %i.b
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109
  tail call void @stbir__resample_horizontal_gather(ptr noundef %0, ptr noundef %i.k, ptr noundef %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !101  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.r = load i32, ptr %i.q, align 4, !tbaa !114
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !109  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !93   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.ac(ptr noundef %i.v, i32 noundef %i.aa) #24, !inline_history !115
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !95
  %.not22.i = icmp eq ptr %i.ae, null
  %spec.select.i = select i1 %.not22.i, ptr %i.u, ptr %i.v ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !96
  tail call void %i.ag(ptr noundef %spec.select.i, i32 noundef %i.aa, ptr noundef %i.v) #24, !inline_history !115
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !95 ; 2 uses
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %stbir__encode_scanline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88
  tail call void %i.ah(ptr noundef %spec.select.i, i32 noundef %i.x, i32 noundef %i.o, ptr noundef %i.aj) #24, !inline_history !115
  br label %stbir__encode_scanline.exit

stbir__encode_scanline.exit:                      ; preds = %bb.c, %bb.d
  store float 3.000000e+38, ptr %i.i, align 4, !tbaa !58
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !101
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.n, align 8, !tbaa !101
  %i.am = load i32, ptr %i.a, align 8, !tbaa !100
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !102
  %i.aq = icmp eq i32 %i.an, %i.ap
  %spec.store.select = select i1 %i.aq, i32 0, i32 %i.an
  store i32 %spec.store.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__resample_vertical_scatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 5 uses
  %reass.sub = sub i32 %3, %2
  %i.b = add i32 %reass.sub, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ %i.al, %._crit_edge ] ; 3 uses
  %.026 = phi i32 [ %i.b, %bb.a ], [ %i.am, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %spec.store.select = call i32 @llvm.smin.i32(i32 %.026, i32 8) ; 3 uses
  %i.h = icmp sgt i32 %.026, 0
  call void @llvm.assume(i1 %i.h)
  %i.i = load i32, ptr %i.c, align 8, !tbaa !100
  %i.j = load i32, ptr %i.d, align 8, !tbaa !101
  %i.k = add i32 %.027, %2
  %invariant.op = add i32 %i.k, %i.i
  %invariant.op35 = sub i32 %invariant.op, %i.j   ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !102  ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.n = load i32, ptr %i.g, align 8, !tbaa !99   ; 2 uses
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  %i.o = srem i32 %invariant.op35, %i.l
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.a, align 16, !tbaa !92
  %exitcond.peel.not = icmp eq i32 %.026, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.b
  %i.s = load float, ptr %i.r, align 4, !tbaa !58
  %i.t = fcmp une float %i.s, 3.000000e+38
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %.reass36 = add i32 %invariant.op35, %i.u
  %i.v = srem i32 %.reass36, %i.l
  %i.w = mul nsw i32 %i.n, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !92
  %i.aa = load float, ptr %i.y, align 4, !tbaa !58
  %i.ab = fcmp oeq float %i.aa, 3.000000e+38
  %.not29 = xor i1 %i.ab, %i.t
  br i1 %.not29, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %spec.store.select, %bb.b ], [ %i.u, %bb.c ], [ %spec.store.select, %bb.d ] ; 3 uses
  %i.ac = load float, ptr %i.r, align 4, !tbaa !58
  %i.ad = fcmp oeq float %i.ac, 3.000000e+38
  %i.ae = select i1 %i.ad, ptr @stbir__vertical_scatter_sets, ptr @stbir__vertical_scatter_blends
  %i.af = sext i32 %.0 to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  %i.aj = sext i32 %.027 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aj
  call void %i.ai(ptr noundef nonnull %i.a, ptr noundef %i.ak, ptr noundef %5, ptr noundef %6) #24
  %i.al = add nsw i32 %.0, %.027
  %i.am = sub nsw i32 %.026, %.0                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not30 = icmp eq i32 %i.am, 0
  br i1 %.not30, label %bb.e, label %bb.b, !llvm.loop !11

bb.e:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__vertical_scatter_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !111
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.j = load i32, ptr %i.i, align 4, !tbaa !112
  %i.k = load i32, ptr %i.h, align 8, !tbaa !86
  %i.l = add i32 %i.j, 1
  %i.m = sub i32 %i.l, %i.k
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !93
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.r = load i32, ptr %i.q, align 4, !tbaa !81   ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !119  ; 7 uses
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr [120 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !120  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !123 ; 6 uses
  %i.ab = getelementptr i8, ptr %i.w, i64 -88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !124 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !125
  %i.af = add nsw i32 %i.ae, %i.aa                ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !121
  %i.ak = mul nsw i32 %i.aj, %i.af
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.al
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !86
  %i.ar = add i32 %i.ap, 1
  %i.as = sub i32 %i.ar, %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink190 = phi i32 [ %i.av, %bb.f ], [ %i.as, %bb.e ]
  %.sink.in = phi ptr [ %i.at, %bb.f ], [ %1, %bb.e ]
  %.0135 = phi ptr [ @stbir__encode_first_scanline_from_scatter, %bb.f ], [ @stbir__horizontal_resample_and_encode_first_scanline_from_scatter, %bb.e ] ; 2 uses
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !92 ; 2 uses
  %.sink188.in = sext i32 %i.r to i64
  %.sink188 = shl nsw i64 %.sink188.in, 2
  %i.aw = sext i32 %.sink190 to i64
  %i.ax = mul i64 %.sink188, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 %i.u, ptr %i.az, align 8, !tbaa !101
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store i32 -1, ptr %i.ba, align 4, !tbaa !116
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i32 -1, ptr %i.bb, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %.preheader156

.lr.ph:                                           ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !98 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !99
  %i.bj = sext i32 %i.s to i64                    ; 5 uses
  %i.bk = sext i32 %i.bi to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bd to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bl = icmp ult i32 %i.bd, 4
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.i

.preheader156.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader156, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader156.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader156.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
end_hunk_6
begin_hunk_7_@stbir__vertical_scatter_loop:bb.a
  br i1 %i.fc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph167.1
  store i32 %i.es, ptr %i.fa, align 8, !tbaa !124
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph167.1
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge168.loopexit.unr-lcssa, label %.lr.ph167, !llvm.loop !1031

._crit_edge168.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %._crit_edge168, label %.lr.ph167.epil.preheader

.lr.ph167.epil.preheader:                         ; preds = %._crit_edge168.loopexit.unr-lcssa, %.lr.ph167.preheader
  %indvars.iv171.epil.init = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next172.1, %._crit_edge168.loopexit.unr-lcssa ]
  %lcmp.mod195 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.fd = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171.epil.init
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !124
  %i.fg = icmp sgt i32 %i.ff, %i.es
  br i1 %i.fg, label %bb.ad, label %._crit_edge168

bb.ad:                                            ; preds = %.lr.ph167.epil.preheader
  store i32 %i.es, ptr %i.fe, align 8, !tbaa !124
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %._crit_edge168.loopexit.unr-lcssa, %bb.ad, %.lr.ph167.epil.preheader, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__set_sampler(ptr nofree noundef captures(none) initializes((16, 32), (68, 116), (128, 132)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !61 ; 2 uses
  %i.d = fcmp ult float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ugt float %i.c, 1.000000e+00
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !54 ; 2 uses
  %i.h = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.g, i64 0 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.h)
  %i.j = sitofp <4 x i32> %i.i to <4 x float>     ; 2 uses
  %i.k = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.j, <4 x float> %i.h, i8 1)
  %i.l = bitcast <4 x float> %i.k to <4 x i32>
  %i.m = and <4 x i32> %i.l, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.n = bitcast <4 x i32> %i.m to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.j, %i.n
  %i.o = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.p = fcmp oeq float %i.o, %i.g
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ 4, %bb.e ], [ 5, %bb.b ], [ 6, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %.0, ptr %i.q, align 4, !tbaa !126
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @stbir__builtin_kernels, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @stbir__builtin_supports, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !40
  %i.y = icmp ne ptr %2, null
  %i.z = icmp ne ptr %3, null
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.u, align 8, !tbaa !64
  store ptr %3, ptr %i.x, align 8, !tbaa !40
  store i32 7, ptr %i.q, align 4, !tbaa !126
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi ptr [ %3, %bb.g ], [ %i.w, %bb.f ]  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %i.ab, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !61 ; 4 uses
  %i.ae = fcmp ult float %i.ad, 1.000000e+00
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = fdiv float 1.000000e+00, %i.ad
  %i.ag = tail call float %i.aa(float noundef %i.af, ptr noundef %7) #24, !inline_history !1034
  %i.ah = fmul float %i.ag, 2.000000e+00
  br label %stbir__get_filter_pixel_width.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call float %i.aa(float noundef %i.ad, ptr noundef %7) #24, !inline_history !1034
  %i.aj = fmul float %i.ai, 2.000000e+00
  %i.ak = fdiv float %i.aj, %i.ad
  br label %stbir__get_filter_pixel_width.exit

stbir__get_filter_pixel_width.exit:               ; preds = %bb.i, %bb.j
  %.sink16.i = phi float [ %i.ak, %bb.j ], [ %i.ah, %bb.i ]
  %i.al = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink16.i, i64 0 ; 2 uses
  %i.am = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.al)
  %i.an = sitofp <4 x i32> %i.am to <4 x float>   ; 2 uses
  %i.ao = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.an, <4 x float> %i.al, i8 1)
  %i.ap = bitcast <4 x float> %i.ao to <4 x i32>
  %i.aq = and <4 x i32> %i.ap, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.ar = bitcast <4 x i32> %i.aq to <4 x float>
  %foldExtExtBinop85 = fadd <4 x float> %i.an, %i.ar
  %i.as = extractelement <4 x float> %foldExtExtBinop85, i64 0
  %.0.i = fptosi float %i.as to i32               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i32 %.0.i, ptr %i.at, align 8, !tbaa !127
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i32 0, ptr %i.au, align 8, !tbaa !69
  %i.av = load float, ptr %i.ac, align 4, !tbaa !61
  %i.aw = fcmp ult float %i.av, 1.000000e+00
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %stbir__get_filter_pixel_width.exit
  %.not = icmp ne i32 %6, 0
  %i.ax = icmp slt i32 %.0.i, 33
  %or.cond76 = select i1 %.not, i1 true, i1 %i.ax
  br i1 %or.cond76, label %bb.m, label %bb.n

bb.l:                                             ; preds = %stbir__get_filter_pixel_width.exit
  store i32 1, ptr %i.au, align 8, !tbaa !69
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load float, ptr %i.az, align 8, !tbaa !39
  %i.bb = fdiv float 1.000000e+00, %i.ba
  %i.bc = tail call float %i.ay(float noundef %i.bb, ptr noundef %7) #24, !inline_history !1035
  %i.bd = fmul float %i.bc, 2.000000e+00
  br label %stbir__get_coefficient_width.exit

bb.m:                                             ; preds = %bb.k
  store i32 2, ptr %i.au, align 8, !tbaa !69
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !39 ; 2 uses
  %i.bh = tail call float %i.be(float noundef %i.bg, ptr noundef %7) #24, !inline_history !1035
  %i.bi = fmul float %i.bh, 2.000000e+00
  %i.bj = fdiv float %i.bi, %i.bg
  br label %stbir__get_coefficient_width.exit

bb.n:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !39
  %i.bn = tail call float %i.bk(float noundef %i.bm, ptr noundef %7) #24, !inline_history !1035
  %i.bo = fmul float %i.bn, 2.000000e+00
  br label %stbir__get_coefficient_width.exit

stbir__get_coefficient_width.exit:                ; preds = %bb.l, %bb.m, %bb.n
  %.sink22.i = phi float [ %i.bo, %bb.n ], [ %i.bj, %bb.m ], [ %i.bd, %bb.l ]
  %i.bp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink22.i, i64 0 ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bp)
  %i.br = sitofp <4 x i32> %i.bq to <4 x float>   ; 2 uses
  %i.bs = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.br, <4 x float> %i.bp, i8 1)
  %i.bt = bitcast <4 x float> %i.bs to <4 x i32>
  %i.bu = and <4 x i32> %i.bt, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.bv = bitcast <4 x i32> %i.bu to <4 x float>
  %foldExtExtBinop87 = fadd <4 x float> %i.br, %i.bv
  %i.bw = extractelement <4 x float> %foldExtExtBinop87, i64 0
  %i.bx = fptosi float %i.bw to i32               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !68
  %i.bz = icmp eq i32 %4, 2
  %i.ca = load i32, ptr %i.at, align 8, !tbaa !127 ; 4 uses
  br i1 %i.bz, label %bb.o, label %.critedge

bb.o:                                             ; preds = %stbir__get_coefficient_width.exit
  %i.cb = load i32, ptr %5, align 4, !tbaa !57    ; 2 uses
  %i.cc = mul nsw i32 %i.cb, 3                    ; 3 uses
  %i.cd = icmp sgt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.cc, ptr %i.at, align 8, !tbaa !127
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = phi i32 [ %i.cc, %bb.p ], [ %i.ca, %bb.o ] ; 2 uses
  %i.cf = sdiv i32 %i.ce, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 100
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.cb) ; 2 uses
  store i32 %spec.store.select, ptr %i.cg, align 4
  br label %bb.r

.critedge:                                        ; preds = %stbir__get_coefficient_width.exit
  %i.ch = sdiv i32 %i.ca, 2                       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge
  %i.cj = phi i32 [ %i.ce, %bb.q ], [ %i.ca, %.critedge ] ; 2 uses
  %i.ck = phi i32 [ %spec.store.select, %bb.q ], [ %i.ch, %.critedge ]
  %i.cl = load i32, ptr %i.au, align 8, !tbaa !69
  %.not.i = icmp eq i32 %i.cl, 0                  ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !41
  br label %stbir__get_contributors.exit

bb.t:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !42
  %i.cq = shl nsw i32 %i.ck, 1
  %i.cr = add nsw i32 %i.cq, %i.cp
  br label %stbir__get_contributors.exit

stbir__get_contributors.exit:                     ; preds = %bb.s, %bb.t
  %.0.i73 = phi i32 [ %i.cn, %bb.s ], [ %i.cr, %bb.t ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.0.i73, ptr %i.cs, align 8, !tbaa !66
  %i.ct = shl i32 %.0.i73, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !128
  %i.cv = shl i32 %i.bx, 2
  %i.cw = mul i32 %i.cv, %.0.i73
  %i.cx = add i32 %i.cw, 12
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !129
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %stbir__get_contributors.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.cj, ptr %i.da, align 8, !tbaa !73
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !41 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !74
  %i.de = shl i32 %i.dc, 3
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.de, ptr %i.df, align 4, !tbaa !130
  %i.dg = shl i32 %i.cj, 2
  %i.dh = mul i32 %i.dg, %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !131
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %stbir__get_contributors.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__get_conservative_extents(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load float, ptr %i.b, align 8, !tbaa !39 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load float, ptr %i.d, align 8, !tbaa !132 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !42   ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load float, ptr %i.k, align 4, !tbaa !65 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i32, ptr %i.m, align 8, !tbaa !69
  switch i32 %i.n, label %bb.h [
    i32 1, label %stbir__calculate_in_pixel_range.exit
    i32 2, label %stbir__calculate_in_pixel_range.exit127
  ]

stbir__calculate_in_pixel_range.exit:             ; preds = %bb.a
  %i.o = tail call float %i.g(float noundef %i.l, ptr noundef %2) #24
  %i.p = fmul float %i.c, %i.o                    ; 3 uses
  %i.q = fsub float 5.000000e-01, %i.p
  %i.r = fadd float %i.e, %i.q
  %i.s = fmul float %i.l, %i.r
  %i.t = fadd float %i.s, 5.000000e-01
  %i.u = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.t, i64 0 ; 2 uses
  %i.v = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.u)
  %i.w = sitofp <4 x i32> %i.v to <4 x float>     ; 2 uses
  %i.x = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.u, <4 x float> %i.w, i8 1)
  %i.y = bitcast <4 x float> %i.x to <4 x i32>
  %i.z = and <4 x i32> %i.y, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.aa = bitcast <4 x i32> %i.z to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.w, %i.aa
  %i.ab = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ac = fptosi float %i.ab to i32               ; 2 uses
  %i.ad = icmp eq i32 %i.j, 2                     ; 2 uses
  %i.ae = sub nsw i32 0, %i.h
  %spec.select32.i = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.ae)
  %.126.i = select i1 %i.ad, i32 %spec.select32.i, i32 %i.ac
  store i32 %.126.i, ptr %1, align 4, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fadd float %i.ai, 5.000000e-01          ; 2 uses
  %i.ak = fsub float %i.aj, %i.p
  %i.al = fadd float %i.p, %i.aj
  %i.am = fadd float %i.e, %i.ak
  %i.an = fmul float %i.l, %i.am
  %i.ao = fadd float %i.e, %i.al
  %i.ap = fmul float %i.l, %i.ao
  %i.aq = fadd float %i.an, 5.000000e-01
  %i.ar = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.aq, i64 0 ; 2 uses
  %i.as = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ar)
  %i.at = sitofp <4 x i32> %i.as to <4 x float>   ; 2 uses
  %i.au = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ar, <4 x float> %i.at, i8 1)
  %i.av = bitcast <4 x float> %i.au to <4 x i32>
  %i.aw = and <4 x i32> %i.av, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.ax = bitcast <4 x i32> %i.aw to <4 x float>
  %foldExtExtBinop167 = fadd <4 x float> %i.at, %i.ax
  %i.ay = extractelement <4 x float> %foldExtExtBinop167, i64 0
  %i.az = fptosi float %i.ay to i32
  %i.ba = fadd float %i.ap, -5.000000e-01
  %i.bb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ba, i64 0 ; 2 uses
  %i.bc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bb)
  %i.bd = sitofp <4 x i32> %i.bc to <4 x float>   ; 2 uses
  %i.be = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.bb, <4 x float> %i.bd, i8 1)
  %i.bf = bitcast <4 x float> %i.be to <4 x i32>
  %i.bg = and <4 x i32> %i.bf, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.bh = bitcast <4 x i32> %i.bg to <4 x float>
  %foldExtExtBinop169 = fadd <4 x float> %i.bd, %i.bh
  %i.bi = extractelement <4 x float> %foldExtExtBinop169, i64 0
  %i.bj = fptosi float %i.bi to i32
  %spec.select.i116 = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 %i.az) ; 2 uses
  br i1 %i.ad, label %bb.b, label %stbir__calculate_in_pixel_range.exit121

bb.b:                                             ; preds = %stbir__calculate_in_pixel_range.exit
  %i.bk = shl nsw i32 %i.h, 1
  %i.bl = add nsw i32 %i.bk, -1
  %spec.select33.i120 = tail call i32 @llvm.smin.i32(i32 %spec.select.i116, i32 %i.bl)
  br label %stbir__calculate_in_pixel_range.exit121

stbir__calculate_in_pixel_range.exit121:          ; preds = %stbir__calculate_in_pixel_range.exit, %bb.b
  %.1.i118 = phi i32 [ %spec.select.i116, %stbir__calculate_in_pixel_range.exit ], [ %spec.select33.i120, %bb.b ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.1.i118, ptr %i.bm, align 4, !tbaa !48
  br label %thread-pre-split

stbir__calculate_in_pixel_range.exit127:          ; preds = %bb.a
  %i.bn = sub i32 0, %i.h
  %i.bo = tail call float %i.g(float noundef %i.c, ptr noundef %2) #24
  %i.bp = fmul float %i.l, %i.bo                  ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !43 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !41 ; 3 uses
  %i.bu = fadd float %i.e, 0.000000e+00
  %i.bv = fmul float %i.bu, %i.l
  %i.bw = fadd float %i.bv, 5.000000e-01
  %i.bx = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bw, i64 0 ; 2 uses
  %i.by = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bx)
  %i.bz = sitofp <4 x i32> %i.by to <4 x float>   ; 2 uses
  %i.ca = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.bx, <4 x float> %i.bz, i8 1)
  %i.cb = bitcast <4 x float> %i.ca to <4 x i32>
  %i.cc = and <4 x i32> %i.cb, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.cd = bitcast <4 x i32> %i.cc to <4 x float>
  %foldExtExtBinop171 = fadd <4 x float> %i.bz, %i.cd
  %i.ce = extractelement <4 x float> %foldExtExtBinop171, i64 0
  %i.cf = fptosi float %i.ce to i32               ; 2 uses
  %i.cg = icmp eq i32 %i.j, 2                     ; 2 uses
  %spec.select32.i125 = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.bn)
  %.126.i123 = select i1 %i.cg, i32 %spec.select32.i125, i32 %i.cf ; 2 uses
  store i32 %.126.i123, ptr %1, align 4, !tbaa !47
  %i.ch = sitofp i32 %i.bt to float
  %i.ci = fadd float %i.e, %i.ch
  %i.cj = fmul float %i.l, %i.ci                  ; 2 uses
  %i.ck = fadd float %i.cj, 5.000000e-01
  %i.cl = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ck, i64 0 ; 2 uses
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.cl)
  %i.cn = sitofp <4 x i32> %i.cm to <4 x float>   ; 2 uses
  %i.co = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.cl, <4 x float> %i.cn, i8 1)
  %i.cp = bitcast <4 x float> %i.co to <4 x i32>
  %i.cq = and <4 x i32> %i.cp, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.cr = bitcast <4 x i32> %i.cq to <4 x float>
  %foldExtExtBinop173 = fadd <4 x float> %i.cn, %i.cr
  %i.cs = extractelement <4 x float> %foldExtExtBinop173, i64 0
  %i.ct = fptosi float %i.cs to i32
  %i.cu = fadd float %i.cj, -5.000000e-01
  %i.cv = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.cu, i64 0 ; 2 uses
  %i.cw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.cv)
  %i.cx = sitofp <4 x i32> %i.cw to <4 x float>   ; 2 uses
  %i.cy = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.cv, <4 x float> %i.cx, i8 1)
  %i.cz = bitcast <4 x float> %i.cy to <4 x i32>
end_hunk_7
begin_hunk_8_@stbir__alloc_internal_mem_and_build_samplers:bb.a
  %i.ok = getelementptr inbounds nuw i8, ptr %.1308.le, i64 240 ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %.3.i341 = phi ptr [ %i.oj, %bb.be ], [ %i.oy, %bb.bh ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i341) #24, !srcloc !29
  %i.ol = icmp ugt ptr %.3.i341, %i.ok
  br i1 %i.ol, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.om = icmp eq ptr %.3.i341, %i.ns
  br i1 %i.om, label %stbir_simd_memcpy.exit340, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.4.i342 = phi ptr [ %.3.i341, %bb.bf ], [ %i.ok, %bb.bg ] ; 6 uses
  %i.on = getelementptr inbounds i8, ptr %.4.i342, i64 %i.nv ; 4 uses
  %i.oo = load <4 x float>, ptr %i.on, align 1, !tbaa !24
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.oq = load <4 x float>, ptr %i.op, align 1, !tbaa !24
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.os = load <4 x float>, ptr %i.or, align 1, !tbaa !24
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 48
  %i.ou = load <4 x float>, ptr %i.ot, align 1, !tbaa !24
  store <4 x float> %i.oo, ptr %.4.i342, align 1, !tbaa !24
  %i.ov = getelementptr inbounds nuw i8, ptr %.4.i342, i64 16
  store <4 x float> %i.oq, ptr %i.ov, align 1, !tbaa !24
  %i.ow = getelementptr inbounds nuw i8, ptr %.4.i342, i64 32
  store <4 x float> %i.os, ptr %i.ow, align 1, !tbaa !24
  %i.ox = getelementptr inbounds nuw i8, ptr %.4.i342, i64 48
  store <4 x float> %i.ou, ptr %i.ox, align 1, !tbaa !24
  %i.oy = getelementptr inbounds nuw i8, ptr %.4.i342, i64 64
  br label %bb.bf, !llvm.loop !2

stbir_simd_memcpy.exit340:                        ; preds = %bb.bc, %bb.bg
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ey, i64 416
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !135 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ey, i64 468
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !1046 ; 8 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ey, i64 280
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !140 ; 2 uses
  %i.pf = load ptr, ptr %i.lf, align 8, !tbaa !117
  %i.pg = icmp sgt i32 %i.pc, 0
  br i1 %i.pg, label %.lr.ph76.i, label %.loopexit

.lr.ph76.i:                                       ; preds = %stbir_simd_memcpy.exit340
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ey, i64 184
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !83
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ey, i64 252
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !125 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ey, i64 188
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !1049 ; 3 uses
  %.not78.i = icmp eq i32 %i.pe, 0
  %i.pn = mul nsw i32 %i.pk, 3
  %i.po = sub nsw i32 0, %i.pk                    ; 4 uses
  %i.pp = add nsw i32 %i.pk, %i.pi                ; 4 uses
  %i.pq = zext nneg i32 %i.pc to i64              ; 3 uses
  br i1 %.not78.i, label %.lr.ph76.split.us.i.preheader, label %.lr.ph76.split.i

.lr.ph76.split.us.i.preheader:                    ; preds = %.lr.ph76.i
  %xtraiter443 = and i64 %i.pq, 1
  %i.pr = icmp eq i32 %i.pc, 1
  br i1 %i.pr, label %.lr.ph76.split.us.i.epil.preheader, label %.lr.ph76.split.us.i.preheader.new

.lr.ph76.split.us.i.preheader.new:                ; preds = %.lr.ph76.split.us.i.preheader
  %unroll_iter446 = and i64 %i.pq, 2147483646
  br label %.lr.ph76.split.us.i

.lr.ph76.split.us.i:                              ; preds = %.lr.ph76.split.us.i, %.lr.ph76.split.us.i.preheader.new
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %indvars.iv.next84.i.1, %.lr.ph76.split.us.i ] ; 4 uses
  %.05674.us.i = phi i32 [ %i.pm, %.lr.ph76.split.us.i.preheader.new ], [ %i.qj, %.lr.ph76.split.us.i ] ; 2 uses
  %.05773.us.i = phi i32 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %i.qh, %.lr.ph76.split.us.i ] ; 2 uses
  %niter447 = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %niter447.next.1, %.lr.ph76.split.us.i ]
  %i.ps = getelementptr inbounds nuw [120 x i8], ptr %i.pa, i64 %indvars.iv83.i ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 20
  store i32 %.05773.us.i, ptr %i.pt, align 4, !tbaa !119
  %i.pu = trunc i64 %indvars.iv83.i to i32
  %i.pv = sub i32 %i.pc, %i.pu
  %i.pw = sdiv i32 %.05674.us.i, %i.pv            ; 2 uses
  %i.px = add nsw i32 %i.pw, %.05773.us.i         ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  store i32 %i.px, ptr %i.py, align 8, !tbaa !120
  %i.pz = sub nsw i32 %.05674.us.i, %i.pw         ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 28
  store i32 %i.po, ptr %i.qa, align 4, !tbaa !123
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  store i32 %i.pp, ptr %i.qb, align 8, !tbaa !124
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %i.qc = getelementptr inbounds nuw [120 x i8], ptr %i.pa, i64 %indvars.iv.next84.i ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 20
  store i32 %i.px, ptr %i.qd, align 4, !tbaa !119
  %i.qe = trunc i64 %indvars.iv.next84.i to i32
  %i.qf = sub i32 %i.pc, %i.qe
  %i.qg = sdiv i32 %i.pz, %i.qf                   ; 2 uses
  %i.qh = add nsw i32 %i.qg, %i.px                ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  store i32 %i.qh, ptr %i.qi, align 8, !tbaa !120
  %i.qj = sub nsw i32 %i.pz, %i.qg                ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qc, i64 28
  store i32 %i.po, ptr %i.qk, align 4, !tbaa !123
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  store i32 %i.pp, ptr %i.ql, align 8, !tbaa !124
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %niter447.next.1 = add i64 %niter447, 2         ; 2 uses
  %niter447.ncmp.1 = icmp eq i64 %niter447.next.1, %unroll_iter446
  br i1 %niter447.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76.split.us.i, !llvm.loop !12

.lr.ph76.split.i:                                 ; preds = %.lr.ph76.i, %bb.bk
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bk ], [ 0, %.lr.ph76.i ] ; 4 uses
  %.05674.i = phi i32 [ %i.rh, %bb.bk ], [ %i.pm, %.lr.ph76.i ] ; 2 uses
  %.05773.i = phi i32 [ %i.qr, %bb.bk ], [ 0, %.lr.ph76.i ] ; 4 uses
  %i.qm = getelementptr inbounds nuw [120 x i8], ptr %i.pa, i64 %indvars.iv.i ; 5 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 20 ; 2 uses
  store i32 %.05773.i, ptr %i.qn, align 4, !tbaa !119
  %i.qo = trunc i64 %indvars.iv.i to i32
  %i.qp = sub i32 %i.pc, %i.qo
  %i.qq = sdiv i32 %.05674.i, %i.qp               ; 3 uses
  %i.qr = add nsw i32 %i.qq, %.05773.i            ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  store i32 %i.qr, ptr %i.qs, align 8, !tbaa !120
  %.not79.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not79.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph76.split.i
  %i.qt = sext i32 %.05773.i to i64
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.qt ; 2 uses
  %spec.select.i344 = tail call i32 @llvm.smin.i32(i32 %i.qq, i32 %i.pn) ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !47 ; 2 uses
  %.not65.i = icmp slt i32 %spec.select.i344, 1
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i345

.lr.ph.i345:                                      ; preds = %bb.bi, %bb.bj
  %i.qw = phi i32 [ %i.rc, %bb.bj ], [ %i.qv, %bb.bi ] ; 2 uses
  %.069.i = phi ptr [ %i.qx, %bb.bj ], [ %i.qu, %bb.bi ]
  %.05268.i = phi i32 [ %spec.select64.i, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.05367.i = phi i32 [ %i.rb, %bb.bj ], [ 1, %bb.bi ] ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !47 ; 3 uses
  %i.qz = icmp sgt i32 %i.qy, %i.qv
  br i1 %i.qz, label %._crit_edge.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i345
  %i.ra = icmp slt i32 %i.qy, %i.qw
  %spec.select64.i = select i1 %i.ra, i32 %.05367.i, i32 %.05268.i ; 2 uses
  %i.rb = add nuw i32 %.05367.i, 1
  %exitcond.not.i346 = icmp eq i32 %.05367.i, %spec.select.i344
  %i.rc = tail call i32 @llvm.smin.i32(i32 %i.qy, i32 %i.qw)
  br i1 %exitcond.not.i346, label %._crit_edge.i, label %.lr.ph.i345, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.bj, %.lr.ph.i345, %bb.bi
  %.052.lcssa.i = phi i32 [ 0, %bb.bi ], [ %spec.select64.i, %bb.bj ], [ %.05268.i, %.lr.ph.i345 ] ; 2 uses
  %i.rd = getelementptr i8, ptr %i.qm, i64 -96    ; 2 uses
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !120
  %i.rf = add nsw i32 %i.re, %.052.lcssa.i
  store i32 %i.rf, ptr %i.rd, align 8, !tbaa !120
  %i.rg = add nsw i32 %.052.lcssa.i, %.05773.i
  store i32 %i.rg, ptr %i.qn, align 4, !tbaa !119
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i, %.lr.ph76.split.i
  %i.rh = sub nsw i32 %.05674.i, %i.qq
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qm, i64 28
  store i32 %i.po, ptr %i.ri, align 4, !tbaa !123
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  store i32 %i.pp, ptr %i.rj, align 8, !tbaa !124
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, %i.pq
  br i1 %exitcond82.not.i, label %.loopexit, label %.lr.ph76.split.i, !llvm.loop !12

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph76.split.us.i
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.loopexit, label %.lr.ph76.split.us.i.epil.preheader

.lr.ph76.split.us.i.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.split.us.i.preheader
  %indvars.iv83.i.epil.init = phi i64 [ 0, %.lr.ph76.split.us.i.preheader ], [ %indvars.iv.next84.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.i.epil.init = phi i32 [ %i.pm, %.lr.ph76.split.us.i.preheader ], [ %i.qj, %.loopexit.loopexit.unr-lcssa ]
  %.05773.us.i.epil.init = phi i32 [ 0, %.lr.ph76.split.us.i.preheader ], [ %i.qh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod445 = trunc i32 %i.pc to i1
  tail call void @llvm.assume(i1 %lcmp.mod445)
  %i.rk = getelementptr inbounds nuw [120 x i8], ptr %i.pa, i64 %indvars.iv83.i.epil.init ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 20
  store i32 %.05773.us.i.epil.init, ptr %i.rl, align 4, !tbaa !119
  %i.rm = trunc i64 %indvars.iv83.i.epil.init to i32
  %i.rn = sub i32 %i.pc, %i.rm
  %i.ro = sdiv i32 %.05674.us.i.epil.init, %i.rn
  %i.rp = add nsw i32 %i.ro, %.05773.us.i.epil.init
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  store i32 %i.rp, ptr %i.rq, align 8, !tbaa !120
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rk, i64 28
  store i32 %i.po, ptr %i.rr, align 4, !tbaa !123
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  store i32 %i.pp, ptr %i.rs, align 8, !tbaa !124
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bk, %.lr.ph76.split.us.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %stbir_simd_memcpy.exit340
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ey, i64 276
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !1050 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ey, i64 332
  %.not334 = icmp eq i32 %i.pe, 0
  %i.rw = tail call i32 @llvm.smin.i32(i32 %i.ru, i32 %.0.lcssa.i)
  %spec.store.select = select i1 %.not334, i32 %i.rw, i32 %i.ru
  store i32 %spec.store.select, ptr %i.rv, align 4
  br label %.thread361

.thread359:                                       ; preds = %bb.at
  %i.rx = add i64 %.3294.in, 15                   ; 2 uses
  %i.ry = tail call noalias ptr @malloc(i64 noundef %i.rx) #25 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %.thread361, label %bb.q

.thread361:                                       ; preds = %.thread359, %.loopexit, %bb.h
  %.2311 = phi ptr [ null, %bb.h ], [ %.1308.le, %.loopexit ], [ null, %.thread359 ]
  ret ptr %.2311
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define noundef i32 @stbir__perform_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load i32, ptr %i.e, align 8, !tbaa !140
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @stbir__vertical_gather_loop(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @stbir__vertical_scatter_loop(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbir__update_info_from_resize(ptr nofree noundef captures(none) initializes((304, 328), (336, 368), (424, 432), (456, 464)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !144  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.f, ptr %i.g, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !146  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !147  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !103
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1051
  %i.s = icmp eq i32 %i.r, 6
  %i.t = add i32 %i.b, -1
  %or.cond = icmp ult i32 %i.t, 2
  %or.cond111 = select i1 %i.s, i1 %or.cond, i1 false
  %i.u = add i32 %i.d, -1
  %or.cond3 = icmp ult i32 %i.u, 2
  %or.cond112 = select i1 %or.cond111, i1 %or.cond3, i1 false ; 2 uses
  %spec.select = select i1 %or.cond112, i32 0, i32 %i.b
  %spec.select115 = select i1 %or.cond112, i32 0, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.097 = phi i32 [ %i.b, %bb.a ], [ %spec.select, %bb.b ] ; 8 uses
  %.096 = phi i32 [ %i.d, %bb.a ], [ %spec.select115, %bb.b ] ; 10 uses
  %i.v = icmp eq i32 %i.i, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.x = load i32, ptr %i.w, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !91
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = zext i32 %.097 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !24
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.aa, %i.ae
  store i32 %i.af, ptr %i.j, align 8, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = icmp eq i32 %i.l, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !80 ; 2 uses
  br i1 %i.ag, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre118 = zext i32 %.096 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !93
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = zext i32 %.096 to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !24
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.al, %i.ap
  store i32 %i.aq, ptr %i.m, align 4, !tbaa !114
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi = phi i64 [ %.pre118, %._crit_edge ], [ %i.am, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !148
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.au = load i32, ptr %i.at, align 8, !tbaa !137
  %i.av = sext i32 %i.au to i64
  %i.aw = sext i32 %i.l to i64
  %i.ax = mul nsw i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !136
  %i.bb = mul nsw i32 %i.ai, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %.pre-phi
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul nsw i32 %i.bb, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.ay, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !113
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !149
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !87
  %i.bm = load ptr, ptr %1, align 8, !tbaa !150
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !88
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !151
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !95
  %i.br = icmp eq i32 %.097, 0
  %i.bs = icmp eq i32 %.097, 3                    ; 3 uses
  switch i32 %.097, label %bb.n [
    i32 3, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !90
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !94
  %.not107 = icmp eq ptr %i.bw, null
  br i1 %.not107, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = icmp eq i32 %.096, 0
  %or.cond7 = select i1 %i.br, i1 %i.bx, i1 false
  %i.by = icmp eq i32 %.096, 3
  %or.cond9 = select i1 %i.bs, i1 %i.by, i1 false
  %or.cond113 = select i1 %or.cond7, i1 true, i1 %or.cond9
  %spec.select116 = zext i1 %or.cond113 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.095 = phi i64 [ 0, %bb.h ], [ 0, %bb.i ], [ %spec.select116, %bb.j ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !138 ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 5
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = add i32 %i.ca, -5
  %i.cd = urem i32 %i.cc, 6
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr @__const.stbir__update_info_from_resize.decode_alphas_scaled_or_not, i64 %i.ce
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink = phi ptr [ %i.cf, %bb.l ], [ @__const.stbir__update_info_from_resize.decode_simple_scaled_or_not, %bb.k ]
  %i.cg = zext i1 %i.bs to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sink, i64 %i.cg
  %.099.in = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.095
  br label %bb.q
end_hunk_8
