Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bs, label %scalar.ph, !llvm.loop !882

bb.bs:                                            ; preds = %scalar.ph
  %i.uy = add nuw nsw i32 %i.nw, %.6.i35          ; 2 uses
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = mul nuw nsw i64 %i.uz, 14
  %i.vb = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.va), !inline_history !876 ; 5 uses
  %.not347.i = icmp eq ptr %i.vb, null
  br i1 %.not347.i, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not348.i = icmp eq ptr %.0278.i36, null
  br i1 %.not348.i, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0278.i36), !inline_history !876
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bs
  %i.vc = icmp sgt i32 %.6.i35, 0
  %i.vd = icmp ne ptr %.0278.i36, null            ; 2 uses
  %or.cond.i = select i1 %i.vc, i1 %i.vd, i1 false
  %i.ve = zext nneg i32 %.6.i35 to i64            ; 3 uses
  br i1 %or.cond.i, label %.thread22, label %bb.bw

.thread22:                                        ; preds = %bb.bv
  %i.vf = mul nuw nsw i64 %i.ve, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.vb, ptr nonnull align 2 %.0278.i36, i64 %i.vf, i1 false)
  %i.vg = getelementptr inbounds nuw [14 x i8], ptr %i.vb, i64 %i.ve
  %i.vh = mul nuw nsw i64 %wide.trip.count, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.vg, ptr nonnull align 2 %i.ny, i64 %i.vh, i1 false)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.vi = getelementptr inbounds nuw [14 x i8], ptr %i.vb, i64 %i.ve
  %i.vj = mul nuw nsw i64 %wide.trip.count, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.vi, ptr nonnull align 2 %i.ny, i64 %i.vj, i1 false)
  br i1 %i.vd, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.thread22, %bb.bw
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0278.i36), !inline_history !876
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ny), !inline_history !876
  br label %bb.bz

bb.bz:                                            ; preds = %bb.br, %bb.by
  %.7.i = phi i32 [ %i.uy, %bb.by ], [ %.6.i35, %bb.br ] ; 2 uses
  %.1279.i = phi ptr [ %i.vb, %bb.by ], [ %.0278.i36, %bb.br ] ; 2 uses
  %i.vk = and i32 %i.ko, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %.not.i = icmp eq i32 %i.vk, 0
  br i1 %.not.i, label %.thread28, label %bb.bh, !llvm.loop !883

bb.ca:                                            ; preds = %bb.bu, %bb.bt
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ny), !inline_history !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

.thread28:                                        ; preds = %bb.bz, %bb.be, %bb.bf
  %.10.i = phi i32 [ %.1.i, %bb.be ], [ 0, %bb.bf ], [ %.7.i, %bb.bz ]
  %.4282.i = phi ptr [ %i.bo, %bb.be ], [ null, %bb.bf ], [ %.1279.i, %bb.bz ]
  store ptr %.4282.i, ptr %2, align 8, !tbaa !427
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

