inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui17DebugNodeDrawListEP11ImGuiWindowPK10ImDrawListPKc:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %.0112174, i64 32 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !879
  %i.ci = udiv i32 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %.0112174, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1195
  %i.cl = load <4 x float>, ptr %.0112174, align 8, !tbaa !9
  %i.cm = fpext <4 x float> %i.cl to <4 x double> ; 4 uses
  %i.cn = extractelement <4 x double> %i.cm, i64 0
  %i.co = extractelement <4 x double> %i.cm, i64 1
  %i.cp = extractelement <4 x double> %i.cm, i64 2
  %i.cq = extractelement <4 x double> %i.cm, i64 3
  %i.cr = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 300, ptr noundef nonnull @.str.211, i32 noundef %i.ci, ptr noundef %i.ck, double noundef %i.cn, double noundef %i.co, double noundef %i.cp, double noundef %i.cq) ; 0 uses
  %i.cs = load ptr, ptr %i.bi, align 8, !tbaa !350
  %i.ct = ptrtoint ptr %.0112174 to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 56
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.cx, ptr noundef nonnull @.str.165, ptr noundef nonnull %i.a)
  %i.cz = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cz, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.da = load i8, ptr %i.bm, align 4, !tbaa !456, !range !210, !noundef !211
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = load i8, ptr %i.bn, align 1, !tbaa !457, !range !210, !noundef !211
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond = and i1 %i.bo, %i.dd
  br i1 %or.cond, label %.split124, label %bb.s

.split124:                                        ; preds = %bb.q
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ay, ptr noundef nonnull %1, ptr noundef nonnull %.0112174, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  br i1 %.old1.not, label %bb.s, label %.split

.split:                                           ; preds = %bb.r
  %i.de = load i8, ptr %i.bn, align 1, !tbaa !457, !range !210, !noundef !211
  %i.df = trunc nuw i8 %i.de to i1
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ay, ptr noundef nonnull %1, ptr noundef nonnull %.0112174, i1 noundef zeroext true, i1 noundef zeroext %i.df)
  br label %bb.s

bb.s:                                             ; preds = %.split, %.split124, %bb.r, %bb.q, %bb.o
  br i1 %i.cy, label %bb.t, label %bb.ax

bb.t:                                             ; preds = %bb.s
  %i.dg = load i32, ptr %i.t, align 8, !tbaa !1000
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %i.bp, align 8, !tbaa !1196
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dj = phi ptr [ %i.di, %bb.u ], [ null, %bb.t ] ; 11 uses
  %i.dk = load ptr, ptr %i.bq, align 8, !tbaa !1197
  %i.dl = getelementptr inbounds nuw i8, ptr %.0112174, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !1198 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [20 x i8], ptr %i.dk, i64 %i.dn ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0112174, i64 28 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !1199 ; 4 uses
  %i.dr = load i32, ptr %i.cg, align 8, !tbaa !879 ; 2 uses
  %i.ds = add i32 %i.dr, %i.dq                    ; 2 uses
  %i.dt = icmp ult i32 %i.dq, %i.ds
  br i1 %i.dt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %.not146 = icmp eq ptr %i.dj, null
  br label %.preheader157

._crit_edge.loopexit:                             ; preds = %.split161.us
  %i.du = fpext float %i.ey to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %.0123.lcssa = phi double [ 0.000000e+00, %bb.v ], [ %i.du, %._crit_edge.loopexit ]
  %i.dv = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 300, ptr noundef nonnull @.str.212, i32 noundef %i.dr, i32 noundef %i.dm, i32 noundef %i.dq, double noundef %.0123.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !9
  %i.dw = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.dx = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %or.cond4 = and i1 %i.bo, %i.dx
  br i1 %or.cond4, label %bb.w, label %bb.x

.preheader157:                                    ; preds = %.lr.ph, %.split161.us
  %.0121163 = phi i32 [ %i.dq, %.lr.ph ], [ %.us-phi, %.split161.us ] ; 6 uses
  %.0123162 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ey, %.split161.us ]
  %i.dy = zext i32 %.0121163 to i64               ; 2 uses
  br i1 %.not146, label %.preheader157.split.us.preheader, label %.preheader157.split.preheader

