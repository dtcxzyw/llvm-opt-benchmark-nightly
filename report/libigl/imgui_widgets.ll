Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui10ColorEdit4EPKcPfi:bb.a
bb.ad:                                            ; preds = %.split.peel.next
  call void @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.50, i32 noundef 1)
  br label %bb.ae

bb.ae:                                            ; preds = %.split.peel.next, %bb.ad
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.en
  br i1 %exitcond.not, label %.split278.us.loopexit281, label %.split.peel.next, !llvm.loop !527

bb.af:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.fs = and i32 %.4.fr, 4194304
  %.not226 = icmp ne i32 %i.fs, 0
  %or.cond254 = and i1 %.not226, %i.dh
  br i1 %or.cond254, label %bb.ag, label %.split278.us

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %i.ft = extractelement <4 x i32> %i.cy, i64 0
  %i.fu = call i32 @llvm.smax.i32(i32 %i.ft, i32 0)
  %i.fv = call i32 @llvm.umin.i32(i32 %i.fu, i32 255) ; 2 uses
  %i.fw = extractelement <4 x i32> %i.cy, i64 1
  %i.fx = call i32 @llvm.smax.i32(i32 %i.fw, i32 0)
  %i.fy = call i32 @llvm.umin.i32(i32 %i.fx, i32 255) ; 2 uses
  %i.fz = extractelement <4 x i32> %i.cy, i64 2
  %i.ga = call i32 @llvm.smax.i32(i32 %i.fz, i32 0)
  %i.gb = call i32 @llvm.umin.i32(i32 %i.ga, i32 255) ; 2 uses
  br i1 %i.az, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gc = extractelement <4 x i32> %i.cy, i64 3
  %i.gd = call i32 @llvm.smax.i32(i32 %i.gc, i32 0)
  %i.ge = call i32 @llvm.umin.i32(i32 %i.gd, i32 255)
  %i.gf = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.g, i64 noundef 64, ptr noundef nonnull @.str.51, i32 noundef %i.fv, i32 noundef %i.fy, i32 noundef %i.gb, i32 noundef %i.ge) ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gg = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.g, i64 noundef 64, ptr noundef nonnull @.str.52, i32 noundef %i.fv, i32 noundef %i.fy, i32 noundef %i.gb) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !141
  %i.gh = call noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef nonnull %i.g, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 6, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.gh, label %.preheader273, label %bb.an

.preheader273:                                    ; preds = %bb.aj, %.critedge
  %.0196 = phi ptr [ %i.gj, %.critedge ], [ %i.g, %bb.aj ] ; 4 uses
  %i.gi = load i8, ptr %.0196, align 1, !tbaa !148
  switch i8 %i.gi, label %bb.ak [
    i8 35, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %.preheader273, %.preheader273, %.preheader273
  %i.gj = getelementptr inbounds nuw i8, ptr %.0196, i64 1
  br label %.preheader273, !llvm.loop !528

bb.ak:                                            ; preds = %.preheader273
  store <4 x i32> <i32 0, i32 0, i32 0, i32 255>, ptr %i.f, align 16, !tbaa !188
  br i1 %i.az, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gk = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.0196, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.f, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq) #36 ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.gl = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.0196, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.f, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cp) #36 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.aj
  %.2203 = phi i8 [ 0, %bb.aj ], [ 1, %bb.am ], [ 1, %bb.al ]
  %i.gm = and i32 %i.ax, 8
  %.not227 = icmp eq i32 %i.gm, 0
  br i1 %.not227, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.50, i32 noundef 1)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %.split278.us

.split278.us:                                     ; preds = %bb.ac, %.split278.us.loopexit281, %bb.af, %bb.ap
  %.3204 = phi i8 [ 0, %bb.af ], [ %.2203, %bb.ap ], [ %i.fq, %.split278.us.loopexit281 ], [ %i.fe, %bb.ac ] ; 3 uses
  %.2200 = phi i1 [ false, %bb.af ], [ false, %bb.ap ], [ %i.ff, %.split278.us.loopexit281 ], [ false, %bb.ac ]
  %i.gn = and i32 %i.ax, 16
  %.not230 = icmp eq i32 %i.gn, 0
  br i1 %.not230, label %bb.aq, label %bb.be

