inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui11FocusWindowEP11ImGuiWindow:bb.a
  store i32 0, ptr %i.n, align 8, !tbaa !593
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 7789
  store i8 0, ptr %i.o, align 1, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 7788
  store i8 0, ptr %i.p, align 4, !tbaa !473
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 7765
  store i8 0, ptr %i.q, align 1, !tbaa !589
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 7764
  store i8 0, ptr %i.r, align 4, !tbaa !590
  br label %bb.f

bb.f:                                             ; preds = %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit, %bb.a
  tail call void @_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb(ptr noundef %0, i1 noundef zeroext false)
  %.not33 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not33, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !426
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.u = phi ptr [ %i.t, %bb.g ], [ null, %bb.f ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.w = load i32, ptr %i.v, align 4, !tbaa !331
  %.not34 = icmp eq i32 %i.w, 0
  br i1 %.not34, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 7304
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !407  ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 832
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !426
  %.not36 = icmp eq ptr %i.aa, %i.u
  br i1 %.not36, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 7274
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !406, !range !210, !noundef !211
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 7260 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !331
  %i.ah = icmp ne i32 %i.ag, 0                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 7272
  %i.aj = zext i1 %i.ah to i8
  store i8 %i.aj, ptr %i.ai, align 8, !tbaa !400
  br i1 %i.ah, label %bb.l, label %_ZN5ImGui13ClearActiveIDEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 7268
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !401
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 7275
  store i8 0, ptr %i.al, align 1, !tbaa !402
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 7276
  store i8 0, ptr %i.am, align 4, !tbaa !403
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 7316
  store i32 -1, ptr %i.an, align 4, !tbaa !404
  store i32 0, ptr %i.af, align 4, !tbaa !331
  br label %_ZN5ImGui13ClearActiveIDEv.exit

_ZN5ImGui13ClearActiveIDEv.exit:                  ; preds = %bb.k, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 7273
  store i8 0, ptr %i.ao, align 1, !tbaa !405
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 7274
  store i8 0, ptr %i.ap, align 2, !tbaa !406
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 7304
  store ptr null, ptr %i.aq, align 8, !tbaa !407
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 7277
  store i8 0, ptr %i.ar, align 1, !tbaa !408
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 7278
  store i8 0, ptr %i.as, align 2, !tbaa !415
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 7280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %_ZN5ImGui13ClearActiveIDEv.exit, %bb.i, %bb.h, %.thread
  br i1 %.not33, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 7104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 7112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !353 ; 8 uses
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !389 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [8 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !530
  %i.be = icmp eq ptr %i.bd, %i.u
  br i1 %i.be, label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load i16, ptr %i.av, align 8, !tbaa !594 ; 2 uses
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.az, -1                   ; 4 uses
  %i.bi = icmp sgt i32 %i.bh, %i.bg
  br i1 %i.bi, label %.lr.ph.preheader.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.o
  %.pre.i = sext i32 %i.bh to i64
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.bj = sext i16 %i.bf to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.bh to i64      ; 5 uses
  %i.bk = sub nsw i64 %wide.trip.count.i, %i.bj
  %xtraiter = and i64 %i.bk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %indvars.iv.next.i.prol = add nsw i64 %i.bj, 1  ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.prol
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !530 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bj
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !530
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 160 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !594
  %i.bq = add i16 %i.bp, -1
  store i16 %i.bq, ptr %i.bo, align 8, !tbaa !594
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.bj, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.br = add nsw i64 %wide.trip.count.i, -1
  %i.bs = icmp eq i64 %i.br, %i.bj
  br i1 %i.bs, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %.lr.ph.i ], [ %wide.trip.count.i, %.lr.ph.i.prol.loopexit ]
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.pre-phi.i
  store ptr %i.u, ptr %i.bt, align 8, !tbaa !530
  %i.bu = trunc i32 %i.bh to i16
  store i16 %i.bu, ptr %i.av, align 8, !tbaa !594
  br label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !530 ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !530
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 160 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !594
  %i.ca = add i16 %i.bz, -1
  store i16 %i.ca, ptr %i.by, align 8, !tbaa !594
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.1
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !530 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !530
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 160 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !594
  %i.cg = add i16 %i.cf, -1
  store i16 %i.cg, ptr %i.ce, align 8, !tbaa !594
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !595

_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit: ; preds = %bb.n, %._crit_edge.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !428
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !428
  %i.cl = or i32 %i.ck, %i.ci
  %i.cm = and i32 %i.cl, 8192
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.p, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.p:                                             ; preds = %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.au, i64 7088 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.au, i64 7096 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !353 ; 3 uses
  %i.cr = load i32, ptr %i.co, align 8, !tbaa !389 ; 4 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !530 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.u
  br i1 %i.cw, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 832
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !426
  %i.cz = icmp ne ptr %i.cy, %i.u
  %i.da = icmp sgt i32 %i.cr, 1
  %or.cond.i = and i1 %i.da, %i.cz
  br i1 %or.cond.i, label %.lr.ph.preheader.i37, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

.lr.ph.preheader.i37:                             ; preds = %bb.q
  %i.db = add nsw i32 %i.cr, -2
  %1 = zext nneg i32 %i.db to i64
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.s, %.lr.ph.preheader.i37
  %indvars.iv.i39 = phi i64 [ %1, %.lr.ph.preheader.i37 ], [ %indvars.iv.next.i40, %bb.s ] ; 5 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.i39
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !530
  %i.de = icmp eq ptr %i.dd, %i.u
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i38
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.i39 ; 2 uses
  %2 = trunc nuw nsw i64 %indvars.iv.i39 to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = xor i32 %2, -1
  %i.di = add i32 %i.cr, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull align 8 %i.dg, i64 %i.dk, i1 false)
  %i.dl = load i32, ptr %i.co, align 8, !tbaa !596
  %i.dm = load ptr, ptr %i.cp, align 8, !tbaa !353
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -8
  store ptr %i.u, ptr %i.dp, align 8, !tbaa !530
  br label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.s:                                             ; preds = %.lr.ph.i38
  %indvars.iv.next.i40 = add nsw i64 %indvars.iv.i39, -1
  %i.dq = icmp sgt i64 %indvars.iv.i39, 0
  br i1 %i.dq, label %.lr.ph.i38, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, !llvm.loop !597