.preheader157.split.preheader:                    ; preds = %.preheader157
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !159
  %i.eb = zext i16 %i.ea to i64
  %i.ec = add nuw i32 %.0121163, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !159
  %i.eg = zext i16 %i.ef to i64
  %i.eh = add i32 %.0121163, 2
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !159
  %i.el = zext i16 %i.ek to i64
  br label %.split161.us

.preheader157.split.us.preheader:                 ; preds = %.preheader157
  %i.em = add nuw i32 %.0121163, 1
  %i.en = zext i32 %i.em to i64
  %i.eo = add i32 %.0121163, 2
  %i.ep = zext i32 %i.eo to i64
  br label %.split161.us

.split161.us:                                     ; preds = %.preheader157.split.preheader, %.preheader157.split.us.preheader
  %.pn = phi i64 [ %i.dy, %.preheader157.split.us.preheader ], [ %i.eb, %.preheader157.split.preheader ]
  %.pn235 = phi i64 [ %i.en, %.preheader157.split.us.preheader ], [ %i.eg, %.preheader157.split.preheader ]
  %.pn237 = phi i64 [ %i.ep, %.preheader157.split.us.preheader ], [ %i.el, %.preheader157.split.preheader ]
  %.us-phi = add i32 %.0121163, 3                 ; 2 uses
  %.sroa.15.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.do, i64 %.pn237 ; 2 uses
  %.sroa.18.0.in = getelementptr inbounds nuw i8, ptr %.sroa.15.0.in, i64 4
  %.sroa.18.0 = load float, ptr %.sroa.18.0.in, align 4 ; 2 uses
  %.sroa.15.0 = load float, ptr %.sroa.15.0.in, align 4
  %.sroa.9.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.do, i64 %.pn235 ; 2 uses
  %.sroa.12.0.in = getelementptr inbounds nuw i8, ptr %.sroa.9.0.in, i64 4
  %.sroa.12.0 = load float, ptr %.sroa.12.0.in, align 4 ; 2 uses
  %.sroa.9.0 = load float, ptr %.sroa.9.0.in, align 4
  %.sroa.0.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.do, i64 %.pn ; 2 uses
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in, i64 4
  %.sroa.6.0 = load float, ptr %.sroa.6.0.in, align 4 ; 2 uses
  %.sroa.0.0 = load float, ptr %.sroa.0.0.in, align 4
  %i.eq = fsub float %.sroa.12.0, %.sroa.18.0
  %i.er = fsub float %.sroa.18.0, %.sroa.6.0
  %i.es = fmul float %.sroa.9.0, %i.er
  %i.et = call float @llvm.fmuladd.f32(float %.sroa.0.0, float %i.eq, float %i.es)
  %i.eu = fsub float %.sroa.6.0, %.sroa.12.0
  %i.ev = call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.eu, float %i.et)
  %i.ew = call float @llvm.fabs.f32(float %i.ev)
  %i.ex = fmul float %i.ew, 5.000000e-01
  %i.ey = fadd float %.0123162, %i.ex             ; 2 uses
  %i.ez = icmp ult i32 %.us-phi, %i.ds
  br i1 %i.ez, label %.preheader157, label %._crit_edge.loopexit, !llvm.loop !1200

bb.w:                                             ; preds = %._crit_edge
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ay, ptr noundef nonnull %1, ptr noundef nonnull %.0112174, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.fa = load i32, ptr %i.cg, align 8, !tbaa !879
  %i.fb = udiv i32 %i.fa, 3
  %i.fc = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 7184
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !208
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8224
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !212 ; 3 uses
  %.not.i = icmp eq ptr %i.fg, null
  br i1 %.not.i, label %_ZN16ImGuiListClipper5BeginEif.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 506
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !221, !range !210, !noundef !211
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.z, label %_ZN16ImGuiListClipper5BeginEif.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.fg)
  br label %_ZN16ImGuiListClipper5BeginEif.exit