bb.cb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.vl = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %3)
  %.not.i7 = icmp eq i32 %i.vl, 0
  br i1 %.not.i7, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !544
  %i.vo = sext i32 %i.vn to i64
  %i.vp = mul nsw i64 %i.vo, 14
  %i.vq = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.vp) ; 2 uses
  store ptr %i.vq, ptr %2, align 8, !tbaa !427
  %i.vr = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.vq, ptr %i.vr, align 8, !tbaa !545
  %i.vs = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %4)
  %.not7.i = icmp eq i32 %i.vs, 0
  br i1 %.not7.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.vt = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !544
  br label %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  store ptr null, ptr %2, align 8, !tbaa !427
  br label %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit: ; preds = %bb.cd, %bb.ce
  %.0.i = phi i32 [ %i.vu, %bb.cd ], [ 0, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit: ; preds = %bb.ca, %bb.i, %.thread28, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread, %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit
  %.0 = phi i32 [ %.0.i, %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit ], [ 0, %bb.ca ], [ %.10.i, %.thread28 ], [ 0, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread ], [ 0, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #34 {
bb.a:
  %i.a = icmp sgt i32 %9, 16
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %5, i64 1 ; 2 uses
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = insertelement <2 x float> %i.d, float %3, i64 1 ; 2 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> splat (float 2.000000e+00), <2 x float> %i.e)
  %i.g = insertelement <2 x float> poison, float %6, i64 0
  %i.h = insertelement <2 x float> %i.g, float %7, i64 1 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr5767 = phi i32 [ %i.aa, %tailrecurse ], [ %9, %.lr.ph.preheader ]
  %.tr5164 = phi float [ %i.p, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr5063 = phi float [ %i.t, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.i = phi <2 x float> [ %i.ae, %tailrecurse ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.j = phi <2 x float> [ %i.af, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
  %i.k = phi <2 x float> [ %i.m, %tailrecurse ], [ %i.e, %.lr.ph.preheader ]
  %i.l = fadd <2 x float> %i.h, %i.j
  %i.m = fmul <2 x float> %i.l, splat (float 2.500000e-01) ; 4 uses
  %i.n = fadd float %7, %.tr5164
  %i.o = fmul float %i.n, 5.000000e-01
  %i.p = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.q = fsub float %i.o, %i.p                    ; 2 uses
  %i.r = fadd float %6, %.tr5063
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.u = fsub float %i.s, %i.t                    ; 2 uses
  %i.v = fmul float %i.q, %i.q
  %i.w = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.v)
  %i.x = fcmp ogt float %i.w, %8
  br i1 %i.x, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.y = fadd <2 x float> %i.k, %i.i
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01) ; 2 uses
  %i.aa = add nsw i32 %.tr5767, 1                 ; 3 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 1
  tail call fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr noundef %0, ptr noundef %1, float noundef %.tr5063, float noundef %.tr5164, float noundef %i.ab, float noundef %i.ac, float noundef %i.t, float noundef %i.p, float noundef %8, i32 noundef %i.aa)
  %i.ad = fadd <2 x float> %i.h, %i.i
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> splat (float 2.000000e+00), <2 x float> %i.m)
  %exitcond = icmp eq i32 %i.aa, 17
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %1, align 4, !tbaa !258   ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  store float %6, ptr %i.ai, align 4, !tbaa !548
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float %7, ptr %i.aj, align 4, !tbaa !522
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit

_ZL16stbtt__add_pointP12stbtt__pointiff.exit:     ; preds = %bb.b, %bb.c
  %i.ak = add nsw i32 %i.ag, 1
  store i32 %i.ak, ptr %1, align 4, !tbaa !258
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #34 {
bb.a:
  %smax = tail call i32 @llvm.smax.i32(i32 %11, i32 17)
  %exitcond108 = icmp sgt i32 %11, 16
  br i1 %exitcond108, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = insertelement <2 x float> poison, float %4, i64 0 ; 2 uses
  %i.b = insertelement <2 x float> %i.a, float %5, i64 1
  %i.c = insertelement <2 x float> poison, float %6, i64 0
  %i.d = insertelement <2 x float> %i.c, float %7, i64 1
  %i.e = insertelement <2 x float> poison, float %2, i64 0 ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %3, i64 1
  %i.g = insertelement <2 x float> poison, float %3, i64 0
  %i.h = insertelement <2 x float> %i.g, float %5, i64 1
  %i.i = insertelement <2 x float> poison, float %5, i64 0
  %12 = insertelement <2 x float> %i.i, float %7, i64 1
  %13 = insertelement <2 x float> %i.e, float %4, i64 1
  %i.j = insertelement <2 x float> %i.a, float %6, i64 1
  %i.k = insertelement <2 x float> poison, float %8, i64 0
  %14 = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %9, i64 0
  %15 = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr106115 = phi i32 [ %i.au, %tailrecurse ], [ %11, %.lr.ph.preheader ]
  %.tr102114 = phi float [ %i.am, %tailrecurse ], [ %7, %.lr.ph.preheader ]
  %.tr101113 = phi float [ %i.an, %tailrecurse ], [ %6, %.lr.ph.preheader ]
  %.tr98110 = phi float [ %i.as, %tailrecurse ], [ %3, %.lr.ph.preheader ]
  %.tr97109 = phi float [ %i.at, %tailrecurse ], [ %2, %.lr.ph.preheader ]
  %i.m = phi <2 x float> [ %i.az, %tailrecurse ], [ %i.j, %.lr.ph.preheader ]
  %i.n = phi <2 x float> [ %i.ba, %tailrecurse ], [ %13, %.lr.ph.preheader ]
  %i.o = phi <2 x float> [ %i.bb, %tailrecurse ], [ %12, %.lr.ph.preheader ]
  %i.p = phi <2 x float> [ %i.bd, %tailrecurse ], [ %i.h, %.lr.ph.preheader ]
  %i.q = phi <2 x float> [ %i.ar, %tailrecurse ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.r = phi <2 x float> [ %i.ap, %tailrecurse ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.s = phi <2 x float> [ %i.al, %tailrecurse ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %16 = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %17 = fsub <2 x float> %14, %16                 ; 2 uses
  %18 = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 1, i32 3>
  %19 = fsub <2 x float> %15, %18                 ; 2 uses
  %20 = fmul <2 x float> %19, %19
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %17, <2 x float> %20)
  %22 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %21) ; 2 uses
  %i.t = fsub <2 x float> %i.m, %i.n              ; 2 uses
  %i.u = fsub <2 x float> %i.o, %i.p              ; 2 uses
  %i.v = fmul <2 x float> %i.u, %i.u
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.v)
  %i.x = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.w) ; 2 uses
  %shift = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.x, %shift
  %shift.a = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fadd <2 x float> %shift.a, %foldExtExtBinop
  %i.y = extractelement <2 x float> %foldExtExtBinop.a, i64 0 ; 2 uses
  %23 = extractelement <2 x float> %22, i64 0     ; 2 uses
  %i.z = fneg float %23
  %i.aa = fmul float %23, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.aa)
  %i.ac = fcmp ogt float %i.ab, %10
  br i1 %i.ac, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.ad = fadd <2 x float> %i.q, %i.r
  %i.ae = fadd <2 x float> %i.r, %i.s
  %i.af = fadd float %8, %.tr101113
  %i.ag = fadd float %9, %.tr102114
  %24 = fmul <2 x float> %i.ad, splat (float 5.000000e-01) ; 3 uses
  %i.ah = fmul <2 x float> %i.ae, splat (float 5.000000e-01) ; 2 uses
  %25 = fadd <2 x float> %24, %i.ah
  %i.ai = fmul <2 x float> %25, splat (float 5.000000e-01) ; 3 uses
  %i.aj = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ag, i64 1
  %i.al = fmul <2 x float> %i.ak, splat (float 5.000000e-01) ; 6 uses
  %i.am = extractelement <2 x float> %i.al, i64 1
  %i.an = extractelement <2 x float> %i.al, i64 0
  %i.ao = fadd <2 x float> %i.ah, %i.al
  %i.ap = fmul <2 x float> %i.ao, splat (float 5.000000e-01) ; 6 uses
  %i.aq = fadd <2 x float> %i.ai, %i.ap
  %i.ar = fmul <2 x float> %i.aq, splat (float 5.000000e-01) ; 5 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.at = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.au = add i32 %.tr106115, 1                   ; 3 uses
  %i.av = extractelement <2 x float> %i.ai, i64 0
  %i.aw = extractelement <2 x float> %i.ai, i64 1
  %i.ax = extractelement <2 x float> %24, i64 0
  %i.ay = extractelement <2 x float> %24, i64 1
  tail call fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr noundef %0, ptr noundef %1, float noundef %.tr97109, float noundef %.tr98110, float noundef %i.ax, float noundef %i.ay, float noundef %i.av, float noundef %i.aw, float noundef %i.at, float noundef %i.as, float noundef %10, i32 noundef %i.au)
  %exitcond = icmp eq i32 %i.au, %smax
  %i.az = shufflevector <2 x float> %i.ap, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.ba = shufflevector <2 x float> %i.ar, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.bb = shufflevector <2 x float> %i.ap, <2 x float> %i.al, <2 x i32> <i32 1, i32 3>
  %i.bc = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr %1, align 4, !tbaa !258   ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bf ; 2 uses
  store float %8, ptr %i.bg, align 4, !tbaa !548
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store float %9, ptr %i.bh, align 4, !tbaa !522
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit

_ZL16stbtt__add_pointP12stbtt__pointiff.exit:     ; preds = %bb.b, %bb.c
  %i.bi = add nsw i32 %i.be, 1
  store i32 %i.bi, ptr %1, align 4, !tbaa !258
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #34 {
bb.a:
  %2 = alloca %struct.stbtt__edge, align 4        ; 8 uses
  %i.a = icmp sgt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.078 = phi ptr [ %.1, %bb.l ], [ %0, %bb.a ]   ; 10 uses
  %.06977 = phi i32 [ %.170, %bb.l ], [ %1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = lshr i32 %.06977, 1
  %i.c = getelementptr inbounds nuw i8, ptr %.078, i64 4 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !524 ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !524 ; 2 uses
  %i.i = add nsw i32 %.06977, -1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !524 ; 2 uses
  %i.n = fcmp olt float %i.h, %i.m                ; 2 uses
  %i.o = fcmp uge float %i.d, %i.h
  %.not = xor i1 %i.o, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = fcmp uge float %i.d, %i.m
  %i.q = xor i1 %i.p, %i.n
  %i.r = select i1 %i.q, i64 0, i64 %i.j
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.r ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.s, i64 20, i1 false), !tbaa.struct !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !293
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.078, i64 20, i1 false), !tbaa.struct !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.078, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !293
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.067 = phi i64 [ 1, %bb.c ], [ %i.af, %bb.h ]
  %.065 = phi i32 [ %i.i, %bb.c ], [ %i.ag, %bb.h ]
  %i.t = load float, ptr %i.c, align 4, !tbaa !524 ; 2 uses
  %sext = shl i64 %.067, 32
  %i.u = ashr exact i64 %sext, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.u, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !524
  %i.y = fcmp olt float %i.x, %i.t
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.y, label %bb.e, label %.preheader, !llvm.loop !884

