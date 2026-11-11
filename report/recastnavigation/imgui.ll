Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui17DebugNodeDrawListEP11ImGuiWindowP14ImGuiViewportPPK10ImDrawListPKc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 3228
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !977
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 280
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 288
  %i.al = load float, ptr %i.ak, align 8, !tbaa !978
  %i.am = fadd float %i.ai, %i.al
  store float %i.am, ptr %i.aj, align 8, !tbaa !979
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  %i.ao = load float, ptr %i.an, align 4, !tbaa !341
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 284
  store float %i.ao, ptr %i.ap, align 4, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 328
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 320
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !86
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 340
  %i.au = load float, ptr %i.at, align 4, !tbaa !974
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  store float %i.au, ptr %i.av, align 8, !tbaa !975
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  store i8 1, ptr %i.aw, align 8, !tbaa !976
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store <4 x float> <float 1.000000e+00, float 4.000000e-01, float 4.000000e-01, float 1.000000e+00>, ptr %4, align 16, !tbaa !86
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull @.str.440) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.w, label %.sink.split, label %bb.ba

bb.g:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 8064
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !415
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !416
  %i.ba = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.az, i64 noundef 1, ptr noundef nonnull @.str.83) ; 8 uses
  %.not133 = icmp eq ptr %0, null
  br i1 %.not133, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %i.bc = icmp ne ptr %i.ba, null
  %or.cond = and i1 %i.bc, %i.bb
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !86
  %i.bg = load <2 x float>, ptr %i.be, align 4, !tbaa !86
  %i.bh = fadd <2 x float> %i.bf, %i.bg
  store <2 x float> %i.bh, ptr %5, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -16711681, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.w, label %bb.k, label %bb.ba

.thread:                                          ; preds = %bb.g
  br i1 %i.w, label %.thread143, label %bb.ba

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !414, !range !120, !noundef !254
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread143, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.441) #35
  br label %.thread143

.thread143:                                       ; preds = %.thread, %bb.l, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bm = sext i32 %.0120 to i64
  %i.bn = icmp sgt i32 %.0120, 0
  br i1 %i.bn, label %.lr.ph165, label %.sink.split

.lr.ph165:                                        ; preds = %.thread143
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !1678
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 10249
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 10250 ; 2 uses
  %i.bt = icmp ne ptr %i.ba, null                 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph165, %bb.az
  %.0119164 = phi ptr [ %i.bo, %.lr.ph165 ], [ %i.jw, %bb.az ] ; 13 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0119164, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1677 ; 2 uses
  %.not134 = icmp eq ptr %i.cc, null
  br i1 %.not134, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.0119164, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1679
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.442, ptr noundef nonnull %i.cc, ptr noundef %i.ce) #35
  br label %bb.az

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.cf = getelementptr inbounds nuw i8, ptr %.0119164, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1680 ; 2 uses
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1075
  %i.ci = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 30, ptr noundef nonnull @.str.767, i32 noundef %i.ch)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cj
  %.pre.i = load ptr, ptr %i.cf, align 8, !tbaa !1681
  br label %_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit

_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit: ; preds = %bb.o, %bb.p
  %i.cl = phi ptr [ %.pre.i, %bb.p ], [ null, %bb.o ] ; 2 uses
  %.0.i = phi ptr [ %i.ck, %bb.p ], [ %i.a, %bb.o ] ; 2 uses
  %i.cm = ptrtoint ptr %.0.i to i64
  %i.cn = sub i64 %i.bq, %i.cm
  %.not.i.i = icmp eq ptr %i.cl, null
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.0119164, i64 24
  %.in.i.i = select i1 %.not.i.i, ptr %i.cp, ptr %i.co
  %i.cq = load i64, ptr %.in.i.i, align 8, !tbaa !451
  %i.cr = shl i64 %i.cn, 32
  %i.cs = ashr exact i64 %i.cr, 32
  %.sroa.0.0..sroa.0.0..cast.i.i = inttoptr i64 %i.cq to ptr
  %i.ct = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %.0.i, i64 noundef %i.cs, ptr noundef nonnull @.str.761, ptr noundef %.sroa.0.0..sroa.0.0..cast.i.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.cu = getelementptr inbounds nuw i8, ptr %.0119164, i64 40 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !944
  %i.cw = udiv i32 %i.cv, 3
  %i.cx = load <4 x float>, ptr %.0119164, align 8, !tbaa !86
  %i.cy = fpext <4 x float> %i.cx to <4 x double> ; 4 uses
  %i.cz = extractelement <4 x double> %i.cy, i64 0
  %i.da = extractelement <4 x double> %i.cy, i64 1
  %i.db = extractelement <4 x double> %i.cy, i64 2
  %i.dc = extractelement <4 x double> %i.cy, i64 3
  %i.dd = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.443, i32 noundef %i.cw, ptr noundef nonnull %i.a, double noundef %i.cz, double noundef %i.da, double noundef %i.db, double noundef %i.dc) ; 0 uses
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !941
  %i.df = ptrtoint ptr %.0119164 to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 72
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.dj, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.b) #35
  %i.dl = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.dl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit
  %i.dm = load i8, ptr %i.br, align 1, !tbaa !1682, !range !120, !noundef !254
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = load i8, ptr %i.bs, align 2, !tbaa !1683, !range !120, !noundef !254
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond3 = and i1 %i.bt, %i.dp
  br i1 %or.cond3, label %.split121, label %bb.t

.split121:                                        ; preds = %bb.r
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0119164, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.bt, label %.split, label %bb.t

.split:                                           ; preds = %bb.s
  %i.dq = load i8, ptr %i.bs, align 2, !tbaa !1683, !range !120, !noundef !254
  %i.dr = trunc nuw i8 %i.dq to i1
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0119164, i1 noundef zeroext true, i1 noundef zeroext %i.dr)
  br label %bb.t

bb.t:                                             ; preds = %.split, %.split121, %bb.s, %bb.r, %_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit
  br i1 %i.dk, label %bb.u, label %bb.ay

bb.u:                                             ; preds = %bb.t
  %i.ds = load i32, ptr %i.u, align 8, !tbaa !1096
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.du = load ptr, ptr %i.bu, align 8, !tbaa !1097
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dv = phi ptr [ %i.du, %bb.v ], [ null, %bb.u ] ; 8 uses
  %i.dw = load ptr, ptr %i.bv, align 8, !tbaa !1098
  %i.dx = getelementptr inbounds nuw i8, ptr %.0119164, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !1099 ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [20 x i8], ptr %i.dw, i64 %i.dz ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0119164, i64 36 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !1100 ; 4 uses
  %i.ed = load i32, ptr %i.cu, align 8, !tbaa !944 ; 2 uses
  %i.ee = add i32 %i.ed, %i.ec                    ; 2 uses
  %i.ef = icmp ult i32 %i.ec, %i.ee
  br i1 %i.ef, label %.lr.ph, label %._crit_edge.a

.lr.ph:                                           ; preds = %bb.w
  %.not141 = icmp eq ptr %i.dv, null
  br label %.preheader146.a

._crit_edge.loopexit:                             ; preds = %.split150.us
  %10 = fpext float %i.eo to double
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge.loopexit, %bb.w
  %.0118.lcssa = phi double [ 0.000000e+00, %bb.w ], [ %10, %._crit_edge.loopexit ]
  %11 = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.444, i32 noundef %i.ed, i32 noundef %i.dy, i32 noundef %i.ec, double noundef %.0118.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !86
  %12 = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %6) #35 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %13 = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %or.cond6 = and i1 %i.bt, %13
  br i1 %or.cond6, label %bb.x, label %bb.y