bb.aq:                                            ; preds = %.split278.us
  br i1 %i.dh, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.go = load i32, ptr %i.da, align 4, !tbaa !529
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gq = getelementptr inbounds nuw i8, ptr %i.h, i64 5556
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !151
  %i.gs = fadd float %i.v, %i.gr
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %i.gt = phi float [ %i.gs, %bb.as ], [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.aq ]
  %i.gu = fadd float %.sroa.039.0.copyload, %i.gt
  store float %i.gu, ptr %i.cz, align 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.gv = load <2 x float>, ptr %1, align 4, !tbaa !141
  %i.gw = load float, ptr %i.bg, align 4, !tbaa !141
  br i1 %i.az, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !141
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.gz = phi float [ %i.gy, %bb.au ], [ 1.000000e+00, %bb.at ]
  store <2 x float> %i.gv, ptr %6, align 8, !tbaa !141
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.gw, ptr %i.ha, align 8, !tbaa !285
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.gz, ptr %i.hb, align 4, !tbaa !187
  %i.hc = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef nonnull @.str.56, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %i.ax, <2 x float> zeroinitializer)
  %i.hd = and i32 %i.ax, 4
  %.not232 = icmp eq i32 %i.hd, 0
  %or.cond255 = and i1 %.not232, %i.hc
  br i1 %or.cond255, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.he = getelementptr inbounds nuw i8, ptr %i.h, i64 12284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !182
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.57, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 7380
  %i.hg = load <4 x float>, ptr %i.hf, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.h, i64 5552
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !214
  %i.hj = shufflevector <4 x float> %i.hg, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.hk = insertelement <2 x float> <float -1.000000e+00, float poison>, float %i.hi, i64 1
  %i.hl = fadd <2 x float> %i.hj, %i.hk
  store <2 x float> %i.hl, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !141
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hm = and i32 %i.ax, 8
  %.not233 = icmp eq i32 %i.hm, 0
  br i1 %.not233, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.50, i32 noundef 1)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.hn = call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.57, i32 noundef 0)
  br i1 %i.hn, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.ho = load ptr, ptr %i.i, align 8, !tbaa !111
  %.not234 = icmp eq ptr %0, %i.w
  br i1 %.not234, label %_ZN5ImGui7SpacingEv.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.w, i32 noundef 0)
  %i.hp = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 7184
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !111 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 144
  store i8 1, ptr %i.hs, align 8, !tbaa !133
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 147
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !134, !range !135, !noundef !136
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %_ZN5ImGui7SpacingEv.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !141
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN5ImGui7SpacingEv.exit

_ZN5ImGui7SpacingEv.exit:                         ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.hw = and i32 %2, 529072130
  %i.hx = or disjoint i32 %i.hw, 7602304
  %i.hy = fmul float %i.o, 1.200000e+01
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 12284
  %i.ia = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.58, ptr noundef nonnull %1, i32 noundef %i.hx, ptr noundef nonnull %i.hz)
  %i.ib = zext i1 %i.ia to i8
  %i.ic = or i8 %.3204, %i.ib
  %10 = icmp ne i8 %i.ic, 0
  %11 = zext i1 %10 to i8
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN5ImGui7SpacingEv.exit, %bb.az
  %.4205 = phi i8 [ %11, %_ZN5ImGui7SpacingEv.exit ], [ %.3204, %bb.az ]
  %.0194 = phi ptr [ %i.ho, %_ZN5ImGui7SpacingEv.exit ], [ null, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.split278.us
  %.5 = phi i8 [ %.3204, %.split278.us ], [ %.4205, %bb.bd ] ; 4 uses
  %.1195 = phi ptr [ null, %.split278.us ], [ %.0194, %bb.bd ] ; 2 uses
  %.not235 = icmp ne ptr %0, %i.w
  %i.id = and i32 %i.ax, 128
  %.not236 = icmp eq i32 %i.id, 0
  %or.cond256 = and i1 %.not235, %.not236
  br i1 %or.cond256, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  br i1 %i.dh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ie = getelementptr inbounds nuw i8, ptr %i.h, i64 5556
  %i.if = load float, ptr %i.ie, align 4, !tbaa !151
  %i.ig = fadd float %i.p, %i.if
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.ih = phi float [ %i.ig, %bb.bg ], [ %i.u, %bb.bf ]
  %i.ii = fadd float %.sroa.039.0.copyload, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.h, i64 5536
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !150
  %i.il = fadd float %.sroa.6.0.copyload, %i.ik
  store float %i.ii, ptr %i.cz, align 8
  store float %i.il, ptr %.sroa.6.0..sroa_idx, align 4
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.w, i32 noundef 0)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %i.im = trunc nuw i8 %.5 to i1
  %i.in = icmp eq ptr %.1195, null                ; 2 uses
  %or.cond = select i1 %i.im, i1 %i.in, i1 false
  br i1 %or.cond, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  br i1 %.2200, label %..loopexit_crit_edge, label %.preheader.preheader

