Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@stbir__decode_uint16_linear_scaled_AR:bb.a
  store <4 x float> %i.q, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.061, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.060, i64 16
  %.not69 = icmp ugt ptr %i.s, %i.f
  %i.u = icmp ne ptr %i.s, %i.b                   ; 2 uses
  %i.v = and i1 %.not69, %i.u                     ; 2 uses
  %.162 = select i1 %i.v, ptr %i.f, ptr %i.s
  %.1 = select i1 %i.v, ptr %i.d, ptr %i.t
  br i1 %i.u, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph.rtcont, %.preheader73
  %.pn.lcssa = phi ptr [ %0, %.preheader73 ], [ %.26378, %.lr.ph.rtcont ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader73 ], [ %.rtmerge, %.lr.ph.rtcont ]
  %i.w = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.w, label %.lr.ph82, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.rtcont
  %.26378 = phi ptr [ %.263.rtmerge, %.lr.ph.rtcont ], [ %.26374, %.lr.ph.preheader ] ; 5 uses
  %.277 = phi ptr [ %.rtmerge, %.lr.ph.rtcont ], [ %2, %.lr.ph.preheader ] ; 7 uses
  %.pn76 = phi ptr [ %.26378, %.lr.ph.rtcont ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.27787 = ptrtoaddr ptr %.277 to i64            ; 2 uses
  %i.x = add i64 %.27787, 8
  %.pn7688 = ptrtoaddr ptr %.pn76 to i64          ; 2 uses
  %i.y = add i64 %.pn7688, 16
  %rt.bound0 = icmp ugt i64 %i.x, %.pn7688
  %rt.bound1 = icmp ugt i64 %i.y, %.27787
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph.rtscalar, label %.lr.ph.rtvec, !prof !24

.lr.ph82:                                         ; preds = %.preheader, %.lr.ph82
  %.381 = phi ptr [ %i.ai, %.lr.ph82 ], [ %.2.lcssa, %.preheader ] ; 3 uses
  %.36480 = phi ptr [ %i.ah, %.lr.ph82 ], [ %.pn.lcssa, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.36480) #52, !srcloc !355
  %i.z = getelementptr inbounds nuw i8, ptr %.381, i64 2
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = uitofp i16 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x37800080
  store float %i.ac, ptr %.36480, align 4
  %i.ad = load i16, ptr %.381, align 2
  %i.ae = uitofp i16 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x37800080
  %i.ag = getelementptr inbounds nuw i8, ptr %.36480, i64 4
  store float %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.36480, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.381, i64 4
  %i.aj = icmp ult ptr %i.ah, %i.b
  br i1 %i.aj, label %.lr.ph82, label %.loopexit, !llvm.loop !352

.loopexit:                                        ; preds = %.lr.ph82, %bb.c, %.preheader
  ret ptr %i.b

.lr.ph.rtvec:                                     ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26378) #52, !srcloc !356
  %i.ak = load <4 x i16>, ptr %.277, align 2
  %i.al = uitofp <4 x i16> %i.ak to <4 x float>
  %i.am = fmul nnan <4 x float> %i.al, splat (float f0x37800080)
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.an, ptr %.pn76, align 4
  br label %.lr.ph.rtcont

.lr.ph.rtscalar:                                  ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26378) #52, !srcloc !356
  %i.ao = getelementptr inbounds nuw i8, ptr %.277, i64 2
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = uitofp i16 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x37800080
  store float %i.ar, ptr %.pn76, align 4
  %i.as = load i16, ptr %.277, align 2
  %i.at = uitofp i16 %i.as to float
  %i.au = fmul nnan float %i.at, f0x37800080
  %i.av = getelementptr inbounds nuw i8, ptr %.pn76, i64 4
  store float %i.au, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.277, i64 6
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = uitofp i16 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x37800080
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn76, i64 8
  store float %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.277, i64 4
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = uitofp i16 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x37800080
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn76, i64 12
  store float %i.be, ptr %i.bf, align 4
  br label %.lr.ph.rtcont

.lr.ph.rtcont:                                    ; preds = %.lr.ph.rtscalar, %.lr.ph.rtvec
  %.263.rtmerge = getelementptr inbounds nuw i8, ptr %.26378, i64 16 ; 2 uses
  %.not.rtmerge = icmp ugt ptr %.263.rtmerge, %i.b
  %.rtmerge = getelementptr inbounds nuw i8, ptr %.277, i64 8 ; 2 uses
  br i1 %.not.rtmerge, label %.preheader, label %.lr.ph, !llvm.loop !353
}