.preheader146.a:                                  ; preds = %.lr.ph, %.split150.us
  %.0116152 = phi i32 [ %i.ec, %.lr.ph ], [ %.us-phi, %.split150.us ] ; 6 uses
  %.0118151.a = phi float [ 0.000000e+00, %.lr.ph ], [ %i.eo, %.split150.us ]
  %14 = zext i32 %.0116152 to i64                 ; 2 uses
  br i1 %.not141, label %.preheader146.split.us.preheader, label %.preheader146.split.preheader

.preheader146.split.preheader:                    ; preds = %.preheader146.a
  %15 = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !275
  %17 = zext i16 %16 to i64
  %18 = add nuw i32 %.0116152, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !275
  %22 = zext i16 %21 to i64
  %23 = add i32 %.0116152, 2
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !275
  %27 = zext i16 %26 to i64
  br label %.split150.us

.preheader146.split.us.preheader:                 ; preds = %.preheader146.a
  %28 = add nuw i32 %.0116152, 1
  %29 = zext i32 %28 to i64
  %30 = add i32 %.0116152, 2
  %31 = zext i32 %30 to i64
  br label %.split150.us

.split150.us:                                     ; preds = %.preheader146.split.preheader, %.preheader146.split.us.preheader
  %.pn = phi i64 [ %14, %.preheader146.split.us.preheader ], [ %17, %.preheader146.split.preheader ]
  %.pn213 = phi i64 [ %29, %.preheader146.split.us.preheader ], [ %22, %.preheader146.split.preheader ]
  %.pn215 = phi i64 [ %31, %.preheader146.split.us.preheader ], [ %27, %.preheader146.split.preheader ]
  %.us-phi = add i32 %.0116152, 3                 ; 2 uses
  %.sroa.15.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %.pn215 ; 2 uses
  %.sroa.18.0.in = getelementptr inbounds nuw i8, ptr %.sroa.15.0.in, i64 4
  %.sroa.18.0 = load float, ptr %.sroa.18.0.in, align 4 ; 2 uses
  %.sroa.15.0 = load float, ptr %.sroa.15.0.in, align 4
  %.sroa.9.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %.pn213 ; 2 uses
  %.sroa.12.0.in = getelementptr inbounds nuw i8, ptr %.sroa.9.0.in, i64 4
  %.sroa.12.0 = load float, ptr %.sroa.12.0.in, align 4 ; 2 uses
  %.sroa.9.0 = load float, ptr %.sroa.9.0.in, align 4
  %.sroa.0.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %.pn ; 2 uses
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in, i64 4
  %.sroa.6.0 = load float, ptr %.sroa.6.0.in, align 4 ; 2 uses
  %.sroa.0.0 = load float, ptr %.sroa.0.0.in, align 4
  %i.eg = fsub float %.sroa.12.0, %.sroa.18.0
  %i.eh = fsub float %.sroa.18.0, %.sroa.6.0
  %i.ei = fmul float %.sroa.9.0, %i.eh
  %i.ej = call float @llvm.fmuladd.f32(float %.sroa.0.0, float %i.eg, float %i.ei)
  %i.ek = fsub float %.sroa.6.0, %.sroa.12.0
  %i.el = call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.ek, float %i.ej)
  %i.em = call float @llvm.fabs.f32(float %i.el)
  %i.en = fmul float %i.em, 5.000000e-01
  %i.eo = fadd float %.0118151.a, %i.en           ; 2 uses
  %i.ep = icmp ult i32 %.us-phi, %i.ee
  br i1 %i.ep, label %.preheader146.a, label %._crit_edge.loopexit, !llvm.loop !1673

bb.x:                                             ; preds = %._crit_edge.a
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0119164, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.eq = load i32, ptr %i.cu, align 8, !tbaa !944
  %i.er = udiv i32 %i.eq, 3
  call void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.er, float noundef -1.000000e+00)
  %i.es = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  br i1 %i.es, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.y
  %.not136 = icmp eq ptr %i.dv, null              ; 3 uses
  br label %bb.z

.loopexit:                                        ; preds = %_ZN5ImGui13IsItemHoveredEi.exit.thread, %bb.z
  %i.et = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  br i1 %i.et, label %bb.z, label %._crit_edge163, !llvm.loop !1674