_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui26SetActiveIdUsingNavAndKeysEv() local_unnamed_addr #31 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7280
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7789
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.c, align 1, !tbaa !214
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7788
  store i8 0, ptr %i.d, align 4, !tbaa !473
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7765
  %i.f = load i8, ptr %i.e, align 1, !tbaa !589, !range !210, !noundef !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7764
  store i8 %i.f, ptr %i.g, align 4, !tbaa !590
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui31UpdateMouseMovingWindowNewFrameEv() local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 37 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !591  ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7260 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !331  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7264
  store i32 %i.e, ptr %i.f, align 8, !tbaa !332
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7320
  %i.h = load i32, ptr %i.g, align 8, !tbaa !333
  %i.i = icmp eq i32 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7324
  store i8 1, ptr %i.j, align 4, !tbaa !334
  br label %_ZN5ImGui11KeepAliveIDEj.exit

_ZN5ImGui11KeepAliveIDEj.exit:                    ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !426  ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.n = load i8, ptr %i.m, align 8, !tbaa !213, !range !210, !noundef !211
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !9 ; 3 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fcmp oge float %i.r, -2.560000e+05
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fcmp oge float %i.t, -2.560000e+05
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7296
  %i.x = load <2 x float>, ptr %i.w, align 8, !tbaa !9
  %i.y = fsub <2 x float> %i.q, %i.x              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !447
  %i.ab = extractelement <2 x float> %i.y, i64 0
  %i.ac = fcmp une float %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !598
  %i.af = extractelement <2 x float> %i.y, i64 1
  %i.ag = fcmp une float %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !428
  %i.aj = and i32 %i.ai, 256
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.h, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 12436 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !494
  %i.am = fcmp ugt float %i.al, 0.000000e+00
  br i1 %i.am, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ao = load float, ptr %i.an, align 4, !tbaa !599
  store float %i.ao, ptr %i.ak, align 4, !tbaa !494
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 180 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4 ; 2 uses
  %i.ap = and i32 %.pre.i, 1
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit
  %i.ar = and i32 %.pre.i, -15
  store i32 %i.ar, ptr %.phi.trans.insert.i, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i32 2139095039, ptr %i.as, align 8
  %.sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.l, i64 188
  store i32 2139095039, ptr %.sroa_idx42.i, align 4
  %i.at = fptosi <2 x float> %i.y to <2 x i32>
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 216 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 248 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 232 ; 2 uses
  %i.ax = load <2 x float>, ptr %i.z, align 8
  %i.ay = sitofp <2 x i32> %i.at to <2 x float>   ; 2 uses
  store <2 x float> %i.ay, ptr %i.z, align 8
  %i.az = fsub <2 x float> %i.ay, %i.ax           ; 3 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bb = load <2 x float>, ptr %i.au, align 8, !tbaa !9
  %i.bc = fadd <2 x float> %i.az, %i.bb
  store <2 x float> %i.bc, ptr %i.au, align 8, !tbaa !9
  %i.bd = load <2 x float>, ptr %i.av, align 8, !tbaa !9
  %i.be = fadd <2 x float> %i.az, %i.bd
  store <2 x float> %i.be, ptr %i.av, align 8, !tbaa !9
  %i.bf = load <4 x float>, ptr %i.aw, align 8, !tbaa !9
  %i.bg = fadd <4 x float> %i.ba, %i.bf
  store <4 x float> %i.bg, ptr %i.aw, align 8, !tbaa !9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !591
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit: ; preds = %._crit_edge.i, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, %bb.f
  %i.bh = phi ptr [ %.pre, %._crit_edge.i ], [ %i.c, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit ], [ %i.c, %bb.f ]
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef %i.bh)
  br label %bb.r

