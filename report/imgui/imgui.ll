Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui17DebugNodeDrawListEP11ImGuiWindowP14ImGuiViewportPPK10ImDrawListPKc:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !408
  %i.ad = icmp eq ptr %2, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 209
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !926, !range !100, !noundef !236
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN5ImGui8SameLineEff.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 3300
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !992
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 280
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 288
  %i.al = load float, ptr %i.ak, align 8, !tbaa !991
  %i.am = fadd float %i.ai, %i.al
  store float %i.am, ptr %i.aj, align 8, !tbaa !978
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  %i.ao = load float, ptr %i.an, align 4, !tbaa !321
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 284
  store float %i.ao, ptr %i.ap, align 4, !tbaa !318
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 328
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 320
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !75
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 340
  %i.au = load float, ptr %i.at, align 4, !tbaa !970
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  store float %i.au, ptr %i.av, align 8, !tbaa !971
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  store i8 1, ptr %i.aw, align 8, !tbaa !972
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store <4 x float> <float 1.000000e+00, float 4.000000e-01, float 4.000000e-01, float 1.000000e+00>, ptr %4, align 16, !tbaa !75
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull @.str.452)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br i1 %i.w, label %.sink.split, label %bb.bk

bb.g:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 8208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !399
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !400
  %i.ba = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.az, i64 noundef 1, ptr noundef nonnull @.str.86) ; 8 uses
  %.not139 = icmp eq ptr %0, null
  br i1 %.not139, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %i.bc = icmp ne ptr %i.ba, null
  %or.cond = and i1 %i.bc, %i.bb
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !75
  %i.bg = load <2 x float>, ptr %i.be, align 4, !tbaa !75
  %i.bh = fadd <2 x float> %i.bf, %i.bg
  store <2 x float> %i.bh, ptr %5, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.w, label %bb.k, label %bb.bk

.thread:                                          ; preds = %bb.g
  br i1 %i.w, label %.thread151, label %bb.bk

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !398, !range !100, !noundef !236
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread151, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.453)
  br label %.thread151

.thread151:                                       ; preds = %.thread, %bb.l, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bm = sext i32 %.0126 to i64
  %i.bn = icmp sgt i32 %.0126, 0
  br i1 %i.bn, label %.lr.ph172, label %.sink.split

.lr.ph172:                                        ; preds = %.thread151
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !1724
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 10497
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 10498 ; 2 uses
  %i.br = icmp ne ptr %i.ba, null                 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph172, %bb.bj
  %.0125171 = phi ptr [ %i.bo, %.lr.ph172 ], [ %i.jv, %bb.bj ] ; 13 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0125171, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1723 ; 2 uses
  %.not140 = icmp eq ptr %i.bz, null
  br i1 %.not140, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %.0125171, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1725
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.454, ptr noundef nonnull %i.bz, ptr noundef %i.cb)
  br label %bb.bj

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.cc = getelementptr inbounds nuw i8, ptr %.0125171, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.cc, align 8, !tbaa !435 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %_ZL31FormatTextureRefForDebugDisplayPci12ImTextureRef.exit, label %.else.i

.else.i:                                          ; preds = %bb.o
  %i.cd = load i32, ptr %.sroa.0.0.copyload, align 8, !tbaa !1079
  %i.ce = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 30, ptr noundef nonnull @.str.778, i32 noundef %i.cd)
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.a, i64 %i.cf
  %gepdiff.i = sub nsw i64 30, %i.cf
  br label %_ZL31FormatTextureRefForDebugDisplayPci12ImTextureRef.exit