; Function Attrs: nounwind uwtable
define internal ptr @stbir__decode_uint16_linear_AR(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 7
  br i1 %i.e, label %bb.b, label %.preheader71

.preheader71:                                     ; preds = %bb.a
  %.not73 = icmp slt i32 %1, 4
  br i1 %.not73, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader71
  %.26172 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.059 = phi ptr [ %0, %bb.b ], [ %.160, %bb.c ] ; 4 uses
  %.058 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.059) #52, !srcloc !359
  %i.g = load <8 x i16>, ptr %.058, align 1       ; 2 uses
  %i.h = shufflevector <8 x i16> %i.g, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.i = shufflevector <8 x i16> %i.g, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.j = bitcast <8 x i16> %i.h to <4 x i32>
  %i.k = bitcast <8 x i16> %i.i to <4 x i32>
  %i.l = uitofp nneg <4 x i32> %i.j to <4 x float>
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.n = uitofp nneg <4 x i32> %i.k to <4 x float>
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.m, ptr %.059, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.059, i64 16
  store <4 x float> %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.059, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %.not67 = icmp ugt ptr %i.q, %i.f
  %i.s = icmp ne ptr %i.q, %i.b                   ; 2 uses
  %i.t = and i1 %.not67, %i.s                     ; 2 uses
  %.160 = select i1 %i.t, ptr %i.f, ptr %i.q
  %.1 = select i1 %i.t, ptr %i.d, ptr %i.r
  br i1 %i.s, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader71
  %.pn.lcssa = phi ptr [ %0, %.preheader71 ], [ %.26176, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader71 ], [ %i.aj, %.lr.ph ]
  %i.u = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.u, label %.lr.ph80, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.26176 = phi ptr [ %.261, %.lr.ph ], [ %.26172, %.lr.ph.preheader ] ; 4 uses
  %.275 = phi ptr [ %i.aj, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn74 = phi ptr [ %.26176, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.26176) #52, !srcloc !360
  %i.v = getelementptr inbounds nuw i8, ptr %.275, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = uitofp i16 %i.w to float
  store float %i.x, ptr %.pn74, align 4
  %i.y = load i16, ptr %.275, align 2
  %i.z = uitofp i16 %i.y to float
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn74, i64 4
  store float %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.275, i64 6
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = uitofp i16 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn74, i64 8
  store float %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.275, i64 4
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = uitofp i16 %i.ag to float
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn74, i64 12
  store float %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.275, i64 8 ; 2 uses
  %.261 = getelementptr inbounds nuw i8, ptr %.26176, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.261, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !357

.lr.ph80:                                         ; preds = %.preheader, %.lr.ph80
  %.379 = phi ptr [ %i.ar, %.lr.ph80 ], [ %.2.lcssa, %.preheader ] ; 3 uses
  %.36278 = phi ptr [ %i.aq, %.lr.ph80 ], [ %.pn.lcssa, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.36278) #52, !srcloc !361
  %i.ak = getelementptr inbounds nuw i8, ptr %.379, i64 2
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = uitofp i16 %i.al to float
  store float %i.am, ptr %.36278, align 4
  %i.an = load i16, ptr %.379, align 2
  %i.ao = uitofp i16 %i.an to float
  %i.ap = getelementptr inbounds nuw i8, ptr %.36278, i64 4
  store float %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.36278, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.379, i64 4
  %i.as = icmp ult ptr %i.aq, %i.b
  br i1 %i.as, label %.lr.ph80, label %.loopexit, !llvm.loop !358

.loopexit:                                        ; preds = %.lr.ph80, %bb.c, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_srgb(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
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
  %.0141 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0141) #52, !srcloc !364
  %i.h = load <8 x float>, ptr %.0141, align 1    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0141, i64 32
  %i.j = load <8 x float>, ptr %i.i, align 1      ; 2 uses
  %i.k = shufflevector <8 x float> %i.h, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.l = shufflevector <8 x float> %i.j, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.m = shufflevector <8 x float> %i.h, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.n = shufflevector <8 x float> %i.j, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.p = shufflevector <4 x float> %i.l, <4 x float> %i.k, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.q = shufflevector <4 x float> %i.m, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.r = shufflevector <4 x float> %i.n, <4 x float> %i.m, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.s = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.t = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.s, <4 x float> splat (float f0x3F7FFFFF))
  %i.u = bitcast <4 x float> %i.t to <4 x i32>    ; 2 uses
  %i.v = lshr <4 x i32> %i.u, splat (i32 20)      ; 4 uses
  %i.w = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> splat (float f0x39000000))
  %i.x = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.w, <4 x float> splat (float f0x3F7FFFFF))
  %i.y = bitcast <4 x float> %i.x to <4 x i32>    ; 2 uses
  %i.z = lshr <4 x i32> %i.y, splat (i32 20)      ; 4 uses
  %i.aa = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.q, <4 x float> splat (float f0x39000000))
  %i.ab = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aa, <4 x float> splat (float f0x3F7FFFFF))
  %i.ac = bitcast <4 x float> %i.ab to <4 x i32>  ; 2 uses
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 20)    ; 4 uses
  %i.ae = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.r, <4 x float> splat (float f0x39000000))
  %i.af = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> splat (float f0x3F7FFFFF))
  %i.ag = bitcast <4 x float> %i.af to <4 x i32>  ; 2 uses
  %i.ah = lshr <4 x i32> %i.ag, splat (i32 20)    ; 4 uses
  %.sroa.033.0.vec.extract = extractelement <4 x i32> %i.v, i64 0
  %i.ai = zext nneg i32 %.sroa.033.0.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.v, i64 1
  %i.al = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.an, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.v, i64 2
  %i.ao = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.aq, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.v, i64 3
  %i.ar = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.at, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.z, i64 0
  %i.au = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.z, i64 1
  %i.ax = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.az, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.z, i64 2
  %i.ba = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.bc, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.z, i64 3
  %i.bd = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bf, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.ad, i64 0
  %i.bg = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.ad, i64 1
  %i.bj = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bl, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.ad, i64 2
  %i.bm = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bo, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.ad, i64 3
  %i.bp = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.br, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ah, i64 0
  %i.bs = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ah, i64 1
  %i.bv = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bx, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ah, i64 2
  %i.by = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.ca, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ah, i64 3
  %i.cb = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.cd, i64 3
  %i.ce = lshr <4 x i32> %i.u, splat (i32 12)
  %i.cf = bitcast <4 x i32> %.sroa.033.12.vec.insert to <8 x i16>
  %i.cg = bitcast <4 x i32> %i.ce to <8 x i16>
  %i.ch = and <8 x i16> %i.cg, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.ci = or disjoint <8 x i16> %i.ch, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> %i.ci)
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cl = lshr <4 x i32> %i.y, splat (i32 12)
  %i.cm = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.cn = bitcast <4 x i32> %i.cl to <8 x i16>
  %i.co = and <8 x i16> %i.cn, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cp = or disjoint <8 x i16> %i.co, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cm, <8 x i16> %i.cp)
  %i.cr = lshr <4 x i32> %i.cq, splat (i32 16)
  %i.cs = lshr <4 x i32> %i.ac, splat (i32 12)
  %i.ct = bitcast <4 x i32> %.sroa.019.12.vec.insert to <8 x i16>
  %i.cu = bitcast <4 x i32> %i.cs to <8 x i16>
  %i.cv = and <8 x i16> %i.cu, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.cw = or disjoint <8 x i16> %i.cv, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ct, <8 x i16> %i.cw)
  %i.cy = lshr <4 x i32> %i.cx, splat (i32 16)
  %i.cz = lshr <4 x i32> %i.ag, splat (i32 12)
  %i.da = bitcast <4 x i32> %.sroa.0.12.vec.insert to <8 x i16>
  %i.db = bitcast <4 x i32> %i.cz to <8 x i16>
  %i.dc = and <8 x i16> %i.db, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.dd = or disjoint <8 x i16> %i.dc, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.de = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.da, <8 x i16> %i.dd)
  %i.df = lshr <4 x i32> %i.de, splat (i32 16)
  %i.dg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ck, <4 x i32> %i.cr) ; 2 uses
  %i.dh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cy, <4 x i32> %i.df) ; 2 uses
  %i.di = shufflevector <8 x i16> %i.dg, <8 x i16> %i.dh, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dj = shufflevector <8 x i16> %i.dg, <8 x i16> %i.dh, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.di, <8 x i16> %i.dj)
  store <16 x i8> %i.dk, ptr %.0142, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.0141, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0142, i64 16 ; 3 uses
  %.not150 = icmp ugt ptr %i.dm, %i.g
  %i.dn = icmp ne ptr %i.dm, %i.c                 ; 2 uses
  %i.do = and i1 %.not150, %i.dn                  ; 2 uses
  %.1143 = select i1 %i.do, ptr %i.g, ptr %i.dm
  %.1 = select i1 %i.do, ptr %i.f, ptr %i.dl
  br i1 %i.dn, label %bb.c, label %.loopexit