bb.j:                                             ; preds = %bb.d, %_ZN5ImGui11KeepAliveIDEj.exit
  store ptr null, ptr %i.b, align 8, !tbaa !591
  %i.bi = icmp ne i32 %i.e, 0                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 7272
  %i.bk = zext i1 %i.bi to i8
  store i8 %i.bk, ptr %i.bj, align 8, !tbaa !400
  br i1 %i.bi, label %bb.k, label %_ZN5ImGui13ClearActiveIDEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 7268
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !401
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 7275
  store i8 0, ptr %i.bm, align 1, !tbaa !402
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 7276
  store i8 0, ptr %i.bn, align 4, !tbaa !403
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 7316
  store i32 -1, ptr %i.bo, align 4, !tbaa !404
  store i32 0, ptr %i.d, align 4, !tbaa !331
  br label %_ZN5ImGui13ClearActiveIDEv.exit

_ZN5ImGui13ClearActiveIDEv.exit:                  ; preds = %bb.j, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 7273
  store i8 0, ptr %i.bp, align 1, !tbaa !405
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 7274
  store i8 0, ptr %i.bq, align 2, !tbaa !406
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 7304
  store ptr null, ptr %i.br, align 8, !tbaa !407
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 7277
  store i8 0, ptr %i.bs, align 1, !tbaa !408
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 7278
  store i8 0, ptr %i.bt, align 2, !tbaa !415
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 7280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 7304 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !407 ; 2 uses
  %.not19 = icmp eq ptr %i.bw, null
  br i1 %.not19, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 84
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !336 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 7260 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !331
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 7264
  store i32 %i.by, ptr %i.cc, align 8, !tbaa !332
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 7320
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !333
  %i.cf = icmp eq i32 %i.ce, %i.by
  br i1 %i.cf, label %bb.o, label %_ZN5ImGui11KeepAliveIDEj.exit23

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 7324
end_hunk_0
begin_hunk_1_@_ZN5ImGui9LogFinishEv:bb.a
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.88)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12528 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !496
  switch i32 %i.f, label %_ZN5ImGui16SetClipboardTextEPKc.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12536
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !497
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  br label %_ZN5ImGui16SetClipboardTextEPKc.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12536
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !497
  %i.l = tail call i32 @fclose(ptr noundef %i.k)  ; 0 uses
  br label %_ZN5ImGui16SetClipboardTextEPKc.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12544
  %i.n = load i32, ptr %i.m, align 8, !tbaa !205
  %i.o = icmp slt i32 %i.n, 2
  br i1 %i.o, label %_ZN5ImGui16SetClipboardTextEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !451  ; 2 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %_ZN5ImGui16SetClipboardTextEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12552
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1045 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  %spec.select.i = select i1 %.not.i, ptr @_ZN15ImGuiTextBuffer11EmptyStringE, ptr %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !450
  tail call void %i.r(ptr noundef %i.v, ptr noundef nonnull %spec.select.i), !inline_history !1046
  br label %_ZN5ImGui16SetClipboardTextEPKc.exit