_ZN16ImGuiListClipper5BeginEif.exit:              ; preds = %bb.z, %bb.x, %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 220
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !233
  store float %i.fl, ptr %i.bs, align 4, !tbaa !255
  store float -1.000000e+00, ptr %i.bt, align 4, !tbaa !256
  store i32 %i.fb, ptr %i.br, align 4, !tbaa !219
  store i32 0, ptr %i.bu, align 4, !tbaa !257
  store i32 0, ptr %i.bv, align 4, !tbaa !258
  store i32 -1, ptr %6, align 4, !tbaa !259
  store i32 0, ptr %i.bw, align 4, !tbaa !260
  %i.fm = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 4 dereferenceable(28) %6)
  br i1 %i.fm, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %_ZN16ImGuiListClipper5BeginEif.exit
  %.not141 = icmp eq ptr %i.dj, null              ; 6 uses
  br i1 %i.bo, label %.lr.ph172.split.us, label %.lr.ph172.split

.lr.ph172.split.us:                               ; preds = %.lr.ph172, %.loopexit.us
  %i.fn = load i32, ptr %6, align 4, !tbaa !259   ; 3 uses
  %i.fo = load i32, ptr %i.bw, align 4, !tbaa !260 ; 2 uses
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %.lr.ph171.us.preheader, label %.loopexit.us

.lr.ph171.us.preheader:                           ; preds = %.lr.ph172.split.us
  %i.fq = load i32, ptr %i.dp, align 4, !tbaa !1199
  %i.fr = mul nsw i32 %i.fn, 3
  %i.fs = add i32 %i.fq, %i.fr
  br label %.lr.ph171.us

.loopexit.us:                                     ; preds = %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us, %.lr.ph172.split.us
  %i.ft = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 4 dereferenceable(28) %6)
  br i1 %i.ft, label %.lr.ph172.split.us, label %._crit_edge173, !llvm.loop !1201

.lr.ph171.us:                                     ; preds = %.lr.ph171.us.preheader, %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us
  %.0114169.us.us = phi i32 [ %indvars.iv.next192.2, %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us ], [ %i.fs, %.lr.ph171.us.preheader ] ; 3 uses
  %.0115168.us.us = phi i32 [ %i.jy, %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us ], [ %i.fn, %.lr.ph171.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !9
  %9 = sext i32 %.0114169.us.us to i64            ; 4 uses
  br i1 %.not141, label %.preheader.us.us.1, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph171.us
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %9
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !159
  %.pre209 = zext i16 %i.fv to i64
  br label %.preheader.us.us.1

.preheader.us.us.1:                               ; preds = %bb.aa, %.lr.ph171.us
  %.pre-phi210 = phi i64 [ %.pre209, %bb.aa ], [ %9, %.lr.ph171.us ]
  %i.fw = getelementptr inbounds [20 x i8], ptr %i.do, i64 %.pre-phi210 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 4
  store i64 %i.fx, ptr %7, align 16
  %i.fy = load <4 x float>, ptr %i.fw, align 4, !tbaa !9
  %i.fz = fpext <4 x float> %i.fy to <4 x double> ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !1202
  %i.gc = extractelement <4 x double> %i.fz, i64 0
  %i.gd = extractelement <4 x double> %i.fz, i64 1
  %i.ge = extractelement <4 x double> %i.fz, i64 2
  %i.gf = extractelement <4 x double> %i.fz, i64 3
  %i.gg = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 300, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, i32 noundef %.0114169.us.us, double noundef %i.gc, double noundef %i.gd, double noundef %i.ge, double noundef %i.gf, i32 noundef %i.gb)
  %i.gh = sext i32 %i.gg to i64                   ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %i.a, i64 %i.gh ; 2 uses
  %indvars.iv.next192 = add nsw i64 %9, 1         ; 3 uses
  %i.gj = trunc nsw i64 %indvars.iv.next192 to i32
  br i1 %.not141, label %.preheader.us.us.2, label %bb.ab

bb.ab:                                            ; preds = %.preheader.us.us.1
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %indvars.iv.next192
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !159
  %i.gm = zext i16 %i.gl to i64
  br label %.preheader.us.us.2