..loopexit_crit_edge:                             ; preds = %bb.bj
  %i.io = load <2 x float>, ptr %i.e, align 16, !tbaa !141
  %.pre301.pre306.pre = load float, ptr %i.bf, align 8, !tbaa !141
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.bj
  %i.ip = load <2 x i32>, ptr %i.f, align 16, !tbaa !188
  %i.iq = sitofp <2 x i32> %i.ip to <2 x float>
  %i.ir = fdiv <2 x float> %i.iq, splat (float 2.550000e+02) ; 2 uses
  store <2 x float> %i.ir, ptr %i.e, align 16, !tbaa !141
  %i.is = load <2 x i32>, ptr %i.cp, align 8, !tbaa !188
  %i.it = sitofp <2 x i32> %i.is to <2 x float>
  %i.iu = fdiv <2 x float> %i.it, splat (float 2.550000e+02) ; 2 uses
  store <2 x float> %i.iu, ptr %i.bf, align 8, !tbaa !141
  %i.iv = extractelement <2 x float> %i.iu, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader.preheader
  %.pre301.pre306 = phi float [ %.pre301.pre306.pre, %..loopexit_crit_edge ], [ %i.iv, %.preheader.preheader ] ; 2 uses
  %i.iw = phi <2 x float> [ %i.io, %..loopexit_crit_edge ], [ %i.ir, %.preheader.preheader ] ; 4 uses
  %i.ix = and i32 %.4.fr, 136314880
  %or.cond257.not = icmp eq i32 %i.ix, 136314880
  br i1 %or.cond257.not, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.loopexit
  %i.iy = getelementptr inbounds nuw i8, ptr %i.h, i64 12272
  %i.iz = extractelement <2 x float> %i.iw, i64 0
  %i.ja = extractelement <2 x float> %i.iw, i64 1
  store <2 x float> %i.iw, ptr %i.iy, align 8, !tbaa !141
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.iz, float noundef %i.ja, float noundef %.pre301.pre306, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.jb = load float, ptr %i.bf, align 8, !tbaa !141
  %i.jc = load <2 x float>, ptr %i.e, align 16, !tbaa !141
  store <2 x float> %i.jc, ptr %9, align 8, !tbaa !141
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.jb, ptr %i.jd, align 8, !tbaa !285
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float 0.000000e+00, ptr %i.je, align 4, !tbaa !187
  %i.jf = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.h, i64 12280
  store i32 %i.jf, ptr %i.jg, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.jh = load <2 x float>, ptr %i.e, align 16, !tbaa !141
  %.pre301.pre = load float, ptr %i.bf, align 8, !tbaa !141
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.loopexit
  %.pre301 = phi float [ %.pre301.pre, %bb.bk ], [ %.pre301.pre306, %.loopexit ] ; 2 uses
  %i.ji = phi <2 x float> [ %i.jh, %bb.bk ], [ %i.iw, %.loopexit ] ; 3 uses
  br i1 %or.cond249.not, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jj = extractelement <2 x float> %i.ji, i64 0
  %i.jk = extractelement <2 x float> %i.ji, i64 1
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.jj, float noundef %i.jk, float noundef %.pre301, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bf)
  %i.jl = load <2 x float>, ptr %i.e, align 16, !tbaa !141
  %.pre300 = load float, ptr %i.bf, align 8, !tbaa !141
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.jm = phi float [ %.pre301, %bb.bl ], [ %.pre300, %bb.bm ]
  %i.jn = phi <2 x float> [ %i.ji, %bb.bl ], [ %i.jl, %bb.bm ]
  store <2 x float> %i.jn, ptr %1, align 4, !tbaa !141
  store float %i.jm, ptr %i.bg, align 4, !tbaa !141
  br i1 %i.az, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jo = load float, ptr %i.bi, align 4, !tbaa !141
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.jo, ptr %i.jp, align 4, !tbaa !141
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bi
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8EndGroupEv()
  %i.jq = getelementptr inbounds nuw i8, ptr %i.h, i64 7368 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 7376
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !198
  %.not241 = trunc i32 %i.js to i1
  %i.jt = and i32 %i.ax, 512
  %.not242 = icmp eq i32 %i.jt, 0
  %or.cond258 = and i1 %.not242, %.not241
  br i1 %or.cond258, label %bb.bq, label %bb.by