_ZN5ImGui16SetClipboardTextEPKc.exit:             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.b, align 4, !tbaa !209
  store i32 0, ptr %i.e, align 8, !tbaa !496
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 12536
  store ptr null, ptr %i.w, align 8, !tbaa !497
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12552 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN15ImGuiTextBuffer5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui16SetClipboardTextEPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 12544
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 12548
  store i32 0, ptr %i.aa, align 4, !tbaa !54
  store i32 0, ptr %i.z, align 8, !tbaa !51
  %i.ab = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 944 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !55
  %i.ae = add nsw i32 %i.ad, -1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.ag = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.af(ptr noundef nonnull %i.y, ptr noundef %i.ag), !inline_history !573
  store ptr null, ptr %i.x, align 8, !tbaa !53
  br label %_ZN15ImGuiTextBuffer5clearEv.exit

_ZN15ImGuiTextBuffer5clearEv.exit:                ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui16SetClipboardTextEPKc.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN15ImGuiStackSizes23CompareWithCurrentStateEv(ptr nofree noundef nonnull readnone align 2 captures(none) dereferenceable(18) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7104
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !353  ; 8 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !389  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !530
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %i.b, align 8, !tbaa !594  ; 2 uses
  %i.m = sext i16 %i.l to i32
  %i.n = add nsw i32 %i.f, -1                     ; 4 uses
  %i.o = icmp sgt i32 %i.n, %i.m
  br i1 %i.o, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = sext i32 %i.n to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.p = sext i16 %i.l to i64                     ; 5 uses
  %wide.trip.count = sext i32 %i.n to i64         ; 5 uses
  %i.q = sub nsw i64 %wide.trip.count, %i.p
  %xtraiter = and i64 %i.q, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.p, 1     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.prol
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !530  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  store ptr %i.s, ptr %i.t, align 8, !tbaa !530
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 160 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !594
  %i.w = add i16 %i.v, -1
  store i16 %i.w, ptr %i.u, align 8, !tbaa !594
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.x = add nsw i64 %wide.trip.count, -1
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %wide.trip.count, %.lr.ph ], [ %wide.trip.count, %.lr.ph.prol.loopexit ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.pre-phi
  store ptr %0, ptr %i.z, align 8, !tbaa !530
  %i.aa = trunc i32 %i.n to i16
  store i16 %i.aa, ptr %i.b, align 8, !tbaa !594
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !530 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !530
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !594
  %i.ag = add i16 %i.af, -1
  store i16 %i.ag, ptr %i.ae, align 8, !tbaa !594
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !530 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !530
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 160 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !594
  %i.am = add i16 %i.al, -1
  store i16 %i.am, ptr %i.ak, align 8, !tbaa !594
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !595

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7088 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7096 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353  ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !530  ; 2 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !426
  %i.m = icmp ne ptr %i.l, %0
  %i.n = icmp sgt i32 %i.e, 1
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = add nsw i32 %i.e, -2
  %1 = zext nneg i32 %i.o to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !530
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = xor i32 %2, -1
  %i.v = add i32 %i.e, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.t, i64 %i.x, i1 false)
  %i.y = load i32, ptr %i.b, align 8, !tbaa !596
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  store ptr %0, ptr %i.ac, align 8, !tbaa !530
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ad = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !597

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui24BringWindowToDisplayBackEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7096 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !353  ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !530
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7088
  %i.g = load i32, ptr %i.f, align 8, !tbaa !596  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !530
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = shl nuw nsw i64 %indvars.iv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.c, i64 %i.m, i1 false)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !353
  store ptr %0, ptr %i.n, align 8, !tbaa !530
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1047

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui8PushFontEP6ImFont(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 16 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %_ZN5ImGui14GetDefaultFontEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !654  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %_ZN5ImGui14GetDefaultFontEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !462
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !541
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !655
  br label %_ZN5ImGui14GetDefaultFontEv.exit

_ZN5ImGui14GetDefaultFontEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ], [ %i.c, %bb.b ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6520
  store ptr %.0, ptr %i.i, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.k = load float, ptr %i.j, align 8, !tbaa !656
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !314
  %i.n = fmul float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 92
  %i.p = load float, ptr %i.o, align 4, !tbaa !657
  %i.q = fmul float %i.n, %i.p                    ; 2 uses
  %i.r = fcmp ole float %i.q, 1.000000e+00
  %i.s = select i1 %i.r, float 1.000000e+00, float %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6532
  store float %i.s, ptr %i.t, align 4, !tbaa !615
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7184 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !208  ; 3 uses
  %.not.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i2, label %_ZN5ImGui14SetCurrentFontEP6ImFont.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui14GetDefaultFontEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 608
  %i.x = load float, ptr %i.w, align 8, !tbaa !342
  %i.y = fmul float %i.s, %i.x                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 824
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !616 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN5ImGui14SetCurrentFontEP6ImFont.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 608
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !342
  %i.ad = fmul float %i.y, %i.ac
  br label %_ZN5ImGui14SetCurrentFontEP6ImFont.exit

_ZN5ImGui14SetCurrentFontEP6ImFont.exit:          ; preds = %_ZN5ImGui14GetDefaultFontEv.exit, %bb.d, %bb.e
  %i.ae = phi float [ 0.000000e+00, %_ZN5ImGui14GetDefaultFontEv.exit ], [ %i.ad, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  store float %i.ae, ptr %i.af, align 8, !tbaa !297
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !658 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 6536
  %i.ak = load i64, ptr %i.ai, align 8
  store i64 %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 7040
  store ptr %i.al, ptr %i.am, align 8, !tbaa !659
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 6544
  store ptr %.0, ptr %i.an, align 8, !tbaa !660
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 6552
  store float %i.ae, ptr %i.ao, align 8, !tbaa !661
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 7576 ; 5 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !543 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 7580 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !542
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.f, label %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i: ; preds = %_ZN5ImGui14SetCurrentFontEP6ImFont.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7584
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !541
  br label %_ZN8ImVectorIP6ImFontE9push_backERKS1_.exit

bb.f:                                             ; preds = %_ZN5ImGui14SetCurrentFontEP6ImFont.exit
  %i.au = add nsw i32 %i.aq, 1
  %.not.i.i3 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i3, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sdiv i32 %i.aq, 2
  %i.aw = add nsw i32 %i.av, %i.aq
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.g, %bb.f
  %i.ax = phi i32 [ %i.aw, %bb.g ], [ 8, %bb.f ]
  %i.ay = tail call noundef i32 @llvm.smax.i32(i32 %i.ax, i32 %i.au) ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !55
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !55
  %i.be = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.bf = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.bg = tail call noundef ptr %i.be(i64 noundef %i.ba, ptr noundef %i.bf), !inline_history !1048 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 7584 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !541 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bi, null
  br i1 %.not6.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.bj = load i32, ptr %i.ap, align 8, !tbaa !543
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bg, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !541 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 944 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !55
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.j, %bb.i, %bb.h
  %i.br = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.bs = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.br(ptr noundef %i.bm, ptr noundef %i.bs), !inline_history !1049
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !541
  store i32 %i.ay, ptr %i.ar, align 4, !tbaa !542
  %.pre3.i = load i32, ptr %i.ap, align 8, !tbaa !543
  br label %_ZN8ImVectorIP6ImFontE9push_backERKS1_.exit

_ZN8ImVectorIP6ImFontE9push_backERKS1_.exit:      ; preds = %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i, %bb.k
  %i.bt = phi i32 [ %i.aq, %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.k ]
  %i.bu = phi ptr [ %.pre.i, %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i ], [ %i.bg, %bb.k ]
  %i.bv = sext i32 %i.bt to i64
end_hunk_1
begin_hunk_2_@_ZN5ImGuiL22NavCalcPreferredRefPosEv:bb.a
  %i.ap = load <2 x float>, ptr %i.aa, align 4, !tbaa !9
  %i.aq = fadd <2 x float> %i.ao, %i.ap           ; 2 uses
  %i.ar = fcmp olt <2 x float> %i.an, %i.ao
  %i.as = fcmp ogt <2 x float> %i.an, %i.aq
  %i.at = select <2 x i1> %i.as, <2 x float> %i.aq, <2 x float> %i.an
  %i.au = select <2 x i1> %i.ar, <2 x float> %i.ao, <2 x float> %i.at
  %i.av = fptosi <2 x float> %i.au to <2 x i32>
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>
  br label %bb.g

bb.g:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit, %bb.f, %bb.e
  %.sroa.018.0 = phi <2 x float> [ %.sroa.018.0.copyload, %bb.e ], [ %.sroa.018.0.copyload19, %bb.f ], [ %i.aw, %_ZL7ImClampRK6ImVec2S1_S_.exit ]
  ret <2 x float> %.sroa.018.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7640 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7648 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !545
  %i.e = sext i32 %0 to i64
  %i.f = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1088 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !608  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7644 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !546  ; 4 uses
  %i.m = icmp sgt i32 %0, %i.l
  br i1 %i.m, label %bb.b, label %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv i32 %i.l, 2
  %i.o = add nsw i32 %i.n, %i.l
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %i.o, %bb.c ], [ 8, %bb.b ]
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %0) ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !55
  %i.w = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.x = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.y = tail call noundef ptr %i.w(i64 noundef %i.s, ptr noundef %i.x), !inline_history !773 ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !545  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.z, null
  br i1 %.not6.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !547
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.z, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 944 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !55
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.aj = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.ai(ptr noundef %i.ad, ptr noundef %i.aj), !inline_history !774
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.y, ptr %i.c, align 8, !tbaa !545
  store i32 %i.q, ptr %i.k, align 4, !tbaa !546
  br label %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit

_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit:     ; preds = %bb.a, %bb.g
  store i32 %0, ptr %i.b, align 8, !tbaa !547
  br i1 %1, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 143
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !427, !range !210, !noundef !211
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp eq ptr %i.j, null
  %or.cond.not = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_(ptr noundef nonnull %i.j, ptr noundef null)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !593
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 864
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !697 ; 3 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 143
  %i.au = load i8, ptr %i.at, align 1, !tbaa !427, !range !210, !noundef !211
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit

_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit: ; preds = %bb.h, %bb.n, %bb.m, %bb.k
  %.0 = phi ptr [ %i.as, %bb.m ], [ %i.h, %bb.k ], [ %i.h, %bb.n ], [ null, %bb.h ]
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef %.0)
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit, %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui23ClosePopupsExceptModalsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.c = load i32, ptr %i.b, align 8, !tbaa !602  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7648
  %smin = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0) ; 2 uses
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !545
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.h = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.thread, !llvm.loop !1089

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.j = phi i32 [ %i.c, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %indvars.iv16 = phi i64 [ %i.f, %.lr.ph ], [ %i.k, %bb.b ]
  %i.k = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !608  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !428
  %i.q = and i32 %i.p, 134217728
  %.not12 = icmp eq i32 %i.q, 0
  br i1 %.not12, label %bb.b, label %..thread_crit_edge, !llvm.loop !1089

..thread_crit_edge:                               ; preds = %bb.d
  br label %.thread, !llvm.loop !1089

.thread:                                          ; preds = %bb.b, %bb.c, %..thread_crit_edge, %bb.a
  %.010.lcssa = phi i32 [ %i.j, %..thread_crit_edge ], [ %smin, %bb.a ], [ %smin, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.r = icmp slt i32 %.010.lcssa, %i.c
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  tail call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %.010.lcssa, i1 noundef zeroext true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17CloseCurrentPopupEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.c = load i32, ptr %i.b, align 8, !tbaa !614  ; 4 uses
  %i.d = add nsw i32 %i.c, -1
  %i.e = icmp slt i32 %i.c, 1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.g = load i32, ptr %i.f, align 8, !tbaa !602
  %.not.not = icmp sgt i32 %i.c, %i.g
  br i1 %.not.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7664
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !545
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 8, !tbaa !604
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7648
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !545  ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.j ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !604
  %.not = icmp eq i32 %i.l, %i.p
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c
  %.not42 = icmp eq i32 %i.c, 1
  br i1 %.not42, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !608
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.q = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.t, %bb.g ] ; 2 uses
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !608  ; 3 uses
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %.thread.loopexit.split.loop.exit49, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !428
  %i.w = and i32 %i.v, 268435456
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %.thread.loopexit.split.loop.exit47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.t, null
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !428
  %i.aa = and i32 %i.z, 134217728
  %.not31 = icmp eq i32 %i.aa, 0
  br i1 %.not31, label %bb.g, label %.thread.loopexit.split.loop.exit

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ab = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ab, label %.lr.ph, label %.thread

.thread.loopexit.split.loop.exit:                 ; preds = %bb.f
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

.thread.loopexit.split.loop.exit47:               ; preds = %bb.d
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

.thread.loopexit.split.loop.exit49:               ; preds = %.lr.ph
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bb.g, %.thread.loopexit.split.loop.exit, %.thread.loopexit.split.loop.exit47, %.thread.loopexit.split.loop.exit49, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ %1, %.thread.loopexit.split.loop.exit47 ], [ %0, %.thread.loopexit.split.loop.exit ], [ %2, %.thread.loopexit.split.loop.exit49 ], [ 0, %bb.g ]
  tail call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %.2, i1 noundef zeroext true)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !425 ; 2 uses
  %.not32 = icmp eq ptr %i.ad, null
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  store i8 1, ptr %i.ae, align 8, !tbaa !321
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7640
  %i.d = load i32, ptr %i.c, align 8, !tbaa !602
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 7656
  %i.f = load i32, ptr %i.e, align 8, !tbaa !614  ; 3 uses
  %i.g = icmp sgt i32 %i.d, %i.f
  br i1 %i.g, label %_ZN5ImGui11IsPopupOpenEji.exit, label %_ZN5ImGui11IsPopupOpenEji.exit.thread