.preheader.us.us.2:                               ; preds = %bb.ab, %.preheader.us.us.1
  %i.gn = phi i64 [ %i.gm, %bb.ab ], [ %indvars.iv.next192, %.preheader.us.us.1 ]
  %i.go = getelementptr inbounds [20 x i8], ptr %i.do, i64 %i.gn ; 3 uses
  %i.gp = load i64, ptr %i.go, align 4
  store i64 %i.gp, ptr %i.ca, align 8
  %gepdiff239 = sub nsw i64 300, %i.gh
  %i.gq = load <4 x float>, ptr %i.go, align 4, !tbaa !9
  %i.gr = fpext <4 x float> %i.gq to <4 x double> ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !1202
  %i.gu = extractelement <4 x double> %i.gr, i64 0
  %i.gv = extractelement <4 x double> %i.gr, i64 1
  %i.gw = extractelement <4 x double> %i.gr, i64 2
  %i.gx = extractelement <4 x double> %i.gr, i64 3
  %i.gy = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.gi, i64 noundef %gepdiff239, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.215, i32 noundef %i.gj, double noundef %i.gu, double noundef %i.gv, double noundef %i.gw, double noundef %i.gx, i32 noundef %i.gt)
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gi, i64 %i.gz
  %indvars.iv.next192.1 = add nsw i64 %9, 2       ; 3 uses
  %i.hb = trunc nsw i64 %indvars.iv.next192.1 to i32
  br i1 %.not141, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.us.us.2
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %indvars.iv.next192.1
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !159
  %i.he = zext i16 %i.hd to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.us.us.2
  %i.hf = phi i64 [ %i.he, %bb.ac ], [ %indvars.iv.next192.1, %.preheader.us.us.2 ]
  %i.hg = getelementptr inbounds [20 x i8], ptr %i.do, i64 %i.hf ; 3 uses
  %i.hh = load i64, ptr %i.hg, align 4
  store i64 %i.hh, ptr %i.cb, align 16
  %i.hi = add nsw i64 %i.gh, %i.gz
  %gepdiff240 = sub nsw i64 300, %i.hi
  %i.hj = load <4 x float>, ptr %i.hg, align 4, !tbaa !9
  %i.hk = fpext <4 x float> %i.hj to <4 x double> ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !1202
  %i.hn = extractelement <4 x double> %i.hk, i64 0
  %i.ho = extractelement <4 x double> %i.hk, i64 1
  %i.hp = extractelement <4 x double> %i.hk, i64 2
  %i.hq = extractelement <4 x double> %i.hk, i64 3
  %i.hr = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.ha, i64 noundef %gepdiff240, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.215, i32 noundef %i.hb, double noundef %i.hn, double noundef %i.ho, double noundef %i.hp, double noundef %i.hq, i32 noundef %i.hm) ; 0 uses
  %indvars.iv.next192.2 = add i32 %.0114169.us.us, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !9
  %i.hs = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %i.ht = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 13 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 7184
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !208 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 7763
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !421, !range !210, !noundef !211
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 7762
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !320, !range !210, !noundef !211
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 7372
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !422
  %i.ie = and i32 %i.id, 4
  %.not.i151.not.us.us = icmp eq i32 %i.ie, 0
  br i1 %.not.i151.not.us.us, label %_ZN5ImGui13IsItemHoveredEi.exit.us.us, label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us

