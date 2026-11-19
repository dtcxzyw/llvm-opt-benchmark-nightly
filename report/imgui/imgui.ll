Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui17DebugNodeDrawListEP11ImGuiWindowP14ImGuiViewportPPK10ImDrawListPKc:bb.a

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
  %i.dc = load i8, ptr %i.bp, align 1, !tbaa !1730, !range !100, !noundef !236
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = load i8, ptr %i.bq, align 2, !tbaa !1731, !range !100, !noundef !236
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond3 = and i1 %i.br, %i.df
  br i1 %or.cond3, label %.split127, label %bb.s

.split127:                                        ; preds = %bb.q
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0125171, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  br i1 %i.br, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.dg = load i8, ptr %i.bq, align 2, !tbaa !1731, !range !100, !noundef !236
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
  %i.dq = getelementptr inbounds nuw [20 x i8], ptr %i.dm, i64 %i.dp ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0125171, i64 36 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !1102 ; 4 uses
  %i.dt = load i32, ptr %i.ck, align 8, !tbaa !946 ; 2 uses
  %i.du = add i32 %i.dt, %i.ds                    ; 2 uses
  %i.dv = icmp ult i32 %i.ds, %i.du
  br i1 %i.dv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %.not149 = icmp eq ptr %i.dl, null
  br label %.preheader154

._crit_edge.loopexit:                             ; preds = %.split160.us
  %i.dw = fpext float %i.fa to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %.0124.lcssa = phi double [ 0.000000e+00, %bb.v ], [ %i.dw, %._crit_edge.loopexit ]
  %i.dx = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.456, i32 noundef %i.dt, i32 noundef %i.do, i32 noundef %i.ds, double noundef %.0124.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !75
  %i.dy = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.dz = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %or.cond6 = and i1 %i.br, %i.dz
  br i1 %or.cond6, label %bb.w, label %bb.x

.preheader154:                                    ; preds = %.lr.ph, %.split160.us
  %.0122162 = phi i32 [ %i.ds, %.lr.ph ], [ %.us-phi, %.split160.us ] ; 6 uses
  %.0124161 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.fa, %.split160.us ]
  %i.ea = zext i32 %.0122162 to i64               ; 2 uses
  br i1 %.not149, label %.preheader154.split.us.preheader, label %.preheader154.split.preheader

.preheader154.split.preheader:                    ; preds = %.preheader154
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !255
  %i.ed = zext i16 %i.ec to i64
  %i.ee = add nuw i32 %.0122162, 1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !255
  %i.ei = zext i16 %i.eh to i64
  %i.ej = add i32 %.0122162, 2
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !255
  %i.en = zext i16 %i.em to i64
  br label %.split160.us

.preheader154.split.us.preheader:                 ; preds = %.preheader154
  %i.eo = add nuw i32 %.0122162, 1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = add i32 %.0122162, 2
  %i.er = zext i32 %i.eq to i64
  br label %.split160.us

.split160.us:                                     ; preds = %.preheader154.split.preheader, %.preheader154.split.us.preheader
  %.pn221.a = phi i64 [ %i.ea, %.preheader154.split.us.preheader ], [ %i.ed, %.preheader154.split.preheader ]
  %.pn223 = phi i64 [ %i.ep, %.preheader154.split.us.preheader ], [ %i.ei, %.preheader154.split.preheader ]
  %.pn225 = phi i64 [ %i.er, %.preheader154.split.us.preheader ], [ %i.en, %.preheader154.split.preheader ]
  %.us-phi = add i32 %.0122162, 3                 ; 2 uses
  %.sroa.15.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %.pn225 ; 2 uses
  %.sroa.18.0.in = getelementptr inbounds nuw i8, ptr %.sroa.15.0.in, i64 4
  %.sroa.18.0 = load float, ptr %.sroa.18.0.in, align 4 ; 2 uses
  %.sroa.15.0 = load float, ptr %.sroa.15.0.in, align 4
  %.sroa.9.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %.pn223 ; 2 uses
  %.sroa.12.0.in = getelementptr inbounds nuw i8, ptr %.sroa.9.0.in, i64 4
  %.sroa.12.0 = load float, ptr %.sroa.12.0.in, align 4 ; 2 uses
  %.sroa.9.0 = load float, ptr %.sroa.9.0.in, align 4
  %.sroa.0.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.dq, i64 %.pn221.a ; 2 uses
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in, i64 4
  %.sroa.6.0 = load float, ptr %.sroa.6.0.in, align 4 ; 2 uses
  %.sroa.0.0 = load float, ptr %.sroa.0.0.in, align 4
  %i.es = fsub float %.sroa.12.0, %.sroa.18.0
  %i.et = fsub float %.sroa.18.0, %.sroa.6.0
  %i.eu = fmul float %.sroa.9.0, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %.sroa.0.0, float %i.es, float %i.eu)
  %i.ew = fsub float %.sroa.6.0, %.sroa.12.0
  %i.ex = call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.ew, float %i.ev)
  %i.ey = call float @llvm.fabs.f32(float %i.ex)
  %i.ez = fmul float %i.ey, 5.000000e-01
  %i.fa = fadd float %.0124161, %i.ez             ; 2 uses
  %i.fb = icmp ult i32 %.us-phi, %i.du
  br i1 %i.fb, label %.preheader154, label %._crit_edge.loopexit, !llvm.loop !1723