_ZL31FormatTextureRefForDebugDisplayPci12ImTextureRef.exit: ; preds = %bb.o, %.else.i
  %i.ch = phi i64 [ %gepdiff.i, %.else.i ], [ 30, %bb.o ]
  %.012.i = phi ptr [ %i.cg, %.else.i ], [ %i.a, %bb.o ]
  %.sroa.0.0.copyload.pn = phi ptr [ %.sroa.0.0.copyload, %.else.i ], [ %.0125171, %bb.o ]
  %.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pn, i64 24
  %i.ci = load i64, ptr %.in, align 8, !tbaa !436
  %i.cj = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %.012.i, i64 noundef %i.ch, ptr noundef nonnull @.str.779, i64 noundef %i.ci) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ck = getelementptr inbounds nuw i8, ptr %.0125171, i64 40 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !946
  %i.cm = udiv i32 %i.cl, 3
  %i.cn = load <4 x float>, ptr %.0125171, align 8, !tbaa !75
  %i.co = fpext <4 x float> %i.cn to <4 x double> ; 4 uses
  %i.cp = extractelement <4 x double> %i.co, i64 0
  %i.cq = extractelement <4 x double> %i.co, i64 1
  %i.cr = extractelement <4 x double> %i.co, i64 2
  %i.cs = extractelement <4 x double> %i.co, i64 3
  %i.ct = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.455, i32 noundef %i.cm, ptr noundef nonnull %i.a, double noundef %i.cp, double noundef %i.cq, double noundef %i.cr, double noundef %i.cs) ; 0 uses
  %i.cu = load ptr, ptr %i.bl, align 8, !tbaa !943
  %i.cv = ptrtoint ptr %.0125171 to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 72
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.cz, ptr noundef nonnull @.str.83, ptr noundef nonnull %i.b)
  %i.db = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.db, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZL31FormatTextureRefForDebugDisplayPci12ImTextureRef.exit
  %i.dc = load i8, ptr %i.bp, align 1, !tbaa !1726, !range !100, !noundef !236
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = load i8, ptr %i.bq, align 2, !tbaa !1727, !range !100, !noundef !236
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond3 = and i1 %i.br, %i.df
  br i1 %or.cond3, label %.split127, label %bb.s

.split127:                                        ; preds = %bb.q
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0125171, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  br i1 %i.br, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.dg = load i8, ptr %i.bq, align 2, !tbaa !1727, !range !100, !noundef !236
  %i.dh = trunc nuw i8 %i.dg to i1
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0125171, i1 noundef zeroext true, i1 noundef zeroext %i.dh)
  br label %bb.s

bb.s:                                             ; preds = %.split, %.split127, %bb.r, %bb.q, %_ZL31FormatTextureRefForDebugDisplayPci12ImTextureRef.exit
  br i1 %i.da, label %bb.t, label %bb.bi

bb.t:                                             ; preds = %bb.s
  %i.di = load i32, ptr %i.u, align 8, !tbaa !1098
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dk = load ptr, ptr %i.bs, align 8, !tbaa !1099
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dl = phi ptr [ %i.dk, %bb.u ], [ null, %bb.t ] ; 8 uses
  %i.dm = load ptr, ptr %i.bt, align 8, !tbaa !1100
  %i.dn = getelementptr inbounds nuw i8, ptr %.0125171, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !1101 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [20 x i8], ptr %i.dm, i64 %i.dp ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0125171, i64 36 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !1102 ; 5 uses
  %i.dt = load i32, ptr %i.ck, align 8, !tbaa !946 ; 2 uses
  %i.du = add i32 %i.dt, %i.ds                    ; 3 uses
  %i.dv = icmp ult i32 %i.ds, %i.du
  br i1 %i.dv, label %.lr.ph, label %.preheader154.split.preheader

.lr.ph:                                           ; preds = %bb.v
  %.not149 = icmp eq ptr %i.dl, null
  br i1 %.not149, label %._crit_edge.a, label %.split160.us

