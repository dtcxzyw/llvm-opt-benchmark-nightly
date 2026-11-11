Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_filters:bb.a
  %.0188 = getelementptr i8, ptr %i.kj, i64 8     ; 5 uses
  %i.kn = icmp ult ptr %.0188, %i.km
  br i1 %i.kn, label %.lr.ph192.preheader, label %.loopexit

.lr.ph192.preheader:                              ; preds = %._crit_edge186
  %i.ko = shl nsw i64 %i.kl, 3
  %i.kp = shl nsw i64 %i.ki, 3
  %i.kq = add nsw i64 %i.ko, -16
  %i.kr = sub nsw i64 %i.kq, %i.kp                ; 2 uses
  %i.ks = lshr exact i64 %i.kr, 3
  %i.kt = add nuw nsw i64 %i.ks, 1                ; 2 uses
  %min.iters.check224 = icmp ult i64 %i.kr, 24
  br i1 %min.iters.check224, label %.lr.ph192.preheader244, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph192.preheader
  %n.vec226 = and i64 %i.kt, 4611686018427387900  ; 3 uses
  %i.ku = shl i64 %n.vec226, 3                    ; 2 uses
  %i.kv = getelementptr i8, ptr %.0188, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kj, i64 %i.ku
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 2 uses
  %i.kx = shl i64 %index228, 3                    ; 2 uses
  %next.gep229 = getelementptr i8, ptr %.0188, i64 %i.kx
  %i.ky = getelementptr i8, ptr %.0188, i64 %i.kx
  %next.gep230 = getelementptr i8, ptr %i.ky, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep229, align 4, !tbaa !32
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep230, align 4, !tbaa !32
  %index.next231 = add nuw i64 %index228, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.kz, label %middle.block232, label %vector.body227, !llvm.loop !273

middle.block232:                                  ; preds = %vector.body227
  %cmp.n233 = icmp eq i64 %i.kt, %n.vec226
  br i1 %cmp.n233, label %.loopexit, label %.lr.ph192.preheader244

.lr.ph192.preheader244:                           ; preds = %.lr.ph192.preheader, %middle.block232
  %.0190.ph = phi ptr [ %.0188, %.lr.ph192.preheader ], [ %i.kv, %middle.block232 ]
  %.pn189.ph = phi ptr [ %i.kj, %.lr.ph192.preheader ], [ %i.kw, %middle.block232 ]
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader244, %.lr.ph192
  %.0190 = phi ptr [ %.0, %.lr.ph192 ], [ %.0190.ph, %.lr.ph192.preheader244 ] ; 3 uses
  %.pn189 = phi ptr [ %.0190, %.lr.ph192 ], [ %.pn189.ph, %.lr.ph192.preheader244 ]
  store i32 0, ptr %.0190, align 4, !tbaa !47
  %i.la = getelementptr i8, ptr %.pn189, i64 12
  store i32 -1, ptr %i.la, align 4, !tbaa !48
  %.0 = getelementptr i8, ptr %.0190, i64 8       ; 2 uses
  %i.lb = icmp ult ptr %.0, %i.km
  br i1 %i.lb, label %.lr.ph192, label %.loopexit, !llvm.loop !274