_ZN5ImGui11IsPopupOpenEji.exit:                   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 7648
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !545
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds [48 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 8, !tbaa !604
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %bb.b, label %_ZN5ImGui11IsPopupOpenEji.exit.thread

_ZN5ImGui11IsPopupOpenEji.exit.thread:            ; preds = %bb.a, %_ZN5ImGui11IsPopupOpenEji.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 7432
  store i32 0, ptr %i.n, align 8, !tbaa !923
  br label %bb.l

bb.b:                                             ; preds = %_ZN5ImGui11IsPopupOpenEji.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.o = and i32 %1, 268435456
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 20, ptr noundef nonnull @.str.82, i32 noundef %i.f) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 20, ptr noundef nonnull @.str.83, i32 noundef %0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = or i32 %1, 67108864
  %i.s = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef %i.r) ; 2 uses
  br i1 %i.s, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 7184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !208  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 7688
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !425
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %bb.g, label %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 7789
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !214, !range !210, !noundef !211
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 7752
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !593
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 7792 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !725
  %i.ah = or i32 %i.ag, 2
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !725
  br label %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit.i

_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !428
  %i.ak = and i32 %i.aj, 16777216
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %_ZN5ImGui8EndPopupEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 7070
  store i8 1, ptr %i.al, align 2, !tbaa !1009
  br label %_ZN5ImGui8EndPopupEv.exit