._crit_edge.a:                                    ; preds = %.lr.ph, %._crit_edge.a
  %.0122162.us = phi i32 [ %24, %._crit_edge.a ], [ %i.ds, %.lr.ph ] ; 4 uses
  %.0124161.us = phi float [ %33, %._crit_edge.a ], [ 0.000000e+00, %.lr.ph ]
  %10 = zext i32 %.0122162.us to i64
  %11 = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %10 ; 2 uses
  %12 = load float, ptr %11, align 4
  %.sroa_idx189 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = load float, ptr %.sroa_idx189, align 4    ; 2 uses
  %14 = add nuw i32 %.0122162.us, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %15 ; 2 uses
  %17 = load float, ptr %16, align 4
  %.sroa_idx193 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load float, ptr %.sroa_idx193, align 4    ; 2 uses
  %19 = add i32 %.0122162.us, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %20 ; 2 uses
  %22 = load float, ptr %21, align 4
  %.sroa_idx197 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load float, ptr %.sroa_idx197, align 4    ; 2 uses
  %24 = add i32 %.0122162.us, 3                   ; 2 uses
  %25 = fsub float %18, %23
  %26 = fsub float %23, %13
  %27 = fmul float %17, %26
  %28 = call float @llvm.fmuladd.f32(float %12, float %25, float %27)
  %29 = fsub float %13, %18
  %30 = call float @llvm.fmuladd.f32(float %22, float %29, float %28)
  %31 = call float @llvm.fabs.f32(float %30)
  %32 = fmul float %31, 5.000000e-01
  %33 = fadd float %.0124161.us, %32              ; 2 uses
  %34 = icmp ult i32 %24, %i.du
  br i1 %34, label %._crit_edge.a, label %.preheader154.a, !llvm.loop !1719

.preheader154.a:                                  ; preds = %.split160.us, %._crit_edge.a
  %.0124161.a = phi float [ %33, %._crit_edge.a ], [ %i.ee, %.split160.us ]
  %35 = fpext float %.0124161.a to double
  br label %.preheader154.split.preheader

.preheader154.split.preheader:                    ; preds = %.preheader154.a, %bb.v
  %.0124.lcssa = phi double [ 0.000000e+00, %bb.v ], [ %35, %.preheader154.a ]
  %36 = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.456, i32 noundef %i.dt, i32 noundef %i.do, i32 noundef %i.ds, double noundef %.0124.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !75
  %37 = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %38 = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %or.cond6 = and i1 %i.br, %38
  br i1 %or.cond6, label %bb.w, label %bb.x

.split160.us:                                     ; preds = %.lr.ph, %.split160.us
  %.0122162 = phi i32 [ %56, %.split160.us ], [ %i.ds, %.lr.ph ] ; 4 uses
  %.0124161 = phi float [ %i.ee, %.split160.us ], [ 0.000000e+00, %.lr.ph ]
  %39 = zext i32 %.0122162 to i64
  %40 = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !255
  %42 = zext i16 %41 to i64
  %.sroa.15.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %42 ; 2 uses
  %43 = load float, ptr %.sroa.15.0.in, align 4
  %.sroa.18.0.in = getelementptr inbounds nuw i8, ptr %.sroa.15.0.in, i64 4
  %.sroa.18.0 = load float, ptr %.sroa.18.0.in, align 4 ; 2 uses
  %44 = add nuw i32 %.0122162, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !255
  %48 = zext i16 %47 to i64
  %.sroa.9.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %48 ; 2 uses
  %49 = load float, ptr %.sroa.9.0.in, align 4
  %.sroa.12.0.in = getelementptr inbounds nuw i8, ptr %.sroa.9.0.in, i64 4
  %.sroa.12.0 = load float, ptr %.sroa.12.0.in, align 4 ; 2 uses
  %50 = add i32 %.0122162, 2
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !255
  %54 = zext i16 %53 to i64
  %.sroa.0.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %54 ; 2 uses
  %55 = load float, ptr %.sroa.0.0.in, align 4
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in, i64 4
  %.sroa.6.0 = load float, ptr %.sroa.6.0.in, align 4 ; 2 uses
  %56 = add i32 %.0122162, 3                      ; 2 uses
  %i.dw = fsub float %.sroa.12.0, %.sroa.6.0
  %i.dx = fsub float %.sroa.6.0, %.sroa.18.0
  %i.dy = fmul float %49, %i.dx
  %i.dz = call float @llvm.fmuladd.f32(float %43, float %i.dw, float %i.dy)
  %i.ea = fsub float %.sroa.18.0, %.sroa.12.0
  %i.eb = call float @llvm.fmuladd.f32(float %55, float %i.ea, float %i.dz)
  %i.ec = call float @llvm.fabs.f32(float %i.eb)
  %i.ed = fmul float %i.ec, 5.000000e-01
  %i.ee = fadd float %.0124161, %i.ed             ; 2 uses
  %i.ef = icmp ult i32 %56, %i.du
  br i1 %i.ef, label %.split160.us, label %.preheader154.a, !llvm.loop !1719