.preheader.loopexit:                              ; preds = %stbir__linear_to_srgb_uchar.exit158
  %.pre = ptrtoaddr ptr %.2144167 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader162
  %.pn.lcssa173.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.a, %.preheader162 ]
  %.pn.lcssa = phi ptr [ %.2144167, %.preheader.loopexit ], [ %0, %.preheader162 ] ; 3 uses
  %.2.lcssa = phi ptr [ %i.gs, %.preheader.loopexit ], [ %2, %.preheader162 ]
  %i.dp = icmp ult ptr %.pn.lcssa, %i.c
  br i1 %i.dp, label %.lr.ph171.preheader, label %.loopexit

.lr.ph171.preheader:                              ; preds = %.preheader
  %i.dq = add i64 %i.a, %i.b
  %i.dr = sub i64 %i.dq, %.pn.lcssa173.pre-phi
  %scevgep = getelementptr i8, ptr %.pn.lcssa, i64 %i.dr
  br label %.lr.ph171

.lr.ph:                                           ; preds = %.lr.ph.preheader, %stbir__linear_to_srgb_uchar.exit158
  %.2144167 = phi ptr [ %.2144, %stbir__linear_to_srgb_uchar.exit158 ], [ %.2144163, %.lr.ph.preheader ] ; 4 uses
  %.2166 = phi ptr [ %i.gs, %stbir__linear_to_srgb_uchar.exit158 ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.pn165 = phi ptr [ %.2144167, %stbir__linear_to_srgb_uchar.exit158 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2166) #52, !srcloc !365
  %i.ds = load float, ptr %.2166, align 4         ; 3 uses
  %i.dt = fcmp ogt float %i.ds, f0x39000000
  br i1 %i.dt, label %bb.d, label %stbir__linear_to_srgb_uchar.exit

bb.d:                                             ; preds = %.lr.ph
  %i.du = fcmp ogt float %i.ds, f0x3F7FFFFF
  br i1 %i.du, label %stbir__linear_to_srgb_uchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dv = bitcast float %i.ds to i32              ; 2 uses
  %i.dw = add nsw i32 %i.dv, -956301312
  %i.dx = lshr i32 %i.dw, 20
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = lshr i32 %i.ea, 7
  %i.ec = and i32 %i.eb, 16776704
  %i.ed = and i32 %i.ea, 65535
  %i.ee = lshr i32 %i.dv, 12
  %i.ef = and i32 %i.ee, 255
  %i.eg = mul nuw nsw i32 %i.ed, %i.ef
  %i.eh = add nuw nsw i32 %i.ec, %i.eg
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = trunc i32 %i.ei to i8
  br label %stbir__linear_to_srgb_uchar.exit

stbir__linear_to_srgb_uchar.exit:                 ; preds = %.lr.ph, %bb.d, %bb.e
  %.0.i = phi i8 [ 0, %.lr.ph ], [ %i.ej, %bb.e ], [ -1, %bb.d ]
  store i8 %.0.i, ptr %.pn165, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.2166, i64 4
  %i.el = load float, ptr %i.ek, align 4          ; 3 uses
  %i.em = fcmp ogt float %i.el, f0x39000000
  br i1 %i.em, label %bb.f, label %stbir__linear_to_srgb_uchar.exit154

bb.f:                                             ; preds = %stbir__linear_to_srgb_uchar.exit
  %i.en = fcmp ogt float %i.el, f0x3F7FFFFF
  br i1 %i.en, label %stbir__linear_to_srgb_uchar.exit154, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eo = bitcast float %i.el to i32              ; 2 uses
  %i.ep = add nsw i32 %i.eo, -956301312
  %i.eq = lshr i32 %i.ep, 20
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4            ; 2 uses
  %i.eu = lshr i32 %i.et, 7
  %i.ev = and i32 %i.eu, 16776704
  %i.ew = and i32 %i.et, 65535
  %i.ex = lshr i32 %i.eo, 12
  %i.ey = and i32 %i.ex, 255
  %i.ez = mul nuw nsw i32 %i.ew, %i.ey
  %i.fa = add nuw nsw i32 %i.ev, %i.ez
  %i.fb = lshr i32 %i.fa, 16
  %i.fc = trunc i32 %i.fb to i8
  br label %stbir__linear_to_srgb_uchar.exit154

stbir__linear_to_srgb_uchar.exit154:              ; preds = %stbir__linear_to_srgb_uchar.exit, %bb.f, %bb.g
  %.0.i153 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit ], [ %i.fc, %bb.g ], [ -1, %bb.f ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn165, i64 1
  store i8 %.0.i153, ptr %i.fd, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.2166, i64 8
  %i.ff = load float, ptr %i.fe, align 4          ; 3 uses
  %i.fg = fcmp ogt float %i.ff, f0x39000000
  br i1 %i.fg, label %bb.h, label %stbir__linear_to_srgb_uchar.exit156

bb.h:                                             ; preds = %stbir__linear_to_srgb_uchar.exit154
  %i.fh = fcmp ogt float %i.ff, f0x3F7FFFFF
  br i1 %i.fh, label %stbir__linear_to_srgb_uchar.exit156, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fi = bitcast float %i.ff to i32              ; 2 uses
  %i.fj = add nsw i32 %i.fi, -956301312
  %i.fk = lshr i32 %i.fj, 20
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4            ; 2 uses
  %i.fo = lshr i32 %i.fn, 7
  %i.fp = and i32 %i.fo, 16776704
  %i.fq = and i32 %i.fn, 65535
  %i.fr = lshr i32 %i.fi, 12
  %i.fs = and i32 %i.fr, 255
  %i.ft = mul nuw nsw i32 %i.fq, %i.fs
  %i.fu = add nuw nsw i32 %i.fp, %i.ft
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = trunc i32 %i.fv to i8
  br label %stbir__linear_to_srgb_uchar.exit156

stbir__linear_to_srgb_uchar.exit156:              ; preds = %stbir__linear_to_srgb_uchar.exit154, %bb.h, %bb.i
  %.0.i155 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit154 ], [ %i.fw, %bb.i ], [ -1, %bb.h ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn165, i64 2
  store i8 %.0.i155, ptr %i.fx, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.2166, i64 12
  %i.fz = load float, ptr %i.fy, align 4          ; 3 uses
  %i.ga = fcmp ogt float %i.fz, f0x39000000
  br i1 %i.ga, label %bb.j, label %stbir__linear_to_srgb_uchar.exit158

bb.j:                                             ; preds = %stbir__linear_to_srgb_uchar.exit156
  %i.gb = fcmp ogt float %i.fz, f0x3F7FFFFF
  br i1 %i.gb, label %stbir__linear_to_srgb_uchar.exit158, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gc = bitcast float %i.fz to i32              ; 2 uses
  %i.gd = add nsw i32 %i.gc, -956301312
  %i.ge = lshr i32 %i.gd, 20
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %i.gi = lshr i32 %i.gh, 7
  %i.gj = and i32 %i.gi, 16776704
  %i.gk = and i32 %i.gh, 65535
  %i.gl = lshr i32 %i.gc, 12
  %i.gm = and i32 %i.gl, 255
  %i.gn = mul nuw nsw i32 %i.gk, %i.gm
  %i.go = add nuw nsw i32 %i.gj, %i.gn
  %i.gp = lshr i32 %i.go, 16
  %i.gq = trunc i32 %i.gp to i8
  br label %stbir__linear_to_srgb_uchar.exit158

stbir__linear_to_srgb_uchar.exit158:              ; preds = %stbir__linear_to_srgb_uchar.exit156, %bb.j, %bb.k
  %.0.i157 = phi i8 [ 0, %stbir__linear_to_srgb_uchar.exit156 ], [ %i.gq, %bb.k ], [ -1, %bb.j ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.pn165, i64 3
  store i8 %.0.i157, ptr %i.gr, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.2166, i64 16 ; 2 uses
  %.2144 = getelementptr inbounds nuw i8, ptr %.2144167, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.2144, %i.c
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !362

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %stbir__linear_to_srgb_uchar.exit160
  %.3170 = phi ptr [ %i.hm, %stbir__linear_to_srgb_uchar.exit160 ], [ %.2.lcssa, %.lr.ph171.preheader ] ; 3 uses
  %.3145169 = phi ptr [ %i.hl, %stbir__linear_to_srgb_uchar.exit160 ], [ %.pn.lcssa, %.lr.ph171.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3170) #52, !srcloc !366
  %i.gt = load float, ptr %.3170, align 4         ; 3 uses
  %i.gu = fcmp ogt float %i.gt, f0x39000000
  br i1 %i.gu, label %bb.l, label %stbir__linear_to_srgb_uchar.exit160

bb.l:                                             ; preds = %.lr.ph171
  %i.gv = fcmp ogt float %i.gt, f0x3F7FFFFF
  br i1 %i.gv, label %stbir__linear_to_srgb_uchar.exit160, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gw = bitcast float %i.gt to i32              ; 2 uses
  %i.gx = add nsw i32 %i.gw, -956301312
  %i.gy = lshr i32 %i.gx, 20
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr @fp32_to_srgb8_tab4, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4            ; 2 uses
  %i.hc = lshr i32 %i.hb, 7
  %i.hd = and i32 %i.hc, 16776704
  %i.he = and i32 %i.hb, 65535
  %i.hf = lshr i32 %i.gw, 12
  %i.hg = and i32 %i.hf, 255
  %i.hh = mul nuw nsw i32 %i.he, %i.hg
  %i.hi = add nuw nsw i32 %i.hd, %i.hh
  %i.hj = lshr i32 %i.hi, 16
  %i.hk = trunc i32 %i.hj to i8
  br label %stbir__linear_to_srgb_uchar.exit160

stbir__linear_to_srgb_uchar.exit160:              ; preds = %.lr.ph171, %bb.l, %bb.m
  %.0.i159 = phi i8 [ 0, %.lr.ph171 ], [ %i.hk, %bb.m ], [ -1, %bb.l ]
  store i8 %.0.i159, ptr %.3145169, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.3145169, i64 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.3170, i64 4
  %exitcond.not = icmp eq ptr %i.hl, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph171, !llvm.loop !363

.loopexit:                                        ; preds = %stbir__linear_to_srgb_uchar.exit160, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_float_linear(ptr noundef %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %.not = icmp eq ptr %0, %2
  br i1 %.not, label %stbir_simd_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 2                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 5 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ult i64 %i.b, 64
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i64 %i.b, 16
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %stbir_simd_memcpy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.0.i = phi ptr [ %i.k, %.preheader.i ], [ %0, %bb.d ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0.i) #52, !srcloc !18
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 %i.f
  %i.j = load i8, ptr %i.i, align 1
  store i8 %i.j, ptr %.0.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.c
  br i1 %i.l, label %.preheader.i, label %stbir_simd_memcpy.exit, !llvm.loop !3

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.n = load <4 x float>, ptr %i.m, align 1
  store <4 x float> %i.n, ptr %0, align 1
  %i.o = and i64 %i.e, -16
  %i.p = add i64 %i.o, 16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.h ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1.i) #52, !srcloc !20
  %i.s = icmp ugt ptr %.1.i, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %.1.i, %i.c
  br i1 %i.t, label %stbir_simd_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi ptr [ %.1.i, %bb.f ], [ %i.r, %bb.g ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.2.i, i64 %i.f
  %i.v = load <4 x float>, ptr %i.u, align 1
  store <4 x float> %i.v, ptr %.2.i, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  br label %bb.f, !llvm.loop !4

bb.i:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.f ; 4 uses
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load <4 x float>, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load <4 x float>, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 1
  store <4 x float> %i.y, ptr %0, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.aa, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %i.ac, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.ae, ptr %i.ah, align 1
  %i.ai = and i64 %i.e, -64
  %i.aj = add i64 %i.ai, 64
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds i8, ptr %i.c, i64 -64 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.3.i = phi ptr [ %i.ak, %bb.i ], [ %i.az, %bb.l ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i) #52, !srcloc !21
  %i.am = icmp ugt ptr %.3.i, %i.al
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = icmp eq ptr %.3.i, %i.c
  br i1 %i.an, label %stbir_simd_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4.i = phi ptr [ %.3.i, %bb.j ], [ %i.al, %bb.k ] ; 6 uses
  %i.ao = getelementptr inbounds i8, ptr %.4.i, i64 %i.f ; 4 uses
  %i.ap = load <4 x float>, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load <4 x float>, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.at = load <4 x float>, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.av = load <4 x float>, ptr %i.au, align 1
  store <4 x float> %i.ap, ptr %.4.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.4.i, i64 16
  store <4 x float> %i.ar, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.4.i, i64 32
  store <4 x float> %i.at, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.4.i, i64 48
  store <4 x float> %i.av, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.4.i, i64 64
  br label %bb.j, !llvm.loop !5

stbir_simd_memcpy.exit:                           ; preds = %bb.k, %bb.g, %.preheader.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_half_float_linear(ptr noundef %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 1
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 5 uses
  %i.c = icmp sgt i32 %1, 7
  br i1 %i.c, label %bb.b, label %.preheader60

.preheader60:                                     ; preds = %bb.a
  %.not62 = icmp slt i32 %1, 4
  br i1 %.not62, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader60
  %.14461 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.043 = phi ptr [ %0, %bb.b ], [ %.043.be, %.backedge.backedge ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.0.be, %.backedge.backedge ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !370
  %.0.val = load <4 x float>, ptr %.0, align 1    ; 3 uses
  %i.g = getelementptr i8, ptr %.0, i64 16
  %.0.val50 = load <4 x float>, ptr %i.g, align 1 ; 3 uses
  %i.h = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %.0.val) ; 2 uses
  %i.i = fcmp uno <4 x float> %.0.val, zeroinitializer
  %i.j = bitcast <4 x float> %i.h to <4 x i32>    ; 4 uses
  %i.k = icmp samesign ugt <4 x i32> %i.j, splat (i32 1199570943) ; 2 uses
  %.inner88 = select <4 x i1> %i.i, <4 x i32> splat (i32 32256), <4 x i32> splat (i32 31744)
  %i.l = icmp samesign ugt <4 x i32> %i.j, splat (i32 947912703)
  %i.m = fadd <4 x float> %i.h, splat (float 5.000000e-01)
  %i.n = bitcast <4 x float> %i.m to <4 x i32>
  %i.o = add <4 x i32> %i.n, splat (i32 -1056964608)
end_hunk_0
begin_hunk_1_@stbir__encode_half_float_linear_AR:bb.a
  %i.bx = icmp samesign ugt i32 %i.bv, 2139095040
  %i.by = select i1 %i.bx, i32 32256, i32 31744
  br label %stbir__float_to_half.exit56

bb.i:                                             ; preds = %stbir__float_to_half.exit
  %i.bz = icmp samesign ult i32 %i.bv, 947912704
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = fadd float %i.bu, 5.000000e-01
  %i.cb = bitcast float %i.ca to i32
  br label %stbir__float_to_half.exit56

bb.k:                                             ; preds = %bb.i
  %i.cc = lshr i32 %i.bv, 13
  %i.cd = and i32 %i.cc, 1
  %i.ce = add nuw nsw i32 %i.bv, 134221823
  %i.cf = add nuw nsw i32 %i.ce, %i.cd
  %i.cg = lshr i32 %i.cf, 13
  br label %stbir__float_to_half.exit56

stbir__float_to_half.exit56:                      ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.016.0.i55 = phi i32 [ %i.by, %bb.h ], [ %i.cb, %bb.j ], [ %i.cg, %bb.k ]
  %i.ch = bitcast float %i.bt to i32
  %i.ci = lshr i32 %i.ch, 16
  %i.cj = and i32 %i.ci, 32768
  %i.ck = or i32 %.sroa.016.0.i55, %i.cj
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.bs, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn71, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.172, i64 12
  %i.co = load float, ptr %i.cn, align 4          ; 2 uses
  %i.cp = tail call float @llvm.fabs.f32(float %i.co) ; 2 uses
  %i.cq = bitcast float %i.cp to i32              ; 5 uses
  %i.cr = icmp samesign ugt i32 %i.cq, 1199570943
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbir__float_to_half.exit56
  %i.cs = icmp samesign ugt i32 %i.cq, 2139095040
  %i.ct = select i1 %i.cs, i32 32256, i32 31744
  br label %stbir__float_to_half.exit58

bb.m:                                             ; preds = %stbir__float_to_half.exit56
  %i.cu = icmp samesign ult i32 %i.cq, 947912704
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cv = fadd float %i.cp, 5.000000e-01
  %i.cw = bitcast float %i.cv to i32
  br label %stbir__float_to_half.exit58

bb.o:                                             ; preds = %bb.m
  %i.cx = lshr i32 %i.cq, 13
  %i.cy = and i32 %i.cx, 1
  %i.cz = add nuw nsw i32 %i.cq, 134221823
  %i.da = add nuw nsw i32 %i.cz, %i.cy
  %i.db = lshr i32 %i.da, 13
  br label %stbir__float_to_half.exit58

stbir__float_to_half.exit58:                      ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.016.0.i57 = phi i32 [ %i.ct, %bb.l ], [ %i.cw, %bb.n ], [ %i.db, %bb.o ]
  %i.dc = bitcast float %i.co to i32
  %i.dd = lshr i32 %i.dc, 16
  %i.de = and i32 %i.dd, 32768
  %i.df = or i32 %.sroa.016.0.i57, %i.de
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %i.cm, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn71, i64 6
  %i.di = getelementptr inbounds nuw i8, ptr %.172, i64 8
  %i.dj = load float, ptr %i.di, align 4          ; 2 uses
  %i.dk = tail call float @llvm.fabs.f32(float %i.dj) ; 2 uses
  %i.dl = bitcast float %i.dk to i32              ; 5 uses
  %i.dm = icmp samesign ugt i32 %i.dl, 1199570943
  br i1 %i.dm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %stbir__float_to_half.exit58
  %i.dn = icmp samesign ugt i32 %i.dl, 2139095040
  %i.do = select i1 %i.dn, i32 32256, i32 31744
  br label %stbir__float_to_half.exit60

bb.q:                                             ; preds = %stbir__float_to_half.exit58
  %i.dp = icmp samesign ult i32 %i.dl, 947912704
  br i1 %i.dp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dq = fadd float %i.dk, 5.000000e-01
  %i.dr = bitcast float %i.dq to i32
  br label %stbir__float_to_half.exit60

bb.s:                                             ; preds = %bb.q
  %i.ds = lshr i32 %i.dl, 13
  %i.dt = and i32 %i.ds, 1
  %i.du = add nuw nsw i32 %i.dl, 134221823
  %i.dv = add nuw nsw i32 %i.du, %i.dt
  %i.dw = lshr i32 %i.dv, 13
  br label %stbir__float_to_half.exit60

stbir__float_to_half.exit60:                      ; preds = %bb.p, %bb.r, %bb.s
  %.sroa.016.0.i59 = phi i32 [ %i.do, %bb.p ], [ %i.dr, %bb.r ], [ %i.dw, %bb.s ]
  %i.dx = bitcast float %i.dj to i32
  %i.dy = lshr i32 %i.dx, 16
  %i.dz = and i32 %i.dy, 32768
  %i.ea = or i32 %.sroa.016.0.i59, %i.dz
  %i.eb = trunc i32 %i.ea to i16
  store i16 %i.eb, ptr %i.dh, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.172, i64 16 ; 2 uses
  %.148 = getelementptr inbounds nuw i8, ptr %.14873, i64 8 ; 2 uses
  %.not = icmp ugt ptr %.148, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !432

.lr.ph77:                                         ; preds = %.preheader, %stbir__float_to_half.exit64
  %.276 = phi ptr [ %i.fs, %stbir__float_to_half.exit64 ], [ %.1.lcssa, %.preheader ] ; 3 uses
  %.24975 = phi ptr [ %i.fr, %stbir__float_to_half.exit64 ], [ %.pn.lcssa, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.24975) #52, !srcloc !436
  %i.ed = getelementptr inbounds nuw i8, ptr %.276, i64 4
  %i.ee = load float, ptr %i.ed, align 4          ; 2 uses
  %i.ef = tail call float @llvm.fabs.f32(float %i.ee) ; 2 uses
  %i.eg = bitcast float %i.ef to i32              ; 5 uses
  %i.eh = icmp samesign ugt i32 %i.eg, 1199570943
  br i1 %i.eh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph77
  %i.ei = icmp samesign ugt i32 %i.eg, 2139095040
  %i.ej = select i1 %i.ei, i32 32256, i32 31744
  br label %stbir__float_to_half.exit62

bb.u:                                             ; preds = %.lr.ph77
  %i.ek = icmp samesign ult i32 %i.eg, 947912704
  br i1 %i.ek, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.el = fadd float %i.ef, 5.000000e-01
  %i.em = bitcast float %i.el to i32
  br label %stbir__float_to_half.exit62

bb.w:                                             ; preds = %bb.u
  %i.en = lshr i32 %i.eg, 13
  %i.eo = and i32 %i.en, 1
  %i.ep = add nuw nsw i32 %i.eg, 134221823
  %i.eq = add nuw nsw i32 %i.ep, %i.eo
  %i.er = lshr i32 %i.eq, 13
  br label %stbir__float_to_half.exit62

stbir__float_to_half.exit62:                      ; preds = %bb.t, %bb.v, %bb.w
  %.sroa.016.0.i61 = phi i32 [ %i.ej, %bb.t ], [ %i.em, %bb.v ], [ %i.er, %bb.w ]
  %i.es = bitcast float %i.ee to i32
  %i.et = lshr i32 %i.es, 16
  %i.eu = and i32 %i.et, 32768
  %i.ev = or i32 %.sroa.016.0.i61, %i.eu
  %i.ew = trunc i32 %i.ev to i16
  store i16 %i.ew, ptr %.24975, align 2
  %i.ex = getelementptr inbounds nuw i8, ptr %.24975, i64 2
  %i.ey = load float, ptr %.276, align 4          ; 2 uses
  %i.ez = tail call float @llvm.fabs.f32(float %i.ey) ; 2 uses
  %i.fa = bitcast float %i.ez to i32              ; 5 uses
  %i.fb = icmp samesign ugt i32 %i.fa, 1199570943
  br i1 %i.fb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %stbir__float_to_half.exit62
  %i.fc = icmp samesign ugt i32 %i.fa, 2139095040
  %i.fd = select i1 %i.fc, i32 32256, i32 31744
  br label %stbir__float_to_half.exit64

bb.y:                                             ; preds = %stbir__float_to_half.exit62
  %i.fe = icmp samesign ult i32 %i.fa, 947912704
  br i1 %i.fe, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ff = fadd float %i.ez, 5.000000e-01
  %i.fg = bitcast float %i.ff to i32
  br label %stbir__float_to_half.exit64

bb.aa:                                            ; preds = %bb.y
  %i.fh = lshr i32 %i.fa, 13
  %i.fi = and i32 %i.fh, 1
  %i.fj = add nuw nsw i32 %i.fa, 134221823
  %i.fk = add nuw nsw i32 %i.fj, %i.fi
  %i.fl = lshr i32 %i.fk, 13
  br label %stbir__float_to_half.exit64

stbir__float_to_half.exit64:                      ; preds = %bb.x, %bb.z, %bb.aa
  %.sroa.016.0.i63 = phi i32 [ %i.fd, %bb.x ], [ %i.fg, %bb.z ], [ %i.fl, %bb.aa ]
  %i.fm = bitcast float %i.ey to i32
  %i.fn = lshr i32 %i.fm, 16
  %i.fo = and i32 %i.fn, 32768
  %i.fp = or i32 %.sroa.016.0.i63, %i.fo
  %i.fq = trunc i32 %i.fp to i16
  store i16 %i.fq, ptr %i.ex, align 2
  %i.fr = getelementptr inbounds nuw i8, ptr %.24975, i64 4 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.276, i64 8
  %i.ft = icmp ult ptr %i.fr, %i.b
  br i1 %i.ft, label %.lr.ph77, label %.loopexit, !llvm.loop !433

.loopexit:                                        ; preds = %stbir__float_to_half.exit64, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_linear_scaled(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = icmp sgt i32 %1, 7
  br i1 %i.d, label %bb.b, label %.preheader72

.preheader72:                                     ; preds = %bb.a
  %.not74 = icmp slt i32 %1, 4
  br i1 %.not74, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader72
  %.26173 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.059 = phi ptr [ %0, %bb.b ], [ %.160, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !439
  %i.h = load <4 x float>, ptr %.0, align 1
  %i.i = fmul <4 x float> %i.h, splat (float 2.550000e+02)
  %i.j = fadd <4 x float> %i.i, splat (float 5.000000e-01)
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = load <4 x float>, ptr %i.k, align 1
  %i.m = fmul <4 x float> %i.l, splat (float 2.550000e+02)
  %i.n = fadd <4 x float> %i.m, splat (float 5.000000e-01)
  %i.o = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.j, <4 x float> splat (float 2.550000e+02))
  %i.p = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.n, <4 x float> splat (float 2.550000e+02))
  %i.q = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> zeroinitializer)
  %i.r = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> zeroinitializer)
  %i.s = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.q)
  %i.t = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.r)
  %i.u = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.s, <4 x i32> %i.t)
  %i.v = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.u, <8 x i16> poison)
  %i.w = bitcast <16 x i8> %i.v to <2 x i64>
  %i.x = extractelement <2 x i64> %i.w, i64 0
  store i64 %i.x, ptr %.059, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.059, i64 8 ; 3 uses
  %.not68 = icmp ugt ptr %i.z, %i.g
  %i.aa = icmp ne ptr %i.z, %i.c                  ; 2 uses
  %i.ab = and i1 %.not68, %i.aa                   ; 2 uses
  %.160 = select i1 %i.ab, ptr %i.g, ptr %i.z
  %.1 = select i1 %i.ab, ptr %i.f, ptr %i.y
  br i1 %i.aa, label %bb.c, label %.loopexit

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = ptrtoaddr ptr %.26177 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader72
  %.pn.lcssa83.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.a, %.preheader72 ]
  %.pn.lcssa = phi ptr [ %.26177, %.preheader.loopexit ], [ %0, %.preheader72 ] ; 3 uses
  %.2.lcssa = phi ptr [ %i.ap, %.preheader.loopexit ], [ %2, %.preheader72 ]
  %i.ac = icmp ult ptr %.pn.lcssa, %i.c
  br i1 %i.ac, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.ad = add i64 %i.a, %i.b
  %i.ae = sub i64 %i.ad, %.pn.lcssa83.pre-phi
  %scevgep = getelementptr i8, ptr %.pn.lcssa, i64 %i.ae
  br label %.lr.ph81

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.26177 = phi ptr [ %.261, %.lr.ph ], [ %.26173, %.lr.ph.preheader ] ; 4 uses
  %.276 = phi ptr [ %i.ap, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.pn75 = phi ptr [ %.26177, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.276) #52, !srcloc !440
  %i.af = load <4 x float>, ptr %.276, align 1
  %i.ag = fmul <4 x float> %i.af, splat (float 2.550000e+02)
  %i.ah = fadd <4 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ah, <4 x float> splat (float 2.550000e+02))
  %i.aj = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ai, <4 x float> zeroinitializer)
  %i.ak = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.aj)
  %i.al = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ak, <4 x i32> poison)
  %i.am = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.al, <8 x i16> poison)
  %i.an = bitcast <16 x i8> %i.am to <4 x i32>
  %i.ao = extractelement <4 x i32> %i.an, i64 0
  store i32 %i.ao, ptr %.pn75, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.276, i64 16 ; 2 uses
  %.261 = getelementptr inbounds nuw i8, ptr %.26177, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.261, %i.c
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !437

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %.380 = phi ptr [ %i.ba, %.lr.ph81 ], [ %.2.lcssa, %.lr.ph81.preheader ] ; 3 uses
  %.36279 = phi ptr [ %i.az, %.lr.ph81 ], [ %.pn.lcssa, %.lr.ph81.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.380) #52, !srcloc !441
  %i.aq = load float, ptr %.380, align 1
  %i.ar = fmul float %i.aq, 2.550000e+02
  %i.as = fadd float %i.ar, 5.000000e-01
  %i.at = insertelement <4 x float> <float poison, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, float %i.as, i64 0
  %i.au = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.at, <4 x float> splat (float 2.550000e+02))
  %i.av = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.au, <4 x float> zeroinitializer)
  %i.aw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.av)
  %i.ax = bitcast <4 x i32> %i.aw to <16 x i8>
  %i.ay = extractelement <16 x i8> %i.ax, i64 0
  store i8 %i.ay, ptr %.36279, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.36279, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.380, i64 4
  %exitcond.not = icmp eq ptr %i.az, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph81, !llvm.loop !438

