Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui11FocusWindowEP11ImGuiWindow:bb.a
bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !390
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.u = phi ptr [ %i.t, %bb.g ], [ null, %bb.f ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.w = load i32, ptr %i.v, align 4, !tbaa !319
  %.not34 = icmp eq i32 %i.w, 0
  br i1 %.not34, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 7304
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !371  ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 832
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !390
  %.not36 = icmp eq ptr %i.aa, %i.u
  br i1 %.not36, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 7274
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !370, !range !216, !noundef !217
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 7260 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !319
  %i.ah = icmp ne i32 %i.ag, 0                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 7272
  %i.aj = zext i1 %i.ah to i8
  store i8 %i.aj, ptr %i.ai, align 8, !tbaa !364
  br i1 %i.ah, label %bb.l, label %_ZN5ImGui13ClearActiveIDEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 7268
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !365
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 7275
  store i8 0, ptr %i.al, align 1, !tbaa !366
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 7276
  store i8 0, ptr %i.am, align 4, !tbaa !367
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 7316
  store i32 -1, ptr %i.an, align 4, !tbaa !368
  store i32 0, ptr %i.af, align 4, !tbaa !319
  br label %_ZN5ImGui13ClearActiveIDEv.exit

_ZN5ImGui13ClearActiveIDEv.exit:                  ; preds = %bb.k, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 7273
  store i8 0, ptr %i.ao, align 1, !tbaa !369
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 7274
  store i8 0, ptr %i.ap, align 2, !tbaa !370
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 7304
  store ptr null, ptr %i.aq, align 8, !tbaa !371
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 7277
  store i8 0, ptr %i.ar, align 1, !tbaa !372
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 7278
  store i8 0, ptr %i.as, align 2, !tbaa !379
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 7280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %_ZN5ImGui13ClearActiveIDEv.exit, %bb.i, %bb.h, %.thread
  br i1 %.not33, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 7104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 7112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !340 ; 8 uses
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !361 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [8 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !476
  %i.be = icmp eq ptr %i.bd, %i.u
  br i1 %i.be, label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load i16, ptr %i.av, align 8, !tbaa !503 ; 2 uses
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
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !476 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bj
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !476
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 160 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !503
  %i.bq = add i16 %i.bp, -1
  store i16 %i.bq, ptr %i.bo, align 8, !tbaa !503
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.bj, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.br = add nsw i64 %wide.trip.count.i, -1
  %i.bs = icmp eq i64 %i.br, %i.bj
  br i1 %i.bs, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %.lr.ph.i ], [ %wide.trip.count.i, %.lr.ph.i.prol.loopexit ]
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.pre-phi.i
  store ptr %i.u, ptr %i.bt, align 8, !tbaa !476
  %i.bu = trunc i32 %i.bh to i16
  store i16 %i.bu, ptr %i.av, align 8, !tbaa !503
  br label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !476 ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !476
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 160 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !503
  %i.ca = add i16 %i.bz, -1
  store i16 %i.ca, ptr %i.by, align 8, !tbaa !503
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.1
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !476 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !476
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 160 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !503
  %i.cg = add i16 %i.cf, -1
  store i16 %i.cg, ptr %i.ce, align 8, !tbaa !503
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !27

_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit: ; preds = %bb.n, %._crit_edge.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !392
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !392
  %i.cl = or i32 %i.ck, %i.ci
  %i.cm = and i32 %i.cl, 8192
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.p, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.p:                                             ; preds = %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.au, i64 7088 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.au, i64 7096 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !340 ; 3 uses
  %i.cr = load i32, ptr %i.co, align 8, !tbaa !361 ; 4 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !476 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.u
  br i1 %i.cw, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 832
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !390
  %i.cz = icmp ne ptr %i.cy, %i.u
  %i.da = icmp sgt i32 %i.cr, 1
  %or.cond.i = and i1 %i.da, %i.cz
  br i1 %or.cond.i, label %.lr.ph.preheader.i37, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

.lr.ph.preheader.i37:                             ; preds = %bb.q
  %i.db = add nsw i32 %i.cr, -2
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.s, %.lr.ph.preheader.i37
  %.023.i = phi i32 [ %i.dr, %bb.s ], [ %i.db, %.lr.ph.preheader.i37 ] ; 4 uses
  %i.dc = zext nneg i32 %.023.i to i64            ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !476
  %i.df = icmp eq ptr %i.de, %i.u
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i38
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dc ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = xor i32 %.023.i, -1
  %i.dj = add i32 %i.cr, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.dh, i64 %i.dl, i1 false)
  %i.dm = load i32, ptr %i.co, align 8, !tbaa !504
  %i.dn = load ptr, ptr %i.cp, align 8, !tbaa !340
  %i.do = sext i32 %i.dm to i64
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 -8
  store ptr %i.u, ptr %i.dq, align 8, !tbaa !476
  br label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.s:                                             ; preds = %.lr.ph.i38
  %i.dr = add nsw i32 %.023.i, -1
  %i.ds = icmp sgt i32 %.023.i, 0
  br i1 %i.ds, label %.lr.ph.i38, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, !llvm.loop !28