bb.w:                                             ; preds = %.preheader154.split.preheader
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0125171, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader154.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7)
  %i.eg = load i32, ptr %i.ck, align 8, !tbaa !946
  %i.eh = udiv i32 %i.eg, 3
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef %i.eh, float noundef -1.000000e+00)
          to label %.preheader155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader155:                                    ; preds = %bb.x
  %.not144 = icmp eq ptr %i.dl, null              ; 3 uses
  br label %bb.y

.loopexit:                                        ; preds = %_ZN5ImGui13IsItemHoveredEi.exit.thread, %bb.aa
  br label %bb.y, !llvm.loop !1720

bb.y:                                             ; preds = %.preheader155, %.loopexit
  %i.ei = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  br i1 %i.ei, label %bb.aa, label %bb.bg

bb.aa:                                            ; preds = %bb.z
  %i.ej = load i32, ptr %7, align 8, !tbaa !315   ; 3 uses
  %i.ek = load i32, ptr %i.bu, align 4, !tbaa !358
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph170.preheader, label %.loopexit

.lr.ph170.preheader:                              ; preds = %bb.aa
  %i.em = load i32, ptr %i.dr, align 4, !tbaa !1102
  %i.en = mul nsw i32 %i.ej, 3
  %i.eo = add i32 %i.em, %i.en
  br label %.lr.ph170

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.bg, %bb.x
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %_ZN5ImGui13IsItemHoveredEi.exit.thread
  %.0115168 = phi i32 [ %indvars.iv.next183.2, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.eo, %.lr.ph170.preheader ] ; 3 uses
  %.0116167 = phi i32 [ %i.js, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.ej, %.lr.ph170.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !75
  %i.ep = sext i32 %.0115168 to i64               ; 4 uses
  br i1 %.not144, label %.preheader.1, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph170
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !255
  %.pre = zext i16 %i.er to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph170, %bb.ab
  %.pre-phi = phi i64 [ %i.ep, %.lr.ph170 ], [ %.pre, %bb.ab ]
  %i.es = getelementptr inbounds [20 x i8], ptr %i.dq, i64 %.pre-phi ; 3 uses
  %i.et = load i64, ptr %i.es, align 4, !tbaa !75
  store i64 %i.et, ptr %8, align 16, !tbaa !75
  %i.eu = load <4 x float>, ptr %i.es, align 4, !tbaa !75
  %i.ev = fpext <4 x float> %i.eu to <4 x double> ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !1729
  %i.ey = extractelement <4 x double> %i.ev, i64 0
  %i.ez = extractelement <4 x double> %i.ev, i64 1
  %i.fa = extractelement <4 x double> %i.ev, i64 2
  %i.fb = extractelement <4 x double> %i.ev, i64 3
  %i.fc = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.457, ptr noundef nonnull @.str.458, i32 noundef %.0115168, double noundef %i.ey, double noundef %i.ez, double noundef %i.fa, double noundef %i.fb, i32 noundef %i.ex)
  %i.fd = sext i32 %i.fc to i64                   ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %i.b, i64 %i.fd ; 2 uses
  %indvars.iv.next183 = add nsw i64 %i.ep, 1      ; 3 uses
  %i.ff = trunc nsw i64 %indvars.iv.next183 to i32
  br i1 %.not144, label %.preheader.2, label %bb.ac