.loopexit:                                        ; preds = %.lr.ph81, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint8_linear(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = icmp sgt i32 %1, 7
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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !444
  %i.h = load <4 x float>, ptr %.0, align 1
  %i.i = fadd <4 x float> %i.h, splat (float 5.000000e-01)
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.k = load <4 x float>, ptr %i.j, align 1
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
  store i64 %i.v, ptr %.062, align 1
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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.279) #52, !srcloc !445
  %i.ad = load <4 x float>, ptr %.279, align 1
  %i.ae = fadd <4 x float> %i.ad, splat (float 5.000000e-01)
  %i.af = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ae, <4 x float> splat (float 2.550000e+02))
  %i.ag = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.af, <4 x float> zeroinitializer)
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ag)
  %i.ai = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ah, <4 x i32> poison)
  %i.aj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ai, <8 x i16> poison)
  %i.ak = bitcast <16 x i8> %i.aj to <4 x i32>
  %i.al = extractelement <4 x i32> %i.ak, i64 0
  store i32 %i.al, ptr %.pn78, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.279, i64 16 ; 2 uses
  %.264 = getelementptr inbounds nuw i8, ptr %.26480, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.264, %i.c
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !442

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.383 = phi ptr [ %i.at, %.lr.ph84 ], [ %.2.lcssa, %.lr.ph84.preheader ] ; 3 uses
  %.36582 = phi ptr [ %i.as, %.lr.ph84 ], [ %.pn.lcssa, %.lr.ph84.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.383) #52, !srcloc !446
  %i.an = load float, ptr %.383, align 4
  %i.ao = fadd float %i.an, 5.000000e-01          ; 2 uses
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  %spec.store.select1 = select i1 %i.ap, float 0.000000e+00, float %i.ao ; 2 uses
  %i.aq = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select = select i1 %i.aq, float 2.550000e+02, float %spec.store.select1
  %i.ar = fptoui float %spec.store.select to i8
  store i8 %i.ar, ptr %.36582, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.36582, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.383, i64 4
  %exitcond.not = icmp eq ptr %i.as, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph84, !llvm.loop !443