.preheader:                                       ; preds = %bb.e
  %i.z = sext i32 %.065 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.f ], [ %i.z, %.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv81 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !524
  %i.ad = fcmp olt float %i.t, %i.ac
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  br i1 %i.ad, label %bb.f, label %bb.g, !llvm.loop !885

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nsw i64 %indvars.iv81 to i32      ; 4 uses
  %.not74 = icmp slt i64 %indvars.iv, %indvars.iv81
  br i1 %.not74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.v, i64 20, i1 false), !tbaa.struct !293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false), !tbaa.struct !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !293
  %i.af = add nsw i64 %indvars.iv, 1
  %i.ag = add nsw i32 %i.ae, -1
  br label %bb.d, !llvm.loop !886

bb.i:                                             ; preds = %bb.g
  %i.ah = trunc nsw i64 %indvars.iv to i32
  %i.ai = sub nsw i32 %.06977, %i.ah              ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ae
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef %.078, i32 noundef %i.ae)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef %i.v, i32 noundef %i.ai)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.170 = phi i32 [ %i.ai, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %.1 = phi ptr [ %i.v, %bb.j ], [ %.078, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ak = icmp sgt i32 %.170, 12
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !887

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL38ImFontAtlasBuildSetupFontBakedFallbackP11ImFontBaked(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %1 = alloca %struct.ImFontGlyph, align 4        ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.d = load i16, ptr %i.c, align 2, !tbaa !482  ; 3 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !259
  %i.h = sext i32 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.e
  %i.m = load i16, ptr %i.l, align 2, !tbaa !243  ; 2 uses
  switch i16 %i.m, label %bb.d [
    i16 -2, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread
    i16 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !261
  %i.p = zext i16 %i.m to i64
  %i.q = getelementptr inbounds nuw [44 x i8], ptr %i.o, i64 %i.p
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = or i32 %i.s, 134217728
  store i32 %i.t, ptr %i.r, align 4
  %i.u = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %i.d, ptr noundef null), !inline_history !490
  %i.v = load i32, ptr %i.r, align 4
  %i.w = and i32 %i.v, -134217729
  store i32 %i.w, ptr %i.r, align 4
  br label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit:     ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.u, %bb.e ], [ %i.q, %bb.d ]  ; 2 uses
  %i.x = icmp eq ptr %.0, null
  br i1 %i.x, label %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread, label %bb.l

_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit.thread: ; preds = %bb.c, %bb.a, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !259
  %i.aa = icmp ugt i32 %i.z, 32
  br i1 %i.aa, label %bb.f, label %bb.h
end_hunk_0
begin_hunk_1_@_ZL38ImFontAtlasBuildSetupFontBakedFallbackP11ImFontBaked:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = phi float [ %i.au, %bb.i ], [ %i.az, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ba, ptr %i.bb, align 4, !tbaa !264
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !364
  %i.be = call noundef ptr @_Z28ImFontAtlasBakedAddFontGlyphP11ImFontAtlasP11ImFontBakedP12ImFontConfigPK11ImFontGlyph(ptr noundef %i.bd, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit
  %.1 = phi ptr [ %i.be, %bb.k ], [ %.0, %_ZN11ImFontBaked19FindGlyphNoFallbackEt.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !475
  %i.bh = ptrtoint ptr %.1 to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 44
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !262
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !264
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bo, ptr %i.bp, align 8, !tbaa !466
  ret void
}

declare noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN18ImFontAtlasBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !526  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12ImGuiStorageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN12ImGuiStorageD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #39
  unreachable

_ZN12ImGuiStorageD2Ev.exit:                       ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !376  ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !487  ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx.i = shl nsw i64 %i.i, 3
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !376
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN12ImGuiStorageD2Ev.exit
  %i.k = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.g, %_ZN12ImGuiStorageD2Ev.exit ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.k)
          to label %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39
  unreachable

.lr.ph.i:                                         ; preds = %_ZN12ImGuiStorageD2Ev.exit, %bb.f
  %.09.i = phi ptr [ %i.o, %bb.f ], [ %i.g, %_ZN12ImGuiStorageD2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %.09.i, align 8, !tbaa !377
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.n)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #39
  unreachable

_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit: ; preds = %._crit_edge.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78   ; 2 uses
  %.not.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i2, label %_ZN8ImVectorIhED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.s)
          to label %_ZN8ImVectorIhED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #39
  unreachable

_ZN8ImVectorIhED2Ev.exit:                         ; preds = %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !439  ; 2 uses
  %.not.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i3, label %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN8ImVectorIhED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.w)
          to label %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #39
  unreachable

_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit:    ; preds = %_ZN8ImVectorIhED2Ev.exit, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !331 ; 2 uses
  %.not.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i4, label %_ZN8ImVectorI13ImTextureRectED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.aa)
          to label %_ZN8ImVectorI13ImTextureRectED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #39
  unreachable