_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui26SetActiveIdUsingNavAndKeysEv() local_unnamed_addr #31 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7280
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7789
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.c, align 1, !tbaa !220
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7788
  store i8 0, ptr %i.d, align 4, !tbaa !435
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7765
  %i.f = load i8, ptr %i.e, align 1, !tbaa !498, !range !216, !noundef !217
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7764
  store i8 %i.f, ptr %i.g, align 4, !tbaa !499
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui31UpdateMouseMovingWindowNewFrameEv() local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 37 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !500  ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7260 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !319  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7264
  store i32 %i.e, ptr %i.f, align 8, !tbaa !320
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7320
  %i.h = load i32, ptr %i.g, align 8, !tbaa !321
  %i.i = icmp eq i32 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7324
  store i8 1, ptr %i.j, align 4, !tbaa !322
  br label %_ZN5ImGui11KeepAliveIDEj.exit

_ZN5ImGui11KeepAliveIDEj.exit:                    ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !390  ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.n = load i8, ptr %i.m, align 8, !tbaa !219, !range !216, !noundef !217
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !75 ; 3 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fcmp oge float %i.r, -2.560000e+05
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fcmp oge float %i.t, -2.560000e+05
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7296
  %i.x = load <2 x float>, ptr %i.w, align 8, !tbaa !75
  %i.y = fsub <2 x float> %i.q, %i.x              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !411
  %i.ab = extractelement <2 x float> %i.y, i64 0
  %i.ac = fcmp une float %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !505
  %i.af = extractelement <2 x float> %i.y, i64 1
  %i.ag = fcmp une float %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !392
  %i.aj = and i32 %i.ai, 256
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.h, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 12436 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !448
  %i.am = fcmp ugt float %i.al, 0.000000e+00
  br i1 %i.am, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ao = load float, ptr %i.an, align 4, !tbaa !506
  store float %i.ao, ptr %i.ak, align 4, !tbaa !448
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
  store i32 2139095039, ptr %i.as, align 8, !tbaa !75
  %.sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.l, i64 188
  store i32 2139095039, ptr %.sroa_idx42.i, align 4, !tbaa !75
  %i.at = fptosi <2 x float> %i.y to <2 x i32>
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 216 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 248 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 232 ; 2 uses
  %i.ax = load <2 x float>, ptr %i.z, align 8
  %i.ay = sitofp <2 x i32> %i.at to <2 x float>   ; 2 uses
  store <2 x float> %i.ay, ptr %i.z, align 8, !tbaa !75
  %i.az = fsub <2 x float> %i.ay, %i.ax           ; 3 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bb = load <2 x float>, ptr %i.au, align 8, !tbaa !75
  %i.bc = fadd <2 x float> %i.az, %i.bb
  store <2 x float> %i.bc, ptr %i.au, align 8, !tbaa !75
  %i.bd = load <2 x float>, ptr %i.av, align 8, !tbaa !75
  %i.be = fadd <2 x float> %i.az, %i.bd
  store <2 x float> %i.be, ptr %i.av, align 8, !tbaa !75
  %i.bf = load <4 x float>, ptr %i.aw, align 8, !tbaa !75
  %i.bg = fadd <4 x float> %i.ba, %i.bf
  store <4 x float> %i.bg, ptr %i.aw, align 8, !tbaa !75
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !500
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit: ; preds = %._crit_edge.i, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, %bb.f
  %i.bh = phi ptr [ %.pre, %._crit_edge.i ], [ %i.c, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit ], [ %i.c, %bb.f ]
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef %i.bh)
  br label %bb.r