bb.bq:                                            ; preds = %bb.bp
  %i.ju = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv()
  br i1 %i.ju, label %bb.br, label %bb.by

bb.br:                                            ; preds = %bb.bq
  %i.jv = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.59, i32 noundef 0) ; 2 uses
  %.not243 = icmp ne ptr %i.jv, null              ; 2 uses
  br i1 %.not243, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) %i.jw, i64 12, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.6 = phi i8 [ 1, %bb.bs ], [ %.5, %bb.br ]
  %i.jx = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.60, i32 noundef 0) ; 2 uses
  %.not244 = icmp eq ptr %i.jx, null
  br i1 %.not244, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !530
  %i.jz = shl nuw nsw i32 %i.bb, 2
  %i.ka = zext nneg i32 %i.jz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.jy, i64 %i.ka, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.7 = phi i8 [ 1, %bb.bu ], [ %.6, %bb.bt ]
  %.1 = phi i1 [ true, %bb.bu ], [ %.not243, %bb.bt ]
  %brmerge259.not = and i1 %.not221, %.1
  br i1 %brmerge259.not, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kb = load float, ptr %1, align 4, !tbaa !141
  %i.kc = load float, ptr %i.bd, align 4, !tbaa !141
  %i.kd = load float, ptr %i.bg, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.kb, float noundef %i.kc, float noundef %i.kd, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.bg)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  call void @_ZN5ImGui17EndDragDropTargetEv()
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bq, %bb.bp
  %.8 = phi i8 [ %.5, %bb.bp ], [ %.7, %bb.bx ], [ %.5, %bb.bq ]
  br i1 %i.in, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ke = getelementptr inbounds nuw i8, ptr %i.h, i64 7260
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !165 ; 2 uses
  %.not246 = icmp eq i32 %i.kf, 0
  br i1 %.not246, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kg = getelementptr inbounds nuw i8, ptr %i.h, i64 7304
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !531
  %i.ki = icmp eq ptr %i.kh, %.1195
  br i1 %i.ki, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 %i.kf, ptr %i.jq, align 8, !tbaa !213
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by
  %i.kj = trunc nuw i8 %.8 to i1                  ; 2 uses
  br i1 %i.kj, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kk = load i32, ptr %i.jq, align 8, !tbaa !213
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.kk)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
end_hunk_0
begin_hunk_1_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.kr = and i32 %.3, 128
  %.not420 = icmp eq i32 %i.kr, 0                 ; 2 uses
  br i1 %.not420, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.ks = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %.not421 = icmp eq ptr %0, %i.ks
  br i1 %.not421, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not419, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kt = load float, ptr %i.bg, align 4, !tbaa !151
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.kt)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.ks, i32 noundef 0)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bd, %bb.bg, %bb.bc
  br i1 %.not419, label %bb.bi, label %bb.bt

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 16, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  %i.ku = load <2 x float>, ptr %1, align 4, !tbaa !141
  %i.kv = load float, ptr %i.cu, align 4, !tbaa !141
  br i1 %.not411, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !141
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.ky = phi float [ %i.kx, %bb.bj ], [ 1.000000e+00, %bb.bi ]
  store <2 x float> %i.ku, ptr %24, align 8, !tbaa !141
  %i.kz = getelementptr inbounds nuw i8, ptr %24, i64 8
  store float %i.kv, ptr %i.kz, align 8, !tbaa !285
  %i.la = getelementptr inbounds nuw i8, ptr %24, i64 12
  store float %i.ky, ptr %i.la, align 4, !tbaa !187
  br i1 %.not420, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.65)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.lb = and i32 %.3, 403570752                  ; 2 uses
  %i.lc = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = fmul <2 x float> %i.ld, <float 3.000000e+00, float 2.000000e+00> ; 2 uses
  %i.lf = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef nonnull @.str.66, ptr noundef nonnull align 4 dereferenceable(16) %24, i32 noundef %i.lb, <2 x float> %i.le) ; 0 uses
  %.not422 = icmp eq ptr %3, null
  br i1 %.not422, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  %i.lg = load <2 x float>, ptr %3, align 4, !tbaa !141
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.li = load float, ptr %i.lh, align 4, !tbaa !141
  br i1 %.not411, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !141
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.ll = phi float [ %i.lk, %bb.bo ], [ 1.000000e+00, %bb.bn ]
  store <2 x float> %i.lg, ptr %25, align 8, !tbaa !141
  %i.lm = getelementptr inbounds nuw i8, ptr %25, i64 8
  store float %i.li, ptr %i.lm, align 8, !tbaa !285
  %i.ln = getelementptr inbounds nuw i8, ptr %25, i64 12
  store float %i.ll, ptr %i.ln, align 4, !tbaa !187
  %i.lo = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef nonnull @.str.68, ptr noundef nonnull align 4 dereferenceable(16) %25, i32 noundef %i.lb, <2 x float> %i.le)
  br i1 %i.lo, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 %i.bq, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.6 = phi i8 [ 1, %bb.bq ], [ %.5, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bm
  %.7 = phi i8 [ %.6, %bb.br ], [ %.5, %bb.bm ]
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui8EndGroupEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bh
  %.8 = phi i8 [ %.5, %bb.bh ], [ %.7, %bb.bs ]   ; 3 uses
  %i.lp = trunc nuw i8 %.2392 to i1
  %i.lq = trunc nuw i8 %.3389 to i1
  %i.lr = or i8 %.3389, %.2392
  %or.cond.not = icmp eq i8 %i.lr, 0
  br i1 %or.cond.not, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %.not413, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ls = load float, ptr %i.j, align 4, !tbaa !141
  %i.lt = load float, ptr %i.k, align 4, !tbaa !141
  %i.lu = load float, ptr %i.l, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ls, float noundef %i.lt, float noundef %i.lu, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.cu)
  %i.lv = load float, ptr %i.j, align 4, !tbaa !141
  %i.lw = getelementptr inbounds nuw i8, ptr %i.w, i64 12272
  store float %i.lv, ptr %i.lw, align 8, !tbaa !302
  %i.lx = load float, ptr %i.k, align 4, !tbaa !141
  %i.ly = getelementptr inbounds nuw i8, ptr %i.w, i64 12276
  store float %i.lx, ptr %i.ly, align 4, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #36
  %i.lz = load float, ptr %i.cu, align 4, !tbaa !141
  %i.ma = load <2 x float>, ptr %1, align 4, !tbaa !141
  store <2 x float> %i.ma, ptr %26, align 8, !tbaa !141
  %i.mb = getelementptr inbounds nuw i8, ptr %26, i64 8
  store float %i.lz, ptr %i.mb, align 8, !tbaa !285
  %i.mc = getelementptr inbounds nuw i8, ptr %26, i64 12
  store float 0.000000e+00, ptr %i.mc, align 4, !tbaa !187
  %i.md = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %26)
  %i.me = getelementptr inbounds nuw i8, ptr %i.w, i64 12280
  store i32 %i.md, ptr %i.me, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.mf = and i32 %.3, 268435456
  %.not423 = icmp eq i32 %i.mf, 0
  br i1 %.not423, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mg = load float, ptr %i.j, align 4, !tbaa !141
  store float %i.mg, ptr %1, align 4, !tbaa !141
  %i.mh = load float, ptr %i.k, align 4, !tbaa !141
  store float %i.mh, ptr %i.cs, align 4, !tbaa !141
  %i.mi = load float, ptr %i.l, align 4, !tbaa !141
  store float %i.mi, ptr %i.cu, align 4, !tbaa !141
  br label %bb.by