_ZN5ImGui13IsItemHoveredEi.exit.us.us:            ; preds = %bb.af
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 7696
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !319 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 7368
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !423
  %.not.i.i.us.us = icmp eq i32 %i.ig, %i.ii
  %i.ij = icmp ne i32 %i.ig, 0
  %or.cond.not.i.i.us.us = and i1 %i.ij, %.not.i.i.us.us
  br i1 %or.cond.not.i.i.us.us, label %_ZN5ImGui13IsItemHoveredEi.exit.thread154.us.us, label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 7368 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ht, i64 7376
  %i.im = load i32, ptr %i.il, align 8, !tbaa !420 ; 2 uses
  %i.in = and i32 %i.im, 1
  %.not27.i.us.us = icmp eq i32 %i.in, 0
  br i1 %.not27.i.us.us, label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.io = getelementptr inbounds nuw i8, ptr %i.ht, i64 7192
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !424
  %.not28.i.us.us = icmp ne ptr %i.ip, %i.hv
  %i.iq = and i32 %i.im, 128
  %i.ir = icmp eq i32 %i.iq, 0
  %or.cond37.i.us.us = and i1 %i.ir, %.not28.i.us.us
  br i1 %or.cond37.i.us.us, label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %i.ht, i64 7260
  %i.it = load i32, ptr %i.is, align 4, !tbaa !331 ; 3 uses
  %.not29.i.us.us = icmp eq i32 %i.it, 0
  br i1 %.not29.i.us.us, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iu = load i32, ptr %i.ik, align 8, !tbaa !423
  %.not30.i.us.us = icmp eq i32 %i.it, %i.iu
  br i1 %.not30.i.us.us, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ht, i64 7273
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !405, !range !210, !noundef !211
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hv, i64 84
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !336
  %.not31.i.us.us = icmp eq i32 %i.it, %i.iz
  br i1 %.not31.i.us.us, label %bb.am, label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ht, i64 7688
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !425 ; 2 uses
  %.not.i39.i.us.us = icmp eq ptr %i.jb, null
  br i1 %.not.i39.i.us.us, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 832
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !426 ; 4 uses
  %.not13.i.i.us.us = icmp eq ptr %i.jd, null
  br i1 %.not13.i.i.us.us, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 143
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !427, !range !210, !noundef !211
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hv, i64 832
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !426
  %.not14.i.i.us.us = icmp eq ptr %i.jd, %i.ji
  br i1 %.not14.i.i.us.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !428
  %i.jl = and i32 %i.jk, 201326592
  %or.cond156.not.us.us = icmp eq i32 %i.jl, 0
  br i1 %or.cond156.not.us.us, label %bb.ar, label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ht, i64 7372
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !422
  %i.jo = and i32 %i.jn, 4
  %.not32.i.not.us.us = icmp eq i32 %i.jo, 0
  br i1 %.not32.i.not.us.us, label %bb.as, label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us

bb.as:                                            ; preds = %bb.ar
  %i.jp = load i32, ptr %i.ik, align 8, !tbaa !423
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hv, i64 84
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !336
  %i.js = icmp eq i32 %i.jp, %i.jr
  br i1 %i.js, label %bb.at, label %_ZN5ImGui13IsItemHoveredEi.exit.thread154.us.us

bb.at:                                            ; preds = %bb.as
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hv, i64 144
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !429, !range !210, !noundef !211
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us, label %_ZN5ImGui13IsItemHoveredEi.exit.thread154.us.us

_ZN5ImGui13IsItemHoveredEi.exit.thread154.us.us:  ; preds = %bb.at, %bb.as, %_ZN5ImGui13IsItemHoveredEi.exit.us.us
  %i.jw = load i32, ptr %i.bx, align 8, !tbaa !1204 ; 2 uses
  %i.jx = and i32 %i.jw, -2
  store i32 %i.jx, ptr %i.bx, align 8, !tbaa !1204
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.ay, ptr noundef nonnull %7, i32 noundef 3, i32 noundef -16711681, i32 noundef 1, float noundef 1.000000e+00)
  store i32 %i.jw, ptr %i.bx, align 8, !tbaa !1204
  br label %_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us

_ZN5ImGui13IsItemHoveredEi.exit.thread.us.us:     ; preds = %_ZN5ImGui13IsItemHoveredEi.exit.thread154.us.us, %bb.at, %bb.ar, %bb.aq, %bb.al, %bb.ah, %bb.ag, %_ZN5ImGui13IsItemHoveredEi.exit.us.us, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.jy = add i32 %.0115168.us.us, 1              ; 2 uses
  %exitcond197.not = icmp eq i32 %i.jy, %i.fo
  br i1 %exitcond197.not, label %.loopexit.us, label %.lr.ph171.us, !llvm.loop !1205