bb.w:                                             ; preds = %._crit_edge
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0125171, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7)
  %i.fc = load i32, ptr %i.ck, align 8, !tbaa !946
  %i.fd = udiv i32 %i.fc, 3
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef %i.fd, float noundef -1.000000e+00)
          to label %.preheader155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader155:                                    ; preds = %bb.x
  %.not144 = icmp eq ptr %i.dl, null              ; 3 uses
  br label %bb.y

.loopexit:                                        ; preds = %_ZN5ImGui13IsItemHoveredEi.exit.thread, %bb.aa
  br label %bb.y, !llvm.loop !1724

bb.y:                                             ; preds = %.preheader155, %.loopexit
  %i.fe = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  br i1 %i.fe, label %bb.aa, label %bb.bg

bb.aa:                                            ; preds = %bb.z
  %i.ff = load i32, ptr %7, align 8, !tbaa !315   ; 3 uses
  %i.fg = load i32, ptr %i.bu, align 4, !tbaa !358
  %i.fh = icmp slt i32 %i.ff, %i.fg
  br i1 %i.fh, label %.lr.ph170.preheader, label %.loopexit

.lr.ph170.preheader:                              ; preds = %bb.aa
  %i.fi = load i32, ptr %i.dr, align 4, !tbaa !1102
  %i.fj = mul nsw i32 %i.ff, 3
  %i.fk = add i32 %i.fi, %i.fj
  br label %.lr.ph170

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.bg, %bb.x
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %_ZN5ImGui13IsItemHoveredEi.exit.thread
  %.0115168 = phi i32 [ %indvars.iv.next183.2, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.fk, %.lr.ph170.preheader ] ; 3 uses
  %.0116167 = phi i32 [ %i.kh, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.ff, %.lr.ph170.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !75
  %10 = sext i32 %.0115168 to i64                 ; 4 uses
  br i1 %.not144, label %.preheader.1, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph170
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %10
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !255
  %.pre = zext i16 %i.fm to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph170, %bb.ab
  %.pre-phi = phi i64 [ %10, %.lr.ph170 ], [ %.pre, %bb.ab ]
  %i.fn = getelementptr inbounds [20 x i8], ptr %i.dq, i64 %.pre-phi ; 3 uses
  %i.fo = load i64, ptr %i.fn, align 4, !tbaa !75
  store i64 %i.fo, ptr %8, align 16, !tbaa !75
  %i.fp = load <4 x float>, ptr %i.fn, align 4, !tbaa !75
  %i.fq = fpext <4 x float> %i.fp to <4 x double> ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !1733
  %i.ft = extractelement <4 x double> %i.fq, i64 0
  %i.fu = extractelement <4 x double> %i.fq, i64 1
  %i.fv = extractelement <4 x double> %i.fq, i64 2
  %i.fw = extractelement <4 x double> %i.fq, i64 3
  %i.fx = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.457, ptr noundef nonnull @.str.458, i32 noundef %.0115168, double noundef %i.ft, double noundef %i.fu, double noundef %i.fv, double noundef %i.fw, i32 noundef %i.fs)
  %i.fy = sext i32 %i.fx to i64                   ; 3 uses
  %i.fz = getelementptr inbounds i8, ptr %i.b, i64 %i.fy ; 2 uses
  %indvars.iv.next183 = add nsw i64 %10, 1        ; 3 uses
  %11 = trunc nsw i64 %indvars.iv.next183 to i32
  br i1 %.not144, label %.preheader.2, label %bb.ac