bb.by:                                            ; preds = %bb.bv, %bb.bx, %bb.bw, %bb.bt
  %i.mj = and i32 %.3, 32
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %bb.bz, label %.thread

bb.bz:                                            ; preds = %bb.by
  %i.ml = select i1 %spec.select432, float %i.cd, float %i.cb
  %i.mm = fadd float %i.bf, %i.ml
  %i.mn = fsub float %i.mm, %i.bz
  call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.mn)
  %i.mo = and i32 %.3, 428736538                  ; 3 uses
  %i.mp = and i32 %.3, 1048576
  %.not424 = icmp ne i32 %i.mp, 0
  %i.mq = and i32 %.3, 6291456
  %i.mr = icmp eq i32 %i.mq, 0
  %or.cond = or i1 %.not424, %i.mr
  br i1 %or.cond, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.ms = or disjoint i32 %i.mo, 1048580
  %i.mt = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.69, ptr noundef nonnull %1, i32 noundef %i.ms)
  br i1 %i.mt, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.mu = getelementptr inbounds nuw i8, ptr %i.w, i64 7260
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !165
  %.not425 = icmp eq i32 %i.mv, 0
  br i1 %.not425, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mw = getelementptr inbounds nuw i8, ptr %i.w, i64 7273
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !265, !range !135, !noundef !136
  %i.my = trunc nuw i8 %i.mx to i1
  %i.mz = or i1 %.not413, %i.my
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bz, %bb.ca
  %.9 = phi i8 [ %.8, %bb.bz ], [ %.8, %bb.ca ], [ 1, %bb.cc ], [ 1, %bb.cb ] ; 2 uses
  %.1385.not = phi i1 [ true, %bb.bz ], [ true, %bb.ca ], [ %i.mz, %bb.cc ], [ true, %bb.cb ]
  %i.na = and i32 %.3, 2097152
  %.not426 = icmp ne i32 %i.na, 0
  %i.nb = and i32 %.3, 5242880
  %i.nc = icmp eq i32 %i.nb, 0
  %or.cond435 = or i1 %.not426, %i.nc
  br i1 %or.cond435, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.nd = or disjoint i32 %i.mo, 2097156
  %i.ne = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.70, ptr noundef nonnull %1, i32 noundef %i.nd)
  %i.nf = zext i1 %i.ne to i8
  %i.ng = or i8 %.9, %i.nf
  %39 = icmp ne i8 %i.ng, 0
  %40 = zext i1 %39 to i8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %.10 = phi i8 [ %40, %bb.ce ], [ %.9, %bb.cd ]  ; 2 uses
  %i.nh = and i32 %.3, 4194304
  %.not427 = icmp ne i32 %i.nh, 0
  %i.ni = and i32 %.3, 3145728
  %i.nj = icmp eq i32 %i.ni, 0
  %or.cond437 = or i1 %.not427, %i.nj
  br i1 %or.cond437, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nk = or disjoint i32 %i.mo, 4194308
  %i.nl = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.71, ptr noundef nonnull %1, i32 noundef %i.nk)
  %i.nm = zext i1 %i.nl to i8
  %i.nn = or i8 %.10, %i.nm
  %41 = icmp ne i8 %i.nn, 0
  %42 = zext i1 %41 to i8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.11 = phi i8 [ %42, %bb.cg ], [ %.10, %bb.cf ] ; 2 uses
  call void @_ZN5ImGui12PopItemWidthEv()
  br i1 %.1385.not, label %.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #36
  %i.no = load float, ptr %1, align 4, !tbaa !141
  %i.np = load float, ptr %i.cs, align 4, !tbaa !141
  %i.nq = load float, ptr %i.cu, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.no, float noundef %i.np, float noundef %i.nq, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
  %i.nr = load float, ptr %i.s, align 4, !tbaa !141
  %i.ns = fcmp ole float %i.nr, 0.000000e+00
  %i.nt = load float, ptr %i.j, align 4           ; 3 uses
  %i.nu = fcmp ogt float %i.nt, 0.000000e+00
  %or.cond3 = select i1 %i.ns, i1 %i.nu, i1 false
  br i1 %or.cond3, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.nv = load float, ptr %i.u, align 4, !tbaa !141 ; 3 uses
  %i.nw = fcmp ugt float %i.nv, 0.000000e+00
  br i1 %i.nw, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nx = load float, ptr %i.l, align 4, !tbaa !141 ; 2 uses
  %i.ny = fcmp une float %i.nx, %i.nv
  br i1 %i.ny, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.nz = load float, ptr %i.k, align 4, !tbaa !141
  %i.oa = fmul float %i.nx, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.nt, float noundef %i.nz, float noundef %i.oa, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.cu)
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.ob = load float, ptr %i.t, align 4, !tbaa !141
  %i.oc = fcmp ugt float %i.ob, 0.000000e+00
  br i1 %i.oc, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.od = load float, ptr %i.k, align 4
  %i.oe = fmul float %i.od, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.nt, float noundef %i.oe, float noundef %i.nv, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.cu)
  br label %bb.co