bb.j:                                             ; preds = %bb.d, %_ZN5ImGui11KeepAliveIDEj.exit
  store ptr null, ptr %i.b, align 8, !tbaa !500
  %i.bi = icmp ne i32 %i.e, 0                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 7272
  %i.bk = zext i1 %i.bi to i8
  store i8 %i.bk, ptr %i.bj, align 8, !tbaa !364
  br i1 %i.bi, label %bb.k, label %_ZN5ImGui13ClearActiveIDEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 7268
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !365
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 7275
  store i8 0, ptr %i.bm, align 1, !tbaa !366
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 7276
  store i8 0, ptr %i.bn, align 4, !tbaa !367
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 7316
  store i32 -1, ptr %i.bo, align 4, !tbaa !368
  store i32 0, ptr %i.d, align 4, !tbaa !319
  br label %_ZN5ImGui13ClearActiveIDEv.exit

_ZN5ImGui13ClearActiveIDEv.exit:                  ; preds = %bb.j, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 7273
  store i8 0, ptr %i.bp, align 1, !tbaa !369
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 7274
  store i8 0, ptr %i.bq, align 2, !tbaa !370
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 7304
  store ptr null, ptr %i.br, align 8, !tbaa !371
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 7277
  store i8 0, ptr %i.bs, align 1, !tbaa !372
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 7278
  store i8 0, ptr %i.bt, align 2, !tbaa !379
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 7280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 7304 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !371 ; 2 uses
  %.not19 = icmp eq ptr %i.bw, null
  br i1 %.not19, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 84
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !324 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 7260 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !319
  %i.cb = icmp eq i32 %i.by, %i.ca
end_hunk_0
begin_hunk_1_@_ZN5ImGui9LogFinishEv:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12536
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !451
  %i.l = tail call i32 @fclose(ptr noundef %i.k)  ; 0 uses
  br label %_ZN5ImGui16SetClipboardTextEPKc.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12544
  %i.n = load i32, ptr %i.m, align 8, !tbaa !213
  %i.o = icmp slt i32 %i.n, 2
  br i1 %i.o, label %_ZN5ImGui16SetClipboardTextEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !414  ; 2 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %_ZN5ImGui16SetClipboardTextEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12552
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !721  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  %spec.select.i = select i1 %.not.i, ptr @_ZN15ImGuiTextBuffer11EmptyStringE, ptr %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !413
  tail call void %i.r(ptr noundef %i.v, ptr noundef nonnull %spec.select.i), !inline_history !1099
  br label %_ZN5ImGui16SetClipboardTextEPKc.exit