bb.z:                                             ; preds = %.lr.ph162, %.loopexit
  %i.eu = load i32, ptr %i.bw, align 8, !tbaa !335 ; 3 uses
  %i.ev = load i32, ptr %i.bx, align 4, !tbaa !377
  %i.ew = icmp slt i32 %i.eu, %i.ev
  br i1 %i.ew, label %.lr.ph160.preheader, label %.loopexit

.lr.ph160.preheader:                              ; preds = %bb.z
  %i.ex = load i32, ptr %i.eb, align 4, !tbaa !1100
  %i.ey = mul nsw i32 %i.eu, 3
  %i.ez = add i32 %i.ex, %i.ey
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %_ZN5ImGui13IsItemHoveredEi.exit.thread
  %.0113158 = phi i32 [ %indvars.iv.next175.2, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.ez, %.lr.ph160.preheader ] ; 3 uses
  %.0114157 = phi i32 [ %i.jt, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.eu, %.lr.ph160.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !86
  %i.fa = sext i32 %.0113158 to i64               ; 4 uses
  br i1 %.not136, label %.preheader.1, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph160
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !275
  %.pre = zext i16 %i.fc to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph160, %bb.aa
  %.pre-phi = phi i64 [ %i.fa, %.lr.ph160 ], [ %.pre, %bb.aa ]
  %i.fd = getelementptr inbounds [20 x i8], ptr %i.ea, i64 %.pre-phi ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 4, !tbaa !86
  store i64 %i.fe, ptr %8, align 16, !tbaa !86
  %i.ff = load <4 x float>, ptr %i.fd, align 4, !tbaa !86
  %i.fg = fpext <4 x float> %i.ff to <4 x double> ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !1685
  %i.fj = extractelement <4 x double> %i.fg, i64 0
  %i.fk = extractelement <4 x double> %i.fg, i64 1
  %i.fl = extractelement <4 x double> %i.fg, i64 2
  %i.fm = extractelement <4 x double> %i.fg, i64 3
  %i.fn = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.446, i32 noundef %.0113158, double noundef %i.fj, double noundef %i.fk, double noundef %i.fl, double noundef %i.fm, i32 noundef %i.fi)
  %i.fo = sext i32 %i.fn to i64                   ; 3 uses
  %i.fp = getelementptr inbounds i8, ptr %i.b, i64 %i.fo ; 2 uses
  %indvars.iv.next175 = add nsw i64 %i.fa, 1      ; 3 uses
  %i.fq = trunc nsw i64 %indvars.iv.next175 to i32
  br i1 %.not136, label %.preheader.2, label %bb.ab