.loopexit:                                        ; preds = %_ZN5ImGui13IsItemHoveredEi.exit.thread, %.lr.ph172.split
  %i.jz = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 4 dereferenceable(28) %6)
  br i1 %i.jz, label %.lr.ph172.split, label %._crit_edge173, !llvm.loop !1201

.lr.ph172.split:                                  ; preds = %.lr.ph172, %.loopexit
  %i.ka = load i32, ptr %6, align 4, !tbaa !259   ; 3 uses
  %i.kb = load i32, ptr %i.bw, align 4, !tbaa !260 ; 2 uses
  %i.kc = icmp slt i32 %i.ka, %i.kb
  br i1 %i.kc, label %.lr.ph171.preheader, label %.loopexit

.lr.ph171.preheader:                              ; preds = %.lr.ph172.split
  %i.kd = load i32, ptr %i.dp, align 4, !tbaa !1199
  %i.ke = mul nsw i32 %i.ka, 3
  %i.kf = add i32 %i.kd, %i.ke
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %_ZN5ImGui13IsItemHoveredEi.exit.thread
  %.0114169 = phi i32 [ %indvars.iv.next187.2, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.kf, %.lr.ph171.preheader ] ; 3 uses
  %.0115168 = phi i32 [ %i.mf, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.ka, %.lr.ph171.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !9
  %10 = sext i32 %.0114169 to i64                 ; 4 uses
  br i1 %.not141, label %.preheader.1, label %bb.au

bb.au:                                            ; preds = %.lr.ph171
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %10
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !159
  %.pre = zext i16 %i.kh to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph171, %bb.au
  %.pre-phi = phi i64 [ %10, %.lr.ph171 ], [ %.pre, %bb.au ]
  %i.ki = getelementptr inbounds [20 x i8], ptr %i.do, i64 %.pre-phi ; 3 uses
  %i.kj = load i64, ptr %i.ki, align 4
  store i64 %i.kj, ptr %7, align 16
  %i.kk = load <4 x float>, ptr %i.ki, align 4, !tbaa !9
  %i.kl = fpext <4 x float> %i.kk to <4 x double> ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !1202
  %i.ko = extractelement <4 x double> %i.kl, i64 0
  %i.kp = extractelement <4 x double> %i.kl, i64 1
  %i.kq = extractelement <4 x double> %i.kl, i64 2
  %i.kr = extractelement <4 x double> %i.kl, i64 3
  %i.ks = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 300, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, i32 noundef %.0114169, double noundef %i.ko, double noundef %i.kp, double noundef %i.kq, double noundef %i.kr, i32 noundef %i.kn)
  %i.kt = sext i32 %i.ks to i64                   ; 3 uses
  %i.ku = getelementptr inbounds i8, ptr %i.a, i64 %i.kt ; 2 uses
  %indvars.iv.next187.a = add nsw i64 %10, 1      ; 3 uses
  %i.kv = trunc nsw i64 %indvars.iv.next187.a to i32
  br i1 %.not141, label %.preheader.2, label %bb.av

bb.av:                                            ; preds = %.preheader.1
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %indvars.iv.next187.a
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !159
  %i.ky = zext i16 %i.kx to i64
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.av, %.preheader.1
  %i.kz = phi i64 [ %i.ky, %bb.av ], [ %indvars.iv.next187.a, %.preheader.1 ]
  %i.la = getelementptr inbounds [20 x i8], ptr %i.do, i64 %i.kz ; 3 uses
  %i.lb = load i64, ptr %i.la, align 4
  store i64 %i.lb, ptr %i.by, align 8
  %gepdiff = sub nsw i64 300, %i.kt
  %i.lc = load <4 x float>, ptr %i.la, align 4, !tbaa !9
  %i.ld = fpext <4 x float> %i.lc to <4 x double> ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !1202
  %i.lg = extractelement <4 x double> %i.ld, i64 0
  %i.lh = extractelement <4 x double> %i.ld, i64 1
  %i.li = extractelement <4 x double> %i.ld, i64 2
  %i.lj = extractelement <4 x double> %i.ld, i64 3
  %i.lk = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.ku, i64 noundef %gepdiff, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.215, i32 noundef %i.kv, double noundef %i.lg, double noundef %i.lh, double noundef %i.li, double noundef %i.lj, i32 noundef %i.lf)
  %i.ll = sext i32 %i.lk to i64                   ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ku, i64 %i.ll
  %indvars.iv.next187.1 = add nsw i64 %10, 2      ; 3 uses
  %i.ln = trunc nsw i64 %indvars.iv.next187.1 to i32
  br i1 %.not141, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %.preheader.2
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %indvars.iv.next187.1
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !159
  %i.lq = zext i16 %i.lp to i64
  br label %_ZN5ImGui13IsItemHoveredEi.exit.thread