.loopexit:                                        ; preds = %.lr.ph84, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint16_linear_scaled(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 1
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 5 uses
  %i.c = icmp sgt i32 %1, 7
  br i1 %i.c, label %bb.b, label %.preheader66

.preheader66:                                     ; preds = %bb.a
  %.not68 = icmp slt i32 %1, 4
  br i1 %.not68, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader66
  %.25567 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.053 = phi ptr [ %0, %bb.b ], [ %.154, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !449
  %i.g = load <4 x float>, ptr %.0, align 1
  %i.h = fmul <4 x float> %i.g, splat (float 6.553500e+04)
  %i.i = fadd <4 x float> %i.h, splat (float 5.000000e-01)
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.k = load <4 x float>, ptr %i.j, align 1
  %i.l = fmul <4 x float> %i.k, splat (float 6.553500e+04)
  %i.m = fadd <4 x float> %i.l, splat (float 5.000000e-01)
  %i.n = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.i, <4 x float> splat (float 6.553500e+04))
  %i.o = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> zeroinitializer)
  %i.p = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.o)
  %i.q = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.m, <4 x float> splat (float 6.553500e+04))
  %i.r = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.q, <4 x float> zeroinitializer)
  %i.s = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.r)
  %i.t = add <4 x i32> %i.p, splat (i32 -32768)
  %i.u = add <4 x i32> %i.s, splat (i32 -32768)
  %i.v = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.t, <4 x i32> %i.u)
  %i.w = bitcast <8 x i16> %i.v to <2 x i64>
  %i.x = xor <2 x i64> %i.w, splat (i64 -9223231297218904064)
  store <2 x i64> %i.x, ptr %.053, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.053, i64 16 ; 3 uses
  %.not62 = icmp ugt ptr %i.z, %i.f
  %i.aa = icmp ne ptr %i.z, %i.b                  ; 2 uses
  %i.ab = and i1 %.not62, %i.aa                   ; 2 uses
  %.154 = select i1 %i.ab, ptr %i.f, ptr %i.z
  %.1 = select i1 %i.ab, ptr %i.e, ptr %i.y
  br i1 %i.aa, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader66
  %.pn.lcssa = phi ptr [ %0, %.preheader66 ], [ %.25571, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader66 ], [ %i.ao, %.lr.ph ]
  %i.ac = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.ac, label %.lr.ph75, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.25571 = phi ptr [ %.255, %.lr.ph ], [ %.25567, %.lr.ph.preheader ] ; 3 uses
  %.270 = phi ptr [ %i.ao, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.pn69 = phi ptr [ %.25571, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.270) #52, !srcloc !450
  %i.ad = load <4 x float>, ptr %.270, align 1
  %i.ae = fmul <4 x float> %i.ad, splat (float 6.553500e+04)
  %i.af = fadd <4 x float> %i.ae, splat (float 5.000000e-01)
  %i.ag = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.af, <4 x float> splat (float 6.553500e+04))
  %i.ah = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ag, <4 x float> zeroinitializer)
  %i.ai = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ah)
  %i.aj = add <4 x i32> %i.ai, splat (i32 -32768)
  %i.ak = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aj, <4 x i32> poison)
  %i.al = bitcast <8 x i16> %i.ak to <2 x i64>
  %i.am = extractelement <2 x i64> %i.al, i64 0
  %i.an = xor i64 %i.am, -9223231297218904064
  store i64 %i.an, ptr %.pn69, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.270, i64 16 ; 2 uses
  %.255 = getelementptr inbounds nuw i8, ptr %.25571, i64 8 ; 2 uses
  %.not = icmp ugt ptr %.255, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !447