bb.co:                                            ; preds = %bb.cl, %bb.cn, %bb.cm, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #36
  br label %.thread

.thread:                                          ; preds = %bb.by, %bb.ch, %bb.co
  %.12615 = phi i8 [ %.11, %bb.co ], [ %.11, %bb.ch ], [ %.8, %bb.by ]
  %i.of = trunc nuw i8 %.12615 to i1              ; 2 uses
  br i1 %i.of, label %bb.cp, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

bb.cp:                                            ; preds = %.thread
  br i1 %.not413, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.og = load float, ptr %1, align 4, !tbaa !141 ; 2 uses
  store float %i.og, ptr %i.m, align 4, !tbaa !141
  %i.oh = load float, ptr %i.cs, align 4, !tbaa !141 ; 2 uses
  store float %i.oh, ptr %i.n, align 4, !tbaa !141
  %i.oi = load float, ptr %i.cu, align 4, !tbaa !141 ; 2 uses
  store float %i.oi, ptr %i.o, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.og, float noundef %i.oh, float noundef %i.oi, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.oj = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 12280
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.om = load float, ptr %i.cu, align 4, !tbaa !141
  %i.on = load <2 x float>, ptr %1, align 4, !tbaa !141
  store <2 x float> %i.on, ptr %4, align 8, !tbaa !141
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.om, ptr %i.oo, align 8, !tbaa !285
  %i.op = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.op, align 4, !tbaa !187
  %i.oq = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.not.i520 = icmp eq i32 %i.ol, %i.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %.not.i520, label %bb.cr, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