_ZN8ImVectorI13ImTextureRectED2Ev.exit:           ; preds = %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !494 ; 2 uses
  %.not.i5 = icmp eq ptr %i.ae, null
  br i1 %.not.i5, label %_ZN8ImVectorI10stbrp_nodeED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN8ImVectorI13ImTextureRectED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ae)
          to label %_ZN8ImVectorI10stbrp_nodeED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #39
  unreachable

_ZN8ImVectorI10stbrp_nodeED2Ev.exit:              ; preds = %_ZN8ImVectorI13ImTextureRectED2Ev.exit, %bb.n
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nounwind }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{!2, !46}
!3 = distinct !{!3, !46}
!4 = distinct !{!4, !46}
!5 = distinct !{!5, !46}
!6 = distinct !{!6, !46}
!7 = distinct !{!7, !46}
!8 = distinct !{!8, !46}
!9 = distinct !{!9, !46}
!10 = distinct !{!10, !46}
!11 = distinct !{!11, !46}
!12 = distinct !{!12, !46}
!13 = distinct !{!13, !46, !410}
!14 = distinct !{!14, !46, !410}
!15 = distinct !{!15, !46}
!16 = distinct !{null}
!17 = distinct !{!17, !46}
!18 = distinct !{!18, !46}
!19 = distinct !{!19, !46}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"float", !24, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29}
!31 = !{!"_ZTS6ImVec4", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!32 = !{!31, !28, i64 8}
!33 = !{!"_ZTS6ImVec2", !28, i64 0, !28, i64 4}
!34 = !{!"any pointer", !24, i64 0}
!35 = !{!"p1 _ZTS6ImVec4", !34, i64 0}
!36 = !{!"p1 _ZTS11ImFontAtlas", !34, i64 0}
!37 = !{!"p1 _ZTS6ImFont", !34, i64 0}
!38 = !{!"p1 _ZTS6ImVec2", !34, i64 0}
!39 = !{!"_ZTS8ImVectorI6ImVec2E", !25, i64 0, !25, i64 4, !38, i64 8}
!40 = !{!"any p2 pointer", !34, i64 0}
!41 = !{!"p2 _ZTS10ImDrawList", !40, i64 0}
!42 = !{!"_ZTS8ImVectorIP10ImDrawListE", !25, i64 0, !25, i64 4, !41, i64 8}
!43 = !{!"p1 _ZTS12ImGuiContext", !34, i64 0}
!44 = !{!"_ZTS20ImDrawListSharedData", !33, i64 0, !35, i64 8, !36, i64 16, !37, i64 24, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !25, i64 52, !31, i64 56, !39, i64 72, !42, i64 88, !43, i64 104, !24, i64 112, !28, i64 496, !24, i64 500}
!45 = !{!44, !28, i64 48}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!39, !38, i64 8}
!48 = !{!42, !41, i64 8}
!49 = !{!44, !28, i64 44}
!50 = !{!24, !24, i64 0}
!51 = !{!44, !28, i64 496}
!52 = !{!"llvm.loop.peeled.count", i32 1}
!53 = !{!"p1 _ZTS9ImDrawCmd", !34, i64 0}
!54 = !{!"_ZTS8ImVectorI9ImDrawCmdE", !25, i64 0, !25, i64 4, !53, i64 8}
!55 = !{!"p1 short", !34, i64 0}
!56 = !{!"_ZTS8ImVectorItE", !25, i64 0, !25, i64 4, !55, i64 8}
!57 = !{!"p1 _ZTS10ImDrawVert", !34, i64 0}
!58 = !{!"_ZTS8ImVectorI10ImDrawVertE", !25, i64 0, !25, i64 4, !57, i64 8}
!59 = !{!"p1 _ZTS20ImDrawListSharedData", !34, i64 0}
!60 = !{!"p1 _ZTS13ImTextureData", !34, i64 0}
!61 = !{!"long long", !24, i64 0}
!62 = !{!"_ZTS12ImTextureRef", !60, i64 0, !61, i64 8}
!63 = !{!"_ZTS15ImDrawCmdHeader", !31, i64 0, !62, i64 16, !25, i64 32}
!64 = !{!"p1 _ZTS13ImDrawChannel", !34, i64 0}
!65 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !25, i64 0, !25, i64 4, !64, i64 8}
!66 = !{!"_ZTS18ImDrawListSplitter", !25, i64 0, !25, i64 4, !65, i64 8}
!67 = !{!"_ZTS8ImVectorI6ImVec4E", !25, i64 0, !25, i64 4, !35, i64 8}
!68 = !{!"p1 _ZTS12ImTextureRef", !34, i64 0}
!69 = !{!"_ZTS8ImVectorI12ImTextureRefE", !25, i64 0, !25, i64 4, !68, i64 8}
!70 = !{!"p1 omnipotent char", !34, i64 0}
!71 = !{!"_ZTS8ImVectorIhE", !25, i64 0, !25, i64 4, !70, i64 8}
!72 = !{!"_ZTS10ImDrawList", !54, i64 0, !56, i64 16, !58, i64 32, !25, i64 48, !25, i64 52, !59, i64 56, !57, i64 64, !55, i64 72, !39, i64 80, !63, i64 96, !66, i64 136, !67, i64 160, !69, i64 176, !71, i64 192, !28, i64 208, !70, i64 216}
!73 = !{!72, !59, i64 56}
!74 = !{!42, !25, i64 0}
!75 = !{!"p1 _ZTS10ImDrawList", !34, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!42, !25, i64 4}
!78 = !{!71, !70, i64 8}
!79 = !{!69, !68, i64 8}
!80 = !{!67, !35, i64 8}
!81 = !{!65, !64, i64 8}
!82 = !{!58, !57, i64 8}
!83 = !{!56, !55, i64 8}
!84 = !{!54, !53, i64 8}
!85 = !{!54, !25, i64 4}
!86 = !{!54, !25, i64 0}
!87 = !{!56, !25, i64 4}
!88 = !{!56, !25, i64 0}
!89 = !{!58, !25, i64 4}
!90 = !{!58, !25, i64 0}
!91 = !{!72, !25, i64 48}
!92 = !{!72, !25, i64 52}
!93 = !{!67, !25, i64 4}
!94 = !{!67, !25, i64 0}
!95 = !{!69, !25, i64 4}
!96 = !{!69, !25, i64 0}
!97 = !{!71, !25, i64 4}
!98 = !{!71, !25, i64 0}
!99 = !{!39, !25, i64 4}
!100 = !{!39, !25, i64 0}
!101 = !{!66, !25, i64 0}
!102 = !{!66, !25, i64 4}
!103 = !{!72, !28, i64 208}
!104 = !{!72, !25, i64 0}
!105 = !{!72, !53, i64 8}
!106 = !{!"_ZTS9ImDrawCmd", !31, i64 0, !62, i64 16, !25, i64 32, !25, i64 36, !25, i64 40, !34, i64 48, !34, i64 56, !25, i64 64, !25, i64 68}
!107 = !{!106, !25, i64 40}
!108 = !{!106, !34, i64 48}
!109 = !{!106, !25, i64 36}
!110 = !{!72, !25, i64 16}
!111 = !{!72, !55, i64 24}
!112 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