_ZN5ImGui16SetClipboardTextEPKc.exit:             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.b, align 4, !tbaa !215
  store i32 0, ptr %i.e, align 8, !tbaa !450
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 12536
  store ptr null, ptr %i.w, align 8, !tbaa !451
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12552 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN15ImGuiTextBuffer5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui16SetClipboardTextEPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 12544
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 12548
  store i32 0, ptr %i.aa, align 4, !tbaa !103
  store i32 0, ptr %i.z, align 8, !tbaa !101
  %i.ab = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 944 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !180
  %i.ae = add nsw i32 %i.ad, -1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.ag = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.af(ptr noundef nonnull %i.y, ptr noundef %i.ag), !inline_history !25
  store ptr null, ptr %i.x, align 8, !tbaa !102
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
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7104
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !340  ; 8 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !361  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !476
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %i.b, align 8, !tbaa !503  ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !476  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  store ptr %i.s, ptr %i.t, align 8, !tbaa !476
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 160 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !503
  %i.w = add i16 %i.v, -1
  store i16 %i.w, ptr %i.u, align 8, !tbaa !503
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.x = add nsw i64 %wide.trip.count, -1
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %wide.trip.count, %.lr.ph ], [ %wide.trip.count, %.lr.ph.prol.loopexit ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.pre-phi
  store ptr %0, ptr %i.z, align 8, !tbaa !476
  %i.aa = trunc i32 %i.n to i16
  store i16 %i.aa, ptr %i.b, align 8, !tbaa !503
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !476 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !476
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !503
  %i.ag = add i16 %i.af, -1
  store i16 %i.ag, ptr %i.ae, align 8, !tbaa !503
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !476 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !476
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 160 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !503
  %i.am = add i16 %i.al, -1
  store i16 %i.am, ptr %i.ak, align 8, !tbaa !503
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !27

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7088 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7096 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !361  ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !476  ; 2 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !390
  %i.m = icmp ne ptr %i.l, %0
  %i.n = icmp sgt i32 %i.e, 1
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = add nsw i32 %i.e, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.023 = phi i32 [ %i.ae, %bb.d ], [ %i.o, %.lr.ph.preheader ] ; 4 uses
  %i.p = zext nneg i32 %.023 to i64               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !476
  %i.s = icmp eq ptr %i.r, %0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = xor i32 %.023, -1
  %i.w = add i32 %i.e, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.u, i64 %i.y, i1 false)
  %i.z = load i32, ptr %i.b, align 8, !tbaa !504
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !340
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  store ptr %0, ptr %i.ad, align 8, !tbaa !476
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.ae = add nsw i32 %.023, -1
  %i.af = icmp sgt i32 %.023, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui24BringWindowToDisplayBackEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7096 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !340  ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !476
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7088
  %i.g = load i32, ptr %i.f, align 8, !tbaa !504  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !476
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = shl nuw nsw i64 %indvars.iv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.c, i64 %i.m, i1 false)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !340
  store ptr %0, ptr %i.n, align 8, !tbaa !476
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1100

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui8PushFontEP6ImFont(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 16 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %_ZN5ImGui14GetDefaultFontEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !538  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %_ZN5ImGui14GetDefaultFontEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !425
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !481
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !539
  br label %_ZN5ImGui14GetDefaultFontEv.exit

_ZN5ImGui14GetDefaultFontEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ], [ %i.c, %bb.b ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6520
  store ptr %.0, ptr %i.i, align 8, !tbaa !293
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.k = load float, ptr %i.j, align 8, !tbaa !540
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !307
  %i.n = fmul float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 92
  %i.p = load float, ptr %i.o, align 4, !tbaa !541
  %i.q = fmul float %i.n, %i.p                    ; 2 uses
  %i.r = fcmp ole float %i.q, 1.000000e+00
  %i.s = select i1 %i.r, float 1.000000e+00, float %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6532
  store float %i.s, ptr %i.t, align 4, !tbaa !517
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7184 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !214  ; 3 uses
  %.not.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i2, label %_ZN5ImGui14SetCurrentFontEP6ImFont.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui14GetDefaultFontEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 608
  %i.x = load float, ptr %i.w, align 8, !tbaa !330
  %i.y = fmul float %i.s, %i.x                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 824
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !518 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN5ImGui14SetCurrentFontEP6ImFont.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 608
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !330
  %i.ad = fmul float %i.y, %i.ac
  br label %_ZN5ImGui14SetCurrentFontEP6ImFont.exit

_ZN5ImGui14SetCurrentFontEP6ImFont.exit:          ; preds = %_ZN5ImGui14GetDefaultFontEv.exit, %bb.d, %bb.e
  %i.ae = phi float [ 0.000000e+00, %_ZN5ImGui14GetDefaultFontEv.exit ], [ %i.ad, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  store float %i.ae, ptr %i.af, align 8, !tbaa !294
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !542 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 6536
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !75
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 7040
  store ptr %i.al, ptr %i.am, align 8, !tbaa !543
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 6544
  store ptr %.0, ptr %i.an, align 8, !tbaa !544
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 6552
  store float %i.ae, ptr %i.ao, align 8, !tbaa !545
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 7576 ; 5 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !483 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 7580 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !482
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.f, label %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i: ; preds = %_ZN5ImGui14SetCurrentFontEP6ImFont.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7584
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !481
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
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !180
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !180
  %i.be = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.bf = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.bg = tail call noundef ptr %i.be(i64 noundef %i.ba, ptr noundef %i.bf), !inline_history !1101 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 7584 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !481 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bi, null
  br i1 %.not6.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.bj = load i32, ptr %i.ap, align 8, !tbaa !483
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bg, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !481 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 944 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !180
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.j, %bb.i, %bb.h
  %i.br = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.bs = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.br(ptr noundef %i.bm, ptr noundef %i.bs), !inline_history !1102
end_hunk_1