.loopexit:                                        ; preds = %.lr.ph192, %middle.block232, %._crit_edge186, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint8_linear_scaled(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 15
  br i1 %i.e, label %bb.b, label %.preheader85

.preheader85:                                     ; preds = %bb.a
  %.not87 = icmp slt i32 %1, 4
  br i1 %.not87, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader85
  %.27586 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.073 = phi ptr [ %0, %bb.b ], [ %.174, %bb.c ] ; 6 uses
  %.072 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.073) #24, !srcloc !279
  %i.g = load <16 x i8>, ptr %.072, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = shufflevector <16 x i8> %i.g, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.j = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.l = shufflevector <8 x i16> %i.j, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.m = bitcast <16 x i8> %i.i to <8 x i16>      ; 2 uses
  %i.n = shufflevector <8 x i16> %i.m, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.o = shufflevector <8 x i16> %i.m, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.p = bitcast <8 x i16> %i.k to <4 x i32>
  %i.q = uitofp nneg <4 x i32> %i.p to <4 x float>
  %i.r = bitcast <8 x i16> %i.l to <4 x i32>
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x float>
  %i.t = bitcast <8 x i16> %i.n to <4 x i32>
  %i.u = uitofp nneg <4 x i32> %i.t to <4 x float>
  %i.v = bitcast <8 x i16> %i.o to <4 x i32>
  %i.w = uitofp nneg <4 x i32> %i.v to <4 x float>
  %i.x = fmul nnan <4 x float> %i.q, splat (float f0x3B808081)
  %i.y = fmul nnan <4 x float> %i.s, splat (float f0x3B808081)
  %i.z = fmul nnan <4 x float> %i.u, splat (float f0x3B808081)
  %i.aa = fmul nnan <4 x float> %i.w, splat (float f0x3B808081)
  store <4 x float> %i.x, ptr %.073, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %.073, i64 16
  store <4 x float> %i.y, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.073, i64 32
  store <4 x float> %i.z, ptr %i.ac, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.073, i64 48
  store <4 x float> %i.aa, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.073, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.072, i64 16
  %.not81 = icmp ugt ptr %i.ae, %i.f
  %i.ag = icmp ne ptr %i.ae, %i.b                 ; 2 uses
  %i.ah = and i1 %.not81, %i.ag                   ; 2 uses
  %.174 = select i1 %i.ah, ptr %i.f, ptr %i.ae
  %.1 = select i1 %i.ah, ptr %i.d, ptr %i.af
  br i1 %i.ag, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph.rtcont, %.preheader85
  %.pn.lcssa = phi ptr [ %0, %.preheader85 ], [ %.27590, %.lr.ph.rtcont ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader85 ], [ %.rtmerge, %.lr.ph.rtcont ]
  %i.ai = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.ai, label %.lr.ph94, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.rtcont
  %.27590 = phi ptr [ %.275.rtmerge, %.lr.ph.rtcont ], [ %.27586, %.lr.ph.preheader ] ; 5 uses
  %.289 = phi ptr [ %.rtmerge, %.lr.ph.rtcont ], [ %2, %.lr.ph.preheader ] ; 7 uses
  %.pn88 = phi ptr [ %.27590, %.lr.ph.rtcont ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.28999 = ptrtoaddr ptr %.289 to i64            ; 2 uses
  %i.aj = add i64 %.28999, 4
  %.pn88100 = ptrtoaddr ptr %.pn88 to i64         ; 2 uses
  %i.ak = add i64 %.pn88100, 16
  %rt.bound0 = icmp ugt i64 %i.aj, %.pn88100
  %rt.bound1 = icmp ugt i64 %i.ak, %.28999
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph.rtscalar, label %.lr.ph.rtvec, !prof !75

.lr.ph94:                                         ; preds = %.preheader, %.lr.ph94
  %.393 = phi ptr [ %i.ap, %.lr.ph94 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.37692 = phi ptr [ %i.ao, %.lr.ph94 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.37692) #24, !srcloc !280
  %i.al = load i8, ptr %.393, align 1, !tbaa !24
  %i.am = uitofp i8 %i.al to float
  %i.an = fmul nnan float %i.am, f0x3B808081
  store float %i.an, ptr %.37692, align 4, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %.37692, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.393, i64 1
  %i.aq = icmp ult ptr %i.ao, %i.b
  br i1 %i.aq, label %.lr.ph94, label %.loopexit, !llvm.loop !277

.loopexit:                                        ; preds = %.lr.ph94, %bb.c, %.preheader
  ret ptr %i.b

.lr.ph.rtvec:                                     ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27590) #24, !srcloc !281
  %i.ar = load <4 x i8>, ptr %.289, align 1, !tbaa !24
  %i.as = uitofp <4 x i8> %i.ar to <4 x float>
  %i.at = fmul nnan <4 x float> %i.as, splat (float f0x3B808081)
  store <4 x float> %i.at, ptr %.pn88, align 4, !tbaa !58
  br label %.lr.ph.rtcont

.lr.ph.rtscalar:                                  ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27590) #24, !srcloc !281
  %i.au = load i8, ptr %.289, align 1, !tbaa !24
  %i.av = uitofp i8 %i.au to float
  %i.aw = fmul nnan float %i.av, f0x3B808081
  store float %i.aw, ptr %.pn88, align 4, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %.289, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !24
  %i.az = uitofp i8 %i.ay to float
  %i.ba = fmul nnan float %i.az, f0x3B808081
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn88, i64 4
  store float %i.ba, ptr %i.bb, align 4, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %.289, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fmul nnan float %i.be, f0x3B808081
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn88, i64 8
  store float %i.bf, ptr %i.bg, align 4, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %.289, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = fmul nnan float %i.bj, f0x3B808081
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn88, i64 12
  store float %i.bk, ptr %i.bl, align 4, !tbaa !58
  br label %.lr.ph.rtcont