bb.ab:                                            ; preds = %.preheader.1
  %i.fr = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %indvars.iv.next175
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !275
  %i.ft = zext i16 %i.fs to i64
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.ab, %.preheader.1
  %i.fu = phi i64 [ %i.ft, %bb.ab ], [ %indvars.iv.next175, %.preheader.1 ]
  %i.fv = getelementptr inbounds [20 x i8], ptr %i.ea, i64 %i.fu ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 4, !tbaa !86
  store i64 %i.fw, ptr %i.bz, align 8, !tbaa !86
  %gepdiff = sub nsw i64 300, %i.fo
  %i.fx = load <4 x float>, ptr %i.fv, align 4, !tbaa !86
  %i.fy = fpext <4 x float> %i.fx to <4 x double> ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !1685
  %i.gb = extractelement <4 x double> %i.fy, i64 0
  %i.gc = extractelement <4 x double> %i.fy, i64 1
  %i.gd = extractelement <4 x double> %i.fy, i64 2
  %i.ge = extractelement <4 x double> %i.fy, i64 3
  %i.gf = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.fp, i64 noundef %gepdiff, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.447, i32 noundef %i.fq, double noundef %i.gb, double noundef %i.gc, double noundef %i.gd, double noundef %i.ge, i32 noundef %i.ga)
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.fp, i64 %i.gg
  %indvars.iv.next175.1 = add nsw i64 %i.fa, 2    ; 3 uses
  %i.gi = trunc nsw i64 %indvars.iv.next175.1 to i32
  br i1 %.not136, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.2
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %indvars.iv.next175.1
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !275
  %i.gl = zext i16 %i.gk to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.2
  %i.gm = phi i64 [ %i.gl, %bb.ac ], [ %indvars.iv.next175.1, %.preheader.2 ]
  %i.gn = getelementptr inbounds [20 x i8], ptr %i.ea, i64 %i.gm ; 3 uses
  %i.go = load i64, ptr %i.gn, align 4, !tbaa !86
  store i64 %i.go, ptr %i.ca, align 16, !tbaa !86
  %i.gp = add nsw i64 %i.fo, %i.gg
  %gepdiff216 = sub nsw i64 300, %i.gp
  %i.gq = load <4 x float>, ptr %i.gn, align 4, !tbaa !86
  %i.gr = fpext <4 x float> %i.gq to <4 x double> ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !1685
  %i.gu = extractelement <4 x double> %i.gr, i64 0
  %i.gv = extractelement <4 x double> %i.gr, i64 1
  %i.gw = extractelement <4 x double> %i.gr, i64 2
  %i.gx = extractelement <4 x double> %i.gr, i64 3
  %i.gy = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.gh, i64 noundef %gepdiff216, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.447, i32 noundef %i.gi, double noundef %i.gu, double noundef %i.gv, double noundef %i.gw, double noundef %i.gx, i32 noundef %i.gt) ; 0 uses
  %indvars.iv.next175.2 = add i32 %.0113158, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !86
  %i.gz = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9) #35 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br i1 %i.bt, label %bb.ae, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ha = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 15 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 5184
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !309 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8073
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !685, !range !120, !noundef !254
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 8072
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !440, !range !120, !noundef !254
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 8076
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !394 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ha, i64 7704
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !441
  %i.hn = icmp eq i32 %i.hk, %i.hm
  %i.ho = icmp ne i32 %i.hk, 0
  %spec.select.i.i = and i1 %i.ho, %i.hn
  br i1 %spec.select.i.i, label %bb.ah, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ha, i64 7708
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !442
  %i.hr = and i32 %i.hq, 1024
  %.not70.i.not = icmp eq i32 %i.hr, 0
  br i1 %.not70.i.not, label %_ZN5ImGui13IsItemHoveredEi.exit, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ha, i64 7704
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ha, i64 7712
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !682 ; 2 uses
  %i.hv = and i32 %i.hu, 1
  %.not73.i = icmp eq i32 %i.hv, 0
  br i1 %.not73.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ha, i64 5192
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !687
  %.not75.i = icmp ne ptr %i.hx, %i.hc
  %i.hy = and i32 %i.hu, 128
  %i.hz = icmp eq i32 %i.hy, 0
  %or.cond94.i = and i1 %i.hz, %.not75.i
  br i1 %or.cond94.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ia = load i32, ptr %i.hs, align 8, !tbaa !441 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ha, i64 5300
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !665 ; 3 uses
  %.not76.i = icmp eq i32 %i.ic, 0
  %.not77.i = icmp eq i32 %i.ic, %i.ia
  %or.cond95.i = select i1 %.not76.i, i1 true, i1 %.not77.i
  br i1 %or.cond95.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.id = getelementptr inbounds nuw i8, ptr %i.ha, i64 5313
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !671, !range !120, !noundef !254
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hc, i64 140
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !645
  %.not78.i = icmp eq i32 %i.ic, %i.ih
  br i1 %.not78.i, label %bb.an, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ha, i64 8080
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !388 ; 2 uses
  %.not.i105.i = icmp eq ptr %i.ij, null
  br i1 %.not.i105.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 960
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !683 ; 6 uses
  %.not20.i.i = icmp eq ptr %i.il, null
  br i1 %.not20.i.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.ap

end_hunk_0