bb.ac:                                            ; preds = %.preheader.1
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %indvars.iv.next183
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !255
  %12 = zext i16 %i.gb to i64
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.ac, %.preheader.1
  %13 = phi i64 [ %12, %bb.ac ], [ %indvars.iv.next183, %.preheader.1 ]
  %i.gc = getelementptr inbounds [20 x i8], ptr %i.dq, i64 %13 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 4, !tbaa !75
  store i64 %i.gd, ptr %i.bw, align 8, !tbaa !75
  %gepdiff = sub nsw i64 300, %i.fy
  %i.ge = load <4 x float>, ptr %i.gc, align 4, !tbaa !75
  %i.gf = fpext <4 x float> %i.ge to <4 x double> ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !1733
  %i.gi = extractelement <4 x double> %i.gf, i64 0
  %i.gj = extractelement <4 x double> %i.gf, i64 1
  %i.gk = extractelement <4 x double> %i.gf, i64 2
  %i.gl = extractelement <4 x double> %i.gf, i64 3
  %i.gm = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.fz, i64 noundef %gepdiff, ptr noundef nonnull @.str.457, ptr noundef nonnull @.str.459, i32 noundef %11, double noundef %i.gi, double noundef %i.gj, double noundef %i.gk, double noundef %i.gl, i32 noundef %i.gh)
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.fz, i64 %i.gn
  %indvars.iv.next183.1 = add nsw i64 %10, 2      ; 3 uses
  %14 = trunc nsw i64 %indvars.iv.next183.1 to i32
  br i1 %.not144, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.preheader.2
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %indvars.iv.next183.1
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !255
  %15 = zext i16 %i.gq to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader.2
  %16 = phi i64 [ %15, %bb.ad ], [ %indvars.iv.next183.1, %.preheader.2 ]
  %i.gr = getelementptr inbounds [20 x i8], ptr %i.dq, i64 %16 ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 4, !tbaa !75
  store i64 %i.gs, ptr %i.bx, align 16, !tbaa !75
  %i.gt = add nsw i64 %i.fy, %i.gn
  %gepdiff226 = sub nsw i64 300, %i.gt
  %i.gu = load <4 x float>, ptr %i.gr, align 4, !tbaa !75
  %i.gv = fpext <4 x float> %i.gu to <4 x double> ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !1733
  %i.gy = extractelement <4 x double> %i.gv, i64 0
  %i.gz = extractelement <4 x double> %i.gv, i64 1
  %i.ha = extractelement <4 x double> %i.gv, i64 2
  %i.hb = extractelement <4 x double> %i.gv, i64 3
  %i.hc = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.go, i64 noundef %gepdiff226, ptr noundef nonnull @.str.457, ptr noundef nonnull @.str.459, i32 noundef %14, double noundef %i.gy, double noundef %i.gz, double noundef %i.ha, double noundef %i.hb, i32 noundef %i.gx) ; 0 uses
  %indvars.iv.next183.2 = add i32 %.0115168, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !75
  %i.hd = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.af unwind label %bb.bd     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %i.br, label %bb.ag, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.he = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 17 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 5312
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !289 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8217
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !676, !range !100, !noundef !236
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 8216
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !424, !range !100, !noundef !236
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 8220
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !379 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 7848
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !425
  %i.hr = icmp eq i32 %i.ho, %i.hq
  %i.hs = icmp ne i32 %i.ho, 0
  %spec.select.i.i = and i1 %i.hs, %i.hr
  br i1 %spec.select.i.i, label %bb.aj, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 7852
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !426
  %i.hv = and i32 %i.hu, 64
  %.not80.i.not = icmp eq i32 %i.hv, 0
  br i1 %.not80.i.not, label %_ZN5ImGui13IsItemHoveredEi.exit, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 7848
  %i.hx = getelementptr inbounds nuw i8, ptr %i.he, i64 7856
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !670 ; 2 uses
  %i.hz = and i32 %i.hy, 1
  %.not83.i = icmp eq i32 %i.hz, 0
  br i1 %.not83.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ia = getelementptr inbounds nuw i8, ptr %i.he, i64 5320
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !678
  %.not85.i = icmp ne ptr %i.ib, %i.hg
  %i.ic = and i32 %i.hy, 128
  %i.id = icmp eq i32 %i.ic, 0
  %or.cond103.i = and i1 %i.id, %.not85.i
  br i1 %or.cond103.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ie = load i32, ptr %i.hw, align 8, !tbaa !425 ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.he, i64 5428
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !652 ; 3 uses
  %.not86.i = icmp eq i32 %i.ig, 0
  %.not87.i = icmp eq i32 %i.ig, %i.ie
  %or.cond104.i = select i1 %.not86.i, i1 true, i1 %.not87.i
  br i1 %or.cond104.i, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ih = getelementptr inbounds nuw i8, ptr %i.he, i64 5443
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !659, !range !100, !noundef !236
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ik = getelementptr inbounds nuw i8, ptr %i.he, i64 5448
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !662, !range !100, !noundef !236
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.in = getelementptr inbounds nuw i8, ptr %i.hg, i64 140
  %i.io = load i32, ptr %i.in, align 4, !tbaa !639
  %i.ip = icmp eq i32 %i.ig, %i.io
  br i1 %i.ip, label %bb.aq, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.iq = icmp eq i32 %i.ie, 0
  br i1 %i.iq, label %.critedge.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ir = getelementptr inbounds nuw i8, ptr %i.he, i64 5452
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !663
  %i.it = icmp eq i32 %i.is, %i.ie
  br i1 %i.it, label %.critedge.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