bb.cr:                                            ; preds = %bb.cq
  %i.or = load float, ptr %i.k, align 4, !tbaa !141
  %i.os = fcmp oeq float %i.or, 0.000000e+00
  br i1 %i.os, label %._crit_edge.i521, label %bb.cs

._crit_edge.i521:                                 ; preds = %bb.cr
  %.phi.trans.insert.i522 = getelementptr inbounds nuw i8, ptr %i.oj, i64 12272
  %.pre.i523 = load float, ptr %.phi.trans.insert.i522, align 8, !tbaa !302
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.ot = load float, ptr %i.j, align 4, !tbaa !141
  %i.ou = fcmp oeq float %i.ot, 0.000000e+00
  br i1 %i.ou, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 12272
  %i.ow = load float, ptr %i.ov, align 8, !tbaa !302
  %i.ox = fcmp oeq float %i.ow, 1.000000e+00
  br i1 %i.ox, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct, %._crit_edge.i521
  %i.oy = phi float [ %.pre.i523, %._crit_edge.i521 ], [ 1.000000e+00, %bb.ct ]
  store float %i.oy, ptr %i.j, align 4, !tbaa !141
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.oz = load float, ptr %i.l, align 4, !tbaa !141
  %i.pa = fcmp oeq float %i.oz, 0.000000e+00
  br i1 %i.pa, label %bb.cw, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

bb.cw:                                            ; preds = %bb.cv
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oj, i64 12276
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !303
  store float %i.pc, ptr %i.k, align 4, !tbaa !141
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

