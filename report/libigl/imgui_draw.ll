Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex:bb.a
  %i.ux = fptosi <4 x float> %i.uw to <4 x i16>
  store <4 x i16> %i.ux, ptr %i.un, align 2, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bs, label %scalar.ph, !llvm.loop !608

bb.bs:                                            ; preds = %scalar.ph
  %i.uy = add nuw nsw i32 %i.nw, %.6.i34          ; 2 uses
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = mul nuw nsw i64 %i.uz, 14
  %i.vb = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.va), !inline_history !602 ; 4 uses
  %.not346.i = icmp eq ptr %i.vb, null
  br i1 %.not346.i, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not347.i = icmp eq ptr %.0277.i35, null
  br i1 %.not347.i, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0277.i35), !inline_history !602
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bs
  %i.vc = icmp sgt i32 %.6.i34, 0
  br i1 %i.vc, label %bb.bw, label %._crit_edge

bb.bw:                                            ; preds = %bb.bv
  %i.vd = zext nneg i32 %.6.i34 to i64            ; 2 uses
  %i.ve = mul nuw nsw i64 %i.vd, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.vb, ptr align 2 %.0277.i35, i64 %i.ve, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bv, %bb.bw
  %.pre-phi = phi i64 [ %i.vd, %bb.bw ], [ 0, %bb.bv ]
  %i.vf = getelementptr inbounds nuw [14 x i8], ptr %i.vb, i64 %.pre-phi
  %i.vg = mul nuw nsw i64 %wide.trip.count, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.vf, ptr nonnull align 2 %i.ny, i64 %i.vg, i1 false)
  %.not349.i = icmp eq ptr %.0277.i35, null
  br i1 %.not349.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0277.i35), !inline_history !602
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %._crit_edge
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ny), !inline_history !602
  br label %bb.bz

bb.bz:                                            ; preds = %bb.br, %bb.by
  %.7.i = phi i32 [ %i.uy, %bb.by ], [ %.6.i34, %bb.br ] ; 2 uses
  %.1278.i = phi ptr [ %i.vb, %bb.by ], [ %.0277.i35, %bb.br ] ; 2 uses
  %i.vh = and i32 %i.ko, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.not.i = icmp eq i32 %i.vh, 0
  br i1 %.not.i, label %.thread27, label %bb.bh, !llvm.loop !609

bb.ca:                                            ; preds = %bb.bu, %bb.bt
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ny), !inline_history !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

.thread27:                                        ; preds = %bb.bz, %bb.be, %bb.bf
  %.10.i = phi i32 [ %.1.i, %bb.be ], [ 0, %bb.bf ], [ %.7.i, %bb.bz ]
  %.4281.i = phi ptr [ %i.bo, %bb.be ], [ null, %bb.bf ], [ %.1278.i, %bb.bz ]
  store ptr %.4281.i, ptr %2, align 8, !tbaa !83
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

bb.cb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.vi = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %3)
  %.not.i7 = icmp eq i32 %i.vi, 0
  br i1 %.not.i7, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !274
  %i.vl = sext i32 %i.vk to i64
  %i.vm = mul nsw i64 %i.vl, 14
  %i.vn = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.vm) ; 2 uses
  store ptr %i.vn, ptr %2, align 8, !tbaa !83
  %i.vo = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.vn, ptr %i.vo, align 8, !tbaa !275
  %i.vp = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %4)
  %.not7.i = icmp eq i32 %i.vp, 0
  br i1 %.not7.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.vq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !274
  br label %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  store ptr null, ptr %2, align 8, !tbaa !83
  br label %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit: ; preds = %bb.cd, %bb.ce
  %.0.i = phi i32 [ %i.vr, %bb.cd ], [ 0, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit: ; preds = %bb.ca, %bb.i, %.thread27, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread, %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit
  %.0 = phi i32 [ %.0.i, %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit ], [ 0, %bb.ca ], [ %.10.i, %.thread27 ], [ 0, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread ], [ 0, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #36 {
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
  %i.ag = load i32, ptr %1, align 4, !tbaa !112   ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  store float %6, ptr %i.ai, align 4, !tbaa !278
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float %7, ptr %i.aj, align 4, !tbaa !247
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit

_ZL16stbtt__add_pointP12stbtt__pointiff.exit:     ; preds = %bb.b, %bb.c
  %i.ak = add nsw i32 %i.ag, 1
  store i32 %i.ak, ptr %1, align 4, !tbaa !112
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #36 {
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
  %i.be = load i32, ptr %1, align 4, !tbaa !112   ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bf ; 2 uses
  store float %8, ptr %i.bg, align 4, !tbaa !278
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store float %9, ptr %i.bh, align 4, !tbaa !247
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit

_ZL16stbtt__add_pointP12stbtt__pointiff.exit:     ; preds = %bb.b, %bb.c
  %i.bi = add nsw i32 %i.be, 1
  store i32 %i.bi, ptr %1, align 4, !tbaa !112
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #36 {
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
  %i.d = load float, ptr %i.c, align 4, !tbaa !249 ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !249 ; 2 uses
  %i.i = add nsw i32 %.06977, -1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !249 ; 2 uses
  %i.n = fcmp olt float %i.h, %i.m                ; 2 uses
  %i.o = fcmp uge float %i.d, %i.h
  %.not = xor i1 %i.o, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = fcmp uge float %i.d, %i.m
  %i.q = xor i1 %i.p, %i.n
  %i.r = select i1 %i.q, i64 0, i64 %i.j
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.r ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.s, i64 20, i1 false), !tbaa.struct !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !128
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.078, i64 20, i1 false), !tbaa.struct !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.078, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !128
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.067 = phi i64 [ 1, %bb.c ], [ %i.af, %bb.h ]
  %.065 = phi i32 [ %i.i, %bb.c ], [ %i.ag, %bb.h ]
  %i.t = load float, ptr %i.c, align 4, !tbaa !249 ; 2 uses
  %sext = shl i64 %.067, 32
  %i.u = ashr exact i64 %sext, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.u, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !249
  %i.y = fcmp olt float %i.x, %i.t
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.y, label %bb.e, label %.preheader, !llvm.loop !610

.preheader:                                       ; preds = %bb.e
  %i.z = sext i32 %.065 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.f ], [ %i.z, %.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv81 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !249
  %i.ad = fcmp olt float %i.t, %i.ac
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  br i1 %i.ad, label %bb.f, label %bb.g, !llvm.loop !611

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nsw i64 %indvars.iv81 to i32      ; 4 uses
  %.not74 = icmp slt i64 %indvars.iv, %indvars.iv81
  br i1 %.not74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.v, i64 20, i1 false), !tbaa.struct !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false), !tbaa.struct !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !128
  %i.af = add nsw i64 %indvars.iv, 1
  %i.ag = add nsw i32 %i.ae, -1
  br label %bb.d, !llvm.loop !612

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
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !613

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #37

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL19rect_height_comparePKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 2, !tbaa !221  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = load i16, ptr %i.c, align 2, !tbaa !221  ; 2 uses
  %i.e = icmp ugt i16 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i16 %i.b, %i.d
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !220
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i16, ptr %i.i, align 4, !tbaa !220
  %i.k = tail call i32 @llvm.ucmp.i32.i16(i16 %i.j, i16 %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL19rect_original_orderPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !234
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