_ZN5ImGui13IsItemHoveredEi.exit.thread:           ; preds = %bb.aw, %.preheader.2
  %i.lr = phi i64 [ %i.lq, %bb.aw ], [ %indvars.iv.next187.1, %.preheader.2 ]
  %i.ls = getelementptr inbounds [20 x i8], ptr %i.do, i64 %i.lr ; 3 uses
  %i.lt = load i64, ptr %i.ls, align 4
  store i64 %i.lt, ptr %i.bz, align 16
  %i.lu = add nsw i64 %i.kt, %i.ll
  %gepdiff238 = sub nsw i64 300, %i.lu
  %i.lv = load <4 x float>, ptr %i.ls, align 4, !tbaa !9
  %i.lw = fpext <4 x float> %i.lv to <4 x double> ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !1202
  %i.lz = extractelement <4 x double> %i.lw, i64 0
  %i.ma = extractelement <4 x double> %i.lw, i64 1
  %i.mb = extractelement <4 x double> %i.lw, i64 2
  %i.mc = extractelement <4 x double> %i.lw, i64 3
  %i.md = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.lm, i64 noundef %gepdiff238, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.215, i32 noundef %i.ln, double noundef %i.lz, double noundef %i.ma, double noundef %i.mb, double noundef %i.mc, i32 noundef %i.ly) ; 0 uses
  %indvars.iv.next187.2 = add i32 %.0114169, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !9
  %i.me = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.mf = add i32 %.0115168, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.mf, %i.kb
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph171, !llvm.loop !1205

._crit_edge173:                                   ; preds = %.loopexit, %.loopexit.us, %_ZN16ImGuiListClipper5BeginEif.exit
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.ax

bb.ax:                                            ; preds = %bb.s, %._crit_edge173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.n
  %i.mg = getelementptr inbounds nuw i8, ptr %.0112174, i64 56 ; 2 uses
  %i.mh = load ptr, ptr %i.bi, align 8, !tbaa !1193
  %i.mi = getelementptr inbounds nuw [56 x i8], ptr %i.mh, i64 %i.bj
  %i.mj = icmp ult ptr %i.mg, %i.mi
  br i1 %i.mj, label %bb.m, label %.sink.split, !llvm.loop !1206

.sink.split:                                      ; preds = %bb.ay, %.thread152, %_ZN5ImGui8SameLineEff.exit
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %.thread, %bb.j, %_ZN5ImGui8SameLineEff.exit
  ret void
}