bb.cx:                                            ; preds = %bb.cp
  %i.pd = and i32 %.3, 268435456
  %.not428 = icmp eq i32 %i.pd, 0
  br i1 %.not428, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pe = load float, ptr %1, align 4, !tbaa !141 ; 2 uses
  store float %i.pe, ptr %i.j, align 4, !tbaa !141
  %i.pf = load float, ptr %i.cs, align 4, !tbaa !141 ; 2 uses
  store float %i.pf, ptr %i.k, align 4, !tbaa !141
  %i.pg = load float, ptr %i.cu, align 4, !tbaa !141 ; 2 uses
  store float %i.pg, ptr %i.l, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pe, float noundef %i.pf, float noundef %i.pg, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524:       ; preds = %bb.cw, %bb.cv, %bb.cq, %bb.cy, %bb.cx, %.thread
  %i.ph = load float, ptr %i.af, align 8, !tbaa !534 ; 4 uses
  %i.pi = fcmp olt float %i.ph, 0.000000e+00
  %i.pj = fcmp ogt float %i.ph, 1.000000e+00
  %i.pk = select i1 %i.pj, float 1.000000e+00, float %i.ph
  %i.pl = call float @llvm.fmuladd.f32(float %i.pk, float 2.550000e+02, float 5.000000e-01)
  %i.pm = select i1 %i.pi, float 5.000000e-01, float %i.pl
  %i.pn = fptosi float %i.pm to i32
  %i.po = shl i32 %i.pn, 24                       ; 11 uses
  %i.pp = or disjoint i32 %i.po, 16711680         ; 5 uses
  %i.pq = or disjoint i32 %i.po, 16776960         ; 5 uses
  %i.pr = or disjoint i32 %i.po, 16777215         ; 6 uses
  %i.ps = or disjoint i32 %i.po, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #36
  %i.pt = or disjoint i32 %i.po, 255              ; 7 uses
  store i32 %i.pt, ptr %i.v, align 16, !tbaa !188
  %i.pu = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.pv = or disjoint i32 %i.po, 65280            ; 5 uses
  %i.pw = or disjoint i32 %i.po, 65535            ; 5 uses
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !188
  %i.px = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.pv, ptr %i.px, align 8, !tbaa !188
  %i.py = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.pq, ptr %i.py, align 4, !tbaa !188
  %i.pz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.pp, ptr %i.pz, align 16, !tbaa !188
  %i.qa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.qb = or disjoint i32 %i.po, 16711935         ; 5 uses
  store i32 %i.qb, ptr %i.qa, align 4, !tbaa !188
  %i.qc = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.pt, ptr %i.qc, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  %i.qd = getelementptr inbounds nuw i8, ptr %27, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %27, align 8, !tbaa !141
  %i.qe = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.qe, align 8, !tbaa !285
  %i.qf = getelementptr inbounds nuw i8, ptr %27, i64 12
  store float %i.ph, ptr %i.qf, align 4, !tbaa !187
  %i.qg = load float, ptr %i.j, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.qg, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %27, ptr noundef nonnull align 4 dereferenceable(4) %i.qd, ptr noundef nonnull align 4 dereferenceable(4) %i.qe)
  %i.qh = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %27) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  %i.qi = load float, ptr %i.m, align 4, !tbaa !141
  %i.qj = load float, ptr %i.n, align 4, !tbaa !141
  %i.qk = load float, ptr %i.o, align 4, !tbaa !141
  %i.ql = load float, ptr %i.af, align 8, !tbaa !534
  store float %i.qi, ptr %28, align 4, !tbaa !284
  %i.qm = getelementptr inbounds nuw i8, ptr %28, i64 4
  store float %i.qj, ptr %i.qm, align 4, !tbaa !283
  %i.qn = getelementptr inbounds nuw i8, ptr %28, i64 8
  store float %i.qk, ptr %i.qn, align 4, !tbaa !285
  %i.qo = getelementptr inbounds nuw i8, ptr %28, i64 12
  store float %i.ql, ptr %i.qo, align 4, !tbaa !187
  %i.qp = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %28) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !141
  br i1 %.not415, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524
  %i.qq = fdiv float 5.000000e-01, %i.bs          ; 2 uses
  %i.qr = fptosi float %i.bs to i32
  %i.qs = sdiv i32 %i.qr, 12
  %i.qt = call noundef i32 @llvm.smax.i32(i32 %i.qs, i32 4)
  %i.qu = fneg float %i.qq
end_hunk_1