.lr.ph75:                                         ; preds = %.preheader, %.lr.ph75
  %.374 = phi ptr [ %i.az, %.lr.ph75 ], [ %.2.lcssa, %.preheader ] ; 3 uses
  %.35673 = phi ptr [ %i.ay, %.lr.ph75 ], [ %.pn.lcssa, %.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.374) #52, !srcloc !451
  %i.ap = load float, ptr %.374, align 1
  %i.aq = fmul float %i.ap, 6.553500e+04
  %i.ar = fadd float %i.aq, 5.000000e-01
  %i.as = insertelement <4 x float> <float poison, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, float %i.ar, i64 0
  %i.at = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.as, <4 x float> splat (float 6.553500e+04))
  %i.au = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.at, <4 x float> zeroinitializer)
  %i.av = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.au)
  %i.aw = bitcast <4 x i32> %i.av to <8 x i16>
  %i.ax = extractelement <8 x i16> %i.aw, i64 0
  store i16 %i.ax, ptr %.35673, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.35673, i64 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.374, i64 4
  %i.ba = icmp ult ptr %i.ay, %i.b
  br i1 %i.ba, label %.lr.ph75, label %.loopexit, !llvm.loop !448

.loopexit:                                        ; preds = %.lr.ph75, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__encode_uint16_linear(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 1
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 5 uses
  %i.c = icmp sgt i32 %1, 7
  br i1 %i.c, label %bb.b, label %.preheader69

.preheader69:                                     ; preds = %bb.a
  %.not71 = icmp slt i32 %1, 4
  br i1 %.not71, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader69
  %.25870 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.056 = phi ptr [ %0, %bb.b ], [ %.157, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #52, !srcloc !454
  %i.g = load <4 x float>, ptr %.0, align 1
  %i.h = fadd <4 x float> %i.g, splat (float 5.000000e-01)
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.j = load <4 x float>, ptr %i.i, align 1
  %i.k = fadd <4 x float> %i.j, splat (float 5.000000e-01)
  %i.l = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.h, <4 x float> splat (float 6.553500e+04))
  %i.m = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.l, <4 x float> zeroinitializer)
  %i.n = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.m)
  %i.o = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.k, <4 x float> splat (float 6.553500e+04))
  %i.p = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> zeroinitializer)
  %i.q = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.p)
  %i.r = add <4 x i32> %i.n, splat (i32 -32768)
  %i.s = add <4 x i32> %i.q, splat (i32 -32768)
  %i.t = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.r, <4 x i32> %i.s)
  %i.u = bitcast <8 x i16> %i.t to <2 x i64>
  %i.v = xor <2 x i64> %i.u, splat (i64 -9223231297218904064)
  store <2 x i64> %i.v, ptr %.056, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.056, i64 16 ; 3 uses
  %.not65 = icmp ugt ptr %i.x, %i.f
  %i.y = icmp ne ptr %i.x, %i.b                   ; 2 uses
  %i.z = and i1 %.not65, %i.y                     ; 2 uses
  %.157 = select i1 %i.z, ptr %i.f, ptr %i.x
  %.1 = select i1 %i.z, ptr %i.e, ptr %i.w
  br i1 %i.y, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader69
  %.pn.lcssa = phi ptr [ %0, %.preheader69 ], [ %.25874, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader69 ], [ %i.al, %.lr.ph ]
  %i.aa = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.aa, label %.lr.ph78, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.25874 = phi ptr [ %.258, %.lr.ph ], [ %.25870, %.lr.ph.preheader ] ; 3 uses
  %.273 = phi ptr [ %i.al, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.pn72 = phi ptr [ %.25874, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.273) #52, !srcloc !455
  %i.ab = load <4 x float>, ptr %.273, align 1
  %i.ac = fadd <4 x float> %i.ab, splat (float 5.000000e-01)
  %i.ad = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ac, <4 x float> splat (float 6.553500e+04))
  %i.ae = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ad, <4 x float> zeroinitializer)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %i.ag = add <4 x i32> %i.af, splat (i32 -32768)
  %i.ah = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> poison)
  %i.ai = bitcast <8 x i16> %i.ah to <2 x i64>
end_hunk_1