declare noundef float @_ZN5ImGui25GetTreeNodeToLabelSpacingEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17DebugNodeViewportEP14ImGuiViewportP(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext true, i32 noundef 2)
  %i.a = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251, i32 noundef 0)
  br i1 %i.a, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !651    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <4 x float>, ptr %i.c, align 4, !tbaa !9
  %i.e = fpext <4 x float> %i.d to <4 x double>   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load <4 x float>, ptr %i.f, align 8, !tbaa !9
  %i.h = fpext <4 x float> %i.g to <4 x double>   ; 4 uses
  %i.i = extractelement <4 x double> %i.e, i64 0
  %i.j = extractelement <4 x double> %i.e, i64 1
  %i.k = extractelement <4 x double> %i.e, i64 2
  %i.l = extractelement <4 x double> %i.e, i64 3
  %i.m = extractelement <4 x double> %i.h, i64 0
  %i.n = extractelement <4 x double> %i.h, i64 1
  %i.o = extractelement <4 x double> %i.h, i64 2
  %i.p = extractelement <4 x double> %i.h, i64 3
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.252, double noundef %i.i, double noundef %i.j, double noundef %i.k, double noundef %i.l, double noundef %i.m, double noundef %i.n, double noundef %i.o, double noundef %i.p)
  %i.q = load i32, ptr %0, align 8, !tbaa !651
  %i.r = and i32 %i.b, 1
  %.not = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not, ptr @.str.2, ptr @.str.254
  %i.t = and i32 %i.b, 2
  %.not22 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not22, ptr @.str.2, ptr @.str.255
  %i.v = and i32 %i.b, 4
  %.not23 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not23, ptr @.str.2, ptr @.str.256
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.253, i32 noundef %i.q, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, ptr noundef nonnull %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !957
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !957
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.b ] ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !961
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.1
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !586
  tail call void @_ZN5ImGui17DebugNodeDrawListEP11ImGuiWindowPK10ImDrawListPKc(ptr noundef null, ptr noundef %i.ah, ptr noundef nonnull @.str.140)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !957
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.1, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge.1, !llvm.loop !1207

._crit_edge.1:                                    ; preds = %bb.b, %._crit_edge
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !961
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !586
  tail call void @_ZN5ImGui17DebugNodeDrawListEP11ImGuiWindowPK10ImDrawListPKc(ptr noundef null, ptr noundef %i.an, ptr noundef nonnull @.str.140)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !957
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.c, label %._crit_edge, !llvm.loop !1207

bb.d:                                             ; preds = %._crit_edge.1, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui15DebugNodeTabBarEP11ImGuiTabBarPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %3 = alloca %struct.ImVec2, align 4             ; 5 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1208
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 7056
  %i.g = load i32, ptr %i.f, align 8, !tbaa !464
  %i.h = add nsw i32 %i.g, -2
  %.not = icmp slt i32 %i.d, %i.h                 ; 2 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1210
  %i.l = load i32, ptr %0, align 8, !tbaa !1211
  %i.m = select i1 %.not, ptr @.str.240, ptr @.str.2
  %i.n = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull @.str.239, ptr noundef %1, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull %i.m)
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o ; 2 uses
  %gepdiff = sub nsw i64 256, %i.o
  %i.q = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.p, i64 noundef %gepdiff, ptr noundef nonnull @.str.241)
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r ; 3 uses
  %i.t = load i32, ptr %0, align 8, !tbaa !1211
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !946
  %i.y = add nsw i64 %i.o, %i.r
  %gepdiff93 = sub nsw i64 256, %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1212 ; 2 uses
  %.not72.peel = icmp eq i32 %i.aa, -1
  br i1 %.not72.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !1214
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.ae = phi ptr [ %i.ad, %bb.b ], [ @.str.244, %.lr.ph ]
  %i.af = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.s, i64 noundef %gepdiff93, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.2, ptr noundef %i.ae)
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.s, i64 %i.ag ; 3 uses
  %i.ai = load i32, ptr %0, align 8, !tbaa !1211
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %.peel.next.peel, label %._crit_edge

.peel.next.peel:                                  ; preds = %bb.c
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !946
  %i.al = add nsw i64 %i.o, %i.r
  %i.am = add nsw i64 %i.al, %i.ag
  %gepdiff103 = sub nsw i64 256, %i.am
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 68
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1212 ; 2 uses
  %.not72.peel100 = icmp eq i32 %i.ao, -1
  br i1 %.not72.peel100, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.peel.next.peel
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !1214
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.peel.next.peel
  %i.as = phi ptr [ %i.ar, %bb.d ], [ @.str.244, %.peel.next.peel ]
  %i.at = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.ah, i64 noundef %gepdiff103, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243, ptr noundef %i.as)
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ah, i64 %i.au ; 4 uses
  %i.aw = load i32, ptr %0, align 8, !tbaa !1211
  %i.ax = icmp sgt i32 %i.aw, 2
  br i1 %i.ax, label %.peel.next.preheader.peel.newph, label %._crit_edge

.peel.next.preheader.peel.newph:                  ; preds = %bb.e
end_hunk_0