bb.ac:                                            ; preds = %.preheader.1
  %i.fg = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %indvars.iv.next183
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !255
  %i.fi = zext i16 %i.fh to i64
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.ac, %.preheader.1
  %i.fj = phi i64 [ %i.fi, %bb.ac ], [ %indvars.iv.next183, %.preheader.1 ]
  %i.fk = getelementptr inbounds [20 x i8], ptr %i.dq, i64 %i.fj ; 3 uses
  %i.fl = load i64, ptr %i.fk, align 4, !tbaa !75
  store i64 %i.fl, ptr %i.bw, align 8, !tbaa !75
  %gepdiff = sub nsw i64 300, %i.fd
  %i.fm = load <4 x float>, ptr %i.fk, align 4, !tbaa !75
  %i.fn = fpext <4 x float> %i.fm to <4 x double> ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !1729
  %i.fq = extractelement <4 x double> %i.fn, i64 0
  %i.fr = extractelement <4 x double> %i.fn, i64 1
  %i.fs = extractelement <4 x double> %i.fn, i64 2
  %i.ft = extractelement <4 x double> %i.fn, i64 3
  %i.fu = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.fe, i64 noundef %gepdiff, ptr noundef nonnull @.str.457, ptr noundef nonnull @.str.459, i32 noundef %i.ff, double noundef %i.fq, double noundef %i.fr, double noundef %i.fs, double noundef %i.ft, i32 noundef %i.fp)
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fe, i64 %i.fv
  %indvars.iv.next183.1 = add nsw i64 %i.ep, 2    ; 3 uses
  %i.fx = trunc nsw i64 %indvars.iv.next183.1 to i32
  br i1 %.not144, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.preheader.2
  %i.fy = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %indvars.iv.next183.1
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !255
  %i.ga = zext i16 %i.fz to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader.2
  %i.gb = phi i64 [ %i.ga, %bb.ad ], [ %indvars.iv.next183.1, %.preheader.2 ]
  %i.gc = getelementptr inbounds [20 x i8], ptr %i.dq, i64 %i.gb ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 4, !tbaa !75
  store i64 %i.gd, ptr %i.bx, align 16, !tbaa !75
  %i.ge = add nsw i64 %i.fd, %i.fv
  %gepdiff226 = sub nsw i64 300, %i.ge
  %i.gf = load <4 x float>, ptr %i.gc, align 4, !tbaa !75
  %i.gg = fpext <4 x float> %i.gf to <4 x double> ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !1729
  %i.gj = extractelement <4 x double> %i.gg, i64 0
  %i.gk = extractelement <4 x double> %i.gg, i64 1
  %i.gl = extractelement <4 x double> %i.gg, i64 2
  %i.gm = extractelement <4 x double> %i.gg, i64 3
  %i.gn = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.fw, i64 noundef %gepdiff226, ptr noundef nonnull @.str.457, ptr noundef nonnull @.str.459, i32 noundef %i.fx, double noundef %i.gj, double noundef %i.gk, double noundef %i.gl, double noundef %i.gm, i32 noundef %i.gi) ; 0 uses
  %indvars.iv.next183.2 = add i32 %.0115168, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !75
  %i.go = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.af unwind label %bb.bd     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %i.br, label %bb.ag, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.gp = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 17 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 5312
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !289 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 8217
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !676, !range !100, !noundef !236
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 8216
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !424, !range !100, !noundef !236
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 8220
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !379 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 7848
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !425
  %i.hc = icmp eq i32 %i.gz, %i.hb
  %i.hd = icmp ne i32 %i.gz, 0
  %spec.select.i.i = and i1 %i.hd, %i.hc
  br i1 %spec.select.i.i, label %bb.aj, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.he = getelementptr inbounds nuw i8, ptr %i.gp, i64 7852
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !426
  %i.hg = and i32 %i.hf, 64
  %.not80.i.not = icmp eq i32 %i.hg, 0
  br i1 %.not80.i.not, label %_ZN5ImGui13IsItemHoveredEi.exit, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 7848
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gp, i64 7856
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !670 ; 2 uses
  %i.hk = and i32 %i.hj, 1
  %.not83.i = icmp eq i32 %i.hk, 0
  br i1 %.not83.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 5320
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !678
  %.not85.i = icmp ne ptr %i.hm, %i.gr
  %i.hn = and i32 %i.hj, 128
  %i.ho = icmp eq i32 %i.hn, 0
  %or.cond103.i = and i1 %i.ho, %.not85.i
  br i1 %or.cond103.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hp = load i32, ptr %i.hh, align 8, !tbaa !425 ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gp, i64 5428
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !652 ; 3 uses
  %.not86.i = icmp eq i32 %i.hr, 0
  %.not87.i = icmp eq i32 %i.hr, %i.hp
  %or.cond104.i = select i1 %.not86.i, i1 true, i1 %.not87.i
  br i1 %or.cond104.i, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gp, i64 5443
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !659, !range !100, !noundef !236
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gp, i64 5448
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !662, !range !100, !noundef !236
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %.critedge.i, label %bb.ap
end_hunk_0