.critedge.i:                                      ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.am
  %i.iu = getelementptr inbounds nuw i8, ptr %i.he, i64 8224
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !370 ; 2 uses
  %.not.i114.i = icmp eq ptr %i.iv, null
  br i1 %.not.i114.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.as

bb.as:                                            ; preds = %.critedge.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 960
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !674 ; 6 uses
  %.not20.i.i = icmp eq ptr %i.ix, null
  br i1 %.not20.i.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 205
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !398, !range !100, !noundef !236
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.au, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i

bb.au:                                            ; preds = %bb.at
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hg, i64 960
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !674 ; 3 uses
  %.not21.i.i = icmp eq ptr %i.ix, %i.jc
  br i1 %.not21.i.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 20
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !614
  %i.jf = and i32 %i.je, 201326592
  %or.cond153.not = icmp eq i32 %i.jf, 0
  br i1 %or.cond153.not, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 960
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !674
  %i.ji = icmp eq ptr %i.jh, %i.ix
  br i1 %i.ji, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aw, %bb.ax
  %.079.i.i.i = phi ptr [ %i.jl, %bb.ax ], [ %i.jc, %bb.aw ] ; 2 uses
  %i.jj = icmp eq ptr %.079.i.i.i, %i.ix
  br i1 %i.jj, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 952
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !675 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.i, label %.lr.ph.i.i.i, !llvm.loop !31

_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.i: ; preds = %bb.ax
  %i.jm = getelementptr inbounds nuw i8, ptr %i.he, i64 7852
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !426
  %i.jo = and i32 %i.jn, 8192
  %.not88.i = icmp eq i32 %i.jo, 0
  br i1 %.not88.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i

_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i: ; preds = %.lr.ph.i.i.i, %bb.av, %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.i, %bb.aw, %bb.au, %bb.at, %bb.as, %.critedge.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.he, i64 7852
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !426 ; 2 uses
  %i.jr = and i32 %i.jq, 64
  %.not89.i.not = icmp eq i32 %i.jr, 0
  br i1 %.not89.i.not, label %bb.ay, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ay:                                            ; preds = %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.hg, i64 140
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !639
  %i.ju = icmp eq i32 %i.ie, %i.jt
  br i1 %i.ju, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hg, i64 206
  %i.jw = load i8, ptr %i.jv, align 2, !tbaa !679, !range !100, !noundef !236
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jy = and i32 %i.jq, 16384
  %i.jz = icmp ne i32 %i.jy, 0
  %i.ka = icmp ne i32 %i.ie, 0
  %or.cond.i = select i1 %i.jz, i1 %i.ka, i1 false
  br i1 %or.cond.i, label %bb.bb, label %_ZN5ImGui13IsItemHoveredEi.exit

bb.bb:                                            ; preds = %bb.ba
  %i.kb = getelementptr inbounds nuw i8, ptr %i.he, i64 5408
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !669
  %.not91.i = icmp eq i32 %i.kc, %i.ie
  br i1 %.not91.i, label %_ZN5ImGui13IsItemHoveredEi.exit, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

_ZN5ImGui13IsItemHoveredEi.exit:                  ; preds = %bb.ba, %bb.bb, %bb.aj
  %i.kd = load i32, ptr %i.bv, align 8, !tbaa !1103 ; 2 uses
  %i.ke = and i32 %i.kd, -2
  store i32 %i.ke, ptr %i.bv, align 8, !tbaa !1103
  invoke void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ba, ptr noundef nonnull %8, i32 noundef 3, i32 noundef -16711681, float noundef 1.000000e+00, i32 noundef 512)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN5ImGui13IsItemHoveredEi.exit
  store i32 %i.kd, ptr %i.bv, align 8, !tbaa !1103
  br label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.bd:                                            ; preds = %bb.ae
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.bf

bb.be:                                            ; preds = %_ZN5ImGui13IsItemHoveredEi.exit
end_hunk_0