.lr.ph.rtcont:                                    ; preds = %.lr.ph.rtscalar, %.lr.ph.rtvec
  %.275.rtmerge = getelementptr inbounds nuw i8, ptr %.27590, i64 16 ; 2 uses
  %.not.rtmerge = icmp ugt ptr %.275.rtmerge, %i.b
  %.rtmerge = getelementptr inbounds nuw i8, ptr %.289, i64 4 ; 2 uses
  br i1 %.not.rtmerge, label %.preheader, label %.lr.ph, !llvm.loop !278
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_linear_scaled(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !284
  %i.h = load <4 x float>, ptr %.0, align 1, !tbaa !24
  %i.i = fmul <4 x float> %i.h, splat (float 2.550000e+02)
  %i.j = fadd <4 x float> %i.i, splat (float 5.000000e-01)
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !24
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
  store i64 %i.x, ptr %.059, align 1, !tbaa !24
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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.276) #24, !srcloc !285
  %i.af = load <4 x float>, ptr %.276, align 1, !tbaa !24
  %i.ag = fmul <4 x float> %i.af, splat (float 2.550000e+02)
  %i.ah = fadd <4 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ah, <4 x float> splat (float 2.550000e+02))
  %i.aj = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ai, <4 x float> zeroinitializer)
  %i.ak = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.aj)
  %i.al = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ak, <4 x i32> poison)
  %i.am = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.al, <8 x i16> poison)
  %i.an = bitcast <16 x i8> %i.am to <4 x i32>
  %i.ao = extractelement <4 x i32> %i.an, i64 0
  store i32 %i.ao, ptr %.pn75, align 4, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %.276, i64 16 ; 2 uses
  %.261 = getelementptr inbounds nuw i8, ptr %.26177, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.261, %i.c
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !282

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %.380 = phi ptr [ %i.ba, %.lr.ph81 ], [ %.2.lcssa, %.lr.ph81.preheader ] ; 3 uses
  %.36279 = phi ptr [ %i.az, %.lr.ph81 ], [ %.pn.lcssa, %.lr.ph81.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.380) #24, !srcloc !286
  %i.aq = load float, ptr %.380, align 1, !tbaa !24
  %i.ar = fmul float %i.aq, 2.550000e+02
  %i.as = fadd float %i.ar, 5.000000e-01
  %i.at = insertelement <4 x float> <float poison, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, float %i.as, i64 0
  %i.au = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.at, <4 x float> splat (float 2.550000e+02))
  %i.av = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.au, <4 x float> zeroinitializer)
  %i.aw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.av)
  %i.ax = bitcast <4 x i32> %i.aw to <16 x i8>
  %i.ay = extractelement <16 x i8> %i.ax, i64 0
  store i8 %i.ay, ptr %.36279, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.36279, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.380, i64 4
  %exitcond.not = icmp eq ptr %i.az, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph81, !llvm.loop !283