_ZN5ImGui8EndPopupEv.exit:                        ; preds = %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit.i, %bb.j
  call void @_ZN5ImGui3EndEv()
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 7070
  store i8 0, ptr %i.am, align 2, !tbaa !1009
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui8EndPopupEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5ImGui11IsPopupOpenEji.exit.thread
  %.0 = phi i1 [ %i.s, %bb.k ], [ false, %_ZN5ImGui11IsPopupOpenEji.exit.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui8EndPopupEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7789
  %i.h = load i8, ptr %i.g, align 1, !tbaa !214, !range !210, !noundef !211
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.k = load i32, ptr %i.j, align 8, !tbaa !593
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7792 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !725
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 8, !tbaa !725
  br label %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit

_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !428
  %i.r = and i32 %i.q, 16777216
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 7070
  store i8 1, ptr %i.s, align 2, !tbaa !1009
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi.exit
  tail call void @_ZN5ImGui3EndEv()
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7070
  store i8 0, ptr %i.t, align 2, !tbaa !1009
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.c = load i32, ptr %i.b, align 8, !tbaa !602
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.e = load i32, ptr %i.d, align 8, !tbaa !614
  %.not = icmp sgt i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7432
  store i32 0, ptr %i.f, align 8, !tbaa !923
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = or i32 %1, 321
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !208  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !329
  %i.m = load i32, ptr %i.j, align 8, !tbaa !327
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [4 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34   ; 2 uses
  %i.r = xor i32 %i.q, -1                         ; 2 uses
  %i.s = load i8, ptr %0, align 1, !tbaa !136     ; 2 uses
  %.not3342.i.i = icmp eq i8 %i.s, 0
  br i1 %.not3342.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %i.t = phi i8 [ %.pre.i.i, %bb.e ], [ %i.s, %bb.c ] ; 2 uses
  %.144.i.i = phi ptr [ %i.u, %bb.e ], [ %0, %bb.c ] ; 2 uses
end_hunk_2