.loopexit:                                        ; preds = %.lr.ph81, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint8_linear(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 15
  br i1 %i.e, label %bb.b, label %.preheader81

.preheader81:                                     ; preds = %bb.a
  %.not83 = icmp slt i32 %1, 4
  br i1 %.not83, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader81
  %.27182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.069 = phi ptr [ %0, %bb.b ], [ %.170, %bb.c ] ; 6 uses
  %.068 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.069) #24, !srcloc !289
  %i.g = load <16 x i8>, ptr %.068, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = shufflevector <16 x i8> %i.g, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.j = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.l = shufflevector <8 x i16> %i.j, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.m = bitcast <16 x i8> %i.i to <8 x i16>      ; 2 uses
  %i.n = shufflevector <8 x i16> %i.m, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.o = shufflevector <8 x i16> %i.m, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.p = bitcast <8 x i16> %i.k to <4 x i32>
  %i.q = uitofp nneg <4 x i32> %i.p to <4 x float>
  %i.r = bitcast <8 x i16> %i.l to <4 x i32>
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x float>
  %i.t = bitcast <8 x i16> %i.n to <4 x i32>
  %i.u = uitofp nneg <4 x i32> %i.t to <4 x float>
  %i.v = bitcast <8 x i16> %i.o to <4 x i32>
  %i.w = uitofp nneg <4 x i32> %i.v to <4 x float>
  store <4 x float> %i.q, ptr %.069, align 1, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %.069, i64 16
  store <4 x float> %i.s, ptr %i.x, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %.069, i64 32
  store <4 x float> %i.u, ptr %i.y, align 1, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %.069, i64 48
  store <4 x float> %i.w, ptr %i.z, align 1, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %.069, i64 64 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %.not77 = icmp ugt ptr %i.aa, %i.f
  %i.ac = icmp ne ptr %i.aa, %i.b                 ; 2 uses
  %i.ad = and i1 %.not77, %i.ac                   ; 2 uses
  %.170 = select i1 %i.ad, ptr %i.f, ptr %i.aa
  %.1 = select i1 %i.ad, ptr %i.d, ptr %i.ab
  br i1 %i.ac, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader81
  %.pn.lcssa = phi ptr [ %0, %.preheader81 ], [ %.27186, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader81 ], [ %i.at, %.lr.ph ]
  %i.ae = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.ae, label %.lr.ph90, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.27186 = phi ptr [ %.271, %.lr.ph ], [ %.27182, %.lr.ph.preheader ] ; 4 uses
  %.285 = phi ptr [ %i.at, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn84 = phi ptr [ %.27186, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27186) #24, !srcloc !290
  %i.af = load i8, ptr %.285, align 1, !tbaa !24
  %i.ag = uitofp i8 %i.af to float
  store float %i.ag, ptr %.pn84, align 4, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %.285, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !24
  %i.aj = uitofp i8 %i.ai to float
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn84, i64 4
  store float %i.aj, ptr %i.ak, align 4, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %.285, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = uitofp i8 %i.am to float
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn84, i64 8
  store float %i.an, ptr %i.ao, align 4, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %.285, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %i.ar = uitofp i8 %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %.pn84, i64 12
  store float %i.ar, ptr %i.as, align 4, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %.285, i64 4 ; 2 uses
  %.271 = getelementptr inbounds nuw i8, ptr %.27186, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.271, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !287

.lr.ph90:                                         ; preds = %.preheader, %.lr.ph90
  %.389 = phi ptr [ %i.ax, %.lr.ph90 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.37288 = phi ptr [ %i.aw, %.lr.ph90 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.37288) #24, !srcloc !291
  %i.au = load i8, ptr %.389, align 1, !tbaa !24
  %i.av = uitofp i8 %i.au to float
  store float %i.av, ptr %.37288, align 4, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %.37288, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.389, i64 1
  %i.ay = icmp ult ptr %i.aw, %i.b
  br i1 %i.ay, label %.lr.ph90, label %.loopexit, !llvm.loop !288

.loopexit:                                        ; preds = %.lr.ph90, %bb.c, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_linear(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
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
  %.0141 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]  ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0141) #24, !srcloc !302
  %i.h = load <8 x float>, ptr %.0141, align 1, !tbaa !24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0141, i64 32
  %i.j = load <8 x float>, ptr %i.i, align 1, !tbaa !24 ; 2 uses
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %.sroa.033.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %.sroa.033.4.vec.extract = extractelement <4 x i32> %i.v, i64 1
  %i.al = zext nneg i32 %.sroa.033.4.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  %.sroa.033.4.vec.insert = insertelement <4 x i32> %.sroa.033.0.vec.insert, i32 %i.an, i64 1
  %.sroa.033.8.vec.extract = extractelement <4 x i32> %i.v, i64 2
  %i.ao = zext nneg i32 %.sroa.033.8.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %.sroa.033.8.vec.insert = insertelement <4 x i32> %.sroa.033.4.vec.insert, i32 %i.aq, i64 2
  %.sroa.033.12.vec.extract = extractelement <4 x i32> %i.v, i64 3
  %i.ar = zext nneg i32 %.sroa.033.12.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %.sroa.033.12.vec.insert = insertelement <4 x i32> %.sroa.033.8.vec.insert, i32 %i.at, i64 3
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.z, i64 0
  %i.au = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.z, i64 1
  %i.ax = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.az, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.z, i64 2
  %i.ba = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.bc, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.z, i64 3
  %i.bd = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.bf, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.ad, i64 0
  %i.bg = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.ad, i64 1
  %i.bj = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.bl, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.ad, i64 2
  %i.bm = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bo, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.ad, i64 3
  %i.bp = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.br, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ah, i64 0
  %i.bs = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ah, i64 1
  %i.bv = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bx, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ah, i64 2
  %i.by = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.ca, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ah, i64 3
  %i.cb = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !32
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
  store <16 x i8> %i.dk, ptr %.0142, align 1, !tbaa !24
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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2166) #24, !srcloc !303
  %i.ds = load float, ptr %.2166, align 4, !tbaa !58 ; 3 uses
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
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !32 ; 2 uses
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
  store i8 %.0.i, ptr %.pn165, align 1, !tbaa !24
  %i.ek = getelementptr inbounds nuw i8, ptr %.2166, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !58 ; 3 uses
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
  %i.et = load i32, ptr %i.es, align 4, !tbaa !32 ; 2 uses
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
  store i8 %.0.i153, ptr %i.fd, align 1, !tbaa !24
  %i.fe = getelementptr inbounds nuw i8, ptr %.2166, i64 8
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !58 ; 3 uses
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
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !32 ; 2 uses
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
  store i8 %.0.i155, ptr %i.fx, align 1, !tbaa !24
  %i.fy = getelementptr inbounds nuw i8, ptr %.2166, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !58 ; 3 uses
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
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !32 ; 2 uses
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
  store i8 %.0.i157, ptr %i.gr, align 1, !tbaa !24
  %i.gs = getelementptr inbounds nuw i8, ptr %.2166, i64 16 ; 2 uses
  %.2144 = getelementptr inbounds nuw i8, ptr %.2144167, i64 4 ; 2 uses
  %.not = icmp ugt ptr %.2144, %i.c
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !300

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %stbir__linear_to_srgb_uchar.exit160
  %.3170 = phi ptr [ %i.hm, %stbir__linear_to_srgb_uchar.exit160 ], [ %.2.lcssa, %.lr.ph171.preheader ] ; 3 uses
  %.3145169 = phi ptr [ %i.hl, %stbir__linear_to_srgb_uchar.exit160 ], [ %.pn.lcssa, %.lr.ph171.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3170) #24, !srcloc !304
  %i.gt = load float, ptr %.3170, align 4, !tbaa !58 ; 3 uses
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
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !32 ; 2 uses
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
  store i8 %.0.i159, ptr %.3145169, align 1, !tbaa !24
  %i.hl = getelementptr inbounds nuw i8, ptr %.3145169, i64 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.3170, i64 4
  %exitcond.not = icmp eq ptr %i.hl, %scevgep
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
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !307
  %i.g = load <8 x float>, ptr %.0, align 1, !tbaa !24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.i = load <8 x float>, ptr %i.h, align 1, !tbaa !24 ; 2 uses
  %i.j = shufflevector <8 x float> %i.g, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.k = shufflevector <8 x float> %i.i, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.l = shufflevector <8 x float> %i.g, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.m = shufflevector <8 x float> %i.i, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.j, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.p = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.q = shufflevector <4 x float> %i.m, <4 x float> %i.l, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.r = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> splat (float f0x39000000))
  %i.s = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.r, <4 x float> splat (float f0x3F7FFFFF))
  %i.t = bitcast <4 x float> %i.s to <4 x i32>    ; 2 uses
  %i.u = lshr <4 x i32> %i.t, splat (i32 20)      ; 4 uses
  %i.v = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.o, <4 x float> splat (float f0x39000000))
  %i.w = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.v, <4 x float> splat (float f0x3F7FFFFF))
  %i.x = bitcast <4 x float> %i.w to <4 x i32>    ; 2 uses
  %i.y = lshr <4 x i32> %i.x, splat (i32 20)      ; 4 uses
  %i.z = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> splat (float f0x39000000))
  %i.aa = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.z, <4 x float> splat (float f0x3F7FFFFF))
  %i.ab = bitcast <4 x float> %i.aa to <4 x i32>  ; 2 uses
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 20)    ; 4 uses
  %i.ad = fmul <4 x float> %i.q, splat (float 2.550000e+02)
  %i.ae = fadd <4 x float> %i.ad, splat (float 5.000000e-01)
  %i.af = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ae, <4 x float> zeroinitializer)
  %i.ag = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.af, <4 x float> splat (float 2.550000e+02))
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ag)
  %.sroa.026.0.vec.extract = extractelement <4 x i32> %i.u, i64 0
  %i.ai = zext nneg i32 %.sroa.026.0.vec.extract to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %.sroa.026.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %.sroa.026.4.vec.extract = extractelement <4 x i32> %i.u, i64 1
  %i.al = zext nneg i32 %.sroa.026.4.vec.extract to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  %.sroa.026.4.vec.insert = insertelement <4 x i32> %.sroa.026.0.vec.insert, i32 %i.an, i64 1
  %.sroa.026.8.vec.extract = extractelement <4 x i32> %i.u, i64 2
  %i.ao = zext nneg i32 %.sroa.026.8.vec.extract to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %.sroa.026.8.vec.insert = insertelement <4 x i32> %.sroa.026.4.vec.insert, i32 %i.aq, i64 2
  %.sroa.026.12.vec.extract = extractelement <4 x i32> %i.u, i64 3
  %i.ar = zext nneg i32 %.sroa.026.12.vec.extract to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %.sroa.026.12.vec.insert = insertelement <4 x i32> %.sroa.026.8.vec.insert, i32 %i.at, i64 3
  %.sroa.019.0.vec.extract = extractelement <4 x i32> %i.y, i64 0
  %i.au = zext nneg i32 %.sroa.019.0.vec.extract to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %.sroa.019.0.vec.insert = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %.sroa.019.4.vec.extract = extractelement <4 x i32> %i.y, i64 1
  %i.ax = zext nneg i32 %.sroa.019.4.vec.extract to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.sroa.019.4.vec.insert = insertelement <4 x i32> %.sroa.019.0.vec.insert, i32 %i.az, i64 1
  %.sroa.019.8.vec.extract = extractelement <4 x i32> %i.y, i64 2
  %i.ba = zext nneg i32 %.sroa.019.8.vec.extract to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %.sroa.019.8.vec.insert = insertelement <4 x i32> %.sroa.019.4.vec.insert, i32 %i.bc, i64 2
  %.sroa.019.12.vec.extract = extractelement <4 x i32> %i.y, i64 3
  %i.bd = zext nneg i32 %.sroa.019.12.vec.extract to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %.sroa.019.12.vec.insert = insertelement <4 x i32> %.sroa.019.8.vec.insert, i32 %i.bf, i64 3
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %i.ac, i64 0
  %i.bg = zext nneg i32 %.sroa.0.0.vec.extract to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %i.ac, i64 1
  %i.bj = zext nneg i32 %.sroa.0.4.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.bl, i64 1
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %i.ac, i64 2
  %i.bm = zext nneg i32 %.sroa.0.8.vec.extract to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.bo, i64 2
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %i.ac, i64 3
  %i.bp = zext nneg i32 %.sroa.0.12.vec.extract to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds (i8, ptr @fp32_to_srgb8_tab4, i64 -3648), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.br, i64 3
  %i.bs = lshr <4 x i32> %i.t, splat (i32 12)
  %i.bt = bitcast <4 x i32> %.sroa.026.12.vec.insert to <8 x i16>
  %i.bu = bitcast <4 x i32> %i.bs to <8 x i16>
  %i.bv = and <8 x i16> %i.bu, <i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0>
  %i.bw = or disjoint <8 x i16> %i.bv, <i16 0, i16 512, i16 0, i16 512, i16 0, i16 512, i16 0, i16 512>
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bt, <8 x i16> %i.bw)
  %i.by = lshr <4 x i32> %i.bx, splat (i32 16)
end_hunk_0
